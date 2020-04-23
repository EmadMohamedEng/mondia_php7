-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2020 at 03:08 PM
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
  `index` int(11) DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = video /2 = audio /3 = image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `service_id`, `title`, `created_at`, `updated_at`, `video`, `content_text`, `image_preview`, `index`, `type`) VALUES
(250, 42, 'sfat Maa Al odoa', '2020-04-16 00:38:06', '2020-04-17 17:02:52', 'uploads/videos/5e99a8fbb81a6.mp4', NULL, '5e99a8fbbeec8.png', 0, 1),
(251, 42, 'Hokm Mas alsarf', '2020-04-16 00:39:47', '2020-04-17 17:03:55', 'uploads/videos/5e99a93a789b1.mp4', NULL, '5e99a93a7b4c1.png', 0, 1),
(252, 42, 'almaa almoskmes', '2020-04-16 00:43:19', '2020-04-17 17:05:16', 'uploads/videos/5e99a98b89d4a.mp4', NULL, '5e99a98b8bf69.png', 0, 1),
(253, 42, 'hokm altahor besalg', '2020-04-16 01:01:56', '2020-04-17 17:06:05', 'uploads/videos/5e99a9bd2577e.mp4', NULL, '5e99a9bd284d7.png', 0, 1),
(254, 42, 'hokm alghasl belmaa wa alsabon', '2020-04-16 01:05:14', '2020-04-17 18:03:25', 'uploads/videos/5e99b72c9719d.mp4', NULL, '5e99b72c9c336.png', 0, 1),
(255, 43, 'The birth of Eissa Alyeh El Salam', '2020-04-16 01:07:32', '2020-04-16 04:40:19', 'uploads/videos/5e97a973be217.gif', NULL, NULL, 0, 3),
(256, 44, 'EL Fatah El Mobin Solh El Hodeybya', '2020-04-16 01:19:43', '2020-04-16 04:32:58', 'uploads/videos/5e97a7ba25ca7.gif', NULL, NULL, 0, 3),
(257, 44, 'EL Fatah El Mobin Solh El Hodeybya', '2020-04-16 04:34:26', '2020-04-16 04:34:26', 'uploads/videos/5e97a8120a0ea.gif', NULL, NULL, 0, 3),
(258, 44, 'EL Fatah El Mobin Solh El Hodeybya', '2020-04-16 04:34:42', '2020-04-16 04:34:42', 'uploads/videos/5e97a8229f957.gif', NULL, NULL, 0, 3),
(259, 44, 'EL Fatah El Mobin Solh El Hodeybya', '2020-04-16 04:34:56', '2020-04-16 04:34:56', 'uploads/videos/5e97a830268ba.gif', NULL, NULL, 0, 3),
(260, 44, 'EL Fatah El Mobin Solh El Hodeybya', '2020-04-16 04:35:08', '2020-04-16 04:35:08', 'uploads/videos/5e97a83c6de2d.gif', NULL, NULL, 0, 3),
(265, 47, 'Surat Al Bakrah 186', '2020-04-16 05:04:39', '2020-04-16 05:35:20', NULL, 'وَإِذَا سَأَلَكَ عِبَادِي عَنِّي فَإِنِّي قَرِيبٌ أُجِيبُ دَعْوَةَ الداع إِذَا دَعَانِ فَلْيَسْتَجِيبُواْ لِي وَلْيُؤْمِنُواْ بِي لَععَلَّهُمْ يَرْشُدُونَ} [البقرة: 186]\r\nوالله سبحانه وتعالى يعرف ما في نفسك، ولذلك فإنه يعطيك دون أن تسأل. واقرأ الحديث القدسي: يقول رب العزة: (من شغله ذكري عن مسألتي أعطيته أفضل ما أعطي السائلين)', NULL, 0, 4),
(266, 47, 'Surat Al Ibrahim7', '2020-04-16 05:06:33', '2020-04-16 05:31:28', NULL, '{وَإِذْ تَأَذَّنَ رَبُّكُمْ لَئِن شَكَرْتُمْ لأَزِيدَنَّكُمْ وَلَئِن كَفَرْتُمْ إِنَّ عَذَابِي لَشَدِيدٌ} [إبراهيم: 7]\r\nوهكذا نعرف ان الشكر على النعمة يعطينا مزيدا من النعمة.. فنشكر عليها فتعطينا المزيد وهكذا يظل الحمد دائماً والنعمة دائمة.. اننا لو استعرضنا حياتنا كلها فكل حركة فيها تقتضي الحمد،', NULL, 0, 4),
(267, 47, 'Surat Al Zomor 42', '2020-04-16 05:07:23', '2020-04-16 05:27:13', NULL, 'عندما ننام ويأخذ الله سبحانه وتعالى أرواحنا، ثم يردها الينا عندما نستيقظ، فإن هذا يوجب الحمد، فالله سبحانه وتعالى يقول:\r\n{الله يَتَوَفَّى الأنفس حِينَ مَوْتِهَا والتي لَمْ تَمُتْ فِي مَنَامِهَا فَيُمْسِكُ التي قضى عَلَيْهَا الموت وَيُرْسِلُ الأخرى إلى أَجَلٍ مُّسَمًّى إِنَّ فِي ذَلِكَ لآيَاتٍ لِّقَوْمٍ يَتَفَكَّرُونَ}\r\n[الزمر: 42] وهكذا فإن مجرد استيقاظنا من النوم، وان الله سبحانه وتعالى رد علينا أرواحنا، وهذا الرد يستوجب الحمد،', NULL, 0, 4),
(268, 47, 'Surat Al Nsaa 19', '2020-04-16 05:09:04', '2020-04-16 05:25:52', NULL, 'واذا عدنا إلى بيوتنا فالله سخر لنا زوجاتنا ورزقنا بأولادنا وهذا يستوجب الحمد\r\nاذن فكل حركة حياة في الدنيا من الانسان تستوجب الحمد.. ولهذا لابد ان يكون الانسان حامدا دائما..\r\nبل ان الانسان يجب ان يحمد الله على اي مكروه أصابه؛ لأنه قد يكون الشيء الذي يعتبره شرا هو عينه الخير\r\nفالله تعالى يقول:\r\n{يَا أَيُّهَا الذين آمَنُواْ لاَ يَحِلُّ لَكُمْ أَن تَرِثُواْ النسآء كَرْهاً وَلاَ تَعْضُلُوهُنَّ لِتَذْهَبُواْ بِبَعْضِ ما آتَيْتُمُوهُنَّ إِلاَّ أَن يَأْتِينَ بِفَاحِشَةٍ مُّبَيِّنَةٍ وَعَاشِرُوهُنَّ بالمعروف فَإِن كَرِهْتُمُوهُنَّ فعسى أَن تَكْرَهُواْ شَيْئاً وَيَجْعَلَ الله فِيهيهِ خَيْراً كَثِيراً}\r\n[النساء: 19]', NULL, 0, 4),
(269, 47, 'Surat Al Araf 32', '2020-04-16 05:09:55', '2020-04-16 05:24:32', NULL, 'فالدنيا دار اختبار للايمان، والاخرة دار الجزاء.. ومن الناس من لا يعبد الله.. هؤلاء متساوون في عطاء الربوبية مع المؤمنين في الدنيا.. ولكن في الآخرة يكون عطاء الالوهية للمؤمنين وحدهم.. فنعم الله لأصحاب الجنة، وعطاءات الله لمن آمن.. واقرأ قوله تبارك وتعالى.\r\n{قُلْ مَنْ حَرَّمَ زِينَةَ الله التي أَخْرَجَ لِعِبَادِهِ وَالْطَّيِّبَاتِ مِنَ الرزق قُلْ هِي لِلَّذِينَ آمَنُواْ فِي الحياة الدنيا خَالِصَةً يَوْمَ القيامة كَذَلِكَ نُفَصِّلُ الآيات لِقَوْمٍ يَعْلَمُونَ} [الأعراف: 32]\r\nعلى ان الحمد لله ليس في الدنيا فقط.. بل هو في الدنيا والاخرة', NULL, 0, 4),
(276, 50, 'Shahadah', '2020-04-16 06:07:33', '2020-04-16 09:03:18', NULL, 'sincerely reciting the Muslim profession of faith', NULL, 0, 4),
(277, 50, 'Salat', '2020-04-16 06:09:03', '2020-04-16 09:03:52', NULL, 'performing ritual prayers in the proper way five times each day', NULL, 0, 4),
(278, 50, 'Sawm', '2020-04-16 06:12:01', '2020-04-16 09:05:05', NULL, 'fasting during the month of Ramadan', NULL, 0, 4),
(279, 50, 'Zakat', '2020-04-16 06:13:04', '2020-04-16 09:04:33', NULL, 'paying an alms (or charity) tax to benefit the poor and the needy', NULL, 0, 4),
(280, 50, 'Hajj', '2020-04-16 06:13:05', '2020-04-16 09:05:42', NULL, 'pilgrimage to Mecca', NULL, 0, 4),
(281, 54, 'La Tasomo hata tAro el Helal', '2020-04-16 08:06:05', '2020-04-17 22:40:19', 'uploads/videos/5e99f81299654.mp4', NULL, '5e99f812a03ee.png', 0, 1),
(282, 54, 'Iza Jaa Ramadan', '2020-04-16 08:07:59', '2020-04-17 22:44:56', 'uploads/videos/5e99f928377ce.mp4', NULL, '5e99f9283990f.png', 0, 1),
(307, 33, 'Sourat altalaq', '2020-04-16 23:34:41', '2020-04-18 17:19:07', 'uploads/videos/5e98b35091b7e.mp4', NULL, '5e9afe4bf179f.png', 65, 1),
(309, 33, 'Sourat altahrem', '2020-04-16 23:38:42', '2020-04-18 17:19:37', 'uploads/videos/5e98b441aa8f2.mp4', NULL, '5e9afe69597eb.png', 66, 1),
(310, 33, 'Sourat elmolk', '2020-04-16 23:43:17', '2020-04-18 17:20:01', 'uploads/videos/5e98b554b7c49.mp4', NULL, '5e9afe81c7a95.png', 67, 1),
(311, 33, 'Sourat EL Qalm', '2020-04-16 23:46:46', '2020-04-18 17:32:38', 'uploads/videos/5e98b6269e2ad.mp4', NULL, '5e9b0176de137.png', 68, 1),
(312, 33, 'Sourat alhaqa', '2020-04-16 23:49:38', '2020-04-18 17:32:59', 'uploads/videos/5e98b6d23b9e1.mp4', NULL, '5e9b018bd5c11.png', 69, 1),
(313, 33, 'Sourat alm3arej', '2020-04-16 23:52:27', '2020-04-18 17:34:03', 'uploads/videos/5e98b77b82981.mp4', NULL, '5e9b01cbcd245.png', 70, 1),
(314, 33, 'Sourat nooh', '2020-04-16 23:55:03', '2020-04-18 15:00:33', 'uploads/videos/5e98b816acf0c.mp4', NULL, '5e98b816b10f1.png', 71, 1),
(315, 33, 'Sourat aljen', '2020-04-16 23:57:36', '2020-04-18 15:50:30', 'uploads/videos/5e98b8afcc487.mp4', NULL, '5e98b8afd466f.png', 72, 1),
(316, 33, 'Sourat almuzzamel', '2020-04-17 00:00:19', '2020-04-18 15:53:42', 'uploads/videos/5e98b95316dd8.mp4', NULL, '5e98b95321038.png', 73, 1),
(317, 33, 'Sourat almudather', '2020-04-17 00:03:07', '2020-04-18 15:47:30', 'uploads/videos/5e98b9fac5e68.mp4', NULL, '5e98b9faca727.png', 74, 1),
(318, 33, 'Sourat alqyama', '2020-04-17 00:04:59', '2020-04-18 15:06:05', 'uploads/videos/5e98ba6b425f3.mp4', NULL, '5e98ba6b462c7.png', 75, 1),
(319, 33, 'Sourat alinsan', '2020-04-17 00:08:09', '2020-04-18 15:07:11', 'uploads/videos/5e98bb28c2bd2.mp4', NULL, '5e98bb28c88f0.png', 76, 1),
(320, 33, 'Sourat almursalat', '2020-04-17 00:10:24', '2020-04-18 15:07:53', 'uploads/videos/5e98bbafa06af.mp4', NULL, '5e98bbafa540f.png', 77, 1),
(323, 33, 'Sourat naba', '2020-04-17 00:13:21', '2020-04-18 15:08:45', 'uploads/videos/5e98bc6122815.mp4', NULL, '5e98bc6126fe1.png', 78, 1),
(324, 33, 'Sourat alnaze3at', '2020-04-17 00:15:54', '2020-04-18 15:10:14', 'uploads/videos/5e98bcf9a9037.mp4', NULL, '5e98bcf9ad77c.png', 79, 1),
(325, 33, 'Sourat 3abasa', '2020-04-17 00:18:25', '2020-04-18 15:13:54', 'uploads/videos/5e98bd91a0f80.mp4', NULL, '5e98bd91a499a.png', 80, 1),
(326, 33, 'Sourat takwer', '2020-04-17 00:20:17', '2020-04-18 15:14:20', 'uploads/videos/5e98be0126f1a.mp4', NULL, '5e98be0128e8f.png', 81, 1),
(327, 33, 'Sourat enfetar', '2020-04-17 00:21:41', '2020-04-18 15:14:47', 'uploads/videos/5e98be54a9d84.mp4', NULL, '5e98be54ab6df.png', 82, 1),
(328, 33, 'Sourat motafefen', '2020-04-17 00:24:05', '2020-04-18 15:17:21', 'uploads/videos/5e98bee587a25.mp4', NULL, '5e98bee58b206.png', 83, 1),
(329, 33, 'Sourat ensheqaq', '2020-04-17 00:25:43', '2020-04-18 15:18:05', 'uploads/videos/5e98bf4735132.mp4', NULL, '5e98bf4737947.png', 84, 1),
(330, 33, 'Sourat albroj', '2020-04-17 00:27:18', '2020-04-18 15:19:20', 'uploads/videos/5e98bfa659ac3.mp4', NULL, '5e98bfa65cb2d.png', 85, 1),
(331, 33, 'Sourat tareq', '2020-04-17 00:28:24', '2020-04-18 15:20:06', 'uploads/videos/5e98bfe812095.mp4', NULL, '5e98bfe813d0f.png', 86, 1),
(332, 33, 'Sourat ala3la', '2020-04-17 00:29:46', '2020-04-18 15:20:36', 'uploads/videos/5e98c039f27e0.mp4', NULL, '5e98c039f3dc2.png', 87, 1),
(333, 33, 'Sourat ghashaya', '2020-04-17 00:31:16', '2020-04-18 15:21:30', 'uploads/videos/5e98c0946bd2a.mp4', NULL, '5e98c0946e45c.png', 88, 1),
(334, 33, 'Sourat fajar', '2020-04-17 00:33:02', '2020-04-18 15:23:46', 'uploads/videos/5e98c0fe5466b.mp4', NULL, '5e98c0fe5702b.png', 89, 1),
(335, 33, 'Sourat balad', '2020-04-17 00:34:20', '2020-04-18 15:25:37', 'uploads/videos/5e98c14bbee6c.mp4', NULL, '5e98c14bc0621.png', 90, 1),
(336, 33, 'Sourat shams', '2020-04-17 00:35:18', '2020-04-18 15:26:14', 'uploads/videos/5e98c1869571f.mp4', NULL, '5e98c1869704a.png', 91, 1),
(337, 33, 'Sourat allil', '2020-04-17 00:36:27', '2020-04-18 15:27:02', 'uploads/videos/5e98c1cacda33.mp4', NULL, '5e98c1cacf8a0.png', 92, 1),
(338, 33, 'Sourat doha', '2020-04-17 00:37:22', '2020-04-18 15:28:28', 'uploads/videos/5e98c20228daa.mp4', NULL, '5e98c20229ca1.png', 93, 1),
(339, 33, 'Sourat sharh', '2020-04-17 00:38:17', '2020-04-18 15:30:10', 'uploads/videos/5e98c2392eb8f.mp4', NULL, '5e98c2392f85a.png', 94, 1),
(340, 33, 'Sourat teen', '2020-04-17 00:39:12', '2020-04-18 15:31:43', 'uploads/videos/5e98c2707a8bc.mp4', NULL, '5e98c2707b91b.png', 95, 1),
(341, 33, 'Sourat 3alaq', '2020-04-17 00:40:17', '2020-04-18 15:34:28', 'uploads/videos/5e98c2b1385be.mp4', NULL, '5e98c2b13a002.png', 96, 1),
(342, 33, 'Sourat qadar', '2020-04-17 00:41:04', '2020-04-18 15:35:02', 'uploads/videos/5e98c2dff141b.mp4', NULL, '5e98c2dff2122.png', 97, 1),
(343, 33, 'Sourat bayna', '2020-04-17 00:42:19', '2020-04-18 15:56:09', 'uploads/videos/5e98c32b44247.mp4', NULL, '5e98c32b46426.png', 98, 1),
(344, 33, 'Sourat zalzala', '2020-04-17 00:43:12', '2020-04-18 13:50:24', 'uploads/videos/5e98c35fbaad2.mp4', NULL, '5e98c35fbb847.png', 99, 1),
(345, 33, 'Sourat 3adyat', '2020-04-17 00:44:25', '2020-04-18 15:35:47', 'uploads/videos/5e98c3a92a56b.mp4', NULL, '5e98c3a92b4bf.png', 100, 1),
(346, 33, 'Sourat qare3a', '2020-04-17 00:45:33', '2020-04-18 15:48:02', 'uploads/videos/5e98c3ed165c4.mp4', NULL, '5e98c3ed177cf.png', 101, 1),
(347, 33, 'Sourat takathor', '2020-04-17 00:46:28', '2020-04-18 15:37:21', 'uploads/videos/5e98c42425c26.mp4', NULL, '5e98c42426927.png', 102, 1),
(348, 33, 'Sourat 3assr', '2020-04-17 00:47:12', '2020-04-18 15:37:51', 'uploads/videos/5e98c4508b55d.mp4', NULL, '5e98c4508bc1b.png', 103, 1),
(349, 33, 'Sourat homaza', '2020-04-17 00:48:15', '2020-04-18 15:38:22', 'uploads/videos/5e98c48f632b3.mp4', NULL, '5e98c48f6432b.png', 104, 1),
(350, 33, 'Sourat Alfeeil', '2020-04-17 00:49:06', '2020-04-18 15:39:03', 'uploads/videos/5e98c4c20120b.mp4', NULL, '5e98c4c201c88.png', 105, 1),
(351, 33, 'Sourat qrysh', '2020-04-17 00:49:59', '2020-04-18 15:39:49', 'uploads/videos/5e98c4f7182d1.mp4', NULL, '5e98c4f718e9b.png', 106, 1),
(352, 33, 'Sourat ma3on', '2020-04-17 00:50:48', '2020-04-18 15:42:16', 'uploads/videos/5e98c527a3cda.mp4', NULL, '5e98c527a4b7b.png', 107, 1),
(353, 33, 'Sourat kawsr', '2020-04-17 00:51:32', '2020-04-18 15:42:50', 'uploads/videos/5e98c5547794a.mp4', NULL, '5e98c55477ee9.png', 108, 1),
(354, 33, 'Sourat kafroon', '2020-04-17 00:52:16', '2020-04-18 15:43:43', 'uploads/videos/5e98c58021ea5.mp4', NULL, '5e98c580226e6.png', 109, 1),
(355, 33, 'Sourat alnasr', '2020-04-17 00:52:57', '2020-04-18 15:45:11', 'uploads/videos/5e98c5a91a1bb.mp4', NULL, '5e98c5a91abd4.png', 110, 1),
(356, 33, 'Sourat almasad', '2020-04-17 00:53:42', '2020-04-18 15:49:21', 'uploads/videos/5e98c5d5d9232.mp4', NULL, '5e98c5d5d9d0c.png', 111, 1),
(357, 33, 'Sourat elakhlas', '2020-04-17 00:54:24', '2020-04-18 15:52:19', 'uploads/videos/5e98c60091811.mp4', NULL, '5e98c60091f31.png', 112, 1),
(358, 33, 'Sourat alfalaq', '2020-04-17 00:55:13', '2020-04-18 15:51:34', 'uploads/videos/5e98c630eba9d.mp4', NULL, '5e98c630ec2ed.png', 113, 1),
(359, 33, 'Sourat alnas', '2020-04-17 00:55:50', '2020-04-18 14:58:50', 'uploads/videos/5e98c65627f4c.mp4', NULL, '5e98c65628dc7.png', 114, 1),
(360, 40, 'Sourat altalaq', '2020-04-17 01:15:36', '2020-04-18 18:05:44', 'uploads/videos/5e98caf7942b5.mp4', NULL, '5e9b0938263a0.png', 0, 1),
(361, 40, 'Sourat altahrem', '2020-04-17 01:18:26', '2020-04-18 18:07:15', 'uploads/videos/5e98cba1ae2cc.mp4', NULL, '5e9b0993a7469.png', 0, 1),
(362, 40, 'Sourat elmolk', '2020-04-17 01:22:12', '2020-04-18 18:07:36', 'uploads/videos/5e98cc8486521.mp4', NULL, '5e9b09a8cb3e5.png', 0, 1),
(363, 40, 'Sourat EL Qalm', '2020-04-17 01:25:58', '2020-04-18 18:08:02', 'uploads/videos/5e98cd664028e.mp4', NULL, '5e9b09c2c37b4.png', 0, 1),
(364, 40, 'Sourat alhaqa', '2020-04-17 01:29:15', '2020-04-18 18:08:22', 'uploads/videos/5e98ce2b2c328.mp4', NULL, '5e9b09d6ec249.png', 0, 1),
(365, 40, 'Sourat alm3arej', '2020-04-17 01:31:46', '2020-04-18 18:08:54', 'uploads/videos/5e98cec1cd26f.mp4', NULL, '5e9b09f6e2693.png', 0, 1),
(366, 40, 'Sourat nooh', '2020-04-17 01:34:34', '2020-04-17 01:34:34', 'uploads/videos/5e98cf6a85b46.mp4', NULL, '5e98cf6a8aa5d.png', 0, 1),
(367, 40, 'Sourat aljen', '2020-04-17 01:37:07', '2020-04-17 01:37:07', 'uploads/videos/5e98d002d95ac.mp4', NULL, '5e98d002de030.png', 0, 1),
(368, 40, 'Sourat almuzzamel', '2020-04-17 01:39:06', '2020-04-17 01:39:06', 'uploads/videos/5e98d07a090ee.mp4', NULL, '5e98d07a0d8b9.png', 0, 1),
(369, 40, 'Sourat almudather', '2020-04-17 01:41:36', '2020-04-17 01:41:36', 'uploads/videos/5e98d1105465c.mp4', NULL, '5e98d11058f9a.png', 0, 1),
(370, 40, 'Sourat alqyama', '2020-04-17 01:43:43', '2020-04-17 01:43:43', 'uploads/videos/5e98d18f31c12.mp4', NULL, '5e98d18f34c49.png', 0, 1),
(371, 40, 'Sourat alinsan', '2020-04-17 01:46:52', '2020-04-17 01:46:52', 'uploads/videos/5e98d24bdeabb.mp4', NULL, '5e98d24be35e4.png', 0, 1),
(372, 40, 'Sourat almursalat', '2020-04-17 01:49:18', '2020-04-17 01:49:18', 'uploads/videos/5e98d2de9697b.mp4', NULL, '5e98d2de9a7ea.png', 0, 1),
(373, 40, 'Sourat naba', '2020-04-17 01:51:59', '2020-04-17 01:51:59', 'uploads/videos/5e98d37eda7ae.mp4', NULL, '5e98d37ede17b.png', 0, 1),
(374, 40, 'Sourat alnaze3at', '2020-04-17 01:54:07', '2020-04-17 01:54:07', 'uploads/videos/5e98d3ff24750.mp4', NULL, '5e98d3ff2797b.png', 0, 1),
(375, 40, 'Sourat 3abasa', '2020-04-17 01:55:53', '2020-04-17 01:55:53', 'uploads/videos/5e98d4691ec4a.mp4', NULL, '5e98d469225c8.png', 0, 1),
(376, 40, 'Sourat takwer', '2020-04-17 01:57:28', '2020-04-17 01:57:28', 'uploads/videos/5e98d4c8530bf.mp4', NULL, '5e98d4c855a43.png', 0, 1),
(377, 40, 'Sourat enfetar', '2020-04-17 01:58:51', '2020-04-17 01:58:51', 'uploads/videos/5e98d51aeb7e4.mp4', NULL, '5e98d51aed734.png', 0, 1),
(378, 40, 'Sourat motafefen', '2020-04-17 02:01:16', '2020-04-17 02:01:16', 'uploads/videos/5e98d5ac448af.mp4', NULL, '5e98d5ac4b490.png', 0, 1),
(379, 40, 'Sourat ensheqaq', '2020-04-17 02:02:58', '2020-04-17 02:02:58', 'uploads/videos/5e98d612858e4.mp4', NULL, '5e98d6128811b.png', 0, 1),
(380, 40, 'Sourat albroj', '2020-04-17 02:04:27', '2020-04-17 02:04:27', 'uploads/videos/5e98d66ac2013.mp4', NULL, '5e98d66ac4488.png', 0, 1),
(381, 40, 'Sourat tareq', '2020-04-17 02:05:38', '2020-04-17 02:05:38', 'uploads/videos/5e98d6b1e84fa.mp4', NULL, '5e98d6b1e9a52.png', 0, 1),
(382, 40, 'Sourat ala3la', '2020-04-17 02:06:53', '2020-04-17 02:06:53', 'uploads/videos/5e98d6fd60346.mp4', NULL, '5e98d6fd61f79.png', 0, 1),
(383, 40, 'Sourat ghashaya', '2020-04-17 02:08:11', '2020-04-17 02:08:11', 'uploads/videos/5e98d74b1bdbf.mp4', NULL, '5e98d74b1db98.png', 0, 1),
(384, 40, 'Sourat fajar', '2020-04-17 02:09:49', '2020-04-17 02:09:49', 'uploads/videos/5e98d7ad8e6c5.mp4', NULL, '5e98d7ad917e7.png', 0, 1),
(385, 40, 'Sourat balad', '2020-04-17 02:11:00', '2020-04-17 02:11:00', 'uploads/videos/5e98d7f3930ec.mp4', NULL, '5e98d7f394903.png', 0, 1),
(386, 40, 'Sourat shams', '2020-04-17 02:14:23', '2020-04-17 02:14:23', 'uploads/videos/5e98d8bf8bde1.mp4', NULL, '5e98d8bf8d630.png', 0, 1),
(387, 40, 'Sourat allil', '2020-04-17 02:15:33', '2020-04-17 02:15:33', 'uploads/videos/5e98d904b6b18.mp4', NULL, '5e98d904b88d1.png', 0, 1),
(388, 40, 'Sourat doha', '2020-04-17 02:16:32', '2020-04-17 02:16:32', 'uploads/videos/5e98d940276d8.mp4', NULL, '5e98d94028ab1.png', 0, 1),
(389, 40, 'Sourat sharh', '2020-04-17 02:17:16', '2020-04-17 02:17:16', 'uploads/videos/5e98d96c0d54f.mp4', NULL, '5e98d96c0e2ed.png', 0, 1),
(390, 40, 'Sourat teen', '2020-04-17 02:18:10', '2020-04-17 02:18:10', 'uploads/videos/5e98d9a203084.mp4', NULL, '5e98d9a203cac.png', 0, 1),
(391, 40, 'Sourat 3alaq', '2020-04-17 02:19:20', '2020-04-17 02:19:20', 'uploads/videos/5e98d9e81467c.mp4', NULL, '5e98d9e815c60.png', 0, 1),
(392, 40, 'Sourat qadar', '2020-04-17 02:20:05', '2020-04-17 02:20:05', 'uploads/videos/5e98da14dd3be.mp4', NULL, '5e98da14de062.png', 0, 1),
(393, 40, 'Sourat bayna', '2020-04-17 02:21:13', '2020-04-17 02:21:13', 'uploads/videos/5e98da5912f04.mp4', NULL, '5e98da591482a.png', 0, 1),
(394, 40, 'Sourat zalzala', '2020-04-17 02:22:02', '2020-04-17 02:22:02', 'uploads/videos/5e98da8a0a1b7.mp4', NULL, '5e98da8a0b3c1.png', 0, 1),
(395, 40, 'Sourat 3adyat', '2020-04-17 02:23:14', '2020-04-17 02:23:14', 'uploads/videos/5e98dad20de67.mp4', NULL, '5e98dad20f1b5.png', 0, 1),
(396, 40, 'Sourat qare3a', '2020-04-17 02:24:03', '2020-04-17 02:24:03', 'uploads/videos/5e98db0316ae6.mp4', NULL, '5e98db0317c34.png', 0, 1),
(397, 40, 'Sourat takathor', '2020-04-17 02:24:51', '2020-04-17 02:24:51', 'uploads/videos/5e98db337ffad.mp4', NULL, '5e98db3380cc3.png', 0, 1),
(398, 40, 'Sourat 3assr', '2020-04-17 02:25:30', '2020-04-17 02:25:30', 'uploads/videos/5e98db59e2bbd.mp4', NULL, '5e98db59e322b.png', 0, 1),
(399, 40, 'Sourat homaza', '2020-04-17 02:26:22', '2020-04-17 02:26:22', 'uploads/videos/5e98db8e97126.mp4', NULL, '5e98db8e980ce.png', 0, 1),
(400, 40, 'Sourat Alfeeil', '2020-04-17 02:27:11', '2020-04-17 02:27:11', 'uploads/videos/5e98dbbf51566.mp4', NULL, '5e98dbbf522d6.png', 0, 1),
(401, 40, 'Sourat qrysh', '2020-04-17 02:28:07', '2020-04-17 02:28:07', 'uploads/videos/5e98dbf78a862.mp4', NULL, '5e98dbf78b23d.png', 0, 1),
(402, 40, 'Sourat ma3on', '2020-04-17 02:28:53', '2020-04-17 02:28:53', 'uploads/videos/5e98dc24ecfa8.mp4', NULL, '5e98dc24eda8e.png', 0, 1),
(403, 40, 'Sourat kawsr', '2020-04-17 02:29:34', '2020-04-17 02:29:34', 'uploads/videos/5e98dc4ea40cb.mp4', NULL, '5e98dc4ea4824.png', 0, 1),
(404, 40, 'Sourat kafroon', '2020-04-17 02:30:17', '2020-04-17 02:30:17', 'uploads/videos/5e98dc79582b3.mp4', NULL, '5e98dc7958afb.png', 0, 1),
(405, 40, 'Sourat alnasr', '2020-04-17 02:30:57', '2020-04-17 02:30:57', 'uploads/videos/5e98dca14f38e.mp4', NULL, '5e98dca14fbaf.png', 0, 1),
(406, 40, 'Sourat almasad', '2020-04-17 02:31:37', '2020-04-17 02:31:37', 'uploads/videos/5e98dcc95d638.mp4', NULL, '5e98dcc95e1a7.png', 0, 1),
(407, 40, 'Sourat elakhlas', '2020-04-17 02:32:13', '2020-04-17 02:32:13', 'uploads/videos/5e98dcecaec65.mp4', NULL, '5e98dcecaf208.png', 0, 1),
(408, 40, 'Sourat alfalaq', '2020-04-17 02:32:45', '2020-04-17 02:32:45', 'uploads/videos/5e98dd0d4f079.mp4', NULL, '5e98dd0d4f8f9.png', 0, 1),
(409, 40, 'Sourat alnas', '2020-04-17 02:33:21', '2020-04-17 02:33:21', 'uploads/videos/5e98dd30cf354.mp4', NULL, '5e98dd30d0190.png', 0, 1),
(410, 34, 'Eza Ra2a Ahdekom men Akheh Awo Men Nafseh', '2020-04-17 02:44:24', '2020-04-17 20:16:59', 'uploads/videos/5e99d67ae286f.mp4', NULL, '5e99d67b02d98.png', 0, 1),
(411, 34, 'Eza Ra2a Ahdekom men Akheh Awo Men Nafseh', '2020-04-17 02:45:05', '2020-04-17 20:17:30', 'uploads/videos/5e99d699ad919.mp4', NULL, '5e99d699b5fff.png', 0, 1),
(412, 34, 'Yakbor Ebn Adam wa Ykbor m3aho Athnan', '2020-04-17 02:46:21', '2020-04-17 20:18:28', 'uploads/videos/5e99d6d4618a1.mp4', NULL, '5e99d6d462d84.png', 0, 1),
(413, 43, 'eisaa', '2020-04-17 02:50:05', '2020-04-17 02:50:05', 'uploads/videos/5e98e11d52fd9.gif', NULL, NULL, 0, 3),
(414, 43, 'eisaa', '2020-04-17 02:50:41', '2020-04-17 02:50:41', 'uploads/videos/5e98e14167750.gif', NULL, NULL, 0, 3),
(415, 43, 'Mohammed', '2020-04-17 02:51:15', '2020-04-17 02:51:15', 'uploads/videos/5e98e16302a33.gif', NULL, NULL, 0, 3),
(416, 43, 'Mohammed', '2020-04-17 02:51:36', '2020-04-17 02:51:36', 'uploads/videos/5e98e17843fed.gif', NULL, NULL, 0, 3),
(417, 43, 'Noah', '2020-04-17 02:52:03', '2020-04-17 02:52:03', 'uploads/videos/5e98e193e8209.gif', NULL, NULL, 0, 3),
(418, 43, 'Noah', '2020-04-17 02:52:22', '2020-04-17 02:52:22', 'uploads/videos/5e98e1a6b9829.gif', NULL, NULL, 0, 3),
(419, 34, 'El Omra Ela El Omra Kafarah Lema Bayenahoma', '2020-04-17 02:53:08', '2020-04-17 20:19:13', 'uploads/videos/5e99d700d3e0b.mp4', NULL, '5e99d700d6f2e.png', 0, 1),
(420, 43, 'Hood', '2020-04-17 02:53:56', '2020-04-17 02:53:56', 'uploads/videos/5e98e20491f58.gif', NULL, NULL, 0, 3),
(421, 43, 'Hood', '2020-04-17 02:54:17', '2020-04-17 02:54:17', 'uploads/videos/5e98e2193b35a.gif', NULL, NULL, 0, 3),
(422, 34, 'La Yadkhol El Jannah Man Kan Fe Qalbeh Methqal Zaret Kebr', '2020-04-17 02:54:17', '2020-04-17 20:20:11', 'uploads/videos/5e99d73b9b08c.mp4', NULL, '5e99d73b9e050.png', 0, 1),
(423, 43, 'saleh', '2020-04-17 02:54:42', '2020-04-17 02:54:42', 'uploads/videos/5e98e2325048a.gif', NULL, NULL, 0, 3),
(424, 43, 'saleh', '2020-04-17 02:55:04', '2020-04-17 02:55:04', 'uploads/videos/5e98e2480a600.gif', NULL, NULL, 0, 3),
(425, 43, 'Ibrahim', '2020-04-17 02:55:31', '2020-04-17 02:55:31', 'uploads/videos/5e98e2638a2be.gif', NULL, NULL, 0, 3),
(426, 43, 'Ibrahim', '2020-04-17 02:55:51', '2020-04-17 02:55:51', 'uploads/videos/5e98e2779d406.gif', NULL, NULL, 0, 3),
(427, 43, 'Adam', '2020-04-17 03:01:45', '2020-04-17 03:01:45', 'uploads/videos/5e98e3d9771ad.gif', NULL, NULL, 0, 3),
(428, 43, 'Adam', '2020-04-17 03:02:11', '2020-04-17 03:02:11', 'uploads/videos/5e98e3f381002.gif', NULL, NULL, 0, 3),
(429, 43, 'Idris', '2020-04-17 03:02:39', '2020-04-17 03:02:39', 'uploads/videos/5e98e40f6a97c.gif', NULL, NULL, 0, 3),
(430, 43, 'Idris', '2020-04-17 03:03:04', '2020-04-17 03:03:04', 'uploads/videos/5e98e42833880.gif', NULL, NULL, 0, 3),
(431, 43, 'Lot', '2020-04-17 03:03:52', '2020-04-17 03:03:52', 'uploads/videos/5e98e458d7694.gif', NULL, NULL, 0, 3),
(432, 43, 'Lot', '2020-04-17 03:04:14', '2020-04-17 03:04:14', 'uploads/videos/5e98e46ee56c2.gif', NULL, NULL, 0, 3),
(433, 43, 'Ismail', '2020-04-17 03:06:32', '2020-04-17 03:06:32', 'uploads/videos/5e98e4f868fa6.gif', NULL, NULL, 0, 3),
(434, 43, 'Ismail', '2020-04-17 03:06:57', '2020-04-17 03:06:57', 'uploads/videos/5e98e51144983.gif', NULL, NULL, 0, 3),
(435, 43, 'is-haq', '2020-04-17 03:07:31', '2020-04-17 03:07:31', 'uploads/videos/5e98e5332e097.gif', NULL, NULL, 0, 3),
(436, 43, 'is-haq', '2020-04-17 03:07:53', '2020-04-17 03:07:53', 'uploads/videos/5e98e54970a3e.gif', NULL, NULL, 0, 3),
(437, 43, 'Yacoub', '2020-04-17 03:08:25', '2020-04-17 03:08:25', 'uploads/videos/5e98e569f074c.gif', NULL, NULL, 0, 3),
(438, 43, 'Yacoub', '2020-04-17 03:08:49', '2020-04-17 03:08:49', 'uploads/videos/5e98e581463df.gif', NULL, NULL, 0, 3),
(439, 43, 'Yousuf', '2020-04-17 03:09:20', '2020-04-17 03:09:20', 'uploads/videos/5e98e5a0d7c22.gif', NULL, NULL, 0, 3),
(440, 43, 'Yousuf', '2020-04-17 03:09:41', '2020-04-17 03:09:41', 'uploads/videos/5e98e5b5a44ff.gif', NULL, NULL, 0, 3),
(441, 43, 'Ayoub', '2020-04-17 03:10:19', '2020-04-17 03:10:19', 'uploads/videos/5e98e5dbf2135.gif', NULL, NULL, 0, 3),
(442, 43, 'Ayoub', '2020-04-17 03:10:45', '2020-04-17 03:10:45', 'uploads/videos/5e98e5f590225.gif', NULL, NULL, 0, 3),
(443, 43, 'zu alkefl', '2020-04-17 03:11:17', '2020-04-17 03:11:17', 'uploads/videos/5e98e615d3237.gif', NULL, NULL, 0, 3),
(444, 43, 'zu alkefl', '2020-04-17 03:11:40', '2020-04-17 03:11:40', 'uploads/videos/5e98e62c95224.gif', NULL, NULL, 0, 3),
(445, 43, 'Younis', '2020-04-17 03:12:10', '2020-04-17 03:12:10', 'uploads/videos/5e98e64add903.gif', NULL, NULL, 0, 3),
(446, 43, 'Younis', '2020-04-17 03:12:33', '2020-04-17 03:12:33', 'uploads/videos/5e98e66180dd7.gif', NULL, NULL, 0, 3),
(447, 43, 'Shoaib', '2020-04-17 03:13:07', '2020-04-17 03:13:07', 'uploads/videos/5e98e6834d19a.gif', NULL, NULL, 0, 3),
(448, 43, 'Shoaib', '2020-04-17 03:13:29', '2020-04-17 03:13:29', 'uploads/videos/5e98e6995a0b3.gif', NULL, NULL, 0, 3),
(449, 43, 'Mousa', '2020-04-17 03:14:08', '2020-04-17 03:14:08', 'uploads/videos/5e98e6c0c7afe.gif', NULL, NULL, 0, 3),
(450, 43, 'Mousa', '2020-04-17 03:14:44', '2020-04-17 03:14:44', 'uploads/videos/5e98e6e431e83.gif', NULL, NULL, 0, 3),
(451, 43, 'haron', '2020-04-17 03:15:28', '2020-04-17 03:15:28', 'uploads/videos/5e98e710c10e1.gif', NULL, NULL, 0, 3),
(452, 43, 'haron', '2020-04-17 03:15:52', '2020-04-17 03:15:52', 'uploads/videos/5e98e7283a6b5.gif', NULL, NULL, 0, 3),
(453, 43, 'dawud', '2020-04-17 03:16:36', '2020-04-17 03:16:36', 'uploads/videos/5e98e75410ce8.gif', NULL, NULL, 0, 3),
(454, 43, 'dawud', '2020-04-17 03:16:56', '2020-04-17 03:16:56', 'uploads/videos/5e98e768eab51.gif', NULL, NULL, 0, 3),
(455, 43, 'Sulaiman', '2020-04-17 03:17:27', '2020-04-17 03:17:27', 'uploads/videos/5e98e7870ed07.gif', NULL, NULL, 0, 3),
(456, 43, 'Sulaiman', '2020-04-17 03:17:48', '2020-04-17 03:17:48', 'uploads/videos/5e98e79ce8ed0.gif', NULL, NULL, 0, 3),
(457, 43, 'ilyas', '2020-04-17 03:18:16', '2020-04-17 03:18:16', 'uploads/videos/5e98e7b849e22.gif', NULL, NULL, 0, 3),
(458, 43, 'ilyas', '2020-04-17 03:18:41', '2020-04-17 03:18:41', 'uploads/videos/5e98e7d13987d.gif', NULL, NULL, 0, 3),
(459, 43, 'Elisaa', '2020-04-17 03:19:13', '2020-04-17 03:19:13', 'uploads/videos/5e98e7f187a7e.gif', NULL, NULL, 0, 3),
(460, 43, 'Elisaa', '2020-04-17 03:19:38', '2020-04-17 03:19:38', 'uploads/videos/5e98e80abf724.gif', NULL, NULL, 0, 3),
(461, 43, 'Zakaria', '2020-04-17 03:20:20', '2020-04-17 03:20:20', 'uploads/videos/5e98e834a2fb2.gif', NULL, NULL, 0, 3),
(462, 43, 'Zakaria', '2020-04-17 03:20:41', '2020-04-17 03:20:41', 'uploads/videos/5e98e849744af.gif', NULL, NULL, 0, 3),
(463, 43, 'Yahia', '2020-04-17 03:21:09', '2020-04-17 03:21:09', 'uploads/videos/5e98e8650b2ba.gif', NULL, NULL, 0, 3),
(464, 43, 'Yahia', '2020-04-17 03:21:31', '2020-04-17 03:21:31', 'uploads/videos/5e98e87bed500.gif', NULL, NULL, 0, 3),
(465, 39, 'Al-Kafirun', '2020-04-17 12:28:56', '2020-04-18 01:00:22', 'uploads/videos/5e9968c75c576.mp4', NULL, '5e9a04b205db6.png', 0, 1),
(466, 39, 'An-Nasr', '2020-04-17 12:29:33', '2020-04-18 01:02:14', 'uploads/videos/5e9968ecd6d9d.mp4', NULL, '5e9a04df1213e.png', 0, 1),
(467, 39, 'Al-Masad', '2020-04-17 12:30:09', '2020-04-18 01:05:51', 'uploads/videos/5e9969118d121.mp4', NULL, '5e9a050898bcf.png', 0, 1),
(468, 39, 'Al-Ikhlas', '2020-04-17 12:30:56', '2020-04-18 01:08:14', 'uploads/videos/5e99693fcef8e.mp4', NULL, '5e9a053969b59.png', 0, 1),
(469, 39, 'Al-Falaq', '2020-04-17 12:31:47', '2020-04-18 01:08:54', 'uploads/videos/5e99697355621.mp4', NULL, '5e9a054cdb28b.png', 0, 1),
(470, 39, 'Al-Nas', '2020-04-17 12:32:49', '2020-04-18 00:12:44', 'uploads/videos/5e9969b0db412.mp4', NULL, '5e9a0561771e2.png', 0, 1),
(471, 33, 'Al-Fatihah', '2020-04-17 12:48:53', '2020-04-18 11:27:19', 'uploads/videos/5e996d752f73c.mp4', NULL, '5e9a020a13110.png', 1, 1),
(472, 33, 'Al-Baqarah', '2020-04-17 12:49:44', '2020-04-18 11:35:00', 'uploads/videos/5e996da7ebcfb.mp4', NULL, '5e9a023b04d65.png', 2, 1),
(473, 33, 'Al Imran', '2020-04-17 12:50:09', '2020-04-18 13:46:43', 'uploads/videos/5e996dc184ee4.mp4', NULL, '5e9a026c80234.png', 3, 1),
(474, 33, 'An-Nisa\'', '2020-04-17 12:50:39', '2020-04-18 14:50:24', 'uploads/videos/5e996ddfa786f.mp4', NULL, '5e9a02930bfd4.png', 4, 1),
(475, 33, 'Al-Ma\'idah', '2020-04-17 13:22:13', '2020-04-18 14:49:53', 'uploads/videos/5e9975453e66e.mp4', NULL, '5e9a02c24787c.png', 5, 1),
(476, 33, 'Al-An\'am', '2020-04-17 13:22:34', '2020-04-18 14:49:29', 'uploads/videos/5e99755a974f8.mp4', NULL, '5e9a02e25111d.png', 6, 1),
(477, 33, 'Al-A\'raf', '2020-04-17 13:24:17', '2020-04-18 16:45:43', 'uploads/videos/5e9975c1c9b83.mp4', NULL, '5e9af6774a0ae.png', 7, 1),
(478, 33, 'Al-\'Anfal', '2020-04-17 13:24:58', '2020-04-18 16:30:26', 'uploads/videos/5e9975eab28fb.mp4', NULL, '5e9af2e27a300.png', 8, 1),
(479, 33, 'At-Tawbah', '2020-04-17 13:25:28', '2020-04-18 16:30:59', 'uploads/videos/5e99760874a4f.mp4', NULL, '5e9af30392626.png', 9, 1),
(480, 33, 'Yunus', '2020-04-17 13:25:55', '2020-04-18 16:31:40', 'uploads/videos/5e997623a6b6a.mp4', NULL, '5e9af32c1f0bd.png', 10, 1),
(481, 33, 'Hud', '2020-04-17 13:26:20', '2020-04-18 16:32:05', 'uploads/videos/5e99763ca7a35.mp4', NULL, '5e9af345def55.png', 11, 1),
(482, 33, 'Yusuf', '2020-04-17 13:26:44', '2020-04-18 16:32:29', 'uploads/videos/5e9976542b6ca.mp4', NULL, '5e9af35d401c3.png', 12, 1),
(483, 33, 'Ar-Ra\'d', '2020-04-17 13:27:12', '2020-04-18 16:32:55', 'uploads/videos/5e9976700799f.mp4', NULL, '5e9af37782bae.png', 13, 1),
(484, 33, 'Ibrahim', '2020-04-17 13:27:36', '2020-04-18 16:33:17', 'uploads/videos/5e997688b1435.mp4', NULL, '5e9af38dd7b32.png', 14, 1),
(485, 33, 'Al-Hijr', '2020-04-17 13:28:14', '2020-04-18 16:33:40', 'uploads/videos/5e9976ae7a431.mp4', NULL, '5e9af3a4a7eae.png', 15, 1),
(486, 33, 'An-Nahl', '2020-04-17 13:28:37', '2020-04-18 16:34:06', 'uploads/videos/5e9976c55c43b.mp4', NULL, '5e9af3be11621.png', 16, 1),
(487, 33, 'Al-Isra\'', '2020-04-17 13:29:04', '2020-04-18 16:34:31', 'uploads/videos/5e9976e071954.mp4', NULL, '5e9af3d72a840.png', 17, 1),
(488, 33, 'Al-Kahf', '2020-04-17 13:29:34', '2020-04-18 16:34:54', 'uploads/videos/5e9976fe25d63.mp4', NULL, '5e9af3eea1890.png', 18, 1),
(489, 33, 'Maryam', '2020-04-17 13:30:00', '2020-04-18 16:35:19', 'uploads/videos/5e99771849840.mp4', NULL, '5e9af407de952.png', 19, 1),
(490, 33, 'Ta-Ha', '2020-04-17 13:30:25', '2020-04-18 16:35:45', 'uploads/videos/5e99773187dee.mp4', NULL, '5e9af421a905b.png', 20, 1),
(491, 33, 'Al-Anbiya\'', '2020-04-17 13:58:02', '2020-04-18 16:36:17', 'uploads/videos/5e997daad7ee8.mp4', NULL, '5e9af4411e65f.png', 21, 1),
(492, 33, 'Al-Hajj', '2020-04-17 13:58:24', '2020-04-18 16:36:45', 'uploads/videos/5e997dc010815.mp4', NULL, '5e9af45deec71.png', 22, 1),
(493, 33, 'Al-Mu\'minun', '2020-04-17 13:58:43', '2020-04-18 16:37:12', 'uploads/videos/5e997dd36271f.mp4', NULL, '5e9af4787825f.png', 23, 1),
(494, 33, 'An-Nur', '2020-04-17 13:58:59', '2020-04-18 16:37:35', 'uploads/videos/5e997de3a1d73.mp4', NULL, '5e9af48f9bbb4.png', 24, 1),
(495, 33, 'Al-Furqan', '2020-04-17 13:59:39', '2020-04-18 16:38:07', 'uploads/videos/5e997e0bbb47d.mp4', NULL, '5e9af4af36f58.png', 25, 1),
(496, 33, 'Ash-Shu\'ara\'', '2020-04-17 13:59:59', '2020-04-18 16:38:32', 'uploads/videos/5e997e1f34414.mp4', NULL, '5e9af4c81a615.png', 26, 1),
(497, 33, 'An-Naml', '2020-04-17 14:00:17', '2020-04-18 16:39:02', 'uploads/videos/5e997e30ee677.mp4', NULL, '5e9af4e696036.png', 27, 1),
(498, 33, 'Al-Qasas', '2020-04-17 14:00:34', '2020-04-18 16:39:25', 'uploads/videos/5e997e42241cd.mp4', NULL, '5e9af4fda41a7.png', 28, 1),
(499, 33, 'Al-\'Ankabut', '2020-04-17 14:00:53', '2020-04-18 16:40:02', 'uploads/videos/5e997e551a191.mp4', NULL, '5e9af52259350.png', 29, 1),
(500, 33, 'Ar-Rum', '2020-04-17 14:01:17', '2020-04-18 16:40:30', 'uploads/videos/5e997e6d2e41b.mp4', NULL, '5e9af53eece7b.png', 30, 1),
(501, 33, 'Luqman', '2020-04-17 14:01:33', '2020-04-18 16:41:09', 'uploads/videos/5e997e7d1254d.mp4', NULL, '5e9af56546b08.png', 31, 1),
(502, 33, 'As-Sajdah', '2020-04-17 14:01:56', '2020-04-18 16:41:48', 'uploads/videos/5e997e93e7bf2.mp4', NULL, '5e9af58cf2f95.png', 32, 1),
(503, 33, 'Al-Ahzab', '2020-04-17 14:02:11', '2020-04-18 16:42:11', 'uploads/videos/5e997ea3c45f8.mp4', NULL, '5e9af5a316932.png', 33, 1),
(504, 33, 'Saba\'', '2020-04-17 14:02:33', '2020-04-18 16:42:36', 'uploads/videos/5e997eb8f2181.mp4', NULL, '5e9af5bca076f.png', 34, 1),
(505, 33, 'Fatir', '2020-04-17 14:02:57', '2020-04-18 16:43:03', 'uploads/videos/5e997ed189eae.mp4', NULL, '5e9af5d7a6db4.png', 35, 1),
(506, 33, 'Ya-Sin', '2020-04-17 14:03:25', '2020-04-18 16:43:30', 'uploads/videos/5e997eed9c44d.mp4', NULL, '5e9af5f21b3c5.png', 36, 1),
(507, 33, 'As-Saffat', '2020-04-17 14:03:44', '2020-04-18 16:43:58', 'uploads/videos/5e997f0006e12.mp4', NULL, '5e9af60e2ebed.png', 37, 1),
(508, 33, 'Saad', '2020-04-17 14:04:05', '2020-04-18 16:44:27', 'uploads/videos/5e997f15a918f.mp4', NULL, '5e9af62b09537.png', 38, 1),
(509, 33, 'Az-Zumar', '2020-04-17 14:04:22', '2020-04-18 16:44:48', 'uploads/videos/5e997f26656cc.mp4', NULL, '5e9af640aac97.png', 39, 1),
(510, 33, 'Ghafir', '2020-04-17 14:04:41', '2020-04-18 16:45:09', 'uploads/videos/5e997f39691f2.mp4', NULL, '5e9af655c5eb5.png', 40, 1),
(511, 33, 'Fussilat', '2020-04-17 14:04:57', '2020-04-18 17:09:37', 'uploads/videos/5e997f499559c.mp4', NULL, '5e9afc11a27a3.png', 41, 1),
(512, 33, 'Ash-Shura', '2020-04-17 14:05:15', '2020-04-18 17:09:57', 'uploads/videos/5e997f5b0ed1d.mp4', NULL, '5e9afc25b1045.png', 42, 1),
(513, 33, 'Az-Zukhruf', '2020-04-17 14:05:34', '2020-04-18 17:10:40', 'uploads/videos/5e997f6e0a012.mp4', NULL, '5e9afc50d58f7.png', 43, 1),
(514, 33, 'Ad-Dukhan', '2020-04-17 14:05:52', '2020-04-18 17:11:13', 'uploads/videos/5e997f8009f8d.mp4', NULL, '5e9afc715b3ac.png', 44, 1),
(515, 33, 'Al-Jathiyah', '2020-04-17 14:06:09', '2020-04-18 17:11:55', 'uploads/videos/5e997f91b629f.mp4', NULL, '5e9afc9bc3aa1.png', 45, 1),
(516, 33, 'Al-Ahqaf', '2020-04-17 14:06:26', '2020-04-18 17:12:13', 'uploads/videos/5e997fa1dc6e8.mp4', NULL, '5e9afcadc7603.png', 46, 1),
(517, 33, 'Muhammad', '2020-04-17 14:06:42', '2020-04-18 17:12:32', 'uploads/videos/5e997fb26e4b0.mp4', NULL, '5e9afcc0813f7.png', 47, 1),
(518, 33, 'Al-Fath', '2020-04-17 14:06:58', '2020-04-18 17:12:52', 'uploads/videos/5e997fc28f5c7.mp4', NULL, '5e9afcd441af5.png', 48, 1),
(519, 33, 'Al-Hujurat', '2020-04-17 14:07:16', '2020-04-18 17:13:13', 'uploads/videos/5e997fd418f46.mp4', NULL, '5e9afce901611.png', 49, 1),
(520, 33, 'Qaf', '2020-04-17 14:07:35', '2020-04-18 17:13:34', 'uploads/videos/5e997fe7562cd.mp4', NULL, '5e9afcfe941cf.png', 50, 1),
(521, 33, 'Adh-Dhariyat', '2020-04-17 14:07:51', '2020-04-18 17:13:59', 'uploads/videos/5e997ff70e2df.mp4', NULL, '5e9afd175c6e8.png', 51, 1),
(522, 33, 'At-Tur', '2020-04-17 14:08:08', '2020-04-18 17:14:20', 'uploads/videos/5e9980089d175.mp4', NULL, '5e9afd2cbdcf3.png', 52, 1),
(523, 33, 'An-Najm', '2020-04-17 14:08:25', '2020-04-18 17:14:45', 'uploads/videos/5e9980191ec49.mp4', NULL, '5e9afd45393cb.png', 53, 1),
(524, 33, 'Al-Qamar', '2020-04-17 14:08:41', '2020-04-18 17:15:04', 'uploads/videos/5e998029a8c65.mp4', NULL, '5e9afd58bf078.png', 54, 1),
(525, 33, 'Ar-Rahman', '2020-04-17 14:09:08', '2020-04-18 17:15:23', 'uploads/videos/5e9980444bf1b.mp4', NULL, '5e9afd6b95026.png', 55, 1),
(526, 33, 'Al-Waqi\'ah', '2020-04-17 14:09:52', '2020-04-18 17:15:44', 'uploads/videos/5e998070097d3.mp4', NULL, '5e9afd807dc38.png', 56, 1),
(527, 33, 'Al-Hadeed', '2020-04-17 14:10:13', '2020-04-18 17:16:06', 'uploads/videos/5e998085095cb.mp4', NULL, '5e9afd96c0bdb.png', 57, 1),
(528, 33, 'Al-Mujadilah', '2020-04-17 14:10:37', '2020-04-18 17:16:23', 'uploads/videos/5e99809d448cc.mp4', NULL, '5e9afda7df1cf.png', 58, 1),
(529, 33, 'Al-Hashr', '2020-04-17 14:10:54', '2020-04-18 17:16:43', 'uploads/videos/5e9980aea9cf4.mp4', NULL, '5e9afdbb72123.png', 59, 1),
(530, 33, 'Al-Mumtahanah', '2020-04-17 14:11:09', '2020-04-18 17:17:04', 'uploads/videos/5e9980bd3588c.mp4', NULL, '5e9afdd093695.png', 60, 1),
(531, 33, 'As-Saff', '2020-04-17 14:11:25', '2020-04-18 17:17:26', 'uploads/videos/5e9980ccdd274.mp4', NULL, '5e9afde6a36af.png', 61, 1),
(532, 33, 'Al-Jumu\'ah', '2020-04-17 14:11:46', '2020-04-18 17:17:47', 'uploads/videos/5e9980e238817.mp4', NULL, '5e9afdfba6c24.png', 62, 1),
(533, 33, 'Al-Munafiqun', '2020-04-17 14:12:33', '2020-04-18 17:18:12', 'uploads/videos/5e9981112a130.mp4', NULL, '5e9afe146c496.png', 63, 1),
(534, 33, 'At-Taghabun', '2020-04-17 14:12:53', '2020-04-18 17:18:38', 'uploads/videos/5e9981252082e.mp4', NULL, '5e9afe2e19c0b.png', 64, 1),
(535, 40, 'Al-Fatihah', '2020-04-17 14:13:37', '2020-04-18 17:40:20', 'uploads/videos/5e9981513419c.mp4', NULL, '5e9a03257c2cc.png', 1, 1),
(536, 40, 'Al-Baqarah', '2020-04-17 14:13:53', '2020-04-18 17:42:24', 'uploads/videos/5e99816106913.mp4', NULL, '5e9a034c6c17e.png', 2, 1),
(537, 40, 'Al Imran', '2020-04-17 14:14:08', '2020-04-18 17:42:37', 'uploads/videos/5e9981707b3ec.mp4', NULL, '5e9a037304281.png', 3, 1),
(538, 40, 'An-Nisa\'', '2020-04-17 14:14:24', '2020-04-18 17:42:50', 'uploads/videos/5e99818038ab3.mp4', NULL, '5e9a039c724a2.png', 4, 1),
(539, 40, 'Al-Ma\'idah', '2020-04-17 14:14:44', '2020-04-18 17:43:04', 'uploads/videos/5e998193e76d0.mp4', NULL, '5e9a03c284275.png', 5, 1),
(540, 40, 'Al-An\'am', '2020-04-17 14:15:01', '2020-04-18 17:43:17', 'uploads/videos/5e9981a4e351c.mp4', NULL, '5e9a03e6a9eba.png', 6, 1),
(541, 40, 'Al-A\'raf', '2020-04-17 14:15:19', '2020-04-18 17:43:35', 'uploads/videos/5e9981b74d507.mp4', NULL, '5e9af721062be.png', 7, 1),
(542, 40, 'Al-\'Anfal', '2020-04-17 14:15:38', '2020-04-18 17:43:47', 'uploads/videos/5e9981ca4088f.mp4', NULL, '5e9af741d5fb8.png', 8, 1),
(543, 40, 'At-Tawbah', '2020-04-17 14:16:00', '2020-04-18 17:44:01', 'uploads/videos/5e9981e035f05.mp4', NULL, '5e9af76c1e70d.png', 9, 1),
(544, 40, 'Yunus', '2020-04-17 14:16:20', '2020-04-18 17:44:16', 'uploads/videos/5e9981f44e2f0.mp4', NULL, '5e9af7ad43c66.png', 10, 1),
(545, 40, 'Hud', '2020-04-17 14:16:38', '2020-04-18 17:44:31', 'uploads/videos/5e998206b363c.mp4', NULL, '5e9af7c4c0627.png', 11, 1),
(546, 40, 'Yusuf', '2020-04-17 14:17:03', '2020-04-18 17:44:46', 'uploads/videos/5e99821f0195a.mp4', NULL, '5e9af7d80cc46.png', 12, 1),
(547, 40, 'Ar-Ra\'d', '2020-04-17 14:17:22', '2020-04-18 17:45:11', 'uploads/videos/5e998232aeb82.mp4', NULL, '5e9af7ec592f1.png', 13, 1),
(548, 40, 'Ibrahim', '2020-04-17 14:18:47', '2020-04-18 17:45:30', 'uploads/videos/5e99828727086.mp4', NULL, '5e9af7ff7d587.png', 14, 1),
(549, 40, 'Al-Hijr', '2020-04-17 14:19:51', '2020-04-18 17:46:57', 'uploads/videos/5e9982c744668.mp4', NULL, '5e9af8196cc3a.png', 15, 1),
(550, 40, 'An-Nahl', '2020-04-17 14:20:26', '2020-04-18 17:47:22', 'uploads/videos/5e9982ea51b7f.mp4', NULL, '5e9af82ce9c8d.png', 16, 1),
(551, 40, 'Al-Isra\'', '2020-04-17 14:21:12', '2020-04-18 17:48:08', 'uploads/videos/5e99831826829.mp4', NULL, '5e9af83f54c28.png', 17, 1),
(552, 40, 'Al-Kahf', '2020-04-17 14:21:36', '2020-04-18 17:48:50', 'uploads/videos/5e99833077c52.mp4', NULL, '5e9af856409e0.png', 18, 1),
(553, 40, 'Maryam', '2020-04-17 14:21:59', '2020-04-18 17:49:05', 'uploads/videos/5e998347a3514.mp4', NULL, '5e9af86cedc9f.png', 19, 1),
(554, 40, 'Ta-Ha', '2020-04-17 14:22:23', '2020-04-18 17:49:19', 'uploads/videos/5e99835f8f90f.mp4', NULL, '5e9af8874efa8.png', 20, 1),
(555, 40, 'Al-Anbiya\'', '2020-04-17 14:22:40', '2020-04-18 17:49:34', 'uploads/videos/5e998370cc2d5.mp4', NULL, '5e9af89b19fb0.png', 21, 1),
(556, 40, 'Al-Hajj', '2020-04-17 14:23:06', '2020-04-18 17:50:01', 'uploads/videos/5e99838aa43aa.mp4', NULL, '5e9af8b1bac32.png', 22, 1),
(557, 40, 'Al-Mu\'minun', '2020-04-17 14:23:24', '2020-04-18 17:50:15', 'uploads/videos/5e99839c09e76.mp4', NULL, '5e9af8c8263d8.png', 23, 1),
(558, 40, 'An-Nur', '2020-04-17 14:23:39', '2020-04-18 17:50:34', 'uploads/videos/5e9983ab7c26e.mp4', NULL, '5e9af8dd9da2b.png', 24, 1),
(559, 40, 'Al-Furqan', '2020-04-17 14:23:58', '2020-04-18 17:51:06', 'uploads/videos/5e9983be09dd4.mp4', NULL, '5e9af8f3d8a60.png', 25, 1),
(560, 40, 'Ash-Shu\'ara\'', '2020-04-17 14:24:24', '2020-04-18 17:51:35', 'uploads/videos/5e9983d89c995.mp4', NULL, '5e9af90dc8137.png', 26, 1),
(561, 40, 'An-Naml', '2020-04-17 14:24:48', '2020-04-18 17:51:50', 'uploads/videos/5e9983efdf61a.mp4', NULL, '5e9af924c2fd2.png', 27, 1),
(562, 40, 'Al-Qasas', '2020-04-17 14:25:03', '2020-04-18 17:52:02', 'uploads/videos/5e9983ff7c28b.mp4', NULL, '5e9af93e32d8d.png', 28, 1),
(563, 40, 'Al-\'Ankabut', '2020-04-17 14:25:19', '2020-04-18 17:52:18', 'uploads/videos/5e99840fa5cc9.mp4', NULL, '5e9af95531ce0.png', 29, 1),
(564, 40, 'Ar-Rum', '2020-04-17 14:25:35', '2020-04-18 17:52:34', 'uploads/videos/5e99841fcedae.mp4', NULL, '5e9af9699d71c.png', 30, 1),
(565, 40, 'Luqman', '2020-04-17 14:25:52', '2020-04-18 17:52:58', 'uploads/videos/5e998430d529e.mp4', NULL, '5e9af97f6dc48.png', 31, 1),
(566, 40, 'As-Sajdah', '2020-04-17 14:26:10', '2020-04-18 17:53:16', 'uploads/videos/5e998442565e7.mp4', NULL, '5e9af9941898d.png', 32, 1),
(567, 40, 'Al-Ahzab', '2020-04-17 14:26:26', '2020-04-18 17:54:08', 'uploads/videos/5e998452464cc.mp4', NULL, '5e9af9abd6b32.png', 33, 1),
(568, 40, 'Saba\'', '2020-04-17 14:26:43', '2020-04-18 17:55:42', 'uploads/videos/5e99846371022.mp4', NULL, '5e9af9c2adef1.png', 34, 1),
(569, 40, 'Fatir', '2020-04-17 14:27:01', '2020-04-18 17:56:18', 'uploads/videos/5e9984758a883.mp4', NULL, '5e9af9dd35db1.png', 35, 1),
(570, 40, 'Ya-Sin', '2020-04-17 14:27:18', '2020-04-18 18:01:08', 'uploads/videos/5e99848644d02.mp4', NULL, '5e9af9f566e89.png', 36, 1),
(571, 40, 'As-Saffat', '2020-04-17 14:27:34', '2020-04-18 18:01:30', 'uploads/videos/5e998495def71.mp4', NULL, '5e9afa0e3b0cb.png', 37, 1),
(572, 40, 'Saad', '2020-04-17 14:27:50', '2020-04-18 18:02:44', 'uploads/videos/5e9984a60d6d6.mp4', NULL, '5e9afa272060b.png', 38, 1),
(573, 40, 'Az-Zumar', '2020-04-17 14:28:09', '2020-04-18 18:02:59', 'uploads/videos/5e9984b921867.mp4', NULL, '5e9afa3d0b278.png', 39, 1),
(574, 40, 'Ghafir', '2020-04-17 14:28:27', '2020-04-18 18:03:16', 'uploads/videos/5e9984cb022d6.mp4', NULL, '5e9afa52bc30c.png', 40, 1),
(575, 40, 'Fussilat', '2020-04-17 14:28:46', '2020-04-18 18:03:39', 'uploads/videos/5e9984de35f28.mp4', NULL, '5e9b012d9a97d.png', 41, 1),
(576, 40, 'Ash-Shura', '2020-04-17 14:29:07', '2020-04-18 18:04:11', 'uploads/videos/5e9984f3c2509.mp4', NULL, '5e9b0259149f6.png', 42, 1),
(577, 40, 'Az-Zukhruf', '2020-04-17 14:29:27', '2020-04-18 18:04:33', 'uploads/videos/5e9985078d911.mp4', NULL, '5e9b03b6438b7.png', 43, 1),
(578, 40, 'Ad-Dukhan', '2020-04-17 14:29:44', '2020-04-18 18:05:08', 'uploads/videos/5e99851820b23.mp4', NULL, '5e9b03cc607c2.png', 44, 1),
(579, 40, 'Al-Jathiyah', '2020-04-17 14:30:01', '2020-04-18 18:05:23', 'uploads/videos/5e9985292abf9.mp4', NULL, '5e9b04020723d.png', 45, 1),
(580, 40, 'Al-Ahqaf', '2020-04-17 14:30:18', '2020-04-18 18:05:38', 'uploads/videos/5e99853a1b116.mp4', NULL, '5e9b04297edfa.png', 46, 1),
(581, 40, 'Muhammad', '2020-04-17 14:30:37', '2020-04-18 18:05:55', 'uploads/videos/5e99854d4d192.mp4', NULL, '5e9b0445d838b.png', 47, 1),
(582, 40, 'Al-Fath', '2020-04-17 14:30:52', '2020-04-18 18:06:16', 'uploads/videos/5e99855cc0bc8.mp4', NULL, '5e9b045906fb2.png', 48, 1),
(583, 40, 'Al-Hujurat', '2020-04-17 14:31:08', '2020-04-18 18:06:30', 'uploads/videos/5e99856c2a63b.mp4', NULL, '5e9b046d99581.png', 49, 1),
(584, 40, 'Qaf', '2020-04-17 14:31:33', '2020-04-18 18:06:46', 'uploads/videos/5e998585b0585.mp4', NULL, '5e9b048295fcd.png', 50, 1),
(585, 40, 'Adh-Dhariyat', '2020-04-17 14:31:54', '2020-04-18 18:07:03', 'uploads/videos/5e998599f1798.mp4', NULL, '5e9b0496a6b90.png', 51, 1),
(586, 40, 'At-Tur', '2020-04-17 14:32:12', '2020-04-18 18:07:21', 'uploads/videos/5e9985ac1bd2c.mp4', NULL, '5e9b04ae6c97e.png', 52, 1),
(587, 40, 'An-Najm', '2020-04-17 14:32:30', '2020-04-18 18:00:30', 'uploads/videos/5e9985be35f8a.mp4', NULL, '5e9b07fedcc8a.png', 53, 1),
(588, 40, 'Al-Qamar', '2020-04-17 14:32:47', '2020-04-18 18:01:03', 'uploads/videos/5e9985cf45b71.mp4', NULL, '5e9b081f6d4c6.png', 54, 1),
(589, 40, 'Ar-Rahman', '2020-04-17 14:33:05', '2020-04-18 18:07:36', 'uploads/videos/5e9985e0f1086.mp4', NULL, '5e9b083b05454.png', 53, 1),
(590, 40, 'Al-Waqi\'ah', '2020-04-17 14:33:23', '2020-04-18 18:08:38', 'uploads/videos/5e9985f3ac8da.mp4', NULL, '5e9b0850c55d9.png', 56, 1),
(591, 40, 'Al-Hadeed', '2020-04-17 14:33:41', '2020-04-18 18:09:07', 'uploads/videos/5e998605569ef.mp4', NULL, '5e9b08674f579.png', 57, 1),
(592, 40, 'Al-Mujadilah', '2020-04-17 14:33:58', '2020-04-18 18:10:08', 'uploads/videos/5e99861672cc5.mp4', NULL, '5e9b087bb07d5.png', 58, 1),
(593, 40, 'Al-Hashr', '2020-04-17 14:34:18', '2020-04-18 18:03:00', 'uploads/videos/5e99862a3b322.mp4', NULL, '5e9b08943f758.png', 0, 1),
(594, 40, 'Al-Mumtahanah', '2020-04-17 14:34:38', '2020-04-18 18:03:22', 'uploads/videos/5e99863e100a7.mp4', NULL, '5e9b08aa177d9.png', 0, 1),
(595, 40, 'As-Saff', '2020-04-17 14:35:00', '2020-04-18 18:03:45', 'uploads/videos/5e9986549dfa1.mp4', NULL, '5e9b08c1b739f.png', 0, 1),
(596, 40, 'Al-Jumu\'ah', '2020-04-17 14:35:18', '2020-04-18 18:04:15', 'uploads/videos/5e998666d438b.mp4', NULL, '5e9b08df0ccf8.png', 0, 1),
(597, 40, 'Al-Munafiqun', '2020-04-17 14:35:39', '2020-04-18 18:04:54', 'uploads/videos/5e99867b34a23.mp4', NULL, '5e9b0906dff8c.png', 0, 1),
(598, 40, 'At-Taghabun', '2020-04-17 14:35:57', '2020-04-18 18:05:18', 'uploads/videos/5e99868d05586.mp4', NULL, '5e9b091eca7dd.png', 0, 1),
(599, 41, 'Al-Kafirun', '2020-04-17 14:43:38', '2020-04-18 01:13:17', 'uploads/videos/5e99885a73019.mp4', NULL, '5e9a083793c09.png', 0, 1),
(600, 41, 'An-Nasr', '2020-04-17 14:44:13', '2020-04-18 01:12:45', 'uploads/videos/5e99887ce91b4.mp4', NULL, '5e9a084e50b6b.png', 0, 1),
(601, 41, 'Al-Masad', '2020-04-17 14:46:47', '2020-04-18 01:12:06', 'uploads/videos/5e998917183b2.mp4', NULL, '5e9a08667cfbe.png', 0, 1),
(602, 41, 'Al-Ikhlas', '2020-04-17 14:48:31', '2020-04-18 01:11:32', 'uploads/videos/5e99897f5cc9a.mp4', NULL, '5e9a088ac329c.png', 0, 1),
(603, 41, 'Al-Falaq', '2020-04-17 14:49:22', '2020-04-18 01:10:46', 'uploads/videos/5e9989b203ee1.mp4', NULL, '5e9a089c5611e.png', 0, 1),
(604, 41, 'Al-Nas', '2020-04-17 14:50:40', '2020-04-18 01:10:09', 'uploads/videos/5e998a007cdba.mp4', NULL, '5e9a08b2ec3b8.png', 0, 1),
(609, 42, 'almaa almkhtalat belnagasah', '2020-04-17 15:49:53', '2020-04-17 18:02:06', 'uploads/videos/5e99b6dd78ea4.mp4', NULL, '5e99b6dd7b070.png', 0, 1),
(610, 42, 'anwa3 elnagasah', '2020-04-17 15:50:38', '2020-04-17 18:00:43', 'uploads/videos/5e99b68a231ea.mp4', NULL, '5e99b68a293fe.png', 0, 1),
(611, 42, 'ngasaat zarkalteor', '2020-04-17 15:52:04', '2020-04-17 17:59:24', 'uploads/videos/5e99b63bbec0e.mp4', NULL, '5e99b63bc0d89.png', 0, 1),
(612, 42, 'hokm altamashot bmesht alazm', '2020-04-17 15:53:02', '2020-04-17 17:58:14', 'uploads/videos/5e99b5f59efcd.mp4', NULL, '5e99b5f5a1b82.png', 0, 1),
(613, 42, 'almaa alfaed mn algosl', '2020-04-17 15:54:05', '2020-04-17 17:39:31', 'uploads/videos/5e99b1928f7b5.mp4', NULL, '5e99b192925af.png', 0, 1),
(614, 42, 'men mofsdat alodoa', '2020-04-17 15:55:12', '2020-04-17 17:37:58', 'uploads/videos/5e99b1364d3ee.mp4', NULL, '5e99b1364f70e.png', 0, 1),
(615, 42, 'dkhol al hamam bemoshaf', '2020-04-17 15:56:50', '2020-04-17 17:35:17', 'uploads/videos/5e99b0949440d.mp4', NULL, '5e99b09496f19.png', 0, 1),
(616, 42, 'alfark baen alhed wa alasthadah', '2020-04-17 15:57:50', '2020-04-17 17:34:28', 'uploads/videos/5e99b0643a407.mp4', NULL, '5e99b0643d24b.png', 0, 1),
(617, 42, 'altahor men alhed wa alnfas', '2020-04-17 15:58:36', '2020-04-17 17:31:31', 'uploads/videos/5e99afb31357e.mp4', NULL, '5e99afb316098.png', 0, 1),
(618, 42, 'ahkam alha2ed wa alnfsa2', '2020-04-17 15:59:23', '2020-04-17 17:30:42', 'uploads/videos/5e99af82517b7.mp4', NULL, '5e99af82539f4.png', 0, 1),
(619, 42, 'amor moshtahrah walakenaha la tasloh', '2020-04-17 16:00:07', '2020-04-17 17:29:57', 'uploads/videos/5e99af549f047.mp4', NULL, '5e99af54a1213.png', 0, 1),
(620, 42, 'amor tata3alak belhaml wa altaharah', '2020-04-17 16:03:02', '2020-04-17 17:28:44', 'uploads/videos/5e99af0bc25a0.mp4', NULL, '5e99af0bc4c51.png', 0, 1),
(621, 42, 'alhed bad sen alkhamsen', '2020-04-17 16:04:23', '2020-04-17 17:27:51', 'uploads/videos/5e99aed702671.mp4', NULL, '5e99aed70525d.png', 0, 1),
(622, 42, 'hokm alasraf fe al meah', '2020-04-17 16:05:01', '2020-04-17 17:26:00', 'uploads/videos/5e99ae683bf02.mp4', NULL, '5e99ae683eb18.png', 0, 1),
(623, 42, 'hokm altatahor bemaa zamzam', '2020-04-17 16:06:10', '2020-04-17 17:25:09', 'uploads/videos/5e99ae34b1d92.mp4', NULL, '5e99ae34b3ec2.png', 0, 1),
(624, 42, 'algosl men alganabah', '2020-04-17 16:07:21', '2020-04-17 17:23:31', 'uploads/videos/5e99add2b8c68.mp4', NULL, '5e99add2bb77b.png', 0, 1),
(625, 42, 'hokm akhtlat almalabes', '2020-04-17 16:08:07', '2020-04-17 17:21:43', 'uploads/videos/5e99ad6744f74.mp4', NULL, '5e99ad6746f6f.png', 0, 1),
(626, 42, 'alodoa fe alhamam', '2020-04-17 16:09:22', '2020-04-17 17:20:42', 'uploads/videos/5e99ad2a01d02.mp4', NULL, '5e99ad2a0601c.png', 0, 1),
(627, 42, 'hokm almaa almaghol almasdar', '2020-04-17 16:10:47', '2020-04-17 17:19:49', 'uploads/videos/5e99acf4f0656.mp4', NULL, '5e99acf4f2f4e.png', 0, 1),
(628, 42, 'hokm alsar aladame', '2020-04-17 16:11:33', '2020-04-17 17:19:03', 'uploads/videos/5e99acc73b4d0.mp4', NULL, '5e99acc73dda1.png', 0, 1),
(629, 42, 'altharah bemaa shorb menh alhanam', '2020-04-17 16:12:44', '2020-04-17 17:15:25', 'uploads/videos/5e99abecd2be7.mp4', NULL, '5e99abecd5ac6.png', 0, 1),
(630, 42, 'adab qadaa el hagah', '2020-04-17 16:13:25', '2020-04-17 17:13:15', 'uploads/videos/5e99ab6ab3b44.mp4', NULL, '5e99ab6ab687b.png', 0, 1),
(631, 42, 'hokm akl alasmak almomalaha', '2020-04-17 16:14:02', '2020-04-17 17:11:52', 'uploads/videos/5e99ab1816edc.mp4', NULL, '5e99ab1819be9.png', 0, 1),
(632, 42, 'hokm tarbeat alkelab', '2020-04-17 16:16:05', '2020-04-17 17:11:01', 'uploads/videos/5e99aae568027.mp4', NULL, '5e99aae56a5b5.png', 0, 1),
(633, 42, 'hokm akl alteor taghazat ala nagasat', '2020-04-17 16:17:17', '2020-04-17 17:10:20', 'uploads/videos/5e99aabbce740.mp4', NULL, '5e99aabbd1145.png', 0, 1),
(634, 35, 'Rabey Howa Allah', '2020-04-17 16:39:30', '2020-04-18 17:33:48', 'uploads/videos/5e99db809f019.mp4', NULL, '5e99db80a4645.png', 0, 1),
(635, 35, 'Tewshek el Ain', '2020-04-17 16:41:13', '2020-04-17 20:39:18', 'uploads/videos/5e99dbb63bb0f.mp4', NULL, '5e99dbb63f138.png', 0, 1),
(636, 35, 'Darb El Karm', '2020-04-17 16:43:28', '2020-04-17 20:39:57', 'uploads/videos/5e99dbdd1c4bc.mp4', NULL, '5e99dbdd1ea6a.png', 0, 1),
(637, 35, 'Ser Allah', '2020-04-17 16:47:14', '2020-04-17 20:40:56', 'uploads/videos/5e99dc17d9456.mp4', NULL, '5e99dc17db0bd.png', 0, 1);
INSERT INTO `contents` (`id`, `service_id`, `title`, `created_at`, `updated_at`, `video`, `content_text`, `image_preview`, `index`, `type`) VALUES
(638, 53, 'Syam Almohsnen', '2020-04-17 17:40:39', '2020-04-17 17:40:39', 'uploads/videos/5e99b1d7010fb.mp4', NULL, '5e99b1d702ce2.png', 0, 1),
(639, 53, 'Syam almostaghfren', '2020-04-17 17:41:46', '2020-04-17 17:41:46', 'uploads/videos/5e99b219ed8b2.mp4', NULL, '5e99b219ef5aa.png', 0, 1),
(640, 53, 'Syam Ramadan', '2020-04-17 17:43:35', '2020-04-17 17:43:35', 'uploads/videos/5e99b2867fe81.mp4', NULL, '5e99b286815ee.png', 0, 1),
(641, 53, 'Allahom Qarbna', '2020-04-17 17:46:45', '2020-04-17 17:46:45', 'uploads/videos/5e99b344ea6a7.mp4', NULL, '5e99b344ebcb7.png', 0, 1),
(642, 53, 'Ya Ghyath', '2020-04-17 17:47:57', '2020-04-17 17:47:57', 'uploads/videos/5e99b38d950ab.mp4', NULL, '5e99b38d96c9f.png', 0, 1),
(643, 53, 'Ya Aman Alkhaefen', '2020-04-17 17:49:28', '2020-04-17 17:49:28', 'uploads/videos/5e99b3e87ad06.mp4', NULL, '5e99b3e87bee7.png', 0, 1),
(644, 53, 'La toakhzna', '2020-04-17 17:50:26', '2020-04-17 17:50:26', 'uploads/videos/5e99b421f0d98.mp4', NULL, '5e99b421f2f1e.png', 0, 1),
(645, 53, 'Mwafqat Alabrar', '2020-04-17 17:51:06', '2020-04-17 17:51:06', 'uploads/videos/5e99b4497cb95.mp4', NULL, '5e99b4497e561.png', 0, 1),
(646, 53, 'Sabel Alkhirat', '2020-04-17 17:51:43', '2020-04-17 17:51:43', 'uploads/videos/5e99b46e9b6fe.mp4', NULL, '5e99b46e9d1c1.png', 0, 1),
(647, 53, 'Abwab Fadlek', '2020-04-17 17:52:19', '2020-04-17 17:52:19', 'uploads/videos/5e99b49359fe6.mp4', NULL, '5e99b4935b62d.png', 0, 1),
(648, 53, 'Taqwa Alqloub', '2020-04-17 17:52:47', '2020-04-17 17:52:47', 'uploads/videos/5e99b4af52478.mp4', NULL, '5e99b4af53614.png', 0, 1),
(649, 53, 'Ya Arham Alrahmen', '2020-04-17 17:53:25', '2020-04-17 17:53:25', 'uploads/videos/5e99b4d57b001.mp4', NULL, '5e99b4d57cd51.png', 0, 1),
(650, 34, 'Agban Le Amr El Moamen', '2020-04-17 20:21:08', '2020-04-17 20:21:08', 'uploads/videos/5e99d7740827b.mp4', NULL, '5e99d7740abf6.png', 0, 1),
(651, 34, 'La to2zo Ebad Allah', '2020-04-17 20:21:42', '2020-04-17 20:21:42', 'uploads/videos/5e99d79604205.mp4', NULL, '5e99d79606706.png', 0, 1),
(652, 34, 'Man Sla Aley Salatan', '2020-04-17 20:22:11', '2020-04-17 20:22:11', 'uploads/videos/5e99d7b2bf451.mp4', NULL, '5e99d7b2c0a5a.png', 0, 1),
(653, 34, 'Kalemtan Khafeftan Ala El Lesan', '2020-04-17 20:22:48', '2020-04-17 20:22:48', 'uploads/videos/5e99d7d81b7ef.mp4', NULL, '5e99d7d81dcc1.png', 0, 1),
(654, 34, 'Man Qal Estaghfer Allah El Azem', '2020-04-17 20:23:20', '2020-04-17 20:23:20', 'uploads/videos/5e99d7f86b9e9.mp4', NULL, '5e99d7f86d4a0.png', 0, 1),
(655, 34, 'Saykhreg Qawm Ahdath Ahedaa', '2020-04-17 20:24:05', '2020-04-17 20:24:05', 'uploads/videos/5e99d824a1fde.mp4', NULL, '5e99d824a5092.png', 0, 1),
(656, 34, 'Ateq Allah Haythoma Kont', '2020-04-17 20:24:35', '2020-04-17 20:24:35', 'uploads/videos/5e99d84338fae.mp4', NULL, '5e99d8433aacb.png', 0, 1),
(657, 34, 'Sabek EL Mfredon', '2020-04-17 20:25:18', '2020-04-17 20:25:18', 'uploads/videos/5e99d86e1a17e.mp4', NULL, '5e99d86e1baa6.png', 0, 1),
(658, 34, 'Toba Leman Malek Nafsoho', '2020-04-17 20:25:44', '2020-04-17 20:25:44', 'uploads/videos/5e99d887ce4a4.mp4', NULL, '5e99d887cf81e.png', 0, 1),
(659, 34, 'La yelej ElNar Ragol Baka Men Khashyet Ellah', '2020-04-17 20:26:09', '2020-04-17 20:26:09', 'uploads/videos/5e99d8a11b18a.mp4', NULL, '5e99d8a11c207.png', 0, 1),
(660, 34, 'Astaghfer Allah', '2020-04-17 20:26:44', '2020-04-17 20:26:44', 'uploads/videos/5e99d8c3b37cc.mp4', NULL, '5e99d8c3b5171.png', 0, 1),
(661, 34, 'La3en Allah AlRashey wa El Mortashey', '2020-04-17 20:27:15', '2020-04-17 20:27:15', 'uploads/videos/5e99d8e2a92de.mp4', NULL, '5e99d8e2ab599.png', 0, 1),
(662, 34, 'Man Halef Ala Yamen', '2020-04-17 20:27:40', '2020-04-17 20:27:40', 'uploads/videos/5e99d8fc7e7d2.mp4', NULL, '5e99d8fc7f819.png', 0, 1),
(663, 34, 'Wa Allah Ma EL Donia Fe El Akhera', '2020-04-17 20:28:09', '2020-04-17 20:28:09', 'uploads/videos/5e99d919626bf.mp4', NULL, '5e99d9196424b.png', 0, 1),
(664, 34, 'Yadkhol EL Janat Men Omtey', '2020-04-17 20:28:43', '2020-04-17 20:28:43', 'uploads/videos/5e99d93b14643.mp4', NULL, '5e99d93b16ae8.png', 0, 1),
(665, 34, 'Alykom Be Qeyam Alyel', '2020-04-17 20:29:17', '2020-04-17 20:29:17', 'uploads/videos/5e99d95d81a94.mp4', NULL, '5e99d95d83f2b.png', 0, 1),
(666, 34, 'ElSadka Ala El Mesken', '2020-04-17 20:29:43', '2020-04-17 20:29:43', 'uploads/videos/5e99d976ae57b.mp4', NULL, '5e99d976af789.png', 0, 1),
(667, 34, 'Esbagh El Wado2', '2020-04-17 20:30:21', '2020-04-17 20:30:21', 'uploads/videos/5e99d99cb3e7f.mp4', NULL, '5e99d99cb5dc3.png', 0, 1),
(668, 34, 'Man Adrak Abaweyh', '2020-04-17 20:30:48', '2020-04-17 20:30:48', 'uploads/videos/5e99d9b84ab38.mp4', NULL, '5e99d9b84c053.png', 0, 1),
(669, 35, 'Seka Tanya', '2020-04-17 20:42:25', '2020-04-17 20:43:49', 'uploads/videos/5e99dc718c378.mp4', NULL, '5e99dc718e53a.png', 0, 1),
(670, 35, 'Farhet Ensan', '2020-04-17 20:43:08', '2020-04-17 20:43:08', 'uploads/videos/5e99dc9bed7d2.mp4', NULL, '5e99dc9bef2d3.png', 0, 1),
(671, 61, 'Sourat Ibrahim', '2020-04-17 20:46:56', '2020-04-17 21:12:46', 'uploads/videos/5e99e38e31fbf.mp4', NULL, '5e99e38e3bafc.png', 0, 1),
(672, 61, 'Sourat EL Kahf', '2020-04-17 20:51:21', '2020-04-17 21:13:37', 'uploads/videos/5e99e3c09f953.mp4', NULL, '5e99e3c0a6718.png', 0, 1),
(673, 61, 'Sourat EL Kahf', '2020-04-17 20:52:11', '2020-04-17 21:14:43', 'uploads/videos/5e99e40385c5e.mp4', NULL, '5e99e4038a327.png', 0, 1),
(674, 61, 'Sourt Q', '2020-04-17 20:52:54', '2020-04-17 21:16:07', 'uploads/videos/5e99e45703eb1.mp4', NULL, '5e99e45706773.png', 0, 1),
(675, 61, 'Sourt Q', '2020-04-17 20:53:51', '2020-04-17 21:17:03', 'uploads/videos/5e99e48ebf529.mp4', NULL, '5e99e48ec26bc.png', 0, 1),
(676, 61, 'Sourat Q', '2020-04-17 20:55:21', '2020-04-17 21:18:42', 'uploads/videos/5e99e4f1c7eb8.mp4', NULL, '5e99e4f1cb999.png', 0, 1),
(678, 54, 'Yom EL Shak', '2020-04-17 22:54:57', '2020-04-17 22:54:57', 'uploads/videos/5e99fb80ce1d1.mp4', NULL, '5e99fb80cf95d.png', 0, 1),
(679, 54, 'Nahey An Yom EL SHak', '2020-04-17 22:56:30', '2020-04-17 22:56:30', 'uploads/videos/5e99fbde10435.mp4', NULL, '5e99fbde122ab.png', 0, 1),
(680, 54, 'ATakom Shar Ramadan', '2020-04-17 22:57:36', '2020-04-17 22:57:36', 'uploads/videos/5e99fc1fb4a7d.mp4', NULL, '5e99fc1fb7eef.png', 0, 1),
(681, 54, 'Eza Kan Awel lylat men shaer Ramadan', '2020-04-17 22:59:34', '2020-04-17 22:59:34', 'uploads/videos/5e99fc96853fc.mp4', NULL, '5e99fc96897ad.png', 0, 1),
(686, 62, 'Argoh', '2020-04-17 23:22:40', '2020-04-17 23:22:40', 'uploads/videos/5e9a02008116c.mp4', NULL, '5e9a0200843fb.png', 0, 1),
(688, 62, 'Al Kader Al Moktader', '2020-04-17 23:25:19', '2020-04-17 23:25:19', 'uploads/videos/5e9a029eb9126.mp4', NULL, '5e9a029ebb1dd.png', 0, 1),
(689, 62, 'Alem Al Ser', '2020-04-17 23:27:33', '2020-04-17 23:27:33', 'uploads/videos/5e9a0324bcd29.mp4', NULL, '5e9a0324c0d26.png', 0, 1),
(690, 62, 'Moysr Al Qawn', '2020-04-17 23:28:56', '2020-04-17 23:30:40', 'uploads/videos/5e9a03e067369.mp4', NULL, '5e9a03e069806.png', 0, 1),
(691, 62, 'Haneny', '2020-04-17 23:36:03', '2020-04-17 23:36:03', 'uploads/videos/5e9a0522af515.mp4', NULL, '5e9a0522b27eb.png', 0, 1),
(693, 62, 'Al Halem', '2020-04-17 23:48:02', '2020-04-17 23:48:02', 'uploads/videos/5e9a07f1e67c7.mp4', NULL, '5e9a07f1e91ea.png', 0, 1),
(694, 62, 'Sabron', '2020-04-17 23:50:14', '2020-04-17 23:50:14', 'uploads/videos/5e9a0875d7c6d.mp4', NULL, '5e9a0875dab69.png', 0, 1),
(695, 62, 'Al Khaleq Al Bary', '2020-04-17 23:51:03', '2020-04-17 23:51:03', 'uploads/videos/5e9a08a6aab99.mp4', NULL, '5e9a08a6acaeb.png', 0, 1),
(696, 62, 'Mokader Al Khalq', '2020-04-17 23:52:30', '2020-04-17 23:52:30', 'uploads/videos/5e9a08fe49389.mp4', NULL, '5e9a08fe4bd61.png', 0, 1),
(697, 62, 'La Sahrek Lah', '2020-04-17 23:54:10', '2020-04-17 23:54:10', 'uploads/videos/5e9a0961dcfcb.mp4', NULL, '5e9a0961debd3.png', 0, 1),
(698, 62, 'Al Haq Al Adl', '2020-04-17 23:56:19', '2020-04-17 23:56:19', 'uploads/videos/5e9a09e331a9f.mp4', NULL, '5e9a09e3335ea.png', 0, 1),
(699, 62, 'Malek_Qodos', '2020-04-17 23:58:02', '2020-04-17 23:58:02', 'uploads/videos/5e9a0a4a3d115.mp4', NULL, '5e9a0a4a3f7d0.png', 0, 1),
(707, 36, 'Allahoma Anta Ahq man Zoker', '2020-04-18 00:45:39', '2020-04-18 00:45:39', 'uploads/videos/5e9a15732e3e3.mp4', NULL, '5e9a157333cf3.png', 0, 1),
(708, 36, 'YA Man khade3t le3azmteh el reqab', '2020-04-18 00:47:54', '2020-04-18 00:47:54', 'uploads/videos/5e9a15fa5b94c.mp4', NULL, '5e9a15fa5f0f3.png', 0, 1),
(709, 36, 'Allahoma Barek fe Asma3ena', '2020-04-18 00:49:42', '2020-04-18 00:49:42', 'uploads/videos/5e9a16661c116.mp4', NULL, '5e9a16661f97f.png', 0, 1),
(710, 36, 'Allahoma Alf Bayen Qelobna', '2020-04-18 00:51:41', '2020-04-18 00:51:41', 'uploads/videos/5e9a16dceeff7.mp4', NULL, '5e9a16dcf0fd1.png', 0, 1),
(711, 36, 'Allahoma Afena', '2020-04-18 00:55:55', '2020-04-18 00:55:55', 'uploads/videos/5e9a17daabe74.mp4', NULL, '5e9a17daadbf7.png', 0, 1),
(712, 36, 'Elafwo we el Maghfera', '2020-04-18 00:59:17', '2020-04-18 00:59:17', 'uploads/videos/5e9a18a560b51.mp4', NULL, '5e9a18a562bb4.png', 0, 1),
(713, 38, 'Elyek Ya Man Howa El Alam 1', '2020-04-18 02:04:06', '2020-04-18 02:04:06', 'uploads/videos/5e9a27d5c4534.mp4', NULL, '5e9a27d5c85bc.png', 0, 1),
(714, 38, 'Elyek Ya Man Howa El Alam 2', '2020-04-18 02:05:17', '2020-04-18 02:05:17', 'uploads/videos/5e9a281d51e04.mp4', NULL, '5e9a281d544be.png', 0, 1),
(715, 38, 'Elyek Ya Man Howa El Alam 3', '2020-04-18 02:06:45', '2020-04-18 02:06:45', 'uploads/videos/5e9a28751204c.mp4', NULL, '5e9a287517931.png', 0, 1),
(716, 38, 'Elyek Ya Man Howa El Alam 4', '2020-04-18 02:08:40', '2020-04-18 02:08:40', 'uploads/videos/5e9a28e7e6bbc.mp4', NULL, '5e9a28e7ed249.png', 0, 1),
(717, 38, 'Belmostafa', '2020-04-18 02:09:51', '2020-04-18 02:09:51', 'uploads/videos/5e9a292f8bb18.mp4', NULL, '5e9a292f904e0.png', 0, 1),
(718, 38, 'Afwak Wa Redak', '2020-04-18 02:10:52', '2020-04-18 02:10:52', 'uploads/videos/5e9a296c58cf2.mp4', NULL, '5e9a296c5c170.png', 0, 1),
(719, 52, 'Asbahna Wa Asbah EL Molk lelah', '2020-04-18 03:44:02', '2020-04-18 03:44:02', 'uploads/videos/5e9a3f42363d5.mp4', NULL, '5e9a3f423bc7d.png', 0, 1),
(720, 52, 'Asbahna Ala Fetrat El Islam', '2020-04-18 03:46:12', '2020-04-18 03:46:12', 'uploads/videos/5e9a3fc3cadb8.mp4', NULL, '5e9a3fc3cd849.png', 0, 1),
(721, 52, 'Allahoma Bek Asbahna', '2020-04-18 03:47:06', '2020-04-18 03:47:06', 'uploads/videos/5e9a3ffa07615.mp4', NULL, '5e9a3ffa08e45.png', 0, 1),
(722, 52, 'Amsina wa Amsa El Molk Lelah', '2020-04-18 03:49:06', '2020-04-18 03:49:06', 'uploads/videos/5e9a407221afc.mp4', NULL, '5e9a407226053.png', 0, 1),
(723, 52, 'Amsina Ala Fetrat El Islam', '2020-04-18 03:52:56', '2020-04-18 03:52:56', 'uploads/videos/5e9a4158721b6.mp4', NULL, '5e9a415874fe0.png', 0, 1),
(724, 52, 'Allahoma Beka Amsina', '2020-04-18 03:55:00', '2020-04-18 03:55:00', 'uploads/videos/5e9a41d3cd969.mp4', NULL, '5e9a41d3cfaf0.png', 0, 1),
(725, 51, 'Fadael El Haj', '2020-04-18 04:53:47', '2020-04-18 04:53:47', 'uploads/videos/5e9a4f9a5a025.mp4', NULL, '5e9a4f9a5fd83.png', 0, 1),
(726, 51, 'raey El Din fe el Esta3a lelhaj', '2020-04-18 04:54:22', '2020-04-18 05:17:33', '', NULL, NULL, 0, 1),
(728, 51, 'Ayohma El haj Am El Zawag', '2020-04-18 04:59:48', '2020-04-18 04:59:48', 'uploads/videos/5e9a51048fa26.mp4', NULL, '5e9a510496a65.png', 0, 1),
(729, 51, 'El Dayen Fe El Haj', '2020-04-18 05:02:13', '2020-04-18 05:02:13', 'uploads/videos/5e9a51944ee5e.mp4', NULL, '5e9a5194566a2.png', 0, 1),
(730, 51, 'El Haj Am Afaal El Khyer El Okhra', '2020-04-18 05:05:23', '2020-04-18 05:05:23', 'uploads/videos/5e9a525376aab.mp4', NULL, '5e9a52537afd1.png', 0, 1),
(731, 51, 'Al Talfoz be Al Nyato fe Al Salah', '2020-04-18 05:08:18', '2020-04-18 05:08:18', 'uploads/videos/5e9a53026a8c5.mp4', NULL, '5e9a530272197.png', 0, 1),
(733, 46, 'Wa Eza Sarfna Alyek', '2020-04-18 05:33:29', '2020-04-18 05:33:29', 'uploads/videos/5e9a58e940bf3.mp4', NULL, '5e9a58e947d4e.png', 0, 1),
(734, 46, 'Qol Awohey Alyek', '2020-04-18 05:37:29', '2020-04-18 05:37:29', 'uploads/videos/5e9a59d8bc983.mp4', NULL, '5e9a59d8c2a43.png', 0, 1),
(735, 46, 'Ya Ayoha ElNAS Qad Ga2etkom Mawo3eza', '2020-04-18 05:39:15', '2020-04-18 05:39:15', 'uploads/videos/5e9a5a429666d.mp4', NULL, '5e9a5a4298625.png', 0, 1),
(736, 46, 'Eza Zolzelt Alard Zelzalaha', '2020-04-18 05:42:49', '2020-04-18 05:42:49', 'uploads/videos/5e9a5b195ae9b.mp4', NULL, '5e9a5b195ee13.png', 0, 1),
(737, 46, 'Wa Nonzel Men El quran Ma Howa Shefa', '2020-04-18 05:44:06', '2020-04-18 05:44:06', 'uploads/videos/5e9a5b65ceca5.mp4', NULL, '5e9a5b65d0216.png', 0, 1),
(738, 46, 'Besm Allah Arqek', '2020-04-18 05:45:41', '2020-04-18 14:24:31', 'uploads/videos/5e9ad55ed72d2.mp4', NULL, '5e9ad55eda872.png', 0, 1),
(739, 49, 'Man Ashado El Nas Zolman', '2020-04-18 05:54:45', '2020-04-18 05:54:45', 'uploads/videos/5e9a5de566ce4.mp4', NULL, '5e9a5de567d07.png', 0, 1),
(740, 49, 'Hal Bosher Eisa Alyeh El Slama Qawomoh', '2020-04-18 05:56:08', '2020-04-18 05:56:08', 'uploads/videos/5e9a5e387b335.mp4', NULL, '5e9a5e387cb0d.png', 0, 1),
(741, 49, 'Kayef Yakon El Monafeqon moamenon wa Kaferon', '2020-04-18 05:57:33', '2020-04-18 05:57:33', 'uploads/videos/5e9a5e8d17e4b.mp4', NULL, '5e9a5e8d19cc5.png', 0, 1),
(742, 49, 'Al Noor Alazey Anzalaho Allah Ta3ala', '2020-04-18 05:58:24', '2020-04-18 05:58:24', 'uploads/videos/5e9a5ebfb6fd5.mp4', NULL, '5e9a5ebfb7b1d.png', 0, 1),
(743, 49, 'Man Arad An Yrgea Fe AlYamen', '2020-04-18 05:59:58', '2020-04-18 05:59:58', 'uploads/videos/5e9a5f1e809d3.mp4', NULL, '5e9a5f1e82c97.png', 0, 1),
(744, 49, 'Ma Maana Tafawet, Fetor , Kortin,Khaseaa', '2020-04-18 06:01:39', '2020-04-18 06:01:39', 'uploads/videos/5e9a5f826cf68.mp4', NULL, '5e9a5f8270b0c.png', 0, 1),
(745, 59, 'Sourat Yones Ayah 73', '2020-04-18 06:24:38', '2020-04-18 06:56:36', 'uploads/videos/5e9a6be4737be.mp4', NULL, '5e9a6be476595.png', 0, 1),
(746, 59, 'Sourat Yones Ayah 74', '2020-04-18 06:25:11', '2020-04-18 06:57:16', 'uploads/videos/5e9a65076d236.mp4', NULL, '5e9a65076e60a.png', 0, 1),
(747, 59, 'Sourat Yones Ayah 76', '2020-04-18 06:25:53', '2020-04-18 06:57:47', 'uploads/videos/5e9a65318053e.mp4', NULL, '5e9a653181ad3.png', 0, 1),
(748, 59, 'Sourat Yones Ayah 78', '2020-04-18 06:26:54', '2020-04-18 06:58:23', 'uploads/videos/5e9a656defde7.mp4', NULL, '5e9a656df1429.png', 0, 1),
(749, 59, 'Sourat Yones Ayah 81', '2020-04-18 06:27:53', '2020-04-18 06:58:47', 'uploads/videos/5e9a65a8ba022.mp4', NULL, '5e9a65a8bb690.png', 0, 1),
(750, 59, 'Sourat Yones Ayah 83', '2020-04-18 06:28:39', '2020-04-18 06:59:13', 'uploads/videos/5e9a65d770760.mp4', NULL, '5e9a65d7725bf.png', 0, 1),
(751, 63, 'Sourat Yones Ayah 73', '2020-04-18 06:30:54', '2020-04-18 07:01:44', 'uploads/videos/5e9a6d978645f.mp4', NULL, '5e9a6d978acf6.png', 0, 1),
(752, 63, 'Sourat Yones Ayah 74', '2020-04-18 06:31:28', '2020-04-18 07:02:16', 'uploads/videos/5e9a667fc3506.mp4', NULL, '5e9a667fc7563.png', 0, 1),
(753, 63, 'Sourat Yones Ayah 76', '2020-04-18 06:32:07', '2020-04-18 07:03:00', 'uploads/videos/5e9a66a6f0a93.mp4', NULL, '5e9a66a6f1b7f.png', 0, 1),
(754, 63, 'Sourat Yones Ayah 78', '2020-04-18 06:32:52', '2020-04-18 07:03:26', 'uploads/videos/5e9a66d46a8a5.mp4', NULL, '5e9a66d46c6ef.png', 0, 1),
(755, 63, 'Sourat Yones Ayah 81', '2020-04-18 06:33:42', '2020-04-18 07:03:52', 'uploads/videos/5e9a6705c7117.mp4', NULL, '5e9a6705c8b51.png', 0, 1),
(756, 63, 'Sourat Yones Ayah 83', '2020-04-18 06:34:29', '2020-04-18 07:04:16', 'uploads/videos/5e9a6735031ed.mp4', NULL, '5e9a673505109.png', 0, 1),
(757, 60, 'Sourat _El_Bakrah Ayah 2', '2020-04-18 07:11:00', '2020-04-18 07:11:00', 'uploads/videos/5e9a6fc4322f2.mp4', NULL, '5e9a6fc4335cd.png', 0, 1),
(758, 60, 'Sourat _El_Bakrah Ayah 2', '2020-04-18 07:11:32', '2020-04-18 07:11:32', 'uploads/videos/5e9a6fe3c4dd6.mp4', NULL, '5e9a6fe3c55db.png', 0, 1),
(759, 60, 'Sourat _El_Bakrah Ayah 3', '2020-04-18 07:12:54', '2020-04-18 07:12:54', 'uploads/videos/5e9a7035c400e.mp4', NULL, '5e9a7035c6650.png', 0, 1),
(760, 60, 'Sourat _El_Bakrah Ayah 4', '2020-04-18 07:13:49', '2020-04-18 07:13:49', 'uploads/videos/5e9a706d557e4.mp4', NULL, '5e9a706d57128.png', 0, 1),
(761, 60, 'Sourat _El_Bakrah Ayah 5', '2020-04-18 07:14:41', '2020-04-18 07:14:41', 'uploads/videos/5e9a70a176b5c.mp4', NULL, '5e9a70a177a32.png', 0, 1),
(762, 60, 'Sourat _El_Bakrah Ayah 6', '2020-04-18 07:15:40', '2020-04-18 07:15:40', 'uploads/videos/5e9a70dc82e3d.mp4', NULL, '5e9a70dc8451d.png', 0, 1),
(763, 58, 'Sourat El Kafron', '2020-04-18 13:04:57', '2020-04-18 14:21:03', 'uploads/videos/5e9ac2b93a6bf.mp4', NULL, '5e9ac2b94398c.png', 109, 1),
(764, 58, 'Sourat EL Nasr', '2020-04-18 13:09:42', '2020-04-18 14:20:52', 'uploads/videos/5e9ac3d5cad6f.mp4', NULL, '5e9ac3d5d089e.png', 110, 1),
(765, 58, 'Sourat El Masad', '2020-04-18 13:11:23', '2020-04-18 14:20:31', 'uploads/videos/5e9ac43b8cce0.mp4', NULL, '5e9ac43b91b86.png', 111, 1),
(766, 58, 'Sourat EL Ikhlas', '2020-04-18 13:18:15', '2020-04-18 14:20:19', 'uploads/videos/5e9ac5d725686.mp4', NULL, '5e9ac5d72b554.png', 112, 1),
(767, 58, 'Sourat Al Falaq', '2020-04-18 13:24:15', '2020-04-18 14:18:12', 'uploads/videos/5e9ac73f8b015.mp4', NULL, '5e9ac73f8e376.png', 113, 1),
(769, 58, 'Sourat ALNAS', '2020-04-18 14:09:45', '2020-04-18 14:16:08', 'uploads/videos/5e9ad1e92d68c.mp4', NULL, '5e9ad1e931c78.png', 114, 1),
(770, 45, 'El Mawsod Beyaom el Shak', '2020-04-18 15:17:40', '2020-04-18 15:17:40', 'uploads/videos/5e9ae1d399929.mp4', NULL, '5e9ae1d39e58f.png', NULL, 1),
(771, 45, 'Fadl Syeam Ragab we Shaaban', '2020-04-18 15:20:22', '2020-04-18 15:20:22', 'uploads/videos/5e9ae2762a93f.mp4', NULL, '5e9ae2762e3f4.png', NULL, 1),
(772, 45, 'Lemaza Someya Shaer Ramadan Behaza El Asm', '2020-04-18 15:24:12', '2020-04-18 15:24:12', 'uploads/videos/5e9ae35c1cb2d.mp4', NULL, '5e9ae35c20d4f.png', NULL, 1),
(773, 45, 'Seyam Awel Ayam Men Ragab', '2020-04-18 15:26:58', '2020-04-18 15:26:58', 'uploads/videos/5e9ae40208f19.mp4', NULL, '5e9ae4020b420.png', NULL, 1),
(774, 45, 'Somo Le Ro2etahey', '2020-04-18 15:29:46', '2020-04-18 15:29:46', 'uploads/videos/5e9ae4aa5bd75.mp4', NULL, '5e9ae4aa5e05e.png', NULL, 1),
(775, 45, 'Wasf Shahr Regab Be El Asam', '2020-04-18 15:32:11', '2020-04-18 15:32:11', 'uploads/videos/5e9ae53addfcd.mp4', NULL, '5e9ae53ae01c9.png', NULL, 1),
(776, 57, 'Gharedey Ya roh', '2020-04-18 15:34:48', '2020-04-18 15:34:48', 'uploads/videos/5e9ae5d8398e7.mp4', NULL, '5e9ae5d83bbc4.png', NULL, 1),
(777, 57, 'Ad Shaer el Khyer Ad', '2020-04-18 15:35:42', '2020-04-18 15:35:42', 'uploads/videos/5e9ae60e25119.mp4', NULL, '5e9ae60e25e0e.png', NULL, 1),
(778, 57, 'Ramadan EL Tawba', '2020-04-18 15:40:20', '2020-04-18 15:40:20', 'uploads/videos/5e9ae72471820.mp4', NULL, '5e9ae7247a6e3.png', NULL, 1),
(779, 57, 'Atter Syamak', '2020-04-18 15:45:49', '2020-04-18 15:45:49', 'uploads/videos/5e9ae86d66922.mp4', NULL, '5e9ae86d714e2.png', NULL, 1),
(780, 57, 'Moushat AlTaraweh', '2020-04-18 15:49:22', '2020-04-18 15:49:22', 'uploads/videos/5e9ae94235a29.mp4', NULL, '5e9ae9423d111.png', NULL, 1),
(781, 57, 'Laylt Alqadr', '2020-04-18 15:50:02', '2020-04-18 15:50:02', 'uploads/videos/5e9ae96a34d9f.mp4', NULL, '5e9ae96a35c94.png', NULL, 1),
(784, 37, 'Wa Qol Rabey Anzelney Monzalan Mobarkan', '2020-04-18 16:12:03', '2020-04-18 16:12:03', 'uploads/videos/5e9aee935f699.mp4', NULL, '5e9aee93615e2.png', NULL, 1),
(785, 37, 'wa Ebad El Rahman', '2020-04-18 16:15:50', '2020-04-18 16:15:50', 'uploads/videos/5e9aef7644046.mp4', NULL, '5e9aef7645ea7.png', NULL, 1),
(787, 37, 'Rabena Wasaet kol She2', '2020-04-18 16:23:22', '2020-04-18 16:37:34', 'uploads/videos/5e9af48e546d2.mp4', NULL, '5e9af48e58803.png', 0, 1),
(789, 37, 'Qal Rabey Awz3ney An Ashkor Nematak', '2020-04-18 16:31:37', '2020-04-18 16:31:37', 'uploads/videos/5e9af328ebf52.mp4', NULL, '5e9af328ed5bd.png', NULL, 1),
(790, 37, 'Rabena Alyek Taklna', '2020-04-18 16:32:30', '2020-04-18 16:32:30', 'uploads/videos/5e9af35e2e6c1.mp4', NULL, '5e9af35e2fda1.png', NULL, 1),
(791, 37, 'Wa Ez Qal Ibrahim', '2020-04-18 16:33:39', '2020-04-18 16:33:39', 'uploads/videos/5e9af3a351faf.mp4', NULL, '5e9af3a353dc8.png', NULL, 1),
(792, 48, 'Allah', '2020-04-18 16:46:22', '2020-04-18 16:46:22', 'uploads/videos/5e9af69e00842.jpg', NULL, NULL, NULL, 3),
(793, 48, 'Alrahman - Alrahem', '2020-04-18 16:47:43', '2020-04-18 16:47:43', 'uploads/videos/5e9af6efde01d.jpg', NULL, NULL, NULL, 3),
(794, 48, 'Alsalam - Moamen', '2020-04-18 16:48:11', '2020-04-18 16:48:11', 'uploads/videos/5e9af70be2408.jpg', NULL, NULL, NULL, 3),
(795, 48, 'Almohaimen - Al Azez', '2020-04-18 16:49:05', '2020-04-18 16:49:05', 'uploads/videos/5e9af741cd5db.jpg', NULL, NULL, NULL, 3),
(796, 48, 'Algabar - Almotakaber', '2020-04-18 16:49:39', '2020-04-18 16:49:39', 'uploads/videos/5e9af76303550.jpg', NULL, NULL, NULL, 3),
(797, 65, 'Coronavirus Prevention (Covid-19)', '2020-04-18 17:09:14', '2020-04-18 17:09:14', NULL, '<p>Be sure to follow the update on the Covid-19 outbreak, on the World Health Organization website and through local and national public health authorities. While Covid-19 infection is still mainly in China, there are some hotspots in other countries. Most individuals who develop the infection feel mild symptoms and recover, but the symptoms may appear more severe in others. Take care to protect your health and protect others with the following measures:​</p>', NULL, 1, 4),
(798, 65, 'Wash hands regularly', '2020-04-18 17:10:28', '2020-04-18 17:10:28', NULL, '<p>Cleaning your hands with soap and water or rubbing them with an alcohol disinfectant will kill the viruses that may be on your hands.</p>', NULL, 2, 4),
(799, 48, 'Al khalek - Al Bary', '2020-04-18 17:31:54', '2020-04-18 17:31:54', 'uploads/videos/5e9b014a68d82.jpg', NULL, NULL, NULL, 3),
(800, 66, 'heklo', '2020-04-19 13:03:25', '2020-04-19 13:11:01', 'uploads/videos/5e9c6a0562a38.mp3', NULL, '5e9c69e5b8113.png', NULL, 2),
(801, 66, 'sdf', '2020-04-19 13:11:44', '2020-04-19 13:12:03', 'uploads/videos/5e9c6a300178b.mp3', NULL, '5e9c6a4356633.png', NULL, 2);

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
(2, 'Arabic', '2020-03-22 02:23:12', '2020-03-22 02:23:12', 'ar', 1),
(4, 'Urdu', '2020-04-18 14:32:05', '2020-04-18 14:32:05', 'ur', 0);

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
(229, '2020_04_16_194555_add_flag_to_setting', 15),
(230, '2020_04_17_153843_add_index_to_videos_table', 16),
(231, '2020_04_17_140838_add_slider_to_post', 17),
(232, '2020_04_18_101600_change_index_in_contents_table', 18),
(233, '2020_04_18_102316_add_urdu_to_lang', 18),
(234, '2020_04_21_104125_add_stc_to_operator', 19),
(235, '2018_12_09_093056_create_msisdns_table', 20),
(236, '2018_12_09_093056_create_notify_table', 20),
(237, '2019_08_27_113159_add_column_to_msisdens', 20),
(238, '2020_04_23_114128_add_ooredoo_operator', 21),
(239, '2020_04_23_115001_create_tim_wes_table', 21);

-- --------------------------------------------------------

--
-- Table structure for table `msisdns`
--

CREATE TABLE `msisdns` (
  `id` int(11) NOT NULL,
  `msisdn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_id` int(11) NOT NULL COMMENT '8=zain , 50 ooredo , 51= viva',
  `ooredoo_notify_id` int(10) UNSIGNED DEFAULT NULL,
  `ads_ur_id` int(10) UNSIGNED DEFAULT NULL,
  `transaction_id` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_company` enum('headway','intech','DF') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_status` tinyint(1) DEFAULT NULL COMMENT '0=not active  , 1 active ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pincode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_id` tinyint(4) NOT NULL COMMENT '1= Postpaid , 2 = Prepaid  , 3 = Data/blacklisted/Non viva numbers',
  `subscribe_date` date NOT NULL,
  `renew_date` date NOT NULL,
  `type` enum('wifi','HE','SMS') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'wifi' COMMENT 'wifi= wifi , HE = Header enriched,SMS = SMS',
  `validityDays` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `msisdns`
--

INSERT INTO `msisdns` (`id`, `msisdn`, `operator_id`, `ooredoo_notify_id`, `ads_ur_id`, `transaction_id`, `ad_company`, `final_status`, `created_at`, `updated_at`, `pincode`, `plan_id`, `subscribe_date`, `renew_date`, `type`, `validityDays`, `plan`) VALUES
(1, '96551747685', 11, 1, NULL, NULL, 'DF', 1, '2020-04-22 07:26:16', '2020-04-22 07:26:16', NULL, 2, '2020-04-22', '2020-04-23', 'wifi', NULL, 'd'),
(2, '96555410856', 11, 3, NULL, NULL, 'DF', 1, '2020-04-22 09:33:52', '2020-04-22 09:56:02', NULL, 2, '2020-04-22', '2020-04-23', 'wifi', NULL, 'd');

-- --------------------------------------------------------

--
-- Table structure for table `notify`
--

CREATE TABLE `notify` (
  `id` int(10) UNSIGNED NOT NULL,
  `complete_url` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msisdn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notify`
--

INSERT INTO `notify` (`id`, `complete_url`, `action`, `msisdn`, `status`, `created_at`, `updated_at`) VALUES
(1, 'http://localhost/mondia_php7/landing_stc?CGMSISDN=96551747685&CGSTATUS=0', 'new_sub', '96551747685', '0', '2020-04-22 07:26:15', '2020-04-22 07:26:15'),
(2, 'http://localhost/mondia_php7/notification?ChannelID=11142&MSISDN=96555410856&OperatorID=41904&Password=kuwait%40%21dex&RequestID=..&STATUS=ACT-BL&ServiceID=808&User=kuwait%40idex', 'usub', '96555410856', 'ACT-BL', '2020-04-22 09:33:52', '2020-04-22 09:33:52'),
(3, 'http://localhost/mondia_php7/notification?ChannelID=11142&MSISDN=96555410856&OperatorID=41904&Password=kuwait%40%21dex&RequestID=..&STATUS=ACT-BL&ServiceID=808&User=kuwait%40idex', 'usub', '96555410856', 'ACT-BL', '2020-04-22 09:56:01', '2020-04-22 09:56:01');

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
(11, 'stc', 'uploads/operators/5e9ecd7a6c964.png', '2020-04-21 06:39:54', '2020-04-21 06:40:14', 711, 3),
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
(477, 9, 359, '2020-04-16', 0, '2020-04-17 00:56:53', '2020-04-17 00:56:53', 0),
(478, 10, 359, '2020-04-16', 0, '2020-04-17 00:56:53', '2020-04-17 00:56:53', 0),
(479, 9, 358, '2020-04-16', 0, '2020-04-17 00:57:23', '2020-04-17 00:57:23', 0),
(480, 10, 358, '2020-04-16', 0, '2020-04-17 00:57:23', '2020-04-17 00:57:23', 0),
(481, 9, 357, '2020-04-16', 0, '2020-04-17 00:57:47', '2020-04-17 00:57:47', 0),
(482, 10, 357, '2020-04-16', 0, '2020-04-17 00:57:47', '2020-04-17 00:57:47', 0),
(483, 9, 356, '2020-04-16', 0, '2020-04-17 00:58:01', '2020-04-17 00:58:01', 0),
(484, 10, 356, '2020-04-16', 0, '2020-04-17 00:58:01', '2020-04-17 00:58:01', 0),
(485, 9, 307, '2020-04-16', 0, '2020-04-17 00:58:48', '2020-04-17 00:58:48', 0),
(486, 10, 307, '2020-04-16', 0, '2020-04-17 00:58:48', '2020-04-17 00:58:48', 0),
(487, 9, 355, '2020-04-16', 0, '2020-04-17 00:59:00', '2020-04-17 00:59:00', 0),
(488, 10, 355, '2020-04-16', 0, '2020-04-17 00:59:00', '2020-04-17 00:59:00', 0),
(489, 9, 354, '2020-04-16', 0, '2020-04-17 00:59:13', '2020-04-17 00:59:13', 0),
(490, 10, 354, '2020-04-16', 0, '2020-04-17 00:59:13', '2020-04-17 00:59:13', 0),
(491, 9, 353, '2020-04-16', 0, '2020-04-17 00:59:26', '2020-04-17 00:59:26', 0),
(492, 10, 353, '2020-04-16', 0, '2020-04-17 00:59:26', '2020-04-17 00:59:26', 0),
(493, 9, 352, '2020-04-16', 0, '2020-04-17 01:00:05', '2020-04-17 01:00:05', 0),
(494, 10, 352, '2020-04-16', 0, '2020-04-17 01:00:05', '2020-04-17 01:00:05', 0),
(495, 9, 350, '2020-04-16', 0, '2020-04-17 01:00:19', '2020-04-17 01:00:19', 0),
(496, 10, 350, '2020-04-16', 0, '2020-04-17 01:00:19', '2020-04-17 01:00:19', 0),
(497, 9, 351, '2020-04-16', 0, '2020-04-17 01:00:32', '2020-04-17 01:00:32', 0),
(498, 10, 351, '2020-04-16', 0, '2020-04-17 01:00:32', '2020-04-17 01:00:32', 0),
(499, 9, 349, '2020-04-16', 0, '2020-04-17 01:00:45', '2020-04-17 01:00:45', 0),
(500, 10, 349, '2020-04-16', 0, '2020-04-17 01:00:45', '2020-04-17 01:00:45', 0),
(501, 9, 348, '2020-04-16', 0, '2020-04-17 01:00:56', '2020-04-17 01:00:56', 0),
(502, 10, 348, '2020-04-16', 0, '2020-04-17 01:00:56', '2020-04-17 01:00:56', 0),
(503, 9, 347, '2020-04-16', 0, '2020-04-17 01:01:06', '2020-04-17 01:01:06', 0),
(504, 10, 347, '2020-04-16', 0, '2020-04-17 01:01:06', '2020-04-17 01:01:06', 0),
(505, 9, 346, '2020-04-16', 0, '2020-04-17 01:01:21', '2020-04-17 01:01:21', 0),
(506, 10, 346, '2020-04-16', 0, '2020-04-17 01:01:21', '2020-04-17 01:01:21', 0),
(507, 9, 345, '2020-04-16', 0, '2020-04-17 01:01:34', '2020-04-17 01:01:34', 0),
(508, 10, 345, '2020-04-16', 0, '2020-04-17 01:01:34', '2020-04-17 01:01:34', 0),
(509, 9, 344, '2020-04-16', 0, '2020-04-17 01:01:46', '2020-04-17 01:01:46', 0),
(510, 10, 344, '2020-04-16', 0, '2020-04-17 01:01:46', '2020-04-17 01:01:46', 0),
(511, 9, 343, '2020-04-16', 0, '2020-04-17 01:01:57', '2020-04-17 01:01:57', 0),
(512, 10, 343, '2020-04-16', 0, '2020-04-17 01:01:57', '2020-04-17 01:01:57', 0),
(513, 9, 309, '2020-04-16', 0, '2020-04-17 01:02:14', '2020-04-17 01:02:14', 0),
(514, 10, 309, '2020-04-16', 0, '2020-04-17 01:02:14', '2020-04-17 01:02:14', 0),
(515, 9, 342, '2020-04-16', 0, '2020-04-17 01:02:24', '2020-04-17 01:02:24', 0),
(516, 10, 342, '2020-04-16', 0, '2020-04-17 01:02:24', '2020-04-17 01:02:24', 0),
(517, 9, 341, '2020-04-16', 0, '2020-04-17 01:02:36', '2020-04-17 01:02:36', 0),
(518, 10, 341, '2020-04-16', 0, '2020-04-17 01:02:36', '2020-04-17 01:02:36', 0),
(519, 9, 340, '2020-04-16', 0, '2020-04-17 01:02:51', '2020-04-17 01:02:51', 0),
(520, 10, 340, '2020-04-16', 0, '2020-04-17 01:02:51', '2020-04-17 01:02:51', 0),
(521, 9, 339, '2020-04-16', 0, '2020-04-17 01:03:05', '2020-04-17 01:03:05', 0),
(522, 10, 339, '2020-04-16', 0, '2020-04-17 01:03:05', '2020-04-17 01:03:05', 0),
(523, 9, 338, '2020-04-16', 0, '2020-04-17 01:03:22', '2020-04-17 01:03:22', 0),
(524, 10, 338, '2020-04-16', 0, '2020-04-17 01:03:22', '2020-04-17 01:03:22', 0),
(525, 9, 337, '2020-04-16', 0, '2020-04-17 01:03:34', '2020-04-17 01:03:34', 0),
(526, 10, 337, '2020-04-16', 0, '2020-04-17 01:03:34', '2020-04-17 01:03:34', 0),
(527, 9, 336, '2020-04-16', 0, '2020-04-17 01:03:47', '2020-04-17 01:03:47', 0),
(528, 10, 336, '2020-04-16', 0, '2020-04-17 01:03:47', '2020-04-17 01:03:47', 0),
(529, 9, 335, '2020-04-16', 0, '2020-04-17 01:03:58', '2020-04-17 01:03:58', 0),
(530, 10, 335, '2020-04-16', 0, '2020-04-17 01:03:59', '2020-04-17 01:03:59', 0),
(531, 9, 334, '2020-04-16', 0, '2020-04-17 01:04:10', '2020-04-17 01:04:10', 0),
(532, 10, 334, '2020-04-16', 0, '2020-04-17 01:04:10', '2020-04-17 01:04:10', 0),
(533, 9, 333, '2020-04-16', 0, '2020-04-17 01:04:27', '2020-04-17 01:04:27', 0),
(534, 10, 333, '2020-04-16', 0, '2020-04-17 01:04:27', '2020-04-17 01:04:27', 0),
(535, 9, 332, '2020-04-16', 0, '2020-04-17 01:04:41', '2020-04-17 01:04:41', 0),
(536, 10, 332, '2020-04-16', 0, '2020-04-17 01:04:41', '2020-04-17 01:04:41', 0),
(537, 9, 331, '2020-04-16', 0, '2020-04-17 01:04:52', '2020-04-17 01:04:52', 0),
(538, 10, 331, '2020-04-16', 0, '2020-04-17 01:04:52', '2020-04-17 01:04:52', 0),
(539, 9, 330, '2020-04-16', 0, '2020-04-17 01:05:04', '2020-04-17 01:05:04', 0),
(540, 10, 330, '2020-04-16', 0, '2020-04-17 01:05:04', '2020-04-17 01:05:04', 0),
(541, 9, 329, '2020-04-16', 0, '2020-04-17 01:05:18', '2020-04-17 01:05:18', 0),
(542, 10, 329, '2020-04-16', 0, '2020-04-17 01:05:18', '2020-04-17 01:05:18', 0),
(543, 9, 328, '2020-04-16', 0, '2020-04-17 01:05:31', '2020-04-17 01:05:31', 0),
(544, 10, 328, '2020-04-16', 0, '2020-04-17 01:05:31', '2020-04-17 01:05:31', 0),
(545, 9, 327, '2020-04-16', 0, '2020-04-17 01:05:43', '2020-04-17 01:05:43', 0),
(546, 10, 327, '2020-04-16', 0, '2020-04-17 01:05:43', '2020-04-17 01:05:43', 0),
(547, 9, 326, '2020-04-16', 0, '2020-04-17 01:05:57', '2020-04-17 01:05:57', 0),
(548, 10, 326, '2020-04-16', 0, '2020-04-17 01:05:57', '2020-04-17 01:05:57', 0),
(549, 9, 325, '2020-04-16', 0, '2020-04-17 01:06:11', '2020-04-17 01:06:11', 0),
(550, 10, 325, '2020-04-16', 0, '2020-04-17 01:06:11', '2020-04-17 01:06:11', 0),
(551, 9, 324, '2020-04-16', 0, '2020-04-17 01:06:32', '2020-04-17 01:06:32', 0),
(552, 10, 324, '2020-04-16', 0, '2020-04-17 01:06:32', '2020-04-17 01:06:32', 0),
(553, 9, 323, '2020-04-16', 0, '2020-04-17 01:06:56', '2020-04-17 01:06:56', 0),
(554, 10, 323, '2020-04-16', 0, '2020-04-17 01:06:56', '2020-04-17 01:06:56', 0),
(555, 9, 320, '2020-04-16', 0, '2020-04-17 01:07:15', '2020-04-17 01:07:15', 0),
(556, 10, 320, '2020-04-16', 0, '2020-04-17 01:07:15', '2020-04-17 01:07:15', 0),
(557, 9, 319, '2020-04-16', 0, '2020-04-17 01:07:27', '2020-04-17 01:07:27', 0),
(558, 10, 319, '2020-04-16', 0, '2020-04-17 01:07:27', '2020-04-17 01:07:27', 0),
(559, 9, 318, '2020-04-16', 0, '2020-04-17 01:08:00', '2020-04-17 01:08:00', 0),
(561, 9, 316, '2020-04-16', 0, '2020-04-17 01:08:16', '2020-04-17 01:08:16', 0),
(562, 10, 316, '2020-04-16', 0, '2020-04-17 01:08:16', '2020-04-17 01:08:16', 0),
(563, 9, 317, '2020-04-16', 0, '2020-04-17 01:08:28', '2020-04-17 01:08:28', 0),
(564, 10, 317, '2020-04-16', 0, '2020-04-17 01:08:28', '2020-04-17 01:08:28', 0),
(565, 9, 315, '2020-04-16', 0, '2020-04-17 01:08:41', '2020-04-17 01:08:41', 0),
(566, 10, 315, '2020-04-16', 0, '2020-04-17 01:08:41', '2020-04-17 01:08:41', 0),
(567, 9, 314, '2020-04-16', 0, '2020-04-17 01:08:54', '2020-04-17 01:08:54', 0),
(568, 10, 314, '2020-04-16', 0, '2020-04-17 01:08:54', '2020-04-17 01:08:54', 0),
(569, 9, 313, '2020-04-16', 0, '2020-04-17 01:09:07', '2020-04-17 01:09:07', 0),
(570, 10, 313, '2020-04-16', 0, '2020-04-17 01:09:07', '2020-04-17 01:09:07', 0),
(571, 9, 312, '2020-04-16', 0, '2020-04-17 01:09:20', '2020-04-17 01:09:20', 0),
(572, 10, 312, '2020-04-16', 0, '2020-04-17 01:09:20', '2020-04-17 01:09:20', 0),
(573, 9, 311, '2020-04-16', 0, '2020-04-17 01:09:37', '2020-04-17 01:09:37', 0),
(574, 10, 311, '2020-04-16', 0, '2020-04-17 01:09:37', '2020-04-17 01:09:37', 0),
(575, 9, 310, '2020-04-16', 0, '2020-04-17 01:09:49', '2020-04-17 01:09:49', 0),
(576, 10, 310, '2020-04-16', 0, '2020-04-17 01:09:49', '2020-04-17 01:09:49', 0),
(605, 9, 409, '2020-04-16', 0, '2020-04-17 02:33:34', '2020-04-17 02:33:34', 0),
(606, 10, 409, '2020-04-16', 0, '2020-04-17 02:33:34', '2020-04-17 02:33:34', 0),
(607, 9, 408, '2020-04-16', 0, '2020-04-17 02:33:47', '2020-04-17 02:33:47', 0),
(608, 10, 408, '2020-04-16', 0, '2020-04-17 02:33:47', '2020-04-17 02:33:47', 0),
(609, 9, 360, '2020-04-16', 0, '2020-04-17 02:34:05', '2020-04-17 02:34:05', 0),
(610, 10, 360, '2020-04-16', 0, '2020-04-17 02:34:05', '2020-04-17 02:34:05', 0),
(611, 9, 407, '2020-04-16', 0, '2020-04-17 02:34:18', '2020-04-17 02:34:18', 0),
(612, 10, 407, '2020-04-16', 0, '2020-04-17 02:34:18', '2020-04-17 02:34:18', 0),
(613, 9, 406, '2020-04-16', 0, '2020-04-17 02:34:30', '2020-04-17 02:34:30', 0),
(614, 10, 406, '2020-04-16', 0, '2020-04-17 02:34:30', '2020-04-17 02:34:30', 0),
(615, 9, 405, '2020-04-16', 0, '2020-04-17 02:34:44', '2020-04-17 02:34:44', 0),
(616, 10, 405, '2020-04-16', 0, '2020-04-17 02:34:44', '2020-04-17 02:34:44', 0),
(617, 9, 404, '2020-04-16', 0, '2020-04-17 02:34:55', '2020-04-17 02:34:55', 0),
(618, 10, 404, '2020-04-16', 0, '2020-04-17 02:34:55', '2020-04-17 02:34:55', 0),
(619, 9, 403, '2020-04-16', 0, '2020-04-17 02:35:08', '2020-04-17 02:35:08', 0),
(620, 10, 403, '2020-04-16', 0, '2020-04-17 02:35:08', '2020-04-17 02:35:08', 0),
(621, 9, 402, '2020-04-16', 0, '2020-04-17 02:35:18', '2020-04-17 02:35:18', 0),
(622, 10, 402, '2020-04-16', 0, '2020-04-17 02:35:18', '2020-04-17 02:35:18', 0),
(623, 9, 401, '2020-04-16', 0, '2020-04-17 02:35:31', '2020-04-17 02:35:31', 0),
(624, 10, 401, '2020-04-16', 0, '2020-04-17 02:35:31', '2020-04-17 02:35:31', 0),
(625, 9, 399, '2020-04-16', 0, '2020-04-17 02:35:43', '2020-04-17 02:35:43', 0),
(626, 10, 399, '2020-04-16', 0, '2020-04-17 02:35:43', '2020-04-17 02:35:43', 0),
(627, 9, 400, '2020-04-16', 0, '2020-04-17 02:35:53', '2020-04-17 02:35:53', 0),
(628, 10, 400, '2020-04-16', 0, '2020-04-17 02:35:53', '2020-04-17 02:35:53', 0),
(629, 9, 398, '2020-04-16', 0, '2020-04-17 02:36:07', '2020-04-17 02:36:07', 0),
(630, 10, 398, '2020-04-16', 0, '2020-04-17 02:36:07', '2020-04-17 02:36:07', 0),
(631, 9, 397, '2020-04-16', 0, '2020-04-17 02:36:22', '2020-04-17 02:36:22', 0),
(632, 10, 397, '2020-04-16', 0, '2020-04-17 02:36:22', '2020-04-17 02:36:22', 0),
(633, 9, 396, '2020-04-16', 0, '2020-04-17 02:36:39', '2020-04-17 02:36:39', 0),
(634, 10, 396, '2020-04-16', 0, '2020-04-17 02:36:39', '2020-04-17 02:36:39', 0),
(635, 9, 395, '2020-04-16', 0, '2020-04-17 02:36:52', '2020-04-17 02:36:52', 0),
(636, 10, 395, '2020-04-16', 0, '2020-04-17 02:36:52', '2020-04-17 02:36:52', 0),
(637, 9, 394, '2020-04-16', 0, '2020-04-17 02:37:03', '2020-04-17 02:37:03', 0),
(638, 10, 394, '2020-04-16', 0, '2020-04-17 02:37:03', '2020-04-17 02:37:03', 0),
(639, 9, 393, '2020-04-16', 0, '2020-04-17 02:37:15', '2020-04-17 02:37:15', 0),
(640, 10, 393, '2020-04-16', 0, '2020-04-17 02:37:15', '2020-04-17 02:37:15', 0),
(641, 9, 361, '2020-04-16', 0, '2020-04-17 02:37:30', '2020-04-17 02:37:30', 0),
(642, 10, 361, '2020-04-16', 0, '2020-04-17 02:37:30', '2020-04-17 02:37:30', 0),
(643, 9, 392, '2020-04-16', 0, '2020-04-17 02:37:42', '2020-04-17 02:37:42', 0),
(644, 10, 392, '2020-04-16', 0, '2020-04-17 02:37:42', '2020-04-17 02:37:42', 0),
(645, 9, 391, '2020-04-16', 0, '2020-04-17 02:37:53', '2020-04-17 02:37:53', 0),
(646, 10, 391, '2020-04-16', 0, '2020-04-17 02:37:53', '2020-04-17 02:37:53', 0),
(647, 9, 390, '2020-04-16', 0, '2020-04-17 02:38:06', '2020-04-17 02:38:06', 0),
(648, 10, 390, '2020-04-16', 0, '2020-04-17 02:38:06', '2020-04-17 02:38:06', 0),
(649, 9, 389, '2020-04-16', 0, '2020-04-17 02:38:19', '2020-04-17 02:38:19', 0),
(650, 10, 389, '2020-04-16', 0, '2020-04-17 02:38:19', '2020-04-17 02:38:19', 0),
(651, 9, 388, '2020-04-16', 0, '2020-04-17 02:38:30', '2020-04-17 02:38:30', 0),
(652, 10, 388, '2020-04-16', 0, '2020-04-17 02:38:30', '2020-04-17 02:38:30', 0),
(653, 9, 386, '2020-04-16', 0, '2020-04-17 02:38:42', '2020-04-17 02:38:42', 0),
(654, 10, 386, '2020-04-16', 0, '2020-04-17 02:38:42', '2020-04-17 02:38:42', 0),
(655, 9, 387, '2020-04-16', 0, '2020-04-17 02:38:53', '2020-04-17 02:38:53', 0),
(656, 10, 387, '2020-04-16', 0, '2020-04-17 02:38:53', '2020-04-17 02:38:53', 0),
(657, 9, 385, '2020-04-16', 0, '2020-04-17 02:39:08', '2020-04-17 02:39:08', 0),
(658, 10, 385, '2020-04-16', 0, '2020-04-17 02:39:08', '2020-04-17 02:39:08', 0),
(659, 9, 384, '2020-04-16', 0, '2020-04-17 02:39:20', '2020-04-17 02:39:20', 0),
(660, 10, 384, '2020-04-16', 0, '2020-04-17 02:39:20', '2020-04-17 02:39:20', 0),
(661, 9, 383, '2020-04-16', 0, '2020-04-17 02:39:31', '2020-04-17 02:39:31', 0),
(662, 10, 383, '2020-04-16', 0, '2020-04-17 02:39:31', '2020-04-17 02:39:31', 0),
(663, 9, 382, '2020-04-16', 0, '2020-04-17 02:39:43', '2020-04-17 02:39:43', 0),
(664, 10, 382, '2020-04-16', 0, '2020-04-17 02:39:43', '2020-04-17 02:39:43', 0),
(665, 9, 381, '2020-04-16', 0, '2020-04-17 02:39:54', '2020-04-17 02:39:54', 0),
(666, 10, 381, '2020-04-16', 0, '2020-04-17 02:39:54', '2020-04-17 02:39:54', 0),
(667, 9, 380, '2020-04-16', 0, '2020-04-17 02:40:06', '2020-04-17 02:40:06', 0),
(668, 10, 380, '2020-04-16', 0, '2020-04-17 02:40:06', '2020-04-17 02:40:06', 0),
(669, 9, 379, '2020-04-16', 0, '2020-04-17 02:40:17', '2020-04-17 02:40:17', 0),
(670, 10, 379, '2020-04-16', 0, '2020-04-17 02:40:17', '2020-04-17 02:40:17', 0),
(671, 9, 378, '2020-04-16', 0, '2020-04-17 02:40:31', '2020-04-17 02:40:31', 0),
(672, 10, 378, '2020-04-16', 0, '2020-04-17 02:40:31', '2020-04-17 02:40:31', 0),
(673, 9, 377, '2020-04-16', 0, '2020-04-17 02:40:42', '2020-04-17 02:40:42', 0),
(674, 10, 377, '2020-04-16', 0, '2020-04-17 02:40:42', '2020-04-17 02:40:42', 0),
(675, 9, 376, '2020-04-16', 0, '2020-04-17 02:40:54', '2020-04-17 02:40:54', 0),
(676, 10, 376, '2020-04-16', 0, '2020-04-17 02:40:54', '2020-04-17 02:40:54', 0),
(677, 9, 375, '2020-04-16', 0, '2020-04-17 02:41:05', '2020-04-17 02:41:05', 0),
(678, 10, 375, '2020-04-16', 0, '2020-04-17 02:41:05', '2020-04-17 02:41:05', 0),
(679, 9, 374, '2020-04-16', 0, '2020-04-17 02:41:16', '2020-04-17 02:41:16', 0),
(680, 10, 374, '2020-04-16', 0, '2020-04-17 02:41:16', '2020-04-17 02:41:16', 0),
(681, 9, 373, '2020-04-16', 0, '2020-04-17 02:41:32', '2020-04-17 02:41:32', 0),
(682, 10, 373, '2020-04-16', 0, '2020-04-17 02:41:32', '2020-04-17 02:41:32', 0),
(683, 9, 362, '2020-04-16', 0, '2020-04-17 02:41:48', '2020-04-17 02:41:48', 0),
(684, 10, 362, '2020-04-16', 0, '2020-04-17 02:41:48', '2020-04-17 02:41:48', 0),
(685, 9, 372, '2020-04-16', 0, '2020-04-17 02:42:00', '2020-04-17 02:42:00', 0),
(686, 10, 372, '2020-04-16', 0, '2020-04-17 02:42:00', '2020-04-17 02:42:00', 0),
(687, 9, 371, '2020-04-16', 0, '2020-04-17 02:42:13', '2020-04-17 02:42:13', 0),
(688, 10, 371, '2020-04-16', 0, '2020-04-17 02:42:13', '2020-04-17 02:42:13', 0),
(689, 9, 370, '2020-04-16', 0, '2020-04-17 02:42:25', '2020-04-17 02:42:25', 0),
(691, 9, 369, '2020-04-16', 0, '2020-04-17 02:42:41', '2020-04-17 02:42:41', 0),
(692, 10, 369, '2020-04-16', 0, '2020-04-17 02:42:41', '2020-04-17 02:42:41', 0),
(693, 9, 368, '2020-04-16', 0, '2020-04-17 02:42:55', '2020-04-17 02:42:55', 0),
(694, 10, 368, '2020-04-16', 0, '2020-04-17 02:42:55', '2020-04-17 02:42:55', 0),
(695, 9, 367, '2020-04-16', 0, '2020-04-17 02:43:11', '2020-04-17 02:43:11', 0),
(696, 10, 367, '2020-04-16', 0, '2020-04-17 02:43:11', '2020-04-17 02:43:11', 0),
(697, 9, 366, '2020-04-16', 0, '2020-04-17 02:43:27', '2020-04-17 02:43:27', 0),
(698, 10, 366, '2020-04-16', 0, '2020-04-17 02:43:27', '2020-04-17 02:43:27', 0),
(699, 9, 365, '2020-04-16', 0, '2020-04-17 02:43:39', '2020-04-17 02:43:39', 0),
(700, 10, 365, '2020-04-16', 0, '2020-04-17 02:43:39', '2020-04-17 02:43:39', 0),
(701, 9, 364, '2020-04-16', 0, '2020-04-17 02:43:53', '2020-04-17 02:43:53', 0),
(702, 10, 364, '2020-04-16', 0, '2020-04-17 02:43:53', '2020-04-17 02:43:53', 0),
(703, 9, 363, '2020-04-16', 0, '2020-04-17 02:44:06', '2020-04-17 02:44:06', 0),
(704, 10, 363, '2020-04-16', 0, '2020-04-17 02:44:06', '2020-04-17 02:44:06', 0),
(705, 9, 422, '2020-04-16', 0, '2020-04-17 02:54:28', '2020-04-17 02:54:28', 0),
(706, 10, 422, '2020-04-16', 0, '2020-04-17 02:54:28', '2020-04-17 02:54:28', 0),
(707, 9, 419, '2020-04-16', 0, '2020-04-17 02:54:40', '2020-04-17 02:54:40', 0),
(708, 10, 419, '2020-04-16', 0, '2020-04-17 02:54:40', '2020-04-17 02:54:40', 0),
(709, 9, 412, '2020-04-16', 0, '2020-04-17 02:55:06', '2020-04-17 02:55:06', 0),
(710, 10, 412, '2020-04-16', 0, '2020-04-17 02:55:06', '2020-04-17 02:55:06', 0),
(711, 9, 411, '2020-04-16', 0, '2020-04-17 02:55:20', '2020-04-17 02:55:20', 0),
(712, 10, 411, '2020-04-16', 0, '2020-04-17 02:55:20', '2020-04-17 02:55:20', 0),
(713, 9, 410, '2020-04-16', 0, '2020-04-17 02:55:33', '2020-04-17 02:55:33', 0),
(714, 10, 410, '2020-04-16', 0, '2020-04-17 02:55:33', '2020-04-17 02:55:33', 0),
(715, 9, 464, '2020-04-16', 0, '2020-04-17 03:22:10', '2020-04-17 03:22:10', 0),
(716, 10, 464, '2020-04-16', 0, '2020-04-17 03:22:10', '2020-04-17 03:22:10', 0),
(717, 9, 463, '2020-04-16', 0, '2020-04-17 03:22:27', '2020-04-17 03:22:27', 0),
(718, 10, 463, '2020-04-16', 0, '2020-04-17 03:22:27', '2020-04-17 03:22:27', 0),
(719, 9, 462, '2020-04-16', 0, '2020-04-17 03:22:39', '2020-04-17 03:22:39', 0),
(720, 10, 462, '2020-04-16', 0, '2020-04-17 03:22:39', '2020-04-17 03:22:39', 0),
(721, 9, 413, '2020-04-16', 0, '2020-04-17 03:22:54', '2020-04-17 03:22:54', 0),
(722, 10, 413, '2020-04-16', 0, '2020-04-17 03:22:54', '2020-04-17 03:22:54', 0),
(723, 9, 461, '2020-04-16', 0, '2020-04-17 03:23:05', '2020-04-17 03:23:05', 0),
(724, 10, 461, '2020-04-16', 0, '2020-04-17 03:23:05', '2020-04-17 03:23:05', 0),
(725, 9, 460, '2020-04-16', 0, '2020-04-17 03:23:18', '2020-04-17 03:23:18', 0),
(726, 10, 460, '2020-04-16', 0, '2020-04-17 03:23:18', '2020-04-17 03:23:18', 0),
(727, 9, 459, '2020-04-16', 0, '2020-04-17 03:23:32', '2020-04-17 03:23:32', 0),
(728, 10, 459, '2020-04-16', 0, '2020-04-17 03:23:32', '2020-04-17 03:23:32', 0),
(729, 9, 414, '2020-04-16', 0, '2020-04-17 03:23:46', '2020-04-17 03:23:46', 0),
(730, 10, 414, '2020-04-16', 0, '2020-04-17 03:23:46', '2020-04-17 03:23:46', 0),
(731, 9, 458, '2020-04-16', 0, '2020-04-17 03:23:57', '2020-04-17 03:23:57', 0),
(732, 10, 458, '2020-04-16', 0, '2020-04-17 03:23:57', '2020-04-17 03:23:57', 0),
(733, 9, 457, '2020-04-16', 0, '2020-04-17 03:24:06', '2020-04-17 03:24:06', 0),
(734, 10, 457, '2020-04-16', 0, '2020-04-17 03:24:06', '2020-04-17 03:24:06', 0),
(735, 9, 456, '2020-04-16', 0, '2020-04-17 03:24:16', '2020-04-17 03:24:16', 0),
(736, 10, 456, '2020-04-16', 0, '2020-04-17 03:24:16', '2020-04-17 03:24:16', 0),
(737, 9, 455, '2020-04-16', 0, '2020-04-17 03:24:29', '2020-04-17 03:24:29', 0),
(738, 10, 455, '2020-04-16', 0, '2020-04-17 03:24:29', '2020-04-17 03:24:29', 0),
(739, 9, 454, '2020-04-16', 0, '2020-04-17 03:24:40', '2020-04-17 03:24:40', 0),
(740, 10, 454, '2020-04-16', 0, '2020-04-17 03:24:40', '2020-04-17 03:24:40', 0),
(741, 9, 453, '2020-04-16', 0, '2020-04-17 03:24:52', '2020-04-17 03:24:52', 0),
(742, 10, 453, '2020-04-16', 0, '2020-04-17 03:24:52', '2020-04-17 03:24:52', 0),
(743, 9, 452, '2020-04-16', 0, '2020-04-17 03:25:08', '2020-04-17 03:25:08', 0),
(744, 10, 452, '2020-04-16', 0, '2020-04-17 03:25:08', '2020-04-17 03:25:08', 0),
(745, 9, 451, '2020-04-16', 0, '2020-04-17 03:25:20', '2020-04-17 03:25:20', 0),
(746, 10, 451, '2020-04-16', 0, '2020-04-17 03:25:20', '2020-04-17 03:25:20', 0),
(747, 9, 450, '2020-04-16', 0, '2020-04-17 03:25:31', '2020-04-17 03:25:31', 0),
(748, 10, 450, '2020-04-16', 0, '2020-04-17 03:25:31', '2020-04-17 03:25:31', 0),
(749, 9, 449, '2020-04-16', 0, '2020-04-17 03:25:43', '2020-04-17 03:25:43', 0),
(750, 10, 449, '2020-04-16', 0, '2020-04-17 03:25:43', '2020-04-17 03:25:43', 0),
(751, 9, 448, '2020-04-16', 0, '2020-04-17 03:25:58', '2020-04-17 03:25:58', 0),
(752, 10, 448, '2020-04-16', 0, '2020-04-17 03:25:58', '2020-04-17 03:25:58', 0),
(753, 9, 447, '2020-04-16', 0, '2020-04-17 03:26:09', '2020-04-17 03:26:09', 0),
(754, 10, 447, '2020-04-16', 0, '2020-04-17 03:26:09', '2020-04-17 03:26:09', 0),
(755, 9, 446, '2020-04-16', 0, '2020-04-17 03:26:20', '2020-04-17 03:26:20', 0),
(756, 10, 446, '2020-04-16', 0, '2020-04-17 03:26:20', '2020-04-17 03:26:20', 0),
(757, 9, 445, '2020-04-16', 0, '2020-04-17 03:26:31', '2020-04-17 03:26:31', 0),
(758, 10, 445, '2020-04-16', 0, '2020-04-17 03:26:31', '2020-04-17 03:26:31', 0),
(759, 9, 444, '2020-04-16', 0, '2020-04-17 03:26:41', '2020-04-17 03:26:41', 0),
(760, 10, 444, '2020-04-16', 0, '2020-04-17 03:26:41', '2020-04-17 03:26:41', 0),
(761, 9, 443, '2020-04-16', 0, '2020-04-17 03:26:54', '2020-04-17 03:26:54', 0),
(762, 10, 443, '2020-04-16', 0, '2020-04-17 03:26:54', '2020-04-17 03:26:54', 0),
(763, 9, 415, '2020-04-16', 0, '2020-04-17 03:27:05', '2020-04-17 03:27:05', 0),
(764, 10, 415, '2020-04-16', 0, '2020-04-17 03:27:05', '2020-04-17 03:27:05', 0),
(765, 9, 442, '2020-04-16', 0, '2020-04-17 03:27:18', '2020-04-17 03:27:18', 0),
(766, 10, 442, '2020-04-16', 0, '2020-04-17 03:27:18', '2020-04-17 03:27:18', 0),
(767, 9, 441, '2020-04-16', 0, '2020-04-17 03:27:29', '2020-04-17 03:27:29', 0),
(768, 10, 441, '2020-04-16', 0, '2020-04-17 03:27:29', '2020-04-17 03:27:29', 0),
(769, 9, 440, '2020-04-16', 0, '2020-04-17 03:27:41', '2020-04-17 03:27:41', 0),
(770, 10, 440, '2020-04-16', 0, '2020-04-17 03:27:41', '2020-04-17 03:27:41', 0),
(771, 9, 435, '2020-04-16', 0, '2020-04-17 03:27:49', '2020-04-17 03:27:49', 0),
(772, 10, 435, '2020-04-16', 0, '2020-04-17 03:27:49', '2020-04-17 03:27:49', 0),
(773, 9, 439, '2020-04-16', 0, '2020-04-17 03:27:59', '2020-04-17 03:27:59', 0),
(774, 10, 439, '2020-04-16', 0, '2020-04-17 03:27:59', '2020-04-17 03:27:59', 0),
(775, 9, 438, '2020-04-16', 0, '2020-04-17 03:28:10', '2020-04-17 03:28:10', 0),
(776, 10, 438, '2020-04-16', 0, '2020-04-17 03:28:10', '2020-04-17 03:28:10', 0),
(777, 9, 437, '2020-04-16', 0, '2020-04-17 03:28:19', '2020-04-17 03:28:19', 0),
(778, 10, 437, '2020-04-16', 0, '2020-04-17 03:28:19', '2020-04-17 03:28:19', 0),
(779, 9, 436, '2020-04-16', 0, '2020-04-17 03:28:29', '2020-04-17 03:28:29', 0),
(780, 10, 436, '2020-04-16', 0, '2020-04-17 03:28:29', '2020-04-17 03:28:29', 0),
(781, 9, 425, '2020-04-16', 0, '2020-04-17 03:28:44', '2020-04-17 03:28:44', 0),
(782, 10, 425, '2020-04-16', 0, '2020-04-17 03:28:44', '2020-04-17 03:28:44', 0),
(783, 9, 434, '2020-04-16', 0, '2020-04-17 03:28:54', '2020-04-17 03:28:54', 0),
(784, 10, 434, '2020-04-16', 0, '2020-04-17 03:28:54', '2020-04-17 03:28:54', 0),
(785, 9, 433, '2020-04-16', 0, '2020-04-17 03:29:06', '2020-04-17 03:29:06', 0),
(786, 10, 433, '2020-04-16', 0, '2020-04-17 03:29:06', '2020-04-17 03:29:06', 0),
(787, 9, 432, '2020-04-16', 0, '2020-04-17 03:29:18', '2020-04-17 03:29:18', 0),
(788, 10, 432, '2020-04-16', 0, '2020-04-17 03:29:18', '2020-04-17 03:29:18', 0),
(789, 9, 431, '2020-04-16', 0, '2020-04-17 03:29:31', '2020-04-17 03:29:31', 0),
(790, 10, 431, '2020-04-16', 0, '2020-04-17 03:29:31', '2020-04-17 03:29:31', 0),
(791, 9, 430, '2020-04-16', 0, '2020-04-17 03:29:43', '2020-04-17 03:29:43', 0),
(792, 10, 430, '2020-04-16', 0, '2020-04-17 03:29:43', '2020-04-17 03:29:43', 0),
(793, 9, 429, '2020-04-16', 0, '2020-04-17 03:29:54', '2020-04-17 03:29:54', 0),
(794, 10, 429, '2020-04-16', 0, '2020-04-17 03:29:54', '2020-04-17 03:29:54', 0),
(795, 9, 424, '2020-04-16', 0, '2020-04-17 03:30:05', '2020-04-17 03:30:05', 0),
(796, 10, 424, '2020-04-16', 0, '2020-04-17 03:30:05', '2020-04-17 03:30:05', 0),
(797, 9, 428, '2020-04-16', 0, '2020-04-17 03:30:16', '2020-04-17 03:30:16', 0),
(798, 10, 428, '2020-04-16', 0, '2020-04-17 03:30:16', '2020-04-17 03:30:16', 0),
(799, 9, 427, '2020-04-16', 0, '2020-04-17 03:30:27', '2020-04-17 03:30:27', 0),
(800, 10, 427, '2020-04-16', 0, '2020-04-17 03:30:27', '2020-04-17 03:30:27', 0),
(801, 9, 426, '2020-04-16', 0, '2020-04-17 03:30:40', '2020-04-17 03:30:40', 0),
(802, 10, 426, '2020-04-16', 0, '2020-04-17 03:30:40', '2020-04-17 03:30:40', 0),
(803, 9, 423, '2020-04-16', 0, '2020-04-17 03:30:52', '2020-04-17 03:30:52', 0),
(804, 10, 423, '2020-04-16', 0, '2020-04-17 03:30:52', '2020-04-17 03:30:52', 0),
(805, 9, 421, '2020-04-16', 0, '2020-04-17 03:31:03', '2020-04-17 03:31:03', 0),
(806, 10, 421, '2020-04-16', 0, '2020-04-17 03:31:03', '2020-04-17 03:31:03', 0),
(807, 9, 416, '2020-04-16', 0, '2020-04-17 03:31:14', '2020-04-17 03:31:14', 0),
(808, 10, 416, '2020-04-16', 0, '2020-04-17 03:31:14', '2020-04-17 03:31:14', 0),
(809, 9, 417, '2020-04-16', 0, '2020-04-17 03:31:27', '2020-04-17 03:31:27', 0),
(810, 10, 417, '2020-04-16', 0, '2020-04-17 03:31:27', '2020-04-17 03:31:27', 0),
(811, 9, 420, '2020-04-16', 0, '2020-04-17 03:31:38', '2020-04-17 03:31:38', 0),
(812, 10, 420, '2020-04-16', 0, '2020-04-17 03:31:38', '2020-04-17 03:31:38', 0),
(813, 9, 418, '2020-04-16', 0, '2020-04-17 03:31:59', '2020-04-17 03:31:59', 0),
(814, 10, 418, '2020-04-16', 0, '2020-04-17 03:31:59', '2020-04-17 03:31:59', 0),
(815, 9, 470, '2020-04-17', 0, '2020-04-17 12:33:03', '2020-04-17 12:33:03', 0),
(816, 10, 470, '2020-04-17', 0, '2020-04-17 12:33:03', '2020-04-17 12:33:03', 0),
(817, 9, 469, '2020-04-17', 0, '2020-04-17 12:33:17', '2020-04-17 12:33:17', 0),
(818, 10, 469, '2020-04-17', 0, '2020-04-17 12:33:17', '2020-04-17 12:33:17', 0),
(819, 9, 468, '2020-04-17', 0, '2020-04-17 12:33:39', '2020-04-17 12:33:39', 0),
(820, 10, 468, '2020-04-17', 0, '2020-04-17 12:33:39', '2020-04-17 12:33:39', 0),
(821, 9, 467, '2020-04-17', 0, '2020-04-17 12:33:48', '2020-04-17 12:33:48', 0),
(822, 10, 467, '2020-04-17', 0, '2020-04-17 12:33:48', '2020-04-17 12:33:48', 0),
(823, 9, 466, '2020-04-17', 0, '2020-04-17 12:33:58', '2020-04-17 12:33:58', 0),
(824, 10, 466, '2020-04-17', 0, '2020-04-17 12:33:58', '2020-04-17 12:33:58', 0),
(825, 9, 465, '2020-04-17', 0, '2020-04-17 12:34:22', '2020-04-17 12:34:22', 0),
(826, 10, 465, '2020-04-17', 0, '2020-04-17 12:34:22', '2020-04-17 12:34:22', 0),
(827, 9, 604, '2020-04-17', 0, '2020-04-17 14:50:49', '2020-04-17 14:50:49', 0),
(828, 10, 604, '2020-04-17', 0, '2020-04-17 14:50:49', '2020-04-17 14:50:49', 0),
(829, 9, 603, '2020-04-17', 0, '2020-04-17 14:51:02', '2020-04-17 14:51:02', 0),
(830, 10, 603, '2020-04-17', 0, '2020-04-17 14:51:02', '2020-04-17 14:51:02', 0),
(831, 9, 602, '2020-04-17', 0, '2020-04-17 14:51:10', '2020-04-17 14:51:10', 0),
(832, 10, 602, '2020-04-17', 0, '2020-04-17 14:51:10', '2020-04-17 14:51:10', 0),
(833, 9, 601, '2020-04-17', 0, '2020-04-17 14:51:19', '2020-04-17 14:51:19', 0),
(834, 10, 601, '2020-04-17', 0, '2020-04-17 14:51:19', '2020-04-17 14:51:19', 0),
(835, 9, 600, '2020-04-17', 0, '2020-04-17 14:51:28', '2020-04-17 14:51:28', 0),
(836, 10, 600, '2020-04-17', 0, '2020-04-17 14:51:28', '2020-04-17 14:51:28', 0),
(837, 9, 599, '2020-04-17', 0, '2020-04-17 14:51:38', '2020-04-17 14:51:38', 0),
(838, 10, 599, '2020-04-17', 0, '2020-04-17 14:51:38', '2020-04-17 14:51:38', 0),
(839, 9, 534, '2020-04-17', 0, '2020-04-17 15:07:16', '2020-04-17 15:07:16', 0),
(840, 10, 534, '2020-04-17', 0, '2020-04-17 15:07:16', '2020-04-17 15:07:16', 0),
(841, 9, 533, '2020-04-17', 0, '2020-04-17 15:07:28', '2020-04-17 15:07:28', 0),
(842, 10, 533, '2020-04-17', 0, '2020-04-17 15:07:28', '2020-04-17 15:07:28', 0),
(843, 9, 532, '2020-04-17', 0, '2020-04-17 15:07:42', '2020-04-17 15:07:42', 0),
(844, 10, 532, '2020-04-17', 0, '2020-04-17 15:07:42', '2020-04-17 15:07:42', 0),
(845, 9, 531, '2020-04-17', 0, '2020-04-17 15:07:55', '2020-04-17 15:07:55', 0),
(846, 10, 531, '2020-04-17', 0, '2020-04-17 15:07:55', '2020-04-17 15:07:55', 0),
(847, 9, 530, '2020-04-17', 0, '2020-04-17 15:08:05', '2020-04-17 15:08:05', 0),
(848, 10, 530, '2020-04-17', 0, '2020-04-17 15:08:05', '2020-04-17 15:08:05', 0),
(849, 9, 529, '2020-04-17', 0, '2020-04-17 15:08:35', '2020-04-17 15:08:35', 0),
(850, 10, 529, '2020-04-17', 0, '2020-04-17 15:08:35', '2020-04-17 15:08:35', 0),
(851, 9, 528, '2020-04-17', 0, '2020-04-17 15:08:48', '2020-04-17 15:08:48', 0),
(852, 10, 528, '2020-04-17', 0, '2020-04-17 15:08:48', '2020-04-17 15:08:48', 0),
(853, 9, 527, '2020-04-17', 0, '2020-04-17 15:08:59', '2020-04-17 15:08:59', 0),
(854, 10, 527, '2020-04-17', 0, '2020-04-17 15:08:59', '2020-04-17 15:08:59', 0),
(855, 9, 526, '2020-04-17', 0, '2020-04-17 15:09:09', '2020-04-17 15:09:09', 0),
(856, 10, 526, '2020-04-17', 0, '2020-04-17 15:09:09', '2020-04-17 15:09:09', 0),
(857, 9, 525, '2020-04-17', 0, '2020-04-17 15:09:19', '2020-04-17 15:09:19', 0),
(858, 10, 525, '2020-04-17', 0, '2020-04-17 15:09:19', '2020-04-17 15:09:19', 0),
(859, 9, 524, '2020-04-17', 0, '2020-04-17 15:09:31', '2020-04-17 15:09:31', 0),
(860, 10, 524, '2020-04-17', 0, '2020-04-17 15:09:31', '2020-04-17 15:09:31', 0),
(861, 9, 523, '2020-04-17', 0, '2020-04-17 15:10:09', '2020-04-17 15:10:09', 0),
(862, 10, 523, '2020-04-17', 0, '2020-04-17 15:10:09', '2020-04-17 15:10:09', 0),
(863, 9, 522, '2020-04-17', 0, '2020-04-17 15:10:55', '2020-04-17 15:10:55', 0),
(864, 10, 522, '2020-04-17', 0, '2020-04-17 15:10:55', '2020-04-17 15:10:55', 0),
(865, 9, 521, '2020-04-17', 0, '2020-04-17 15:11:08', '2020-04-17 15:11:08', 0),
(866, 10, 521, '2020-04-17', 0, '2020-04-17 15:11:08', '2020-04-17 15:11:08', 0),
(867, 9, 520, '2020-04-17', 0, '2020-04-17 15:11:20', '2020-04-17 15:11:20', 0),
(868, 10, 520, '2020-04-17', 0, '2020-04-17 15:11:20', '2020-04-17 15:11:20', 0),
(869, 9, 519, '2020-04-17', 0, '2020-04-17 15:11:48', '2020-04-17 15:11:48', 0),
(870, 10, 519, '2020-04-17', 0, '2020-04-17 15:11:48', '2020-04-17 15:11:48', 0),
(871, 9, 518, '2020-04-17', 0, '2020-04-17 15:12:03', '2020-04-17 15:12:03', 0),
(872, 10, 518, '2020-04-17', 0, '2020-04-17 15:12:03', '2020-04-17 15:12:03', 0),
(873, 9, 517, '2020-04-17', 0, '2020-04-17 15:12:20', '2020-04-17 15:12:20', 0),
(874, 10, 517, '2020-04-17', 0, '2020-04-17 15:12:20', '2020-04-17 15:12:20', 0),
(875, 9, 516, '2020-04-17', 0, '2020-04-17 15:12:32', '2020-04-17 15:12:32', 0),
(876, 10, 516, '2020-04-17', 0, '2020-04-17 15:12:32', '2020-04-17 15:12:32', 0),
(877, 9, 515, '2020-04-17', 0, '2020-04-17 15:12:43', '2020-04-17 15:12:43', 0),
(878, 10, 515, '2020-04-17', 0, '2020-04-17 15:12:43', '2020-04-17 15:12:43', 0),
(879, 9, 514, '2020-04-17', 0, '2020-04-17 15:13:01', '2020-04-17 15:13:01', 0),
(880, 10, 514, '2020-04-17', 0, '2020-04-17 15:13:01', '2020-04-17 15:13:01', 0),
(881, 9, 513, '2020-04-17', 0, '2020-04-17 15:13:22', '2020-04-17 15:13:22', 0),
(882, 10, 513, '2020-04-17', 0, '2020-04-17 15:13:22', '2020-04-17 15:13:22', 0),
(883, 9, 512, '2020-04-17', 0, '2020-04-17 15:13:35', '2020-04-17 15:13:35', 0),
(884, 10, 512, '2020-04-17', 0, '2020-04-17 15:13:35', '2020-04-17 15:13:35', 0),
(885, 9, 511, '2020-04-17', 0, '2020-04-17 15:13:47', '2020-04-17 15:13:47', 0),
(886, 10, 511, '2020-04-17', 0, '2020-04-17 15:13:47', '2020-04-17 15:13:47', 0),
(887, 9, 510, '2020-04-17', 0, '2020-04-17 15:13:59', '2020-04-17 15:13:59', 0),
(888, 10, 510, '2020-04-17', 0, '2020-04-17 15:13:59', '2020-04-17 15:13:59', 0),
(889, 9, 509, '2020-04-17', 0, '2020-04-17 15:14:11', '2020-04-17 15:14:11', 0),
(890, 10, 509, '2020-04-17', 0, '2020-04-17 15:14:11', '2020-04-17 15:14:11', 0),
(891, 9, 508, '2020-04-17', 0, '2020-04-17 15:14:23', '2020-04-17 15:14:23', 0),
(892, 10, 508, '2020-04-17', 0, '2020-04-17 15:14:23', '2020-04-17 15:14:23', 0),
(893, 9, 507, '2020-04-17', 0, '2020-04-17 15:22:10', '2020-04-17 15:22:10', 0),
(894, 10, 507, '2020-04-17', 0, '2020-04-17 15:22:10', '2020-04-17 15:22:10', 0),
(895, 9, 506, '2020-04-17', 0, '2020-04-17 15:22:22', '2020-04-17 15:22:22', 0),
(896, 10, 506, '2020-04-17', 0, '2020-04-17 15:22:22', '2020-04-17 15:22:22', 0),
(897, 9, 505, '2020-04-17', 0, '2020-04-17 15:22:33', '2020-04-17 15:22:33', 0),
(898, 10, 505, '2020-04-17', 0, '2020-04-17 15:22:33', '2020-04-17 15:22:33', 0),
(899, 9, 504, '2020-04-17', 0, '2020-04-17 15:22:50', '2020-04-17 15:22:50', 0),
(900, 10, 504, '2020-04-17', 0, '2020-04-17 15:22:50', '2020-04-17 15:22:50', 0),
(901, 9, 503, '2020-04-17', 0, '2020-04-17 15:23:10', '2020-04-17 15:23:10', 0),
(902, 10, 503, '2020-04-17', 0, '2020-04-17 15:23:10', '2020-04-17 15:23:10', 0),
(903, 9, 502, '2020-04-17', 0, '2020-04-17 15:23:23', '2020-04-17 15:23:23', 0),
(904, 10, 502, '2020-04-17', 0, '2020-04-17 15:23:23', '2020-04-17 15:23:23', 0),
(905, 9, 501, '2020-04-17', 0, '2020-04-17 15:23:34', '2020-04-17 15:23:34', 0),
(906, 10, 501, '2020-04-17', 0, '2020-04-17 15:23:34', '2020-04-17 15:23:34', 0),
(907, 9, 500, '2020-04-17', 0, '2020-04-17 15:23:46', '2020-04-17 15:23:46', 0),
(908, 10, 500, '2020-04-17', 0, '2020-04-17 15:23:46', '2020-04-17 15:23:46', 0),
(909, 9, 499, '2020-04-17', 0, '2020-04-17 15:23:59', '2020-04-17 15:23:59', 0),
(910, 10, 499, '2020-04-17', 0, '2020-04-17 15:23:59', '2020-04-17 15:23:59', 0),
(911, 9, 498, '2020-04-17', 0, '2020-04-17 15:24:10', '2020-04-17 15:24:10', 0),
(912, 10, 498, '2020-04-17', 0, '2020-04-17 15:24:10', '2020-04-17 15:24:10', 0),
(913, 9, 497, '2020-04-17', 0, '2020-04-17 15:24:22', '2020-04-17 15:24:22', 0),
(914, 10, 497, '2020-04-17', 0, '2020-04-17 15:24:22', '2020-04-17 15:24:22', 0),
(915, 9, 496, '2020-04-17', 0, '2020-04-17 15:24:51', '2020-04-17 15:24:51', 0),
(916, 10, 496, '2020-04-17', 0, '2020-04-17 15:24:51', '2020-04-17 15:24:51', 0),
(917, 9, 495, '2020-04-17', 0, '2020-04-17 15:25:03', '2020-04-17 15:25:03', 0),
(918, 10, 495, '2020-04-17', 0, '2020-04-17 15:25:03', '2020-04-17 15:25:03', 0),
(919, 9, 494, '2020-04-17', 0, '2020-04-17 15:25:15', '2020-04-17 15:25:15', 0),
(920, 10, 494, '2020-04-17', 0, '2020-04-17 15:25:15', '2020-04-17 15:25:15', 0),
(921, 9, 493, '2020-04-17', 0, '2020-04-17 15:25:27', '2020-04-17 15:25:27', 0),
(922, 10, 493, '2020-04-17', 0, '2020-04-17 15:25:27', '2020-04-17 15:25:27', 0),
(923, 9, 492, '2020-04-17', 0, '2020-04-17 15:25:40', '2020-04-17 15:25:40', 0),
(924, 10, 492, '2020-04-17', 0, '2020-04-17 15:25:40', '2020-04-17 15:25:40', 0),
(925, 9, 491, '2020-04-17', 0, '2020-04-17 15:25:53', '2020-04-17 15:25:53', 0),
(926, 10, 491, '2020-04-17', 0, '2020-04-17 15:25:53', '2020-04-17 15:25:53', 0),
(927, 9, 490, '2020-04-17', 0, '2020-04-17 15:26:05', '2020-04-17 15:26:05', 0),
(928, 10, 490, '2020-04-17', 0, '2020-04-17 15:26:05', '2020-04-17 15:26:05', 0),
(929, 9, 489, '2020-04-17', 0, '2020-04-17 15:26:18', '2020-04-17 15:26:18', 0),
(930, 10, 489, '2020-04-17', 0, '2020-04-17 15:26:18', '2020-04-17 15:26:18', 0),
(931, 9, 488, '2020-04-17', 0, '2020-04-17 15:26:32', '2020-04-17 15:26:32', 0),
(932, 10, 488, '2020-04-17', 0, '2020-04-17 15:26:32', '2020-04-17 15:26:32', 0),
(933, 9, 487, '2020-04-17', 0, '2020-04-17 15:26:44', '2020-04-17 15:26:44', 0),
(934, 10, 487, '2020-04-17', 0, '2020-04-17 15:26:44', '2020-04-17 15:26:44', 0),
(935, 9, 486, '2020-04-17', 0, '2020-04-17 15:26:57', '2020-04-17 15:26:57', 0),
(936, 10, 486, '2020-04-17', 0, '2020-04-17 15:26:57', '2020-04-17 15:26:57', 0),
(937, 9, 485, '2020-04-17', 0, '2020-04-17 15:27:09', '2020-04-17 15:27:09', 0),
(938, 10, 485, '2020-04-17', 0, '2020-04-17 15:27:09', '2020-04-17 15:27:09', 0),
(939, 9, 484, '2020-04-17', 0, '2020-04-17 15:27:22', '2020-04-17 15:27:22', 0),
(940, 10, 484, '2020-04-17', 0, '2020-04-17 15:27:22', '2020-04-17 15:27:22', 0),
(941, 9, 483, '2020-04-17', 0, '2020-04-17 15:27:35', '2020-04-17 15:27:35', 0),
(942, 10, 483, '2020-04-17', 0, '2020-04-17 15:27:35', '2020-04-17 15:27:35', 0),
(943, 9, 482, '2020-04-17', 0, '2020-04-17 15:27:49', '2020-04-17 15:27:49', 0),
(944, 10, 482, '2020-04-17', 0, '2020-04-17 15:27:49', '2020-04-17 15:27:49', 0),
(945, 9, 481, '2020-04-17', 0, '2020-04-17 15:28:02', '2020-04-17 15:28:02', 0),
(946, 10, 481, '2020-04-17', 0, '2020-04-17 15:28:02', '2020-04-17 15:28:02', 0),
(947, 9, 479, '2020-04-17', 0, '2020-04-17 15:28:14', '2020-04-17 15:28:14', 0),
(948, 10, 479, '2020-04-17', 0, '2020-04-17 15:28:14', '2020-04-17 15:28:14', 0),
(949, 9, 480, '2020-04-17', 0, '2020-04-17 15:28:29', '2020-04-17 15:28:29', 0),
(950, 10, 480, '2020-04-17', 0, '2020-04-17 15:28:29', '2020-04-17 15:28:29', 0),
(951, 9, 478, '2020-04-17', 0, '2020-04-17 15:28:42', '2020-04-17 15:28:42', 0),
(952, 10, 478, '2020-04-17', 0, '2020-04-17 15:28:42', '2020-04-17 15:28:42', 0),
(953, 9, 477, '2020-04-17', 0, '2020-04-17 15:28:56', '2020-04-17 15:28:56', 0),
(954, 10, 477, '2020-04-17', 0, '2020-04-17 15:28:56', '2020-04-17 15:28:56', 0),
(955, 9, 476, '2020-04-17', 0, '2020-04-17 15:29:10', '2020-04-17 15:29:10', 0),
(956, 10, 476, '2020-04-17', 0, '2020-04-17 15:29:10', '2020-04-17 15:29:10', 0),
(957, 9, 475, '2020-04-17', 0, '2020-04-17 15:29:23', '2020-04-17 15:29:23', 0),
(958, 10, 475, '2020-04-17', 0, '2020-04-17 15:29:23', '2020-04-17 15:29:23', 0),
(959, 9, 474, '2020-04-17', 0, '2020-04-17 15:29:36', '2020-04-17 15:29:36', 0),
(960, 10, 474, '2020-04-17', 0, '2020-04-17 15:29:36', '2020-04-17 15:29:36', 0),
(961, 9, 473, '2020-04-17', 0, '2020-04-17 15:29:50', '2020-04-17 15:29:50', 0),
(962, 10, 473, '2020-04-17', 0, '2020-04-17 15:29:50', '2020-04-17 15:29:50', 0),
(963, 9, 472, '2020-04-17', 0, '2020-04-17 15:30:04', '2020-04-17 15:30:04', 0),
(964, 10, 472, '2020-04-17', 0, '2020-04-17 15:30:04', '2020-04-17 15:30:04', 0),
(965, 9, 471, '2020-04-17', 0, '2020-04-17 15:30:17', '2020-04-17 15:30:17', 0),
(966, 10, 471, '2020-04-17', 0, '2020-04-17 15:30:17', '2020-04-17 15:30:17', 0),
(975, 9, 633, '2020-04-17', 0, '2020-04-17 16:17:28', '2020-04-17 16:17:28', 0),
(976, 10, 633, '2020-04-17', 0, '2020-04-17 16:17:28', '2020-04-17 16:17:28', 0),
(977, 9, 632, '2020-04-17', 0, '2020-04-17 16:18:22', '2020-04-17 16:18:22', 0),
(978, 10, 632, '2020-04-17', 0, '2020-04-17 16:18:22', '2020-04-17 16:18:22', 0),
(979, 9, 631, '2020-04-17', 0, '2020-04-17 16:19:16', '2020-04-17 16:19:16', 0),
(980, 10, 631, '2020-04-17', 0, '2020-04-17 16:19:16', '2020-04-17 16:19:16', 0),
(981, 9, 630, '2020-04-17', 0, '2020-04-17 16:22:33', '2020-04-17 16:22:33', 0),
(982, 10, 630, '2020-04-17', 0, '2020-04-17 16:22:33', '2020-04-17 16:22:33', 0),
(983, 9, 629, '2020-04-17', 0, '2020-04-17 16:23:14', '2020-04-17 16:23:14', 0),
(984, 10, 629, '2020-04-17', 0, '2020-04-17 16:23:14', '2020-04-17 16:23:14', 0),
(985, 9, 628, '2020-04-17', 0, '2020-04-17 16:24:31', '2020-04-17 16:24:31', 0),
(986, 10, 628, '2020-04-17', 0, '2020-04-17 16:24:31', '2020-04-17 16:24:31', 0),
(987, 9, 627, '2020-04-17', 0, '2020-04-17 16:24:56', '2020-04-17 16:24:56', 0),
(988, 10, 627, '2020-04-17', 0, '2020-04-17 16:24:56', '2020-04-17 16:24:56', 0),
(989, 9, 626, '2020-04-17', 0, '2020-04-17 16:25:31', '2020-04-17 16:25:31', 0),
(990, 10, 626, '2020-04-17', 0, '2020-04-17 16:25:31', '2020-04-17 16:25:31', 0),
(991, 9, 625, '2020-04-17', 0, '2020-04-17 16:26:42', '2020-04-17 16:26:42', 0),
(992, 10, 625, '2020-04-17', 0, '2020-04-17 16:26:42', '2020-04-17 16:26:42', 0),
(993, 9, 624, '2020-04-17', 0, '2020-04-17 16:27:17', '2020-04-17 16:27:17', 0),
(994, 10, 624, '2020-04-17', 0, '2020-04-17 16:27:17', '2020-04-17 16:27:17', 0),
(995, 9, 623, '2020-04-17', 0, '2020-04-17 16:28:08', '2020-04-17 16:28:08', 0),
(996, 10, 623, '2020-04-17', 0, '2020-04-17 16:28:08', '2020-04-17 16:28:08', 0),
(997, 9, 622, '2020-04-17', 0, '2020-04-17 16:28:28', '2020-04-17 16:28:28', 0),
(998, 10, 622, '2020-04-17', 0, '2020-04-17 16:28:28', '2020-04-17 16:28:28', 0),
(999, 9, 621, '2020-04-17', 0, '2020-04-17 16:28:50', '2020-04-17 16:28:50', 0),
(1000, 10, 621, '2020-04-17', 0, '2020-04-17 16:28:50', '2020-04-17 16:28:50', 0),
(1001, 9, 620, '2020-04-17', 0, '2020-04-17 16:29:20', '2020-04-17 16:29:20', 0),
(1002, 10, 620, '2020-04-17', 0, '2020-04-17 16:29:20', '2020-04-17 16:29:20', 0),
(1003, 9, 619, '2020-04-17', 0, '2020-04-17 16:31:39', '2020-04-17 16:31:39', 0),
(1004, 10, 619, '2020-04-17', 0, '2020-04-17 16:31:39', '2020-04-17 16:31:39', 0),
(1005, 9, 618, '2020-04-17', 0, '2020-04-17 16:32:06', '2020-04-17 16:32:06', 0),
(1006, 10, 618, '2020-04-17', 0, '2020-04-17 16:32:06', '2020-04-17 16:32:06', 0),
(1007, 9, 617, '2020-04-17', 0, '2020-04-17 16:32:38', '2020-04-17 16:32:38', 0),
(1008, 10, 617, '2020-04-17', 0, '2020-04-17 16:32:38', '2020-04-17 16:32:38', 0),
(1009, 9, 616, '2020-04-17', 0, '2020-04-17 16:33:08', '2020-04-17 16:33:08', 0),
(1010, 10, 616, '2020-04-17', 0, '2020-04-17 16:33:08', '2020-04-17 16:33:08', 0),
(1011, 9, 615, '2020-04-17', 0, '2020-04-17 16:33:45', '2020-04-17 16:33:45', 0),
(1012, 10, 615, '2020-04-17', 0, '2020-04-17 16:33:45', '2020-04-17 16:33:45', 0),
(1013, 9, 614, '2020-04-17', 0, '2020-04-17 16:36:57', '2020-04-17 16:36:57', 0),
(1014, 10, 614, '2020-04-17', 0, '2020-04-17 16:36:57', '2020-04-17 16:36:57', 0),
(1015, 9, 613, '2020-04-17', 0, '2020-04-17 16:37:08', '2020-04-17 16:37:08', 0),
(1016, 10, 613, '2020-04-17', 0, '2020-04-17 16:37:08', '2020-04-17 16:37:08', 0),
(1017, 9, 612, '2020-04-17', 0, '2020-04-17 16:37:20', '2020-04-17 16:37:20', 0),
(1018, 10, 612, '2020-04-17', 0, '2020-04-17 16:37:20', '2020-04-17 16:37:20', 0),
(1019, 9, 611, '2020-04-17', 0, '2020-04-17 16:37:31', '2020-04-17 16:37:31', 0),
(1020, 10, 611, '2020-04-17', 0, '2020-04-17 16:37:31', '2020-04-17 16:37:31', 0),
(1021, 9, 610, '2020-04-17', 0, '2020-04-17 16:37:43', '2020-04-17 16:37:43', 0),
(1022, 10, 610, '2020-04-17', 0, '2020-04-17 16:37:43', '2020-04-17 16:37:43', 0),
(1023, 9, 609, '2020-04-17', 0, '2020-04-17 16:37:54', '2020-04-17 16:37:54', 0),
(1024, 10, 609, '2020-04-17', 0, '2020-04-17 16:37:54', '2020-04-17 16:37:54', 0),
(1025, 9, 637, '2020-04-17', 0, '2020-04-17 16:49:32', '2020-04-17 16:49:32', 0),
(1026, 10, 637, '2020-04-17', 0, '2020-04-17 16:49:32', '2020-04-17 16:49:32', 0),
(1027, 9, 636, '2020-04-17', 0, '2020-04-17 16:51:08', '2020-04-17 16:51:08', 0),
(1028, 10, 636, '2020-04-17', 0, '2020-04-17 16:51:08', '2020-04-17 16:51:08', 0),
(1029, 9, 635, '2020-04-17', 0, '2020-04-17 16:51:40', '2020-04-17 16:51:40', 0),
(1030, 10, 635, '2020-04-17', 0, '2020-04-17 16:51:40', '2020-04-17 16:51:40', 0),
(1031, 9, 634, '2020-04-17', 0, '2020-04-17 16:52:34', '2020-04-17 16:52:34', 0),
(1032, 10, 634, '2020-04-17', 0, '2020-04-17 16:52:34', '2020-04-17 16:52:34', 0),
(1033, 9, 535, '2020-04-17', 0, '2020-04-17 17:37:14', '2020-04-17 17:37:14', 0),
(1034, 10, 535, '2020-04-17', 0, '2020-04-17 17:37:14', '2020-04-17 17:37:14', 0),
(1035, 9, 598, '2020-04-17', 0, '2020-04-17 17:38:44', '2020-04-17 17:38:44', 0),
(1036, 10, 598, '2020-04-17', 0, '2020-04-17 17:38:44', '2020-04-17 17:38:44', 0),
(1037, 9, 597, '2020-04-17', 0, '2020-04-17 17:39:02', '2020-04-17 17:39:02', 0),
(1038, 10, 597, '2020-04-17', 0, '2020-04-17 17:39:02', '2020-04-17 17:39:02', 0),
(1039, 9, 596, '2020-04-17', 0, '2020-04-17 17:39:30', '2020-04-17 17:39:30', 0),
(1040, 10, 596, '2020-04-17', 0, '2020-04-17 17:39:30', '2020-04-17 17:39:30', 0),
(1041, 9, 595, '2020-04-17', 0, '2020-04-17 17:39:45', '2020-04-17 17:39:45', 0),
(1042, 10, 595, '2020-04-17', 0, '2020-04-17 17:39:45', '2020-04-17 17:39:45', 0),
(1043, 9, 594, '2020-04-17', 0, '2020-04-17 17:40:02', '2020-04-17 17:40:02', 0),
(1044, 10, 594, '2020-04-17', 0, '2020-04-17 17:40:02', '2020-04-17 17:40:02', 0),
(1045, 9, 593, '2020-04-17', 0, '2020-04-17 17:40:19', '2020-04-17 17:40:19', 0),
(1046, 10, 593, '2020-04-17', 0, '2020-04-17 17:40:19', '2020-04-17 17:40:19', 0),
(1047, 9, 592, '2020-04-17', 0, '2020-04-17 17:40:34', '2020-04-17 17:40:34', 0),
(1048, 10, 592, '2020-04-17', 0, '2020-04-17 17:40:34', '2020-04-17 17:40:34', 0),
(1049, 9, 591, '2020-04-17', 0, '2020-04-17 17:40:51', '2020-04-17 17:40:51', 0),
(1050, 10, 591, '2020-04-17', 0, '2020-04-17 17:40:51', '2020-04-17 17:40:51', 0),
(1051, 9, 587, '2020-04-17', 0, '2020-04-17 17:41:07', '2020-04-17 17:41:07', 0),
(1052, 10, 587, '2020-04-17', 0, '2020-04-17 17:41:07', '2020-04-17 17:41:07', 0),
(1053, 9, 590, '2020-04-17', 0, '2020-04-17 17:41:24', '2020-04-17 17:41:24', 0),
(1054, 10, 590, '2020-04-17', 0, '2020-04-17 17:41:24', '2020-04-17 17:41:24', 0),
(1055, 9, 589, '2020-04-17', 0, '2020-04-17 17:41:39', '2020-04-17 17:41:39', 0),
(1056, 10, 589, '2020-04-17', 0, '2020-04-17 17:41:39', '2020-04-17 17:41:39', 0),
(1057, 9, 588, '2020-04-17', 0, '2020-04-17 17:41:57', '2020-04-17 17:41:57', 0),
(1058, 10, 588, '2020-04-17', 0, '2020-04-17 17:41:57', '2020-04-17 17:41:57', 0),
(1059, 9, 586, '2020-04-17', 0, '2020-04-17 17:42:17', '2020-04-17 17:42:17', 0),
(1060, 10, 586, '2020-04-17', 0, '2020-04-17 17:42:17', '2020-04-17 17:42:17', 0),
(1061, 9, 585, '2020-04-17', 0, '2020-04-17 17:42:33', '2020-04-17 17:42:33', 0),
(1062, 10, 585, '2020-04-17', 0, '2020-04-17 17:42:33', '2020-04-17 17:42:33', 0),
(1063, 9, 584, '2020-04-17', 0, '2020-04-17 17:42:59', '2020-04-17 17:42:59', 0),
(1064, 10, 584, '2020-04-17', 0, '2020-04-17 17:42:59', '2020-04-17 17:42:59', 0),
(1065, 9, 583, '2020-04-17', 0, '2020-04-17 17:43:18', '2020-04-17 17:43:18', 0),
(1066, 10, 583, '2020-04-17', 0, '2020-04-17 17:43:18', '2020-04-17 17:43:18', 0),
(1067, 9, 582, '2020-04-17', 0, '2020-04-17 17:43:34', '2020-04-17 17:43:34', 0),
(1068, 10, 582, '2020-04-17', 0, '2020-04-17 17:43:34', '2020-04-17 17:43:34', 0),
(1069, 9, 536, '2020-04-17', 0, '2020-04-17 17:43:53', '2020-04-17 17:43:53', 0),
(1070, 10, 536, '2020-04-17', 0, '2020-04-17 17:43:53', '2020-04-17 17:43:53', 0),
(1071, 9, 640, '2020-04-17', 0, '2020-04-17 17:43:56', '2020-04-17 17:43:56', 0),
(1072, 10, 640, '2020-04-17', 0, '2020-04-17 17:43:56', '2020-04-17 17:43:56', 0),
(1073, 9, 639, '2020-04-17', 0, '2020-04-17 17:44:06', '2020-04-17 17:44:06', 0),
(1074, 10, 639, '2020-04-17', 0, '2020-04-17 17:44:06', '2020-04-17 17:44:06', 0),
(1075, 9, 581, '2020-04-17', 0, '2020-04-17 17:44:09', '2020-04-17 17:44:09', 0),
(1076, 10, 581, '2020-04-17', 0, '2020-04-17 17:44:09', '2020-04-17 17:44:09', 0),
(1077, 9, 638, '2020-04-17', 0, '2020-04-17 17:44:15', '2020-04-17 17:44:15', 0),
(1078, 10, 638, '2020-04-17', 0, '2020-04-17 17:44:15', '2020-04-17 17:44:15', 0),
(1079, 9, 580, '2020-04-17', 0, '2020-04-17 17:44:25', '2020-04-17 17:44:25', 0),
(1080, 10, 580, '2020-04-17', 0, '2020-04-17 17:44:25', '2020-04-17 17:44:25', 0),
(1081, 9, 579, '2020-04-17', 0, '2020-04-17 17:44:42', '2020-04-17 17:44:42', 0),
(1082, 10, 579, '2020-04-17', 0, '2020-04-17 17:44:42', '2020-04-17 17:44:42', 0),
(1083, 9, 578, '2020-04-17', 0, '2020-04-17 17:45:07', '2020-04-17 17:45:07', 0),
(1084, 10, 578, '2020-04-17', 0, '2020-04-17 17:45:07', '2020-04-17 17:45:07', 0),
(1085, 9, 575, '2020-04-17', 0, '2020-04-17 17:45:26', '2020-04-17 17:45:26', 0),
(1086, 10, 575, '2020-04-17', 0, '2020-04-17 17:45:26', '2020-04-17 17:45:26', 0),
(1087, 9, 577, '2020-04-17', 0, '2020-04-17 17:45:42', '2020-04-17 17:45:42', 0),
(1088, 10, 577, '2020-04-17', 0, '2020-04-17 17:45:42', '2020-04-17 17:45:42', 0),
(1089, 9, 576, '2020-04-17', 0, '2020-04-17 17:45:58', '2020-04-17 17:45:58', 0),
(1090, 10, 576, '2020-04-17', 0, '2020-04-17 17:45:58', '2020-04-17 17:45:58', 0),
(1091, 9, 574, '2020-04-17', 0, '2020-04-17 17:46:13', '2020-04-17 17:46:13', 0),
(1092, 10, 574, '2020-04-17', 0, '2020-04-17 17:46:13', '2020-04-17 17:46:13', 0),
(1093, 9, 573, '2020-04-17', 0, '2020-04-17 17:46:27', '2020-04-17 17:46:27', 0),
(1094, 10, 573, '2020-04-17', 0, '2020-04-17 17:46:27', '2020-04-17 17:46:27', 0);
INSERT INTO `posts` (`id`, `operator_id`, `video_id`, `show_date`, `active`, `created_at`, `updated_at`, `slider`) VALUES
(1095, 9, 572, '2020-04-17', 0, '2020-04-17 17:46:41', '2020-04-17 17:46:41', 0),
(1096, 10, 572, '2020-04-17', 0, '2020-04-17 17:46:41', '2020-04-17 17:46:41', 0),
(1097, 9, 571, '2020-04-17', 0, '2020-04-17 17:46:55', '2020-04-17 17:46:55', 0),
(1098, 10, 571, '2020-04-17', 0, '2020-04-17 17:46:55', '2020-04-17 17:46:55', 0),
(1099, 9, 570, '2020-04-17', 0, '2020-04-17 17:47:10', '2020-04-17 17:47:10', 0),
(1100, 10, 570, '2020-04-17', 0, '2020-04-17 17:47:10', '2020-04-17 17:47:10', 0),
(1101, 9, 565, '2020-04-17', 0, '2020-04-17 17:47:27', '2020-04-17 17:47:27', 0),
(1102, 10, 565, '2020-04-17', 0, '2020-04-17 17:47:27', '2020-04-17 17:47:27', 0),
(1103, 9, 569, '2020-04-17', 0, '2020-04-17 17:47:41', '2020-04-17 17:47:41', 0),
(1104, 10, 569, '2020-04-17', 0, '2020-04-17 17:47:41', '2020-04-17 17:47:41', 0),
(1105, 9, 568, '2020-04-17', 0, '2020-04-17 17:47:54', '2020-04-17 17:47:54', 0),
(1106, 10, 568, '2020-04-17', 0, '2020-04-17 17:47:54', '2020-04-17 17:47:54', 0),
(1107, 9, 567, '2020-04-17', 0, '2020-04-17 17:48:08', '2020-04-17 17:48:08', 0),
(1108, 10, 567, '2020-04-17', 0, '2020-04-17 17:48:08', '2020-04-17 17:48:08', 0),
(1109, 9, 566, '2020-04-17', 0, '2020-04-17 17:48:25', '2020-04-17 17:48:25', 0),
(1110, 10, 566, '2020-04-17', 0, '2020-04-17 17:48:25', '2020-04-17 17:48:25', 0),
(1111, 9, 554, '2020-04-17', 0, '2020-04-17 17:48:43', '2020-04-17 17:48:43', 0),
(1112, 10, 554, '2020-04-17', 0, '2020-04-17 17:48:43', '2020-04-17 17:48:43', 0),
(1113, 9, 564, '2020-04-17', 0, '2020-04-17 17:48:59', '2020-04-17 17:48:59', 0),
(1114, 10, 564, '2020-04-17', 0, '2020-04-17 17:48:59', '2020-04-17 17:48:59', 0),
(1115, 9, 563, '2020-04-17', 0, '2020-04-17 17:49:11', '2020-04-17 17:49:11', 0),
(1116, 10, 563, '2020-04-17', 0, '2020-04-17 17:49:11', '2020-04-17 17:49:11', 0),
(1117, 9, 562, '2020-04-17', 0, '2020-04-17 17:49:26', '2020-04-17 17:49:26', 0),
(1118, 10, 562, '2020-04-17', 0, '2020-04-17 17:49:26', '2020-04-17 17:49:26', 0),
(1119, 9, 561, '2020-04-17', 0, '2020-04-17 17:49:41', '2020-04-17 17:49:41', 0),
(1120, 10, 561, '2020-04-17', 0, '2020-04-17 17:49:41', '2020-04-17 17:49:41', 0),
(1121, 9, 560, '2020-04-17', 0, '2020-04-17 17:49:57', '2020-04-17 17:49:57', 0),
(1122, 10, 560, '2020-04-17', 0, '2020-04-17 17:49:57', '2020-04-17 17:49:57', 0),
(1123, 9, 558, '2020-04-17', 0, '2020-04-17 17:50:14', '2020-04-17 17:50:14', 0),
(1124, 10, 558, '2020-04-17', 0, '2020-04-17 17:50:14', '2020-04-17 17:50:14', 0),
(1125, 9, 559, '2020-04-17', 0, '2020-04-17 17:50:32', '2020-04-17 17:50:32', 0),
(1126, 10, 559, '2020-04-17', 0, '2020-04-17 17:50:32', '2020-04-17 17:50:32', 0),
(1127, 9, 557, '2020-04-17', 0, '2020-04-17 17:50:48', '2020-04-17 17:50:48', 0),
(1128, 10, 557, '2020-04-17', 0, '2020-04-17 17:50:48', '2020-04-17 17:50:48', 0),
(1129, 9, 555, '2020-04-17', 0, '2020-04-17 17:51:07', '2020-04-17 17:51:07', 0),
(1130, 10, 555, '2020-04-17', 0, '2020-04-17 17:51:07', '2020-04-17 17:51:07', 0),
(1131, 9, 556, '2020-04-17', 0, '2020-04-17 17:51:29', '2020-04-17 17:51:29', 0),
(1132, 10, 556, '2020-04-17', 0, '2020-04-17 17:51:29', '2020-04-17 17:51:29', 0),
(1133, 9, 537, '2020-04-17', 0, '2020-04-17 17:52:05', '2020-04-17 17:52:05', 0),
(1134, 10, 537, '2020-04-17', 0, '2020-04-17 17:52:05', '2020-04-17 17:52:05', 0),
(1135, 9, 553, '2020-04-17', 0, '2020-04-17 17:52:20', '2020-04-17 17:52:20', 0),
(1136, 10, 553, '2020-04-17', 0, '2020-04-17 17:52:20', '2020-04-17 17:52:20', 0),
(1137, 9, 538, '2020-04-17', 0, '2020-04-17 17:52:36', '2020-04-17 17:52:36', 0),
(1138, 10, 538, '2020-04-17', 0, '2020-04-17 17:52:36', '2020-04-17 17:52:36', 0),
(1139, 9, 552, '2020-04-17', 0, '2020-04-17 17:52:54', '2020-04-17 17:52:54', 0),
(1140, 10, 552, '2020-04-17', 0, '2020-04-17 17:52:54', '2020-04-17 17:52:54', 0),
(1141, 9, 551, '2020-04-17', 0, '2020-04-17 17:53:12', '2020-04-17 17:53:12', 0),
(1142, 10, 551, '2020-04-17', 0, '2020-04-17 17:53:12', '2020-04-17 17:53:12', 0),
(1143, 9, 550, '2020-04-17', 0, '2020-04-17 17:53:30', '2020-04-17 17:53:30', 0),
(1144, 10, 550, '2020-04-17', 0, '2020-04-17 17:53:30', '2020-04-17 17:53:30', 0),
(1145, 9, 649, '2020-04-17', 0, '2020-04-17 17:53:33', '2020-04-17 17:53:33', 0),
(1146, 10, 649, '2020-04-17', 0, '2020-04-17 17:53:33', '2020-04-17 17:53:33', 0),
(1147, 9, 648, '2020-04-17', 0, '2020-04-17 17:53:43', '2020-04-17 17:53:43', 0),
(1148, 10, 648, '2020-04-17', 0, '2020-04-17 17:53:43', '2020-04-17 17:53:43', 0),
(1149, 9, 647, '2020-04-17', 0, '2020-04-17 17:53:51', '2020-04-17 17:53:51', 0),
(1150, 10, 647, '2020-04-17', 0, '2020-04-17 17:53:51', '2020-04-17 17:53:51', 0),
(1151, 9, 539, '2020-04-17', 0, '2020-04-17 17:53:53', '2020-04-17 17:53:53', 0),
(1152, 10, 539, '2020-04-17', 0, '2020-04-17 17:53:53', '2020-04-17 17:53:53', 0),
(1153, 9, 646, '2020-04-17', 0, '2020-04-17 17:54:01', '2020-04-17 17:54:01', 0),
(1154, 10, 646, '2020-04-17', 0, '2020-04-17 17:54:01', '2020-04-17 17:54:01', 0),
(1155, 9, 545, '2020-04-17', 0, '2020-04-17 17:54:07', '2020-04-17 17:54:07', 0),
(1156, 10, 545, '2020-04-17', 0, '2020-04-17 17:54:07', '2020-04-17 17:54:07', 0),
(1157, 9, 645, '2020-04-17', 0, '2020-04-17 17:54:11', '2020-04-17 17:54:11', 0),
(1158, 10, 645, '2020-04-17', 0, '2020-04-17 17:54:11', '2020-04-17 17:54:11', 0),
(1159, 9, 644, '2020-04-17', 0, '2020-04-17 17:54:21', '2020-04-17 17:54:21', 0),
(1160, 10, 644, '2020-04-17', 0, '2020-04-17 17:54:21', '2020-04-17 17:54:21', 0),
(1161, 9, 549, '2020-04-17', 0, '2020-04-17 17:54:28', '2020-04-17 17:54:28', 0),
(1162, 10, 549, '2020-04-17', 0, '2020-04-17 17:54:28', '2020-04-17 17:54:28', 0),
(1163, 9, 643, '2020-04-17', 0, '2020-04-17 17:54:32', '2020-04-17 17:54:32', 0),
(1164, 10, 643, '2020-04-17', 0, '2020-04-17 17:54:32', '2020-04-17 17:54:32', 0),
(1165, 9, 546, '2020-04-17', 0, '2020-04-17 17:54:46', '2020-04-17 17:54:46', 0),
(1166, 10, 546, '2020-04-17', 0, '2020-04-17 17:54:46', '2020-04-17 17:54:46', 0),
(1167, 9, 642, '2020-04-17', 0, '2020-04-17 17:54:48', '2020-04-17 17:54:48', 0),
(1168, 10, 642, '2020-04-17', 0, '2020-04-17 17:54:48', '2020-04-17 17:54:48', 0),
(1169, 9, 641, '2020-04-17', 0, '2020-04-17 17:54:59', '2020-04-17 17:54:59', 0),
(1170, 10, 641, '2020-04-17', 0, '2020-04-17 17:54:59', '2020-04-17 17:54:59', 0),
(1171, 9, 548, '2020-04-17', 0, '2020-04-17 17:55:01', '2020-04-17 17:55:01', 0),
(1172, 10, 548, '2020-04-17', 0, '2020-04-17 17:55:01', '2020-04-17 17:55:01', 0),
(1173, 9, 547, '2020-04-17', 0, '2020-04-17 17:55:23', '2020-04-17 17:55:23', 0),
(1174, 10, 547, '2020-04-17', 0, '2020-04-17 17:55:23', '2020-04-17 17:55:23', 0),
(1175, 9, 540, '2020-04-17', 0, '2020-04-17 17:55:40', '2020-04-17 17:55:40', 0),
(1176, 10, 540, '2020-04-17', 0, '2020-04-17 17:55:40', '2020-04-17 17:55:40', 0),
(1177, 9, 540, '2020-04-17', 0, '2020-04-17 17:55:55', '2020-04-17 17:55:55', 0),
(1178, 10, 540, '2020-04-17', 0, '2020-04-17 17:55:55', '2020-04-17 17:55:55', 0),
(1179, 9, 544, '2020-04-17', 0, '2020-04-17 17:55:56', '2020-04-17 17:55:56', 0),
(1180, 10, 544, '2020-04-17', 0, '2020-04-17 17:55:56', '2020-04-17 17:55:56', 0),
(1181, 9, 541, '2020-04-17', 0, '2020-04-17 17:56:11', '2020-04-17 17:56:11', 0),
(1182, 10, 541, '2020-04-17', 0, '2020-04-17 17:56:11', '2020-04-17 17:56:11', 0),
(1183, 9, 543, '2020-04-17', 0, '2020-04-17 17:56:11', '2020-04-17 17:56:11', 0),
(1184, 10, 543, '2020-04-17', 0, '2020-04-17 17:56:11', '2020-04-17 17:56:11', 0),
(1185, 9, 542, '2020-04-17', 0, '2020-04-17 17:56:38', '2020-04-17 17:56:38', 0),
(1186, 10, 542, '2020-04-17', 0, '2020-04-17 17:56:38', '2020-04-17 17:56:38', 0),
(1187, 9, 668, '2020-04-17', 0, '2020-04-17 20:30:56', '2020-04-17 20:30:56', 0),
(1188, 10, 668, '2020-04-17', 0, '2020-04-17 20:30:56', '2020-04-17 20:30:56', 0),
(1189, 9, 667, '2020-04-17', 0, '2020-04-17 20:31:05', '2020-04-17 20:31:05', 0),
(1190, 10, 667, '2020-04-17', 0, '2020-04-17 20:31:05', '2020-04-17 20:31:05', 0),
(1191, 9, 666, '2020-04-17', 0, '2020-04-17 20:31:14', '2020-04-17 20:31:14', 0),
(1192, 10, 666, '2020-04-17', 0, '2020-04-17 20:31:14', '2020-04-17 20:31:14', 0),
(1193, 9, 665, '2020-04-17', 0, '2020-04-17 20:31:23', '2020-04-17 20:31:23', 0),
(1194, 10, 665, '2020-04-17', 0, '2020-04-17 20:31:23', '2020-04-17 20:31:23', 0),
(1195, 9, 664, '2020-04-17', 0, '2020-04-17 20:31:32', '2020-04-17 20:31:32', 0),
(1196, 10, 664, '2020-04-17', 0, '2020-04-17 20:31:32', '2020-04-17 20:31:32', 0),
(1197, 9, 663, '2020-04-17', 0, '2020-04-17 20:31:41', '2020-04-17 20:31:41', 0),
(1198, 10, 663, '2020-04-17', 0, '2020-04-17 20:31:41', '2020-04-17 20:31:41', 0),
(1199, 9, 662, '2020-04-17', 0, '2020-04-17 20:31:50', '2020-04-17 20:31:50', 0),
(1200, 10, 662, '2020-04-17', 0, '2020-04-17 20:31:50', '2020-04-17 20:31:50', 0),
(1201, 9, 661, '2020-04-17', 0, '2020-04-17 20:31:59', '2020-04-17 20:31:59', 0),
(1202, 10, 661, '2020-04-17', 0, '2020-04-17 20:31:59', '2020-04-17 20:31:59', 0),
(1203, 9, 660, '2020-04-17', 0, '2020-04-17 20:32:09', '2020-04-17 20:32:09', 0),
(1204, 10, 660, '2020-04-17', 0, '2020-04-17 20:32:09', '2020-04-17 20:32:09', 0),
(1205, 9, 659, '2020-04-17', 0, '2020-04-17 20:32:18', '2020-04-17 20:32:18', 0),
(1206, 10, 659, '2020-04-17', 0, '2020-04-17 20:32:18', '2020-04-17 20:32:18', 0),
(1207, 9, 658, '2020-04-17', 0, '2020-04-17 20:32:27', '2020-04-17 20:32:27', 0),
(1208, 10, 658, '2020-04-17', 0, '2020-04-17 20:32:27', '2020-04-17 20:32:27', 0),
(1209, 9, 657, '2020-04-17', 0, '2020-04-17 20:32:37', '2020-04-17 20:32:37', 0),
(1210, 10, 657, '2020-04-17', 0, '2020-04-17 20:32:37', '2020-04-17 20:32:37', 0),
(1211, 9, 656, '2020-04-17', 0, '2020-04-17 20:32:47', '2020-04-17 20:32:47', 0),
(1212, 10, 656, '2020-04-17', 0, '2020-04-17 20:32:47', '2020-04-17 20:32:47', 0),
(1213, 9, 655, '2020-04-17', 0, '2020-04-17 20:32:57', '2020-04-17 20:32:57', 0),
(1214, 10, 655, '2020-04-17', 0, '2020-04-17 20:32:57', '2020-04-17 20:32:57', 0),
(1215, 9, 654, '2020-04-17', 0, '2020-04-17 20:33:07', '2020-04-17 20:33:07', 0),
(1216, 10, 654, '2020-04-17', 0, '2020-04-17 20:33:07', '2020-04-17 20:33:07', 0),
(1217, 9, 653, '2020-04-17', 0, '2020-04-17 20:33:17', '2020-04-17 20:33:17', 0),
(1218, 10, 653, '2020-04-17', 0, '2020-04-17 20:33:17', '2020-04-17 20:33:17', 0),
(1219, 9, 652, '2020-04-17', 0, '2020-04-17 20:33:27', '2020-04-17 20:33:27', 0),
(1220, 10, 652, '2020-04-17', 0, '2020-04-17 20:33:27', '2020-04-17 20:33:27', 0),
(1221, 9, 651, '2020-04-17', 0, '2020-04-17 20:33:36', '2020-04-17 20:33:36', 0),
(1222, 10, 651, '2020-04-17', 0, '2020-04-17 20:33:36', '2020-04-17 20:33:36', 0),
(1223, 9, 650, '2020-04-17', 0, '2020-04-17 20:33:46', '2020-04-17 20:33:46', 0),
(1224, 10, 650, '2020-04-17', 0, '2020-04-17 20:33:46', '2020-04-17 20:33:46', 0),
(1225, 9, 669, '2020-04-17', 0, '2020-04-17 20:43:18', '2020-04-17 20:43:18', 0),
(1226, 10, 669, '2020-04-17', 0, '2020-04-17 20:43:18', '2020-04-17 20:43:18', 0),
(1227, 9, 670, '2020-04-17', 0, '2020-04-17 20:43:28', '2020-04-17 20:43:28', 0),
(1228, 10, 670, '2020-04-17', 0, '2020-04-17 20:43:28', '2020-04-17 20:43:28', 0),
(1229, 9, 676, '2020-04-17', 0, '2020-04-17 20:55:48', '2020-04-17 20:55:48', 0),
(1230, 10, 676, '2020-04-17', 0, '2020-04-17 20:55:48', '2020-04-17 20:55:48', 0),
(1231, 9, 675, '2020-04-17', 0, '2020-04-17 20:55:57', '2020-04-17 20:55:57', 0),
(1232, 10, 675, '2020-04-17', 0, '2020-04-17 20:55:57', '2020-04-17 20:55:57', 0),
(1233, 9, 674, '2020-04-17', 0, '2020-04-17 20:56:06', '2020-04-17 20:56:06', 0),
(1234, 10, 674, '2020-04-17', 0, '2020-04-17 20:56:06', '2020-04-17 20:56:06', 0),
(1235, 9, 673, '2020-04-17', 0, '2020-04-17 20:56:14', '2020-04-17 20:56:14', 0),
(1236, 10, 673, '2020-04-17', 0, '2020-04-17 20:56:14', '2020-04-17 20:56:14', 0),
(1237, 9, 672, '2020-04-17', 0, '2020-04-17 20:56:24', '2020-04-17 20:56:24', 0),
(1238, 10, 672, '2020-04-17', 0, '2020-04-17 20:56:24', '2020-04-17 20:56:24', 0),
(1239, 9, 671, '2020-04-17', 0, '2020-04-17 20:56:32', '2020-04-17 20:56:32', 0),
(1240, 10, 671, '2020-04-17', 0, '2020-04-17 20:56:32', '2020-04-17 20:56:32', 0),
(1241, 9, 678, '2020-04-17', 0, '2020-04-17 23:01:51', '2020-04-17 23:01:51', 0),
(1242, 10, 678, '2020-04-17', 0, '2020-04-17 23:01:51', '2020-04-17 23:01:51', 0),
(1243, 9, 679, '2020-04-17', 0, '2020-04-17 23:02:15', '2020-04-17 23:02:15', 0),
(1244, 10, 679, '2020-04-17', 0, '2020-04-17 23:02:15', '2020-04-17 23:02:15', 0),
(1245, 9, 680, '2020-04-17', 0, '2020-04-17 23:02:36', '2020-04-17 23:02:36', 0),
(1246, 10, 680, '2020-04-17', 0, '2020-04-17 23:02:36', '2020-04-17 23:02:36', 0),
(1247, 9, 681, '2020-04-17', 0, '2020-04-17 23:02:54', '2020-04-17 23:02:54', 0),
(1248, 10, 681, '2020-04-17', 0, '2020-04-17 23:02:54', '2020-04-17 23:02:54', 0),
(1257, 9, 686, '2020-04-17', 0, '2020-04-17 23:58:20', '2020-04-17 23:58:20', 0),
(1258, 10, 686, '2020-04-17', 0, '2020-04-17 23:58:20', '2020-04-17 23:58:20', 0),
(1259, 9, 688, '2020-04-17', 0, '2020-04-17 23:58:43', '2020-04-17 23:58:43', 0),
(1260, 10, 688, '2020-04-17', 0, '2020-04-17 23:58:43', '2020-04-17 23:58:43', 0),
(1261, 9, 689, '2020-04-17', 0, '2020-04-17 23:58:55', '2020-04-17 23:58:55', 0),
(1262, 10, 689, '2020-04-17', 0, '2020-04-17 23:58:55', '2020-04-17 23:58:55', 0),
(1263, 9, 690, '2020-04-17', 0, '2020-04-17 23:59:13', '2020-04-17 23:59:13', 0),
(1264, 10, 690, '2020-04-17', 0, '2020-04-17 23:59:13', '2020-04-17 23:59:13', 0),
(1265, 9, 691, '2020-04-17', 0, '2020-04-17 23:59:25', '2020-04-17 23:59:25', 0),
(1266, 10, 691, '2020-04-17', 0, '2020-04-17 23:59:25', '2020-04-17 23:59:25', 0),
(1267, 9, 693, '2020-04-17', 0, '2020-04-17 23:59:38', '2020-04-17 23:59:38', 0),
(1268, 10, 693, '2020-04-17', 0, '2020-04-17 23:59:38', '2020-04-17 23:59:38', 0),
(1269, 9, 694, '2020-04-17', 0, '2020-04-17 23:59:55', '2020-04-17 23:59:55', 0),
(1270, 10, 694, '2020-04-17', 0, '2020-04-17 23:59:55', '2020-04-17 23:59:55', 0),
(1271, 9, 695, '2020-04-17', 0, '2020-04-18 00:00:09', '2020-04-18 00:00:09', 0),
(1272, 10, 695, '2020-04-17', 0, '2020-04-18 00:00:09', '2020-04-18 00:00:09', 0),
(1273, 9, 696, '2020-04-17', 0, '2020-04-18 00:00:19', '2020-04-18 00:00:19', 0),
(1274, 10, 696, '2020-04-17', 0, '2020-04-18 00:00:19', '2020-04-18 00:00:19', 0),
(1275, 9, 697, '2020-04-17', 0, '2020-04-18 00:00:28', '2020-04-18 00:00:28', 0),
(1276, 10, 697, '2020-04-17', 0, '2020-04-18 00:00:28', '2020-04-18 00:00:28', 0),
(1277, 9, 698, '2020-04-17', 0, '2020-04-18 00:00:39', '2020-04-18 00:00:39', 0),
(1278, 10, 698, '2020-04-17', 0, '2020-04-18 00:00:39', '2020-04-18 00:00:39', 0),
(1279, 9, 699, '2020-04-17', 0, '2020-04-18 00:00:49', '2020-04-18 00:00:49', 0),
(1280, 10, 699, '2020-04-17', 0, '2020-04-18 00:00:49', '2020-04-18 00:00:49', 0),
(1295, 9, 707, '2020-04-17', 0, '2020-04-18 00:50:01', '2020-04-18 00:50:01', 1),
(1296, 10, 707, '2020-04-17', 0, '2020-04-18 00:50:01', '2020-04-18 00:50:01', 1),
(1297, 9, 708, '2020-04-17', 0, '2020-04-18 00:50:13', '2020-04-18 00:50:13', 1),
(1298, 10, 708, '2020-04-17', 0, '2020-04-18 00:50:13', '2020-04-18 00:50:13', 1),
(1299, 9, 709, '2020-04-17', 0, '2020-04-18 00:50:22', '2020-04-18 00:50:22', 1),
(1300, 10, 709, '2020-04-17', 0, '2020-04-18 00:50:22', '2020-04-18 00:50:22', 1),
(1301, 9, 710, '2020-04-17', 0, '2020-04-18 00:52:22', '2020-04-18 00:52:22', 1),
(1302, 10, 710, '2020-04-17', 0, '2020-04-18 00:52:22', '2020-04-18 00:52:22', 1),
(1303, 9, 711, '2020-04-17', 0, '2020-04-18 00:59:05', '2020-04-18 00:59:05', 1),
(1304, 10, 711, '2020-04-17', 0, '2020-04-18 00:59:05', '2020-04-18 00:59:05', 1),
(1305, 9, 712, '2020-04-17', 0, '2020-04-18 00:59:33', '2020-04-18 00:59:33', 1),
(1306, 10, 712, '2020-04-17', 0, '2020-04-18 00:59:33', '2020-04-18 00:59:33', 1),
(1307, 9, 713, '2020-04-17', 0, '2020-04-18 02:11:02', '2020-04-18 02:11:02', 1),
(1308, 10, 713, '2020-04-17', 0, '2020-04-18 02:11:02', '2020-04-18 02:11:02', 1),
(1309, 9, 714, '2020-04-17', 0, '2020-04-18 02:11:15', '2020-04-18 02:11:15', 1),
(1310, 10, 714, '2020-04-17', 0, '2020-04-18 02:11:15', '2020-04-18 02:11:15', 1),
(1311, 9, 715, '2020-04-17', 0, '2020-04-18 02:11:26', '2020-04-18 02:11:26', 1),
(1312, 10, 715, '2020-04-17', 0, '2020-04-18 02:11:26', '2020-04-18 02:11:26', 1),
(1313, 9, 716, '2020-04-17', 0, '2020-04-18 02:11:38', '2020-04-18 02:11:38', 1),
(1314, 10, 716, '2020-04-17', 0, '2020-04-18 02:11:38', '2020-04-18 02:11:38', 1),
(1315, 9, 717, '2020-04-17', 0, '2020-04-18 02:11:49', '2020-04-18 02:11:49', 1),
(1316, 10, 717, '2020-04-17', 0, '2020-04-18 02:11:49', '2020-04-18 02:11:49', 1),
(1317, 9, 718, '2020-04-17', 0, '2020-04-18 02:12:05', '2020-04-18 02:12:05', 1),
(1318, 10, 718, '2020-04-17', 0, '2020-04-18 02:12:05', '2020-04-18 02:12:05', 1),
(1319, 9, 724, '2020-04-17', 0, '2020-04-18 03:55:34', '2020-04-18 03:55:34', 1),
(1320, 10, 724, '2020-04-17', 0, '2020-04-18 03:55:34', '2020-04-18 03:55:34', 1),
(1321, 9, 723, '2020-04-18', 0, '2020-04-18 04:01:52', '2020-04-18 04:01:52', 1),
(1322, 10, 723, '2020-04-18', 0, '2020-04-18 04:01:52', '2020-04-18 04:01:52', 1),
(1323, 9, 722, '2020-04-18', 0, '2020-04-18 04:02:26', '2020-04-18 04:02:26', 1),
(1324, 10, 722, '2020-04-18', 0, '2020-04-18 04:02:26', '2020-04-18 04:02:26', 1),
(1325, 9, 721, '2020-04-18', 0, '2020-04-18 04:03:04', '2020-04-18 04:03:04', 1),
(1326, 10, 721, '2020-04-18', 0, '2020-04-18 04:03:04', '2020-04-18 04:03:04', 1),
(1329, 9, 720, '2020-04-18', 0, '2020-04-18 04:03:59', '2020-04-18 04:03:59', 1),
(1330, 10, 720, '2020-04-18', 0, '2020-04-18 04:03:59', '2020-04-18 04:03:59', 1),
(1331, 9, 719, '2020-04-18', 0, '2020-04-18 04:05:29', '2020-04-18 04:05:29', 1),
(1332, 10, 719, '2020-04-18', 0, '2020-04-18 04:05:29', '2020-04-18 04:05:29', 1),
(1333, 9, 731, '2020-04-18', 0, '2020-04-18 05:08:29', '2020-04-18 05:08:29', 1),
(1334, 10, 731, '2020-04-18', 0, '2020-04-18 05:08:29', '2020-04-18 05:08:29', 1),
(1335, 9, 730, '2020-04-18', 0, '2020-04-18 05:08:40', '2020-04-18 05:08:40', 1),
(1336, 10, 730, '2020-04-18', 0, '2020-04-18 05:08:40', '2020-04-18 05:08:40', 1),
(1337, 9, 729, '2020-04-18', 0, '2020-04-18 05:09:09', '2020-04-18 05:09:09', 1),
(1338, 10, 729, '2020-04-18', 0, '2020-04-18 05:09:09', '2020-04-18 05:09:09', 1),
(1339, 9, 728, '2020-04-18', 0, '2020-04-18 05:09:25', '2020-04-18 05:09:25', 1),
(1340, 10, 728, '2020-04-18', 0, '2020-04-18 05:09:25', '2020-04-18 05:09:25', 1),
(1341, 9, 726, '2020-04-18', 0, '2020-04-18 05:09:37', '2020-04-18 05:09:37', 1),
(1342, 10, 726, '2020-04-18', 0, '2020-04-18 05:09:37', '2020-04-18 05:09:37', 1),
(1343, 9, 725, '2020-04-18', 0, '2020-04-18 05:09:46', '2020-04-18 05:09:46', 1),
(1344, 10, 725, '2020-04-18', 0, '2020-04-18 05:09:46', '2020-04-18 05:09:46', 1),
(1345, 9, 738, '2020-04-18', 0, '2020-04-18 05:45:53', '2020-04-18 05:45:53', 1),
(1346, 10, 738, '2020-04-18', 0, '2020-04-18 05:45:53', '2020-04-18 05:45:53', 1),
(1347, 9, 737, '2020-04-18', 0, '2020-04-18 05:46:07', '2020-04-18 05:46:07', 1),
(1348, 10, 737, '2020-04-18', 0, '2020-04-18 05:46:07', '2020-04-18 05:46:07', 1),
(1349, 9, 736, '2020-04-18', 0, '2020-04-18 05:46:20', '2020-04-18 05:46:20', 1),
(1350, 10, 736, '2020-04-18', 0, '2020-04-18 05:46:20', '2020-04-18 05:46:20', 1),
(1351, 9, 735, '2020-04-18', 0, '2020-04-18 05:46:35', '2020-04-18 05:46:35', 1),
(1352, 10, 735, '2020-04-18', 0, '2020-04-18 05:46:35', '2020-04-18 05:46:35', 1),
(1353, 9, 734, '2020-04-18', 0, '2020-04-18 05:46:44', '2020-04-18 05:46:44', 1),
(1354, 10, 734, '2020-04-18', 0, '2020-04-18 05:46:44', '2020-04-18 05:46:44', 1),
(1355, 9, 733, '2020-04-18', 0, '2020-04-18 05:46:54', '2020-04-18 05:46:54', 1),
(1356, 10, 733, '2020-04-18', 0, '2020-04-18 05:46:54', '2020-04-18 05:46:54', 1),
(1357, 9, 744, '2020-04-18', 0, '2020-04-18 06:01:53', '2020-04-18 06:01:53', 1),
(1358, 10, 744, '2020-04-18', 0, '2020-04-18 06:01:53', '2020-04-18 06:01:53', 1),
(1359, 9, 743, '2020-04-18', 0, '2020-04-18 06:02:06', '2020-04-18 06:02:06', 1),
(1360, 10, 743, '2020-04-18', 0, '2020-04-18 06:02:06', '2020-04-18 06:02:06', 1),
(1361, 9, 742, '2020-04-18', 0, '2020-04-18 06:02:17', '2020-04-18 06:02:17', 1),
(1362, 10, 742, '2020-04-18', 0, '2020-04-18 06:02:17', '2020-04-18 06:02:17', 1),
(1363, 9, 741, '2020-04-18', 0, '2020-04-18 06:02:32', '2020-04-18 06:02:32', 1),
(1364, 10, 741, '2020-04-18', 0, '2020-04-18 06:02:32', '2020-04-18 06:02:32', 1),
(1365, 9, 740, '2020-04-18', 0, '2020-04-18 06:02:45', '2020-04-18 06:02:45', 1),
(1366, 10, 740, '2020-04-18', 0, '2020-04-18 06:02:45', '2020-04-18 06:02:45', 1),
(1367, 9, 739, '2020-04-18', 0, '2020-04-18 06:02:59', '2020-04-18 06:02:59', 1),
(1368, 10, 739, '2020-04-18', 0, '2020-04-18 06:02:59', '2020-04-18 06:02:59', 1),
(1369, 9, 750, '2020-04-18', 0, '2020-04-18 06:28:50', '2020-04-18 06:28:50', 1),
(1370, 10, 750, '2020-04-18', 0, '2020-04-18 06:28:50', '2020-04-18 06:28:50', 1),
(1371, 9, 749, '2020-04-18', 0, '2020-04-18 06:28:59', '2020-04-18 06:28:59', 1),
(1372, 10, 749, '2020-04-18', 0, '2020-04-18 06:28:59', '2020-04-18 06:28:59', 1),
(1373, 9, 748, '2020-04-18', 0, '2020-04-18 06:29:09', '2020-04-18 06:29:09', 1),
(1374, 10, 748, '2020-04-18', 0, '2020-04-18 06:29:09', '2020-04-18 06:29:09', 1),
(1375, 9, 747, '2020-04-18', 0, '2020-04-18 06:29:20', '2020-04-18 06:29:20', 1),
(1376, 10, 747, '2020-04-18', 0, '2020-04-18 06:29:20', '2020-04-18 06:29:20', 1),
(1377, 9, 746, '2020-04-18', 0, '2020-04-18 06:29:29', '2020-04-18 06:29:29', 1),
(1378, 10, 746, '2020-04-18', 0, '2020-04-18 06:29:29', '2020-04-18 06:29:29', 1),
(1379, 9, 745, '2020-04-18', 0, '2020-04-18 06:29:39', '2020-04-18 06:29:39', 1),
(1380, 10, 745, '2020-04-18', 0, '2020-04-18 06:29:39', '2020-04-18 06:29:39', 1),
(1381, 9, 756, '2020-04-18', 0, '2020-04-18 06:34:37', '2020-04-18 06:34:37', 1),
(1382, 10, 756, '2020-04-18', 0, '2020-04-18 06:34:37', '2020-04-18 06:34:37', 1),
(1383, 9, 755, '2020-04-18', 0, '2020-04-18 06:34:47', '2020-04-18 06:34:47', 1),
(1384, 10, 755, '2020-04-18', 0, '2020-04-18 06:34:47', '2020-04-18 06:34:47', 1),
(1385, 9, 751, '2020-04-18', 0, '2020-04-18 06:34:55', '2020-04-18 06:34:55', 1),
(1386, 10, 751, '2020-04-18', 0, '2020-04-18 06:34:55', '2020-04-18 06:34:55', 1),
(1387, 9, 754, '2020-04-18', 0, '2020-04-18 06:35:08', '2020-04-18 06:35:08', 1),
(1388, 10, 754, '2020-04-18', 0, '2020-04-18 06:35:08', '2020-04-18 06:35:08', 1),
(1389, 9, 753, '2020-04-18', 0, '2020-04-18 06:35:16', '2020-04-18 06:35:16', 1),
(1390, 10, 753, '2020-04-18', 0, '2020-04-18 06:35:16', '2020-04-18 06:35:16', 1),
(1391, 9, 752, '2020-04-18', 0, '2020-04-18 06:35:29', '2020-04-18 06:35:29', 1),
(1392, 10, 752, '2020-04-18', 0, '2020-04-18 06:35:29', '2020-04-18 06:35:29', 1),
(1393, 9, 762, '2020-04-18', 0, '2020-04-18 07:16:19', '2020-04-18 07:16:19', 1),
(1394, 10, 762, '2020-04-18', 0, '2020-04-18 07:16:19', '2020-04-18 07:16:19', 1),
(1395, 9, 757, '2020-04-18', 0, '2020-04-18 07:16:36', '2020-04-18 07:16:36', 1),
(1396, 10, 757, '2020-04-18', 0, '2020-04-18 07:16:36', '2020-04-18 07:16:36', 1),
(1397, 9, 761, '2020-04-18', 0, '2020-04-18 07:16:48', '2020-04-18 07:16:48', 1),
(1398, 10, 761, '2020-04-18', 0, '2020-04-18 07:16:48', '2020-04-18 07:16:48', 1),
(1399, 9, 758, '2020-04-18', 0, '2020-04-18 07:16:57', '2020-04-18 07:16:57', 1),
(1400, 10, 758, '2020-04-18', 0, '2020-04-18 07:16:57', '2020-04-18 07:16:57', 1),
(1401, 9, 759, '2020-04-18', 0, '2020-04-18 07:17:13', '2020-04-18 07:17:13', 1),
(1402, 10, 759, '2020-04-18', 0, '2020-04-18 07:17:13', '2020-04-18 07:17:13', 1),
(1403, 9, 760, '2020-04-18', 0, '2020-04-18 07:17:24', '2020-04-18 07:17:24', 1),
(1404, 10, 760, '2020-04-18', 0, '2020-04-18 07:17:24', '2020-04-18 07:17:24', 1),
(1417, 9, 763, '2020-04-18', 0, '2020-04-18 14:02:57', '2020-04-18 14:02:57', 1),
(1418, 10, 763, '2020-04-18', 0, '2020-04-18 14:02:57', '2020-04-18 14:02:57', 1),
(1419, 9, 764, '2020-04-18', 0, '2020-04-18 14:03:15', '2020-04-18 14:03:15', 1),
(1420, 10, 764, '2020-04-18', 0, '2020-04-18 14:03:15', '2020-04-18 14:03:15', 1),
(1421, 9, 765, '2020-04-18', 0, '2020-04-18 14:03:33', '2020-04-18 14:03:33', 1),
(1422, 10, 765, '2020-04-18', 0, '2020-04-18 14:03:33', '2020-04-18 14:03:33', 1),
(1423, 9, 766, '2020-04-18', 0, '2020-04-18 14:04:33', '2020-04-18 14:04:33', 1),
(1424, 10, 766, '2020-04-18', 0, '2020-04-18 14:04:33', '2020-04-18 14:04:33', 1),
(1425, 9, 767, '2020-04-18', 0, '2020-04-18 14:05:09', '2020-04-18 14:05:09', 1),
(1426, 10, 767, '2020-04-18', 0, '2020-04-18 14:05:09', '2020-04-18 14:05:09', 1),
(1427, 9, 769, '2020-04-18', 0, '2020-04-18 14:12:17', '2020-04-18 14:12:17', 1),
(1428, 10, 769, '2020-04-18', 0, '2020-04-18 14:12:17', '2020-04-18 14:12:17', 1),
(1429, 9, 770, '2020-04-18', 0, '2020-04-18 15:37:08', '2020-04-18 15:37:08', 1),
(1430, 10, 770, '2020-04-18', 0, '2020-04-18 15:37:08', '2020-04-18 15:37:08', 1),
(1431, 9, 771, '2020-04-18', 0, '2020-04-18 15:38:01', '2020-04-18 15:38:01', 1),
(1432, 10, 771, '2020-04-18', 0, '2020-04-18 15:38:01', '2020-04-18 15:38:01', 1),
(1433, 9, 772, '2020-04-18', 0, '2020-04-18 15:38:30', '2020-04-18 15:38:30', 1),
(1434, 10, 772, '2020-04-18', 0, '2020-04-18 15:38:30', '2020-04-18 15:38:30', 1),
(1435, 9, 773, '2020-04-18', 0, '2020-04-18 15:40:48', '2020-04-18 15:40:48', 1),
(1436, 10, 773, '2020-04-18', 0, '2020-04-18 15:40:48', '2020-04-18 15:40:48', 1),
(1437, 9, 774, '2020-04-18', 0, '2020-04-18 15:41:28', '2020-04-18 15:41:28', 1),
(1438, 10, 774, '2020-04-18', 0, '2020-04-18 15:41:28', '2020-04-18 15:41:28', 1),
(1439, 9, 775, '2020-04-18', 0, '2020-04-18 15:41:42', '2020-04-18 15:41:42', 1),
(1440, 10, 775, '2020-04-18', 0, '2020-04-18 15:41:42', '2020-04-18 15:41:42', 1),
(1441, 9, 781, '2020-04-18', 0, '2020-04-18 15:50:21', '2020-04-18 15:50:21', 1),
(1442, 10, 781, '2020-04-18', 0, '2020-04-18 15:50:21', '2020-04-18 15:50:21', 1),
(1443, 9, 776, '2020-04-18', 0, '2020-04-18 15:50:32', '2020-04-18 15:50:32', 1),
(1444, 10, 776, '2020-04-18', 0, '2020-04-18 15:50:32', '2020-04-18 15:50:32', 1),
(1445, 9, 777, '2020-04-18', 0, '2020-04-18 15:50:45', '2020-04-18 15:50:45', 1),
(1446, 10, 777, '2020-04-18', 0, '2020-04-18 15:50:45', '2020-04-18 15:50:45', 1),
(1447, 9, 778, '2020-04-18', 0, '2020-04-18 15:50:53', '2020-04-18 15:50:53', 1),
(1448, 10, 778, '2020-04-18', 0, '2020-04-18 15:50:53', '2020-04-18 15:50:53', 1),
(1449, 9, 779, '2020-04-18', 0, '2020-04-18 15:51:03', '2020-04-18 15:51:03', 1),
(1450, 10, 779, '2020-04-18', 0, '2020-04-18 15:51:03', '2020-04-18 15:51:03', 1),
(1451, 9, 780, '2020-04-18', 0, '2020-04-18 15:51:12', '2020-04-18 15:51:12', 1),
(1452, 10, 780, '2020-04-18', 0, '2020-04-18 15:51:12', '2020-04-18 15:51:12', 1),
(1453, 10, 318, '2020-04-18', 0, '2020-04-18 16:16:07', '2020-04-18 16:16:07', 1),
(1454, 10, 370, '2020-04-18', 0, '2020-04-18 16:17:12', '2020-04-18 16:17:12', 1),
(1455, 9, 787, '2020-04-18', 0, '2020-04-18 16:31:49', '2020-04-18 16:31:49', 1),
(1456, 10, 787, '2020-04-18', 0, '2020-04-18 16:31:49', '2020-04-18 16:31:49', 1),
(1457, 9, 789, '2020-04-18', 0, '2020-04-18 16:32:26', '2020-04-18 16:32:26', 1),
(1458, 10, 789, '2020-04-18', 0, '2020-04-18 16:32:26', '2020-04-18 16:32:26', 1),
(1461, 9, 791, '2020-04-18', 0, '2020-04-18 16:33:56', '2020-04-18 16:33:56', 1),
(1462, 10, 791, '2020-04-18', 0, '2020-04-18 16:33:56', '2020-04-18 16:33:56', 1),
(1463, 9, 790, '2020-04-18', 0, '2020-04-18 16:34:10', '2020-04-18 16:34:10', 1),
(1464, 10, 790, '2020-04-18', 0, '2020-04-18 16:34:10', '2020-04-18 16:34:10', 1),
(1467, 9, 785, '2020-04-18', 0, '2020-04-18 16:34:32', '2020-04-18 16:34:32', 1),
(1468, 10, 785, '2020-04-18', 0, '2020-04-18 16:34:32', '2020-04-18 16:34:32', 1),
(1469, 9, 784, '2020-04-18', 0, '2020-04-18 16:34:48', '2020-04-18 16:34:48', 1),
(1470, 10, 784, '2020-04-18', 0, '2020-04-18 16:34:48', '2020-04-18 16:34:48', 1),
(1471, 9, 792, '2020-04-18', 0, '2020-04-18 16:47:45', '2020-04-18 16:47:45', 1),
(1472, 10, 792, '2020-04-18', 0, '2020-04-18 16:47:45', '2020-04-18 16:47:45', 1),
(1473, 9, 793, '2020-04-18', 0, '2020-04-18 16:48:24', '2020-04-18 16:48:24', 1),
(1474, 10, 793, '2020-04-18', 0, '2020-04-18 16:48:24', '2020-04-18 16:48:24', 1),
(1475, 9, 794, '2020-04-18', 0, '2020-04-18 16:48:35', '2020-04-18 16:48:35', 1),
(1476, 10, 794, '2020-04-18', 0, '2020-04-18 16:48:35', '2020-04-18 16:48:35', 1),
(1477, 9, 795, '2020-04-18', 0, '2020-04-18 16:49:15', '2020-04-18 16:49:15', 1),
(1478, 10, 795, '2020-04-18', 0, '2020-04-18 16:49:15', '2020-04-18 16:49:15', 1),
(1479, 9, 796, '2020-04-18', 0, '2020-04-18 16:49:57', '2020-04-18 16:49:57', 1),
(1480, 10, 796, '2020-04-18', 0, '2020-04-18 16:49:57', '2020-04-18 16:49:57', 1),
(1485, 8, 799, '2020-04-18', 0, '2020-04-18 17:32:10', '2020-04-18 17:32:10', 1),
(1486, 10, 799, '2020-04-18', 0, '2020-04-18 17:32:10', '2020-04-18 17:32:10', 1),
(1487, 9, 797, '2020-04-19', 0, '2020-04-19 08:54:12', '2020-04-19 08:54:12', 1),
(1488, 10, 797, '2020-04-19', 0, '2020-04-19 08:54:12', '2020-04-19 08:54:12', 1),
(1489, 11, 250, '2020-04-21', 1, '2020-04-21 13:39:14', '2020-04-21 13:39:14', 0),
(1490, 11, 251, '2020-04-21', 1, '2020-04-21 13:39:15', '2020-04-21 13:39:15', 0),
(1491, 11, 252, '2020-04-21', 1, '2020-04-21 13:39:15', '2020-04-21 13:39:15', 0),
(1492, 11, 253, '2020-04-21', 1, '2020-04-21 13:39:15', '2020-04-21 13:39:15', 0),
(1493, 11, 254, '2020-04-21', 1, '2020-04-21 13:39:15', '2020-04-21 13:39:15', 0),
(1494, 11, 255, '2020-04-21', 1, '2020-04-21 13:39:16', '2020-04-21 13:39:16', 0),
(1495, 11, 256, '2020-04-21', 1, '2020-04-21 13:39:16', '2020-04-21 13:39:16', 0),
(1496, 11, 257, '2020-04-21', 1, '2020-04-21 13:39:16', '2020-04-21 13:39:16', 0),
(1497, 11, 258, '2020-04-21', 1, '2020-04-21 13:39:16', '2020-04-21 13:39:16', 0),
(1498, 11, 259, '2020-04-21', 1, '2020-04-21 13:39:16', '2020-04-21 13:39:16', 0),
(1499, 11, 260, '2020-04-21', 1, '2020-04-21 13:39:16', '2020-04-21 13:39:16', 0),
(1500, 11, 265, '2020-04-21', 1, '2020-04-21 13:39:16', '2020-04-21 13:39:16', 0),
(1501, 11, 266, '2020-04-21', 1, '2020-04-21 13:39:16', '2020-04-21 13:39:16', 0),
(1502, 11, 267, '2020-04-21', 1, '2020-04-21 13:39:16', '2020-04-21 13:39:16', 0),
(1503, 11, 268, '2020-04-21', 1, '2020-04-21 13:39:17', '2020-04-21 13:39:17', 0),
(1504, 11, 269, '2020-04-21', 1, '2020-04-21 13:39:17', '2020-04-21 13:39:17', 0),
(1505, 11, 276, '2020-04-21', 1, '2020-04-21 13:39:17', '2020-04-21 13:39:17', 0),
(1506, 11, 277, '2020-04-21', 1, '2020-04-21 13:39:17', '2020-04-21 13:39:17', 0),
(1507, 11, 278, '2020-04-21', 1, '2020-04-21 13:39:17', '2020-04-21 13:39:17', 0),
(1508, 11, 279, '2020-04-21', 1, '2020-04-21 13:39:17', '2020-04-21 13:39:17', 0),
(1509, 11, 280, '2020-04-21', 1, '2020-04-21 13:39:17', '2020-04-21 13:39:17', 0),
(1510, 11, 281, '2020-04-21', 1, '2020-04-21 13:39:17', '2020-04-21 13:39:17', 0),
(1511, 11, 282, '2020-04-21', 1, '2020-04-21 13:39:17', '2020-04-21 13:39:17', 0),
(1512, 11, 307, '2020-04-21', 1, '2020-04-21 13:39:17', '2020-04-21 13:39:17', 0),
(1513, 11, 309, '2020-04-21', 1, '2020-04-21 13:39:17', '2020-04-21 13:39:17', 0),
(1514, 11, 310, '2020-04-21', 1, '2020-04-21 13:39:17', '2020-04-21 13:39:17', 0),
(1515, 11, 311, '2020-04-21', 1, '2020-04-21 13:39:17', '2020-04-21 13:39:17', 0),
(1516, 11, 312, '2020-04-21', 1, '2020-04-21 13:39:18', '2020-04-21 13:39:18', 0),
(1517, 11, 313, '2020-04-21', 1, '2020-04-21 13:39:18', '2020-04-21 13:39:18', 0),
(1518, 11, 314, '2020-04-21', 1, '2020-04-21 13:39:18', '2020-04-21 13:39:18', 0),
(1519, 11, 315, '2020-04-21', 1, '2020-04-21 13:39:18', '2020-04-21 13:39:18', 0),
(1520, 11, 316, '2020-04-21', 1, '2020-04-21 13:39:18', '2020-04-21 13:39:18', 0),
(1521, 11, 317, '2020-04-21', 1, '2020-04-21 13:39:18', '2020-04-21 13:39:18', 0),
(1522, 11, 318, '2020-04-21', 1, '2020-04-21 13:39:18', '2020-04-21 13:39:18', 0),
(1523, 11, 319, '2020-04-21', 1, '2020-04-21 13:39:18', '2020-04-21 13:39:18', 0),
(1524, 11, 320, '2020-04-21', 1, '2020-04-21 13:39:18', '2020-04-21 13:39:18', 0),
(1525, 11, 323, '2020-04-21', 1, '2020-04-21 13:39:18', '2020-04-21 13:39:18', 0),
(1526, 11, 324, '2020-04-21', 1, '2020-04-21 13:39:18', '2020-04-21 13:39:18', 0),
(1527, 11, 325, '2020-04-21', 1, '2020-04-21 13:39:19', '2020-04-21 13:39:19', 0),
(1528, 11, 326, '2020-04-21', 1, '2020-04-21 13:39:19', '2020-04-21 13:39:19', 0),
(1529, 11, 327, '2020-04-21', 1, '2020-04-21 13:39:19', '2020-04-21 13:39:19', 0),
(1530, 11, 328, '2020-04-21', 1, '2020-04-21 13:39:19', '2020-04-21 13:39:19', 0),
(1531, 11, 329, '2020-04-21', 1, '2020-04-21 13:39:19', '2020-04-21 13:39:19', 0),
(1532, 11, 330, '2020-04-21', 1, '2020-04-21 13:39:19', '2020-04-21 13:39:19', 0),
(1533, 11, 331, '2020-04-21', 1, '2020-04-21 13:39:19', '2020-04-21 13:39:19', 0),
(1534, 11, 332, '2020-04-21', 1, '2020-04-21 13:39:19', '2020-04-21 13:39:19', 0),
(1535, 11, 333, '2020-04-21', 1, '2020-04-21 13:39:19', '2020-04-21 13:39:19', 0),
(1536, 11, 334, '2020-04-21', 1, '2020-04-21 13:39:19', '2020-04-21 13:39:19', 0),
(1537, 11, 335, '2020-04-21', 1, '2020-04-21 13:39:19', '2020-04-21 13:39:19', 0),
(1538, 11, 336, '2020-04-21', 1, '2020-04-21 13:39:19', '2020-04-21 13:39:19', 0),
(1539, 11, 337, '2020-04-21', 1, '2020-04-21 13:39:20', '2020-04-21 13:39:20', 0),
(1540, 11, 338, '2020-04-21', 1, '2020-04-21 13:39:20', '2020-04-21 13:39:20', 0),
(1541, 11, 339, '2020-04-21', 1, '2020-04-21 13:39:20', '2020-04-21 13:39:20', 0),
(1542, 11, 340, '2020-04-21', 1, '2020-04-21 13:39:20', '2020-04-21 13:39:20', 0),
(1543, 11, 341, '2020-04-21', 1, '2020-04-21 13:39:20', '2020-04-21 13:39:20', 0),
(1544, 11, 342, '2020-04-21', 1, '2020-04-21 13:39:20', '2020-04-21 13:39:20', 0),
(1545, 11, 343, '2020-04-21', 1, '2020-04-21 13:39:20', '2020-04-21 13:39:20', 0),
(1546, 11, 344, '2020-04-21', 1, '2020-04-21 13:39:20', '2020-04-21 13:39:20', 0),
(1547, 11, 345, '2020-04-21', 1, '2020-04-21 13:39:20', '2020-04-21 13:39:20', 0),
(1548, 11, 346, '2020-04-21', 1, '2020-04-21 13:39:21', '2020-04-21 13:39:21', 0),
(1549, 11, 347, '2020-04-21', 1, '2020-04-21 13:39:21', '2020-04-21 13:39:21', 0),
(1550, 11, 348, '2020-04-21', 1, '2020-04-21 13:39:21', '2020-04-21 13:39:21', 0),
(1551, 11, 349, '2020-04-21', 1, '2020-04-21 13:39:21', '2020-04-21 13:39:21', 0),
(1552, 11, 350, '2020-04-21', 1, '2020-04-21 13:39:21', '2020-04-21 13:39:21', 0),
(1553, 11, 351, '2020-04-21', 1, '2020-04-21 13:39:21', '2020-04-21 13:39:21', 0),
(1554, 11, 352, '2020-04-21', 1, '2020-04-21 13:39:21', '2020-04-21 13:39:21', 0),
(1555, 11, 353, '2020-04-21', 1, '2020-04-21 13:39:21', '2020-04-21 13:39:21', 0),
(1556, 11, 354, '2020-04-21', 1, '2020-04-21 13:39:21', '2020-04-21 13:39:21', 0),
(1557, 11, 355, '2020-04-21', 1, '2020-04-21 13:39:21', '2020-04-21 13:39:21', 0),
(1558, 11, 356, '2020-04-21', 1, '2020-04-21 13:39:21', '2020-04-21 13:39:21', 0),
(1559, 11, 357, '2020-04-21', 1, '2020-04-21 13:39:22', '2020-04-21 13:39:22', 0),
(1560, 11, 358, '2020-04-21', 1, '2020-04-21 13:39:22', '2020-04-21 13:39:22', 0),
(1561, 11, 359, '2020-04-21', 1, '2020-04-21 13:39:22', '2020-04-21 13:39:22', 0),
(1562, 11, 360, '2020-04-21', 1, '2020-04-21 13:39:22', '2020-04-21 13:39:22', 0),
(1563, 11, 361, '2020-04-21', 1, '2020-04-21 13:39:22', '2020-04-21 13:39:22', 0),
(1564, 11, 362, '2020-04-21', 1, '2020-04-21 13:39:22', '2020-04-21 13:39:22', 0),
(1565, 11, 363, '2020-04-21', 1, '2020-04-21 13:39:22', '2020-04-21 13:39:22', 0),
(1566, 11, 364, '2020-04-21', 1, '2020-04-21 13:39:22', '2020-04-21 13:39:22', 0),
(1567, 11, 365, '2020-04-21', 1, '2020-04-21 13:39:23', '2020-04-21 13:39:23', 0),
(1568, 11, 366, '2020-04-21', 1, '2020-04-21 13:39:23', '2020-04-21 13:39:23', 0),
(1569, 11, 367, '2020-04-21', 1, '2020-04-21 13:39:23', '2020-04-21 13:39:23', 0),
(1570, 11, 368, '2020-04-21', 1, '2020-04-21 13:39:23', '2020-04-21 13:39:23', 0),
(1571, 11, 369, '2020-04-21', 1, '2020-04-21 13:39:23', '2020-04-21 13:39:23', 0),
(1572, 11, 370, '2020-04-21', 1, '2020-04-21 13:39:23', '2020-04-21 13:39:23', 0),
(1573, 11, 371, '2020-04-21', 1, '2020-04-21 13:39:23', '2020-04-21 13:39:23', 0),
(1574, 11, 372, '2020-04-21', 1, '2020-04-21 13:39:23', '2020-04-21 13:39:23', 0),
(1575, 11, 373, '2020-04-21', 1, '2020-04-21 13:39:23', '2020-04-21 13:39:23', 0),
(1576, 11, 374, '2020-04-21', 1, '2020-04-21 13:39:23', '2020-04-21 13:39:23', 0),
(1577, 11, 375, '2020-04-21', 1, '2020-04-21 13:39:23', '2020-04-21 13:39:23', 0),
(1578, 11, 376, '2020-04-21', 1, '2020-04-21 13:39:24', '2020-04-21 13:39:24', 0),
(1579, 11, 377, '2020-04-21', 1, '2020-04-21 13:39:24', '2020-04-21 13:39:24', 0),
(1580, 11, 378, '2020-04-21', 1, '2020-04-21 13:39:24', '2020-04-21 13:39:24', 0),
(1581, 11, 379, '2020-04-21', 1, '2020-04-21 13:39:24', '2020-04-21 13:39:24', 0),
(1582, 11, 380, '2020-04-21', 1, '2020-04-21 13:39:24', '2020-04-21 13:39:24', 0),
(1583, 11, 381, '2020-04-21', 1, '2020-04-21 13:39:24', '2020-04-21 13:39:24', 0),
(1584, 11, 382, '2020-04-21', 1, '2020-04-21 13:39:24', '2020-04-21 13:39:24', 0),
(1585, 11, 383, '2020-04-21', 1, '2020-04-21 13:39:24', '2020-04-21 13:39:24', 0),
(1586, 11, 384, '2020-04-21', 1, '2020-04-21 13:39:24', '2020-04-21 13:39:24', 0),
(1587, 11, 385, '2020-04-21', 1, '2020-04-21 13:39:24', '2020-04-21 13:39:24', 0),
(1588, 11, 386, '2020-04-21', 1, '2020-04-21 13:39:24', '2020-04-21 13:39:24', 0),
(1589, 11, 387, '2020-04-21', 1, '2020-04-21 13:39:25', '2020-04-21 13:39:25', 0),
(1590, 11, 388, '2020-04-21', 1, '2020-04-21 13:39:25', '2020-04-21 13:39:25', 0),
(1591, 11, 389, '2020-04-21', 1, '2020-04-21 13:39:25', '2020-04-21 13:39:25', 0),
(1592, 11, 390, '2020-04-21', 1, '2020-04-21 13:39:25', '2020-04-21 13:39:25', 0),
(1593, 11, 391, '2020-04-21', 1, '2020-04-21 13:39:25', '2020-04-21 13:39:25', 0),
(1594, 11, 392, '2020-04-21', 1, '2020-04-21 13:39:25', '2020-04-21 13:39:25', 0),
(1595, 11, 393, '2020-04-21', 1, '2020-04-21 13:39:25', '2020-04-21 13:39:25', 0),
(1596, 11, 394, '2020-04-21', 1, '2020-04-21 13:39:25', '2020-04-21 13:39:25', 0),
(1597, 11, 395, '2020-04-21', 1, '2020-04-21 13:39:25', '2020-04-21 13:39:25', 0),
(1598, 11, 396, '2020-04-21', 1, '2020-04-21 13:39:25', '2020-04-21 13:39:25', 0),
(1599, 11, 397, '2020-04-21', 1, '2020-04-21 13:39:26', '2020-04-21 13:39:26', 0),
(1600, 11, 398, '2020-04-21', 1, '2020-04-21 13:39:26', '2020-04-21 13:39:26', 0),
(1601, 11, 399, '2020-04-21', 1, '2020-04-21 13:39:26', '2020-04-21 13:39:26', 0),
(1602, 11, 400, '2020-04-21', 1, '2020-04-21 13:39:26', '2020-04-21 13:39:26', 0),
(1603, 11, 401, '2020-04-21', 1, '2020-04-21 13:39:26', '2020-04-21 13:39:26', 0),
(1604, 11, 402, '2020-04-21', 1, '2020-04-21 13:39:26', '2020-04-21 13:39:26', 0),
(1605, 11, 403, '2020-04-21', 1, '2020-04-21 13:39:27', '2020-04-21 13:39:27', 0),
(1606, 11, 404, '2020-04-21', 1, '2020-04-21 13:39:27', '2020-04-21 13:39:27', 0),
(1607, 11, 405, '2020-04-21', 1, '2020-04-21 13:39:27', '2020-04-21 13:39:27', 0),
(1608, 11, 406, '2020-04-21', 1, '2020-04-21 13:39:27', '2020-04-21 13:39:27', 0),
(1609, 11, 407, '2020-04-21', 1, '2020-04-21 13:39:27', '2020-04-21 13:39:27', 0),
(1610, 11, 408, '2020-04-21', 1, '2020-04-21 13:39:27', '2020-04-21 13:39:27', 0),
(1611, 11, 409, '2020-04-21', 1, '2020-04-21 13:39:27', '2020-04-21 13:39:27', 0),
(1612, 11, 410, '2020-04-21', 1, '2020-04-21 13:39:27', '2020-04-21 13:39:27', 0),
(1613, 11, 411, '2020-04-21', 1, '2020-04-21 13:39:27', '2020-04-21 13:39:27', 0),
(1614, 11, 412, '2020-04-21', 1, '2020-04-21 13:39:27', '2020-04-21 13:39:27', 0),
(1615, 11, 413, '2020-04-21', 1, '2020-04-21 13:39:28', '2020-04-21 13:39:28', 0),
(1616, 11, 414, '2020-04-21', 1, '2020-04-21 13:39:28', '2020-04-21 13:39:28', 0),
(1617, 11, 415, '2020-04-21', 1, '2020-04-21 13:39:28', '2020-04-21 13:39:28', 0),
(1618, 11, 416, '2020-04-21', 1, '2020-04-21 13:39:28', '2020-04-21 13:39:28', 0),
(1619, 11, 417, '2020-04-21', 1, '2020-04-21 13:39:29', '2020-04-21 13:39:29', 0),
(1620, 11, 418, '2020-04-21', 1, '2020-04-21 13:39:29', '2020-04-21 13:39:29', 0),
(1621, 11, 419, '2020-04-21', 1, '2020-04-21 13:39:29', '2020-04-21 13:39:29', 0),
(1622, 11, 420, '2020-04-21', 1, '2020-04-21 13:39:29', '2020-04-21 13:39:29', 0),
(1623, 11, 421, '2020-04-21', 1, '2020-04-21 13:39:29', '2020-04-21 13:39:29', 0),
(1624, 11, 422, '2020-04-21', 1, '2020-04-21 13:39:29', '2020-04-21 13:39:29', 0),
(1625, 11, 423, '2020-04-21', 1, '2020-04-21 13:39:29', '2020-04-21 13:39:29', 0),
(1626, 11, 424, '2020-04-21', 1, '2020-04-21 13:39:30', '2020-04-21 13:39:30', 0),
(1627, 11, 425, '2020-04-21', 1, '2020-04-21 13:39:30', '2020-04-21 13:39:30', 0),
(1628, 11, 426, '2020-04-21', 1, '2020-04-21 13:39:30', '2020-04-21 13:39:30', 0),
(1629, 11, 427, '2020-04-21', 1, '2020-04-21 13:39:30', '2020-04-21 13:39:30', 0),
(1630, 11, 428, '2020-04-21', 1, '2020-04-21 13:39:30', '2020-04-21 13:39:30', 0),
(1631, 11, 429, '2020-04-21', 1, '2020-04-21 13:39:30', '2020-04-21 13:39:30', 0),
(1632, 11, 430, '2020-04-21', 1, '2020-04-21 13:39:30', '2020-04-21 13:39:30', 0),
(1633, 11, 431, '2020-04-21', 1, '2020-04-21 13:39:31', '2020-04-21 13:39:31', 0),
(1634, 11, 432, '2020-04-21', 1, '2020-04-21 13:39:31', '2020-04-21 13:39:31', 0),
(1635, 11, 433, '2020-04-21', 1, '2020-04-21 13:39:31', '2020-04-21 13:39:31', 0),
(1636, 11, 434, '2020-04-21', 1, '2020-04-21 13:39:31', '2020-04-21 13:39:31', 0),
(1637, 11, 435, '2020-04-21', 1, '2020-04-21 13:39:31', '2020-04-21 13:39:31', 0),
(1638, 11, 436, '2020-04-21', 1, '2020-04-21 13:39:31', '2020-04-21 13:39:31', 0),
(1639, 11, 437, '2020-04-21', 1, '2020-04-21 13:39:32', '2020-04-21 13:39:32', 0),
(1640, 11, 438, '2020-04-21', 1, '2020-04-21 13:39:32', '2020-04-21 13:39:32', 0),
(1641, 11, 439, '2020-04-21', 1, '2020-04-21 13:39:32', '2020-04-21 13:39:32', 0),
(1642, 11, 440, '2020-04-21', 1, '2020-04-21 13:39:32', '2020-04-21 13:39:32', 0),
(1643, 11, 441, '2020-04-21', 1, '2020-04-21 13:39:32', '2020-04-21 13:39:32', 0),
(1644, 11, 442, '2020-04-21', 1, '2020-04-21 13:39:32', '2020-04-21 13:39:32', 0),
(1645, 11, 443, '2020-04-21', 1, '2020-04-21 13:39:32', '2020-04-21 13:39:32', 0),
(1646, 11, 444, '2020-04-21', 1, '2020-04-21 13:39:32', '2020-04-21 13:39:32', 0),
(1647, 11, 445, '2020-04-21', 1, '2020-04-21 13:39:32', '2020-04-21 13:39:32', 0),
(1648, 11, 446, '2020-04-21', 1, '2020-04-21 13:39:32', '2020-04-21 13:39:32', 0),
(1649, 11, 447, '2020-04-21', 1, '2020-04-21 13:39:32', '2020-04-21 13:39:32', 0),
(1650, 11, 448, '2020-04-21', 1, '2020-04-21 13:39:32', '2020-04-21 13:39:32', 0),
(1651, 11, 449, '2020-04-21', 1, '2020-04-21 13:39:33', '2020-04-21 13:39:33', 0),
(1652, 11, 450, '2020-04-21', 1, '2020-04-21 13:39:33', '2020-04-21 13:39:33', 0),
(1653, 11, 451, '2020-04-21', 1, '2020-04-21 13:39:33', '2020-04-21 13:39:33', 0),
(1654, 11, 452, '2020-04-21', 1, '2020-04-21 13:39:33', '2020-04-21 13:39:33', 0),
(1655, 11, 453, '2020-04-21', 1, '2020-04-21 13:39:33', '2020-04-21 13:39:33', 0),
(1656, 11, 454, '2020-04-21', 1, '2020-04-21 13:39:33', '2020-04-21 13:39:33', 0),
(1657, 11, 455, '2020-04-21', 1, '2020-04-21 13:39:33', '2020-04-21 13:39:33', 0),
(1658, 11, 456, '2020-04-21', 1, '2020-04-21 13:39:33', '2020-04-21 13:39:33', 0),
(1659, 11, 457, '2020-04-21', 1, '2020-04-21 13:39:33', '2020-04-21 13:39:33', 0),
(1660, 11, 458, '2020-04-21', 1, '2020-04-21 13:39:33', '2020-04-21 13:39:33', 0),
(1661, 11, 459, '2020-04-21', 1, '2020-04-21 13:39:33', '2020-04-21 13:39:33', 0),
(1662, 11, 460, '2020-04-21', 1, '2020-04-21 13:39:33', '2020-04-21 13:39:33', 0),
(1663, 11, 461, '2020-04-21', 1, '2020-04-21 13:39:33', '2020-04-21 13:39:33', 0),
(1664, 11, 462, '2020-04-21', 1, '2020-04-21 13:39:33', '2020-04-21 13:39:33', 0),
(1665, 11, 463, '2020-04-21', 1, '2020-04-21 13:39:34', '2020-04-21 13:39:34', 0),
(1666, 11, 464, '2020-04-21', 1, '2020-04-21 13:39:34', '2020-04-21 13:39:34', 0),
(1667, 11, 465, '2020-04-21', 1, '2020-04-21 13:39:34', '2020-04-21 13:39:34', 0),
(1668, 11, 466, '2020-04-21', 1, '2020-04-21 13:39:34', '2020-04-21 13:39:34', 0),
(1669, 11, 467, '2020-04-21', 1, '2020-04-21 13:39:34', '2020-04-21 13:39:34', 0),
(1670, 11, 468, '2020-04-21', 1, '2020-04-21 13:39:34', '2020-04-21 13:39:34', 0),
(1671, 11, 469, '2020-04-21', 1, '2020-04-21 13:39:34', '2020-04-21 13:39:34', 0),
(1672, 11, 470, '2020-04-21', 1, '2020-04-21 13:39:34', '2020-04-21 13:39:34', 0),
(1673, 11, 471, '2020-04-21', 1, '2020-04-21 13:39:34', '2020-04-21 13:39:34', 0),
(1674, 11, 472, '2020-04-21', 1, '2020-04-21 13:39:35', '2020-04-21 13:39:35', 0),
(1675, 11, 473, '2020-04-21', 1, '2020-04-21 13:39:35', '2020-04-21 13:39:35', 0),
(1676, 11, 474, '2020-04-21', 1, '2020-04-21 13:39:35', '2020-04-21 13:39:35', 0),
(1677, 11, 475, '2020-04-21', 1, '2020-04-21 13:39:35', '2020-04-21 13:39:35', 0),
(1678, 11, 476, '2020-04-21', 1, '2020-04-21 13:39:35', '2020-04-21 13:39:35', 0),
(1679, 11, 477, '2020-04-21', 1, '2020-04-21 13:39:35', '2020-04-21 13:39:35', 0),
(1680, 11, 478, '2020-04-21', 1, '2020-04-21 13:39:35', '2020-04-21 13:39:35', 0),
(1681, 11, 479, '2020-04-21', 1, '2020-04-21 13:39:35', '2020-04-21 13:39:35', 0),
(1682, 11, 480, '2020-04-21', 1, '2020-04-21 13:39:35', '2020-04-21 13:39:35', 0),
(1683, 11, 481, '2020-04-21', 1, '2020-04-21 13:39:35', '2020-04-21 13:39:35', 0),
(1684, 11, 482, '2020-04-21', 1, '2020-04-21 13:39:35', '2020-04-21 13:39:35', 0),
(1685, 11, 483, '2020-04-21', 1, '2020-04-21 13:39:36', '2020-04-21 13:39:36', 0),
(1686, 11, 484, '2020-04-21', 1, '2020-04-21 13:39:36', '2020-04-21 13:39:36', 0),
(1687, 11, 485, '2020-04-21', 1, '2020-04-21 13:39:36', '2020-04-21 13:39:36', 0),
(1688, 11, 486, '2020-04-21', 1, '2020-04-21 13:39:36', '2020-04-21 13:39:36', 0),
(1689, 11, 487, '2020-04-21', 1, '2020-04-21 13:39:36', '2020-04-21 13:39:36', 0),
(1690, 11, 488, '2020-04-21', 1, '2020-04-21 13:39:36', '2020-04-21 13:39:36', 0),
(1691, 11, 489, '2020-04-21', 1, '2020-04-21 13:39:36', '2020-04-21 13:39:36', 0),
(1692, 11, 490, '2020-04-21', 1, '2020-04-21 13:39:36', '2020-04-21 13:39:36', 0),
(1693, 11, 491, '2020-04-21', 1, '2020-04-21 13:39:36', '2020-04-21 13:39:36', 0),
(1694, 11, 492, '2020-04-21', 1, '2020-04-21 13:39:36', '2020-04-21 13:39:36', 0),
(1695, 11, 493, '2020-04-21', 1, '2020-04-21 13:39:36', '2020-04-21 13:39:36', 0),
(1696, 11, 494, '2020-04-21', 1, '2020-04-21 13:39:36', '2020-04-21 13:39:36', 0),
(1697, 11, 495, '2020-04-21', 1, '2020-04-21 13:39:37', '2020-04-21 13:39:37', 0),
(1698, 11, 496, '2020-04-21', 1, '2020-04-21 13:39:37', '2020-04-21 13:39:37', 0),
(1699, 11, 497, '2020-04-21', 1, '2020-04-21 13:39:37', '2020-04-21 13:39:37', 0),
(1700, 11, 498, '2020-04-21', 1, '2020-04-21 13:39:37', '2020-04-21 13:39:37', 0),
(1701, 11, 499, '2020-04-21', 1, '2020-04-21 13:39:37', '2020-04-21 13:39:37', 0),
(1702, 11, 500, '2020-04-21', 1, '2020-04-21 13:39:37', '2020-04-21 13:39:37', 0),
(1703, 11, 501, '2020-04-21', 1, '2020-04-21 13:39:37', '2020-04-21 13:39:37', 0),
(1704, 11, 502, '2020-04-21', 1, '2020-04-21 13:39:37', '2020-04-21 13:39:37', 0),
(1705, 11, 503, '2020-04-21', 1, '2020-04-21 13:39:37', '2020-04-21 13:39:37', 0),
(1706, 11, 504, '2020-04-21', 1, '2020-04-21 13:39:37', '2020-04-21 13:39:37', 0),
(1707, 11, 505, '2020-04-21', 1, '2020-04-21 13:39:37', '2020-04-21 13:39:37', 0),
(1708, 11, 506, '2020-04-21', 1, '2020-04-21 13:39:38', '2020-04-21 13:39:38', 0),
(1709, 11, 507, '2020-04-21', 1, '2020-04-21 13:39:38', '2020-04-21 13:39:38', 0),
(1710, 11, 508, '2020-04-21', 1, '2020-04-21 13:39:38', '2020-04-21 13:39:38', 0),
(1711, 11, 509, '2020-04-21', 1, '2020-04-21 13:39:38', '2020-04-21 13:39:38', 0),
(1712, 11, 510, '2020-04-21', 1, '2020-04-21 13:39:38', '2020-04-21 13:39:38', 0),
(1713, 11, 511, '2020-04-21', 1, '2020-04-21 13:39:38', '2020-04-21 13:39:38', 0),
(1714, 11, 512, '2020-04-21', 1, '2020-04-21 13:39:38', '2020-04-21 13:39:38', 0),
(1715, 11, 513, '2020-04-21', 1, '2020-04-21 13:39:38', '2020-04-21 13:39:38', 0),
(1716, 11, 514, '2020-04-21', 1, '2020-04-21 13:39:38', '2020-04-21 13:39:38', 0),
(1717, 11, 515, '2020-04-21', 1, '2020-04-21 13:39:39', '2020-04-21 13:39:39', 0),
(1718, 11, 516, '2020-04-21', 1, '2020-04-21 13:39:39', '2020-04-21 13:39:39', 0),
(1719, 11, 517, '2020-04-21', 1, '2020-04-21 13:39:39', '2020-04-21 13:39:39', 0),
(1720, 11, 518, '2020-04-21', 1, '2020-04-21 13:39:39', '2020-04-21 13:39:39', 0),
(1721, 11, 519, '2020-04-21', 1, '2020-04-21 13:39:39', '2020-04-21 13:39:39', 0),
(1722, 11, 520, '2020-04-21', 1, '2020-04-21 13:39:39', '2020-04-21 13:39:39', 0),
(1723, 11, 521, '2020-04-21', 1, '2020-04-21 13:39:39', '2020-04-21 13:39:39', 0),
(1724, 11, 522, '2020-04-21', 1, '2020-04-21 13:39:41', '2020-04-21 13:39:41', 0),
(1725, 11, 523, '2020-04-21', 1, '2020-04-21 13:39:41', '2020-04-21 13:39:41', 0),
(1726, 11, 524, '2020-04-21', 1, '2020-04-21 13:39:41', '2020-04-21 13:39:41', 0),
(1727, 11, 525, '2020-04-21', 1, '2020-04-21 13:39:41', '2020-04-21 13:39:41', 0),
(1728, 11, 526, '2020-04-21', 1, '2020-04-21 13:39:41', '2020-04-21 13:39:41', 0),
(1729, 11, 527, '2020-04-21', 1, '2020-04-21 13:39:41', '2020-04-21 13:39:41', 0),
(1730, 11, 528, '2020-04-21', 1, '2020-04-21 13:39:41', '2020-04-21 13:39:41', 0),
(1731, 11, 529, '2020-04-21', 1, '2020-04-21 13:39:41', '2020-04-21 13:39:41', 0),
(1732, 11, 530, '2020-04-21', 1, '2020-04-21 13:39:41', '2020-04-21 13:39:41', 0),
(1733, 11, 531, '2020-04-21', 1, '2020-04-21 13:39:42', '2020-04-21 13:39:42', 0),
(1734, 11, 532, '2020-04-21', 1, '2020-04-21 13:39:42', '2020-04-21 13:39:42', 0),
(1735, 11, 533, '2020-04-21', 1, '2020-04-21 13:39:42', '2020-04-21 13:39:42', 0),
(1736, 11, 534, '2020-04-21', 1, '2020-04-21 13:39:42', '2020-04-21 13:39:42', 0),
(1737, 11, 535, '2020-04-21', 1, '2020-04-21 13:39:42', '2020-04-21 13:39:42', 0),
(1738, 11, 536, '2020-04-21', 1, '2020-04-21 13:39:42', '2020-04-21 13:39:42', 0),
(1739, 11, 537, '2020-04-21', 1, '2020-04-21 13:39:42', '2020-04-21 13:39:42', 0),
(1740, 11, 538, '2020-04-21', 1, '2020-04-21 13:39:43', '2020-04-21 13:39:43', 0),
(1741, 11, 539, '2020-04-21', 1, '2020-04-21 13:39:43', '2020-04-21 13:39:43', 0),
(1742, 11, 540, '2020-04-21', 1, '2020-04-21 13:39:43', '2020-04-21 13:39:43', 0),
(1743, 11, 541, '2020-04-21', 1, '2020-04-21 13:39:43', '2020-04-21 13:39:43', 0),
(1744, 11, 542, '2020-04-21', 1, '2020-04-21 13:39:43', '2020-04-21 13:39:43', 0),
(1745, 11, 543, '2020-04-21', 1, '2020-04-21 13:39:43', '2020-04-21 13:39:43', 0),
(1746, 11, 544, '2020-04-21', 1, '2020-04-21 13:39:43', '2020-04-21 13:39:43', 0),
(1747, 11, 545, '2020-04-21', 1, '2020-04-21 13:39:44', '2020-04-21 13:39:44', 0),
(1748, 11, 546, '2020-04-21', 1, '2020-04-21 13:39:44', '2020-04-21 13:39:44', 0),
(1749, 11, 547, '2020-04-21', 1, '2020-04-21 13:39:44', '2020-04-21 13:39:44', 0),
(1750, 11, 548, '2020-04-21', 1, '2020-04-21 13:39:44', '2020-04-21 13:39:44', 0),
(1751, 11, 549, '2020-04-21', 1, '2020-04-21 13:39:44', '2020-04-21 13:39:44', 0),
(1752, 11, 550, '2020-04-21', 1, '2020-04-21 13:39:44', '2020-04-21 13:39:44', 0),
(1753, 11, 551, '2020-04-21', 1, '2020-04-21 13:39:44', '2020-04-21 13:39:44', 0),
(1754, 11, 552, '2020-04-21', 1, '2020-04-21 13:39:44', '2020-04-21 13:39:44', 0),
(1755, 11, 553, '2020-04-21', 1, '2020-04-21 13:39:45', '2020-04-21 13:39:45', 0);
INSERT INTO `posts` (`id`, `operator_id`, `video_id`, `show_date`, `active`, `created_at`, `updated_at`, `slider`) VALUES
(1756, 11, 554, '2020-04-21', 1, '2020-04-21 13:39:45', '2020-04-21 13:39:45', 0),
(1757, 11, 555, '2020-04-21', 1, '2020-04-21 13:39:45', '2020-04-21 13:39:45', 0),
(1758, 11, 556, '2020-04-21', 1, '2020-04-21 13:39:45', '2020-04-21 13:39:45', 0),
(1759, 11, 557, '2020-04-21', 1, '2020-04-21 13:39:45', '2020-04-21 13:39:45', 0),
(1760, 11, 558, '2020-04-21', 1, '2020-04-21 13:39:45', '2020-04-21 13:39:45', 0),
(1761, 11, 559, '2020-04-21', 1, '2020-04-21 13:39:45', '2020-04-21 13:39:45', 0),
(1762, 11, 560, '2020-04-21', 1, '2020-04-21 13:39:45', '2020-04-21 13:39:45', 0),
(1763, 11, 561, '2020-04-21', 1, '2020-04-21 13:39:45', '2020-04-21 13:39:45', 0),
(1764, 11, 562, '2020-04-21', 1, '2020-04-21 13:39:46', '2020-04-21 13:39:46', 0),
(1765, 11, 563, '2020-04-21', 1, '2020-04-21 13:39:46', '2020-04-21 13:39:46', 0),
(1766, 11, 564, '2020-04-21', 1, '2020-04-21 13:39:46', '2020-04-21 13:39:46', 0),
(1767, 11, 565, '2020-04-21', 1, '2020-04-21 13:39:46', '2020-04-21 13:39:46', 0),
(1768, 11, 566, '2020-04-21', 1, '2020-04-21 13:39:46', '2020-04-21 13:39:46', 0),
(1769, 11, 567, '2020-04-21', 1, '2020-04-21 13:39:46', '2020-04-21 13:39:46', 0),
(1770, 11, 568, '2020-04-21', 1, '2020-04-21 13:39:46', '2020-04-21 13:39:46', 0),
(1771, 11, 569, '2020-04-21', 1, '2020-04-21 13:39:46', '2020-04-21 13:39:46', 0),
(1772, 11, 570, '2020-04-21', 1, '2020-04-21 13:39:46', '2020-04-21 13:39:46', 0),
(1773, 11, 571, '2020-04-21', 1, '2020-04-21 13:39:47', '2020-04-21 13:39:47', 0),
(1774, 11, 572, '2020-04-21', 1, '2020-04-21 13:39:47', '2020-04-21 13:39:47', 0),
(1775, 11, 573, '2020-04-21', 1, '2020-04-21 13:39:47', '2020-04-21 13:39:47', 0),
(1776, 11, 574, '2020-04-21', 1, '2020-04-21 13:39:47', '2020-04-21 13:39:47', 0),
(1777, 11, 575, '2020-04-21', 1, '2020-04-21 13:39:47', '2020-04-21 13:39:47', 0),
(1778, 11, 576, '2020-04-21', 1, '2020-04-21 13:39:47', '2020-04-21 13:39:47', 0),
(1779, 11, 577, '2020-04-21', 1, '2020-04-21 13:39:47', '2020-04-21 13:39:47', 0),
(1780, 11, 578, '2020-04-21', 1, '2020-04-21 13:39:47', '2020-04-21 13:39:47', 0),
(1781, 11, 579, '2020-04-21', 1, '2020-04-21 13:39:47', '2020-04-21 13:39:47', 0),
(1782, 11, 580, '2020-04-21', 1, '2020-04-21 13:39:47', '2020-04-21 13:39:47', 0),
(1783, 11, 581, '2020-04-21', 1, '2020-04-21 13:39:47', '2020-04-21 13:39:47', 0),
(1784, 11, 582, '2020-04-21', 1, '2020-04-21 13:39:48', '2020-04-21 13:39:48', 0),
(1785, 11, 583, '2020-04-21', 1, '2020-04-21 13:39:48', '2020-04-21 13:39:48', 0),
(1786, 11, 584, '2020-04-21', 1, '2020-04-21 13:39:48', '2020-04-21 13:39:48', 0),
(1787, 11, 585, '2020-04-21', 1, '2020-04-21 13:39:48', '2020-04-21 13:39:48', 0),
(1788, 11, 586, '2020-04-21', 1, '2020-04-21 13:39:48', '2020-04-21 13:39:48', 0),
(1789, 11, 587, '2020-04-21', 1, '2020-04-21 13:39:48', '2020-04-21 13:39:48', 0),
(1790, 11, 588, '2020-04-21', 1, '2020-04-21 13:39:48', '2020-04-21 13:39:48', 0),
(1791, 11, 589, '2020-04-21', 1, '2020-04-21 13:39:48', '2020-04-21 13:39:48', 0),
(1792, 11, 590, '2020-04-21', 1, '2020-04-21 13:39:48', '2020-04-21 13:39:48', 0),
(1793, 11, 591, '2020-04-21', 1, '2020-04-21 13:39:49', '2020-04-21 13:39:49', 0),
(1794, 11, 592, '2020-04-21', 1, '2020-04-21 13:39:49', '2020-04-21 13:39:49', 0),
(1795, 11, 593, '2020-04-21', 1, '2020-04-21 13:39:49', '2020-04-21 13:39:49', 0),
(1796, 11, 594, '2020-04-21', 1, '2020-04-21 13:39:49', '2020-04-21 13:39:49', 0),
(1797, 11, 595, '2020-04-21', 1, '2020-04-21 13:39:49', '2020-04-21 13:39:49', 0),
(1798, 11, 596, '2020-04-21', 1, '2020-04-21 13:39:50', '2020-04-21 13:39:50', 0),
(1799, 11, 597, '2020-04-21', 1, '2020-04-21 13:39:50', '2020-04-21 13:39:50', 0),
(1800, 11, 598, '2020-04-21', 1, '2020-04-21 13:39:50', '2020-04-21 13:39:50', 0),
(1801, 11, 599, '2020-04-21', 1, '2020-04-21 13:39:50', '2020-04-21 13:39:50', 0),
(1802, 11, 600, '2020-04-21', 1, '2020-04-21 13:39:50', '2020-04-21 13:39:50', 0),
(1803, 11, 601, '2020-04-21', 1, '2020-04-21 13:39:50', '2020-04-21 13:39:50', 0),
(1804, 11, 602, '2020-04-21', 1, '2020-04-21 13:39:50', '2020-04-21 13:39:50', 0),
(1805, 11, 603, '2020-04-21', 1, '2020-04-21 13:39:51', '2020-04-21 13:39:51', 0),
(1806, 11, 604, '2020-04-21', 1, '2020-04-21 13:39:51', '2020-04-21 13:39:51', 0),
(1807, 11, 609, '2020-04-21', 1, '2020-04-21 13:39:51', '2020-04-21 13:39:51', 0),
(1808, 11, 610, '2020-04-21', 1, '2020-04-21 13:39:51', '2020-04-21 13:39:51', 0),
(1809, 11, 611, '2020-04-21', 1, '2020-04-21 13:39:51', '2020-04-21 13:39:51', 0),
(1810, 11, 612, '2020-04-21', 1, '2020-04-21 13:39:51', '2020-04-21 13:39:51', 0),
(1811, 11, 613, '2020-04-21', 1, '2020-04-21 13:39:51', '2020-04-21 13:39:51', 0),
(1812, 11, 614, '2020-04-21', 1, '2020-04-21 13:39:51', '2020-04-21 13:39:51', 0),
(1813, 11, 615, '2020-04-21', 1, '2020-04-21 13:39:51', '2020-04-21 13:39:51', 0),
(1814, 11, 616, '2020-04-21', 1, '2020-04-21 13:39:52', '2020-04-21 13:39:52', 0),
(1815, 11, 617, '2020-04-21', 1, '2020-04-21 13:39:52', '2020-04-21 13:39:52', 0),
(1816, 11, 618, '2020-04-21', 1, '2020-04-21 13:39:52', '2020-04-21 13:39:52', 0),
(1817, 11, 619, '2020-04-21', 1, '2020-04-21 13:39:52', '2020-04-21 13:39:52', 0),
(1818, 11, 620, '2020-04-21', 1, '2020-04-21 13:39:52', '2020-04-21 13:39:52', 0),
(1819, 11, 621, '2020-04-21', 1, '2020-04-21 13:39:52', '2020-04-21 13:39:52', 0),
(1820, 11, 622, '2020-04-21', 1, '2020-04-21 13:39:52', '2020-04-21 13:39:52', 0),
(1821, 11, 623, '2020-04-21', 1, '2020-04-21 13:39:52', '2020-04-21 13:39:52', 0),
(1822, 11, 624, '2020-04-21', 1, '2020-04-21 13:39:52', '2020-04-21 13:39:52', 0),
(1823, 11, 625, '2020-04-21', 1, '2020-04-21 13:39:52', '2020-04-21 13:39:52', 0),
(1824, 11, 626, '2020-04-21', 1, '2020-04-21 13:39:52', '2020-04-21 13:39:52', 0),
(1825, 11, 627, '2020-04-21', 1, '2020-04-21 13:39:53', '2020-04-21 13:39:53', 0),
(1826, 11, 628, '2020-04-21', 1, '2020-04-21 13:39:53', '2020-04-21 13:39:53', 0),
(1827, 11, 629, '2020-04-21', 1, '2020-04-21 13:39:53', '2020-04-21 13:39:53', 0),
(1828, 11, 630, '2020-04-21', 1, '2020-04-21 13:39:53', '2020-04-21 13:39:53', 0),
(1829, 11, 631, '2020-04-21', 1, '2020-04-21 13:39:53', '2020-04-21 13:39:53', 0),
(1830, 11, 632, '2020-04-21', 1, '2020-04-21 13:39:54', '2020-04-21 13:39:54', 0),
(1831, 11, 633, '2020-04-21', 1, '2020-04-21 13:39:54', '2020-04-21 13:39:54', 0),
(1832, 11, 634, '2020-04-21', 1, '2020-04-21 13:39:54', '2020-04-21 13:39:54', 0),
(1833, 11, 635, '2020-04-21', 1, '2020-04-21 13:39:54', '2020-04-21 13:39:54', 0),
(1834, 11, 636, '2020-04-21', 1, '2020-04-21 13:39:54', '2020-04-21 13:39:54', 0),
(1835, 11, 637, '2020-04-21', 1, '2020-04-21 13:39:54', '2020-04-21 13:39:54', 0),
(1836, 11, 638, '2020-04-21', 1, '2020-04-21 13:39:54', '2020-04-21 13:39:54', 0),
(1837, 11, 639, '2020-04-21', 1, '2020-04-21 13:39:54', '2020-04-21 13:39:54', 0),
(1838, 11, 640, '2020-04-21', 1, '2020-04-21 13:39:54', '2020-04-21 13:39:54', 0),
(1839, 11, 641, '2020-04-21', 1, '2020-04-21 13:39:55', '2020-04-21 13:39:55', 0),
(1840, 11, 642, '2020-04-21', 1, '2020-04-21 13:39:55', '2020-04-21 13:39:55', 0),
(1841, 11, 643, '2020-04-21', 1, '2020-04-21 13:39:55', '2020-04-21 13:39:55', 0),
(1842, 11, 644, '2020-04-21', 1, '2020-04-21 13:39:55', '2020-04-21 13:39:55', 0),
(1843, 11, 645, '2020-04-21', 1, '2020-04-21 13:39:55', '2020-04-21 13:39:55', 0),
(1844, 11, 646, '2020-04-21', 1, '2020-04-21 13:39:55', '2020-04-21 13:39:55', 0),
(1845, 11, 647, '2020-04-21', 1, '2020-04-21 13:39:56', '2020-04-21 13:39:56', 0),
(1846, 11, 648, '2020-04-21', 1, '2020-04-21 13:39:56', '2020-04-21 13:39:56', 0),
(1847, 11, 649, '2020-04-21', 1, '2020-04-21 13:39:56', '2020-04-21 13:39:56', 0),
(1848, 11, 650, '2020-04-21', 1, '2020-04-21 13:39:56', '2020-04-21 13:39:56', 0),
(1849, 11, 651, '2020-04-21', 1, '2020-04-21 13:39:56', '2020-04-21 13:39:56', 0),
(1850, 11, 652, '2020-04-21', 1, '2020-04-21 13:39:56', '2020-04-21 13:39:56', 0),
(1851, 11, 653, '2020-04-21', 1, '2020-04-21 13:39:56', '2020-04-21 13:39:56', 0),
(1852, 11, 654, '2020-04-21', 1, '2020-04-21 13:39:57', '2020-04-21 13:39:57', 0),
(1853, 11, 655, '2020-04-21', 1, '2020-04-21 13:39:57', '2020-04-21 13:39:57', 0),
(1854, 11, 656, '2020-04-21', 1, '2020-04-21 13:39:57', '2020-04-21 13:39:57', 0),
(1855, 11, 657, '2020-04-21', 1, '2020-04-21 13:39:57', '2020-04-21 13:39:57', 0),
(1856, 11, 658, '2020-04-21', 1, '2020-04-21 13:39:57', '2020-04-21 13:39:57', 0),
(1857, 11, 659, '2020-04-21', 1, '2020-04-21 13:39:57', '2020-04-21 13:39:57', 0),
(1858, 11, 660, '2020-04-21', 1, '2020-04-21 13:39:57', '2020-04-21 13:39:57', 0),
(1859, 11, 661, '2020-04-21', 1, '2020-04-21 13:39:57', '2020-04-21 13:39:57', 0),
(1860, 11, 662, '2020-04-21', 1, '2020-04-21 13:39:57', '2020-04-21 13:39:57', 0),
(1861, 11, 663, '2020-04-21', 1, '2020-04-21 13:39:57', '2020-04-21 13:39:57', 0),
(1862, 11, 664, '2020-04-21', 1, '2020-04-21 13:39:58', '2020-04-21 13:39:58', 0),
(1863, 11, 665, '2020-04-21', 1, '2020-04-21 13:39:58', '2020-04-21 13:39:58', 0),
(1864, 11, 666, '2020-04-21', 1, '2020-04-21 13:39:58', '2020-04-21 13:39:58', 0),
(1865, 11, 667, '2020-04-21', 1, '2020-04-21 13:39:58', '2020-04-21 13:39:58', 0),
(1866, 11, 668, '2020-04-21', 1, '2020-04-21 13:39:58', '2020-04-21 13:39:58', 0),
(1867, 11, 669, '2020-04-21', 1, '2020-04-21 13:39:58', '2020-04-21 13:39:58', 0),
(1868, 11, 670, '2020-04-21', 1, '2020-04-21 13:39:58', '2020-04-21 13:39:58', 0),
(1869, 11, 671, '2020-04-21', 1, '2020-04-21 13:39:59', '2020-04-21 13:39:59', 0),
(1870, 11, 672, '2020-04-21', 1, '2020-04-21 13:39:59', '2020-04-21 13:39:59', 0),
(1871, 11, 673, '2020-04-21', 1, '2020-04-21 13:39:59', '2020-04-21 13:39:59', 0),
(1872, 11, 674, '2020-04-21', 1, '2020-04-21 13:39:59', '2020-04-21 13:39:59', 0),
(1873, 11, 675, '2020-04-21', 1, '2020-04-21 13:39:59', '2020-04-21 13:39:59', 0),
(1874, 11, 676, '2020-04-21', 1, '2020-04-21 13:39:59', '2020-04-21 13:39:59', 0),
(1875, 11, 678, '2020-04-21', 1, '2020-04-21 13:39:59', '2020-04-21 13:39:59', 0),
(1876, 11, 679, '2020-04-21', 1, '2020-04-21 13:39:59', '2020-04-21 13:39:59', 0),
(1877, 11, 680, '2020-04-21', 1, '2020-04-21 13:39:59', '2020-04-21 13:39:59', 0),
(1878, 11, 681, '2020-04-21', 1, '2020-04-21 13:40:00', '2020-04-21 13:40:00', 0),
(1879, 11, 686, '2020-04-21', 1, '2020-04-21 13:40:00', '2020-04-21 13:40:00', 0),
(1880, 11, 688, '2020-04-21', 1, '2020-04-21 13:40:00', '2020-04-21 13:40:00', 0),
(1881, 11, 689, '2020-04-21', 1, '2020-04-21 13:40:00', '2020-04-21 13:40:00', 0),
(1882, 11, 690, '2020-04-21', 1, '2020-04-21 13:40:00', '2020-04-21 13:40:00', 0),
(1883, 11, 691, '2020-04-21', 1, '2020-04-21 13:40:00', '2020-04-21 13:40:00', 0),
(1884, 11, 693, '2020-04-21', 1, '2020-04-21 13:40:01', '2020-04-21 13:40:01', 0),
(1885, 11, 694, '2020-04-21', 1, '2020-04-21 13:40:01', '2020-04-21 13:40:01', 0),
(1886, 11, 695, '2020-04-21', 1, '2020-04-21 13:40:01', '2020-04-21 13:40:01', 0),
(1887, 11, 696, '2020-04-21', 1, '2020-04-21 13:40:01', '2020-04-21 13:40:01', 0),
(1888, 11, 697, '2020-04-21', 1, '2020-04-21 13:40:01', '2020-04-21 13:40:01', 0),
(1889, 11, 698, '2020-04-21', 1, '2020-04-21 13:40:01', '2020-04-21 13:40:01', 0),
(1890, 11, 699, '2020-04-21', 1, '2020-04-21 13:40:01', '2020-04-21 13:40:01', 0),
(1891, 11, 707, '2020-04-21', 1, '2020-04-21 13:40:01', '2020-04-21 13:40:01', 0),
(1892, 11, 708, '2020-04-21', 1, '2020-04-21 13:40:02', '2020-04-21 13:40:02', 0),
(1893, 11, 709, '2020-04-21', 1, '2020-04-21 13:40:02', '2020-04-21 13:40:02', 0),
(1894, 11, 710, '2020-04-21', 1, '2020-04-21 13:40:02', '2020-04-21 13:40:02', 0),
(1895, 11, 711, '2020-04-21', 1, '2020-04-21 13:40:02', '2020-04-21 13:40:02', 0),
(1896, 11, 712, '2020-04-21', 1, '2020-04-21 13:40:02', '2020-04-21 13:40:02', 0),
(1897, 11, 713, '2020-04-21', 1, '2020-04-21 13:40:02', '2020-04-21 13:40:02', 0),
(1898, 11, 714, '2020-04-21', 1, '2020-04-21 13:40:02', '2020-04-21 13:40:02', 0),
(1899, 11, 715, '2020-04-21', 1, '2020-04-21 13:40:03', '2020-04-21 13:40:03', 0),
(1900, 11, 716, '2020-04-21', 1, '2020-04-21 13:40:03', '2020-04-21 13:40:03', 0),
(1901, 11, 717, '2020-04-21', 1, '2020-04-21 13:40:03', '2020-04-21 13:40:03', 0),
(1902, 11, 718, '2020-04-21', 1, '2020-04-21 13:40:03', '2020-04-21 13:40:03', 0),
(1903, 11, 719, '2020-04-21', 1, '2020-04-21 13:40:03', '2020-04-21 13:40:03', 0),
(1904, 11, 720, '2020-04-21', 1, '2020-04-21 13:40:04', '2020-04-21 13:40:04', 0),
(1905, 11, 721, '2020-04-21', 1, '2020-04-21 13:40:04', '2020-04-21 13:40:04', 0),
(1906, 11, 722, '2020-04-21', 1, '2020-04-21 13:40:04', '2020-04-21 13:40:04', 0),
(1907, 11, 723, '2020-04-21', 1, '2020-04-21 13:40:04', '2020-04-21 13:40:04', 0),
(1908, 11, 724, '2020-04-21', 1, '2020-04-21 13:40:04', '2020-04-21 13:40:04', 0),
(1909, 11, 725, '2020-04-21', 1, '2020-04-21 13:40:04', '2020-04-21 13:40:04', 0),
(1910, 11, 726, '2020-04-21', 1, '2020-04-21 13:40:04', '2020-04-21 13:40:04', 0),
(1911, 11, 728, '2020-04-21', 1, '2020-04-21 13:40:04', '2020-04-21 13:40:04', 0),
(1912, 11, 729, '2020-04-21', 1, '2020-04-21 13:40:04', '2020-04-21 13:40:04', 0),
(1913, 11, 730, '2020-04-21', 1, '2020-04-21 13:40:04', '2020-04-21 13:40:04', 0),
(1914, 11, 731, '2020-04-21', 1, '2020-04-21 13:40:05', '2020-04-21 13:40:05', 0),
(1915, 11, 733, '2020-04-21', 1, '2020-04-21 13:40:05', '2020-04-21 13:40:05', 0),
(1916, 11, 734, '2020-04-21', 1, '2020-04-21 13:40:05', '2020-04-21 13:40:05', 0),
(1917, 11, 735, '2020-04-21', 1, '2020-04-21 13:40:05', '2020-04-21 13:40:05', 0),
(1918, 11, 736, '2020-04-21', 1, '2020-04-21 13:40:05', '2020-04-21 13:40:05', 0),
(1919, 11, 737, '2020-04-21', 1, '2020-04-21 13:40:05', '2020-04-21 13:40:05', 0),
(1920, 11, 738, '2020-04-21', 1, '2020-04-21 13:40:06', '2020-04-21 13:40:06', 0),
(1921, 11, 739, '2020-04-21', 1, '2020-04-21 13:40:06', '2020-04-21 13:40:06', 0),
(1922, 11, 740, '2020-04-21', 1, '2020-04-21 13:40:06', '2020-04-21 13:40:06', 0),
(1923, 11, 741, '2020-04-21', 1, '2020-04-21 13:40:06', '2020-04-21 13:40:06', 0),
(1924, 11, 742, '2020-04-21', 1, '2020-04-21 13:40:06', '2020-04-21 13:40:06', 0),
(1925, 11, 743, '2020-04-21', 1, '2020-04-21 13:40:06', '2020-04-21 13:40:06', 0),
(1926, 11, 744, '2020-04-21', 1, '2020-04-21 13:40:06', '2020-04-21 13:40:06', 0),
(1927, 11, 745, '2020-04-21', 1, '2020-04-21 13:40:06', '2020-04-21 13:40:06', 0),
(1928, 11, 746, '2020-04-21', 1, '2020-04-21 13:40:06', '2020-04-21 13:40:06', 0),
(1929, 11, 747, '2020-04-21', 1, '2020-04-21 13:40:06', '2020-04-21 13:40:06', 0),
(1930, 11, 748, '2020-04-21', 1, '2020-04-21 13:40:06', '2020-04-21 13:40:06', 0),
(1931, 11, 749, '2020-04-21', 1, '2020-04-21 13:40:07', '2020-04-21 13:40:07', 0),
(1932, 11, 750, '2020-04-21', 1, '2020-04-21 13:40:07', '2020-04-21 13:40:07', 0),
(1933, 11, 751, '2020-04-21', 1, '2020-04-21 13:40:07', '2020-04-21 13:40:07', 0),
(1934, 11, 752, '2020-04-21', 1, '2020-04-21 13:40:07', '2020-04-21 13:40:07', 0),
(1935, 11, 753, '2020-04-21', 1, '2020-04-21 13:40:07', '2020-04-21 13:40:07', 0),
(1936, 11, 754, '2020-04-21', 1, '2020-04-21 13:40:07', '2020-04-21 13:40:07', 0),
(1937, 11, 755, '2020-04-21', 1, '2020-04-21 13:40:07', '2020-04-21 13:40:07', 0),
(1938, 11, 756, '2020-04-21', 1, '2020-04-21 13:40:07', '2020-04-21 13:40:07', 0),
(1939, 11, 757, '2020-04-21', 1, '2020-04-21 13:40:08', '2020-04-21 13:40:08', 0),
(1940, 11, 758, '2020-04-21', 1, '2020-04-21 13:40:08', '2020-04-21 13:40:08', 0),
(1941, 11, 759, '2020-04-21', 1, '2020-04-21 13:40:08', '2020-04-21 13:40:08', 0),
(1942, 11, 760, '2020-04-21', 1, '2020-04-21 13:40:08', '2020-04-21 13:40:08', 0),
(1943, 11, 761, '2020-04-21', 1, '2020-04-21 13:40:08', '2020-04-21 13:40:08', 0),
(1944, 11, 762, '2020-04-21', 1, '2020-04-21 13:40:08', '2020-04-21 13:40:08', 0),
(1945, 11, 763, '2020-04-21', 1, '2020-04-21 13:40:08', '2020-04-21 13:40:08', 0),
(1946, 11, 764, '2020-04-21', 1, '2020-04-21 13:40:08', '2020-04-21 13:40:08', 0),
(1947, 11, 765, '2020-04-21', 1, '2020-04-21 13:40:08', '2020-04-21 13:40:08', 0),
(1948, 11, 766, '2020-04-21', 1, '2020-04-21 13:40:08', '2020-04-21 13:40:08', 0),
(1949, 11, 767, '2020-04-21', 1, '2020-04-21 13:40:09', '2020-04-21 13:40:09', 0),
(1950, 11, 769, '2020-04-21', 1, '2020-04-21 13:40:09', '2020-04-21 13:40:09', 0),
(1951, 11, 770, '2020-04-21', 1, '2020-04-21 13:40:09', '2020-04-21 13:40:09', 0),
(1952, 11, 771, '2020-04-21', 1, '2020-04-21 13:40:09', '2020-04-21 13:40:09', 0),
(1953, 11, 772, '2020-04-21', 1, '2020-04-21 13:40:09', '2020-04-21 13:40:09', 0),
(1954, 11, 773, '2020-04-21', 1, '2020-04-21 13:40:09', '2020-04-21 13:40:09', 0),
(1955, 11, 774, '2020-04-21', 1, '2020-04-21 13:40:09', '2020-04-21 13:40:09', 0),
(1956, 11, 775, '2020-04-21', 1, '2020-04-21 13:40:09', '2020-04-21 13:40:09', 0),
(1957, 11, 776, '2020-04-21', 1, '2020-04-21 13:40:09', '2020-04-21 13:40:09', 0),
(1958, 11, 777, '2020-04-21', 1, '2020-04-21 13:40:10', '2020-04-21 13:40:10', 0),
(1959, 11, 778, '2020-04-21', 1, '2020-04-21 13:40:10', '2020-04-21 13:40:10', 0),
(1960, 11, 779, '2020-04-21', 1, '2020-04-21 13:40:10', '2020-04-21 13:40:10', 0),
(1961, 11, 780, '2020-04-21', 1, '2020-04-21 13:40:10', '2020-04-21 13:40:10', 0),
(1962, 11, 781, '2020-04-21', 1, '2020-04-21 13:40:10', '2020-04-21 13:40:10', 0),
(1963, 11, 784, '2020-04-21', 1, '2020-04-21 13:40:10', '2020-04-21 13:40:10', 0),
(1964, 11, 785, '2020-04-21', 1, '2020-04-21 13:40:10', '2020-04-21 13:40:10', 0),
(1965, 11, 787, '2020-04-21', 1, '2020-04-21 13:40:10', '2020-04-21 13:40:10', 0),
(1966, 11, 789, '2020-04-21', 1, '2020-04-21 13:40:10', '2020-04-21 13:40:10', 0),
(1967, 11, 790, '2020-04-21', 1, '2020-04-21 13:40:11', '2020-04-21 13:40:11', 0),
(1968, 11, 791, '2020-04-21', 1, '2020-04-21 13:40:11', '2020-04-21 13:40:11', 0),
(1969, 11, 792, '2020-04-21', 1, '2020-04-21 13:40:11', '2020-04-21 13:40:11', 0),
(1970, 11, 793, '2020-04-21', 1, '2020-04-21 13:40:11', '2020-04-21 13:40:11', 0),
(1971, 11, 794, '2020-04-21', 1, '2020-04-21 13:40:11', '2020-04-21 13:40:11', 0),
(1972, 11, 795, '2020-04-21', 1, '2020-04-21 13:40:11', '2020-04-21 13:40:11', 0),
(1973, 11, 796, '2020-04-21', 1, '2020-04-21 13:40:12', '2020-04-21 13:40:12', 0),
(1974, 11, 797, '2020-04-21', 1, '2020-04-21 13:40:12', '2020-04-21 13:40:12', 0),
(1975, 11, 798, '2020-04-21', 1, '2020-04-21 13:40:12', '2020-04-21 13:40:12', 0),
(1976, 11, 799, '2020-04-21', 1, '2020-04-21 13:40:12', '2020-04-21 13:40:12', 0),
(1977, 11, 800, '2020-04-21', 1, '2020-04-21 13:40:12', '2020-04-21 13:40:12', 0),
(1978, 11, 801, '2020-04-21', 1, '2020-04-21 13:40:12', '2020-04-21 13:40:12', 0);

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
(27, 'Interpretation Quran', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" id=\"Layer_1\" x=\"0px\" y=\"0px\" viewBox=\"0 0 27 22\" style=\"enable-background:new 0 0 27 22;\" xml:space=\"preserve\">\r\n<g>     <path class=\"st0\" d=\"M13.8,12.9c2,0,3.6-1.4,4-3.3c0-0.2-0.1-0.5-0.3-0.6c-0.2-0.1-0.5-0.1-0.6,0c-0.4,0.3-0.9,0.4-1.3,0.4   c-1.3,0-2.3-1-2.3-2.3c0-0.5,0.1-0.9,0.4-1.3c0.1-0.2,0.1-0.4,0-0.6c-0.1-0.2-0.4-0.3-0.6-0.3c-1.9,0.3-3.3,2-3.3,4   C9.8,11,11.6,12.9,13.8,12.9z M12.1,6.5c0,0.2-0.1,0.4-0.1,0.6c0,1.9,1.6,3.5,3.5,3.5c0.2,0,0.4,0,0.6-0.1   c-0.5,0.7-1.4,1.2-2.3,1.2c-1.6,0-2.9-1.3-2.9-2.9C10.9,7.8,11.4,7,12.1,6.5z\"/>     <path class=\"st0\" d=\"M19.3,16.4c0.3,0,0.6-0.3,0.6-0.6v-14c0-0.3-0.3-0.6-0.6-0.6H9.5c-1.3,0-2.3,1-2.3,2.3v14c0,1.3,1,2.3,2.3,2.3   h1.2v0.6c0,0.2,0.1,0.4,0.3,0.5c0.2,0.1,0.4,0.1,0.6,0l1.4-0.9l1.4,0.9c0.2,0.1,0.4,0.1,0.6,0c0.2-0.1,0.3-0.3,0.3-0.5v-0.6h4   c0.3,0,0.6-0.3,0.6-0.6c0-0.3-0.3-0.6-0.6-0.6c-0.2,0-0.6-0.5-0.6-1.2C18.7,16.9,19.1,16.4,19.3,16.4z M10.6,18.7H9.5   c-0.6,0-1.2-0.5-1.2-1.2c0-0.6,0.5-1.2,1.2-1.2h1.2V18.7z M14.1,19.4l-0.8-0.6c-0.2-0.1-0.4-0.1-0.6,0l-0.8,0.6v-3h2.3V19.4z    M17.8,18.7h-2.5v-2.3h2.5c-0.1,0.3-0.2,0.7-0.2,1.2C17.6,18,17.7,18.4,17.8,18.7z M18.7,15.3c-1.8,0-7.1,0-9.3,0   c-0.4,0-0.8,0.1-1.2,0.3v-12c0-0.6,0.5-1.2,1.2-1.2h9.3V15.3z\"/> </g> </svg>', 7, '2020-04-16 08:30:09', '2020-04-18 12:52:39'),
(28, 'أرشادات منظمة الصحة العالمية', NULL, 0, '2020-04-18 17:02:23', '2020-04-18 17:02:23');

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
(47, 25, 'A verse and Info', 'uploads/services/5e97ae118df48.png', 0, '2020-04-16 05:00:01', '2020-04-18 12:50:23', 4),
(48, 25, 'God Names', 'uploads/services/5e97b0dd677cb.png', 0, '2020-04-16 05:11:57', '2020-04-18 02:35:14', 3),
(49, 25, 'The Quran Answer', 'uploads/services/5e97baee940f2.png', 0, '2020-04-16 05:54:54', '2020-04-16 05:54:54', 1),
(50, 25, 'Pillars of Islam', 'uploads/services/5e97bd69d47e8.png', 0, '2020-04-16 06:05:29', '2020-04-18 12:48:59', 4),
(51, 25, 'Hajj And Umrah guide', 'uploads/services/5e97c0d986050.png', 0, '2020-04-16 06:20:09', '2020-04-16 06:20:09', 1),
(52, 25, 'Azkar', 'uploads/services/5e97c3977967c.png', 0, '2020-04-16 06:31:51', '2020-04-16 06:31:51', 1),
(53, 26, 'Doaa', 'uploads/services/5e97cd03ea867.png', 0, '2020-04-16 07:12:03', '2020-04-18 02:14:17', 1),
(54, 26, 'Ahadeth', 'uploads/services/5e97cd5f84cf4.png', 0, '2020-04-16 07:13:35', '2020-04-18 02:12:58', 1),
(57, 26, 'Anasheed', 'uploads/services/5e97ce456aee5.png', 0, '2020-04-16 07:17:25', '2020-04-18 02:12:35', 1),
(58, 27, 'English', 'uploads/services/5e9abf9eb72c3.png', 0, '2020-04-16 08:31:49', '2020-04-18 12:54:58', 1),
(59, 27, 'Arabic', 'uploads/services/5e9abfb5263c5.png', 0, '2020-04-16 08:32:25', '2020-04-18 12:55:32', 1),
(60, 27, 'Urdo', 'uploads/services/5e9abf8263cb6.png', 0, '2020-04-16 08:33:03', '2020-04-18 12:56:27', 1),
(61, 26, 'Salat EL Taraweh', 'uploads/services/5e99dd394e2b9.png', 0, '2020-04-17 20:45:45', '2020-04-17 20:45:45', 1),
(62, 20, 'Ebthal', 'uploads/services/5e9a009c13ec7.png', 0, '2020-04-17 23:16:44', '2020-04-18 01:50:30', 1),
(63, 21, 'Interpretation Quran', 'uploads/services/5e9a432d6752a.png', 0, '2020-04-18 04:00:45', '2020-04-18 04:00:45', 1),
(65, 28, 'covid 19', 'uploads/services/5e9c2dbacc14b.png', 0, '2020-04-18 17:05:14', '2020-04-19 08:53:46', 4),
(66, 20, 'new', 'uploads/services/5e9c671cbf712.png', 0, '2020-04-19 12:58:36', '2020-04-19 12:58:36', 2);

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
(81, 'service_delete_flag', '1', '2020-04-16 16:54:33', '2020-04-18 14:57:12', 7, 0),
(82, 'provider_delete_flag', '0', '2020-04-16 16:54:53', '2020-04-16 18:41:43', 7, 0),
(83, 'content_exact_name', '0', '2020-04-16 21:27:06', '2020-04-16 21:43:32', 7, 0);

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
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(84, 2, 103, 'أناشيد', '2020-04-14 02:15:19', '2020-04-14 02:15:19'),
(95, 2, 114, 'أدعية', '2020-04-14 02:28:53', '2020-04-18 02:14:39'),
(106, 2, 125, 'الطبلاوى', '2020-04-14 02:43:07', '2020-04-14 02:43:07'),
(107, 2, 126, 'الهلباوى', '2020-04-14 02:43:57', '2020-04-14 02:43:57'),
(108, 2, 127, 'إبتهالات', '2020-04-14 02:45:34', '2020-04-15 23:20:48'),
(109, 2, 128, 'إبتهالات', '2020-04-14 02:49:36', '2020-04-14 02:49:36'),
(110, 2, 129, 'قرآن', '2020-04-14 02:51:02', '2020-04-14 02:51:02'),
(244, 2, 263, 'القرآن الكريم', '2020-04-15 22:11:24', '2020-04-16 02:00:55'),
(245, 2, 264, 'مشاري راشد العفاسي', '2020-04-15 22:13:52', '2020-04-16 05:50:39'),
(249, 2, 268, 'الطبلاوي', '2020-04-15 22:21:08', '2020-04-15 22:21:08'),
(253, 2, 272, 'سؤال وجواب', '2020-04-15 23:14:24', '2020-04-15 23:14:24'),
(254, 2, 273, 'موضوعات', '2020-04-15 23:30:31', '2020-04-15 23:30:31'),
(255, 2, 274, 'قصص الانبياء', '2020-04-15 23:32:39', '2020-04-15 23:32:39'),
(257, 2, 276, 'صفات ماء الوضوء', '2020-04-16 00:38:06', '2020-04-18 03:24:28'),
(258, 2, 277, 'حكم  ماء الصرف', '2020-04-16 00:39:47', '2020-04-17 15:47:16'),
(259, 2, 278, 'الماء المشمس', '2020-04-16 00:43:19', '2020-04-17 15:47:38'),
(260, 2, 279, 'حكم الطهور بالثلج', '2020-04-16 01:01:56', '2020-04-17 15:48:00'),
(261, 2, 280, 'حكم الغسل بالماء والصابون', '2020-04-16 01:05:14', '2020-04-17 15:48:19'),
(262, 2, 281, 'عيسى عليه السلام ( ولادة عيسى عليه السلام )', '2020-04-16 01:07:32', '2020-04-16 04:40:19'),
(263, 2, 282, 'السيرة النبوية', '2020-04-16 01:17:22', '2020-04-16 01:17:22'),
(264, 2, 283, 'الفتح المبين (صلح الحديبية)  صلح الحديبية', '2020-04-16 01:19:43', '2020-04-16 04:32:58'),
(265, 2, 284, 'الفتح المبين (صلح الحديبية)  صلح الحديبية', '2020-04-16 04:34:26', '2020-04-16 04:34:26'),
(266, 2, 285, 'الفتح المبين (صلح الحديبية)  صلح الحديبية', '2020-04-16 04:34:42', '2020-04-16 04:34:42'),
(267, 2, 286, 'الفتح المبين (صلح الحديبية)  صلح الحديبية', '2020-04-16 04:34:56', '2020-04-16 04:34:56'),
(268, 2, 287, 'الفتح المبين (صلح الحديبية)  صلح الحديبية', '2020-04-16 04:35:08', '2020-04-16 04:35:08'),
(273, 2, 292, 'دليل الصائم', '2020-04-16 04:47:01', '2020-04-16 04:47:01'),
(274, 2, 293, 'الرقية الشرعية', '2020-04-16 04:48:52', '2020-04-16 04:48:52'),
(275, 2, 294, 'ايه ومعلومة', '2020-04-16 05:00:01', '2020-04-16 05:00:01'),
(276, 2, 295, 'سورة البقرة  186', '2020-04-16 05:04:39', '2020-04-16 05:04:39'),
(277, 2, 296, '7 سورة إبراهيم', '2020-04-16 05:06:33', '2020-04-16 05:06:33'),
(278, 2, 297, '42سورة الزمر', '2020-04-16 05:07:23', '2020-04-16 05:07:23'),
(279, 2, 298, 'سورة النساء 19', '2020-04-16 05:09:04', '2020-04-16 05:09:04'),
(280, 2, 299, 'سورة الأعراف 32', '2020-04-16 05:09:55', '2020-04-16 05:09:55'),
(281, 2, 300, 'أسماء الله الحسنى', '2020-04-16 05:11:57', '2020-04-16 05:11:57'),
(292, 2, 311, 'فالدنيا دار اختبار للايمان، والاخرة دار الجزاء.. ومن الناس من لا يعبد الله.. هؤلاء متساوون في عطاء الربوبية مع المؤمنين في الدنيا.. ولكن في الآخرة يكون عطاء الالوهية للمؤمنين وحدهم.. فنعم الله لأصحاب الجنة، وعطاءات الله لمن آمن.. واقرأ قوله تبارك وتعالى.\r\n{قُلْ مَنْ حَرَّمَ زِينَةَ الله التي أَخْرَجَ لِعِبَادِهِ وَالْطَّيِّبَاتِ مِنَ الرزق قُلْ هِي لِلَّذِينَ آمَنُواْ فِي الحياة الدنيا خَالِصَةً يَوْمَ القيامة كَذَلِكَ نُفَصِّلُ الآيات لِقَوْمٍ يَعْلَمُونَ} [الأعراف: 32]\r\nعلى ان الحمد لله ليس في الدنيا فقط.. بل هو في الدنيا والاخرة', '2020-04-16 05:24:32', '2020-04-16 05:24:32'),
(293, 2, 312, 'واذا عدنا إلى بيوتنا فالله سخر لنا زوجاتنا ورزقنا بأولادنا وهذا يستوجب الحمد\r\nاذن فكل حركة حياة في الدنيا من الانسان تستوجب الحمد.. ولهذا لابد ان يكون الانسان حامدا دائما..\r\nبل ان الانسان يجب ان يحمد الله على اي مكروه أصابه؛ لأنه قد يكون الشيء الذي يعتبره شرا هو عينه الخير\r\nفالله تعالى يقول:\r\n{يَا أَيُّهَا الذين آمَنُواْ لاَ يَحِلُّ لَكُمْ أَن تَرِثُواْ النسآء كَرْهاً وَلاَ تَعْضُلُوهُنَّ لِتَذْهَبُواْ بِبَعْضِ ما آتَيْتُمُوهُنَّ إِلاَّ أَن يَأْتِينَ بِفَاحِشَةٍ مُّبَيِّنَةٍ وَعَاشِرُوهُنَّ بالمعروف فَإِن كَرِهْتُمُوهُنَّ فعسى أَن تَكْرَهُواْ شَيْئاً وَيَجْعَلَ الله فِيهيهِ خَيْراً كَثِيراً}\r\n[النساء: 19]', '2020-04-16 05:25:52', '2020-04-16 05:25:52'),
(294, 2, 313, 'عندما ننام ويأخذ الله سبحانه وتعالى أرواحنا، ثم يردها الينا عندما نستيقظ، فإن هذا يوجب الحمد، فالله سبحانه وتعالى يقول:\r\n{الله يَتَوَفَّى الأنفس حِينَ مَوْتِهَا والتي لَمْ تَمُتْ فِي مَنَامِهَا فَيُمْسِكُ التي قضى عَلَيْهَا الموت وَيُرْسِلُ الأخرى إلى أَجَلٍ مُّسَمًّى إِنَّ فِي ذَلِكَ لآيَاتٍ لِّقَوْمٍ يَتَفَكَّرُونَ}\r\n[الزمر: 42] وهكذا فإن مجرد استيقاظنا من النوم، وان الله سبحانه وتعالى رد علينا أرواحنا، وهذا الرد يستوجب الحمد،', '2020-04-16 05:27:13', '2020-04-16 05:27:13'),
(295, 2, 314, '{وَإِذْ تَأَذَّنَ رَبُّكُمْ لَئِن شَكَرْتُمْ لأَزِيدَنَّكُمْ وَلَئِن كَفَرْتُمْ إِنَّ عَذَابِي لَشَدِيدٌ} [إبراهيم: 7]\r\nوهكذا نعرف ان الشكر على النعمة يعطينا مزيدا من النعمة.. فنشكر عليها فتعطينا المزيد وهكذا يظل الحمد دائماً والنعمة دائمة.. اننا لو استعرضنا حياتنا كلها فكل حركة فيها تقتضي الحمد،', '2020-04-16 05:31:28', '2020-04-16 05:31:28'),
(296, 2, 315, 'وَإِذَا سَأَلَكَ عِبَادِي عَنِّي فَإِنِّي قَرِيبٌ أُجِيبُ دَعْوَةَ الداع إِذَا دَعَانِ فَلْيَسْتَجِيبُواْ لِي وَلْيُؤْمِنُواْ بِي لَععَلَّهُمْ يَرْشُدُونَ} [البقرة: 186]\r\nوالله سبحانه وتعالى يعرف ما في نفسك، ولذلك فإنه يعطيك دون أن تسأل. واقرأ الحديث القدسي: يقول رب العزة: (من شغله ذكري عن مسألتي أعطيته أفضل ما أعطي السائلين)', '2020-04-16 05:35:20', '2020-04-16 05:35:20'),
(297, 2, 316, 'القرآن يجيب', '2020-04-16 05:54:54', '2020-04-16 05:54:54'),
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
(313, 2, 332, 'أدعية', '2020-04-16 07:12:03', '2020-04-18 02:14:17'),
(314, 2, 333, 'أحاديث', '2020-04-16 07:13:35', '2020-04-18 02:12:58'),
(317, 2, 336, 'أناشيد', '2020-04-16 07:17:25', '2020-04-18 02:12:35'),
(318, 2, 337, 'لا تصوموا حتى تروا الهلال', '2020-04-16 08:06:05', '2020-04-17 22:40:19'),
(319, 2, 338, 'اذا جاء رمضان', '2020-04-16 08:07:59', '2020-04-17 22:44:56'),
(324, 2, 343, 'تفسير القرآن', '2020-04-16 08:30:09', '2020-04-16 08:30:09'),
(325, 2, 344, 'الإنجليزية', '2020-04-16 08:31:49', '2020-04-18 12:54:58'),
(326, 2, 345, 'العربية', '2020-04-16 08:32:25', '2020-04-18 12:55:32'),
(327, 2, 346, 'الأردية', '2020-04-16 08:33:03', '2020-04-18 12:56:27'),
(348, 2, 367, 'سورة الطلاق', '2020-04-16 23:34:41', '2020-04-16 23:34:41'),
(350, 2, 369, 'سورة التحريم', '2020-04-16 23:38:42', '2020-04-16 23:38:42'),
(351, 2, 370, 'سورة الملك', '2020-04-16 23:43:17', '2020-04-16 23:43:17'),
(352, 2, 371, 'سورة القلم', '2020-04-16 23:46:46', '2020-04-16 23:46:46'),
(353, 2, 372, 'سورة الحاقة', '2020-04-16 23:49:38', '2020-04-16 23:49:38'),
(354, 2, 373, 'سورة المعارج', '2020-04-16 23:52:27', '2020-04-18 17:34:03'),
(355, 2, 374, 'سورة نوح', '2020-04-16 23:55:03', '2020-04-16 23:55:03'),
(356, 2, 375, 'سورة الجن', '2020-04-16 23:57:36', '2020-04-16 23:57:36'),
(357, 2, 376, 'سورة المزمل', '2020-04-17 00:00:19', '2020-04-17 00:00:19'),
(358, 2, 377, 'سورة المدثر', '2020-04-17 00:03:07', '2020-04-17 00:03:07'),
(359, 2, 378, 'سورة القيامة', '2020-04-17 00:04:59', '2020-04-17 00:04:59'),
(360, 2, 379, 'سورة الانسان', '2020-04-17 00:08:09', '2020-04-17 00:08:09'),
(361, 2, 380, 'سورة المراسلات', '2020-04-17 00:10:24', '2020-04-17 00:10:24'),
(364, 2, 383, 'سورة النبأ', '2020-04-17 00:13:21', '2020-04-17 00:13:21'),
(365, 2, 384, 'سورة النازعات', '2020-04-17 00:15:54', '2020-04-17 00:15:54'),
(366, 2, 385, 'سورة عبس', '2020-04-17 00:18:25', '2020-04-17 00:18:25'),
(367, 2, 386, 'سورة التكوير', '2020-04-17 00:20:17', '2020-04-17 00:20:17'),
(368, 2, 387, 'سورة الانفطار', '2020-04-17 00:21:41', '2020-04-17 00:21:41'),
(369, 2, 388, 'سورة المطفيفين', '2020-04-17 00:24:05', '2020-04-17 00:24:05'),
(370, 2, 389, 'سورة الانشقاق', '2020-04-17 00:25:43', '2020-04-17 00:25:43'),
(371, 2, 390, 'سورة البروج', '2020-04-17 00:27:18', '2020-04-17 00:27:18'),
(372, 2, 391, 'سورة الطارق', '2020-04-17 00:28:24', '2020-04-17 00:28:24'),
(373, 2, 392, 'سورة الاعلى', '2020-04-17 00:29:46', '2020-04-17 00:29:46'),
(374, 2, 393, 'سورة الغاشية', '2020-04-17 00:31:16', '2020-04-17 00:31:16'),
(375, 2, 394, 'سورة الفجر', '2020-04-17 00:33:02', '2020-04-17 00:33:02'),
(376, 2, 395, 'سورة البلد', '2020-04-17 00:34:20', '2020-04-17 00:34:20'),
(377, 2, 396, 'سورة الشمس', '2020-04-17 00:35:18', '2020-04-17 00:35:18'),
(378, 2, 397, 'سورة الليل', '2020-04-17 00:36:27', '2020-04-17 00:36:27'),
(379, 2, 398, 'سورة الضحى', '2020-04-17 00:37:22', '2020-04-17 00:37:22'),
(380, 2, 399, 'سورة الشرح', '2020-04-17 00:38:17', '2020-04-17 00:38:17'),
(381, 2, 400, 'سورة التين', '2020-04-17 00:39:12', '2020-04-17 00:39:12'),
(382, 2, 401, 'سورة العلق', '2020-04-17 00:40:17', '2020-04-17 00:40:17'),
(383, 2, 402, 'سورة القدر', '2020-04-17 00:41:04', '2020-04-17 00:41:04'),
(384, 2, 403, 'سورة البينة', '2020-04-17 00:42:19', '2020-04-17 00:42:19'),
(385, 2, 404, 'سورة الزلزلة', '2020-04-17 00:43:12', '2020-04-17 00:43:12'),
(386, 2, 405, 'سورة العاديات', '2020-04-17 00:44:25', '2020-04-17 00:44:25'),
(387, 2, 406, 'سورة القارعة', '2020-04-17 00:45:33', '2020-04-17 00:45:33'),
(388, 2, 407, 'سورة التكاثر', '2020-04-17 00:46:28', '2020-04-17 00:46:28'),
(389, 2, 408, 'سورة العصر', '2020-04-17 00:47:12', '2020-04-17 00:47:12'),
(390, 2, 409, 'سورة الهمزة', '2020-04-17 00:48:15', '2020-04-17 00:48:15'),
(391, 2, 410, 'سورة الفيل', '2020-04-17 00:49:06', '2020-04-17 00:49:06'),
(392, 2, 411, 'سورة قريش', '2020-04-17 00:49:59', '2020-04-17 00:49:59'),
(393, 2, 412, 'سورة الماعون', '2020-04-17 00:50:48', '2020-04-17 00:50:48'),
(394, 2, 413, 'سورة الكوثر', '2020-04-17 00:51:32', '2020-04-17 00:51:32'),
(395, 2, 414, 'سورة الكافرون', '2020-04-17 00:52:16', '2020-04-17 00:52:16'),
(396, 2, 415, 'سورة النصر', '2020-04-17 00:52:57', '2020-04-17 00:52:57'),
(397, 2, 416, 'سورة المسد', '2020-04-17 00:53:42', '2020-04-17 00:53:42'),
(398, 2, 417, 'سورة الإخلاص', '2020-04-17 00:54:24', '2020-04-17 00:54:24'),
(399, 2, 418, 'سورة الفلق', '2020-04-17 00:55:13', '2020-04-17 00:55:13'),
(400, 2, 419, 'سورة الناس', '2020-04-17 00:55:50', '2020-04-17 00:55:50'),
(401, 2, 420, 'سورة الطلاق', '2020-04-17 01:15:36', '2020-04-17 01:15:36'),
(402, 2, 421, 'سورة التحريم', '2020-04-17 01:18:26', '2020-04-17 01:18:26'),
(403, 2, 422, 'سورة الملك', '2020-04-17 01:22:12', '2020-04-17 01:22:12'),
(404, 2, 423, 'سورة القلم', '2020-04-17 01:25:58', '2020-04-17 01:25:58'),
(405, 2, 424, 'سورة الحاقة', '2020-04-17 01:29:15', '2020-04-17 01:29:15'),
(406, 2, 425, 'سورة المعارج', '2020-04-17 01:31:46', '2020-04-18 18:08:54'),
(407, 2, 426, 'سورة نوح', '2020-04-17 01:34:34', '2020-04-17 01:34:34'),
(408, 2, 427, 'سورة الجن', '2020-04-17 01:37:07', '2020-04-17 01:37:07'),
(409, 2, 428, 'سورة المزمل', '2020-04-17 01:39:06', '2020-04-17 01:39:06'),
(410, 2, 429, 'سورة المدثر', '2020-04-17 01:41:36', '2020-04-17 01:41:36'),
(411, 2, 430, 'سورة القيامة', '2020-04-17 01:43:43', '2020-04-17 01:43:43'),
(412, 2, 431, 'سورة الانسان', '2020-04-17 01:46:52', '2020-04-17 01:46:52'),
(413, 2, 432, 'سورة المراسلات', '2020-04-17 01:49:18', '2020-04-17 01:49:18'),
(414, 2, 433, 'سورة النبأ', '2020-04-17 01:51:59', '2020-04-17 01:51:59'),
(415, 2, 434, 'سورة النازعات', '2020-04-17 01:54:07', '2020-04-17 01:54:07'),
(416, 2, 435, 'سورة عبس', '2020-04-17 01:55:53', '2020-04-17 01:55:53'),
(417, 2, 436, 'سورة التكوير', '2020-04-17 01:57:28', '2020-04-17 01:57:28'),
(418, 2, 437, 'سورة الانفطار', '2020-04-17 01:58:51', '2020-04-17 01:58:51'),
(419, 2, 438, 'سورة المطفيفين', '2020-04-17 02:01:16', '2020-04-17 02:01:16'),
(420, 2, 439, 'سورة الانشقاق', '2020-04-17 02:02:58', '2020-04-17 02:02:58'),
(421, 2, 440, 'سورة البروج', '2020-04-17 02:04:27', '2020-04-17 02:04:27'),
(422, 2, 441, 'سورة الطارق', '2020-04-17 02:05:38', '2020-04-17 02:05:38'),
(423, 2, 442, 'سورة الاعلى', '2020-04-17 02:06:53', '2020-04-17 02:06:53'),
(424, 2, 443, 'سورة الغاشية', '2020-04-17 02:08:11', '2020-04-17 02:08:11'),
(425, 2, 444, 'سورة الفجر', '2020-04-17 02:09:49', '2020-04-17 02:09:49'),
(426, 2, 445, 'سورة البلد', '2020-04-17 02:11:00', '2020-04-17 02:11:00'),
(427, 2, 446, 'سورة الشمس', '2020-04-17 02:14:23', '2020-04-17 02:14:23'),
(428, 2, 447, 'سورة الليل', '2020-04-17 02:15:33', '2020-04-17 02:15:33'),
(429, 2, 448, 'سورة الضحى', '2020-04-17 02:16:32', '2020-04-17 02:16:32'),
(430, 2, 449, 'سورة الشرح', '2020-04-17 02:17:16', '2020-04-17 02:17:16'),
(431, 2, 450, 'سورة التين', '2020-04-17 02:18:10', '2020-04-17 02:18:10'),
(432, 2, 451, 'سورة العلق', '2020-04-17 02:19:20', '2020-04-17 02:19:20'),
(433, 2, 452, 'سورة القدر', '2020-04-17 02:20:05', '2020-04-17 02:20:05'),
(434, 2, 453, 'سورة البينة', '2020-04-17 02:21:13', '2020-04-17 02:21:13'),
(435, 2, 454, 'سورة الزلزلة', '2020-04-17 02:22:02', '2020-04-17 02:22:02'),
(436, 2, 455, 'سورة العاديات', '2020-04-17 02:23:14', '2020-04-17 02:23:14'),
(437, 2, 456, 'سورة القارعة', '2020-04-17 02:24:03', '2020-04-17 02:24:03'),
(438, 2, 457, 'سورة التكاثر', '2020-04-17 02:24:51', '2020-04-17 02:24:51'),
(439, 2, 458, 'سورة العصر', '2020-04-17 02:25:30', '2020-04-17 02:25:30'),
(440, 2, 459, 'سورة الهمزة', '2020-04-17 02:26:22', '2020-04-17 02:26:22'),
(441, 2, 460, 'سورة الفيل', '2020-04-17 02:27:11', '2020-04-17 02:27:11'),
(442, 2, 461, 'سورة قريش', '2020-04-17 02:28:07', '2020-04-17 02:28:07'),
(443, 2, 462, 'سورة الماعون', '2020-04-17 02:28:53', '2020-04-17 02:28:53'),
(444, 2, 463, 'سورة الكوثر', '2020-04-17 02:29:34', '2020-04-17 02:29:34'),
(445, 2, 464, 'سورة الكافرون', '2020-04-17 02:30:17', '2020-04-17 02:30:17'),
(446, 2, 465, 'سورة النصر', '2020-04-17 02:30:57', '2020-04-17 02:30:57'),
(447, 2, 466, 'سورة المسد', '2020-04-17 02:31:37', '2020-04-17 02:31:37'),
(448, 2, 467, 'سورة الإخلاص', '2020-04-17 02:32:13', '2020-04-17 02:32:13'),
(449, 2, 468, 'سورة الفلق', '2020-04-17 02:32:45', '2020-04-17 02:32:45'),
(450, 2, 469, 'سورة الناس', '2020-04-17 02:33:21', '2020-04-17 02:33:21'),
(451, 2, 470, 'اتدرون ما الغيبة', '2020-04-17 02:44:24', '2020-04-17 02:44:24'),
(452, 2, 471, 'اذا رأى أحدكم من أخية أو من نفسه', '2020-04-17 02:45:05', '2020-04-17 02:45:05'),
(453, 2, 472, 'يكبر ابن آدم ويكبر معه أثنان', '2020-04-17 02:46:21', '2020-04-17 02:46:21'),
(454, 2, 473, 'عيسى', '2020-04-17 02:50:05', '2020-04-17 02:50:05'),
(455, 2, 474, 'عيسى', '2020-04-17 02:50:41', '2020-04-17 02:50:41'),
(456, 2, 475, 'محمد', '2020-04-17 02:51:15', '2020-04-17 02:51:15'),
(457, 2, 476, 'محمد', '2020-04-17 02:51:36', '2020-04-17 02:51:36'),
(458, 2, 477, 'نوح', '2020-04-17 02:52:03', '2020-04-17 02:52:03'),
(459, 2, 478, 'نوح', '2020-04-17 02:52:22', '2020-04-17 02:52:22'),
(460, 2, 479, 'العمرة الي العمرة كفارة لما بينهما', '2020-04-17 02:53:08', '2020-04-17 02:53:08'),
(461, 2, 480, 'هود', '2020-04-17 02:53:56', '2020-04-17 02:53:56'),
(462, 2, 481, 'هود', '2020-04-17 02:54:17', '2020-04-17 02:54:17'),
(463, 2, 482, 'لا يدخل الجنة من كان في قلبه مثقال ذرة من كبر', '2020-04-17 02:54:17', '2020-04-17 02:54:17'),
(464, 2, 483, 'صالح', '2020-04-17 02:54:42', '2020-04-17 02:54:42'),
(465, 2, 484, 'صالح', '2020-04-17 02:55:04', '2020-04-17 02:55:04'),
(466, 2, 485, 'ابراهيم', '2020-04-17 02:55:31', '2020-04-17 02:55:31'),
(467, 2, 486, 'ابراهيم', '2020-04-17 02:55:51', '2020-04-17 02:55:51'),
(468, 2, 487, 'ادم', '2020-04-17 03:01:45', '2020-04-17 03:01:45'),
(469, 2, 488, 'ادم', '2020-04-17 03:02:11', '2020-04-17 03:02:11'),
(470, 2, 489, 'ادريس', '2020-04-17 03:02:39', '2020-04-17 03:02:39'),
(471, 2, 490, 'ادريس', '2020-04-17 03:03:04', '2020-04-17 03:03:04'),
(472, 2, 491, 'لوط', '2020-04-17 03:03:52', '2020-04-17 03:03:52'),
(473, 2, 492, 'لوط', '2020-04-17 03:04:14', '2020-04-17 03:04:14'),
(474, 2, 493, 'إسماعيل', '2020-04-17 03:06:32', '2020-04-17 03:06:32'),
(475, 2, 494, 'إسماعيل', '2020-04-17 03:06:57', '2020-04-17 03:06:57'),
(476, 2, 495, 'إسحاق', '2020-04-17 03:07:31', '2020-04-17 03:07:31'),
(477, 2, 496, 'إسحاق', '2020-04-17 03:07:53', '2020-04-17 03:07:53'),
(478, 2, 497, 'يعقوب', '2020-04-17 03:08:25', '2020-04-17 03:08:25'),
(479, 2, 498, 'يعقوب', '2020-04-17 03:08:49', '2020-04-17 03:08:49'),
(480, 2, 499, 'يوسف', '2020-04-17 03:09:20', '2020-04-17 03:09:20'),
(481, 2, 500, 'يوسف', '2020-04-17 03:09:41', '2020-04-17 03:09:41'),
(482, 2, 501, 'أيوب', '2020-04-17 03:10:20', '2020-04-17 03:10:20'),
(483, 2, 502, 'أيوب', '2020-04-17 03:10:45', '2020-04-17 03:10:45'),
(484, 2, 503, 'ذو الكفل', '2020-04-17 03:11:17', '2020-04-17 03:11:17'),
(485, 2, 504, 'ذو الكفل', '2020-04-17 03:11:40', '2020-04-17 03:11:40'),
(486, 2, 505, 'يونس', '2020-04-17 03:12:10', '2020-04-17 03:12:10'),
(487, 2, 506, 'يونس', '2020-04-17 03:12:33', '2020-04-17 03:12:33'),
(488, 2, 507, 'شعيب', '2020-04-17 03:13:07', '2020-04-17 03:13:07'),
(489, 2, 508, 'شعيب', '2020-04-17 03:13:29', '2020-04-17 03:13:29'),
(490, 2, 509, 'موسى', '2020-04-17 03:14:08', '2020-04-17 03:14:08'),
(491, 2, 510, 'موسى', '2020-04-17 03:14:44', '2020-04-17 03:14:44'),
(492, 2, 511, 'هارون', '2020-04-17 03:15:28', '2020-04-17 03:15:28'),
(493, 2, 512, 'هارون', '2020-04-17 03:15:52', '2020-04-17 03:15:52'),
(494, 2, 513, 'داود', '2020-04-17 03:16:36', '2020-04-17 03:16:36'),
(495, 2, 514, 'داود', '2020-04-17 03:16:56', '2020-04-17 03:16:56'),
(496, 2, 515, 'سليمان', '2020-04-17 03:17:27', '2020-04-17 03:17:27'),
(497, 2, 516, 'سليمان', '2020-04-17 03:17:48', '2020-04-17 03:17:48'),
(498, 2, 517, 'إلياس', '2020-04-17 03:18:16', '2020-04-17 03:18:16'),
(499, 2, 518, 'إلياس', '2020-04-17 03:18:41', '2020-04-17 03:18:41'),
(500, 2, 519, 'اليسع', '2020-04-17 03:19:13', '2020-04-17 03:19:13'),
(501, 2, 520, 'اليسع', '2020-04-17 03:19:38', '2020-04-17 03:19:38'),
(502, 2, 521, 'زكريا', '2020-04-17 03:20:20', '2020-04-17 03:20:20'),
(503, 2, 522, 'زكريا', '2020-04-17 03:20:41', '2020-04-17 03:20:41'),
(504, 2, 523, 'يحيى', '2020-04-17 03:21:09', '2020-04-17 03:21:09'),
(505, 2, 524, 'يحيى', '2020-04-17 03:21:31', '2020-04-17 03:21:31'),
(506, 2, 525, 'الكافرون', '2020-04-17 12:28:56', '2020-04-18 01:00:22'),
(507, 2, 526, 'النصر', '2020-04-17 12:29:33', '2020-04-18 01:02:14'),
(508, 2, 527, 'المسد', '2020-04-17 12:30:09', '2020-04-18 01:05:51'),
(509, 2, 528, 'الإخلاص', '2020-04-17 12:30:56', '2020-04-18 01:08:14'),
(510, 2, 529, 'الفلق', '2020-04-17 12:31:47', '2020-04-18 01:08:54'),
(511, 2, 530, 'الناس', '2020-04-17 12:32:49', '2020-04-18 01:09:30'),
(512, 2, 531, 'ٱلْفَاتِحَة', '2020-04-17 12:48:53', '2020-04-17 12:48:53'),
(513, 2, 532, 'ٱلْبَقَرَة', '2020-04-17 12:49:44', '2020-04-17 12:49:44'),
(514, 2, 533, 'آلِ عِمْرَان', '2020-04-17 12:50:09', '2020-04-17 12:50:09'),
(515, 2, 534, 'ٱلنِّسَاء', '2020-04-17 12:50:39', '2020-04-17 12:50:39'),
(516, 2, 535, 'ٱلْمَائِدَة', '2020-04-17 13:22:13', '2020-04-17 13:22:13'),
(517, 2, 536, 'ٱلْأَنْعَام', '2020-04-17 13:22:34', '2020-04-17 13:22:34'),
(518, 2, 537, 'ٱلْأَعْرَاف', '2020-04-17 13:24:17', '2020-04-17 13:24:17'),
(519, 2, 538, 'ٱلْأَنْفَال', '2020-04-17 13:24:58', '2020-04-17 13:24:58'),
(520, 2, 539, 'ٱلتَّوْبَة', '2020-04-17 13:25:28', '2020-04-17 13:25:28'),
(521, 2, 540, 'يُونُس', '2020-04-17 13:25:55', '2020-04-17 13:25:55'),
(522, 2, 541, 'هُود', '2020-04-17 13:26:20', '2020-04-17 13:26:20'),
(523, 2, 542, 'يُوسُف', '2020-04-17 13:26:44', '2020-04-17 13:26:44'),
(524, 2, 543, 'ٱلرَّعْد', '2020-04-17 13:27:12', '2020-04-17 13:27:12'),
(525, 2, 544, 'إِبْرَاهِيم', '2020-04-17 13:27:36', '2020-04-17 13:27:36'),
(526, 2, 545, 'ٱلْحِجْر', '2020-04-17 13:28:14', '2020-04-17 13:28:14'),
(527, 2, 546, 'ٱلنَّحْل', '2020-04-17 13:28:37', '2020-04-17 13:28:37'),
(528, 2, 547, 'ٱلْإِسْرَاء', '2020-04-17 13:29:04', '2020-04-17 13:29:04'),
(529, 2, 548, 'ٱلْكَهْف', '2020-04-17 13:29:34', '2020-04-17 13:29:34'),
(530, 2, 549, 'مَرْيَم', '2020-04-17 13:30:00', '2020-04-17 13:30:00'),
(531, 2, 550, 'طه', '2020-04-17 13:30:25', '2020-04-17 13:30:25'),
(532, 2, 551, 'ٱلْأَنْبِيَاء', '2020-04-17 13:58:02', '2020-04-17 13:58:02'),
(533, 2, 552, 'ٱلْحَجّ', '2020-04-17 13:58:24', '2020-04-17 13:58:24'),
(534, 2, 553, 'ٱلْمُؤْمِنُون', '2020-04-17 13:58:43', '2020-04-17 13:58:43'),
(535, 2, 554, 'ٱلنُّور', '2020-04-17 13:58:59', '2020-04-17 13:58:59'),
(536, 2, 555, 'ٱلْفُرْقَان', '2020-04-17 13:59:39', '2020-04-17 13:59:39'),
(537, 2, 556, 'ٱلشُّعَرَاء', '2020-04-17 13:59:59', '2020-04-17 13:59:59'),
(538, 2, 557, 'ٱلنَّمْل', '2020-04-17 14:00:17', '2020-04-17 14:00:17'),
(539, 2, 558, 'ٱلْقَصَص', '2020-04-17 14:00:34', '2020-04-17 14:00:34'),
(540, 2, 559, 'ٱلْعَنْكَبُوت', '2020-04-17 14:00:53', '2020-04-17 14:00:53'),
(541, 2, 560, 'ٱلرُّوم', '2020-04-17 14:01:17', '2020-04-17 14:01:17'),
(542, 2, 561, 'لُقْمَان', '2020-04-17 14:01:33', '2020-04-17 14:01:33'),
(543, 2, 562, 'ٱلسَّجْدَة', '2020-04-17 14:01:56', '2020-04-17 14:01:56'),
(544, 2, 563, 'ٱلْأَحْزَاب', '2020-04-17 14:02:11', '2020-04-17 14:02:11'),
(545, 2, 564, 'سَبَأ', '2020-04-17 14:02:33', '2020-04-17 14:02:33'),
(546, 2, 565, 'فَاطِر', '2020-04-17 14:02:57', '2020-04-17 14:02:57'),
(547, 2, 566, 'يس', '2020-04-17 14:03:25', '2020-04-17 14:03:25'),
(548, 2, 567, 'ٱلصَّافَّات', '2020-04-17 14:03:44', '2020-04-17 14:03:44'),
(549, 2, 568, 'ص', '2020-04-17 14:04:05', '2020-04-17 14:04:05'),
(550, 2, 569, 'ٱلزُّمَر', '2020-04-17 14:04:22', '2020-04-17 14:04:22'),
(551, 2, 570, 'غَافِر', '2020-04-17 14:04:41', '2020-04-17 14:04:41'),
(552, 2, 571, 'فُصِّلَت', '2020-04-17 14:04:57', '2020-04-17 14:04:57'),
(553, 2, 572, 'ٱلشُّورىٰ', '2020-04-17 14:05:15', '2020-04-17 14:05:15'),
(554, 2, 573, 'ٱلْزُّخْرُف', '2020-04-17 14:05:34', '2020-04-17 14:05:34'),
(555, 2, 574, 'ٱلدُّخَان', '2020-04-17 14:05:52', '2020-04-17 14:05:52'),
(556, 2, 575, 'ٱلْجَاثِيَة', '2020-04-17 14:06:09', '2020-04-17 14:06:09'),
(557, 2, 576, 'ٱلْأَحْقَاف', '2020-04-17 14:06:26', '2020-04-17 14:06:26'),
(558, 2, 577, 'مُحَمَّد', '2020-04-17 14:06:42', '2020-04-17 14:06:42'),
(559, 2, 578, 'ٱلْفَتْح', '2020-04-17 14:06:58', '2020-04-17 14:06:58'),
(560, 2, 579, 'ٱلْحُجُرَات', '2020-04-17 14:07:16', '2020-04-17 14:07:16'),
(561, 2, 580, 'ق', '2020-04-17 14:07:35', '2020-04-17 14:07:35'),
(562, 2, 581, 'ٱلذَّارِيَات', '2020-04-17 14:07:51', '2020-04-17 14:07:51'),
(563, 2, 582, 'ٱلطُّور', '2020-04-17 14:08:08', '2020-04-17 14:08:08'),
(564, 2, 583, 'ٱلنَّجْم', '2020-04-17 14:08:25', '2020-04-17 14:08:25'),
(565, 2, 584, 'ٱلْقَمَر', '2020-04-17 14:08:41', '2020-04-17 14:08:41'),
(566, 2, 585, 'ٱلرَّحْمَٰن', '2020-04-17 14:09:08', '2020-04-17 14:09:08'),
(567, 2, 586, 'ٱلْوَاقِعَة', '2020-04-17 14:09:52', '2020-04-17 14:09:52'),
(568, 2, 587, 'ٱلْحَدِيد', '2020-04-17 14:10:13', '2020-04-17 14:10:13'),
(569, 2, 588, 'ٱلْمُجَادِلَة', '2020-04-17 14:10:37', '2020-04-17 14:10:37'),
(570, 2, 589, 'ٱلْحَشْر', '2020-04-17 14:10:54', '2020-04-17 14:10:54'),
(571, 2, 590, 'ٱلْمُمْتَحَنَة', '2020-04-17 14:11:09', '2020-04-17 14:11:09'),
(572, 2, 591, 'ٱلصَّفّ', '2020-04-17 14:11:25', '2020-04-17 14:11:25'),
(573, 2, 592, 'ٱلْجُمُعَة', '2020-04-17 14:11:46', '2020-04-17 14:11:46'),
(574, 2, 593, 'ٱلْمُنَافِقُون', '2020-04-17 14:12:33', '2020-04-17 14:12:33'),
(575, 2, 594, 'ٱلتَّغَابُن', '2020-04-17 14:12:53', '2020-04-17 14:12:53'),
(576, 2, 595, 'ٱلْفَاتِحَة', '2020-04-17 14:13:37', '2020-04-17 14:13:37'),
(577, 2, 596, 'ٱلْبَقَرَة', '2020-04-17 14:13:53', '2020-04-17 14:13:53'),
(578, 2, 597, 'آلِ عِمْرَان', '2020-04-17 14:14:08', '2020-04-17 14:14:08'),
(579, 2, 598, 'ٱلنِّسَاء', '2020-04-17 14:14:24', '2020-04-17 14:14:24'),
(580, 2, 599, 'ٱلْمَائِدَة', '2020-04-17 14:14:44', '2020-04-17 14:14:44'),
(581, 2, 600, 'ٱلْأَنْعَام', '2020-04-17 14:15:01', '2020-04-17 14:15:01'),
(582, 2, 601, 'ٱلْأَعْرَاف', '2020-04-17 14:15:19', '2020-04-17 14:15:19'),
(583, 2, 602, 'ٱلْأَنْفَال', '2020-04-17 14:15:38', '2020-04-17 14:15:38'),
(584, 2, 603, 'ٱلتَّوْبَة', '2020-04-17 14:16:00', '2020-04-17 14:16:00'),
(585, 2, 604, 'يُونُس', '2020-04-17 14:16:20', '2020-04-17 14:16:20'),
(586, 2, 605, 'هُود', '2020-04-17 14:16:38', '2020-04-17 14:16:38'),
(587, 2, 606, 'يُوسُف', '2020-04-17 14:17:03', '2020-04-17 14:17:03'),
(588, 2, 607, 'ٱلرَّعْد', '2020-04-17 14:17:22', '2020-04-17 14:17:22'),
(589, 2, 608, 'إِبْرَاهِيم', '2020-04-17 14:18:47', '2020-04-17 14:18:47'),
(590, 2, 609, 'ٱلْحِجْر', '2020-04-17 14:19:51', '2020-04-17 14:19:51'),
(591, 2, 610, 'ٱلنَّحْل', '2020-04-17 14:20:26', '2020-04-17 14:20:26'),
(592, 2, 611, 'ٱلْإِسْرَاء', '2020-04-17 14:21:12', '2020-04-17 14:21:12'),
(593, 2, 612, 'ٱلْكَهْف', '2020-04-17 14:21:36', '2020-04-17 14:21:36'),
(594, 2, 613, 'مَرْيَم', '2020-04-17 14:21:59', '2020-04-17 14:21:59'),
(595, 2, 614, 'طه', '2020-04-17 14:22:23', '2020-04-17 14:22:23'),
(596, 2, 615, 'ٱلْأَنْبِيَاء', '2020-04-17 14:22:40', '2020-04-17 14:22:40'),
(597, 2, 616, 'ٱلْحَجّ', '2020-04-17 14:23:06', '2020-04-17 14:23:06'),
(598, 2, 617, 'ٱلْمُؤْمِنُون', '2020-04-17 14:23:24', '2020-04-17 14:23:24'),
(599, 2, 618, 'ٱلنُّور', '2020-04-17 14:23:39', '2020-04-17 14:23:39'),
(600, 2, 619, 'ٱلْفُرْقَان', '2020-04-17 14:23:58', '2020-04-17 14:23:58'),
(601, 2, 620, 'ٱلشُّعَرَاء', '2020-04-17 14:24:24', '2020-04-17 14:24:24'),
(602, 2, 621, 'ٱلنَّمْل', '2020-04-17 14:24:48', '2020-04-17 14:24:48'),
(603, 2, 622, 'ٱلْقَصَص', '2020-04-17 14:25:03', '2020-04-17 14:25:03'),
(604, 2, 623, 'ٱلْعَنْكَبُوت', '2020-04-17 14:25:19', '2020-04-17 14:25:19'),
(605, 2, 624, 'ٱلرُّوم', '2020-04-17 14:25:35', '2020-04-17 14:25:35'),
(606, 2, 625, 'لُقْمَان', '2020-04-17 14:25:53', '2020-04-17 14:25:53'),
(607, 2, 626, 'ٱلسَّجْدَة', '2020-04-17 14:26:10', '2020-04-17 14:26:10'),
(608, 2, 627, 'ٱلْأَحْزَاب', '2020-04-17 14:26:26', '2020-04-17 14:26:26'),
(609, 2, 628, 'سَبَأ', '2020-04-17 14:26:43', '2020-04-17 14:26:43'),
(610, 2, 629, 'فَاطِر', '2020-04-17 14:27:01', '2020-04-17 14:27:01'),
(611, 2, 630, 'يس', '2020-04-17 14:27:18', '2020-04-17 14:27:18'),
(612, 2, 631, 'ٱلصَّافَّات', '2020-04-17 14:27:34', '2020-04-17 14:27:34'),
(613, 2, 632, 'ص', '2020-04-17 14:27:50', '2020-04-17 14:27:50'),
(614, 2, 633, 'ٱلزُّمَر', '2020-04-17 14:28:09', '2020-04-17 14:28:09'),
(615, 2, 634, 'غَافِر', '2020-04-17 14:28:27', '2020-04-17 14:28:27'),
(616, 2, 635, 'فُصِّلَت', '2020-04-17 14:28:46', '2020-04-17 14:28:46'),
(617, 2, 636, 'ٱلشُّورىٰ', '2020-04-17 14:29:07', '2020-04-17 14:29:07'),
(618, 2, 637, 'ٱلْزُّخْرُف', '2020-04-17 14:29:27', '2020-04-17 14:29:27'),
(619, 2, 638, 'ٱلدُّخَان', '2020-04-17 14:29:44', '2020-04-17 14:29:44'),
(620, 2, 639, 'ٱلْجَاثِيَة', '2020-04-17 14:30:01', '2020-04-17 14:30:01'),
(621, 2, 640, 'ٱلْأَحْقَاف', '2020-04-17 14:30:18', '2020-04-17 14:30:18'),
(622, 2, 641, 'مُحَمَّد', '2020-04-17 14:30:37', '2020-04-17 14:30:37'),
(623, 2, 642, 'ٱلْفَتْح', '2020-04-17 14:30:52', '2020-04-17 14:30:52'),
(624, 2, 643, 'ٱلْحُجُرَات', '2020-04-17 14:31:08', '2020-04-17 14:31:08'),
(625, 2, 644, 'ق', '2020-04-17 14:31:33', '2020-04-17 14:31:33'),
(626, 2, 645, 'ٱلذَّارِيَات', '2020-04-17 14:31:54', '2020-04-17 14:31:54'),
(627, 2, 646, 'ٱلطُّور', '2020-04-17 14:32:12', '2020-04-17 14:32:12'),
(628, 2, 647, 'ٱلنَّجْم', '2020-04-17 14:32:30', '2020-04-17 14:32:30'),
(629, 2, 648, 'ٱلْقَمَر', '2020-04-17 14:32:47', '2020-04-17 14:32:47'),
(630, 2, 649, 'ٱلرَّحْمَٰن', '2020-04-17 14:33:05', '2020-04-17 14:33:05'),
(631, 2, 650, 'ٱلْوَاقِعَة', '2020-04-17 14:33:23', '2020-04-17 14:33:23'),
(632, 2, 651, 'ٱلْحَدِيد', '2020-04-17 14:33:41', '2020-04-17 14:33:41'),
(633, 2, 652, 'ٱلْمُجَادِلَة', '2020-04-17 14:33:58', '2020-04-17 14:33:58'),
(634, 2, 653, 'ٱلْحَشْر', '2020-04-17 14:34:18', '2020-04-17 14:34:18'),
(635, 2, 654, 'ٱلْمُمْتَحَنَة', '2020-04-17 14:34:38', '2020-04-17 14:34:38'),
(636, 2, 655, 'ٱلصَّفّ', '2020-04-17 14:35:00', '2020-04-17 14:35:00'),
(637, 2, 656, 'ٱلْجُمُعَة', '2020-04-17 14:35:18', '2020-04-17 14:35:18'),
(638, 2, 657, 'ٱلْمُنَافِقُون', '2020-04-17 14:35:39', '2020-04-17 14:35:39'),
(639, 2, 658, 'ٱلتَّغَابُن', '2020-04-17 14:35:57', '2020-04-17 14:35:57'),
(640, 2, 659, 'الكافرون', '2020-04-17 14:43:38', '2020-04-18 01:13:17'),
(641, 2, 660, 'النصر', '2020-04-17 14:44:13', '2020-04-18 01:12:45'),
(642, 2, 661, 'المسد', '2020-04-17 14:46:47', '2020-04-18 01:12:06'),
(643, 2, 662, 'الإخلاص', '2020-04-17 14:48:31', '2020-04-18 01:11:32'),
(644, 2, 663, 'الفلق', '2020-04-17 14:49:22', '2020-04-18 01:10:46'),
(645, 2, 664, 'الناس', '2020-04-17 14:50:40', '2020-04-18 01:10:09'),
(650, 2, 669, 'الماء المختلط بالنجاسة', '2020-04-17 15:49:53', '2020-04-17 15:49:53'),
(651, 2, 670, 'أنواع النجاسات', '2020-04-17 15:50:38', '2020-04-17 15:50:38'),
(652, 2, 671, 'نجاسة زرق الطيور', '2020-04-17 15:52:04', '2020-04-17 15:52:04'),
(653, 2, 672, 'حكم التمشط بمشط من العظم', '2020-04-17 15:53:02', '2020-04-17 15:53:02'),
(654, 2, 673, 'الماء الفائض من الغسل', '2020-04-17 15:54:05', '2020-04-17 15:54:05'),
(655, 2, 674, 'من مفسدات الوضوء', '2020-04-17 15:55:12', '2020-04-17 15:55:12'),
(656, 2, 675, 'دخول الحمام بالمصحف', '2020-04-17 15:56:50', '2020-04-17 15:56:50'),
(657, 2, 676, 'الفرق بين الحيض والاستحاضة', '2020-04-17 15:57:50', '2020-04-17 15:57:50'),
(658, 2, 677, 'الطهر من الحيض والنفاس', '2020-04-17 15:58:36', '2020-04-17 15:58:36'),
(659, 2, 678, 'أحكام الحائض والنفساء', '2020-04-17 15:59:23', '2020-04-17 15:59:23'),
(660, 2, 679, 'أمور مشتهرة لكنها لا تصح', '2020-04-17 16:00:07', '2020-04-17 16:00:07'),
(661, 2, 680, 'أمور تتعلق بالحمل والطهارة', '2020-04-17 16:03:02', '2020-04-17 16:03:02'),
(662, 2, 681, 'الحيض بعد سن الخمسين', '2020-04-17 16:04:23', '2020-04-17 16:04:23'),
(663, 2, 682, 'حكم الإسراف في المياه', '2020-04-17 16:05:01', '2020-04-17 16:05:01'),
(664, 2, 683, 'حكم التطهر بماء زمزم', '2020-04-17 16:06:10', '2020-04-17 16:06:10'),
(665, 2, 684, 'الغسل من الجنابة', '2020-04-17 16:07:21', '2020-04-17 16:07:21'),
(666, 2, 685, 'حكم اختلاط الملابس', '2020-04-17 16:08:07', '2020-04-17 16:08:07'),
(667, 2, 686, 'الوضوء في الحمام', '2020-04-17 16:09:22', '2020-04-17 16:09:22'),
(668, 2, 687, 'حكم الماء مجهول المصدر', '2020-04-17 16:10:47', '2020-04-17 16:10:47'),
(669, 2, 688, 'حكم الثار الآدمي', '2020-04-17 16:11:33', '2020-04-17 16:11:33'),
(670, 2, 689, 'الطهارة بماء شرب منه الغنم', '2020-04-17 16:12:44', '2020-04-17 16:12:44'),
(671, 2, 690, 'آداب قضاء الحاجة', '2020-04-17 16:13:25', '2020-04-17 16:13:25'),
(672, 2, 691, 'حكم أكل الأسماك المملحة', '2020-04-17 16:14:02', '2020-04-17 16:14:02'),
(673, 2, 692, 'حكم تربية الكلاب', '2020-04-17 16:16:05', '2020-04-17 16:16:05'),
(674, 2, 693, 'حكم أكل طيور تغذت على نجاسات', '2020-04-17 16:17:17', '2020-04-17 16:17:17'),
(675, 2, 694, 'ربي هو الله', '2020-04-17 16:39:30', '2020-04-18 17:33:48'),
(676, 2, 695, 'توشك العين', '2020-04-17 16:41:13', '2020-04-17 20:39:18'),
(677, 2, 696, 'درب الكرم', '2020-04-17 16:43:28', '2020-04-17 20:39:57'),
(678, 2, 697, 'سر الله', '2020-04-17 16:47:14', '2020-04-17 20:40:56'),
(679, 2, 698, 'صيام المحسنين', '2020-04-17 17:40:39', '2020-04-17 17:40:39'),
(680, 2, 699, 'صيام المستغفرين', '2020-04-17 17:41:46', '2020-04-17 17:41:46'),
(681, 2, 700, 'صيام رمضان', '2020-04-17 17:43:35', '2020-04-17 17:43:35'),
(682, 2, 701, 'اللهم قربنا', '2020-04-17 17:46:45', '2020-04-17 17:46:45'),
(683, 2, 702, 'يا غياث المستغيثين', '2020-04-17 17:47:57', '2020-04-17 17:47:57'),
(684, 2, 703, 'يا أمان الخائفين', '2020-04-17 17:49:28', '2020-04-17 17:49:28'),
(685, 2, 704, 'لا تؤاخذنا بالعثرات', '2020-04-17 17:50:26', '2020-04-17 17:50:26'),
(686, 2, 705, 'موافقة الأبرار', '2020-04-17 17:51:06', '2020-04-17 17:51:06'),
(687, 2, 706, 'سبيل الخيرات', '2020-04-17 17:51:43', '2020-04-17 17:51:43'),
(688, 2, 707, 'أبواب فضلك', '2020-04-17 17:52:19', '2020-04-17 17:52:19'),
(689, 2, 708, 'تقوى القلوب', '2020-04-17 17:52:47', '2020-04-17 17:52:47'),
(690, 2, 709, 'يا أرحم الراحمين', '2020-04-17 17:53:25', '2020-04-17 17:53:25'),
(691, 2, 710, 'عجبا لأمر المؤمن إن أمره كله له خير', '2020-04-17 20:21:08', '2020-04-17 20:21:08'),
(692, 2, 711, 'لاتؤذوا عباد الله', '2020-04-17 20:21:42', '2020-04-17 20:21:42'),
(693, 2, 712, 'من صلى علي صلاةً', '2020-04-17 20:22:11', '2020-04-17 20:22:11'),
(694, 2, 713, 'كلمتان خفيفتان على اللسان', '2020-04-17 20:22:48', '2020-04-17 20:22:48'),
(695, 2, 714, 'من قال أستغفر الله العظيم', '2020-04-17 20:23:20', '2020-04-17 20:23:20'),
(696, 2, 715, 'سيخرج قوم أحداث أحداء أشداء', '2020-04-17 20:24:05', '2020-04-17 20:24:05'),
(697, 2, 716, 'اتق الله حيثما كنت', '2020-04-17 20:24:35', '2020-04-17 20:24:35'),
(698, 2, 717, 'سبق المفردون', '2020-04-17 20:25:18', '2020-04-17 20:25:18'),
(699, 2, 718, 'طوبى لمن ملك نفسه ووسعه بيته', '2020-04-17 20:25:44', '2020-04-17 20:25:44'),
(700, 2, 719, 'لا يلج النار رجل بكى من خشية الله', '2020-04-17 20:26:09', '2020-04-17 20:26:09'),
(701, 2, 720, 'أستغفر الله', '2020-04-17 20:26:44', '2020-04-17 20:26:44'),
(702, 2, 721, 'لعن الله الراشي والمرتشي', '2020-04-17 20:27:15', '2020-04-17 20:27:15'),
(703, 2, 722, 'من حلف على يمين', '2020-04-17 20:27:40', '2020-04-17 20:27:40'),
(704, 2, 723, 'والله ما الدنيا في الأخرة', '2020-04-17 20:28:09', '2020-04-17 20:28:09'),
(705, 2, 724, 'يدخل الجنة من امتي سبعون الفاً بغير حساب', '2020-04-17 20:28:43', '2020-04-17 20:28:43'),
(706, 2, 725, 'عليكم بقيام الليل', '2020-04-17 20:29:17', '2020-04-17 20:29:17'),
(707, 2, 726, 'الصدقة على المسكين صدقة', '2020-04-17 20:29:43', '2020-04-17 20:29:43'),
(708, 2, 727, 'إسباغ الوضوء على المكاره', '2020-04-17 20:30:21', '2020-04-17 20:30:21'),
(709, 2, 728, 'من أدرك أبويه عند الكبر', '2020-04-17 20:30:48', '2020-04-17 20:30:48'),
(710, 2, 729, 'سكة تانيه', '2020-04-17 20:42:25', '2020-04-17 20:43:49'),
(711, 2, 730, 'فرحة انسان', '2020-04-17 20:43:08', '2020-04-17 20:43:08'),
(712, 2, 731, 'صلاة التراويح', '2020-04-17 20:45:45', '2020-04-17 20:45:45'),
(713, 2, 732, 'سورة ابراهيم', '2020-04-17 20:46:56', '2020-04-17 21:12:46'),
(714, 2, 733, 'سورة الكهف', '2020-04-17 20:51:21', '2020-04-17 20:51:21'),
(715, 2, 734, 'سورة الكهف', '2020-04-17 20:52:11', '2020-04-17 21:14:43'),
(716, 2, 735, 'سورة ق', '2020-04-17 20:52:54', '2020-04-17 20:52:54'),
(717, 2, 736, 'سورة ق', '2020-04-17 20:53:51', '2020-04-17 20:53:51'),
(718, 2, 737, 'سورة ق', '2020-04-17 20:55:21', '2020-04-17 21:18:42'),
(720, 2, 739, 'يوم الشك', '2020-04-17 22:54:57', '2020-04-17 22:54:57'),
(721, 2, 740, 'النهي عن يوم الشك', '2020-04-17 22:56:30', '2020-04-17 22:56:30'),
(722, 2, 741, 'اتاكم شهر رمضان', '2020-04-17 22:57:36', '2020-04-17 22:57:36'),
(723, 2, 742, 'اذا كان اول ليلة من شهر رمضان', '2020-04-17 22:59:34', '2020-04-17 22:59:34'),
(728, 2, 747, 'إبتهال', '2020-04-17 23:16:44', '2020-04-18 01:50:30'),
(729, 2, 748, 'أرجوه', '2020-04-17 23:22:40', '2020-04-17 23:22:40'),
(731, 2, 750, 'القادر المقتدر', '2020-04-17 23:25:19', '2020-04-17 23:25:19'),
(732, 2, 751, 'عالم السر', '2020-04-17 23:27:33', '2020-04-17 23:27:33'),
(733, 2, 752, 'ميسر الكون', '2020-04-17 23:28:56', '2020-04-17 23:28:56'),
(734, 2, 753, 'حنيني', '2020-04-17 23:36:03', '2020-04-17 23:36:03'),
(736, 2, 755, 'الحليم', '2020-04-17 23:48:02', '2020-04-17 23:48:02'),
(737, 2, 756, 'الصابرون', '2020-04-17 23:50:14', '2020-04-17 23:50:14'),
(738, 2, 757, 'الخالق الباري', '2020-04-17 23:51:03', '2020-04-17 23:51:03'),
(739, 2, 758, 'مقدر الخلق', '2020-04-17 23:52:30', '2020-04-17 23:52:30'),
(740, 2, 759, 'لا شريك له', '2020-04-17 23:54:10', '2020-04-17 23:54:10'),
(741, 2, 760, 'الحق العدل', '2020-04-17 23:56:19', '2020-04-17 23:56:19'),
(742, 2, 761, 'الملك القدوس', '2020-04-17 23:58:02', '2020-04-17 23:58:02'),
(750, 2, 769, 'اللهم انت احق من ذكر', '2020-04-18 00:45:39', '2020-04-18 00:45:39'),
(751, 2, 770, 'يامن خضعت لعظمته الرقاب', '2020-04-18 00:47:54', '2020-04-18 00:47:54'),
(752, 2, 771, 'اللهم بارك في اسماعنا', '2020-04-18 00:49:42', '2020-04-18 00:49:42'),
(753, 2, 772, 'اللهم الف بين قلوبنا', '2020-04-18 00:51:41', '2020-04-18 00:51:41'),
(754, 2, 773, 'اللهم عافنا', '2020-04-18 00:55:55', '2020-04-18 00:55:55'),
(755, 2, 774, 'العفو والمغفرة', '2020-04-18 00:59:17', '2020-04-18 00:59:17'),
(756, 2, 775, 'اليك يامن هو العلام 1', '2020-04-18 02:04:06', '2020-04-18 02:04:06'),
(757, 2, 776, 'اليك يامن هو العلام 2', '2020-04-18 02:05:17', '2020-04-18 02:05:17'),
(758, 2, 777, 'اليك يامن هو العلام 3', '2020-04-18 02:06:45', '2020-04-18 02:06:45'),
(759, 2, 778, 'اليك يامن هو العلام 4', '2020-04-18 02:08:40', '2020-04-18 02:08:40'),
(760, 2, 779, 'بالمصطفى', '2020-04-18 02:09:51', '2020-04-18 02:09:51'),
(761, 2, 780, 'عفوك ورضاك', '2020-04-18 02:10:52', '2020-04-18 02:10:52'),
(762, 2, 781, 'أصبحنا واصبح الملك لله', '2020-04-18 03:44:02', '2020-04-18 03:44:02'),
(763, 2, 782, 'أصبحنا على فطرة الأسلام', '2020-04-18 03:46:12', '2020-04-18 03:46:12'),
(764, 2, 783, 'اللهم بك أصبحنا', '2020-04-18 03:47:06', '2020-04-18 03:47:06'),
(765, 2, 784, 'أمسينا وامسى الملك لله', '2020-04-18 03:49:06', '2020-04-18 03:49:06'),
(766, 2, 785, 'أمسينا على فطرة الأسلام', '2020-04-18 03:52:56', '2020-04-18 03:52:56'),
(767, 2, 786, 'اللهم بك أمسينا', '2020-04-18 03:55:00', '2020-04-18 03:55:00'),
(768, 2, 787, 'تفسير القرآن', '2020-04-18 04:00:45', '2020-04-18 04:00:45'),
(770, 2, 789, 'فضل الحج', '2020-04-18 04:53:47', '2020-04-18 04:53:47'),
(771, 2, 790, 'راي الدين في الاستطاعه للحج', '2020-04-18 04:54:22', '2020-04-18 05:17:33'),
(773, 2, 792, 'أيهما افضل الحج ام الزواج', '2020-04-18 04:59:48', '2020-04-18 04:59:48'),
(774, 2, 793, 'الدين والحج', '2020-04-18 05:02:13', '2020-04-18 05:02:13'),
(775, 2, 794, 'الحج ام افعال الخير', '2020-04-18 05:05:23', '2020-04-18 05:05:23'),
(776, 2, 795, 'التلفظ بالنية في الصلاة', '2020-04-18 05:08:18', '2020-04-18 05:08:18'),
(778, 2, 797, 'واذا صرفنا اليك', '2020-04-18 05:33:29', '2020-04-18 05:33:29'),
(779, 2, 798, 'قل أوحي الي', '2020-04-18 05:37:29', '2020-04-18 05:37:29'),
(780, 2, 799, 'يا أيها الناس قد جائتكم موعظة', '2020-04-18 05:39:15', '2020-04-18 05:39:15'),
(781, 2, 800, 'اذا زلزلت الأرض زلزالها', '2020-04-18 05:42:49', '2020-04-18 05:42:49'),
(782, 2, 801, 'وننزل من القرآن ماهو شفاء', '2020-04-18 05:44:06', '2020-04-18 05:44:06'),
(783, 2, 802, 'بِسْمِ اللهِ أَرْقِيكَ', '2020-04-18 05:45:41', '2020-04-18 14:24:31'),
(784, 2, 803, 'من أشد الناس ظلماً', '2020-04-18 05:54:45', '2020-04-18 05:54:45'),
(785, 2, 804, 'هل بشر عيسى عليه السلام قومه', '2020-04-18 05:56:08', '2020-04-18 05:56:08'),
(786, 2, 805, 'كيف يكون المنافقون مؤمنون وكافرون', '2020-04-18 05:57:33', '2020-04-18 05:57:33'),
(787, 2, 806, 'النور الذي انزله الله تعالى', '2020-04-18 05:58:24', '2020-04-18 05:58:24'),
(788, 2, 807, 'من اراد ان يرجع في اليمين', '2020-04-18 05:59:58', '2020-04-18 05:59:58'),
(789, 2, 808, 'ما معنى تفاوت ,فطور ,كرتين,خاسأ', '2020-04-18 06:01:39', '2020-04-18 06:01:39'),
(790, 2, 809, 'سورة يونس اية 73', '2020-04-18 06:24:38', '2020-04-18 06:56:36'),
(791, 2, 810, 'سورة يونس اية 74', '2020-04-18 06:25:11', '2020-04-18 06:57:16'),
(792, 2, 811, 'سورة يونس اية 76', '2020-04-18 06:25:53', '2020-04-18 06:57:47'),
(793, 2, 812, 'سورة يونس اية 78', '2020-04-18 06:26:54', '2020-04-18 06:58:23'),
(794, 2, 813, 'سورة يونس اية 81', '2020-04-18 06:27:53', '2020-04-18 06:58:47'),
(795, 2, 814, 'سورة يونس اية 83', '2020-04-18 06:28:39', '2020-04-18 06:59:13'),
(796, 2, 815, 'سورة يونس اية 73', '2020-04-18 06:30:54', '2020-04-18 07:01:44'),
(797, 2, 816, 'سورة يونس اية 74', '2020-04-18 06:31:28', '2020-04-18 07:02:16'),
(798, 2, 817, 'سورة يونس اية 76', '2020-04-18 06:32:07', '2020-04-18 07:03:00'),
(799, 2, 818, 'سورة يونس اية 78', '2020-04-18 06:32:52', '2020-04-18 07:03:26'),
(800, 2, 819, 'سورة يونس اية 81', '2020-04-18 06:33:42', '2020-04-18 07:03:52'),
(801, 2, 820, 'سورة يونس اية 83', '2020-04-18 06:34:29', '2020-04-18 07:04:16'),
(802, 2, 821, 'سورة البقرة للاية 2', '2020-04-18 07:11:00', '2020-04-18 07:11:00'),
(803, 2, 822, 'سورة البقرة للاية 2', '2020-04-18 07:11:32', '2020-04-18 07:11:32'),
(804, 2, 823, 'سورة البقرة للاية 3', '2020-04-18 07:12:54', '2020-04-18 07:12:54'),
(805, 2, 824, 'سورة البقرة للاية 4', '2020-04-18 07:13:49', '2020-04-18 07:13:49'),
(806, 2, 825, 'سورة البقرة للاية 5', '2020-04-18 07:14:41', '2020-04-18 07:14:41'),
(807, 2, 826, 'سورة البقرة للاية 6', '2020-04-18 07:15:40', '2020-04-18 07:15:40'),
(808, 2, 827, 'سورة الكافرون', '2020-04-18 13:04:57', '2020-04-18 13:04:57'),
(809, 2, 828, 'سورة النصر', '2020-04-18 13:09:42', '2020-04-18 13:09:42'),
(810, 2, 829, 'سورة المسد', '2020-04-18 13:11:23', '2020-04-18 13:11:23'),
(811, 2, 830, 'سورة الاخلاص', '2020-04-18 13:18:15', '2020-04-18 13:18:15'),
(812, 2, 831, 'سورة الفلق', '2020-04-18 13:24:15', '2020-04-18 13:24:15'),
(814, 2, 833, 'سورة الناس', '2020-04-18 14:09:45', '2020-04-18 14:09:45'),
(815, 2, 834, 'المقصود بيوم الشك', '2020-04-18 15:17:40', '2020-04-18 15:17:40'),
(816, 2, 835, 'فضل صيام رجب وشعبان', '2020-04-18 15:20:22', '2020-04-18 15:20:22'),
(817, 2, 836, 'لماذا سمي شهر رمضان بهذا الاسم', '2020-04-18 15:24:12', '2020-04-18 15:24:12'),
(818, 2, 837, 'صيام اول ايام من رجب', '2020-04-18 15:26:58', '2020-04-18 15:26:58'),
(819, 2, 838, 'صوموا لرؤيته', '2020-04-18 15:29:46', '2020-04-18 15:29:46'),
(820, 2, 839, 'وصف شهر رجب بهذا الأسم', '2020-04-18 15:32:11', '2020-04-18 15:32:11'),
(821, 2, 840, 'غردي ياروح', '2020-04-18 15:34:48', '2020-04-18 15:34:48'),
(822, 2, 841, 'عاد شهر الخير', '2020-04-18 15:35:42', '2020-04-18 15:35:42'),
(823, 2, 842, 'رمضان التوبة', '2020-04-18 15:40:20', '2020-04-18 15:40:20'),
(824, 2, 843, 'عطر صيامك', '2020-04-18 15:45:49', '2020-04-18 15:45:49'),
(825, 2, 844, 'مشاة التراويح', '2020-04-18 15:49:22', '2020-04-18 15:49:22'),
(826, 2, 845, 'ليلة القدر', '2020-04-18 15:50:02', '2020-04-18 15:50:02'),
(829, 2, 848, 'وقل ربي أنزلني منزلاً مباركاً', '2020-04-18 16:12:03', '2020-04-18 16:12:03');
INSERT INTO `tans_bodies` (`id`, `language_id`, `translatable_id`, `body`, `created_at`, `updated_at`) VALUES
(830, 2, 849, 'وعباد الرحمن', '2020-04-18 16:15:50', '2020-04-18 16:15:50'),
(832, 2, 851, 'ربنا وسعت كل شيء', '2020-04-18 16:23:22', '2020-04-18 16:23:22'),
(834, 2, 853, 'قال رب أوزعني أن أشكر نعمتك', '2020-04-18 16:31:37', '2020-04-18 16:31:37'),
(835, 2, 854, 'ربنا عليك توكلنا', '2020-04-18 16:32:30', '2020-04-18 16:32:30'),
(836, 2, 855, 'وإذ قال إبراهيم', '2020-04-18 16:33:39', '2020-04-18 16:33:39'),
(837, 2, 856, 'الله', '2020-04-18 16:46:22', '2020-04-18 16:46:22'),
(838, 2, 857, 'الرحمن - الرحيم', '2020-04-18 16:47:43', '2020-04-18 16:47:43'),
(839, 2, 858, 'السلام - المومن', '2020-04-18 16:48:11', '2020-04-18 16:48:11'),
(840, 2, 859, 'المهيمن - العزيز', '2020-04-18 16:49:05', '2020-04-18 16:49:05'),
(841, 2, 860, 'الجبار -المتكبر', '2020-04-18 16:49:39', '2020-04-18 16:49:39'),
(842, 2, 861, 'WHO Guidelines', '2020-04-18 17:02:23', '2020-04-18 17:02:23'),
(843, 2, 862, 'كورونا', '2020-04-18 17:05:14', '2020-04-18 17:05:14'),
(844, 2, 863, 'تدابير الوقاية الأساسية من فيروس كورونا (كوفيد-19)', '2020-04-18 17:09:14', '2020-04-18 17:09:14'),
(845, 2, 864, '<p dir=\"RTL\">احرص على متابعة آخر المستجدات عن فاشية مرض كوفيد-19، على الموقع الإلكتروني لمنظمة الصحة العالمية ومن خلال سلطات الصحة العامة المحلية والوطنية. وفي حين لا تزال عدوى كوفيد-19 متفشية في الصين بشكل أساسي، فهناك بعض بؤر التفشي في بلدان أخرى.&nbsp; ومعظم الأفراد الذين يصابون بالعدوى يشعرون بأعراض خفيفة ويتعافون، ولكن الأعراض قد تظهر بشكل أكثر حدة لدى غيرهم. احرص على العناية بصحتك وحماية الآخرين بواسطة التدابير التالية<span dir=\"LTR\">:</span></p>', '2020-04-18 17:09:14', '2020-04-18 17:09:14'),
(846, 2, 865, 'اغسل اليدين بانتظام', '2020-04-18 17:10:28', '2020-04-18 17:10:28'),
(847, 2, 866, '<p dir=\"RTL\">إن تنظيف يديك بالماء والصابون أو فركهما بمطهر كحولي من شأنه أن يقتل الفيروسات التي قد تكون على يديك.</p>', '2020-04-18 17:10:28', '2020-04-18 17:10:28'),
(848, 2, 867, 'الخالق -  البارئ', '2020-04-18 17:31:54', '2020-04-18 17:31:54'),
(849, 4, 834, 'bbdssfd', '2020-04-18 14:33:52', '2020-04-18 14:34:52'),
(850, 4, 862, NULL, '2020-04-19 08:53:47', '2020-04-19 08:53:47'),
(851, 2, 868, 'han', '2020-04-19 12:58:37', '2020-04-19 12:58:37'),
(852, 4, 868, 'dcsd', '2020-04-19 12:58:37', '2020-04-19 12:58:37'),
(853, 2, 869, 'hello', '2020-04-19 13:03:25', '2020-04-19 13:03:25'),
(854, 4, 869, 'sdds', '2020-04-19 13:03:25', '2020-04-19 13:03:25'),
(855, 2, 870, 'fsdf', '2020-04-19 13:11:44', '2020-04-19 13:11:44'),
(856, 4, 870, 'fsdf', '2020-04-19 13:11:44', '2020-04-19 13:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `tim_wes`
--

CREATE TABLE `tim_wes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `api_request` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tim_wes`
--

INSERT INTO `tim_wes` (`id`, `api_request`, `payload`, `response`, `type`, `created_at`, `updated_at`) VALUES
(5, 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97455464412\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WAP\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"request\":{\"userIdentifier\":\"97455464412\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WAP\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"},\"headers\":[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: oxYhsGAu5qfrv1TYqeqesy54Ww\\/u9d+X3\\/Ig\\/53Xvh4=\",\"external-tx-id: 89de50b0-7d9d-4967-a9a5-b883b6a39af5\"],\"response\":{\"message\":\"null\",\"inError\":false,\"requestId\":\"44:1587643451704\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"8b36b379-855a-11ea-87d0-005056b77fc1\",\"externalTxId\":\"89de50b0-7d9d-4967-a9a5-b883b6a39af5\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}},\"date\":\"2020-04-23 16:02:55\"}', 'Timwe Subscription OptIn', '2020-04-23 13:02:55', '2020-04-23 13:02:55');

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
(103, 'services', '35', 'title', '2020-04-14 02:15:19', '2020-04-14 02:15:19'),
(114, 'services', '36', 'title', '2020-04-14 02:28:53', '2020-04-14 02:28:53'),
(125, 'providers', '21', 'title', '2020-04-14 02:43:07', '2020-04-14 02:43:07'),
(126, 'providers', '22', 'title', '2020-04-14 02:43:57', '2020-04-14 02:43:57'),
(127, 'services', '37', 'title', '2020-04-14 02:45:34', '2020-04-14 02:45:34'),
(128, 'services', '38', 'title', '2020-04-14 02:49:36', '2020-04-14 02:49:36'),
(129, 'services', '39', 'title', '2020-04-14 02:51:02', '2020-04-14 02:51:02'),
(263, 'providers', '23', 'title', '2020-04-15 22:11:24', '2020-04-15 22:11:24'),
(264, 'services', '40', 'title', '2020-04-15 22:13:52', '2020-04-15 22:13:52'),
(268, 'services', '41', 'title', '2020-04-15 22:21:08', '2020-04-15 22:21:08'),
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
(292, 'services', '45', 'title', '2020-04-16 04:47:01', '2020-04-16 04:47:01'),
(293, 'services', '46', 'title', '2020-04-16 04:48:52', '2020-04-16 04:48:52'),
(294, 'services', '47', 'title', '2020-04-16 05:00:01', '2020-04-16 05:00:01'),
(295, 'contents', '265', 'title', '2020-04-16 05:04:39', '2020-04-16 05:04:39'),
(296, 'contents', '266', 'title', '2020-04-16 05:06:33', '2020-04-16 05:06:33'),
(297, 'contents', '267', 'title', '2020-04-16 05:07:23', '2020-04-16 05:07:23'),
(298, 'contents', '268', 'title', '2020-04-16 05:09:04', '2020-04-16 05:09:04'),
(299, 'contents', '269', 'title', '2020-04-16 05:09:55', '2020-04-16 05:09:55'),
(300, 'services', '48', 'title', '2020-04-16 05:11:57', '2020-04-16 05:11:57'),
(311, 'contents', '269', 'content_text', '2020-04-16 05:24:32', '2020-04-16 05:24:32'),
(312, 'contents', '268', 'content_text', '2020-04-16 05:25:52', '2020-04-16 05:25:52'),
(313, 'contents', '267', 'content_text', '2020-04-16 05:27:13', '2020-04-16 05:27:13'),
(314, 'contents', '266', 'content_text', '2020-04-16 05:31:28', '2020-04-16 05:31:28'),
(315, 'contents', '265', 'content_text', '2020-04-16 05:35:20', '2020-04-16 05:35:20'),
(316, 'services', '49', 'title', '2020-04-16 05:54:54', '2020-04-16 05:54:54'),
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
(367, 'contents', '307', 'title', '2020-04-16 23:34:41', '2020-04-16 23:34:41'),
(369, 'contents', '309', 'title', '2020-04-16 23:38:42', '2020-04-16 23:38:42'),
(370, 'contents', '310', 'title', '2020-04-16 23:43:17', '2020-04-16 23:43:17'),
(371, 'contents', '311', 'title', '2020-04-16 23:46:46', '2020-04-16 23:46:46'),
(372, 'contents', '312', 'title', '2020-04-16 23:49:38', '2020-04-16 23:49:38'),
(373, 'contents', '313', 'title', '2020-04-16 23:52:27', '2020-04-16 23:52:27'),
(374, 'contents', '314', 'title', '2020-04-16 23:55:03', '2020-04-16 23:55:03'),
(375, 'contents', '315', 'title', '2020-04-16 23:57:36', '2020-04-16 23:57:36'),
(376, 'contents', '316', 'title', '2020-04-17 00:00:19', '2020-04-17 00:00:19'),
(377, 'contents', '317', 'title', '2020-04-17 00:03:07', '2020-04-17 00:03:07'),
(378, 'contents', '318', 'title', '2020-04-17 00:04:59', '2020-04-17 00:04:59'),
(379, 'contents', '319', 'title', '2020-04-17 00:08:09', '2020-04-17 00:08:09'),
(380, 'contents', '320', 'title', '2020-04-17 00:10:24', '2020-04-17 00:10:24'),
(383, 'contents', '323', 'title', '2020-04-17 00:13:21', '2020-04-17 00:13:21'),
(384, 'contents', '324', 'title', '2020-04-17 00:15:54', '2020-04-17 00:15:54'),
(385, 'contents', '325', 'title', '2020-04-17 00:18:25', '2020-04-17 00:18:25'),
(386, 'contents', '326', 'title', '2020-04-17 00:20:17', '2020-04-17 00:20:17'),
(387, 'contents', '327', 'title', '2020-04-17 00:21:41', '2020-04-17 00:21:41'),
(388, 'contents', '328', 'title', '2020-04-17 00:24:05', '2020-04-17 00:24:05'),
(389, 'contents', '329', 'title', '2020-04-17 00:25:43', '2020-04-17 00:25:43'),
(390, 'contents', '330', 'title', '2020-04-17 00:27:18', '2020-04-17 00:27:18'),
(391, 'contents', '331', 'title', '2020-04-17 00:28:24', '2020-04-17 00:28:24'),
(392, 'contents', '332', 'title', '2020-04-17 00:29:46', '2020-04-17 00:29:46'),
(393, 'contents', '333', 'title', '2020-04-17 00:31:16', '2020-04-17 00:31:16'),
(394, 'contents', '334', 'title', '2020-04-17 00:33:02', '2020-04-17 00:33:02'),
(395, 'contents', '335', 'title', '2020-04-17 00:34:20', '2020-04-17 00:34:20'),
(396, 'contents', '336', 'title', '2020-04-17 00:35:18', '2020-04-17 00:35:18'),
(397, 'contents', '337', 'title', '2020-04-17 00:36:27', '2020-04-17 00:36:27'),
(398, 'contents', '338', 'title', '2020-04-17 00:37:22', '2020-04-17 00:37:22'),
(399, 'contents', '339', 'title', '2020-04-17 00:38:17', '2020-04-17 00:38:17'),
(400, 'contents', '340', 'title', '2020-04-17 00:39:12', '2020-04-17 00:39:12'),
(401, 'contents', '341', 'title', '2020-04-17 00:40:17', '2020-04-17 00:40:17'),
(402, 'contents', '342', 'title', '2020-04-17 00:41:04', '2020-04-17 00:41:04'),
(403, 'contents', '343', 'title', '2020-04-17 00:42:19', '2020-04-17 00:42:19'),
(404, 'contents', '344', 'title', '2020-04-17 00:43:12', '2020-04-17 00:43:12'),
(405, 'contents', '345', 'title', '2020-04-17 00:44:25', '2020-04-17 00:44:25'),
(406, 'contents', '346', 'title', '2020-04-17 00:45:33', '2020-04-17 00:45:33'),
(407, 'contents', '347', 'title', '2020-04-17 00:46:28', '2020-04-17 00:46:28'),
(408, 'contents', '348', 'title', '2020-04-17 00:47:12', '2020-04-17 00:47:12'),
(409, 'contents', '349', 'title', '2020-04-17 00:48:15', '2020-04-17 00:48:15'),
(410, 'contents', '350', 'title', '2020-04-17 00:49:06', '2020-04-17 00:49:06'),
(411, 'contents', '351', 'title', '2020-04-17 00:49:59', '2020-04-17 00:49:59'),
(412, 'contents', '352', 'title', '2020-04-17 00:50:48', '2020-04-17 00:50:48'),
(413, 'contents', '353', 'title', '2020-04-17 00:51:32', '2020-04-17 00:51:32'),
(414, 'contents', '354', 'title', '2020-04-17 00:52:16', '2020-04-17 00:52:16'),
(415, 'contents', '355', 'title', '2020-04-17 00:52:57', '2020-04-17 00:52:57'),
(416, 'contents', '356', 'title', '2020-04-17 00:53:42', '2020-04-17 00:53:42'),
(417, 'contents', '357', 'title', '2020-04-17 00:54:24', '2020-04-17 00:54:24'),
(418, 'contents', '358', 'title', '2020-04-17 00:55:13', '2020-04-17 00:55:13'),
(419, 'contents', '359', 'title', '2020-04-17 00:55:50', '2020-04-17 00:55:50'),
(420, 'contents', '360', 'title', '2020-04-17 01:15:36', '2020-04-17 01:15:36'),
(421, 'contents', '361', 'title', '2020-04-17 01:18:26', '2020-04-17 01:18:26'),
(422, 'contents', '362', 'title', '2020-04-17 01:22:12', '2020-04-17 01:22:12'),
(423, 'contents', '363', 'title', '2020-04-17 01:25:58', '2020-04-17 01:25:58'),
(424, 'contents', '364', 'title', '2020-04-17 01:29:15', '2020-04-17 01:29:15'),
(425, 'contents', '365', 'title', '2020-04-17 01:31:46', '2020-04-17 01:31:46'),
(426, 'contents', '366', 'title', '2020-04-17 01:34:34', '2020-04-17 01:34:34'),
(427, 'contents', '367', 'title', '2020-04-17 01:37:07', '2020-04-17 01:37:07'),
(428, 'contents', '368', 'title', '2020-04-17 01:39:06', '2020-04-17 01:39:06'),
(429, 'contents', '369', 'title', '2020-04-17 01:41:36', '2020-04-17 01:41:36'),
(430, 'contents', '370', 'title', '2020-04-17 01:43:43', '2020-04-17 01:43:43'),
(431, 'contents', '371', 'title', '2020-04-17 01:46:52', '2020-04-17 01:46:52'),
(432, 'contents', '372', 'title', '2020-04-17 01:49:18', '2020-04-17 01:49:18'),
(433, 'contents', '373', 'title', '2020-04-17 01:51:59', '2020-04-17 01:51:59'),
(434, 'contents', '374', 'title', '2020-04-17 01:54:07', '2020-04-17 01:54:07'),
(435, 'contents', '375', 'title', '2020-04-17 01:55:53', '2020-04-17 01:55:53'),
(436, 'contents', '376', 'title', '2020-04-17 01:57:28', '2020-04-17 01:57:28'),
(437, 'contents', '377', 'title', '2020-04-17 01:58:51', '2020-04-17 01:58:51'),
(438, 'contents', '378', 'title', '2020-04-17 02:01:16', '2020-04-17 02:01:16'),
(439, 'contents', '379', 'title', '2020-04-17 02:02:58', '2020-04-17 02:02:58'),
(440, 'contents', '380', 'title', '2020-04-17 02:04:27', '2020-04-17 02:04:27'),
(441, 'contents', '381', 'title', '2020-04-17 02:05:38', '2020-04-17 02:05:38'),
(442, 'contents', '382', 'title', '2020-04-17 02:06:53', '2020-04-17 02:06:53'),
(443, 'contents', '383', 'title', '2020-04-17 02:08:11', '2020-04-17 02:08:11'),
(444, 'contents', '384', 'title', '2020-04-17 02:09:49', '2020-04-17 02:09:49'),
(445, 'contents', '385', 'title', '2020-04-17 02:11:00', '2020-04-17 02:11:00'),
(446, 'contents', '386', 'title', '2020-04-17 02:14:23', '2020-04-17 02:14:23'),
(447, 'contents', '387', 'title', '2020-04-17 02:15:33', '2020-04-17 02:15:33'),
(448, 'contents', '388', 'title', '2020-04-17 02:16:32', '2020-04-17 02:16:32'),
(449, 'contents', '389', 'title', '2020-04-17 02:17:16', '2020-04-17 02:17:16'),
(450, 'contents', '390', 'title', '2020-04-17 02:18:10', '2020-04-17 02:18:10'),
(451, 'contents', '391', 'title', '2020-04-17 02:19:20', '2020-04-17 02:19:20'),
(452, 'contents', '392', 'title', '2020-04-17 02:20:05', '2020-04-17 02:20:05'),
(453, 'contents', '393', 'title', '2020-04-17 02:21:13', '2020-04-17 02:21:13'),
(454, 'contents', '394', 'title', '2020-04-17 02:22:02', '2020-04-17 02:22:02'),
(455, 'contents', '395', 'title', '2020-04-17 02:23:14', '2020-04-17 02:23:14'),
(456, 'contents', '396', 'title', '2020-04-17 02:24:03', '2020-04-17 02:24:03'),
(457, 'contents', '397', 'title', '2020-04-17 02:24:51', '2020-04-17 02:24:51'),
(458, 'contents', '398', 'title', '2020-04-17 02:25:30', '2020-04-17 02:25:30'),
(459, 'contents', '399', 'title', '2020-04-17 02:26:22', '2020-04-17 02:26:22'),
(460, 'contents', '400', 'title', '2020-04-17 02:27:11', '2020-04-17 02:27:11'),
(461, 'contents', '401', 'title', '2020-04-17 02:28:07', '2020-04-17 02:28:07'),
(462, 'contents', '402', 'title', '2020-04-17 02:28:53', '2020-04-17 02:28:53'),
(463, 'contents', '403', 'title', '2020-04-17 02:29:34', '2020-04-17 02:29:34'),
(464, 'contents', '404', 'title', '2020-04-17 02:30:17', '2020-04-17 02:30:17'),
(465, 'contents', '405', 'title', '2020-04-17 02:30:57', '2020-04-17 02:30:57'),
(466, 'contents', '406', 'title', '2020-04-17 02:31:37', '2020-04-17 02:31:37'),
(467, 'contents', '407', 'title', '2020-04-17 02:32:13', '2020-04-17 02:32:13'),
(468, 'contents', '408', 'title', '2020-04-17 02:32:45', '2020-04-17 02:32:45'),
(469, 'contents', '409', 'title', '2020-04-17 02:33:21', '2020-04-17 02:33:21'),
(470, 'contents', '410', 'title', '2020-04-17 02:44:24', '2020-04-17 02:44:24'),
(471, 'contents', '411', 'title', '2020-04-17 02:45:05', '2020-04-17 02:45:05'),
(472, 'contents', '412', 'title', '2020-04-17 02:46:21', '2020-04-17 02:46:21'),
(473, 'contents', '413', 'title', '2020-04-17 02:50:05', '2020-04-17 02:50:05'),
(474, 'contents', '414', 'title', '2020-04-17 02:50:41', '2020-04-17 02:50:41'),
(475, 'contents', '415', 'title', '2020-04-17 02:51:15', '2020-04-17 02:51:15'),
(476, 'contents', '416', 'title', '2020-04-17 02:51:36', '2020-04-17 02:51:36'),
(477, 'contents', '417', 'title', '2020-04-17 02:52:03', '2020-04-17 02:52:03'),
(478, 'contents', '418', 'title', '2020-04-17 02:52:22', '2020-04-17 02:52:22'),
(479, 'contents', '419', 'title', '2020-04-17 02:53:08', '2020-04-17 02:53:08'),
(480, 'contents', '420', 'title', '2020-04-17 02:53:56', '2020-04-17 02:53:56'),
(481, 'contents', '421', 'title', '2020-04-17 02:54:17', '2020-04-17 02:54:17'),
(482, 'contents', '422', 'title', '2020-04-17 02:54:17', '2020-04-17 02:54:17'),
(483, 'contents', '423', 'title', '2020-04-17 02:54:42', '2020-04-17 02:54:42'),
(484, 'contents', '424', 'title', '2020-04-17 02:55:04', '2020-04-17 02:55:04'),
(485, 'contents', '425', 'title', '2020-04-17 02:55:31', '2020-04-17 02:55:31'),
(486, 'contents', '426', 'title', '2020-04-17 02:55:51', '2020-04-17 02:55:51'),
(487, 'contents', '427', 'title', '2020-04-17 03:01:45', '2020-04-17 03:01:45'),
(488, 'contents', '428', 'title', '2020-04-17 03:02:11', '2020-04-17 03:02:11'),
(489, 'contents', '429', 'title', '2020-04-17 03:02:39', '2020-04-17 03:02:39'),
(490, 'contents', '430', 'title', '2020-04-17 03:03:04', '2020-04-17 03:03:04'),
(491, 'contents', '431', 'title', '2020-04-17 03:03:52', '2020-04-17 03:03:52'),
(492, 'contents', '432', 'title', '2020-04-17 03:04:14', '2020-04-17 03:04:14'),
(493, 'contents', '433', 'title', '2020-04-17 03:06:32', '2020-04-17 03:06:32'),
(494, 'contents', '434', 'title', '2020-04-17 03:06:57', '2020-04-17 03:06:57'),
(495, 'contents', '435', 'title', '2020-04-17 03:07:31', '2020-04-17 03:07:31'),
(496, 'contents', '436', 'title', '2020-04-17 03:07:53', '2020-04-17 03:07:53'),
(497, 'contents', '437', 'title', '2020-04-17 03:08:25', '2020-04-17 03:08:25'),
(498, 'contents', '438', 'title', '2020-04-17 03:08:49', '2020-04-17 03:08:49'),
(499, 'contents', '439', 'title', '2020-04-17 03:09:20', '2020-04-17 03:09:20'),
(500, 'contents', '440', 'title', '2020-04-17 03:09:41', '2020-04-17 03:09:41'),
(501, 'contents', '441', 'title', '2020-04-17 03:10:19', '2020-04-17 03:10:19'),
(502, 'contents', '442', 'title', '2020-04-17 03:10:45', '2020-04-17 03:10:45'),
(503, 'contents', '443', 'title', '2020-04-17 03:11:17', '2020-04-17 03:11:17'),
(504, 'contents', '444', 'title', '2020-04-17 03:11:40', '2020-04-17 03:11:40'),
(505, 'contents', '445', 'title', '2020-04-17 03:12:10', '2020-04-17 03:12:10'),
(506, 'contents', '446', 'title', '2020-04-17 03:12:33', '2020-04-17 03:12:33'),
(507, 'contents', '447', 'title', '2020-04-17 03:13:07', '2020-04-17 03:13:07'),
(508, 'contents', '448', 'title', '2020-04-17 03:13:29', '2020-04-17 03:13:29'),
(509, 'contents', '449', 'title', '2020-04-17 03:14:08', '2020-04-17 03:14:08'),
(510, 'contents', '450', 'title', '2020-04-17 03:14:44', '2020-04-17 03:14:44'),
(511, 'contents', '451', 'title', '2020-04-17 03:15:28', '2020-04-17 03:15:28'),
(512, 'contents', '452', 'title', '2020-04-17 03:15:52', '2020-04-17 03:15:52'),
(513, 'contents', '453', 'title', '2020-04-17 03:16:36', '2020-04-17 03:16:36'),
(514, 'contents', '454', 'title', '2020-04-17 03:16:56', '2020-04-17 03:16:56'),
(515, 'contents', '455', 'title', '2020-04-17 03:17:27', '2020-04-17 03:17:27'),
(516, 'contents', '456', 'title', '2020-04-17 03:17:48', '2020-04-17 03:17:48'),
(517, 'contents', '457', 'title', '2020-04-17 03:18:16', '2020-04-17 03:18:16'),
(518, 'contents', '458', 'title', '2020-04-17 03:18:41', '2020-04-17 03:18:41'),
(519, 'contents', '459', 'title', '2020-04-17 03:19:13', '2020-04-17 03:19:13'),
(520, 'contents', '460', 'title', '2020-04-17 03:19:38', '2020-04-17 03:19:38'),
(521, 'contents', '461', 'title', '2020-04-17 03:20:20', '2020-04-17 03:20:20'),
(522, 'contents', '462', 'title', '2020-04-17 03:20:41', '2020-04-17 03:20:41'),
(523, 'contents', '463', 'title', '2020-04-17 03:21:09', '2020-04-17 03:21:09'),
(524, 'contents', '464', 'title', '2020-04-17 03:21:31', '2020-04-17 03:21:31'),
(525, 'contents', '465', 'title', '2020-04-17 12:28:56', '2020-04-17 12:28:56'),
(526, 'contents', '466', 'title', '2020-04-17 12:29:33', '2020-04-17 12:29:33'),
(527, 'contents', '467', 'title', '2020-04-17 12:30:09', '2020-04-17 12:30:09'),
(528, 'contents', '468', 'title', '2020-04-17 12:30:56', '2020-04-17 12:30:56'),
(529, 'contents', '469', 'title', '2020-04-17 12:31:47', '2020-04-17 12:31:47'),
(530, 'contents', '470', 'title', '2020-04-17 12:32:49', '2020-04-17 12:32:49'),
(531, 'contents', '471', 'title', '2020-04-17 12:48:53', '2020-04-17 12:48:53'),
(532, 'contents', '472', 'title', '2020-04-17 12:49:44', '2020-04-17 12:49:44'),
(533, 'contents', '473', 'title', '2020-04-17 12:50:09', '2020-04-17 12:50:09'),
(534, 'contents', '474', 'title', '2020-04-17 12:50:39', '2020-04-17 12:50:39'),
(535, 'contents', '475', 'title', '2020-04-17 13:22:13', '2020-04-17 13:22:13'),
(536, 'contents', '476', 'title', '2020-04-17 13:22:34', '2020-04-17 13:22:34'),
(537, 'contents', '477', 'title', '2020-04-17 13:24:17', '2020-04-17 13:24:17'),
(538, 'contents', '478', 'title', '2020-04-17 13:24:58', '2020-04-17 13:24:58'),
(539, 'contents', '479', 'title', '2020-04-17 13:25:28', '2020-04-17 13:25:28'),
(540, 'contents', '480', 'title', '2020-04-17 13:25:55', '2020-04-17 13:25:55'),
(541, 'contents', '481', 'title', '2020-04-17 13:26:20', '2020-04-17 13:26:20'),
(542, 'contents', '482', 'title', '2020-04-17 13:26:44', '2020-04-17 13:26:44'),
(543, 'contents', '483', 'title', '2020-04-17 13:27:12', '2020-04-17 13:27:12'),
(544, 'contents', '484', 'title', '2020-04-17 13:27:36', '2020-04-17 13:27:36'),
(545, 'contents', '485', 'title', '2020-04-17 13:28:14', '2020-04-17 13:28:14'),
(546, 'contents', '486', 'title', '2020-04-17 13:28:37', '2020-04-17 13:28:37'),
(547, 'contents', '487', 'title', '2020-04-17 13:29:04', '2020-04-17 13:29:04'),
(548, 'contents', '488', 'title', '2020-04-17 13:29:34', '2020-04-17 13:29:34'),
(549, 'contents', '489', 'title', '2020-04-17 13:30:00', '2020-04-17 13:30:00'),
(550, 'contents', '490', 'title', '2020-04-17 13:30:25', '2020-04-17 13:30:25'),
(551, 'contents', '491', 'title', '2020-04-17 13:58:02', '2020-04-17 13:58:02'),
(552, 'contents', '492', 'title', '2020-04-17 13:58:24', '2020-04-17 13:58:24'),
(553, 'contents', '493', 'title', '2020-04-17 13:58:43', '2020-04-17 13:58:43'),
(554, 'contents', '494', 'title', '2020-04-17 13:58:59', '2020-04-17 13:58:59'),
(555, 'contents', '495', 'title', '2020-04-17 13:59:39', '2020-04-17 13:59:39'),
(556, 'contents', '496', 'title', '2020-04-17 13:59:59', '2020-04-17 13:59:59'),
(557, 'contents', '497', 'title', '2020-04-17 14:00:17', '2020-04-17 14:00:17'),
(558, 'contents', '498', 'title', '2020-04-17 14:00:34', '2020-04-17 14:00:34'),
(559, 'contents', '499', 'title', '2020-04-17 14:00:53', '2020-04-17 14:00:53'),
(560, 'contents', '500', 'title', '2020-04-17 14:01:17', '2020-04-17 14:01:17'),
(561, 'contents', '501', 'title', '2020-04-17 14:01:33', '2020-04-17 14:01:33'),
(562, 'contents', '502', 'title', '2020-04-17 14:01:56', '2020-04-17 14:01:56'),
(563, 'contents', '503', 'title', '2020-04-17 14:02:11', '2020-04-17 14:02:11'),
(564, 'contents', '504', 'title', '2020-04-17 14:02:33', '2020-04-17 14:02:33'),
(565, 'contents', '505', 'title', '2020-04-17 14:02:57', '2020-04-17 14:02:57'),
(566, 'contents', '506', 'title', '2020-04-17 14:03:25', '2020-04-17 14:03:25'),
(567, 'contents', '507', 'title', '2020-04-17 14:03:44', '2020-04-17 14:03:44'),
(568, 'contents', '508', 'title', '2020-04-17 14:04:05', '2020-04-17 14:04:05'),
(569, 'contents', '509', 'title', '2020-04-17 14:04:22', '2020-04-17 14:04:22'),
(570, 'contents', '510', 'title', '2020-04-17 14:04:41', '2020-04-17 14:04:41'),
(571, 'contents', '511', 'title', '2020-04-17 14:04:57', '2020-04-17 14:04:57'),
(572, 'contents', '512', 'title', '2020-04-17 14:05:15', '2020-04-17 14:05:15'),
(573, 'contents', '513', 'title', '2020-04-17 14:05:34', '2020-04-17 14:05:34'),
(574, 'contents', '514', 'title', '2020-04-17 14:05:52', '2020-04-17 14:05:52'),
(575, 'contents', '515', 'title', '2020-04-17 14:06:09', '2020-04-17 14:06:09'),
(576, 'contents', '516', 'title', '2020-04-17 14:06:26', '2020-04-17 14:06:26'),
(577, 'contents', '517', 'title', '2020-04-17 14:06:42', '2020-04-17 14:06:42'),
(578, 'contents', '518', 'title', '2020-04-17 14:06:58', '2020-04-17 14:06:58'),
(579, 'contents', '519', 'title', '2020-04-17 14:07:16', '2020-04-17 14:07:16'),
(580, 'contents', '520', 'title', '2020-04-17 14:07:35', '2020-04-17 14:07:35'),
(581, 'contents', '521', 'title', '2020-04-17 14:07:51', '2020-04-17 14:07:51'),
(582, 'contents', '522', 'title', '2020-04-17 14:08:08', '2020-04-17 14:08:08'),
(583, 'contents', '523', 'title', '2020-04-17 14:08:25', '2020-04-17 14:08:25'),
(584, 'contents', '524', 'title', '2020-04-17 14:08:41', '2020-04-17 14:08:41'),
(585, 'contents', '525', 'title', '2020-04-17 14:09:08', '2020-04-17 14:09:08'),
(586, 'contents', '526', 'title', '2020-04-17 14:09:52', '2020-04-17 14:09:52'),
(587, 'contents', '527', 'title', '2020-04-17 14:10:13', '2020-04-17 14:10:13'),
(588, 'contents', '528', 'title', '2020-04-17 14:10:37', '2020-04-17 14:10:37'),
(589, 'contents', '529', 'title', '2020-04-17 14:10:54', '2020-04-17 14:10:54'),
(590, 'contents', '530', 'title', '2020-04-17 14:11:09', '2020-04-17 14:11:09'),
(591, 'contents', '531', 'title', '2020-04-17 14:11:25', '2020-04-17 14:11:25'),
(592, 'contents', '532', 'title', '2020-04-17 14:11:46', '2020-04-17 14:11:46'),
(593, 'contents', '533', 'title', '2020-04-17 14:12:33', '2020-04-17 14:12:33'),
(594, 'contents', '534', 'title', '2020-04-17 14:12:53', '2020-04-17 14:12:53'),
(595, 'contents', '535', 'title', '2020-04-17 14:13:37', '2020-04-17 14:13:37'),
(596, 'contents', '536', 'title', '2020-04-17 14:13:53', '2020-04-17 14:13:53'),
(597, 'contents', '537', 'title', '2020-04-17 14:14:08', '2020-04-17 14:14:08'),
(598, 'contents', '538', 'title', '2020-04-17 14:14:24', '2020-04-17 14:14:24'),
(599, 'contents', '539', 'title', '2020-04-17 14:14:44', '2020-04-17 14:14:44'),
(600, 'contents', '540', 'title', '2020-04-17 14:15:01', '2020-04-17 14:15:01'),
(601, 'contents', '541', 'title', '2020-04-17 14:15:19', '2020-04-17 14:15:19'),
(602, 'contents', '542', 'title', '2020-04-17 14:15:38', '2020-04-17 14:15:38'),
(603, 'contents', '543', 'title', '2020-04-17 14:16:00', '2020-04-17 14:16:00'),
(604, 'contents', '544', 'title', '2020-04-17 14:16:20', '2020-04-17 14:16:20'),
(605, 'contents', '545', 'title', '2020-04-17 14:16:38', '2020-04-17 14:16:38'),
(606, 'contents', '546', 'title', '2020-04-17 14:17:03', '2020-04-17 14:17:03'),
(607, 'contents', '547', 'title', '2020-04-17 14:17:22', '2020-04-17 14:17:22'),
(608, 'contents', '548', 'title', '2020-04-17 14:18:47', '2020-04-17 14:18:47'),
(609, 'contents', '549', 'title', '2020-04-17 14:19:51', '2020-04-17 14:19:51'),
(610, 'contents', '550', 'title', '2020-04-17 14:20:26', '2020-04-17 14:20:26'),
(611, 'contents', '551', 'title', '2020-04-17 14:21:12', '2020-04-17 14:21:12'),
(612, 'contents', '552', 'title', '2020-04-17 14:21:36', '2020-04-17 14:21:36'),
(613, 'contents', '553', 'title', '2020-04-17 14:21:59', '2020-04-17 14:21:59'),
(614, 'contents', '554', 'title', '2020-04-17 14:22:23', '2020-04-17 14:22:23'),
(615, 'contents', '555', 'title', '2020-04-17 14:22:40', '2020-04-17 14:22:40'),
(616, 'contents', '556', 'title', '2020-04-17 14:23:06', '2020-04-17 14:23:06'),
(617, 'contents', '557', 'title', '2020-04-17 14:23:24', '2020-04-17 14:23:24'),
(618, 'contents', '558', 'title', '2020-04-17 14:23:39', '2020-04-17 14:23:39'),
(619, 'contents', '559', 'title', '2020-04-17 14:23:58', '2020-04-17 14:23:58'),
(620, 'contents', '560', 'title', '2020-04-17 14:24:24', '2020-04-17 14:24:24'),
(621, 'contents', '561', 'title', '2020-04-17 14:24:48', '2020-04-17 14:24:48'),
(622, 'contents', '562', 'title', '2020-04-17 14:25:03', '2020-04-17 14:25:03'),
(623, 'contents', '563', 'title', '2020-04-17 14:25:19', '2020-04-17 14:25:19'),
(624, 'contents', '564', 'title', '2020-04-17 14:25:35', '2020-04-17 14:25:35'),
(625, 'contents', '565', 'title', '2020-04-17 14:25:53', '2020-04-17 14:25:53'),
(626, 'contents', '566', 'title', '2020-04-17 14:26:10', '2020-04-17 14:26:10'),
(627, 'contents', '567', 'title', '2020-04-17 14:26:26', '2020-04-17 14:26:26'),
(628, 'contents', '568', 'title', '2020-04-17 14:26:43', '2020-04-17 14:26:43'),
(629, 'contents', '569', 'title', '2020-04-17 14:27:01', '2020-04-17 14:27:01'),
(630, 'contents', '570', 'title', '2020-04-17 14:27:18', '2020-04-17 14:27:18'),
(631, 'contents', '571', 'title', '2020-04-17 14:27:34', '2020-04-17 14:27:34'),
(632, 'contents', '572', 'title', '2020-04-17 14:27:50', '2020-04-17 14:27:50'),
(633, 'contents', '573', 'title', '2020-04-17 14:28:09', '2020-04-17 14:28:09'),
(634, 'contents', '574', 'title', '2020-04-17 14:28:27', '2020-04-17 14:28:27'),
(635, 'contents', '575', 'title', '2020-04-17 14:28:46', '2020-04-17 14:28:46'),
(636, 'contents', '576', 'title', '2020-04-17 14:29:07', '2020-04-17 14:29:07'),
(637, 'contents', '577', 'title', '2020-04-17 14:29:27', '2020-04-17 14:29:27'),
(638, 'contents', '578', 'title', '2020-04-17 14:29:44', '2020-04-17 14:29:44'),
(639, 'contents', '579', 'title', '2020-04-17 14:30:01', '2020-04-17 14:30:01'),
(640, 'contents', '580', 'title', '2020-04-17 14:30:18', '2020-04-17 14:30:18'),
(641, 'contents', '581', 'title', '2020-04-17 14:30:37', '2020-04-17 14:30:37'),
(642, 'contents', '582', 'title', '2020-04-17 14:30:52', '2020-04-17 14:30:52'),
(643, 'contents', '583', 'title', '2020-04-17 14:31:08', '2020-04-17 14:31:08'),
(644, 'contents', '584', 'title', '2020-04-17 14:31:33', '2020-04-17 14:31:33'),
(645, 'contents', '585', 'title', '2020-04-17 14:31:54', '2020-04-17 14:31:54'),
(646, 'contents', '586', 'title', '2020-04-17 14:32:12', '2020-04-17 14:32:12'),
(647, 'contents', '587', 'title', '2020-04-17 14:32:30', '2020-04-17 14:32:30'),
(648, 'contents', '588', 'title', '2020-04-17 14:32:47', '2020-04-17 14:32:47'),
(649, 'contents', '589', 'title', '2020-04-17 14:33:05', '2020-04-17 14:33:05'),
(650, 'contents', '590', 'title', '2020-04-17 14:33:23', '2020-04-17 14:33:23'),
(651, 'contents', '591', 'title', '2020-04-17 14:33:41', '2020-04-17 14:33:41'),
(652, 'contents', '592', 'title', '2020-04-17 14:33:58', '2020-04-17 14:33:58'),
(653, 'contents', '593', 'title', '2020-04-17 14:34:18', '2020-04-17 14:34:18'),
(654, 'contents', '594', 'title', '2020-04-17 14:34:38', '2020-04-17 14:34:38'),
(655, 'contents', '595', 'title', '2020-04-17 14:35:00', '2020-04-17 14:35:00'),
(656, 'contents', '596', 'title', '2020-04-17 14:35:18', '2020-04-17 14:35:18'),
(657, 'contents', '597', 'title', '2020-04-17 14:35:39', '2020-04-17 14:35:39'),
(658, 'contents', '598', 'title', '2020-04-17 14:35:57', '2020-04-17 14:35:57'),
(659, 'contents', '599', 'title', '2020-04-17 14:43:38', '2020-04-17 14:43:38'),
(660, 'contents', '600', 'title', '2020-04-17 14:44:13', '2020-04-17 14:44:13'),
(661, 'contents', '601', 'title', '2020-04-17 14:46:47', '2020-04-17 14:46:47'),
(662, 'contents', '602', 'title', '2020-04-17 14:48:31', '2020-04-17 14:48:31'),
(663, 'contents', '603', 'title', '2020-04-17 14:49:22', '2020-04-17 14:49:22'),
(664, 'contents', '604', 'title', '2020-04-17 14:50:40', '2020-04-17 14:50:40'),
(669, 'contents', '609', 'title', '2020-04-17 15:49:53', '2020-04-17 15:49:53'),
(670, 'contents', '610', 'title', '2020-04-17 15:50:38', '2020-04-17 15:50:38'),
(671, 'contents', '611', 'title', '2020-04-17 15:52:04', '2020-04-17 15:52:04'),
(672, 'contents', '612', 'title', '2020-04-17 15:53:02', '2020-04-17 15:53:02'),
(673, 'contents', '613', 'title', '2020-04-17 15:54:05', '2020-04-17 15:54:05'),
(674, 'contents', '614', 'title', '2020-04-17 15:55:12', '2020-04-17 15:55:12'),
(675, 'contents', '615', 'title', '2020-04-17 15:56:50', '2020-04-17 15:56:50'),
(676, 'contents', '616', 'title', '2020-04-17 15:57:50', '2020-04-17 15:57:50'),
(677, 'contents', '617', 'title', '2020-04-17 15:58:36', '2020-04-17 15:58:36'),
(678, 'contents', '618', 'title', '2020-04-17 15:59:23', '2020-04-17 15:59:23'),
(679, 'contents', '619', 'title', '2020-04-17 16:00:07', '2020-04-17 16:00:07'),
(680, 'contents', '620', 'title', '2020-04-17 16:03:02', '2020-04-17 16:03:02'),
(681, 'contents', '621', 'title', '2020-04-17 16:04:23', '2020-04-17 16:04:23'),
(682, 'contents', '622', 'title', '2020-04-17 16:05:01', '2020-04-17 16:05:01'),
(683, 'contents', '623', 'title', '2020-04-17 16:06:10', '2020-04-17 16:06:10'),
(684, 'contents', '624', 'title', '2020-04-17 16:07:21', '2020-04-17 16:07:21'),
(685, 'contents', '625', 'title', '2020-04-17 16:08:07', '2020-04-17 16:08:07'),
(686, 'contents', '626', 'title', '2020-04-17 16:09:22', '2020-04-17 16:09:22'),
(687, 'contents', '627', 'title', '2020-04-17 16:10:47', '2020-04-17 16:10:47'),
(688, 'contents', '628', 'title', '2020-04-17 16:11:33', '2020-04-17 16:11:33'),
(689, 'contents', '629', 'title', '2020-04-17 16:12:44', '2020-04-17 16:12:44'),
(690, 'contents', '630', 'title', '2020-04-17 16:13:25', '2020-04-17 16:13:25'),
(691, 'contents', '631', 'title', '2020-04-17 16:14:02', '2020-04-17 16:14:02'),
(692, 'contents', '632', 'title', '2020-04-17 16:16:05', '2020-04-17 16:16:05'),
(693, 'contents', '633', 'title', '2020-04-17 16:17:17', '2020-04-17 16:17:17'),
(694, 'contents', '634', 'title', '2020-04-17 16:39:30', '2020-04-17 16:39:30'),
(695, 'contents', '635', 'title', '2020-04-17 16:41:13', '2020-04-17 16:41:13'),
(696, 'contents', '636', 'title', '2020-04-17 16:43:28', '2020-04-17 16:43:28'),
(697, 'contents', '637', 'title', '2020-04-17 16:47:14', '2020-04-17 16:47:14'),
(698, 'contents', '638', 'title', '2020-04-17 17:40:39', '2020-04-17 17:40:39'),
(699, 'contents', '639', 'title', '2020-04-17 17:41:46', '2020-04-17 17:41:46'),
(700, 'contents', '640', 'title', '2020-04-17 17:43:35', '2020-04-17 17:43:35'),
(701, 'contents', '641', 'title', '2020-04-17 17:46:45', '2020-04-17 17:46:45'),
(702, 'contents', '642', 'title', '2020-04-17 17:47:57', '2020-04-17 17:47:57'),
(703, 'contents', '643', 'title', '2020-04-17 17:49:28', '2020-04-17 17:49:28'),
(704, 'contents', '644', 'title', '2020-04-17 17:50:26', '2020-04-17 17:50:26'),
(705, 'contents', '645', 'title', '2020-04-17 17:51:06', '2020-04-17 17:51:06'),
(706, 'contents', '646', 'title', '2020-04-17 17:51:43', '2020-04-17 17:51:43'),
(707, 'contents', '647', 'title', '2020-04-17 17:52:19', '2020-04-17 17:52:19'),
(708, 'contents', '648', 'title', '2020-04-17 17:52:47', '2020-04-17 17:52:47'),
(709, 'contents', '649', 'title', '2020-04-17 17:53:25', '2020-04-17 17:53:25'),
(710, 'contents', '650', 'title', '2020-04-17 20:21:08', '2020-04-17 20:21:08'),
(711, 'contents', '651', 'title', '2020-04-17 20:21:42', '2020-04-17 20:21:42'),
(712, 'contents', '652', 'title', '2020-04-17 20:22:11', '2020-04-17 20:22:11'),
(713, 'contents', '653', 'title', '2020-04-17 20:22:48', '2020-04-17 20:22:48'),
(714, 'contents', '654', 'title', '2020-04-17 20:23:20', '2020-04-17 20:23:20'),
(715, 'contents', '655', 'title', '2020-04-17 20:24:05', '2020-04-17 20:24:05'),
(716, 'contents', '656', 'title', '2020-04-17 20:24:35', '2020-04-17 20:24:35'),
(717, 'contents', '657', 'title', '2020-04-17 20:25:18', '2020-04-17 20:25:18'),
(718, 'contents', '658', 'title', '2020-04-17 20:25:44', '2020-04-17 20:25:44'),
(719, 'contents', '659', 'title', '2020-04-17 20:26:09', '2020-04-17 20:26:09'),
(720, 'contents', '660', 'title', '2020-04-17 20:26:44', '2020-04-17 20:26:44'),
(721, 'contents', '661', 'title', '2020-04-17 20:27:15', '2020-04-17 20:27:15'),
(722, 'contents', '662', 'title', '2020-04-17 20:27:40', '2020-04-17 20:27:40'),
(723, 'contents', '663', 'title', '2020-04-17 20:28:09', '2020-04-17 20:28:09'),
(724, 'contents', '664', 'title', '2020-04-17 20:28:43', '2020-04-17 20:28:43'),
(725, 'contents', '665', 'title', '2020-04-17 20:29:17', '2020-04-17 20:29:17'),
(726, 'contents', '666', 'title', '2020-04-17 20:29:43', '2020-04-17 20:29:43'),
(727, 'contents', '667', 'title', '2020-04-17 20:30:21', '2020-04-17 20:30:21'),
(728, 'contents', '668', 'title', '2020-04-17 20:30:48', '2020-04-17 20:30:48'),
(729, 'contents', '669', 'title', '2020-04-17 20:42:25', '2020-04-17 20:42:25'),
(730, 'contents', '670', 'title', '2020-04-17 20:43:08', '2020-04-17 20:43:08'),
(731, 'services', '61', 'title', '2020-04-17 20:45:45', '2020-04-17 20:45:45'),
(732, 'contents', '671', 'title', '2020-04-17 20:46:56', '2020-04-17 20:46:56'),
(733, 'contents', '672', 'title', '2020-04-17 20:51:21', '2020-04-17 20:51:21'),
(734, 'contents', '673', 'title', '2020-04-17 20:52:11', '2020-04-17 20:52:11'),
(735, 'contents', '674', 'title', '2020-04-17 20:52:54', '2020-04-17 20:52:54'),
(736, 'contents', '675', 'title', '2020-04-17 20:53:51', '2020-04-17 20:53:51'),
(737, 'contents', '676', 'title', '2020-04-17 20:55:21', '2020-04-17 20:55:21'),
(739, 'contents', '678', 'title', '2020-04-17 22:54:57', '2020-04-17 22:54:57'),
(740, 'contents', '679', 'title', '2020-04-17 22:56:30', '2020-04-17 22:56:30'),
(741, 'contents', '680', 'title', '2020-04-17 22:57:36', '2020-04-17 22:57:36'),
(742, 'contents', '681', 'title', '2020-04-17 22:59:34', '2020-04-17 22:59:34'),
(747, 'services', '62', 'title', '2020-04-17 23:16:44', '2020-04-17 23:16:44'),
(748, 'contents', '686', 'title', '2020-04-17 23:22:40', '2020-04-17 23:22:40'),
(750, 'contents', '688', 'title', '2020-04-17 23:25:19', '2020-04-17 23:25:19'),
(751, 'contents', '689', 'title', '2020-04-17 23:27:33', '2020-04-17 23:27:33'),
(752, 'contents', '690', 'title', '2020-04-17 23:28:56', '2020-04-17 23:28:56'),
(753, 'contents', '691', 'title', '2020-04-17 23:36:03', '2020-04-17 23:36:03'),
(755, 'contents', '693', 'title', '2020-04-17 23:48:02', '2020-04-17 23:48:02'),
(756, 'contents', '694', 'title', '2020-04-17 23:50:14', '2020-04-17 23:50:14'),
(757, 'contents', '695', 'title', '2020-04-17 23:51:03', '2020-04-17 23:51:03'),
(758, 'contents', '696', 'title', '2020-04-17 23:52:30', '2020-04-17 23:52:30'),
(759, 'contents', '697', 'title', '2020-04-17 23:54:10', '2020-04-17 23:54:10'),
(760, 'contents', '698', 'title', '2020-04-17 23:56:19', '2020-04-17 23:56:19'),
(761, 'contents', '699', 'title', '2020-04-17 23:58:02', '2020-04-17 23:58:02'),
(769, 'contents', '707', 'title', '2020-04-18 00:45:39', '2020-04-18 00:45:39'),
(770, 'contents', '708', 'title', '2020-04-18 00:47:54', '2020-04-18 00:47:54'),
(771, 'contents', '709', 'title', '2020-04-18 00:49:42', '2020-04-18 00:49:42'),
(772, 'contents', '710', 'title', '2020-04-18 00:51:41', '2020-04-18 00:51:41'),
(773, 'contents', '711', 'title', '2020-04-18 00:55:55', '2020-04-18 00:55:55'),
(774, 'contents', '712', 'title', '2020-04-18 00:59:17', '2020-04-18 00:59:17'),
(775, 'contents', '713', 'title', '2020-04-18 02:04:06', '2020-04-18 02:04:06'),
(776, 'contents', '714', 'title', '2020-04-18 02:05:17', '2020-04-18 02:05:17'),
(777, 'contents', '715', 'title', '2020-04-18 02:06:45', '2020-04-18 02:06:45'),
(778, 'contents', '716', 'title', '2020-04-18 02:08:40', '2020-04-18 02:08:40'),
(779, 'contents', '717', 'title', '2020-04-18 02:09:51', '2020-04-18 02:09:51'),
(780, 'contents', '718', 'title', '2020-04-18 02:10:52', '2020-04-18 02:10:52'),
(781, 'contents', '719', 'title', '2020-04-18 03:44:02', '2020-04-18 03:44:02'),
(782, 'contents', '720', 'title', '2020-04-18 03:46:12', '2020-04-18 03:46:12'),
(783, 'contents', '721', 'title', '2020-04-18 03:47:06', '2020-04-18 03:47:06'),
(784, 'contents', '722', 'title', '2020-04-18 03:49:06', '2020-04-18 03:49:06'),
(785, 'contents', '723', 'title', '2020-04-18 03:52:56', '2020-04-18 03:52:56'),
(786, 'contents', '724', 'title', '2020-04-18 03:55:00', '2020-04-18 03:55:00'),
(787, 'services', '63', 'title', '2020-04-18 04:00:45', '2020-04-18 04:00:45'),
(789, 'contents', '725', 'title', '2020-04-18 04:53:47', '2020-04-18 04:53:47'),
(790, 'contents', '726', 'title', '2020-04-18 04:54:22', '2020-04-18 04:54:22'),
(792, 'contents', '728', 'title', '2020-04-18 04:59:48', '2020-04-18 04:59:48'),
(793, 'contents', '729', 'title', '2020-04-18 05:02:13', '2020-04-18 05:02:13'),
(794, 'contents', '730', 'title', '2020-04-18 05:05:23', '2020-04-18 05:05:23'),
(795, 'contents', '731', 'title', '2020-04-18 05:08:18', '2020-04-18 05:08:18'),
(797, 'contents', '733', 'title', '2020-04-18 05:33:29', '2020-04-18 05:33:29'),
(798, 'contents', '734', 'title', '2020-04-18 05:37:29', '2020-04-18 05:37:29'),
(799, 'contents', '735', 'title', '2020-04-18 05:39:15', '2020-04-18 05:39:15'),
(800, 'contents', '736', 'title', '2020-04-18 05:42:49', '2020-04-18 05:42:49'),
(801, 'contents', '737', 'title', '2020-04-18 05:44:06', '2020-04-18 05:44:06'),
(802, 'contents', '738', 'title', '2020-04-18 05:45:41', '2020-04-18 05:45:41'),
(803, 'contents', '739', 'title', '2020-04-18 05:54:45', '2020-04-18 05:54:45'),
(804, 'contents', '740', 'title', '2020-04-18 05:56:08', '2020-04-18 05:56:08'),
(805, 'contents', '741', 'title', '2020-04-18 05:57:33', '2020-04-18 05:57:33'),
(806, 'contents', '742', 'title', '2020-04-18 05:58:24', '2020-04-18 05:58:24'),
(807, 'contents', '743', 'title', '2020-04-18 05:59:58', '2020-04-18 05:59:58'),
(808, 'contents', '744', 'title', '2020-04-18 06:01:39', '2020-04-18 06:01:39'),
(809, 'contents', '745', 'title', '2020-04-18 06:24:38', '2020-04-18 06:24:38'),
(810, 'contents', '746', 'title', '2020-04-18 06:25:11', '2020-04-18 06:25:11'),
(811, 'contents', '747', 'title', '2020-04-18 06:25:53', '2020-04-18 06:25:53'),
(812, 'contents', '748', 'title', '2020-04-18 06:26:54', '2020-04-18 06:26:54'),
(813, 'contents', '749', 'title', '2020-04-18 06:27:53', '2020-04-18 06:27:53'),
(814, 'contents', '750', 'title', '2020-04-18 06:28:39', '2020-04-18 06:28:39'),
(815, 'contents', '751', 'title', '2020-04-18 06:30:54', '2020-04-18 06:30:54'),
(816, 'contents', '752', 'title', '2020-04-18 06:31:28', '2020-04-18 06:31:28'),
(817, 'contents', '753', 'title', '2020-04-18 06:32:07', '2020-04-18 06:32:07'),
(818, 'contents', '754', 'title', '2020-04-18 06:32:52', '2020-04-18 06:32:52'),
(819, 'contents', '755', 'title', '2020-04-18 06:33:42', '2020-04-18 06:33:42'),
(820, 'contents', '756', 'title', '2020-04-18 06:34:29', '2020-04-18 06:34:29'),
(821, 'contents', '757', 'title', '2020-04-18 07:11:00', '2020-04-18 07:11:00'),
(822, 'contents', '758', 'title', '2020-04-18 07:11:32', '2020-04-18 07:11:32'),
(823, 'contents', '759', 'title', '2020-04-18 07:12:54', '2020-04-18 07:12:54'),
(824, 'contents', '760', 'title', '2020-04-18 07:13:49', '2020-04-18 07:13:49'),
(825, 'contents', '761', 'title', '2020-04-18 07:14:41', '2020-04-18 07:14:41'),
(826, 'contents', '762', 'title', '2020-04-18 07:15:40', '2020-04-18 07:15:40'),
(827, 'contents', '763', 'title', '2020-04-18 13:04:57', '2020-04-18 13:04:57'),
(828, 'contents', '764', 'title', '2020-04-18 13:09:42', '2020-04-18 13:09:42'),
(829, 'contents', '765', 'title', '2020-04-18 13:11:23', '2020-04-18 13:11:23'),
(830, 'contents', '766', 'title', '2020-04-18 13:18:15', '2020-04-18 13:18:15'),
(831, 'contents', '767', 'title', '2020-04-18 13:24:15', '2020-04-18 13:24:15'),
(833, 'contents', '769', 'title', '2020-04-18 14:09:45', '2020-04-18 14:09:45'),
(834, 'contents', '770', 'title', '2020-04-18 15:17:40', '2020-04-18 15:17:40'),
(835, 'contents', '771', 'title', '2020-04-18 15:20:22', '2020-04-18 15:20:22'),
(836, 'contents', '772', 'title', '2020-04-18 15:24:12', '2020-04-18 15:24:12'),
(837, 'contents', '773', 'title', '2020-04-18 15:26:58', '2020-04-18 15:26:58'),
(838, 'contents', '774', 'title', '2020-04-18 15:29:46', '2020-04-18 15:29:46'),
(839, 'contents', '775', 'title', '2020-04-18 15:32:11', '2020-04-18 15:32:11'),
(840, 'contents', '776', 'title', '2020-04-18 15:34:48', '2020-04-18 15:34:48'),
(841, 'contents', '777', 'title', '2020-04-18 15:35:42', '2020-04-18 15:35:42'),
(842, 'contents', '778', 'title', '2020-04-18 15:40:20', '2020-04-18 15:40:20'),
(843, 'contents', '779', 'title', '2020-04-18 15:45:49', '2020-04-18 15:45:49'),
(844, 'contents', '780', 'title', '2020-04-18 15:49:22', '2020-04-18 15:49:22'),
(845, 'contents', '781', 'title', '2020-04-18 15:50:02', '2020-04-18 15:50:02'),
(848, 'contents', '784', 'title', '2020-04-18 16:12:03', '2020-04-18 16:12:03'),
(849, 'contents', '785', 'title', '2020-04-18 16:15:50', '2020-04-18 16:15:50'),
(851, 'contents', '787', 'title', '2020-04-18 16:23:22', '2020-04-18 16:23:22'),
(853, 'contents', '789', 'title', '2020-04-18 16:31:37', '2020-04-18 16:31:37'),
(854, 'contents', '790', 'title', '2020-04-18 16:32:30', '2020-04-18 16:32:30'),
(855, 'contents', '791', 'title', '2020-04-18 16:33:39', '2020-04-18 16:33:39'),
(856, 'contents', '792', 'title', '2020-04-18 16:46:22', '2020-04-18 16:46:22'),
(857, 'contents', '793', 'title', '2020-04-18 16:47:43', '2020-04-18 16:47:43'),
(858, 'contents', '794', 'title', '2020-04-18 16:48:11', '2020-04-18 16:48:11'),
(859, 'contents', '795', 'title', '2020-04-18 16:49:05', '2020-04-18 16:49:05'),
(860, 'contents', '796', 'title', '2020-04-18 16:49:39', '2020-04-18 16:49:39'),
(861, 'providers', '28', 'title', '2020-04-18 17:02:23', '2020-04-18 17:02:23'),
(862, 'services', '65', 'title', '2020-04-18 17:05:14', '2020-04-18 17:05:14'),
(863, 'contents', '797', 'title', '2020-04-18 17:09:14', '2020-04-18 17:09:14'),
(864, 'contents', '797', 'content_text', '2020-04-18 17:09:14', '2020-04-18 17:09:14'),
(865, 'contents', '798', 'title', '2020-04-18 17:10:28', '2020-04-18 17:10:28'),
(866, 'contents', '798', 'content_text', '2020-04-18 17:10:28', '2020-04-18 17:10:28'),
(867, 'contents', '799', 'title', '2020-04-18 17:31:54', '2020-04-18 17:31:54'),
(868, 'services', '66', 'title', '2020-04-19 12:58:37', '2020-04-19 12:58:37'),
(869, 'contents', '800', 'title', '2020-04-19 13:03:25', '2020-04-19 13:03:25'),
(870, 'contents', '801', 'title', '2020-04-19 13:11:44', '2020-04-19 13:11:44');

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
(1, 'emad', 'super_admin@ivas.com', '$2y$10$u2evAW530miwgUb2jcXkTuqIGswxnSQ3DSmX1Ji5rtO3Tx.MtVcX2', '', '01223872695', NULL, '0000-00-00 00:00:00', '2020-04-11 13:59:13'),
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
-- Indexes for table `msisdns`
--
ALTER TABLE `msisdns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ooredoo_notify_id_3` (`ooredoo_notify_id`),
  ADD KEY `ads_ur_id` (`ads_ur_id`);

--
-- Indexes for table `notify`
--
ALTER TABLE `notify`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=802;

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
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `msisdns`
--
ALTER TABLE `msisdns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notify`
--
ALTER TABLE `notify`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1979;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=857;

--
-- AUTO_INCREMENT for table `tim_wes`
--
ALTER TABLE `tim_wes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `translatables`
--
ALTER TABLE `translatables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=871;

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
