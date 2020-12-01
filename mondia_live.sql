/*
Navicat MySQL Data Transfer

Source Server         : localhost_7.3
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : mondia_live

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-12-01 14:16:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `audios`
-- ----------------------------
DROP TABLE IF EXISTS `audios`;
CREATE TABLE `audios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provider_id` int(10) unsigned NOT NULL,
  `operator_id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video_id` int(10) unsigned DEFAULT NULL,
  `azan_flage` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `service_id` (`provider_id`),
  KEY `operator_id` (`operator_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `audios_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `audios_ibfk_2` FOREIGN KEY (`operator_id`) REFERENCES `operators` (`id`) ON DELETE CASCADE,
  CONSTRAINT `audios_operator_id_foreign1` FOREIGN KEY (`operator_id`) REFERENCES `operators` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `audios_provider_id_foreign1` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `audios_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of audios
-- ----------------------------
INSERT INTO `audios` VALUES ('33', '20', '9', 'rbt1 en', 'uploads/audios/5e8f36f21058a.mp3', '789', '2020-04-09 20:53:38', '2020-04-09 20:53:59', null, '1');
INSERT INTO `audios` VALUES ('34', '20', '9', 'rbt2 en', 'uploads/audios/5e8f375f7e6b9.mp3', '456', '2020-04-09 20:55:27', '2020-04-09 20:55:27', null, '0');
INSERT INTO `audios` VALUES ('35', '20', '10', 'rbt3 en', 'uploads/audios/5e8f399b94720.mp3', '456', '2020-04-09 21:04:59', '2020-04-09 21:04:59', null, '1');
INSERT INTO `audios` VALUES ('36', '20', '10', 'rbt4 en', 'uploads/audios/5e8f39b444d63.mp3', '789', '2020-04-09 21:05:24', '2020-04-09 21:05:24', null, '0');

-- ----------------------------
-- Table structure for `contents`
-- ----------------------------
DROP TABLE IF EXISTS `contents`;
CREATE TABLE `contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_preview` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` int(11) DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = video /2 = audio /3 = image',
  PRIMARY KEY (`id`),
  KEY `service_id` (`service_id`),
  CONSTRAINT `contents_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of contents
-- ----------------------------
INSERT INTO `contents` VALUES ('71', '33', 'Sourat Al Fatha', '2020-04-14 03:40:32', '2020-04-18 17:26:13', 'uploads/videos/5e94dc502bdf6.mp4', null, '5e9b38352690b.png', '1', '1');
INSERT INTO `contents` VALUES ('72', '33', 'Sorat Al Bakarah 1', '2020-04-14 03:43:44', '2020-04-18 09:06:15', 'uploads/videos/5e94dd1092460.mp4', null, '5e94dd10945eb.png', '32', '1');
INSERT INTO `contents` VALUES ('73', '33', 'Sorat Al Bakarah 2', '2020-04-14 03:45:06', '2020-04-18 09:06:15', 'uploads/videos/5e94dd6298122.mp4', null, '5e94dd629a003.png', '31', '1');
INSERT INTO `contents` VALUES ('74', '33', 'Sorat Al Bakarah 3', '2020-04-14 03:46:12', '2020-04-18 09:06:15', 'uploads/videos/5e94dda3c4962.mp4', null, '5e94dda3c70f3.png', '30', '1');
INSERT INTO `contents` VALUES ('75', '33', 'Sorat Al Bakarah 4', '2020-04-14 03:47:11', '2020-04-18 09:06:15', 'uploads/videos/5e94dddf3339f.mp4', null, '5e94dddf3544c.png', '29', '1');
INSERT INTO `contents` VALUES ('76', '33', 'Sorat Al Bakarah 5', '2020-04-14 03:48:10', '2020-04-18 09:06:15', 'uploads/videos/5e94de1a41245.mp4', null, '5e94de1a43add.png', '28', '1');
INSERT INTO `contents` VALUES ('77', '33', 'Sorat Al Bakarah 6', '2020-04-14 03:49:52', '2020-04-18 09:06:15', 'uploads/videos/5e94de7fe6d34.mp4', null, '5e94de7feb66c.png', '27', '1');
INSERT INTO `contents` VALUES ('78', '33', 'Sorat Al Bakarah 7', '2020-04-14 03:50:43', '2020-04-18 09:35:54', 'uploads/videos/5e94deb35f926.mp4', null, '5e94deb360fb7.png', '3', '1');
INSERT INTO `contents` VALUES ('79', '33', 'Sorat Al Bakarah 8', '2020-04-14 03:51:32', '2020-04-18 09:06:15', 'uploads/videos/5e94dee3e0c7f.mp4', null, '5e94dee3e3da2.png', '26', '1');
INSERT INTO `contents` VALUES ('80', '33', 'Sorat Al Bakarah 9', '2020-04-14 03:52:17', '2020-04-18 09:06:15', 'uploads/videos/5e94df11588e7.mp4', null, '5e94df115ab48.png', '25', '1');
INSERT INTO `contents` VALUES ('101', '36', 'Allahom ahfazna Belaslam', '2020-04-14 04:33:13', '2020-04-18 08:55:55', 'uploads/videos/5e94e8a89e3f7.mp4', null, '5e94e8a89f2e4.png', '35', '1');
INSERT INTO `contents` VALUES ('102', '36', 'allahom any aoz bek men alham wa alhozn', '2020-04-14 04:33:46', '2020-04-18 08:55:55', 'uploads/videos/5e94e8ca642c4.mp4', null, '5e94e8ca6530c.png', '36', '1');
INSERT INTO `contents` VALUES ('103', '36', 'allahom ana nsalak feal alkhaerat', '2020-04-14 04:34:44', '2020-04-18 08:55:55', 'uploads/videos/5e94e903d1339.mp4', null, '5e94e903d2a7d.png', '37', '1');
INSERT INTO `contents` VALUES ('104', '36', 'allahom asleh ahwalna', '2020-04-14 04:35:21', '2020-04-18 08:55:55', 'uploads/videos/5e94e9289d4ae.mp4', null, '5e94e9289e5e4.png', '38', '1');
INSERT INTO `contents` VALUES ('105', '36', 'allahom any aoz bek men gohd alblaa', '2020-04-14 04:36:22', '2020-04-18 08:55:55', 'uploads/videos/5e94e9665b401.mp4', null, '5e94e9665c73d.png', '39', '1');
INSERT INTO `contents` VALUES ('106', '36', 'allahom aghfer lhaina wa maitna', '2020-04-14 04:37:45', '2020-04-18 08:55:55', 'uploads/videos/5e94e9b8bd15b.mp4', null, '5e94e9b8be3c4.png', '40', '1');
INSERT INTO `contents` VALUES ('107', '36', 'allahom anak khalakt nafsy', '2020-04-14 04:38:15', '2020-04-18 08:55:55', 'uploads/videos/5e94e9d6e56a7.mp4', null, '5e94e9d6e672c.png', '41', '1');
INSERT INTO `contents` VALUES ('108', '36', 'allahom zdna wala tankosna', '2020-04-14 04:38:50', '2020-04-18 08:55:56', 'uploads/videos/5e94e9f9876f6.mp4', null, '5e94e9f988d31.png', '42', '1');
INSERT INTO `contents` VALUES ('109', '36', 'allahom baleghna ramadan', '2020-04-14 04:39:29', '2020-04-18 08:55:56', 'uploads/videos/5e94ea20be761.mp4', null, '5e94ea20c052a.png', '43', '1');
INSERT INTO `contents` VALUES ('110', '36', 'allahom any asalak an tbarek fe nafsy', '2020-04-14 04:40:07', '2020-04-18 08:55:56', 'uploads/videos/5e94ea471633e.mp4', null, '5e94ea47180e5.png', '44', '1');
INSERT INTO `contents` VALUES ('111', '38', 'Alsalam ala aleh wa sahboh', '2020-04-14 04:55:58', '2020-04-18 08:55:56', 'uploads/videos/5e94edfe097d8.mp4', null, '5e94edfe0bc8b.png', '45', '1');
INSERT INTO `contents` VALUES ('112', '38', 'wa aelam nboateh', '2020-04-14 04:56:38', '2020-04-18 08:55:56', 'uploads/videos/5e94ee2635e08.mp4', null, '5e94ee2637c1a.png', '46', '1');
INSERT INTO `contents` VALUES ('113', '38', 'alsalah ala alnabi bekadr sokan jenan', '2020-04-14 04:57:39', '2020-04-18 08:55:56', 'uploads/videos/5e94ee62aaacf.mp4', null, '5e94ee62acb56.png', '47', '1');
INSERT INTO `contents` VALUES ('114', '38', 'hamat_ Almagmoah 1', '2020-04-14 04:58:38', '2020-04-18 08:55:56', 'uploads/videos/5e94ee9e259bc.mp4', null, '5e94ee9e27ff2.png', '48', '1');
INSERT INTO `contents` VALUES ('115', '38', 'Hamat _altablawy 1', '2020-04-14 04:59:26', '2020-04-18 08:55:56', 'uploads/videos/5e94eecd9f475.mp4', null, '5e94eecda142b.png', '49', '1');
INSERT INTO `contents` VALUES ('116', '38', 'Hamat _altablawy 2', '2020-04-14 05:00:07', '2020-04-18 08:55:56', 'uploads/videos/5e94eef6acc3b.mp4', null, '5e94eef6af7a7.png', '50', '1');
INSERT INTO `contents` VALUES ('117', '38', 'Hamat _altablawy 3', '2020-04-14 05:00:55', '2020-04-18 08:55:56', 'uploads/videos/5e94ef2676d1f.mp4', null, '5e94ef2678e77.png', '51', '1');
INSERT INTO `contents` VALUES ('118', '38', 'Ya saheb alham', '2020-04-14 05:01:43', '2020-04-18 08:55:56', 'uploads/videos/5e94ef56d4530.mp4', null, '5e94ef56d682b.png', '52', '1');
INSERT INTO `contents` VALUES ('119', '38', 'yarab an alomor', '2020-04-14 05:02:32', '2020-04-18 08:55:56', 'uploads/videos/5e94ef878c521.mp4', null, '5e94ef878e7bd.png', '53', '1');
INSERT INTO `contents` VALUES ('120', '38', 'yaman tmadaet', '2020-04-14 05:03:12', '2020-04-18 08:55:56', 'uploads/videos/5e94efb03ecff.mp4', null, '5e94efb04063d.png', '54', '1');
INSERT INTO `contents` VALUES ('121', '39', 'Sorat Al Bakarah 1', '2020-04-14 05:07:25', '2020-04-18 08:55:56', 'uploads/videos/5e94f31b0144b.mp4', null, '5e94f31b03b8f.png', '55', '1');
INSERT INTO `contents` VALUES ('122', '39', 'Sorat Al Bakarah 2', '2020-04-14 05:08:08', '2020-04-18 08:55:56', 'uploads/videos/5e94f36956983.mp4', null, '5e94f36959a92.png', '56', '1');
INSERT INTO `contents` VALUES ('123', '39', 'Sorat Al Bakarah 3', '2020-04-14 05:09:10', '2020-04-18 08:55:56', 'uploads/videos/5e94f2878cf91.mp4', null, '5e94f2878ffb3.png', '57', '1');
INSERT INTO `contents` VALUES ('124', '39', 'Sorat Al Bakarah 4', '2020-04-14 05:09:55', '2020-04-18 08:55:57', 'uploads/videos/5e94f427ee5b4.mp4', null, '5e94f427f1113.png', '58', '1');
INSERT INTO `contents` VALUES ('125', '39', 'Sorat Al Bakarah 5', '2020-04-14 05:10:46', '2020-04-18 08:55:57', 'uploads/videos/5e94f4e5a9147.mp4', null, '5e94f4e5aa639.png', '59', '1');
INSERT INTO `contents` VALUES ('126', '39', 'Sorat Al Bakarah 6', '2020-04-14 05:11:25', '2020-04-18 08:55:57', 'uploads/videos/5e94f5a019ef8.mp4', null, '5e94f5a01d32f.png', '60', '1');
INSERT INTO `contents` VALUES ('127', '39', 'Sorat Al Bakarah 7', '2020-04-14 05:12:02', '2020-04-18 08:55:57', 'uploads/videos/5e94f5fbca7d1.mp4', null, '5e94f5fbcd385.png', '61', '1');
INSERT INTO `contents` VALUES ('128', '39', 'Sorat Al Bakarah 8', '2020-04-14 05:12:39', '2020-04-18 08:55:57', 'uploads/videos/5e94f6a268487.mp4', null, '5e94f6a26b08c.png', '62', '1');
INSERT INTO `contents` VALUES ('129', '39', 'Sorat Al Bakarah 9', '2020-04-14 05:13:43', '2020-04-18 08:55:57', 'uploads/videos/5e94f6f53ea02.mp4', null, '5e94f6f541d22.png', '63', '1');
INSERT INTO `contents` VALUES ('130', '39', 'Sorat Al Bakarah 10', '2020-04-14 05:14:18', '2020-04-18 08:55:57', 'uploads/videos/5e94f783466a1.mp4', null, '5e94f7834931d.png', '64', '1');
INSERT INTO `contents` VALUES ('131', '37', 'Asmaa Allah Al Hosna 1', '2020-04-14 05:45:42', '2020-04-18 08:55:57', 'uploads/videos/5e94f9a63982f.mp4', null, '5e94f9a63c7d9.png', '65', '1');
INSERT INTO `contents` VALUES ('132', '37', 'Asmaa Allah Al Hosna 2', '2020-04-14 05:46:26', '2020-04-18 08:55:58', 'uploads/videos/5e94f9d1b79ff.mp4', null, '5e94f9d1babc4.png', '66', '1');
INSERT INTO `contents` VALUES ('133', '37', 'Allahom Akfna Al Soaa 1', '2020-04-14 05:49:46', '2020-04-18 08:55:58', 'uploads/videos/5e94fa99c7b10.mp4', null, '5e94fa99ca22a.png', '67', '1');
INSERT INTO `contents` VALUES ('134', '37', 'Allahom Akfna Al Soaa 2', '2020-04-14 05:50:50', '2020-04-18 08:55:58', 'uploads/videos/5e94fada71f16.mp4', null, '5e94fada7512c.png', '68', '1');
INSERT INTO `contents` VALUES ('135', '37', 'Salawat Ala Al Naby', '2020-04-14 05:51:31', '2020-04-18 08:55:58', 'uploads/videos/5e94fcb2436e3.mp4', null, '5e94fcb2462d2.png', '69', '1');
INSERT INTO `contents` VALUES ('137', '37', 'Ayat Al Doaa 1', '2020-04-14 05:52:36', '2020-04-18 08:55:58', 'uploads/videos/5e94fdf2b92c7.mp4', null, '5e94fdf2bc627.png', '70', '1');
INSERT INTO `contents` VALUES ('138', '37', 'Ayat Al Doaa 2', '2020-04-14 05:54:34', '2020-04-18 08:55:58', 'uploads/videos/5e94fbb9a7540.mp4', null, '5e94fbb9aa736.png', '71', '1');
INSERT INTO `contents` VALUES ('139', '37', 'Ayat Al Doaa 3', '2020-04-14 05:56:17', '2020-04-18 08:55:58', 'uploads/videos/5e94fc20b6f0a.mp4', null, '5e94fc20b9c75.png', '72', '1');
INSERT INTO `contents` VALUES ('140', '37', 'Ayat Al Doaa 4', '2020-04-14 05:57:06', '2020-04-18 08:55:58', 'uploads/videos/5e94fc5207397.mp4', null, '5e94fc5209a25.png', '73', '1');
INSERT INTO `contents` VALUES ('141', '37', 'Ayat Al Doaa 5', '2020-04-14 05:57:56', '2020-04-18 08:55:59', 'uploads/videos/5e94fc838a646.mp4', null, '5e94fc838d648.png', '74', '1');
INSERT INTO `contents` VALUES ('142', '36', 'Allahom Any zalamt Nafsy', '2020-04-15 03:33:02', '2020-04-18 08:55:59', 'uploads/videos/5e962c0dc166c.mp4', null, '5e962c0dcc3d7.png', '75', '1');
INSERT INTO `contents` VALUES ('143', '36', 'Allahom any aoz bekan arad aelaarzal alomor', '2020-04-15 03:33:41', '2020-04-18 08:55:59', 'uploads/videos/5e962c34d64ce.mp4', null, '5e962c34d7984.png', '76', '1');
INSERT INTO `contents` VALUES ('144', '36', 'Allahom any asalak nafs motmaenah', '2020-04-15 03:34:35', '2020-04-18 08:55:59', 'uploads/videos/5e962c6b79184.mp4', null, '5e962c6b7aa15.png', '77', '1');
INSERT INTO `contents` VALUES ('145', '36', 'allahomagal waleday habiby', '2020-04-15 03:35:14', '2020-04-18 08:55:59', 'uploads/videos/5e962c9256868.mp4', null, '5e962c9258085.png', '78', '1');
INSERT INTO `contents` VALUES ('146', '36', 'rab aeny wala taon aly', '2020-04-15 03:35:52', '2020-04-18 08:55:59', 'uploads/videos/5e962cb783262.mp4', null, '5e962cb784292.png', '79', '1');
INSERT INTO `contents` VALUES ('147', '36', 'allahom babk maftoh', '2020-04-15 03:36:29', '2020-04-18 08:55:59', 'uploads/videos/5e962cdce3347.mp4', null, '5e962cdce4a13.png', '80', '1');
INSERT INTO `contents` VALUES ('148', '36', 'allahom akfna shar alamrad', '2020-04-15 03:37:05', '2020-04-18 08:55:59', 'uploads/videos/5e962d00c774a.mp4', null, '5e962d00c8730.png', '81', '1');
INSERT INTO `contents` VALUES ('149', '36', 'allahom la tarod doaena', '2020-04-15 03:37:44', '2020-04-18 08:56:00', 'uploads/videos/5e962d278c688.mp4', null, '5e962d278d942.png', '82', '1');
INSERT INTO `contents` VALUES ('150', '36', 'allahom an naseaty beadek', '2020-04-15 03:38:25', '2020-04-18 08:56:00', 'uploads/videos/5e962d5086055.mp4', null, '5e962d50874b4.png', '83', '1');
INSERT INTO `contents` VALUES ('151', '36', 'allahom aghfer lna almek fena', '2020-04-15 03:39:33', '2020-04-18 08:56:00', 'uploads/videos/5e962d94826fc.mp4', null, '5e962d948379b.png', '84', '1');
INSERT INTO `contents` VALUES ('152', '36', 'nastaodeak abaana wa omhatena', '2020-04-15 03:40:36', '2020-04-18 08:56:00', 'uploads/videos/5e962dd4285cd.mp4', null, '5e962dd429a51.png', '85', '1');
INSERT INTO `contents` VALUES ('153', '36', 'allahom malek almolk', '2020-04-15 03:41:59', '2020-04-18 08:56:00', 'uploads/videos/5e962e27340d3.mp4', null, '5e962e273536b.png', '86', '1');
INSERT INTO `contents` VALUES ('154', '36', 'kol shaeaa khashea lak', '2020-04-15 03:44:12', '2020-04-18 08:56:00', 'uploads/videos/5e962eabad9ee.mp4', null, '5e962eabaef92.png', '87', '1');
INSERT INTO `contents` VALUES ('155', '36', 'ya sahby and alshedah', '2020-04-15 03:45:29', '2020-04-18 08:56:00', 'uploads/videos/5e962ef936416.mp4', null, '5e962ef937572.png', '88', '1');
INSERT INTO `contents` VALUES ('156', '36', 'hob alahsan', '2020-04-15 03:46:40', '2020-04-18 08:56:00', 'uploads/videos/5e962f3fd949b.mp4', null, '5e962f3fda690.png', '89', '1');
INSERT INTO `contents` VALUES ('157', '36', 'aoz men altarady', '2020-04-15 03:47:53', '2020-04-18 08:56:00', 'uploads/videos/5e962f8917f24.mp4', null, '5e962f8919000.png', '90', '1');
INSERT INTO `contents` VALUES ('158', '36', 'alahy la toazeb lsana', '2020-04-15 03:48:40', '2020-04-18 08:56:00', 'uploads/videos/5e962fb7d837b.mp4', null, '5e962fb7d9ad5.png', '91', '1');
INSERT INTO `contents` VALUES ('159', '36', 'arfa albalaa', '2020-04-15 03:49:22', '2020-04-18 08:56:00', 'uploads/videos/5e962fe25d825.mp4', null, '5e962fe25e90f.png', '92', '1');
INSERT INTO `contents` VALUES ('160', '36', 'ya arham alrahmeen', '2020-04-15 03:50:31', '2020-04-18 08:56:00', 'uploads/videos/5e9630274f490.mp4', null, '5e963027513c4.png', '93', '1');
INSERT INTO `contents` VALUES ('161', '36', 'alhamdolellah adad ma ahsa ktaboh', '2020-04-15 03:51:14', '2020-04-18 08:56:00', 'uploads/videos/5e963052343d6.mp4', null, '5e9630523550d.png', '94', '1');
INSERT INTO `contents` VALUES ('180', '33', 'Sorat Al Bakarah 10', '2020-04-15 04:24:07', '2020-04-18 09:06:15', 'uploads/videos/5e963806b1cfc.mp4', null, '5e963806b5805.png', '2', '1');
INSERT INTO `contents` VALUES ('181', '33', 'Sorat Al Bakarah 11', '2020-04-15 04:25:43', '2020-04-18 09:06:15', 'uploads/videos/5e9638676c937.mp4', null, '5e9638676e923.png', '24', '1');
INSERT INTO `contents` VALUES ('182', '33', 'Sorat Al Bakarah 12', '2020-04-15 04:26:56', '2020-04-18 09:06:15', 'uploads/videos/5e9638b01059a.mp4', null, '5e9638b011bf0.png', '23', '1');
INSERT INTO `contents` VALUES ('183', '33', 'Sorat Al Bakarah 13', '2020-04-15 04:28:11', '2020-04-18 09:06:15', 'uploads/videos/5e9638fb1cdad.mp4', null, '5e9638fb1fe0f.png', '22', '1');
INSERT INTO `contents` VALUES ('184', '33', 'Sorat Al Bakarah 14', '2020-04-15 04:30:51', '2020-04-18 09:06:15', 'uploads/videos/5e96399b67761.mp4', null, '5e96399b6aa47.png', '21', '1');
INSERT INTO `contents` VALUES ('185', '33', 'Sorat Al Bakarah 15', '2020-04-15 04:33:02', '2020-04-18 09:06:16', 'uploads/videos/5e963a1e042a3.mp4', null, '5e963a1e07404.png', '20', '1');
INSERT INTO `contents` VALUES ('186', '33', 'Sorat Al Bakarah 16', '2020-04-15 04:35:35', '2020-04-18 09:06:16', 'uploads/videos/5e963ab6eb12b.mp4', null, '5e963ab6ef952.png', '19', '1');
INSERT INTO `contents` VALUES ('187', '33', 'Sorat Al Bakarah 17', '2020-04-15 04:36:57', '2020-04-18 09:06:16', 'uploads/videos/5e963b0958b92.mp4', null, '5e963b095a5d6.png', '18', '1');
INSERT INTO `contents` VALUES ('188', '33', 'Sorat Al Bakarah 18', '2020-04-15 04:39:35', '2020-04-18 09:06:16', 'uploads/videos/5e963ba7017c8.mp4', null, '5e963ba704de4.png', '17', '1');
INSERT INTO `contents` VALUES ('189', '33', 'Sorat Al Bakarah 19', '2020-04-15 04:40:31', '2020-04-18 09:06:16', 'uploads/videos/5e963bdf16f8f.mp4', null, '5e963bdf18825.png', '16', '1');
INSERT INTO `contents` VALUES ('190', '33', 'Sorat Al Bakarah 20', '2020-04-15 04:42:59', '2020-04-18 09:06:16', 'uploads/videos/5e963c730533c.mp4', null, '5e963c73065a7.png', '15', '1');
INSERT INTO `contents` VALUES ('191', '33', 'Sorat Al Bakarah 21', '2020-04-15 04:44:48', '2020-04-18 09:06:16', 'uploads/videos/5e963ce05cfe3.mp4', null, '5e963ce05ec0c.png', '14', '1');
INSERT INTO `contents` VALUES ('192', '33', 'Sorat Al Bakarah 22', '2020-04-15 04:47:55', '2020-04-18 09:06:16', 'uploads/videos/5e963d9adfe35.mp4', null, '5e963d9ae29bf.png', '13', '1');
INSERT INTO `contents` VALUES ('193', '33', 'Sorat Al Bakarah 23', '2020-04-15 04:50:50', '2020-04-18 09:06:16', 'uploads/videos/5e963e49ce107.mp4', null, '5e963e49d0021.png', '12', '1');
INSERT INTO `contents` VALUES ('194', '33', 'Sorat Al Bakarah 24', '2020-04-15 04:52:05', '2020-04-18 09:06:16', 'uploads/videos/5e963e9510ada.mp4', null, '5e963e95127b0.png', '11', '1');
INSERT INTO `contents` VALUES ('195', '33', 'Sorat Al Bakarah 25', '2020-04-15 04:53:37', '2020-04-18 09:06:16', 'uploads/videos/5e963ef0e6a0f.mp4', null, '5e963ef0e9160.png', '10', '1');
INSERT INTO `contents` VALUES ('196', '33', 'Sorat Al Bakarah 26', '2020-04-15 04:55:16', '2020-04-18 09:06:16', 'uploads/videos/5e963f53d996c.mp4', null, '5e963f53db835.png', '9', '1');
INSERT INTO `contents` VALUES ('197', '33', 'Sorat Al Bakarah 27', '2020-04-15 04:58:27', '2020-04-18 09:06:16', 'uploads/videos/5e9640136c1a4.mp4', null, '5e9640136e6d4.png', '8', '1');
INSERT INTO `contents` VALUES ('198', '33', 'Sorat Al Bakarah 28', '2020-04-15 04:59:40', '2020-04-18 09:06:16', 'uploads/videos/5e96405ba7d4c.mp4', null, '5e96405baa8a8.png', '7', '1');
INSERT INTO `contents` VALUES ('199', '33', 'Sorat Al Bakarah 29', '2020-04-15 05:00:39', '2020-04-18 09:06:16', 'uploads/videos/5e96409665ed4.mp4', null, '5e96409668bd2.png', '6', '1');
INSERT INTO `contents` VALUES ('200', '33', 'Sorat Al Bakarah 30', '2020-04-15 05:01:47', '2020-04-18 09:06:16', 'uploads/videos/5e9640db5a0db.mp4', null, '5e9640db5e3d6.png', '4', '1');
INSERT INTO `contents` VALUES ('201', '39', 'Sorat Al Bakarah 11', '2020-04-15 05:10:58', '2020-04-18 08:56:01', 'uploads/videos/5e9643020bc3b.mp4', null, '5e9643020d8cd.png', '95', '1');
INSERT INTO `contents` VALUES ('202', '39', 'Sorat Al Bakarah 12', '2020-04-15 05:11:42', '2020-04-18 08:56:01', 'uploads/videos/5e96432e93934.mp4', null, '5e96432e95674.png', '96', '1');
INSERT INTO `contents` VALUES ('203', '39', 'Sorat Al Bakarah 13', '2020-04-15 05:12:35', '2020-04-18 08:56:01', 'uploads/videos/5e964362a29b8.mp4', null, '5e964362a4a64.png', '97', '1');
INSERT INTO `contents` VALUES ('204', '39', 'Sorat Al Bakarah 14', '2020-04-15 05:13:21', '2020-04-18 08:56:01', 'uploads/videos/5e96439104486.mp4', null, '5e96439106745.png', '98', '1');
INSERT INTO `contents` VALUES ('205', '39', 'Sorat Al Bakarah 15', '2020-04-15 05:15:04', '2020-04-18 08:56:01', 'uploads/videos/5e9643f7f0d4f.mp4', null, '5e9643f7f2208.png', '99', '1');
INSERT INTO `contents` VALUES ('206', '39', 'Sorat Al Bakarah 16', '2020-04-15 05:15:45', '2020-04-18 08:56:01', 'uploads/videos/5e964420b9e06.mp4', null, '5e964420bc071.png', '100', '1');
INSERT INTO `contents` VALUES ('207', '39', 'Sorat Al Bakarah 1', '2020-04-15 05:16:16', '2020-04-18 08:56:01', '', null, null, '101', '1');
INSERT INTO `contents` VALUES ('208', '39', 'Sorat Al Bakarah 17', '2020-04-15 05:16:19', '2020-04-18 08:56:01', 'uploads/videos/5e964442dd266.mp4', null, '5e964442de050.png', '102', '1');
INSERT INTO `contents` VALUES ('209', '39', 'Sorat Al Bakarah 18', '2020-04-15 05:21:43', '2020-04-18 08:56:01', 'uploads/videos/5e96458741464.mp4', null, '5e96458743895.png', '103', '1');
INSERT INTO `contents` VALUES ('210', '39', 'Sorat Al Bakarah 19', '2020-04-15 05:26:19', '2020-04-18 08:56:01', 'uploads/videos/5e96469b5305b.mp4', null, '5e96469b54084.png', '104', '1');
INSERT INTO `contents` VALUES ('211', '39', 'Sorat Al Bakarah 20', '2020-04-15 05:27:27', '2020-04-18 08:56:02', 'uploads/videos/5e9646dec0277.mp4', null, '5e9646dec121e.png', '105', '1');
INSERT INTO `contents` VALUES ('212', '39', 'Sorat Al Bakarah 21', '2020-04-15 05:28:58', '2020-04-18 08:56:02', 'uploads/videos/5e96473a5d835.mp4', null, '5e96473a5f49b.png', '106', '1');
INSERT INTO `contents` VALUES ('213', '39', 'Sorat Al Bakarah 22', '2020-04-15 05:30:11', '2020-04-18 08:56:02', 'uploads/videos/5e964782e713e.mp4', null, '5e964782e8df1.png', '107', '1');
INSERT INTO `contents` VALUES ('214', '39', 'Sorat Al Bakarah 23', '2020-04-15 05:31:32', '2020-04-18 08:56:02', 'uploads/videos/5e9647d42e3f6.mp4', null, '5e9647d43031f.png', '108', '1');
INSERT INTO `contents` VALUES ('215', '39', 'Sorat Al Bakarah 24', '2020-04-15 05:32:38', '2020-04-18 08:56:02', 'uploads/videos/5e9648163da21.mp4', null, '5e9648163fce0.png', '109', '1');
INSERT INTO `contents` VALUES ('216', '39', 'Sorat Al Bakarah 25', '2020-04-15 05:34:33', '2020-04-18 08:56:02', 'uploads/videos/5e96488931e5b.mp4', null, '5e96488934507.png', '110', '1');
INSERT INTO `contents` VALUES ('217', '39', 'Sorat Al Bakarah 26', '2020-04-15 05:35:43', '2020-04-18 08:56:02', 'uploads/videos/5e9648cf726cd.mp4', null, '5e9648cf7483f.png', '111', '1');
INSERT INTO `contents` VALUES ('218', '39', 'Sorat Al Bakarah 27', '2020-04-15 05:36:20', '2020-04-18 08:56:02', 'uploads/videos/5e9648f457335.mp4', null, '5e9648f4592e1.png', '112', '1');
INSERT INTO `contents` VALUES ('219', '39', 'Sorat Al Bakarah 28', '2020-04-15 05:38:03', '2020-04-18 08:56:02', 'uploads/videos/5e96495b9a88f.mp4', null, '5e96495b9b8d2.png', '113', '1');
INSERT INTO `contents` VALUES ('220', '39', 'Sorat Al Bakarah 29', '2020-04-15 05:39:06', '2020-04-18 08:56:02', 'uploads/videos/5e96499a54b7d.mp4', null, '5e96499a55f03.png', '114', '1');
INSERT INTO `contents` VALUES ('221', '39', 'Sorat Al Bakarah 30', '2020-04-15 05:39:57', '2020-04-18 08:56:02', 'uploads/videos/5e9649ccb0942.mp4', null, '5e9649ccb295e.png', '115', '1');
INSERT INTO `contents` VALUES ('222', '37', 'Ayat Al Doaa 6', '2020-04-15 23:29:08', '2020-04-18 08:56:02', 'uploads/videos/5e974463a747b.mp4', null, '5e974463ad354.png', '116', '1');
INSERT INTO `contents` VALUES ('223', '37', 'Ayat Al Doaa 7', '2020-04-15 23:30:05', '2020-04-18 08:56:02', 'uploads/videos/5e97449cdf56a.mp4', null, '5e97449ce2596.png', '117', '1');
INSERT INTO `contents` VALUES ('224', '37', 'Ayat Al Doaa 8', '2020-04-15 23:31:35', '2020-04-18 08:56:02', 'uploads/videos/5e9744f7190e4.mp4', null, '5e9744f71be54.png', '118', '1');
INSERT INTO `contents` VALUES ('225', '37', 'Ayat Al Doaa 9', '2020-04-15 23:32:26', '2020-04-18 08:56:02', 'uploads/videos/5e97452982afe.mp4', null, '5e9745298a9fa.png', '119', '1');
INSERT INTO `contents` VALUES ('226', '37', 'Ayat Al Doaa 10', '2020-04-15 23:33:20', '2020-04-18 08:56:02', 'uploads/videos/5e97455f7f456.mp4', null, '5e97455f8216b.png', '120', '1');
INSERT INTO `contents` VALUES ('227', '37', 'Adaa fe al lail nar', '2020-04-15 23:34:53', '2020-04-18 08:56:02', 'uploads/videos/5e9745bce0586.mp4', null, '5e9745bce299d.png', '121', '1');
INSERT INTO `contents` VALUES ('228', '37', 'aghfat koraesh', '2020-04-15 23:40:07', '2020-04-18 08:56:02', 'uploads/videos/5e9746f71207a.mp4', null, '5e9746f713c7b.png', '122', '1');
INSERT INTO `contents` VALUES ('229', '37', 'allah akbar', '2020-04-15 23:41:50', '2020-04-18 08:56:02', 'uploads/videos/5e97475dd3f48.mp4', null, '5e97475dd642f.png', '123', '1');
INSERT INTO `contents` VALUES ('230', '37', 'alaoleaa', '2020-04-15 23:43:34', '2020-04-18 08:56:02', 'uploads/videos/5e9747c5cb146.mp4', null, '5e9747c5cdadf.png', '124', '1');
INSERT INTO `contents` VALUES ('231', '37', 'mohamed said alkhalk', '2020-04-15 23:45:20', '2020-04-18 08:56:02', 'uploads/videos/5e97483042bfc.mp4', null, '5e974830442da.png', '125', '1');
INSERT INTO `contents` VALUES ('232', '37', 'beazmeh', '2020-04-15 23:46:52', '2020-04-18 08:56:03', 'uploads/videos/5e97488bc454a.mp4', null, '5e97488bc7307.png', '126', '1');
INSERT INTO `contents` VALUES ('233', '37', 'aid alsamaa', '2020-04-15 23:48:15', '2020-04-18 08:56:03', 'uploads/videos/5e9748df01ed9.mp4', null, '5e9748df040f9.png', '127', '1');
INSERT INTO `contents` VALUES ('234', '37', 'az qalbkol moheb', '2020-04-15 23:49:13', '2020-04-18 08:56:03', 'uploads/videos/5e9749190f8b6.mp4', null, '5e97491912652.png', '128', '1');
INSERT INTO `contents` VALUES ('235', '37', 'fe fath makah', '2020-04-15 23:55:23', '2020-04-18 08:56:03', 'uploads/videos/5e974a8b5e9ad.mp4', null, '5e974a8b6134d.png', '129', '1');
INSERT INTO `contents` VALUES ('236', '37', 'hal yabtaghy almolk', '2020-04-15 23:56:03', '2020-04-18 08:56:03', 'uploads/videos/5e974ab32ecfc.mp4', null, '5e974ab330371.png', '130', '1');
INSERT INTO `contents` VALUES ('237', '37', 'amal trakabh alzaman 1', '2020-04-15 23:56:46', '2020-04-18 08:56:03', 'uploads/videos/5e974addaf9ee.mp4', null, '5e974addb1ec1.png', '131', '1');
INSERT INTO `contents` VALUES ('238', '37', 'amal trakabh alzaman 2', '2020-04-15 23:57:32', '2020-04-18 08:56:03', 'uploads/videos/5e974b0c29a53.mp4', null, '5e974b0c2c361.png', '132', '1');
INSERT INTO `contents` VALUES ('239', '37', 'amal trakabh alzaman 3', '2020-04-15 23:58:58', '2020-04-18 08:56:03', 'uploads/videos/5e974b623a173.mp4', null, '5e974b623be83.png', '133', '1');
INSERT INTO `contents` VALUES ('240', '37', 'amal trakabh alzaman 4', '2020-04-15 23:59:54', '2020-04-18 08:56:03', 'uploads/videos/5e974b9a7004b.mp4', null, '5e974b9a71ebb.png', '134', '1');
INSERT INTO `contents` VALUES ('241', '37', 'amal trakabh alzaman 5', '2020-04-16 00:00:39', '2020-04-18 08:56:04', 'uploads/videos/5e974bc69dc36.mp4', null, '5e974bc6a5995.png', '135', '1');
INSERT INTO `contents` VALUES ('244', '40', 'Sourat Al Fatha', '2020-04-16 00:16:13', '2020-04-18 08:56:04', 'uploads/videos/5e974f6d22a9b.mp4', null, '5e974f6d2675f.png', '136', '1');
INSERT INTO `contents` VALUES ('245', '40', 'Sorat Al Bakarah 1', '2020-04-16 00:17:01', '2020-04-18 08:56:04', 'uploads/videos/5e974f9cda68c.mp4', null, '5e974f9cdc7ad.png', '137', '1');
INSERT INTO `contents` VALUES ('246', '40', 'Sorat Al Bakarah 2', '2020-04-16 00:20:03', '2020-04-18 08:56:04', 'uploads/videos/5e975052a3bd7.mp4', null, '5e975052a5459.png', '138', '1');
INSERT INTO `contents` VALUES ('247', '41', 'Sorat Al Bakarah 1', '2020-04-16 00:22:12', '2020-04-18 08:56:04', 'uploads/videos/5e9750d3e7d6c.mp4', null, '5e9750d3ea2ac.png', '139', '1');
INSERT INTO `contents` VALUES ('248', '41', 'Sorat Al Bakarah 2', '2020-04-16 00:24:06', '2020-04-18 08:56:04', 'uploads/videos/5e975145c855a.mp4', null, '5e975145caf68.png', '140', '1');
INSERT INTO `contents` VALUES ('250', '42', 'Almaa Allazy Yasleh Llodoa', '2020-04-16 02:38:06', '2020-04-18 08:56:04', 'uploads/videos/5e9770adb26eb.mp4', null, '5e9770adb79ec.png', '141', '1');
INSERT INTO `contents` VALUES ('251', '42', 'Astkhdam Meah Al Magary lelodoaa', '2020-04-16 02:39:47', '2020-04-18 08:56:04', 'uploads/videos/5e9771134cb25.mp4', null, '5e9771134eb34.png', '142', '1');
INSERT INTO `contents` VALUES ('252', '42', 'Hal yador al ma2 Almoshmes Al Ansan', '2020-04-16 02:43:19', '2020-04-18 08:56:04', 'uploads/videos/5e97742ee638e.mp4', null, '5e97742ee9719.png', '143', '1');
INSERT INTO `contents` VALUES ('253', '42', 'Htatahor men al ganabah bmash gasady belsalg', '2020-04-16 03:01:56', '2020-04-18 08:56:04', 'uploads/videos/5e97764449deb.mp4', null, '5e9776444f4b3.png', '144', '1');
INSERT INTO `contents` VALUES ('254', '42', 'ِkhalat almaa belsabon asnaa alghosel', '2020-04-16 03:05:14', '2020-04-18 08:56:04', 'uploads/videos/5e97770a94b2d.mp4', null, '5e97770a96baf.png', '145', '1');
INSERT INTO `contents` VALUES ('255', '43', 'The birth of Eissa Alyeh El Salam', '2020-04-16 03:07:32', '2020-04-18 08:56:04', 'uploads/videos/5e97a973be217.gif', null, null, '146', '3');
INSERT INTO `contents` VALUES ('256', '44', 'EL Fatah El Mobin Solh El Hodeybya', '2020-04-16 03:19:43', '2020-04-18 08:56:04', 'uploads/videos/5e97a7ba25ca7.gif', null, null, '147', '3');
INSERT INTO `contents` VALUES ('257', '44', 'EL Fatah El Mobin Solh El Hodeybya', '2020-04-16 06:34:26', '2020-04-18 08:56:05', 'uploads/videos/5e97a8120a0ea.gif', null, null, '148', '3');
INSERT INTO `contents` VALUES ('258', '44', 'EL Fatah El Mobin Solh El Hodeybya', '2020-04-16 06:34:42', '2020-04-18 08:56:05', 'uploads/videos/5e97a8229f957.gif', null, null, '149', '3');
INSERT INTO `contents` VALUES ('259', '44', 'EL Fatah El Mobin Solh El Hodeybya', '2020-04-16 06:34:56', '2020-04-18 08:56:05', 'uploads/videos/5e97a830268ba.gif', null, null, '150', '3');
INSERT INTO `contents` VALUES ('260', '44', 'EL Fatah El Mobin Solh El Hodeybya', '2020-04-16 06:35:08', '2020-04-18 08:56:05', 'uploads/videos/5e97a83c6de2d.gif', null, null, '151', '3');
INSERT INTO `contents` VALUES ('262', '43', 'Eissa Alyeh El Salam Facing the people', '2020-04-16 06:42:30', '2020-04-18 08:56:06', 'uploads/videos/5e97a9f61eaea.gif', null, null, '152', '3');
INSERT INTO `contents` VALUES ('263', '43', 'Eissa Alyeh El Salam Facing the people', '2020-04-16 06:42:42', '2020-04-18 08:56:06', 'uploads/videos/5e97aa02ef64b.gif', null, null, '153', '3');
INSERT INTO `contents` VALUES ('264', '43', 'Eissa Alyeh El Salam Facing the people', '2020-04-16 06:43:02', '2020-04-18 08:56:06', 'uploads/videos/5e97aa161ea84.gif', null, null, '154', '3');
INSERT INTO `contents` VALUES ('265', '47', 'Surat Al Bakrah 186', '2020-04-16 07:04:39', '2020-04-18 08:56:06', null, 'وَإِذَا سَأَلَكَ عِبَادِي عَنِّي فَإِنِّي قَرِيبٌ أُجِيبُ دَعْوَةَ الداع إِذَا دَعَانِ فَلْيَسْتَجِيبُواْ لِي وَلْيُؤْمِنُواْ بِي لَععَلَّهُمْ يَرْشُدُونَ} [البقرة: 186]\r\nوالله سبحانه وتعالى يعرف ما في نفسك، ولذلك فإنه يعطيك دون أن تسأل. واقرأ الحديث القدسي: يقول رب العزة: (من شغله ذكري عن مسألتي أعطيته أفضل ما أعطي السائلين)', null, '155', '4');
INSERT INTO `contents` VALUES ('266', '47', 'Surat Al Ibrahim7', '2020-04-16 07:06:33', '2020-04-18 08:56:06', null, '{وَإِذْ تَأَذَّنَ رَبُّكُمْ لَئِن شَكَرْتُمْ لأَزِيدَنَّكُمْ وَلَئِن كَفَرْتُمْ إِنَّ عَذَابِي لَشَدِيدٌ} [إبراهيم: 7]\r\nوهكذا نعرف ان الشكر على النعمة يعطينا مزيدا من النعمة.. فنشكر عليها فتعطينا المزيد وهكذا يظل الحمد دائماً والنعمة دائمة.. اننا لو استعرضنا حياتنا كلها فكل حركة فيها تقتضي الحمد،', null, '156', '4');
INSERT INTO `contents` VALUES ('267', '47', 'Surat Al Zomor 42', '2020-04-16 07:07:23', '2020-04-18 08:56:06', null, 'عندما ننام ويأخذ الله سبحانه وتعالى أرواحنا، ثم يردها الينا عندما نستيقظ، فإن هذا يوجب الحمد، فالله سبحانه وتعالى يقول:\r\n{الله يَتَوَفَّى الأنفس حِينَ مَوْتِهَا والتي لَمْ تَمُتْ فِي مَنَامِهَا فَيُمْسِكُ التي قضى عَلَيْهَا الموت وَيُرْسِلُ الأخرى إلى أَجَلٍ مُّسَمًّى إِنَّ فِي ذَلِكَ لآيَاتٍ لِّقَوْمٍ يَتَفَكَّرُونَ}\r\n[الزمر: 42] وهكذا فإن مجرد استيقاظنا من النوم، وان الله سبحانه وتعالى رد علينا أرواحنا، وهذا الرد يستوجب الحمد،', null, '157', '4');
INSERT INTO `contents` VALUES ('268', '47', 'Surat Al Nsaa 19', '2020-04-16 07:09:04', '2020-04-18 08:56:06', null, 'واذا عدنا إلى بيوتنا فالله سخر لنا زوجاتنا ورزقنا بأولادنا وهذا يستوجب الحمد\r\nاذن فكل حركة حياة في الدنيا من الانسان تستوجب الحمد.. ولهذا لابد ان يكون الانسان حامدا دائما..\r\nبل ان الانسان يجب ان يحمد الله على اي مكروه أصابه؛ لأنه قد يكون الشيء الذي يعتبره شرا هو عينه الخير\r\nفالله تعالى يقول:\r\n{يَا أَيُّهَا الذين آمَنُواْ لاَ يَحِلُّ لَكُمْ أَن تَرِثُواْ النسآء كَرْهاً وَلاَ تَعْضُلُوهُنَّ لِتَذْهَبُواْ بِبَعْضِ ما آتَيْتُمُوهُنَّ إِلاَّ أَن يَأْتِينَ بِفَاحِشَةٍ مُّبَيِّنَةٍ وَعَاشِرُوهُنَّ بالمعروف فَإِن كَرِهْتُمُوهُنَّ فعسى أَن تَكْرَهُواْ شَيْئاً وَيَجْعَلَ الله فِيهيهِ خَيْراً كَثِيراً}\r\n[النساء: 19]', null, '158', '4');
INSERT INTO `contents` VALUES ('269', '47', 'Surat Al Araf 32', '2020-04-16 07:09:55', '2020-04-18 08:56:06', null, '<p><strong>The world is a testing ground for faith, and the Hereafter is the abode of reward.</strong></p>\r\n\r\n<p>And among the people who do not worship God .. These are equal in the gift of Godhead with believers in this world.</p>\r\n\r\n<p>. But in the Hereafter, the divine grant will be given to the believers alone .. God blesses the people of Paradise, and the gifts of God to those who believe .. Read his words, blessed and exalted be He. Say: Whoever forbids the adornment of God that is brought out to his worshipers and the good ones from sustenance, say it is to those who believe in the life of the world as pure in the Day of Resurrection, as for the Day of Resurrection.</p>', null, '159', '4');
INSERT INTO `contents` VALUES ('270', '48', 'AL-BAASIT', '2020-04-16 07:19:40', '2020-04-18 08:56:06', null, 'Al-Qaabid, Al-Baasit is the One who withholds and extends. He contracts when it is good and He expands when it is good. At time He withholds and at other times He gives. This goes for provisions (rizq), life and death.', null, '160', '4');
INSERT INTO `contents` VALUES ('271', '48', 'AL-BAATIN', '2020-04-16 07:20:19', '2020-04-18 08:56:06', null, 'The One who cannot be seen in the way the creation can be seen. He is the One from whom nothing is hidden and who surrounds all things. He knows even the inner states, yet He is veiled from the creation’s perception.', null, '161', '4');
INSERT INTO `contents` VALUES ('272', '48', 'AL-BADEE’', '2020-04-16 07:21:05', '2020-04-18 08:56:06', null, 'Al-Badee’ is the unique Originator. He is the One whose incomparable power originates, invents and brings into existence all of the unique creation without following any prior model or unlike any similarity to anything that ever existed.', null, '162', '4');
INSERT INTO `contents` VALUES ('273', '48', 'AL-BASEER', '2020-04-16 07:21:37', '2020-04-18 08:56:06', null, 'The One Whose insight sees all things clearly, even the smallest act and both the apparent and the hidden. He is the One who sees and understands all that has been, and all that will be.', null, '163', '4');
INSERT INTO `contents` VALUES ('274', '48', 'AT-TAWWAB', '2020-04-16 07:22:14', '2020-04-18 08:56:06', null, 'The One who grants repentance to whoever He willed among His creatures and accepts their repentance.', null, '164', '4');
INSERT INTO `contents` VALUES ('275', '49', 'هل بشر عيسى عليه السلام', '2020-04-16 07:57:28', '2020-04-18 08:56:06', 'uploads/videos/5e97bb884236f.mp4', null, '5e97bb8844ce4.png', '165', '1');
INSERT INTO `contents` VALUES ('276', '50', 'Shahadah', '2020-04-16 08:07:33', '2020-04-18 08:56:06', null, 'sincerely reciting the Muslim profession of faith', null, '166', '4');
INSERT INTO `contents` VALUES ('277', '50', 'Salat', '2020-04-16 08:09:03', '2020-04-18 08:56:06', null, 'performing ritual prayers in the proper way five times each day', null, '167', '4');
INSERT INTO `contents` VALUES ('278', '50', 'Sawm', '2020-04-16 08:12:01', '2020-04-18 08:56:06', null, 'fasting during the month of Ramadan', null, '168', '4');
INSERT INTO `contents` VALUES ('279', '50', 'Zakat', '2020-04-16 08:13:04', '2020-04-18 08:56:06', null, 'paying an alms (or charity) tax to benefit the poor and the needy', null, '169', '4');
INSERT INTO `contents` VALUES ('280', '50', 'Hajj', '2020-04-16 08:13:05', '2020-04-18 08:56:06', null, 'pilgrimage to Mecca', null, '170', '4');
INSERT INTO `contents` VALUES ('281', '54', 'Eza Kan Awel Leyla Men Shaher Ramadan', '2020-04-16 10:06:05', '2020-04-18 08:56:06', 'uploads/videos/5e97d9acf075d.mp4', null, '5e97d9ad09493.png', '171', '1');
INSERT INTO `contents` VALUES ('282', '54', 'Nahey An Syeam Yom EL shak', '2020-04-16 10:07:59', '2020-04-18 08:56:06', 'uploads/videos/5e97da1f2ec9c.mp4', null, '5e97da1f34111.png', '172', '1');
INSERT INTO `contents` VALUES ('287', '58', 'Sourat EL Nour', '2020-04-16 10:41:10', '2020-04-18 08:56:06', 'uploads/videos/5e97e1e63c7fd.mp4', null, '5e97e1e63f1d0.png', '173', '1');
INSERT INTO `contents` VALUES ('288', '59', 'Sourat Younes', '2020-04-16 10:42:50', '2020-04-18 08:56:06', 'uploads/videos/5e97e24a114b4.mp4', null, '5e97e24a14c39.png', '174', '1');
INSERT INTO `contents` VALUES ('289', '60', 'Sourat El Baqarah', '2020-04-16 10:44:23', '2020-04-18 08:56:07', 'uploads/videos/5e97e2a6d4537.mp4', null, '5e97e2a6db9d4.png', '175', '1');
INSERT INTO `contents` VALUES ('290', '51', 'The virtue of Hajj', '2020-04-16 10:48:06', '2020-04-18 08:56:07', 'uploads/videos/5e97e385d8759.mp4', null, '5e97e385da3f6.png', '176', '1');
INSERT INTO `contents` VALUES ('291', '45', 'Man Nasia Wa Ho Sayem', '2020-04-16 10:50:00', '2020-04-18 08:56:07', 'uploads/videos/5e97e3f7d0e09.mp4', null, '5e97e3f7d161e.png', '177', '1');
INSERT INTO `contents` VALUES ('292', '52', 'Ramadan Mobarak', '2020-04-16 10:52:52', '2020-04-18 08:56:07', 'uploads/videos/5e97e4a41e747.mp4', null, '5e97e4a420d65.png', '178', '1');
INSERT INTO `contents` VALUES ('293', '33', 'test_1111', '2020-04-17 21:34:01', '2020-04-18 09:05:30', 'uploads/videos/5e9a20c9a0d87.mp4', null, '5e9a20c9a143c.png', '3', '1');
INSERT INTO `contents` VALUES ('294', '35', 'ثسقثف', '2020-04-18 07:30:07', '2020-04-18 08:56:07', 'uploads/videos/5e9aac7f11beb.mp4', null, '5e9aac7f12021.png', '2', '1');
INSERT INTO `contents` VALUES ('295', '35', 'rewrew', '2020-04-18 07:32:24', '2020-04-18 08:56:07', 'uploads/videos/5e9aad0839fb8.mp4', null, '5e9aad083a3e3.png', '3', '1');
INSERT INTO `contents` VALUES ('298', '35', 'ddd', '2020-04-18 08:58:26', '2020-04-18 08:58:43', 'uploads/videos/5e9ac132e1e30.mp4', null, '5e9ac132e2221.png', '6', '1');
INSERT INTO `contents` VALUES ('300', '37', 'test_27_10 en', '2020-04-18 12:27:17', '2020-10-27 08:49:43', 'uploads/videos/5e9af225e17e3.mp4', null, '5e9af225e1c26.png', null, '1');
INSERT INTO `contents` VALUES ('302', '62', 'Coronavirus Prevention (Covid-19)', '2020-04-18 21:38:53', '2020-04-18 21:38:53', null, '<p><strong>Basic protective measures against the new coronavirus</strong></p>\r\n\r\n<p>Stay aware of the latest information on the COVID-19 outbreak, available on the WHO website and through your national and local public health authority. Most people who become infected experience mild illness and recover, but it can be more severe for others. Take care of your health and protect others by doing the following:</p>\r\n\r\n<p><strong>Wash your hands frequently</strong></p>\r\n\r\n<p>Regularly and thoroughly clean your hands with an alcohol-based hand rub or wash them with soap and water.</p>\r\n\r\n<p><strong>Why?</strong>&nbsp;Washing your hands with soap and water or using alcohol-based hand rub kills viruses that may be on your hands.</p>\r\n\r\n<p><strong>Maintain social distancing</strong></p>\r\n\r\n<p>Maintain at least 1 metre (3 feet) distance between yourself and anyone who is coughing or sneezing.</p>\r\n\r\n<p><strong>Why?</strong>&nbsp;When someone coughs or sneezes they spray small liquid droplets from their nose or mouth which may contain virus. If you are too close, you can breathe in the droplets, including the COVID-19 virus if the person coughing has the disease.</p>\r\n\r\n<p><strong>Avoid touching eyes, nose and mouth</strong></p>\r\n\r\n<p><strong>Why?&nbsp;</strong>Hands touch many surfaces and can pick up viruses. Once contaminated, hands can transfer the virus to your eyes, nose or mouth. From there, the virus can enter your body and can make you sick.</p>\r\n\r\n<p><strong>Practice respiratory hygiene</strong></p>\r\n\r\n<p>Make sure you, and the people around you, follow good respiratory hygiene. This means covering your mouth and nose with your bent elbow or tissue when you cough or sneeze. Then dispose of the used tissue immediately.</p>\r\n\r\n<p><strong>Why?</strong>&nbsp;Droplets spread virus. By following good respiratory hygiene you protect the people around you from viruses such as cold, flu and COVID-19.</p>\r\n\r\n<p><strong>If you have fever, cough and difficulty breathing, seek medical care early</strong></p>\r\n\r\n<p>Stay home if you feel unwell. If you have a fever, cough and difficulty breathing, seek medical attention and call in advance. Follow the directions of your local health authority.</p>\r\n\r\n<p><strong>Why?</strong>&nbsp;National and local authorities will have the most up to date information on the situation in your area. Calling in advance will allow your health care provider to quickly direct you to the right health facility. This will also protect you and help prevent spread of viruses and other infections.</p>\r\n\r\n<p><strong>Stay informed and follow advice given by your healthcare provider</strong></p>\r\n\r\n<p>Stay informed on the latest developments about COVID-19. Follow advice given by your healthcare provider, your national and local public health authority or your employer on how to protect yourself and others from COVID-19.</p>\r\n\r\n<p><strong>Why?</strong>&nbsp;National and local authorities will have the most up to date information on whether COVID-19 is spreading in your area. They are best placed to advise on what people in your area should be doing to protect themselves.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Protection measures for persons who are in or have recently visited (past 14 days) areas where COVID-19 is spreading</strong></p>\r\n\r\n<ul>\r\n	<li>Follow the guidance outlined above.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Stay at home if you begin to feel unwell, even with mild symptoms such as headache and slight runny nose, until you recover.&nbsp;<strong>Why?</strong>&nbsp;Avoiding contact with others and visits to medical facilities will allow these facilities to operate more effectively and help protect you and others from possible COVID-19 and other viruses.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>If you develop fever, cough and difficulty breathing, seek medical advice promptly as this may be due to a respiratory infection or other serious condition. Call in advance and tell your provider of any recent travel or contact with travelers.&nbsp;<strong>Why?</strong>&nbsp;Calling in advance will allow your health care provider to quickly direct you to the right health facility. This will also help to prevent possible spread of COVID-19 and other viruses.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', null, null, '4');
INSERT INTO `contents` VALUES ('303', '63', 'audio_en', '2020-04-21 10:37:58', '2020-04-21 18:41:19', 'uploads/videos/5e9ecd06c53f3.mp3', null, '5e9f3e4f387dc.png', null, '2');
INSERT INTO `contents` VALUES ('304', '63', 'audio2_en', '2020-04-21 11:36:29', '2020-04-21 11:36:29', 'uploads/videos/5e9edabd89d57.mp3', null, '5e9edabd8a0aa.png', null, '2');
INSERT INTO `contents` VALUES ('305', '63', 'fatha2', '2020-04-21 19:08:25', '2020-04-21 19:08:25', 'uploads/videos/5e9f44a9e6b08.mp3', null, '5e9f44a9e7398.png', null, '2');
INSERT INTO `contents` VALUES ('306', '39', 'test en yousssssssssss', '2020-10-27 08:41:11', '2020-10-27 09:04:40', 'uploads/videos/5f97dd2679fd9.mp4', null, '5f97dd267af6e.png', '300', '1');
INSERT INTO `contents` VALUES ('307', '54', 'ramdan test 27 en', '2020-10-27 14:02:18', '2020-10-27 14:02:18', 'uploads/videos/5f982869a8528.mp4', null, '5f982869a8f30.png', null, '1');
INSERT INTO `contents` VALUES ('308', '33', 'test_mbc_1', '2020-11-22 13:38:11', '2020-11-22 13:38:11', 'uploads/videos/5fba69c270fcb.mp4', null, '5fba69c2716ae.png', null, '1');
INSERT INTO `contents` VALUES ('309', '33', 'test_mbc_2', '2020-11-22 13:38:33', '2020-11-22 13:38:33', 'uploads/videos/5fba69d942afb.mp4', null, '5fba69d942d69.png', null, '1');

-- ----------------------------
-- Table structure for `countries`
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('2', 'egypt', '20', '2018-05-07 16:21:24', '2018-05-07 16:21:24');
INSERT INTO `countries` VALUES ('3', 'Kuwait', '965', '2018-05-07 16:24:39', '2018-05-07 16:24:39');
INSERT INTO `countries` VALUES ('4', 'oman', '968', '2020-03-26 19:12:49', '2020-11-09 14:28:50');
INSERT INTO `countries` VALUES ('5', 'emirate', null, '2020-03-28 19:56:46', '2020-03-28 19:56:46');
INSERT INTO `countries` VALUES ('6', 'Qutar', null, '2020-04-22 13:56:08', '2020-04-29 09:35:06');
INSERT INTO `countries` VALUES ('8', 'palestine', null, null, null);
INSERT INTO `countries` VALUES ('9', 'Ksa', '966', null, '2020-11-25 14:17:40');
INSERT INTO `countries` VALUES ('10', 'test', '11', '2020-11-09 15:54:51', '2020-11-09 15:54:51');

-- ----------------------------
-- Table structure for `delete_all_flags`
-- ----------------------------
DROP TABLE IF EXISTS `delete_all_flags`;
CREATE TABLE `delete_all_flags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `route_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `delete_all_flags_route_id_foreign` (`route_id`),
  CONSTRAINT `delete_all_flags_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of delete_all_flags
-- ----------------------------

-- ----------------------------
-- Table structure for `du_integration`
-- ----------------------------
DROP TABLE IF EXISTS `du_integration`;
CREATE TABLE `du_integration` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trxid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `local` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of du_integration
-- ----------------------------

-- ----------------------------
-- Table structure for `filters`
-- ----------------------------
DROP TABLE IF EXISTS `filters`;
CREATE TABLE `filters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of filters
-- ----------------------------
INSERT INTO `filters` VALUES ('2', 'filetr en', 'https://www.google.com.eg/', '1606824814.png', '2020-12-01 08:31:19', '2020-12-01 12:13:34');
INSERT INTO `filters` VALUES ('3', 'filter en 2', 'https://www.google.com.eg/', '1606824856.png', '2020-12-01 11:14:37', '2020-12-01 12:14:16');

-- ----------------------------
-- Table structure for `filter_posts`
-- ----------------------------
DROP TABLE IF EXISTS `filter_posts`;
CREATE TABLE `filter_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `filter_id` bigint(20) unsigned NOT NULL,
  `operator_id` int(10) unsigned NOT NULL,
  `published_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_posts_on_filter` (`filter_id`),
  KEY `Operator_id_on_FilterPosts` (`operator_id`),
  CONSTRAINT `Operator_id_on_FilterPosts` FOREIGN KEY (`operator_id`) REFERENCES `operators` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `filter_posts_on_filter` FOREIGN KEY (`filter_id`) REFERENCES `filters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of filter_posts
-- ----------------------------
INSERT INTO `filter_posts` VALUES ('3', '2', '14', '2020-12-01', '2020-12-01 12:14:36', '2020-12-01 12:14:36');
INSERT INTO `filter_posts` VALUES ('4', '3', '14', '2020-12-02', '2020-12-01 12:14:53', '2020-12-01 12:15:02');

-- ----------------------------
-- Table structure for `imi_notifications`
-- ----------------------------
DROP TABLE IF EXISTS `imi_notifications`;
CREATE TABLE `imi_notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `msisdn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `svcid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nextrenewaldate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `TransactionID` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of imi_notifications
-- ----------------------------
INSERT INTO `imi_notifications` VALUES ('1', 'http://localhost/mondia_php7/imi/notification?Nextrenewaldate=2020-05-11%2012.00.55&TransactionID=%21Transactionid%21&action=%3CSUB%2F%20UNSUB%2FREN%3E&channel=XXX&msisdn=%3Cmsisdn%3E&price=%3CBilled%20price%3E&status=%3CStatus%3E&svcid=%3Csvcid%20value%3E', '<msisdn>', '<svcid value>', 'XXX', '<SUB/ UNSUB/REN>', '<Status>', '2020-05-11 12:00:55', '!Transactionid!', '2020-05-11 14:57:49', '2020-05-11 14:57:49');
INSERT INTO `imi_notifications` VALUES ('2', 'http://localhost/mondia_php7/imi/notification?Nextrenewaldate=2020-05-11%2012.00.55&TransactionID=%21Transactionid%21&action=%3CSUB%2F%20UNSUB%2FREN%3E&channel=XXX&msisdn=%3Cmsisdn%3E&price=%3CBilled%20price%3E&status=%3CStatus%3E&svcid=%3Csvcid%20value%3E', '<msisdn>', '<svcid value>', 'XXX', '<SUB/ UNSUB/REN>', '<Status>', '2020-05-11 12:00:55', '!Transactionid!', '2020-05-11 14:57:52', '2020-05-11 14:57:52');
INSERT INTO `imi_notifications` VALUES ('3', 'http://localhost/mondia_php7/imi/notification?Nextrenewaldate=2020-05-11%2012.22.11&TransactionID=%21Transactionid%21&action=%3CSUB%2FUNSUB%2FREN%3E&channel=XXX&msisdn=%3Cmsisdn%3E&status=%3CStatus%3E&svcid=%3Csvcid_value%3E', '<msisdn>', '<svcid_value>', 'XXX', '<SUB/UNSUB/REN>', '<Status>', '2020-05-11 12:22:11', '!Transactionid!', '2020-05-11 15:02:04', '2020-05-11 15:02:04');
INSERT INTO `imi_notifications` VALUES ('4', 'http://localhost/mondia_php7/imi/notification?Nextrenewaldate=2020-05-11%2012.22.11&TransactionID=%21Transactionid%21&action=%3CSUB%2FUNSUB%2FREN%3E&channel=XXX&msisdn=%3Cmsisdn%3E&status=%3CStatus%3E&svcid=%3Csvcid_value%3E', '<msisdn>', '<svcid_value>', 'XXX', '<SUB/UNSUB/REN>', '<Status>', '2020-05-11 12:22:11', '!Transactionid!', '2020-05-11 15:02:09', '2020-05-11 15:02:09');

-- ----------------------------
-- Table structure for `imi_requests`
-- ----------------------------
DROP TABLE IF EXISTS `imi_requests`;
CREATE TABLE `imi_requests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `header` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of imi_requests
-- ----------------------------
INSERT INTO `imi_requests` VALUES ('1', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"CHECK\",\"msisdn\":\"972566789011\",\"serviceid\":\"4\",\"Status\":\"Active\",\"scode\":\"6874\"}}', '{\"response\":{\"status\":\"-1\",\"rescode\":\"1001\",\"resdescription\":\"No Records found\"},\"services\":null}', 'IMI Check Status', '2020-05-07 01:47:31', '2020-05-07 01:47:31');
INSERT INTO `imi_requests` VALUES ('2', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"reqtype\":\"GENOTP\",\"msisdn\":\"972566789011\",\"serviceid\":\"4\",\"chnl\":\"WAP\",\"scode\":\"6874\"}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"Success\",\"otpid\":\"63724409252853119797256678901146874\"}}', 'IMI Generate OTP', '2020-05-07 01:47:33', '2020-05-07 01:47:33');
INSERT INTO `imi_requests` VALUES ('3', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"reqtype\":\"VALOTP\",\"msisdn\":\"972566789011\",\"otpid\":\"63724409252853119797256678901146874\",\"otp\":\"1112\"}', '{\"response\":{\"status\":\"-1\",\"rescode\":\"2102\",\"resdescription\":\"\",\"otpid\":null}}', 'IMI Validate OTP', '2020-05-07 01:47:53', '2020-05-07 01:47:53');
INSERT INTO `imi_requests` VALUES ('4', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"UNSUB\",\"msisdn\":\"972566789011\",\"serviceid\":\"4\",\"chnl\":\"WAP\",\"scode\":\"6874\"}}', '{\"service\":{\"status\":\"-1\",\"rescode\":\"69\",\"resdescription\":\" - \\u0627\\u0646\\u062a \\u063a\\u064a\\u0631 \\u0645\\u0634\\u062a\\u0631\\u0643 \\u0641\\u064a \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629\\u060c \\u0644\\u0644\\u0627\\u0634\\u062a\\u0631\\u0627\\u0643 \\u0641\\u064a \\u0627\\u0641\\u0636\\u0644 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u0646\\u0648\\u0639\\u0629 \\u0627\\u062a\\u0635\\u0644 \\u0639\\u0644\\u0649 *122#\",\"serviceid\":\"4\"}}', 'IMI Unsubscription', '2020-05-07 01:59:16', '2020-05-07 01:59:16');
INSERT INTO `imi_requests` VALUES ('5', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"CHECK\",\"msisdn\":\"972566789011\",\"serviceid\":\"4\",\"Status\":\"Active\",\"scode\":\"6874\"}}', '{\"response\":{\"status\":\"-1\",\"rescode\":\"1001\",\"resdescription\":\"No Records found\"},\"services\":null}', 'IMI Check Status', '2020-05-07 13:44:13', '2020-05-07 13:44:13');
INSERT INTO `imi_requests` VALUES ('6', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"reqtype\":\"GENOTP\",\"msisdn\":\"972566789011\",\"serviceid\":\"4\",\"chnl\":\"WAP\",\"scode\":\"6874\"}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"Success\",\"otpid\":\"63724452253731100497256678901146874\"}}', 'IMI Generate OTP', '2020-05-07 13:44:13', '2020-05-07 13:44:13');
INSERT INTO `imi_requests` VALUES ('7', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"reqtype\":\"VALOTP\",\"msisdn\":\"972566789011\",\"otpid\":\"63724452253731100497256678901146874\",\"otp\":\"3280\"}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"Success\",\"otpid\":\"63724452253731100497256678901146874\"}}', 'IMI Validate OTP', '2020-05-07 13:44:53', '2020-05-07 13:44:53');
INSERT INTO `imi_requests` VALUES ('8', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"SUB\",\"msisdn\":\"972566789011\",\"serviceid\":\"4\",\"chnl\":\"WAP\",\"scode\":\"6874\",\"otpid\":\"63724452253731100497256678901146874\"}}', '{\"service\":{\"status\":\"0\",\"rescode\":\"0\",\"resdescription\":\"\\u0644\\u0642\\u062f \\u062a\\u0645 \\u0627\\u0634\\u062a\\u0631\\u0627\\u0643\\u0643 \\u0641\\u064a \\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0641\\u0627\\u0633\\u064a \\u0642\\u0631\\u0622\\u0646 \\u0648\\u0627\\u0646\\u0627\\u0634\\u064a\\u062f \\u0628\\u0646\\u062c\\u0627\\u062d\\u060c \\u0639\\u0644\\u0645\\u0627\\u064b \\u0623\\u0646 \\u0633\\u0639\\u0631 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 0.4 \\u0634\\u064a\\u0643\\u0644 \\u0634. \\u0636. \\u064a\\u0648\\u0645\\u064a\\u0627\\u064b\\u060c \\u0644\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0634\\u062a\\u0631\\u0627\\u0643 \\u0627\\u0631\\u0633\\u0644 04 \\u0644\\u0644\\u0631\\u0642\\u0645 6874\",\"serviceid\":\"\"}}', 'IMI Subscription Request', '2020-05-07 13:44:57', '2020-05-07 13:44:57');
INSERT INTO `imi_requests` VALUES ('9', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"ChargeUser\":{\"msisdn\":\"972566789011\",\"otpid\":\"63724452253731100497256678901146874\",\"transid\":\"0.99921800 1588851897\",\"ctype\":\"SUB\",\"pcode\":\"1.00\",\"chnl\":\"WAP\",\"vendor\":\"Afasi\",\"subctype\":\"01\"}}', '{\"response\":{\"status\":\"1\",\"amount\":\"\",\"rescode\":\"1036\",\"resdescription\":\"Invalid ContentId.\",\"tid\":\"0.99921800 1588851897\"}}', 'IMI Charging', '2020-05-07 13:44:59', '2020-05-07 13:44:59');
INSERT INTO `imi_requests` VALUES ('10', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"CHECK\",\"msisdn\":null,\"serviceid\":9,\"Status\":\"Active\",\"scode\":\"6874\"}}', '{\"response\":null,\"services\":null}', 'IMI Check Status', '2020-05-14 01:33:04', '2020-05-14 01:33:04');
INSERT INTO `imi_requests` VALUES ('11', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"CHECK\",\"msisdn\":null,\"serviceid\":4,\"Status\":\"Active\",\"scode\":\"6874\"}}', '{\"response\":null,\"services\":null}', 'IMI Check Status', '2020-05-14 01:33:57', '2020-05-14 01:33:57');
INSERT INTO `imi_requests` VALUES ('12', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"CHECK\",\"msisdn\":\"972566789011\",\"serviceid\":\"4\",\"Status\":\"deactive\",\"scode\":\"6874\"}}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"SUCCESS\"},\"services\":[{\"appid\":\"1047\",\"serviceid\":\"4\",\"servicedesc\":\"\\u0627\\u0644\\u0639\\u0641\\u0627\\u0633\\u064a \\u0642\\u0631\\u0622\\u0646 \\u0648\\u0627\\u0646\\u0627\\u0634\\u064a\\u062f\",\"state\":\"DEACTIVE\",\"shortcode\":\"6874\",\"serviceprice\":\"0.34\",\"serviceactdate\":\"2020-05-07 14:44:54\",\"nextrendate\":\"2020-05-15 00:04:34\",\"serdeactdate\":\"2020-05-14 14:44:05\",\"actchannel\":\"WAP\",\"deactchannel\":\"WAP\",\"servicetype\":\"DAILY\"}]}', 'IMI Check Status', '2020-05-14 15:21:15', '2020-05-14 15:21:15');
INSERT INTO `imi_requests` VALUES ('13', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"CHECK\",\"msisdn\":\"972566789011\",\"serviceid\":\"4\",\"Status\":\"Active\",\"scode\":\"6874\"}}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"SUCCESS\"},\"services\":[{\"appid\":\"1047\",\"serviceid\":\"4\",\"servicedesc\":\"\\u0627\\u0644\\u0639\\u0641\\u0627\\u0633\\u064a \\u0642\\u0631\\u0622\\u0646 \\u0648\\u0627\\u0646\\u0627\\u0634\\u064a\\u062f\",\"state\":\"ACTIVE\",\"shortcode\":\"6874\",\"serviceprice\":\"0.34\",\"serviceactdate\":\"2020-05-14 18:32:21\",\"nextrendate\":\"2020-05-15 18:32:21\",\"serdeactdate\":\"\",\"actchannel\":\"WAP\",\"deactchannel\":\"\",\"servicetype\":\"DAILY\"}]}', 'IMI Check Status', '2020-05-14 19:57:11', '2020-05-14 19:57:11');
INSERT INTO `imi_requests` VALUES ('14', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"CHECK\",\"msisdn\":\"972566789011\",\"serviceid\":\"4\",\"Status\":\"Active\",\"scode\":\"6874\"}}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"SUCCESS\"},\"services\":[{\"appid\":\"1047\",\"serviceid\":\"4\",\"servicedesc\":\"\\u0627\\u0644\\u0639\\u0641\\u0627\\u0633\\u064a \\u0642\\u0631\\u0622\\u0646 \\u0648\\u0627\\u0646\\u0627\\u0634\\u064a\\u062f\",\"state\":\"ACTIVE\",\"shortcode\":\"6874\",\"serviceprice\":\"0.34\",\"serviceactdate\":\"2020-05-14 18:32:21\",\"nextrendate\":\"2020-05-15 18:32:21\",\"serdeactdate\":\"\",\"actchannel\":\"WAP\",\"deactchannel\":\"\",\"servicetype\":\"DAILY\"}]}', 'IMI Check Status', '2020-05-14 19:59:11', '2020-05-14 19:59:11');
INSERT INTO `imi_requests` VALUES ('15', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"CHECK\",\"msisdn\":\"972566789011\",\"serviceid\":\"4\",\"Status\":\"Active\",\"scode\":\"6874\"}}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"SUCCESS\"},\"services\":[{\"appid\":\"1047\",\"serviceid\":\"4\",\"servicedesc\":\"\\u0627\\u0644\\u0639\\u0641\\u0627\\u0633\\u064a \\u0642\\u0631\\u0622\\u0646 \\u0648\\u0627\\u0646\\u0627\\u0634\\u064a\\u062f\",\"state\":\"ACTIVE\",\"shortcode\":\"6874\",\"serviceprice\":\"0.34\",\"serviceactdate\":\"2020-05-14 18:32:21\",\"nextrendate\":\"2020-05-15 18:32:21\",\"serdeactdate\":\"\",\"actchannel\":\"WAP\",\"deactchannel\":\"\",\"servicetype\":\"DAILY\"}]}', 'IMI Check Status', '2020-05-14 19:59:17', '2020-05-14 19:59:17');
INSERT INTO `imi_requests` VALUES ('16', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"CHECK\",\"msisdn\":\"972566789011\",\"serviceid\":\"4\",\"Status\":\"Active\",\"scode\":\"6874\"}}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"SUCCESS\"},\"services\":[{\"appid\":\"1047\",\"serviceid\":\"4\",\"servicedesc\":\"\\u0627\\u0644\\u0639\\u0641\\u0627\\u0633\\u064a \\u0642\\u0631\\u0622\\u0646 \\u0648\\u0627\\u0646\\u0627\\u0634\\u064a\\u062f\",\"state\":\"ACTIVE\",\"shortcode\":\"6874\",\"serviceprice\":\"0.34\",\"serviceactdate\":\"2020-05-14 18:32:21\",\"nextrendate\":\"2020-05-15 18:32:21\",\"serdeactdate\":\"\",\"actchannel\":\"WAP\",\"deactchannel\":\"\",\"servicetype\":\"DAILY\"}]}', 'IMI Check Status', '2020-05-14 19:59:53', '2020-05-14 19:59:53');
INSERT INTO `imi_requests` VALUES ('17', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"CHECK\",\"msisdn\":\"972566789011\",\"serviceid\":\"4\",\"Status\":\"Active\",\"scode\":\"6874\"}}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"SUCCESS\"},\"services\":[{\"appid\":\"1047\",\"serviceid\":\"4\",\"servicedesc\":\"\\u0627\\u0644\\u0639\\u0641\\u0627\\u0633\\u064a \\u0642\\u0631\\u0622\\u0646 \\u0648\\u0627\\u0646\\u0627\\u0634\\u064a\\u062f\",\"state\":\"ACTIVE\",\"shortcode\":\"6874\",\"serviceprice\":\"0.34\",\"serviceactdate\":\"2020-05-14 18:32:21\",\"nextrendate\":\"2020-05-15 18:32:21\",\"serdeactdate\":\"\",\"actchannel\":\"WAP\",\"deactchannel\":\"\",\"servicetype\":\"DAILY\"}]}', 'IMI Check Status', '2020-05-14 20:00:05', '2020-05-14 20:00:05');
INSERT INTO `imi_requests` VALUES ('18', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"CHECK\",\"msisdn\":\"972566789011\",\"serviceid\":\"4\",\"Status\":\"Active\",\"scode\":\"6874\"}}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"SUCCESS\"},\"services\":[{\"appid\":\"1047\",\"serviceid\":\"4\",\"servicedesc\":\"\\u0627\\u0644\\u0639\\u0641\\u0627\\u0633\\u064a \\u0642\\u0631\\u0622\\u0646 \\u0648\\u0627\\u0646\\u0627\\u0634\\u064a\\u062f\",\"state\":\"ACTIVE\",\"shortcode\":\"6874\",\"serviceprice\":\"0.34\",\"serviceactdate\":\"2020-05-14 18:32:21\",\"nextrendate\":\"2020-05-15 18:32:21\",\"serdeactdate\":\"\",\"actchannel\":\"WAP\",\"deactchannel\":\"\",\"servicetype\":\"DAILY\"}]}', 'IMI Check Status', '2020-05-14 21:05:51', '2020-05-14 21:05:51');
INSERT INTO `imi_requests` VALUES ('19', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"CHECK\",\"msisdn\":\"972566789011\",\"serviceid\":\"4\",\"Status\":\"Active\",\"scode\":\"6874\"}}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"SUCCESS\"},\"services\":[{\"appid\":\"1047\",\"serviceid\":\"4\",\"servicedesc\":\"\\u0627\\u0644\\u0639\\u0641\\u0627\\u0633\\u064a \\u0642\\u0631\\u0622\\u0646 \\u0648\\u0627\\u0646\\u0627\\u0634\\u064a\\u062f\",\"state\":\"ACTIVE\",\"shortcode\":\"6874\",\"serviceprice\":\"0.34\",\"serviceactdate\":\"2020-05-14 18:32:21\",\"nextrendate\":\"2020-05-15 18:32:21\",\"serdeactdate\":\"\",\"actchannel\":\"WAP\",\"deactchannel\":\"\",\"servicetype\":\"DAILY\"}]}', 'IMI Check Status', '2020-05-14 21:07:08', '2020-05-14 21:07:08');
INSERT INTO `imi_requests` VALUES ('20', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"CHECK\",\"msisdn\":\"972566789011\",\"serviceid\":\"4\",\"Status\":\"Active\",\"scode\":\"6874\"}}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"SUCCESS\"},\"services\":[{\"appid\":\"1047\",\"serviceid\":\"4\",\"servicedesc\":\"\\u0627\\u0644\\u0639\\u0641\\u0627\\u0633\\u064a \\u0642\\u0631\\u0622\\u0646 \\u0648\\u0627\\u0646\\u0627\\u0634\\u064a\\u062f\",\"state\":\"ACTIVE\",\"shortcode\":\"6874\",\"serviceprice\":\"0.34\",\"serviceactdate\":\"2020-05-14 18:32:21\",\"nextrendate\":\"2020-05-15 18:32:21\",\"serdeactdate\":\"\",\"actchannel\":\"WAP\",\"deactchannel\":\"\",\"servicetype\":\"DAILY\"}]}', 'IMI Check Status', '2020-05-14 21:07:20', '2020-05-14 21:07:20');
INSERT INTO `imi_requests` VALUES ('21', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"CHECK\",\"msisdn\":\"972568123033\",\"serviceid\":\"4\",\"Status\":\"Active\",\"scode\":\"6874\"}}', '{\"response\":{\"status\":\"-1\",\"rescode\":\"1001\",\"resdescription\":\"No Records found\"},\"services\":null}', 'IMI Check Status', '2020-05-14 21:08:08', '2020-05-14 21:08:08');
INSERT INTO `imi_requests` VALUES ('22', '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"reqtype\":\"GENOTP\",\"msisdn\":\"972568123033\",\"serviceid\":\"4\",\"chnl\":\"WAP\",\"scode\":\"6874\"}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"Success\",\"otpid\":\"63725083689345839497256812303346874\"}}', 'IMI Generate OTP', '2020-05-14 21:08:09', '2020-05-14 21:08:09');

-- ----------------------------
-- Table structure for `imi_subscribers`
-- ----------------------------
DROP TABLE IF EXISTS `imi_subscribers`;
CREATE TABLE `imi_subscribers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requestId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of imi_subscribers
-- ----------------------------
INSERT INTO `imi_subscribers` VALUES ('1', '972566789011', '4', '12', '2020-05-14 15:21:15', '2020-05-14 15:21:15');

-- ----------------------------
-- Table structure for `imi_unsubscribers`
-- ----------------------------
DROP TABLE IF EXISTS `imi_unsubscribers`;
CREATE TABLE `imi_unsubscribers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requestId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of imi_unsubscribers
-- ----------------------------

-- ----------------------------
-- Table structure for `languages`
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `short_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO `languages` VALUES ('1', 'English', '2020-03-22 04:23:01', '2020-03-22 04:23:01', 'en', '0');
INSERT INTO `languages` VALUES ('2', 'Arabic', '2020-03-22 04:23:12', '2020-03-22 04:23:12', 'ar', '1');
INSERT INTO `languages` VALUES ('3', 'Urdu', '2020-04-18 07:50:07', '2020-04-18 07:50:07', 'ur', '1');

-- ----------------------------
-- Table structure for `mbc_notifications`
-- ----------------------------
DROP TABLE IF EXISTS `mbc_notifications`;
CREATE TABLE `mbc_notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortcode` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of mbc_notifications
-- ----------------------------
INSERT INTO `mbc_notifications` VALUES ('2', '123456', 'sub', 'http://localhost/mondia_php7/mbc_notifications?action=sub&msisdn=123456', '2020-09-02 13:43:00', '2020-09-02 13:43:00', '', '', '');
INSERT INTO `mbc_notifications` VALUES ('3', '966xxxxxxxxx', 'S', 'http://localhost/mondia_php7/mbc_notifications?action=S&msisdn=966xxxxxxxxx', '2020-09-02 13:46:54', '2020-09-02 13:46:54', '', '', '');
INSERT INTO `mbc_notifications` VALUES ('4', '966xxxxxxxxx', 'S', 'http://localhost/mondia_php7/mbc_notifications?action=S&msisdn=966xxxxxxxxx', '2020-09-03 09:59:38', '2020-09-03 09:59:38', '', '', '');
INSERT INTO `mbc_notifications` VALUES ('5', '123456', 'sub', 'http://localhost/mondia_php7/mbc_notifications?action=sub&country=KSA&msisdn=123456&operator=STC&shortcode=888', '2020-09-07 14:15:49', '2020-09-07 14:15:49', '', '', '');

-- ----------------------------
-- Table structure for `mbc_send_mts`
-- ----------------------------
DROP TABLE IF EXISTS `mbc_send_mts`;
CREATE TABLE `mbc_send_mts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `SmsID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MobileNo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Operator` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Shortcode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Msgtxt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ServiceID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Request` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Response` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ResponseCode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of mbc_send_mts
-- ----------------------------

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('133', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('134', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('135', '2015_10_31_162633_scaffoldinterfaces', '1');
INSERT INTO `migrations` VALUES ('136', '2017_08_01_141233_create_permission_tables', '1');
INSERT INTO `migrations` VALUES ('137', '2017_09_20_131500_create_first_user', '1');
INSERT INTO `migrations` VALUES ('138', '2017_10_16_084836_create_settings_table', '1');
INSERT INTO `migrations` VALUES ('139', '2017_10_25_094626_create_translatable_table', '1');
INSERT INTO `migrations` VALUES ('140', '2017_10_25_095102_create_language_table', '1');
INSERT INTO `migrations` VALUES ('141', '2017_10_25_095200_create_translate_body', '1');
INSERT INTO `migrations` VALUES ('142', '2017_10_25_113637_add_short_code_and_rtl_to_language', '1');
INSERT INTO `migrations` VALUES ('143', '2017_10_31_091358_create_static_translations_table', '1');
INSERT INTO `migrations` VALUES ('144', '2017_10_31_091835_create_static_body_table', '1');
INSERT INTO `migrations` VALUES ('145', '2017_11_09_081714_create_role_route_table', '1');
INSERT INTO `migrations` VALUES ('146', '2017_11_09_081714_create_routes_table', '1');
INSERT INTO `migrations` VALUES ('147', '2017_11_09_081715_add_foreign_keys_to_role_route_table', '1');
INSERT INTO `migrations` VALUES ('148', '2017_11_14_115606_isolate_controller_from_method', '1');
INSERT INTO `migrations` VALUES ('149', '2017_11_15_092424_adding_standards_routes', '1');
INSERT INTO `migrations` VALUES ('150', '2017_12_19_092552_add_type_field_to_settings', '1');
INSERT INTO `migrations` VALUES ('151', '2018_01_04_081336_adding_priorty_field_to_role_table', '1');
INSERT INTO `migrations` VALUES ('152', '2018_01_08_074915_phone_col_null', '1');
INSERT INTO `migrations` VALUES ('153', '2018_01_28_075912_add_type_table_to_template', '1');
INSERT INTO `migrations` VALUES ('154', '2018_01_28_080917_rename_type_coloumn_in_settings', '1');
INSERT INTO `migrations` VALUES ('155', '2018_01_28_081429_add_foriegn_keys_to_settings_table', '1');
INSERT INTO `migrations` VALUES ('156', '2018_01_28_090855_add_order_coloumn_to_settings_table', '1');
INSERT INTO `migrations` VALUES ('157', '2018_02_04_080901_create_delete_all_table', '1');
INSERT INTO `migrations` VALUES ('158', '2018_12_18_091104_create_operators_table', '1');
INSERT INTO `migrations` VALUES ('159', '2018_12_18_091104_create_posts_table', '1');
INSERT INTO `migrations` VALUES ('160', '2018_12_18_091104_create_providers_table', '1');
INSERT INTO `migrations` VALUES ('161', '2018_12_18_091104_create_services_table', '1');
INSERT INTO `migrations` VALUES ('162', '2018_12_18_091104_create_videos_table', '1');
INSERT INTO `migrations` VALUES ('163', '2018_12_18_091106_add_foreign_keys_to_posts_table', '1');
INSERT INTO `migrations` VALUES ('164', '2018_12_18_091106_add_foreign_keys_to_services_table', '1');
INSERT INTO `migrations` VALUES ('165', '2018_12_24_134449_update_operator_table', '1');
INSERT INTO `migrations` VALUES ('166', '2018_12_24_135834_create_audios_table', '1');
INSERT INTO `migrations` VALUES ('167', '2018_12_24_135835_add_foreign_keys_to_audios_table', '1');
INSERT INTO `migrations` VALUES ('168', '2018_12_26_133947_update_video_table', '2');
INSERT INTO `migrations` VALUES ('169', '2018_12_27_090718_update_audios_table', '3');
INSERT INTO `migrations` VALUES ('170', '2018_12_27_102110_update_services_table', '4');
INSERT INTO `migrations` VALUES ('171', '2018_12_27_102111_update_services_table', '5');
INSERT INTO `migrations` VALUES ('172', '2018_12_27_104206_rename_videos_table', '6');
INSERT INTO `migrations` VALUES ('173', '2018_12_27_105750_add_to_contents_table', '7');
INSERT INTO `migrations` VALUES ('174', '2018_12_27_133111_create_countries_table', '8');
INSERT INTO `migrations` VALUES ('175', '2018_12_27_132832_add_country_to_operations', '9');
INSERT INTO `migrations` VALUES ('176', '2019_12_31_091104_add_settings', '10');
INSERT INTO `migrations` VALUES ('177', '2020_01_15_123132_create_du_intgration', '10');
INSERT INTO `migrations` VALUES ('178', '2020_01_16_113647_edit_du_integration', '10');
INSERT INTO `migrations` VALUES ('179', '2020_01_27_164838_add_azan_flag_to_rbts_table', '10');
INSERT INTO `migrations` VALUES ('180', '2020_02_03_103133_make_all_table_innodb', '10');
INSERT INTO `migrations` VALUES ('181', '2020_03_22_113551_add_column_to_contents_table', '11');
INSERT INTO `migrations` VALUES ('182', '2020_03_22_115241_change_image_in_providers_table', '12');
INSERT INTO `migrations` VALUES ('183', '2020_03_22_162246_create_audios_table', '0');
INSERT INTO `migrations` VALUES ('184', '2020_03_22_162246_create_contents_table', '0');
INSERT INTO `migrations` VALUES ('185', '2020_03_22_162246_create_countries_table', '0');
INSERT INTO `migrations` VALUES ('186', '2020_03_22_162246_create_delete_all_flags_table', '0');
INSERT INTO `migrations` VALUES ('187', '2020_03_22_162246_create_du_integration_table', '0');
INSERT INTO `migrations` VALUES ('188', '2020_03_22_162246_create_languages_table', '0');
INSERT INTO `migrations` VALUES ('189', '2020_03_22_162246_create_operators_table', '0');
INSERT INTO `migrations` VALUES ('190', '2020_03_22_162246_create_password_resets_table', '0');
INSERT INTO `migrations` VALUES ('191', '2020_03_22_162246_create_permissions_table', '0');
INSERT INTO `migrations` VALUES ('192', '2020_03_22_162246_create_posts_table', '0');
INSERT INTO `migrations` VALUES ('193', '2020_03_22_162246_create_providers_table', '0');
INSERT INTO `migrations` VALUES ('194', '2020_03_22_162246_create_relations_table', '0');
INSERT INTO `migrations` VALUES ('195', '2020_03_22_162246_create_roles_table', '0');
INSERT INTO `migrations` VALUES ('196', '2020_03_22_162246_create_role_has_permissions_table', '0');
INSERT INTO `migrations` VALUES ('197', '2020_03_22_162246_create_role_route_table', '0');
INSERT INTO `migrations` VALUES ('198', '2020_03_22_162246_create_routes_table', '0');
INSERT INTO `migrations` VALUES ('199', '2020_03_22_162246_create_scaffoldinterfaces_table', '0');
INSERT INTO `migrations` VALUES ('200', '2020_03_22_162246_create_services_table', '0');
INSERT INTO `migrations` VALUES ('201', '2020_03_22_162246_create_settings_table', '0');
INSERT INTO `migrations` VALUES ('202', '2020_03_22_162246_create_static_bodies_table', '0');
INSERT INTO `migrations` VALUES ('203', '2020_03_22_162246_create_static_translations_table', '0');
INSERT INTO `migrations` VALUES ('204', '2020_03_22_162246_create_tans_bodies_table', '0');
INSERT INTO `migrations` VALUES ('205', '2020_03_22_162246_create_translatables_table', '0');
INSERT INTO `migrations` VALUES ('206', '2020_03_22_162246_create_types_table', '0');
INSERT INTO `migrations` VALUES ('207', '2020_03_22_162246_create_users_table', '0');
INSERT INTO `migrations` VALUES ('208', '2020_03_22_162246_create_user_has_permissions_table', '0');
INSERT INTO `migrations` VALUES ('209', '2020_03_22_162246_create_user_has_roles_table', '0');
INSERT INTO `migrations` VALUES ('210', '2020_03_22_162251_add_foreign_keys_to_audios_table', '0');
INSERT INTO `migrations` VALUES ('211', '2020_03_22_162251_add_foreign_keys_to_contents_table', '0');
INSERT INTO `migrations` VALUES ('212', '2020_03_22_162251_add_foreign_keys_to_delete_all_flags_table', '0');
INSERT INTO `migrations` VALUES ('213', '2020_03_22_162251_add_foreign_keys_to_operators_table', '0');
INSERT INTO `migrations` VALUES ('214', '2020_03_22_162251_add_foreign_keys_to_posts_table', '0');
INSERT INTO `migrations` VALUES ('215', '2020_03_22_162251_add_foreign_keys_to_relations_table', '0');
INSERT INTO `migrations` VALUES ('216', '2020_03_22_162251_add_foreign_keys_to_role_has_permissions_table', '0');
INSERT INTO `migrations` VALUES ('217', '2020_03_22_162251_add_foreign_keys_to_role_route_table', '0');
INSERT INTO `migrations` VALUES ('218', '2020_03_22_162251_add_foreign_keys_to_services_table', '0');
INSERT INTO `migrations` VALUES ('219', '2020_03_22_162251_add_foreign_keys_to_settings_table', '0');
INSERT INTO `migrations` VALUES ('220', '2020_03_22_162251_add_foreign_keys_to_static_bodies_table', '0');
INSERT INTO `migrations` VALUES ('221', '2020_03_22_162251_add_foreign_keys_to_tans_bodies_table', '0');
INSERT INTO `migrations` VALUES ('222', '2020_03_22_162251_add_foreign_keys_to_user_has_permissions_table', '0');
INSERT INTO `migrations` VALUES ('223', '2020_03_22_162251_add_foreign_keys_to_user_has_roles_table', '0');
INSERT INTO `migrations` VALUES ('224', '2020_02_16_093648_myisam_to_innodb', '13');
INSERT INTO `migrations` VALUES ('225', '2020_04_16_090834_add_index_to_providers_table', '14');
INSERT INTO `migrations` VALUES ('226', '2020_04_16_113325_add_index_to_services_table', '14');
INSERT INTO `migrations` VALUES ('227', '2020_04_16_144305_change_image_in_providers_table', '14');
INSERT INTO `migrations` VALUES ('228', '2020_04_16_145717_add_setting_value', '14');
INSERT INTO `migrations` VALUES ('229', '2020_04_16_194555_add_flag_to_setting', '15');
INSERT INTO `migrations` VALUES ('230', '2020_04_17_153843_add_index_to_videos_table', '15');
INSERT INTO `migrations` VALUES ('231', '2020_04_17_140838_add_slider_to_post', '16');
INSERT INTO `migrations` VALUES ('232', '2020_04_18_101600_change_index_in_contents_table', '17');
INSERT INTO `migrations` VALUES ('233', '2020_04_18_102316_add_urdu_to_lang', '17');
INSERT INTO `migrations` VALUES ('234', '2020_04_21_104125_add_stc_to_operator', '18');
INSERT INTO `migrations` VALUES ('235', '2018_12_09_093056_create_msisdns_table', '19');
INSERT INTO `migrations` VALUES ('236', '2018_12_09_093056_create_notify_table', '19');
INSERT INTO `migrations` VALUES ('237', '2019_08_27_113159_add_column_to_msisdens', '19');
INSERT INTO `migrations` VALUES ('238', '2020_04_23_114128_add_ooredoo_operator', '20');
INSERT INTO `migrations` VALUES ('240', '2020_04_23_115001_create_tim_wes_table', '21');
INSERT INTO `migrations` VALUES ('241', '2020_04_29_143429_create_imi_requests_table', '22');
INSERT INTO `migrations` VALUES ('242', '2020_05_07_102335_add_operator_and_country', '23');
INSERT INTO `migrations` VALUES ('243', '2020_05_07_112814_create_subscribers_table', '23');
INSERT INTO `migrations` VALUES ('244', '2020_05_10_090802_rename_subscribers_table', '24');
INSERT INTO `migrations` VALUES ('245', '2020_05_10_103100_create_imi_notifications_table', '24');
INSERT INTO `migrations` VALUES ('246', '2020_05_10_130732_create_imi_unsubscribers_table', '24');
INSERT INTO `migrations` VALUES ('247', '2020_05_10_133810_create_timwe_subscribers_table', '25');
INSERT INTO `migrations` VALUES ('248', '2020_05_10_133858_create_timwe_unsubscribers_table', '25');
INSERT INTO `migrations` VALUES ('249', '2020_05_14_090414_create_mondia_subscribers_table', '26');
INSERT INTO `migrations` VALUES ('250', '2020_05_14_090646_create_mondia_unsubscribers_table', '26');
INSERT INTO `migrations` VALUES ('251', '2020_06_03_102335_add_operator_and_country', '27');
INSERT INTO `migrations` VALUES ('252', '2020_09_02_082421_add_inspect_flag_to_settings', '28');
INSERT INTO `migrations` VALUES ('253', '2020_09_01_141707_create_mbc_notifications_table', '29');
INSERT INTO `migrations` VALUES ('254', '2020_09_07_093531_add_params_to_mbcnotifications', '30');
INSERT INTO `migrations` VALUES ('255', '2020_09_08_100806_create_mbc_send_mts_table', '31');
INSERT INTO `migrations` VALUES ('256', '2020_05_07_102335_add_setting', '32');
INSERT INTO `migrations` VALUES ('257', '2020_04_17_140838_add_free_to_post', '33');
INSERT INTO `migrations` VALUES ('258', '2020_10_27_160534_add_enable_free', '34');
INSERT INTO `migrations` VALUES ('259', '2020_06_25_084855_create_pincode_table', '35');
INSERT INTO `migrations` VALUES ('260', '2020_11_5_112510_insert_country_table', '35');
INSERT INTO `migrations` VALUES ('261', '2020_11_9_134029_create_response_send_message_table', '36');
INSERT INTO `migrations` VALUES ('262', '2020_11_23_140801_add_request_type_change_link', '37');
INSERT INTO `migrations` VALUES ('263', '2020_11_23_143259_add_operator_name', '37');
INSERT INTO `migrations` VALUES ('264', '2020_11_26_131642_create_resend_pincodes_table', '38');
INSERT INTO `migrations` VALUES ('265', '2020_11_30_124559_create_filters_table', '39');
INSERT INTO `migrations` VALUES ('266', '2020_11_30_124835_create_filter_posts_table', '39');
INSERT INTO `migrations` VALUES ('267', '2020_12_1_104125_add_foreign_filter', '40');

-- ----------------------------
-- Table structure for `mondia_subscribers`
-- ----------------------------
DROP TABLE IF EXISTS `mondia_subscribers`;
CREATE TABLE `mondia_subscribers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `check_status_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of mondia_subscribers
-- ----------------------------
INSERT INTO `mondia_subscribers` VALUES ('1', '175084757', '10', '2020-05-14 17:12:19', '2020-05-14 17:12:19');
INSERT INTO `mondia_subscribers` VALUES ('2', '213437494', '10', '2020-10-01 13:56:37', '2020-10-01 13:56:37');

-- ----------------------------
-- Table structure for `mondia_unsubscribers`
-- ----------------------------
DROP TABLE IF EXISTS `mondia_unsubscribers`;
CREATE TABLE `mondia_unsubscribers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `check_status_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of mondia_unsubscribers
-- ----------------------------

-- ----------------------------
-- Table structure for `msisdns`
-- ----------------------------
DROP TABLE IF EXISTS `msisdns`;
CREATE TABLE `msisdns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_id` int(11) NOT NULL COMMENT '8=zain , 50 ooredo , 51= viva',
  `ooredoo_notify_id` int(10) unsigned DEFAULT NULL,
  `ads_ur_id` int(10) unsigned DEFAULT NULL,
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
  `plan` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ooredoo_notify_id_3` (`ooredoo_notify_id`),
  KEY `ads_ur_id` (`ads_ur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of msisdns
-- ----------------------------
INSERT INTO `msisdns` VALUES ('2', '96551747685', '11', '3', null, null, 'DF', '1', '2020-04-22 19:50:04', '2020-04-22 19:50:04', null, '2', '2020-04-22', '2020-04-23', 'wifi', null, 'd');

-- ----------------------------
-- Table structure for `notify`
-- ----------------------------
DROP TABLE IF EXISTS `notify`;
CREATE TABLE `notify` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `complete_url` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msisdn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of notify
-- ----------------------------
INSERT INTO `notify` VALUES ('2', 'http://localhost/mondia_php7/notification?ChannelID=4493&MSISDN=96555410856&OperatorID=41904&Password=kuwait%40%21dex&RequestID=303270353&STATUS=RSC-BL&ServiceID=808&User=kuwait%40idex', 'sub', '96555410856', 'RSC-BL', '2020-04-22 21:48:15', '2020-04-22 21:48:15');
INSERT INTO `notify` VALUES ('3', 'http://localhost/mondia_php7/landing_stc?CGMSISDN=96551747685&CGSTATUS=0', 'new_sub', '96551747685', '0', '2020-04-22 19:50:04', '2020-04-22 19:50:04');

-- ----------------------------
-- Table structure for `operators`
-- ----------------------------
DROP TABLE IF EXISTS `operators`;
CREATE TABLE `operators` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  `operator_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `operators_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of operators
-- ----------------------------
INSERT INTO `operators` VALUES ('7', 'etislat', 'uploads/operators/5c2b237670d66.jpg', '2018-12-27 20:23:45', '2019-01-01 15:23:25', '1500', '2', '');
INSERT INTO `operators` VALUES ('8', 'orange', 'uploads/operators/5c2b236e9e890.jpg', '2019-01-01 15:23:10', '2019-01-01 15:23:10', '9999', '2', '');
INSERT INTO `operators` VALUES ('9', 'omantel', 'uploads/operators/5e7caa88d6f8d.png', '2020-03-26 19:13:44', '2020-04-09 20:54:19', '9999', '4', '');
INSERT INTO `operators` VALUES ('10', 'du', 'uploads/operators/5e7f2d823b601.png', '2020-03-28 16:57:06', '2020-04-09 20:54:25', '5555', '5', '');
INSERT INTO `operators` VALUES ('11', 'stc', 'uploads/operators/5e9ecd7a6c964.png', '2020-04-21 08:39:54', '2020-04-21 08:40:14', '711', '3', '');
INSERT INTO `operators` VALUES ('12', 'ooredoo', 'uploads/operators/5ea0694c3210a.png', '2020-04-22 13:57:00', '2020-04-22 13:57:00', '12121', '6', '');
INSERT INTO `operators` VALUES ('13', 'ooredoo', '', null, null, null, '8', '');
INSERT INTO `operators` VALUES ('14', 'mbc', '', null, '2020-11-25 14:14:19', null, '9', 'MOB');
INSERT INTO `operators` VALUES ('16', 'vodafone', 'uploads/operators/5fa947d77bc74.png', '2020-11-09 13:44:55', '2020-11-09 13:44:55', '444', '2', '');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `permissions`
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `pincodes`
-- ----------------------------
DROP TABLE IF EXISTS `pincodes`;
CREATE TABLE `pincodes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` int(11) NOT NULL,
  `expire_date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `operator_id` int(10) NOT NULL,
  `verified` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pincodes
-- ----------------------------
INSERT INTO `pincodes` VALUES ('1', '01000146015', '8958', '2020-11-09 15:52:06', '16', '1', '2020-11-09 15:48:22', '2020-11-09 15:52:06');
INSERT INTO `pincodes` VALUES ('2', '01092093709', '3121', '2020-11-09 16:56:20', '16', null, '2020-11-09 15:56:20', '2020-11-09 15:56:20');
INSERT INTO `pincodes` VALUES ('3', '01092093709', '1342', '2020-11-09 14:56:30', '16', null, '2020-11-09 13:56:30', '2020-11-09 13:56:30');

-- ----------------------------
-- Table structure for `posts`
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `operator_id` int(10) unsigned NOT NULL,
  `video_id` int(10) unsigned NOT NULL,
  `show_date` date NOT NULL DEFAULT '0000-00-00',
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slider` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = add to slider /0 = not slider',
  `free` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = free /0 = not free',
  PRIMARY KEY (`id`),
  KEY `operator_id` (`operator_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`operator_id`) REFERENCES `operators` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_operator_id_foreign1` FOREIGN KEY (`operator_id`) REFERENCES `operators` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `posts_video_id_foreign1` FOREIGN KEY (`video_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('35', '9', '71', '2020-04-13', '0', '2020-04-14 05:54:48', '2020-04-17 19:37:10', '1', '0');
INSERT INTO `posts` VALUES ('36', '10', '71', '2020-04-13', '0', '2020-04-14 05:54:48', '2020-04-17 19:34:44', '1', '0');
INSERT INTO `posts` VALUES ('37', '9', '72', '2020-04-13', '0', '2020-04-14 05:55:02', '2020-04-17 19:37:18', '0', '0');
INSERT INTO `posts` VALUES ('38', '10', '72', '2020-04-13', '0', '2020-04-14 05:55:02', '2020-04-18 21:44:02', '1', '0');
INSERT INTO `posts` VALUES ('39', '9', '73', '2020-04-13', '0', '2020-04-14 05:55:17', '2020-04-14 05:55:17', '0', '0');
INSERT INTO `posts` VALUES ('40', '10', '73', '2020-04-13', '0', '2020-04-14 05:55:17', '2020-04-14 05:55:17', '0', '0');
INSERT INTO `posts` VALUES ('41', '9', '74', '2020-04-13', '0', '2020-04-14 05:55:31', '2020-04-14 05:55:31', '0', '0');
INSERT INTO `posts` VALUES ('42', '10', '74', '2020-04-13', '0', '2020-04-14 05:55:31', '2020-04-14 05:55:31', '0', '0');
INSERT INTO `posts` VALUES ('43', '9', '75', '2020-04-13', '0', '2020-04-14 05:55:44', '2020-04-14 05:55:44', '0', '0');
INSERT INTO `posts` VALUES ('44', '10', '75', '2020-04-13', '0', '2020-04-14 05:55:44', '2020-04-14 05:55:44', '0', '0');
INSERT INTO `posts` VALUES ('45', '9', '76', '2020-04-13', '0', '2020-04-14 05:55:58', '2020-04-14 05:55:58', '0', '0');
INSERT INTO `posts` VALUES ('46', '10', '76', '2020-04-13', '0', '2020-04-14 05:55:58', '2020-04-14 05:55:58', '0', '0');
INSERT INTO `posts` VALUES ('47', '9', '77', '2020-04-13', '0', '2020-04-14 05:56:17', '2020-04-14 05:56:17', '0', '0');
INSERT INTO `posts` VALUES ('48', '10', '77', '2020-04-13', '0', '2020-04-14 05:56:17', '2020-04-14 05:56:17', '0', '0');
INSERT INTO `posts` VALUES ('49', '9', '78', '2020-04-13', '0', '2020-04-14 05:56:38', '2020-04-14 05:56:38', '0', '0');
INSERT INTO `posts` VALUES ('50', '10', '78', '2020-04-13', '0', '2020-04-14 05:56:38', '2020-04-14 05:56:38', '0', '0');
INSERT INTO `posts` VALUES ('51', '9', '79', '2020-04-13', '0', '2020-04-14 05:56:51', '2020-04-14 05:56:51', '0', '0');
INSERT INTO `posts` VALUES ('52', '10', '79', '2020-04-13', '0', '2020-04-14 05:56:51', '2020-04-14 05:56:51', '0', '0');
INSERT INTO `posts` VALUES ('53', '9', '80', '2020-04-13', '0', '2020-04-14 05:57:07', '2020-04-14 05:57:07', '0', '0');
INSERT INTO `posts` VALUES ('54', '10', '80', '2020-04-13', '0', '2020-04-14 05:57:07', '2020-04-14 05:57:07', '0', '0');
INSERT INTO `posts` VALUES ('95', '9', '101', '2020-04-13', '0', '2020-04-14 06:04:45', '2020-04-14 06:04:45', '0', '0');
INSERT INTO `posts` VALUES ('96', '10', '101', '2020-04-13', '0', '2020-04-14 06:04:45', '2020-04-14 06:04:45', '0', '0');
INSERT INTO `posts` VALUES ('97', '9', '102', '2020-04-13', '0', '2020-04-14 06:05:02', '2020-04-14 06:05:02', '0', '0');
INSERT INTO `posts` VALUES ('98', '10', '102', '2020-04-13', '0', '2020-04-14 06:05:02', '2020-04-14 06:05:02', '0', '0');
INSERT INTO `posts` VALUES ('99', '9', '103', '2020-04-13', '0', '2020-04-14 06:05:22', '2020-04-14 06:05:22', '0', '0');
INSERT INTO `posts` VALUES ('100', '10', '103', '2020-04-13', '0', '2020-04-14 06:05:22', '2020-04-14 06:05:22', '0', '0');
INSERT INTO `posts` VALUES ('101', '9', '104', '2020-04-13', '0', '2020-04-14 06:05:42', '2020-04-14 06:05:42', '0', '0');
INSERT INTO `posts` VALUES ('102', '10', '104', '2020-04-13', '0', '2020-04-14 06:05:42', '2020-04-14 06:05:42', '0', '0');
INSERT INTO `posts` VALUES ('103', '9', '105', '2020-04-13', '0', '2020-04-14 06:06:01', '2020-04-14 06:06:01', '0', '0');
INSERT INTO `posts` VALUES ('104', '10', '105', '2020-04-13', '0', '2020-04-14 06:06:01', '2020-04-14 06:06:01', '0', '0');
INSERT INTO `posts` VALUES ('105', '9', '106', '2020-04-13', '0', '2020-04-14 06:06:16', '2020-04-14 06:06:16', '0', '0');
INSERT INTO `posts` VALUES ('106', '10', '106', '2020-04-13', '0', '2020-04-14 06:06:16', '2020-04-14 06:06:16', '0', '0');
INSERT INTO `posts` VALUES ('107', '9', '107', '2020-04-13', '0', '2020-04-14 06:06:36', '2020-04-14 06:06:36', '0', '0');
INSERT INTO `posts` VALUES ('108', '10', '107', '2020-04-13', '0', '2020-04-14 06:06:36', '2020-04-14 06:06:36', '0', '0');
INSERT INTO `posts` VALUES ('109', '9', '108', '2020-04-13', '0', '2020-04-14 06:06:53', '2020-04-14 06:06:53', '0', '0');
INSERT INTO `posts` VALUES ('110', '10', '108', '2020-04-13', '0', '2020-04-14 06:06:53', '2020-04-14 06:06:53', '0', '0');
INSERT INTO `posts` VALUES ('111', '9', '109', '2020-04-13', '0', '2020-04-14 06:07:42', '2020-04-14 06:07:42', '1', '0');
INSERT INTO `posts` VALUES ('112', '10', '109', '2020-04-13', '0', '2020-04-14 06:07:42', '2020-04-14 06:07:42', '0', '0');
INSERT INTO `posts` VALUES ('113', '9', '110', '2020-04-13', '0', '2020-04-14 06:08:02', '2020-04-14 06:08:02', '0', '0');
INSERT INTO `posts` VALUES ('114', '10', '110', '2020-04-13', '0', '2020-04-14 06:08:02', '2020-04-14 06:08:02', '0', '0');
INSERT INTO `posts` VALUES ('115', '9', '111', '2020-04-13', '0', '2020-04-14 06:08:31', '2020-04-14 06:08:31', '0', '0');
INSERT INTO `posts` VALUES ('116', '10', '111', '2020-04-13', '0', '2020-04-14 06:08:31', '2020-04-14 06:08:31', '0', '0');
INSERT INTO `posts` VALUES ('117', '9', '112', '2020-04-13', '0', '2020-04-14 06:08:53', '2020-04-14 06:08:53', '0', '0');
INSERT INTO `posts` VALUES ('118', '10', '112', '2020-04-13', '0', '2020-04-14 06:08:53', '2020-04-14 06:08:53', '0', '0');
INSERT INTO `posts` VALUES ('119', '9', '113', '2020-04-13', '0', '2020-04-14 06:09:16', '2020-04-14 06:09:16', '0', '0');
INSERT INTO `posts` VALUES ('120', '10', '113', '2020-04-13', '0', '2020-04-14 06:09:16', '2020-04-14 06:09:16', '0', '0');
INSERT INTO `posts` VALUES ('121', '9', '114', '2020-04-13', '0', '2020-04-14 06:09:35', '2020-04-14 06:09:35', '0', '0');
INSERT INTO `posts` VALUES ('122', '10', '114', '2020-04-13', '0', '2020-04-14 06:09:35', '2020-04-14 06:09:35', '0', '0');
INSERT INTO `posts` VALUES ('123', '9', '115', '2020-04-13', '0', '2020-04-14 06:09:59', '2020-04-14 06:09:59', '0', '0');
INSERT INTO `posts` VALUES ('124', '10', '115', '2020-04-13', '0', '2020-04-14 06:09:59', '2020-04-14 06:09:59', '0', '0');
INSERT INTO `posts` VALUES ('125', '9', '116', '2020-04-13', '0', '2020-04-14 06:11:15', '2020-04-14 06:11:15', '0', '0');
INSERT INTO `posts` VALUES ('126', '10', '116', '2020-04-13', '0', '2020-04-14 06:11:15', '2020-04-14 06:11:15', '0', '0');
INSERT INTO `posts` VALUES ('127', '9', '117', '2020-04-13', '0', '2020-04-14 06:11:37', '2020-04-14 06:11:37', '0', '0');
INSERT INTO `posts` VALUES ('128', '10', '117', '2020-04-13', '0', '2020-04-14 06:11:37', '2020-04-14 06:11:37', '0', '0');
INSERT INTO `posts` VALUES ('129', '9', '118', '2020-04-13', '0', '2020-04-14 06:11:59', '2020-04-14 06:11:59', '0', '0');
INSERT INTO `posts` VALUES ('130', '10', '118', '2020-04-13', '0', '2020-04-14 06:11:59', '2020-04-14 06:11:59', '0', '0');
INSERT INTO `posts` VALUES ('131', '9', '119', '2020-04-13', '0', '2020-04-14 06:12:28', '2020-04-14 06:12:28', '0', '0');
INSERT INTO `posts` VALUES ('132', '10', '119', '2020-04-13', '0', '2020-04-14 06:12:28', '2020-04-14 06:12:28', '0', '0');
INSERT INTO `posts` VALUES ('133', '9', '120', '2020-04-13', '0', '2020-04-14 06:13:11', '2020-04-14 06:13:11', '0', '0');
INSERT INTO `posts` VALUES ('134', '10', '120', '2020-04-13', '0', '2020-04-14 06:13:11', '2020-04-14 06:13:11', '0', '0');
INSERT INTO `posts` VALUES ('135', '9', '121', '2020-04-13', '0', '2020-04-14 06:13:43', '2020-04-14 06:13:43', '0', '0');
INSERT INTO `posts` VALUES ('136', '10', '121', '2020-04-13', '0', '2020-04-14 06:13:43', '2020-04-14 06:13:43', '0', '0');
INSERT INTO `posts` VALUES ('137', '9', '122', '2020-04-13', '0', '2020-04-14 06:14:00', '2020-04-14 06:14:00', '0', '0');
INSERT INTO `posts` VALUES ('138', '10', '122', '2020-04-13', '0', '2020-04-14 06:14:00', '2020-04-14 06:14:00', '0', '0');
INSERT INTO `posts` VALUES ('139', '9', '123', '2020-04-13', '0', '2020-04-14 06:15:35', '2020-04-14 06:15:35', '0', '0');
INSERT INTO `posts` VALUES ('140', '10', '123', '2020-04-13', '0', '2020-04-14 06:15:35', '2020-04-14 06:15:35', '0', '0');
INSERT INTO `posts` VALUES ('141', '9', '124', '2020-04-13', '0', '2020-04-14 06:15:55', '2020-04-14 06:15:55', '0', '0');
INSERT INTO `posts` VALUES ('142', '10', '124', '2020-04-13', '0', '2020-04-14 06:15:55', '2020-04-14 06:15:55', '0', '0');
INSERT INTO `posts` VALUES ('143', '9', '125', '2020-04-13', '0', '2020-04-14 06:16:16', '2020-04-14 06:16:16', '0', '0');
INSERT INTO `posts` VALUES ('144', '10', '125', '2020-04-13', '0', '2020-04-14 06:16:16', '2020-04-14 06:16:16', '0', '0');
INSERT INTO `posts` VALUES ('145', '9', '126', '2020-04-13', '0', '2020-04-14 06:16:36', '2020-04-14 06:16:36', '0', '0');
INSERT INTO `posts` VALUES ('146', '10', '126', '2020-04-13', '0', '2020-04-14 06:16:36', '2020-04-14 06:16:36', '0', '0');
INSERT INTO `posts` VALUES ('147', '9', '127', '2020-04-13', '0', '2020-04-14 06:16:53', '2020-04-14 06:16:53', '0', '0');
INSERT INTO `posts` VALUES ('148', '10', '127', '2020-04-13', '0', '2020-04-14 06:16:53', '2020-04-14 06:16:53', '0', '0');
INSERT INTO `posts` VALUES ('149', '9', '128', '2020-04-13', '0', '2020-04-14 06:17:10', '2020-04-14 06:17:10', '0', '0');
INSERT INTO `posts` VALUES ('150', '10', '128', '2020-04-13', '0', '2020-04-14 06:17:10', '2020-04-14 06:17:10', '0', '0');
INSERT INTO `posts` VALUES ('151', '9', '129', '2020-04-13', '0', '2020-04-14 06:17:31', '2020-04-14 06:17:31', '0', '0');
INSERT INTO `posts` VALUES ('152', '10', '129', '2020-04-13', '0', '2020-04-14 06:17:31', '2020-04-14 06:17:31', '0', '0');
INSERT INTO `posts` VALUES ('153', '9', '130', '2020-04-13', '0', '2020-04-14 06:17:46', '2020-04-14 06:17:46', '0', '0');
INSERT INTO `posts` VALUES ('154', '10', '130', '2020-04-13', '0', '2020-04-14 06:17:46', '2020-04-14 06:17:46', '0', '0');
INSERT INTO `posts` VALUES ('155', '9', '131', '2020-04-13', '0', '2020-04-14 06:18:09', '2020-04-14 06:18:09', '0', '0');
INSERT INTO `posts` VALUES ('156', '10', '131', '2020-04-13', '0', '2020-04-14 06:18:09', '2020-04-14 06:18:09', '0', '0');
INSERT INTO `posts` VALUES ('157', '9', '132', '2020-04-13', '0', '2020-04-14 06:18:29', '2020-04-14 06:18:29', '0', '0');
INSERT INTO `posts` VALUES ('158', '10', '132', '2020-04-13', '0', '2020-04-14 06:18:29', '2020-04-14 06:18:29', '0', '0');
INSERT INTO `posts` VALUES ('159', '9', '133', '2020-04-13', '0', '2020-04-14 06:18:46', '2020-04-14 06:18:46', '0', '0');
INSERT INTO `posts` VALUES ('160', '10', '133', '2020-04-13', '0', '2020-04-14 06:18:46', '2020-04-14 06:18:46', '0', '0');
INSERT INTO `posts` VALUES ('161', '9', '134', '2020-04-13', '0', '2020-04-14 06:19:05', '2020-04-14 06:19:05', '0', '0');
INSERT INTO `posts` VALUES ('162', '10', '134', '2020-04-13', '0', '2020-04-14 06:19:05', '2020-04-14 06:19:05', '0', '0');
INSERT INTO `posts` VALUES ('163', '9', '135', '2020-04-13', '0', '2020-04-14 06:19:30', '2020-04-14 06:19:30', '0', '0');
INSERT INTO `posts` VALUES ('164', '10', '135', '2020-04-13', '0', '2020-04-14 06:19:30', '2020-04-14 06:19:30', '0', '0');
INSERT INTO `posts` VALUES ('165', '9', '137', '2020-04-13', '0', '2020-04-14 06:19:49', '2020-04-14 06:19:49', '0', '0');
INSERT INTO `posts` VALUES ('166', '10', '137', '2020-04-13', '0', '2020-04-14 06:19:49', '2020-04-14 06:19:49', '0', '0');
INSERT INTO `posts` VALUES ('167', '9', '138', '2020-04-13', '0', '2020-04-14 06:20:14', '2020-04-14 06:20:14', '0', '0');
INSERT INTO `posts` VALUES ('168', '10', '138', '2020-04-13', '0', '2020-04-14 06:20:14', '2020-04-14 06:20:14', '0', '0');
INSERT INTO `posts` VALUES ('169', '9', '139', '2020-04-13', '0', '2020-04-14 06:20:29', '2020-04-14 06:20:29', '0', '0');
INSERT INTO `posts` VALUES ('170', '10', '139', '2020-04-13', '0', '2020-04-14 06:20:29', '2020-04-14 06:20:29', '0', '0');
INSERT INTO `posts` VALUES ('171', '9', '140', '2020-04-13', '0', '2020-04-14 06:20:45', '2020-04-14 06:20:45', '0', '0');
INSERT INTO `posts` VALUES ('172', '10', '140', '2020-04-13', '0', '2020-04-14 06:20:45', '2020-04-14 06:20:45', '0', '0');
INSERT INTO `posts` VALUES ('173', '9', '141', '2020-04-13', '0', '2020-04-14 06:21:03', '2020-04-14 06:21:03', '0', '0');
INSERT INTO `posts` VALUES ('174', '10', '141', '2020-04-13', '0', '2020-04-14 06:21:03', '2020-04-14 06:21:03', '0', '0');
INSERT INTO `posts` VALUES ('175', '9', '142', '2020-04-14', '0', '2020-04-15 05:50:56', '2020-04-15 05:50:56', '0', '0');
INSERT INTO `posts` VALUES ('176', '10', '142', '2020-04-14', '0', '2020-04-15 05:50:56', '2020-04-15 05:50:56', '0', '0');
INSERT INTO `posts` VALUES ('177', '9', '143', '2020-04-14', '0', '2020-04-15 05:52:18', '2020-04-15 05:52:18', '0', '0');
INSERT INTO `posts` VALUES ('178', '10', '143', '2020-04-14', '0', '2020-04-15 05:52:18', '2020-04-15 05:52:18', '0', '0');
INSERT INTO `posts` VALUES ('179', '9', '144', '2020-04-14', '0', '2020-04-15 05:53:21', '2020-04-15 05:53:21', '0', '0');
INSERT INTO `posts` VALUES ('180', '10', '144', '2020-04-14', '0', '2020-04-15 05:53:21', '2020-04-15 05:53:21', '0', '0');
INSERT INTO `posts` VALUES ('181', '9', '145', '2020-04-14', '0', '2020-04-15 05:54:21', '2020-04-15 05:54:21', '0', '0');
INSERT INTO `posts` VALUES ('182', '10', '145', '2020-04-14', '0', '2020-04-15 05:54:21', '2020-04-15 05:54:21', '0', '0');
INSERT INTO `posts` VALUES ('183', '9', '146', '2020-04-14', '0', '2020-04-15 05:55:11', '2020-04-15 05:55:11', '0', '0');
INSERT INTO `posts` VALUES ('184', '10', '146', '2020-04-14', '0', '2020-04-15 05:55:11', '2020-04-15 05:55:11', '0', '0');
INSERT INTO `posts` VALUES ('185', '9', '147', '2020-04-14', '0', '2020-04-15 05:55:59', '2020-04-15 05:55:59', '0', '0');
INSERT INTO `posts` VALUES ('186', '10', '147', '2020-04-14', '0', '2020-04-15 05:55:59', '2020-04-15 05:55:59', '0', '0');
INSERT INTO `posts` VALUES ('187', '9', '148', '2020-04-14', '0', '2020-04-15 05:57:04', '2020-04-15 05:57:04', '0', '0');
INSERT INTO `posts` VALUES ('188', '10', '148', '2020-04-14', '0', '2020-04-15 05:57:04', '2020-04-15 05:57:04', '0', '0');
INSERT INTO `posts` VALUES ('189', '9', '149', '2020-04-14', '0', '2020-04-15 05:58:19', '2020-04-15 05:58:19', '0', '0');
INSERT INTO `posts` VALUES ('190', '10', '149', '2020-04-14', '0', '2020-04-15 05:58:19', '2020-04-15 05:58:19', '0', '0');
INSERT INTO `posts` VALUES ('191', '9', '150', '2020-04-14', '0', '2020-04-15 05:59:11', '2020-04-15 05:59:11', '0', '0');
INSERT INTO `posts` VALUES ('192', '10', '150', '2020-04-14', '0', '2020-04-15 05:59:11', '2020-04-15 05:59:11', '0', '0');
INSERT INTO `posts` VALUES ('193', '9', '151', '2020-04-14', '0', '2020-04-15 05:59:47', '2020-04-15 05:59:47', '0', '0');
INSERT INTO `posts` VALUES ('194', '10', '151', '2020-04-14', '0', '2020-04-15 05:59:47', '2020-04-15 05:59:47', '0', '0');
INSERT INTO `posts` VALUES ('195', '9', '152', '2020-04-15', '0', '2020-04-15 06:00:29', '2020-04-15 06:00:29', '0', '0');
INSERT INTO `posts` VALUES ('196', '10', '152', '2020-04-15', '0', '2020-04-15 06:00:29', '2020-04-15 06:00:29', '0', '0');
INSERT INTO `posts` VALUES ('197', '9', '153', '2020-04-15', '0', '2020-04-15 06:01:16', '2020-04-15 06:01:16', '0', '0');
INSERT INTO `posts` VALUES ('198', '10', '153', '2020-04-15', '0', '2020-04-15 06:01:16', '2020-04-15 06:01:16', '0', '0');
INSERT INTO `posts` VALUES ('199', '9', '154', '2020-04-15', '0', '2020-04-15 06:01:59', '2020-04-15 06:01:59', '0', '0');
INSERT INTO `posts` VALUES ('200', '10', '154', '2020-04-15', '0', '2020-04-15 06:01:59', '2020-04-15 06:01:59', '0', '0');
INSERT INTO `posts` VALUES ('201', '9', '155', '2020-04-14', '0', '2020-04-15 06:02:47', '2020-04-15 06:02:47', '0', '0');
INSERT INTO `posts` VALUES ('202', '10', '155', '2020-04-14', '0', '2020-04-15 06:02:47', '2020-04-15 06:02:47', '0', '0');
INSERT INTO `posts` VALUES ('203', '9', '156', '2020-04-15', '0', '2020-04-15 06:03:27', '2020-04-15 06:03:27', '0', '0');
INSERT INTO `posts` VALUES ('204', '10', '156', '2020-04-15', '0', '2020-04-15 06:03:27', '2020-04-15 06:03:27', '0', '0');
INSERT INTO `posts` VALUES ('205', '9', '157', '2020-04-14', '0', '2020-04-15 06:04:13', '2020-04-15 06:04:13', '0', '0');
INSERT INTO `posts` VALUES ('206', '10', '157', '2020-04-14', '0', '2020-04-15 06:04:13', '2020-04-15 06:04:13', '0', '0');
INSERT INTO `posts` VALUES ('207', '9', '158', '2020-04-14', '0', '2020-04-15 06:05:07', '2020-04-15 06:05:07', '0', '0');
INSERT INTO `posts` VALUES ('208', '10', '158', '2020-04-14', '0', '2020-04-15 06:05:07', '2020-04-15 06:05:07', '0', '0');
INSERT INTO `posts` VALUES ('209', '9', '159', '2020-04-14', '0', '2020-04-15 06:06:01', '2020-04-15 06:06:01', '0', '0');
INSERT INTO `posts` VALUES ('210', '10', '159', '2020-04-14', '0', '2020-04-15 06:06:01', '2020-04-15 06:06:01', '0', '0');
INSERT INTO `posts` VALUES ('211', '9', '160', '2020-04-15', '0', '2020-04-15 06:06:44', '2020-04-15 06:06:44', '0', '0');
INSERT INTO `posts` VALUES ('212', '10', '160', '2020-04-15', '0', '2020-04-15 06:06:44', '2020-04-15 06:06:44', '0', '0');
INSERT INTO `posts` VALUES ('213', '9', '161', '2020-04-14', '0', '2020-04-15 06:07:30', '2020-04-15 06:07:30', '0', '0');
INSERT INTO `posts` VALUES ('214', '10', '161', '2020-04-14', '0', '2020-04-15 06:07:30', '2020-04-15 06:07:30', '0', '0');
INSERT INTO `posts` VALUES ('235', '9', '221', '2020-04-14', '0', '2020-04-15 06:15:28', '2020-04-15 06:15:28', '0', '0');
INSERT INTO `posts` VALUES ('236', '10', '221', '2020-04-14', '0', '2020-04-15 06:15:28', '2020-04-15 06:15:28', '0', '0');
INSERT INTO `posts` VALUES ('237', '9', '220', '2020-04-14', '0', '2020-04-15 06:16:00', '2020-04-15 06:16:00', '0', '0');
INSERT INTO `posts` VALUES ('238', '10', '220', '2020-04-14', '0', '2020-04-15 06:16:00', '2020-04-15 06:16:00', '0', '0');
INSERT INTO `posts` VALUES ('239', '9', '219', '2020-04-14', '0', '2020-04-15 06:16:16', '2020-04-15 06:16:16', '0', '0');
INSERT INTO `posts` VALUES ('240', '10', '219', '2020-04-14', '0', '2020-04-15 06:16:16', '2020-04-15 06:16:16', '0', '0');
INSERT INTO `posts` VALUES ('241', '9', '218', '2020-04-14', '0', '2020-04-15 06:16:32', '2020-04-15 06:16:32', '0', '0');
INSERT INTO `posts` VALUES ('242', '10', '218', '2020-04-14', '0', '2020-04-15 06:16:32', '2020-04-15 06:16:32', '0', '0');
INSERT INTO `posts` VALUES ('243', '9', '217', '2020-04-14', '0', '2020-04-15 06:16:47', '2020-04-15 06:16:47', '0', '0');
INSERT INTO `posts` VALUES ('244', '10', '217', '2020-04-14', '0', '2020-04-15 06:16:47', '2020-04-15 06:16:47', '0', '0');
INSERT INTO `posts` VALUES ('245', '9', '216', '2020-04-14', '0', '2020-04-15 06:17:08', '2020-04-15 06:17:08', '0', '0');
INSERT INTO `posts` VALUES ('246', '10', '216', '2020-04-14', '0', '2020-04-15 06:17:08', '2020-04-15 06:17:08', '0', '0');
INSERT INTO `posts` VALUES ('247', '9', '215', '2020-04-14', '0', '2020-04-15 07:04:36', '2020-04-15 07:04:36', '0', '0');
INSERT INTO `posts` VALUES ('248', '10', '215', '2020-04-14', '0', '2020-04-15 07:04:36', '2020-04-15 07:04:36', '0', '0');
INSERT INTO `posts` VALUES ('249', '9', '214', '2020-04-14', '0', '2020-04-15 07:06:11', '2020-04-15 07:06:11', '0', '0');
INSERT INTO `posts` VALUES ('250', '10', '214', '2020-04-14', '0', '2020-04-15 07:06:11', '2020-04-15 07:06:11', '0', '0');
INSERT INTO `posts` VALUES ('251', '9', '213', '2020-04-14', '0', '2020-04-15 07:06:38', '2020-04-15 07:06:38', '0', '0');
INSERT INTO `posts` VALUES ('252', '10', '213', '2020-04-14', '0', '2020-04-15 07:06:38', '2020-04-15 07:06:38', '0', '0');
INSERT INTO `posts` VALUES ('253', '9', '212', '2020-04-14', '0', '2020-04-15 07:07:00', '2020-04-15 07:07:00', '0', '0');
INSERT INTO `posts` VALUES ('254', '10', '212', '2020-04-14', '0', '2020-04-15 07:07:00', '2020-04-15 07:07:00', '0', '0');
INSERT INTO `posts` VALUES ('255', '9', '211', '2020-04-14', '0', '2020-04-15 07:07:21', '2020-04-15 07:07:21', '0', '0');
INSERT INTO `posts` VALUES ('256', '10', '211', '2020-04-14', '0', '2020-04-15 07:07:21', '2020-04-15 07:07:21', '0', '0');
INSERT INTO `posts` VALUES ('257', '9', '210', '2020-04-14', '0', '2020-04-15 07:07:50', '2020-04-15 07:07:50', '0', '0');
INSERT INTO `posts` VALUES ('258', '10', '210', '2020-04-14', '0', '2020-04-15 07:07:50', '2020-04-15 07:07:50', '0', '0');
INSERT INTO `posts` VALUES ('259', '9', '209', '2020-04-14', '0', '2020-04-15 07:08:11', '2020-04-15 07:08:11', '0', '0');
INSERT INTO `posts` VALUES ('260', '10', '209', '2020-04-14', '0', '2020-04-15 07:08:11', '2020-04-15 07:08:11', '0', '0');
INSERT INTO `posts` VALUES ('261', '9', '208', '2020-04-14', '0', '2020-04-15 07:08:40', '2020-04-15 07:08:40', '0', '0');
INSERT INTO `posts` VALUES ('262', '10', '208', '2020-04-14', '0', '2020-04-15 07:08:40', '2020-04-15 07:08:40', '0', '0');
INSERT INTO `posts` VALUES ('263', '9', '207', '2020-04-14', '0', '2020-04-15 07:09:05', '2020-04-15 07:09:05', '0', '0');
INSERT INTO `posts` VALUES ('264', '10', '207', '2020-04-14', '0', '2020-04-15 07:09:05', '2020-04-15 07:09:05', '0', '0');
INSERT INTO `posts` VALUES ('265', '9', '206', '2020-04-14', '0', '2020-04-15 07:13:00', '2020-04-15 07:13:00', '0', '0');
INSERT INTO `posts` VALUES ('266', '10', '206', '2020-04-14', '0', '2020-04-15 07:13:00', '2020-04-15 07:13:00', '0', '0');
INSERT INTO `posts` VALUES ('267', '9', '205', '2020-04-14', '0', '2020-04-15 07:13:19', '2020-04-15 07:13:19', '0', '0');
INSERT INTO `posts` VALUES ('268', '10', '205', '2020-04-14', '0', '2020-04-15 07:13:19', '2020-04-15 07:13:19', '0', '0');
INSERT INTO `posts` VALUES ('269', '9', '204', '2020-04-14', '0', '2020-04-15 07:13:47', '2020-04-15 07:13:47', '0', '0');
INSERT INTO `posts` VALUES ('270', '10', '204', '2020-04-14', '0', '2020-04-15 07:13:47', '2020-04-15 07:13:47', '0', '0');
INSERT INTO `posts` VALUES ('271', '9', '203', '2020-04-14', '0', '2020-04-15 07:14:35', '2020-04-15 07:14:35', '0', '0');
INSERT INTO `posts` VALUES ('272', '10', '203', '2020-04-14', '0', '2020-04-15 07:14:35', '2020-04-15 07:14:35', '0', '0');
INSERT INTO `posts` VALUES ('273', '9', '202', '2020-04-14', '0', '2020-04-15 07:14:57', '2020-04-15 07:14:57', '0', '0');
INSERT INTO `posts` VALUES ('274', '10', '202', '2020-04-14', '0', '2020-04-15 07:14:57', '2020-04-15 07:14:57', '0', '0');
INSERT INTO `posts` VALUES ('275', '9', '201', '2020-04-14', '0', '2020-04-15 07:15:30', '2020-04-15 07:15:30', '0', '0');
INSERT INTO `posts` VALUES ('276', '10', '201', '2020-04-14', '0', '2020-04-15 07:15:30', '2020-04-15 07:15:30', '0', '0');
INSERT INTO `posts` VALUES ('277', '9', '200', '2020-04-14', '0', '2020-04-15 07:15:53', '2020-04-15 07:15:53', '0', '0');
INSERT INTO `posts` VALUES ('278', '10', '200', '2020-04-14', '0', '2020-04-15 07:15:53', '2020-04-15 07:15:53', '0', '0');
INSERT INTO `posts` VALUES ('279', '9', '199', '2020-04-14', '0', '2020-04-15 07:16:48', '2020-04-15 07:16:48', '0', '0');
INSERT INTO `posts` VALUES ('280', '10', '199', '2020-04-14', '0', '2020-04-15 07:16:48', '2020-04-15 07:16:48', '0', '0');
INSERT INTO `posts` VALUES ('281', '9', '198', '2020-04-14', '0', '2020-04-15 07:17:13', '2020-04-15 07:17:13', '0', '0');
INSERT INTO `posts` VALUES ('282', '10', '198', '2020-04-14', '0', '2020-04-15 07:17:13', '2020-04-15 07:17:13', '0', '0');
INSERT INTO `posts` VALUES ('283', '9', '197', '2020-04-14', '0', '2020-04-15 07:18:00', '2020-04-15 07:18:00', '0', '0');
INSERT INTO `posts` VALUES ('284', '10', '197', '2020-04-14', '0', '2020-04-15 07:18:00', '2020-04-15 07:18:00', '0', '0');
INSERT INTO `posts` VALUES ('285', '9', '196', '2020-04-14', '0', '2020-04-15 07:18:23', '2020-04-15 07:18:23', '0', '0');
INSERT INTO `posts` VALUES ('286', '10', '196', '2020-04-14', '0', '2020-04-15 07:18:23', '2020-04-15 07:18:23', '0', '0');
INSERT INTO `posts` VALUES ('287', '9', '195', '2020-04-14', '0', '2020-04-15 07:18:48', '2020-04-15 07:18:48', '0', '0');
INSERT INTO `posts` VALUES ('288', '10', '195', '2020-04-14', '0', '2020-04-15 07:18:48', '2020-04-15 07:18:48', '0', '0');
INSERT INTO `posts` VALUES ('289', '9', '194', '2020-04-14', '0', '2020-04-15 07:19:19', '2020-04-15 07:19:19', '0', '0');
INSERT INTO `posts` VALUES ('290', '10', '194', '2020-04-14', '0', '2020-04-15 07:19:19', '2020-04-15 07:19:19', '0', '0');
INSERT INTO `posts` VALUES ('291', '9', '193', '2020-04-14', '0', '2020-04-15 07:19:49', '2020-04-15 07:19:49', '0', '0');
INSERT INTO `posts` VALUES ('292', '10', '193', '2020-04-14', '0', '2020-04-15 07:19:49', '2020-04-15 07:19:49', '0', '0');
INSERT INTO `posts` VALUES ('293', '9', '192', '2020-04-14', '0', '2020-04-15 07:20:21', '2020-04-15 07:20:21', '0', '0');
INSERT INTO `posts` VALUES ('294', '10', '192', '2020-04-14', '0', '2020-04-15 07:20:21', '2020-04-15 07:20:21', '0', '0');
INSERT INTO `posts` VALUES ('295', '9', '191', '2020-04-14', '0', '2020-04-15 07:20:54', '2020-04-15 07:20:54', '0', '0');
INSERT INTO `posts` VALUES ('296', '10', '191', '2020-04-14', '0', '2020-04-15 07:20:54', '2020-04-15 07:20:54', '0', '0');
INSERT INTO `posts` VALUES ('297', '9', '190', '2020-04-14', '0', '2020-04-15 07:21:18', '2020-04-15 07:21:18', '0', '0');
INSERT INTO `posts` VALUES ('298', '10', '190', '2020-04-14', '0', '2020-04-15 07:21:18', '2020-04-15 07:21:18', '0', '0');
INSERT INTO `posts` VALUES ('299', '9', '189', '2020-04-14', '0', '2020-04-15 07:21:54', '2020-04-15 07:21:54', '0', '0');
INSERT INTO `posts` VALUES ('300', '10', '189', '2020-04-14', '0', '2020-04-15 07:21:54', '2020-04-15 07:21:54', '0', '0');
INSERT INTO `posts` VALUES ('301', '9', '188', '2020-04-14', '0', '2020-04-15 07:22:17', '2020-04-15 07:22:17', '0', '0');
INSERT INTO `posts` VALUES ('302', '10', '188', '2020-04-14', '0', '2020-04-15 07:22:17', '2020-04-15 07:22:17', '0', '0');
INSERT INTO `posts` VALUES ('303', '9', '187', '2020-04-14', '0', '2020-04-15 07:22:52', '2020-04-15 07:22:52', '0', '0');
INSERT INTO `posts` VALUES ('304', '10', '187', '2020-04-14', '0', '2020-04-15 07:22:52', '2020-04-15 07:22:52', '0', '0');
INSERT INTO `posts` VALUES ('305', '9', '186', '2020-04-14', '0', '2020-04-15 07:23:34', '2020-04-15 07:23:34', '0', '0');
INSERT INTO `posts` VALUES ('306', '10', '186', '2020-04-14', '0', '2020-04-15 07:23:34', '2020-04-15 07:23:34', '0', '0');
INSERT INTO `posts` VALUES ('307', '9', '185', '2020-04-14', '0', '2020-04-15 07:24:12', '2020-04-15 07:24:12', '0', '0');
INSERT INTO `posts` VALUES ('308', '10', '185', '2020-04-14', '0', '2020-04-15 07:24:12', '2020-04-15 07:24:12', '0', '0');
INSERT INTO `posts` VALUES ('309', '9', '184', '2020-04-14', '0', '2020-04-15 07:26:12', '2020-04-15 07:26:12', '0', '0');
INSERT INTO `posts` VALUES ('310', '10', '184', '2020-04-14', '0', '2020-04-15 07:26:12', '2020-04-15 07:26:12', '0', '0');
INSERT INTO `posts` VALUES ('311', '9', '183', '2020-04-14', '0', '2020-04-15 07:26:43', '2020-04-15 07:26:43', '0', '0');
INSERT INTO `posts` VALUES ('312', '10', '183', '2020-04-14', '0', '2020-04-15 07:26:43', '2020-04-15 07:26:43', '0', '0');
INSERT INTO `posts` VALUES ('313', '9', '182', '2020-04-14', '0', '2020-04-15 07:27:27', '2020-04-15 07:27:27', '0', '0');
INSERT INTO `posts` VALUES ('314', '10', '182', '2020-04-14', '0', '2020-04-15 07:27:27', '2020-04-15 07:27:27', '0', '0');
INSERT INTO `posts` VALUES ('315', '9', '181', '2020-04-14', '0', '2020-04-15 07:27:54', '2020-04-15 07:27:54', '0', '0');
INSERT INTO `posts` VALUES ('316', '10', '181', '2020-04-14', '0', '2020-04-15 07:27:54', '2020-04-15 07:27:54', '0', '0');
INSERT INTO `posts` VALUES ('317', '9', '180', '2020-04-14', '0', '2020-04-15 07:28:41', '2020-04-15 07:28:41', '0', '0');
INSERT INTO `posts` VALUES ('318', '10', '180', '2020-04-14', '0', '2020-04-15 07:28:41', '2020-04-15 07:28:41', '0', '0');
INSERT INTO `posts` VALUES ('335', '9', '245', '2020-04-15', '0', '2020-04-16 00:17:30', '2020-04-16 00:17:30', '0', '0');
INSERT INTO `posts` VALUES ('336', '10', '245', '2020-04-15', '0', '2020-04-16 00:17:30', '2020-04-16 00:17:30', '0', '0');
INSERT INTO `posts` VALUES ('337', '9', '244', '2020-04-15', '0', '2020-04-16 00:17:50', '2020-04-16 00:17:50', '0', '0');
INSERT INTO `posts` VALUES ('338', '10', '244', '2020-04-15', '0', '2020-04-16 00:17:50', '2020-04-16 00:17:50', '0', '0');
INSERT INTO `posts` VALUES ('339', '9', '246', '2020-04-15', '0', '2020-04-16 00:20:18', '2020-04-16 00:20:18', '0', '0');
INSERT INTO `posts` VALUES ('340', '10', '246', '2020-04-15', '0', '2020-04-16 00:20:18', '2020-04-16 00:20:18', '0', '0');
INSERT INTO `posts` VALUES ('341', '9', '248', '2020-04-15', '0', '2020-04-16 00:24:43', '2020-04-16 00:24:43', '0', '0');
INSERT INTO `posts` VALUES ('342', '10', '248', '2020-04-15', '0', '2020-04-16 00:24:43', '2020-04-16 00:24:43', '0', '0');
INSERT INTO `posts` VALUES ('343', '9', '247', '2020-04-15', '0', '2020-04-16 00:28:13', '2020-04-16 00:28:13', '0', '0');
INSERT INTO `posts` VALUES ('344', '10', '247', '2020-04-15', '0', '2020-04-16 00:28:13', '2020-04-16 00:28:13', '0', '0');
INSERT INTO `posts` VALUES ('345', '9', '255', '2020-04-15', '0', '2020-04-16 03:08:33', '2020-04-16 03:08:33', '0', '0');
INSERT INTO `posts` VALUES ('346', '10', '255', '2020-04-15', '0', '2020-04-16 03:08:33', '2020-04-16 03:08:33', '0', '0');
INSERT INTO `posts` VALUES ('347', '9', '254', '2020-04-15', '0', '2020-04-16 03:09:30', '2020-04-16 03:09:30', '0', '0');
INSERT INTO `posts` VALUES ('348', '10', '254', '2020-04-15', '0', '2020-04-16 03:09:30', '2020-04-16 03:09:30', '0', '0');
INSERT INTO `posts` VALUES ('349', '9', '252', '2020-04-15', '0', '2020-04-16 03:11:17', '2020-04-16 03:11:17', '0', '0');
INSERT INTO `posts` VALUES ('350', '10', '252', '2020-04-15', '0', '2020-04-16 03:11:17', '2020-04-16 03:11:17', '0', '0');
INSERT INTO `posts` VALUES ('351', '9', '251', '2020-04-15', '0', '2020-04-16 03:15:21', '2020-04-16 03:15:21', '0', '0');
INSERT INTO `posts` VALUES ('352', '10', '251', '2020-04-15', '0', '2020-04-16 03:15:21', '2020-04-16 03:15:21', '0', '0');
INSERT INTO `posts` VALUES ('353', '9', '250', '2020-04-15', '0', '2020-04-16 03:16:04', '2020-04-16 03:16:04', '0', '0');
INSERT INTO `posts` VALUES ('354', '10', '250', '2020-04-15', '0', '2020-04-16 03:16:04', '2020-04-16 03:16:04', '0', '0');
INSERT INTO `posts` VALUES ('355', '9', '253', '2020-04-14', '0', '2020-04-16 03:19:23', '2020-04-16 03:19:23', '0', '0');
INSERT INTO `posts` VALUES ('356', '10', '253', '2020-04-14', '0', '2020-04-16 03:19:23', '2020-04-16 03:19:23', '0', '0');
INSERT INTO `posts` VALUES ('359', '9', '256', '2020-04-14', '0', '2020-04-16 03:20:24', '2020-04-16 03:20:24', '0', '0');
INSERT INTO `posts` VALUES ('360', '10', '256', '2020-04-14', '0', '2020-04-16 03:20:24', '2020-04-16 03:20:24', '0', '0');
INSERT INTO `posts` VALUES ('361', '9', '222', '2020-04-14', '0', '2020-04-16 03:21:26', '2020-04-16 03:21:26', '0', '0');
INSERT INTO `posts` VALUES ('362', '10', '222', '2020-04-14', '0', '2020-04-16 03:21:26', '2020-04-16 03:21:26', '0', '0');
INSERT INTO `posts` VALUES ('365', '9', '241', '2020-04-14', '0', '2020-04-16 03:22:15', '2020-04-16 03:22:15', '0', '0');
INSERT INTO `posts` VALUES ('366', '10', '241', '2020-04-14', '0', '2020-04-16 03:22:15', '2020-04-16 03:22:15', '0', '0');
INSERT INTO `posts` VALUES ('367', '9', '240', '2020-04-14', '0', '2020-04-16 03:22:36', '2020-04-16 03:22:36', '0', '0');
INSERT INTO `posts` VALUES ('368', '10', '240', '2020-04-14', '0', '2020-04-16 03:22:36', '2020-04-16 03:22:36', '0', '0');
INSERT INTO `posts` VALUES ('369', '9', '239', '2020-04-14', '0', '2020-04-16 03:23:01', '2020-04-16 03:23:01', '0', '0');
INSERT INTO `posts` VALUES ('370', '10', '239', '2020-04-14', '0', '2020-04-16 03:23:01', '2020-04-16 03:23:01', '0', '0');
INSERT INTO `posts` VALUES ('371', '9', '238', '2020-04-14', '0', '2020-04-16 03:24:20', '2020-04-16 03:24:20', '0', '0');
INSERT INTO `posts` VALUES ('372', '10', '238', '2020-04-14', '0', '2020-04-16 03:24:20', '2020-04-16 03:24:20', '0', '0');
INSERT INTO `posts` VALUES ('373', '9', '237', '2020-04-14', '0', '2020-04-16 03:24:45', '2020-04-16 03:24:45', '0', '0');
INSERT INTO `posts` VALUES ('374', '10', '237', '2020-04-14', '0', '2020-04-16 03:24:45', '2020-04-16 03:24:45', '0', '0');
INSERT INTO `posts` VALUES ('375', '9', '236', '2020-04-14', '0', '2020-04-16 03:25:19', '2020-04-16 03:25:19', '0', '0');
INSERT INTO `posts` VALUES ('376', '10', '236', '2020-04-14', '0', '2020-04-16 03:25:19', '2020-04-16 03:25:19', '0', '0');
INSERT INTO `posts` VALUES ('377', '9', '235', '2020-04-14', '0', '2020-04-16 03:25:46', '2020-04-16 03:25:46', '0', '0');
INSERT INTO `posts` VALUES ('378', '10', '235', '2020-04-14', '0', '2020-04-16 03:25:46', '2020-04-16 03:25:46', '0', '0');
INSERT INTO `posts` VALUES ('379', '9', '234', '2020-04-14', '0', '2020-04-16 03:26:15', '2020-04-16 03:26:15', '0', '0');
INSERT INTO `posts` VALUES ('380', '10', '234', '2020-04-14', '0', '2020-04-16 03:26:15', '2020-04-16 03:26:15', '0', '0');
INSERT INTO `posts` VALUES ('381', '9', '233', '2020-04-14', '0', '2020-04-16 03:26:37', '2020-04-16 03:26:37', '0', '0');
INSERT INTO `posts` VALUES ('382', '10', '233', '2020-04-14', '0', '2020-04-16 03:26:37', '2020-04-16 03:26:37', '0', '0');
INSERT INTO `posts` VALUES ('383', '9', '232', '2020-04-14', '0', '2020-04-16 03:27:04', '2020-04-16 03:27:04', '0', '0');
INSERT INTO `posts` VALUES ('384', '10', '232', '2020-04-14', '0', '2020-04-16 03:27:04', '2020-04-16 03:27:04', '0', '0');
INSERT INTO `posts` VALUES ('385', '9', '231', '2020-04-14', '0', '2020-04-16 03:27:33', '2020-04-16 03:27:33', '0', '0');
INSERT INTO `posts` VALUES ('386', '10', '231', '2020-04-14', '0', '2020-04-16 03:27:33', '2020-04-16 03:27:33', '0', '0');
INSERT INTO `posts` VALUES ('387', '9', '230', '2020-04-14', '0', '2020-04-16 03:27:57', '2020-04-16 03:27:57', '0', '0');
INSERT INTO `posts` VALUES ('388', '10', '230', '2020-04-14', '0', '2020-04-16 03:27:57', '2020-04-16 03:27:57', '0', '0');
INSERT INTO `posts` VALUES ('389', '9', '229', '2020-04-14', '0', '2020-04-16 03:28:23', '2020-04-16 03:28:23', '0', '0');
INSERT INTO `posts` VALUES ('390', '10', '229', '2020-04-14', '0', '2020-04-16 03:28:23', '2020-04-16 03:28:23', '0', '0');
INSERT INTO `posts` VALUES ('391', '9', '228', '2020-04-14', '0', '2020-04-16 03:28:52', '2020-04-16 03:28:52', '0', '0');
INSERT INTO `posts` VALUES ('392', '10', '228', '2020-04-14', '0', '2020-04-16 03:28:52', '2020-04-16 03:28:52', '0', '0');
INSERT INTO `posts` VALUES ('393', '9', '227', '2020-04-14', '0', '2020-04-16 03:29:17', '2020-04-16 03:29:17', '0', '0');
INSERT INTO `posts` VALUES ('394', '10', '227', '2020-04-14', '0', '2020-04-16 03:29:17', '2020-04-16 03:29:17', '0', '0');
INSERT INTO `posts` VALUES ('395', '9', '226', '2020-04-14', '0', '2020-04-16 03:29:42', '2020-04-16 03:29:42', '0', '0');
INSERT INTO `posts` VALUES ('396', '10', '226', '2020-04-14', '0', '2020-04-16 03:29:42', '2020-04-16 03:29:42', '0', '0');
INSERT INTO `posts` VALUES ('397', '9', '225', '2020-04-14', '0', '2020-04-16 03:30:07', '2020-04-16 03:30:07', '0', '0');
INSERT INTO `posts` VALUES ('398', '10', '225', '2020-04-14', '0', '2020-04-16 03:30:07', '2020-04-16 03:30:07', '0', '0');
INSERT INTO `posts` VALUES ('399', '9', '224', '2020-04-14', '0', '2020-04-16 03:30:30', '2020-04-16 03:30:30', '0', '0');
INSERT INTO `posts` VALUES ('400', '10', '224', '2020-04-14', '0', '2020-04-16 03:30:30', '2020-04-16 03:30:30', '0', '0');
INSERT INTO `posts` VALUES ('401', '9', '223', '2020-04-14', '0', '2020-04-16 03:31:04', '2020-04-16 03:31:04', '0', '0');
INSERT INTO `posts` VALUES ('402', '10', '223', '2020-04-14', '0', '2020-04-16 03:31:04', '2020-04-16 03:31:04', '0', '0');
INSERT INTO `posts` VALUES ('403', '9', '264', '2020-04-15', '0', '2020-04-16 06:48:17', '2020-04-16 06:48:17', '0', '0');
INSERT INTO `posts` VALUES ('404', '10', '264', '2020-04-15', '0', '2020-04-16 06:48:17', '2020-04-16 06:48:17', '0', '0');
INSERT INTO `posts` VALUES ('405', '9', '263', '2020-04-15', '0', '2020-04-16 06:48:38', '2020-04-16 06:48:38', '0', '0');
INSERT INTO `posts` VALUES ('406', '10', '263', '2020-04-15', '0', '2020-04-16 06:48:38', '2020-04-16 06:48:38', '0', '0');
INSERT INTO `posts` VALUES ('407', '9', '262', '2020-04-15', '0', '2020-04-16 06:49:02', '2020-04-16 06:49:02', '0', '0');
INSERT INTO `posts` VALUES ('408', '10', '262', '2020-04-15', '0', '2020-04-16 06:49:02', '2020-04-16 06:49:02', '0', '0');
INSERT INTO `posts` VALUES ('411', '9', '260', '2020-04-15', '0', '2020-04-16 06:49:42', '2020-04-16 06:49:42', '0', '0');
INSERT INTO `posts` VALUES ('412', '10', '260', '2020-04-15', '0', '2020-04-16 06:49:42', '2020-04-16 06:49:42', '0', '0');
INSERT INTO `posts` VALUES ('413', '9', '259', '2020-04-15', '0', '2020-04-16 06:50:02', '2020-04-16 06:50:02', '0', '0');
INSERT INTO `posts` VALUES ('414', '10', '259', '2020-04-15', '0', '2020-04-16 06:50:02', '2020-04-16 06:50:02', '0', '0');
INSERT INTO `posts` VALUES ('415', '9', '258', '2020-04-15', '0', '2020-04-16 06:50:22', '2020-04-16 06:50:22', '0', '0');
INSERT INTO `posts` VALUES ('416', '10', '258', '2020-04-15', '0', '2020-04-16 06:50:22', '2020-04-16 06:50:22', '0', '0');
INSERT INTO `posts` VALUES ('417', '9', '257', '2020-04-15', '0', '2020-04-16 06:50:39', '2020-04-16 06:50:39', '0', '0');
INSERT INTO `posts` VALUES ('418', '10', '257', '2020-04-15', '0', '2020-04-16 06:50:39', '2020-04-16 06:50:39', '0', '0');
INSERT INTO `posts` VALUES ('419', '9', '265', '2020-04-14', '0', '2020-04-16 07:05:27', '2020-04-16 07:05:27', '0', '0');
INSERT INTO `posts` VALUES ('420', '10', '265', '2020-04-14', '0', '2020-04-16 07:05:27', '2020-04-16 07:05:27', '0', '0');
INSERT INTO `posts` VALUES ('421', '9', '266', '2020-04-15', '0', '2020-04-16 07:07:29', '2020-04-16 07:07:29', '0', '0');
INSERT INTO `posts` VALUES ('422', '10', '266', '2020-04-15', '0', '2020-04-16 07:07:29', '2020-04-16 07:07:29', '0', '0');
INSERT INTO `posts` VALUES ('423', '9', '267', '2020-04-15', '0', '2020-04-16 07:07:55', '2020-04-16 07:07:55', '0', '0');
INSERT INTO `posts` VALUES ('424', '10', '267', '2020-04-15', '0', '2020-04-16 07:07:55', '2020-04-16 07:07:55', '0', '0');
INSERT INTO `posts` VALUES ('425', '9', '269', '2020-04-15', '0', '2020-04-16 07:13:15', '2020-04-16 07:13:15', '0', '0');
INSERT INTO `posts` VALUES ('426', '10', '269', '2020-04-15', '0', '2020-04-16 07:13:15', '2020-04-16 07:13:15', '0', '0');
INSERT INTO `posts` VALUES ('427', '9', '268', '2020-04-15', '0', '2020-04-16 07:13:34', '2020-04-16 07:13:34', '0', '0');
INSERT INTO `posts` VALUES ('428', '10', '268', '2020-04-15', '0', '2020-04-16 07:13:34', '2020-04-16 07:13:34', '0', '0');
INSERT INTO `posts` VALUES ('429', '9', '271', '2020-04-15', '0', '2020-04-16 07:20:42', '2020-04-16 07:20:42', '0', '0');
INSERT INTO `posts` VALUES ('430', '10', '271', '2020-04-15', '0', '2020-04-16 07:20:42', '2020-04-16 07:20:42', '0', '0');
INSERT INTO `posts` VALUES ('431', '9', '270', '2020-04-15', '0', '2020-04-16 07:21:14', '2020-04-16 07:21:14', '0', '0');
INSERT INTO `posts` VALUES ('432', '10', '270', '2020-04-15', '0', '2020-04-16 07:21:14', '2020-04-16 07:21:14', '0', '0');
INSERT INTO `posts` VALUES ('433', '9', '272', '2020-04-15', '0', '2020-04-16 07:21:49', '2020-04-16 07:21:49', '0', '0');
INSERT INTO `posts` VALUES ('434', '10', '272', '2020-04-15', '0', '2020-04-16 07:21:49', '2020-04-16 07:21:49', '0', '0');
INSERT INTO `posts` VALUES ('435', '9', '273', '2020-04-15', '0', '2020-04-16 07:22:09', '2020-04-16 07:22:09', '0', '0');
INSERT INTO `posts` VALUES ('436', '10', '273', '2020-04-15', '0', '2020-04-16 07:22:09', '2020-04-16 07:22:09', '0', '0');
INSERT INTO `posts` VALUES ('437', '9', '274', '2020-04-15', '0', '2020-04-16 07:22:35', '2020-04-16 07:22:35', '0', '0');
INSERT INTO `posts` VALUES ('438', '10', '274', '2020-04-15', '0', '2020-04-16 07:22:35', '2020-04-16 07:22:35', '0', '0');
INSERT INTO `posts` VALUES ('439', '9', '275', '2020-04-15', '0', '2020-04-16 07:59:34', '2020-04-16 07:59:34', '0', '0');
INSERT INTO `posts` VALUES ('440', '10', '275', '2020-04-15', '0', '2020-04-16 07:59:34', '2020-04-16 07:59:34', '0', '0');
INSERT INTO `posts` VALUES ('441', '9', '275', '2020-04-16', '0', '2020-04-16 08:02:58', '2020-04-16 08:02:58', '0', '0');
INSERT INTO `posts` VALUES ('442', '10', '275', '2020-04-16', '0', '2020-04-16 08:02:58', '2020-04-16 08:02:58', '0', '0');
INSERT INTO `posts` VALUES ('443', '9', '276', '2020-04-15', '0', '2020-04-16 08:09:15', '2020-04-16 08:09:15', '0', '0');
INSERT INTO `posts` VALUES ('444', '10', '276', '2020-04-15', '0', '2020-04-16 08:09:15', '2020-04-16 08:09:15', '0', '0');
INSERT INTO `posts` VALUES ('445', '9', '277', '2020-04-15', '0', '2020-04-16 08:09:33', '2020-04-16 08:09:33', '0', '0');
INSERT INTO `posts` VALUES ('446', '10', '277', '2020-04-15', '0', '2020-04-16 08:09:33', '2020-04-16 08:09:33', '0', '0');
INSERT INTO `posts` VALUES ('447', '9', '278', '2020-04-16', '0', '2020-04-16 08:14:33', '2020-04-16 08:14:33', '1', '0');
INSERT INTO `posts` VALUES ('448', '10', '278', '2020-04-16', '0', '2020-04-16 08:14:33', '2020-04-16 08:14:33', '0', '0');
INSERT INTO `posts` VALUES ('449', '9', '279', '2020-04-16', '0', '2020-04-16 08:14:48', '2020-04-16 08:14:48', '0', '0');
INSERT INTO `posts` VALUES ('450', '10', '279', '2020-04-16', '0', '2020-04-16 08:14:48', '2020-04-16 08:14:48', '0', '0');
INSERT INTO `posts` VALUES ('451', '9', '280', '2020-04-16', '0', '2020-04-16 08:14:59', '2020-04-16 08:14:59', '0', '0');
INSERT INTO `posts` VALUES ('452', '10', '280', '2020-04-16', '0', '2020-04-16 08:14:59', '2020-04-16 08:14:59', '0', '0');
INSERT INTO `posts` VALUES ('454', '10', '282', '2020-04-16', '0', '2020-04-16 10:08:34', '2020-04-16 10:08:34', '0', '0');
INSERT INTO `posts` VALUES ('456', '10', '281', '2020-04-16', '0', '2020-04-16 10:08:55', '2020-04-16 10:08:55', '0', '0');
INSERT INTO `posts` VALUES ('465', '9', '287', '2020-04-16', '0', '2020-04-16 10:41:54', '2020-04-16 10:41:54', '0', '0');
INSERT INTO `posts` VALUES ('466', '10', '287', '2020-04-16', '0', '2020-04-16 10:41:54', '2020-04-16 10:41:54', '0', '0');
INSERT INTO `posts` VALUES ('467', '9', '288', '2020-04-16', '0', '2020-04-16 10:43:11', '2020-04-16 10:43:11', '0', '0');
INSERT INTO `posts` VALUES ('468', '10', '288', '2020-04-16', '0', '2020-04-16 10:43:11', '2020-04-16 10:43:11', '0', '0');
INSERT INTO `posts` VALUES ('469', '9', '289', '2020-04-16', '0', '2020-04-16 10:44:42', '2020-04-16 10:44:42', '0', '0');
INSERT INTO `posts` VALUES ('470', '10', '289', '2020-04-16', '0', '2020-04-16 10:44:42', '2020-04-16 10:44:42', '0', '0');
INSERT INTO `posts` VALUES ('471', '9', '290', '2020-04-16', '0', '2020-04-16 10:48:34', '2020-04-16 10:48:34', '0', '0');
INSERT INTO `posts` VALUES ('472', '10', '290', '2020-04-16', '0', '2020-04-16 10:48:34', '2020-04-16 10:48:34', '0', '0');
INSERT INTO `posts` VALUES ('473', '9', '291', '2020-04-16', '0', '2020-04-16 10:51:01', '2020-04-16 10:51:01', '0', '0');
INSERT INTO `posts` VALUES ('474', '10', '291', '2020-04-16', '0', '2020-04-16 10:51:01', '2020-04-16 10:51:01', '0', '0');
INSERT INTO `posts` VALUES ('475', '9', '292', '2020-04-16', '0', '2020-04-16 10:54:02', '2020-04-16 10:54:02', '0', '0');
INSERT INTO `posts` VALUES ('476', '10', '292', '2020-04-16', '0', '2020-04-16 10:54:02', '2020-04-16 10:54:02', '0', '0');
INSERT INTO `posts` VALUES ('477', '10', '302', '2020-04-18', '0', '2020-04-18 21:43:09', '2020-04-18 21:43:09', '1', '0');
INSERT INTO `posts` VALUES ('478', '9', '303', '2020-04-21', '0', '2020-04-21 10:38:22', '2020-04-21 10:38:22', '1', '0');
INSERT INTO `posts` VALUES ('479', '10', '303', '2020-04-21', '0', '2020-04-21 10:38:22', '2020-04-21 10:38:22', '1', '0');
INSERT INTO `posts` VALUES ('481', '9', '304', '2020-04-21', '0', '2020-04-21 11:36:40', '2020-04-21 11:36:40', '0', '0');
INSERT INTO `posts` VALUES ('483', '11', '71', '2020-04-21', '1', '2020-04-21 14:48:31', '2020-04-21 14:48:31', '1', '0');
INSERT INTO `posts` VALUES ('484', '11', '72', '2020-04-21', '1', '2020-04-21 14:48:31', '2020-04-21 14:48:31', '1', '0');
INSERT INTO `posts` VALUES ('485', '11', '73', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '1', '0');
INSERT INTO `posts` VALUES ('486', '11', '74', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '1', '0');
INSERT INTO `posts` VALUES ('487', '11', '75', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '0', '0');
INSERT INTO `posts` VALUES ('488', '11', '76', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '0', '0');
INSERT INTO `posts` VALUES ('489', '11', '77', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '0', '0');
INSERT INTO `posts` VALUES ('490', '11', '78', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '0', '0');
INSERT INTO `posts` VALUES ('491', '11', '79', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '0', '0');
INSERT INTO `posts` VALUES ('492', '11', '80', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '0', '0');
INSERT INTO `posts` VALUES ('493', '11', '101', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '0', '0');
INSERT INTO `posts` VALUES ('494', '11', '102', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '0', '0');
INSERT INTO `posts` VALUES ('495', '11', '103', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '0', '0');
INSERT INTO `posts` VALUES ('496', '11', '104', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '0', '0');
INSERT INTO `posts` VALUES ('497', '11', '105', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '0', '0');
INSERT INTO `posts` VALUES ('498', '11', '106', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '0', '0');
INSERT INTO `posts` VALUES ('499', '11', '107', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '0', '0');
INSERT INTO `posts` VALUES ('500', '11', '108', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '0', '0');
INSERT INTO `posts` VALUES ('501', '11', '109', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '0', '0');
INSERT INTO `posts` VALUES ('502', '11', '110', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '0', '0');
INSERT INTO `posts` VALUES ('503', '11', '111', '2020-04-21', '1', '2020-04-21 14:48:32', '2020-04-21 14:48:32', '0', '0');
INSERT INTO `posts` VALUES ('504', '11', '112', '2020-04-21', '1', '2020-04-21 14:48:33', '2020-04-21 14:48:33', '0', '0');
INSERT INTO `posts` VALUES ('505', '11', '113', '2020-04-21', '1', '2020-04-21 14:48:33', '2020-04-21 14:48:33', '0', '0');
INSERT INTO `posts` VALUES ('506', '11', '114', '2020-04-21', '1', '2020-04-21 14:48:33', '2020-04-21 14:48:33', '0', '0');
INSERT INTO `posts` VALUES ('507', '11', '115', '2020-04-21', '1', '2020-04-21 14:48:33', '2020-04-21 14:48:33', '0', '0');
INSERT INTO `posts` VALUES ('508', '11', '116', '2020-04-21', '1', '2020-04-21 14:48:33', '2020-04-21 14:48:33', '0', '0');
INSERT INTO `posts` VALUES ('509', '11', '117', '2020-04-21', '1', '2020-04-21 14:48:33', '2020-04-21 14:48:33', '0', '0');
INSERT INTO `posts` VALUES ('510', '11', '118', '2020-04-21', '1', '2020-04-21 14:48:33', '2020-04-21 14:48:33', '0', '0');
INSERT INTO `posts` VALUES ('511', '11', '119', '2020-04-21', '1', '2020-04-21 14:48:33', '2020-04-21 14:48:33', '0', '0');
INSERT INTO `posts` VALUES ('512', '11', '120', '2020-04-21', '1', '2020-04-21 14:48:33', '2020-04-21 14:48:33', '0', '0');
INSERT INTO `posts` VALUES ('513', '11', '121', '2020-04-21', '1', '2020-04-21 14:48:33', '2020-04-21 14:48:33', '0', '0');
INSERT INTO `posts` VALUES ('514', '11', '122', '2020-04-21', '1', '2020-04-21 14:48:33', '2020-04-21 14:48:33', '0', '0');
INSERT INTO `posts` VALUES ('515', '11', '123', '2020-04-21', '1', '2020-04-21 14:48:33', '2020-04-21 14:48:33', '0', '0');
INSERT INTO `posts` VALUES ('516', '11', '124', '2020-04-21', '1', '2020-04-21 14:48:33', '2020-04-21 14:48:33', '0', '0');
INSERT INTO `posts` VALUES ('517', '11', '125', '2020-04-21', '1', '2020-04-21 14:48:33', '2020-04-21 14:48:33', '0', '0');
INSERT INTO `posts` VALUES ('518', '11', '126', '2020-04-21', '1', '2020-04-21 14:48:33', '2020-04-21 14:48:33', '0', '0');
INSERT INTO `posts` VALUES ('519', '11', '127', '2020-04-21', '1', '2020-04-21 14:48:33', '2020-04-21 14:48:33', '0', '0');
INSERT INTO `posts` VALUES ('520', '11', '128', '2020-04-21', '1', '2020-04-21 14:48:34', '2020-04-21 14:48:34', '0', '0');
INSERT INTO `posts` VALUES ('521', '11', '129', '2020-04-21', '1', '2020-04-21 14:48:34', '2020-04-21 14:48:34', '0', '0');
INSERT INTO `posts` VALUES ('522', '11', '130', '2020-04-21', '1', '2020-04-21 14:48:34', '2020-04-21 14:48:34', '0', '0');
INSERT INTO `posts` VALUES ('523', '11', '131', '2020-04-21', '1', '2020-04-21 14:48:34', '2020-04-21 14:48:34', '0', '0');
INSERT INTO `posts` VALUES ('524', '11', '132', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('525', '11', '133', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('526', '11', '134', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('527', '11', '135', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('528', '11', '137', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('529', '11', '138', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('530', '11', '139', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('531', '11', '140', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('532', '11', '141', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('533', '11', '142', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('534', '11', '143', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('535', '11', '144', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('536', '11', '145', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('537', '11', '146', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('538', '11', '147', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('539', '11', '148', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('540', '11', '149', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('541', '11', '150', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('542', '11', '151', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('543', '11', '152', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('544', '11', '153', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('545', '11', '154', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('546', '11', '155', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('547', '11', '156', '2020-04-21', '1', '2020-04-21 14:48:35', '2020-04-21 14:48:35', '0', '0');
INSERT INTO `posts` VALUES ('548', '11', '157', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('549', '11', '158', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('550', '11', '159', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('551', '11', '160', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('552', '11', '161', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('553', '11', '180', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('554', '11', '181', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('555', '11', '182', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('556', '11', '183', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('557', '11', '184', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('558', '11', '185', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('559', '11', '186', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('560', '11', '187', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('561', '11', '188', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('562', '11', '189', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('563', '11', '190', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('564', '11', '191', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('565', '11', '192', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('566', '11', '193', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('567', '11', '194', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('568', '11', '195', '2020-04-21', '1', '2020-04-21 14:48:36', '2020-04-21 14:48:36', '0', '0');
INSERT INTO `posts` VALUES ('569', '11', '196', '2020-04-21', '1', '2020-04-21 14:48:37', '2020-04-21 14:48:37', '0', '0');
INSERT INTO `posts` VALUES ('570', '11', '197', '2020-04-21', '1', '2020-04-21 14:48:37', '2020-04-21 14:48:37', '0', '0');
INSERT INTO `posts` VALUES ('571', '11', '198', '2020-04-21', '1', '2020-04-21 14:48:37', '2020-04-21 14:48:37', '0', '0');
INSERT INTO `posts` VALUES ('572', '11', '199', '2020-04-21', '1', '2020-04-21 14:48:37', '2020-04-21 14:48:37', '0', '0');
INSERT INTO `posts` VALUES ('573', '11', '200', '2020-04-21', '1', '2020-04-21 14:48:37', '2020-04-21 14:48:37', '0', '0');
INSERT INTO `posts` VALUES ('574', '11', '201', '2020-04-21', '1', '2020-04-21 14:48:37', '2020-04-21 14:48:37', '0', '0');
INSERT INTO `posts` VALUES ('575', '11', '202', '2020-04-21', '1', '2020-04-21 14:48:37', '2020-04-21 14:48:37', '0', '0');
INSERT INTO `posts` VALUES ('576', '11', '203', '2020-04-21', '1', '2020-04-21 14:48:37', '2020-04-21 14:48:37', '0', '0');
INSERT INTO `posts` VALUES ('577', '11', '204', '2020-04-21', '1', '2020-04-21 14:48:37', '2020-04-21 14:48:37', '0', '0');
INSERT INTO `posts` VALUES ('578', '11', '205', '2020-04-21', '1', '2020-04-21 14:48:37', '2020-04-21 14:48:37', '0', '0');
INSERT INTO `posts` VALUES ('579', '11', '206', '2020-04-21', '1', '2020-04-21 14:48:37', '2020-04-21 14:48:37', '0', '0');
INSERT INTO `posts` VALUES ('580', '11', '207', '2020-04-21', '1', '2020-04-21 14:48:37', '2020-04-21 14:48:37', '0', '0');
INSERT INTO `posts` VALUES ('581', '11', '208', '2020-04-21', '1', '2020-04-21 14:48:38', '2020-04-21 14:48:38', '0', '0');
INSERT INTO `posts` VALUES ('582', '11', '209', '2020-04-21', '1', '2020-04-21 14:48:38', '2020-04-21 14:48:38', '0', '0');
INSERT INTO `posts` VALUES ('583', '11', '210', '2020-04-21', '1', '2020-04-21 14:48:38', '2020-04-21 14:48:38', '0', '0');
INSERT INTO `posts` VALUES ('584', '11', '211', '2020-04-21', '1', '2020-04-21 14:48:38', '2020-04-21 14:48:38', '0', '0');
INSERT INTO `posts` VALUES ('585', '11', '212', '2020-04-21', '1', '2020-04-21 14:48:38', '2020-04-21 14:48:38', '0', '0');
INSERT INTO `posts` VALUES ('586', '11', '213', '2020-04-21', '1', '2020-04-21 14:48:38', '2020-04-21 14:48:38', '0', '0');
INSERT INTO `posts` VALUES ('587', '11', '214', '2020-04-21', '1', '2020-04-21 14:48:38', '2020-04-21 14:48:38', '0', '0');
INSERT INTO `posts` VALUES ('588', '11', '215', '2020-04-21', '1', '2020-04-21 14:48:38', '2020-04-21 14:48:38', '0', '0');
INSERT INTO `posts` VALUES ('589', '11', '216', '2020-04-21', '1', '2020-04-21 14:48:38', '2020-04-21 14:48:38', '0', '0');
INSERT INTO `posts` VALUES ('590', '11', '217', '2020-04-21', '1', '2020-04-21 14:48:38', '2020-04-21 14:48:38', '0', '0');
INSERT INTO `posts` VALUES ('591', '11', '218', '2020-04-21', '1', '2020-04-21 14:48:38', '2020-04-21 14:48:38', '0', '0');
INSERT INTO `posts` VALUES ('592', '11', '219', '2020-04-21', '1', '2020-04-21 14:48:38', '2020-04-21 14:48:38', '0', '0');
INSERT INTO `posts` VALUES ('593', '11', '220', '2020-04-21', '1', '2020-04-21 14:48:38', '2020-04-21 14:48:38', '0', '0');
INSERT INTO `posts` VALUES ('594', '11', '221', '2020-04-21', '1', '2020-04-21 14:48:38', '2020-04-21 14:48:38', '0', '0');
INSERT INTO `posts` VALUES ('595', '11', '222', '2020-04-21', '1', '2020-04-21 14:48:38', '2020-04-21 14:48:38', '0', '0');
INSERT INTO `posts` VALUES ('596', '11', '223', '2020-04-21', '1', '2020-04-21 14:48:38', '2020-04-21 14:48:38', '0', '0');
INSERT INTO `posts` VALUES ('597', '11', '224', '2020-04-21', '1', '2020-04-21 14:48:38', '2020-04-21 14:48:38', '0', '0');
INSERT INTO `posts` VALUES ('598', '11', '225', '2020-04-21', '1', '2020-04-21 14:48:39', '2020-04-21 14:48:39', '0', '0');
INSERT INTO `posts` VALUES ('599', '11', '226', '2020-04-21', '1', '2020-04-21 14:48:39', '2020-04-21 14:48:39', '0', '0');
INSERT INTO `posts` VALUES ('600', '11', '227', '2020-04-21', '1', '2020-04-21 14:48:39', '2020-04-21 14:48:39', '0', '0');
INSERT INTO `posts` VALUES ('601', '11', '228', '2020-04-21', '1', '2020-04-21 14:48:39', '2020-04-21 14:48:39', '0', '0');
INSERT INTO `posts` VALUES ('602', '11', '229', '2020-04-21', '1', '2020-04-21 14:48:39', '2020-04-21 14:48:39', '0', '0');
INSERT INTO `posts` VALUES ('603', '11', '230', '2020-04-21', '1', '2020-04-21 14:48:39', '2020-04-21 14:48:39', '0', '0');
INSERT INTO `posts` VALUES ('604', '11', '231', '2020-04-21', '1', '2020-04-21 14:48:39', '2020-04-21 14:48:39', '0', '0');
INSERT INTO `posts` VALUES ('605', '11', '232', '2020-04-21', '1', '2020-04-21 14:48:39', '2020-04-21 14:48:39', '0', '0');
INSERT INTO `posts` VALUES ('606', '11', '233', '2020-04-21', '1', '2020-04-21 14:48:39', '2020-04-21 14:48:39', '0', '0');
INSERT INTO `posts` VALUES ('607', '11', '234', '2020-04-21', '1', '2020-04-21 14:48:39', '2020-04-21 14:48:39', '0', '0');
INSERT INTO `posts` VALUES ('608', '11', '235', '2020-04-21', '1', '2020-04-21 14:48:39', '2020-04-21 14:48:39', '0', '0');
INSERT INTO `posts` VALUES ('609', '11', '236', '2020-04-21', '1', '2020-04-21 14:48:39', '2020-04-21 14:48:39', '0', '0');
INSERT INTO `posts` VALUES ('610', '11', '237', '2020-04-21', '1', '2020-04-21 14:48:39', '2020-04-21 14:48:39', '0', '0');
INSERT INTO `posts` VALUES ('611', '11', '238', '2020-04-21', '1', '2020-04-21 14:48:39', '2020-04-21 14:48:39', '0', '0');
INSERT INTO `posts` VALUES ('612', '11', '239', '2020-04-21', '1', '2020-04-21 14:48:39', '2020-04-21 14:48:39', '0', '0');
INSERT INTO `posts` VALUES ('613', '11', '240', '2020-04-21', '1', '2020-04-21 14:48:39', '2020-04-21 14:48:39', '0', '0');
INSERT INTO `posts` VALUES ('614', '11', '241', '2020-04-21', '1', '2020-04-21 14:48:39', '2020-04-21 14:48:39', '0', '0');
INSERT INTO `posts` VALUES ('615', '11', '244', '2020-04-21', '1', '2020-04-21 14:48:39', '2020-04-21 14:48:39', '0', '0');
INSERT INTO `posts` VALUES ('616', '11', '245', '2020-04-21', '1', '2020-04-21 14:48:40', '2020-04-21 14:48:40', '0', '0');
INSERT INTO `posts` VALUES ('617', '11', '246', '2020-04-21', '1', '2020-04-21 14:48:40', '2020-04-21 14:48:40', '0', '0');
INSERT INTO `posts` VALUES ('618', '11', '247', '2020-04-21', '1', '2020-04-21 14:48:40', '2020-04-21 14:48:40', '0', '0');
INSERT INTO `posts` VALUES ('619', '11', '248', '2020-04-21', '1', '2020-04-21 14:48:40', '2020-04-21 14:48:40', '0', '0');
INSERT INTO `posts` VALUES ('620', '11', '250', '2020-04-21', '1', '2020-04-21 14:48:40', '2020-04-21 14:48:40', '0', '0');
INSERT INTO `posts` VALUES ('621', '11', '251', '2020-04-21', '1', '2020-04-21 14:48:40', '2020-04-21 14:48:40', '0', '0');
INSERT INTO `posts` VALUES ('622', '11', '252', '2020-04-21', '1', '2020-04-21 14:48:40', '2020-04-21 14:48:40', '0', '0');
INSERT INTO `posts` VALUES ('623', '11', '253', '2020-04-21', '1', '2020-04-21 14:48:40', '2020-04-21 14:48:40', '0', '0');
INSERT INTO `posts` VALUES ('624', '11', '254', '2020-04-21', '1', '2020-04-21 14:48:40', '2020-04-21 14:48:40', '0', '0');
INSERT INTO `posts` VALUES ('625', '11', '255', '2020-04-21', '1', '2020-04-21 14:48:40', '2020-04-21 14:48:40', '0', '0');
INSERT INTO `posts` VALUES ('626', '11', '256', '2020-04-21', '1', '2020-04-21 14:48:40', '2020-04-21 14:48:40', '0', '0');
INSERT INTO `posts` VALUES ('627', '11', '257', '2020-04-21', '1', '2020-04-21 14:48:40', '2020-04-21 14:48:40', '0', '0');
INSERT INTO `posts` VALUES ('628', '11', '258', '2020-04-21', '1', '2020-04-21 14:48:41', '2020-04-21 14:48:41', '0', '0');
INSERT INTO `posts` VALUES ('629', '11', '259', '2020-04-21', '1', '2020-04-21 14:48:41', '2020-04-21 14:48:41', '0', '0');
INSERT INTO `posts` VALUES ('630', '11', '260', '2020-04-21', '1', '2020-04-21 14:48:41', '2020-04-21 14:48:41', '0', '0');
INSERT INTO `posts` VALUES ('631', '11', '262', '2020-04-21', '1', '2020-04-21 14:48:41', '2020-04-21 14:48:41', '0', '0');
INSERT INTO `posts` VALUES ('632', '11', '263', '2020-04-21', '1', '2020-04-21 14:48:41', '2020-04-21 14:48:41', '0', '0');
INSERT INTO `posts` VALUES ('633', '11', '264', '2020-04-21', '1', '2020-04-21 14:48:41', '2020-04-21 14:48:41', '0', '0');
INSERT INTO `posts` VALUES ('634', '11', '265', '2020-04-21', '1', '2020-04-21 14:48:41', '2020-04-21 14:48:41', '0', '0');
INSERT INTO `posts` VALUES ('635', '11', '266', '2020-04-21', '1', '2020-04-21 14:48:41', '2020-04-21 14:48:41', '0', '0');
INSERT INTO `posts` VALUES ('636', '11', '267', '2020-04-21', '1', '2020-04-21 14:48:41', '2020-04-21 14:48:41', '0', '0');
INSERT INTO `posts` VALUES ('637', '11', '268', '2020-04-21', '1', '2020-04-21 14:48:41', '2020-04-21 14:48:41', '0', '0');
INSERT INTO `posts` VALUES ('638', '11', '269', '2020-04-21', '1', '2020-04-21 14:48:41', '2020-04-21 14:48:41', '0', '0');
INSERT INTO `posts` VALUES ('639', '11', '270', '2020-04-21', '1', '2020-04-21 14:48:41', '2020-04-21 14:48:41', '0', '0');
INSERT INTO `posts` VALUES ('640', '11', '271', '2020-04-21', '1', '2020-04-21 14:48:41', '2020-04-21 14:48:41', '0', '0');
INSERT INTO `posts` VALUES ('641', '11', '272', '2020-04-21', '1', '2020-04-21 14:48:41', '2020-04-21 14:48:41', '0', '0');
INSERT INTO `posts` VALUES ('642', '11', '273', '2020-04-21', '1', '2020-04-21 14:48:42', '2020-04-21 14:48:42', '0', '0');
INSERT INTO `posts` VALUES ('643', '11', '274', '2020-04-21', '1', '2020-04-21 14:48:42', '2020-04-21 14:48:42', '0', '0');
INSERT INTO `posts` VALUES ('644', '11', '275', '2020-04-21', '1', '2020-04-21 14:48:42', '2020-04-21 14:48:42', '0', '0');
INSERT INTO `posts` VALUES ('645', '11', '276', '2020-04-21', '1', '2020-04-21 14:48:42', '2020-04-21 14:48:42', '0', '0');
INSERT INTO `posts` VALUES ('646', '11', '277', '2020-04-21', '1', '2020-04-21 14:48:42', '2020-04-21 14:48:42', '0', '0');
INSERT INTO `posts` VALUES ('647', '11', '278', '2020-04-21', '1', '2020-04-21 14:48:42', '2020-04-21 14:48:42', '0', '0');
INSERT INTO `posts` VALUES ('648', '11', '279', '2020-04-21', '1', '2020-04-21 14:48:42', '2020-04-21 14:48:42', '0', '0');
INSERT INTO `posts` VALUES ('649', '11', '280', '2020-04-21', '1', '2020-04-21 14:48:43', '2020-04-21 14:48:43', '0', '0');
INSERT INTO `posts` VALUES ('650', '11', '281', '2020-04-21', '1', '2020-04-21 14:48:43', '2020-04-21 14:48:43', '0', '0');
INSERT INTO `posts` VALUES ('651', '11', '282', '2020-04-21', '1', '2020-04-21 14:48:43', '2020-04-21 14:48:43', '0', '0');
INSERT INTO `posts` VALUES ('652', '11', '287', '2020-04-21', '1', '2020-04-21 14:48:43', '2020-04-21 14:48:43', '0', '0');
INSERT INTO `posts` VALUES ('653', '11', '288', '2020-04-21', '1', '2020-04-21 14:48:43', '2020-04-21 14:48:43', '0', '0');
INSERT INTO `posts` VALUES ('654', '11', '289', '2020-04-21', '1', '2020-04-21 14:48:43', '2020-04-21 14:48:43', '0', '0');
INSERT INTO `posts` VALUES ('655', '11', '290', '2020-04-21', '1', '2020-04-21 14:48:43', '2020-04-21 14:48:43', '0', '0');
INSERT INTO `posts` VALUES ('656', '11', '291', '2020-04-21', '1', '2020-04-21 14:48:43', '2020-04-21 14:48:43', '0', '0');
INSERT INTO `posts` VALUES ('657', '11', '292', '2020-04-21', '1', '2020-04-21 14:48:43', '2020-04-21 14:48:43', '0', '0');
INSERT INTO `posts` VALUES ('658', '11', '293', '2020-04-21', '1', '2020-04-21 14:48:43', '2020-04-21 14:48:43', '0', '0');
INSERT INTO `posts` VALUES ('659', '11', '294', '2020-04-21', '1', '2020-04-21 14:48:43', '2020-04-21 14:48:43', '0', '0');
INSERT INTO `posts` VALUES ('660', '11', '295', '2020-04-21', '1', '2020-04-21 14:48:43', '2020-04-21 14:48:43', '0', '0');
INSERT INTO `posts` VALUES ('661', '11', '298', '2020-04-21', '1', '2020-04-21 14:48:43', '2020-04-21 14:48:43', '0', '0');
INSERT INTO `posts` VALUES ('662', '11', '300', '2020-04-21', '1', '2020-04-21 14:48:43', '2020-04-21 14:48:43', '0', '0');
INSERT INTO `posts` VALUES ('663', '11', '302', '2020-04-21', '1', '2020-04-21 14:48:43', '2020-04-21 14:48:43', '0', '0');
INSERT INTO `posts` VALUES ('664', '11', '303', '2020-04-21', '1', '2020-04-21 14:48:43', '2020-04-21 14:48:43', '0', '0');
INSERT INTO `posts` VALUES ('665', '11', '304', '2020-04-21', '1', '2020-04-21 14:48:43', '2020-04-21 14:48:43', '0', '0');
INSERT INTO `posts` VALUES ('666', '9', '305', '2020-04-21', '0', '2020-04-21 19:08:36', '2020-04-21 19:08:36', '0', '0');
INSERT INTO `posts` VALUES ('667', '10', '305', '2020-04-21', '0', '2020-04-21 19:08:36', '2020-04-21 19:08:36', '0', '0');
INSERT INTO `posts` VALUES ('668', '12', '71', '2020-04-21', '1', '2020-04-29 09:58:34', '2020-04-29 09:58:34', '0', '0');
INSERT INTO `posts` VALUES ('669', '12', '72', '2020-04-21', '1', '2020-04-29 09:58:34', '2020-04-29 09:58:34', '0', '0');
INSERT INTO `posts` VALUES ('670', '12', '73', '2020-04-21', '1', '2020-04-29 09:58:34', '2020-04-29 09:58:34', '0', '0');
INSERT INTO `posts` VALUES ('671', '12', '74', '2020-04-21', '1', '2020-04-29 09:58:34', '2020-04-29 09:58:34', '0', '0');
INSERT INTO `posts` VALUES ('672', '12', '75', '2020-04-21', '1', '2020-04-29 09:58:35', '2020-04-29 09:58:35', '0', '0');
INSERT INTO `posts` VALUES ('673', '12', '76', '2020-04-21', '1', '2020-04-29 09:58:35', '2020-04-29 09:58:35', '0', '0');
INSERT INTO `posts` VALUES ('674', '12', '77', '2020-04-21', '1', '2020-04-29 09:58:35', '2020-04-29 09:58:35', '0', '0');
INSERT INTO `posts` VALUES ('675', '12', '78', '2020-04-21', '1', '2020-04-29 09:58:35', '2020-04-29 09:58:35', '0', '0');
INSERT INTO `posts` VALUES ('676', '12', '79', '2020-04-21', '1', '2020-04-29 09:58:35', '2020-04-29 09:58:35', '0', '0');
INSERT INTO `posts` VALUES ('677', '12', '80', '2020-04-21', '1', '2020-04-29 09:58:36', '2020-04-29 09:58:36', '0', '0');
INSERT INTO `posts` VALUES ('678', '12', '101', '2020-04-21', '1', '2020-04-29 09:58:36', '2020-04-29 09:58:36', '0', '0');
INSERT INTO `posts` VALUES ('679', '12', '102', '2020-04-21', '1', '2020-04-29 09:58:36', '2020-04-29 09:58:36', '0', '0');
INSERT INTO `posts` VALUES ('680', '12', '103', '2020-04-21', '1', '2020-04-29 09:58:36', '2020-04-29 09:58:36', '0', '0');
INSERT INTO `posts` VALUES ('681', '12', '104', '2020-04-21', '1', '2020-04-29 09:58:36', '2020-04-29 09:58:36', '0', '0');
INSERT INTO `posts` VALUES ('682', '12', '105', '2020-04-21', '1', '2020-04-29 09:58:36', '2020-04-29 09:58:36', '0', '0');
INSERT INTO `posts` VALUES ('683', '12', '106', '2020-04-21', '1', '2020-04-29 09:58:36', '2020-04-29 09:58:36', '0', '0');
INSERT INTO `posts` VALUES ('684', '12', '107', '2020-04-21', '1', '2020-04-29 09:58:36', '2020-04-29 09:58:36', '0', '0');
INSERT INTO `posts` VALUES ('685', '12', '108', '2020-04-21', '1', '2020-04-29 09:58:36', '2020-04-29 09:58:36', '0', '0');
INSERT INTO `posts` VALUES ('686', '12', '109', '2020-04-21', '1', '2020-04-29 09:58:36', '2020-04-29 09:58:36', '0', '0');
INSERT INTO `posts` VALUES ('687', '12', '110', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('688', '12', '111', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('689', '12', '112', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('690', '12', '113', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('691', '12', '114', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('692', '12', '115', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('693', '12', '116', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('694', '12', '117', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('695', '12', '118', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('696', '12', '119', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('697', '12', '120', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('698', '12', '121', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('699', '12', '122', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('700', '12', '123', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('701', '12', '124', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('702', '12', '125', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('703', '12', '126', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('704', '12', '127', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('705', '12', '128', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('706', '12', '129', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('707', '12', '130', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('708', '12', '131', '2020-04-21', '1', '2020-04-29 09:58:37', '2020-04-29 09:58:37', '0', '0');
INSERT INTO `posts` VALUES ('709', '12', '132', '2020-04-21', '1', '2020-04-29 09:58:38', '2020-04-29 09:58:38', '0', '0');
INSERT INTO `posts` VALUES ('710', '12', '133', '2020-04-21', '1', '2020-04-29 09:58:38', '2020-04-29 09:58:38', '0', '0');
INSERT INTO `posts` VALUES ('711', '12', '134', '2020-04-21', '1', '2020-04-29 09:58:38', '2020-04-29 09:58:38', '0', '0');
INSERT INTO `posts` VALUES ('712', '12', '135', '2020-04-21', '1', '2020-04-29 09:58:38', '2020-04-29 09:58:38', '0', '0');
INSERT INTO `posts` VALUES ('713', '12', '137', '2020-04-21', '1', '2020-04-29 09:58:38', '2020-04-29 09:58:38', '0', '0');
INSERT INTO `posts` VALUES ('714', '12', '138', '2020-04-21', '1', '2020-04-29 09:58:38', '2020-04-29 09:58:38', '0', '0');
INSERT INTO `posts` VALUES ('715', '12', '139', '2020-04-21', '1', '2020-04-29 09:58:38', '2020-04-29 09:58:38', '0', '0');
INSERT INTO `posts` VALUES ('716', '12', '140', '2020-04-21', '1', '2020-04-29 09:58:38', '2020-04-29 09:58:38', '0', '0');
INSERT INTO `posts` VALUES ('717', '12', '141', '2020-04-21', '1', '2020-04-29 09:58:38', '2020-04-29 09:58:38', '0', '0');
INSERT INTO `posts` VALUES ('718', '12', '142', '2020-04-21', '1', '2020-04-29 09:58:38', '2020-04-29 09:58:38', '0', '0');
INSERT INTO `posts` VALUES ('719', '12', '143', '2020-04-21', '1', '2020-04-29 09:58:38', '2020-04-29 09:58:38', '0', '0');
INSERT INTO `posts` VALUES ('720', '12', '144', '2020-04-21', '1', '2020-04-29 09:58:38', '2020-04-29 09:58:38', '0', '0');
INSERT INTO `posts` VALUES ('721', '12', '145', '2020-04-21', '1', '2020-04-29 09:58:38', '2020-04-29 09:58:38', '0', '0');
INSERT INTO `posts` VALUES ('722', '12', '146', '2020-04-21', '1', '2020-04-29 09:58:38', '2020-04-29 09:58:38', '0', '0');
INSERT INTO `posts` VALUES ('723', '12', '147', '2020-04-21', '1', '2020-04-29 09:58:38', '2020-04-29 09:58:38', '0', '0');
INSERT INTO `posts` VALUES ('724', '12', '148', '2020-04-21', '1', '2020-04-29 09:58:38', '2020-04-29 09:58:38', '0', '0');
INSERT INTO `posts` VALUES ('725', '12', '149', '2020-04-21', '1', '2020-04-29 09:58:39', '2020-04-29 09:58:39', '0', '0');
INSERT INTO `posts` VALUES ('726', '12', '150', '2020-04-21', '1', '2020-04-29 09:58:39', '2020-04-29 09:58:39', '0', '0');
INSERT INTO `posts` VALUES ('727', '12', '151', '2020-04-21', '1', '2020-04-29 09:58:39', '2020-04-29 09:58:39', '0', '0');
INSERT INTO `posts` VALUES ('728', '12', '152', '2020-04-21', '1', '2020-04-29 09:58:39', '2020-04-29 09:58:39', '0', '0');
INSERT INTO `posts` VALUES ('729', '12', '153', '2020-04-21', '1', '2020-04-29 09:58:39', '2020-04-29 09:58:39', '0', '0');
INSERT INTO `posts` VALUES ('730', '12', '154', '2020-04-21', '1', '2020-04-29 09:58:39', '2020-04-29 09:58:39', '0', '0');
INSERT INTO `posts` VALUES ('731', '12', '155', '2020-04-21', '1', '2020-04-29 09:58:39', '2020-04-29 09:58:39', '0', '0');
INSERT INTO `posts` VALUES ('732', '12', '156', '2020-04-21', '1', '2020-04-29 09:58:39', '2020-04-29 09:58:39', '0', '0');
INSERT INTO `posts` VALUES ('733', '12', '157', '2020-04-21', '1', '2020-04-29 09:58:39', '2020-04-29 09:58:39', '0', '0');
INSERT INTO `posts` VALUES ('734', '12', '158', '2020-04-21', '1', '2020-04-29 09:58:39', '2020-04-29 09:58:39', '0', '0');
INSERT INTO `posts` VALUES ('735', '12', '159', '2020-04-21', '1', '2020-04-29 09:58:39', '2020-04-29 09:58:39', '0', '0');
INSERT INTO `posts` VALUES ('736', '12', '160', '2020-04-21', '1', '2020-04-29 09:58:39', '2020-04-29 09:58:39', '0', '0');
INSERT INTO `posts` VALUES ('737', '12', '161', '2020-04-21', '1', '2020-04-29 09:58:39', '2020-04-29 09:58:39', '0', '0');
INSERT INTO `posts` VALUES ('738', '12', '180', '2020-04-21', '1', '2020-04-29 09:58:39', '2020-04-29 09:58:39', '0', '0');
INSERT INTO `posts` VALUES ('739', '12', '181', '2020-04-21', '1', '2020-04-29 09:58:39', '2020-04-29 09:58:39', '0', '0');
INSERT INTO `posts` VALUES ('740', '12', '182', '2020-04-21', '1', '2020-04-29 09:58:39', '2020-04-29 09:58:39', '0', '0');
INSERT INTO `posts` VALUES ('741', '12', '183', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('742', '12', '184', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('743', '12', '185', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('744', '12', '186', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('745', '12', '187', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('746', '12', '188', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('747', '12', '189', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('748', '12', '190', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('749', '12', '191', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('750', '12', '192', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('751', '12', '193', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('752', '12', '194', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('753', '12', '195', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('754', '12', '196', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('755', '12', '197', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('756', '12', '198', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('757', '12', '199', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('758', '12', '200', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('759', '12', '201', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('760', '12', '202', '2020-04-21', '1', '2020-04-29 09:58:40', '2020-04-29 09:58:40', '0', '0');
INSERT INTO `posts` VALUES ('761', '12', '203', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('762', '12', '204', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('763', '12', '205', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('764', '12', '206', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('765', '12', '207', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('766', '12', '208', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('767', '12', '209', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('768', '12', '210', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('769', '12', '211', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('770', '12', '212', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('771', '12', '213', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('772', '12', '214', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('773', '12', '215', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('774', '12', '216', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('775', '12', '217', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('776', '12', '218', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('777', '12', '219', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('778', '12', '220', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('779', '12', '221', '2020-04-21', '1', '2020-04-29 09:58:41', '2020-04-29 09:58:41', '0', '0');
INSERT INTO `posts` VALUES ('780', '12', '222', '2020-04-21', '1', '2020-04-29 09:58:42', '2020-04-29 09:58:42', '0', '0');
INSERT INTO `posts` VALUES ('781', '12', '223', '2020-04-21', '1', '2020-04-29 09:58:42', '2020-04-29 09:58:42', '0', '0');
INSERT INTO `posts` VALUES ('782', '12', '224', '2020-04-21', '1', '2020-04-29 09:58:42', '2020-04-29 09:58:42', '0', '0');
INSERT INTO `posts` VALUES ('783', '12', '225', '2020-04-21', '1', '2020-04-29 09:58:42', '2020-04-29 09:58:42', '0', '0');
INSERT INTO `posts` VALUES ('784', '12', '226', '2020-04-21', '1', '2020-04-29 09:58:42', '2020-04-29 09:58:42', '0', '0');
INSERT INTO `posts` VALUES ('785', '12', '227', '2020-04-21', '1', '2020-04-29 09:58:42', '2020-04-29 09:58:42', '0', '0');
INSERT INTO `posts` VALUES ('786', '12', '228', '2020-04-21', '1', '2020-04-29 09:58:42', '2020-04-29 09:58:42', '0', '0');
INSERT INTO `posts` VALUES ('787', '12', '229', '2020-04-21', '1', '2020-04-29 09:58:42', '2020-04-29 09:58:42', '0', '0');
INSERT INTO `posts` VALUES ('788', '12', '230', '2020-04-21', '1', '2020-04-29 09:58:42', '2020-04-29 09:58:42', '0', '0');
INSERT INTO `posts` VALUES ('789', '12', '231', '2020-04-21', '1', '2020-04-29 09:58:42', '2020-04-29 09:58:42', '0', '0');
INSERT INTO `posts` VALUES ('790', '12', '232', '2020-04-21', '1', '2020-04-29 09:58:42', '2020-04-29 09:58:42', '0', '0');
INSERT INTO `posts` VALUES ('791', '12', '233', '2020-04-21', '1', '2020-04-29 09:58:42', '2020-04-29 09:58:42', '0', '0');
INSERT INTO `posts` VALUES ('792', '12', '234', '2020-04-21', '1', '2020-04-29 09:58:42', '2020-04-29 09:58:42', '0', '0');
INSERT INTO `posts` VALUES ('793', '12', '235', '2020-04-21', '1', '2020-04-29 09:58:42', '2020-04-29 09:58:42', '0', '0');
INSERT INTO `posts` VALUES ('794', '12', '236', '2020-04-21', '1', '2020-04-29 09:58:42', '2020-04-29 09:58:42', '0', '0');
INSERT INTO `posts` VALUES ('795', '12', '237', '2020-04-21', '1', '2020-04-29 09:58:42', '2020-04-29 09:58:42', '0', '0');
INSERT INTO `posts` VALUES ('796', '12', '238', '2020-04-21', '1', '2020-04-29 09:58:43', '2020-04-29 09:58:43', '0', '0');
INSERT INTO `posts` VALUES ('797', '12', '239', '2020-04-21', '1', '2020-04-29 09:58:43', '2020-04-29 09:58:43', '0', '0');
INSERT INTO `posts` VALUES ('798', '12', '240', '2020-04-21', '1', '2020-04-29 09:58:43', '2020-04-29 09:58:43', '0', '0');
INSERT INTO `posts` VALUES ('799', '12', '241', '2020-04-21', '1', '2020-04-29 09:58:43', '2020-04-29 09:58:43', '0', '0');
INSERT INTO `posts` VALUES ('800', '12', '244', '2020-04-21', '1', '2020-04-29 09:58:43', '2020-04-29 09:58:43', '0', '0');
INSERT INTO `posts` VALUES ('801', '12', '245', '2020-04-21', '1', '2020-04-29 09:58:43', '2020-04-29 09:58:43', '0', '0');
INSERT INTO `posts` VALUES ('802', '12', '246', '2020-04-21', '1', '2020-04-29 09:58:43', '2020-04-29 09:58:43', '0', '0');
INSERT INTO `posts` VALUES ('803', '12', '247', '2020-04-21', '1', '2020-04-29 09:58:43', '2020-04-29 09:58:43', '0', '0');
INSERT INTO `posts` VALUES ('804', '12', '248', '2020-04-21', '1', '2020-04-29 09:58:43', '2020-04-29 09:58:43', '0', '0');
INSERT INTO `posts` VALUES ('805', '12', '250', '2020-04-21', '1', '2020-04-29 09:58:43', '2020-04-29 09:58:43', '0', '0');
INSERT INTO `posts` VALUES ('806', '12', '251', '2020-04-21', '1', '2020-04-29 09:58:43', '2020-04-29 09:58:43', '0', '0');
INSERT INTO `posts` VALUES ('807', '12', '252', '2020-04-21', '1', '2020-04-29 09:58:43', '2020-04-29 09:58:43', '0', '0');
INSERT INTO `posts` VALUES ('808', '12', '253', '2020-04-21', '1', '2020-04-29 09:58:43', '2020-04-29 09:58:43', '0', '0');
INSERT INTO `posts` VALUES ('809', '12', '254', '2020-04-21', '1', '2020-04-29 09:58:44', '2020-04-29 09:58:44', '0', '0');
INSERT INTO `posts` VALUES ('810', '12', '255', '2020-04-21', '1', '2020-04-29 09:58:44', '2020-04-29 09:58:44', '0', '0');
INSERT INTO `posts` VALUES ('811', '12', '256', '2020-04-21', '1', '2020-04-29 09:58:44', '2020-04-29 09:58:44', '0', '0');
INSERT INTO `posts` VALUES ('812', '12', '257', '2020-04-21', '1', '2020-04-29 09:58:44', '2020-04-29 09:58:44', '0', '0');
INSERT INTO `posts` VALUES ('813', '12', '258', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('814', '12', '259', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('815', '12', '260', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('816', '12', '262', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('817', '12', '263', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('818', '12', '264', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('819', '12', '265', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('820', '12', '266', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('821', '12', '267', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('822', '12', '268', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('823', '12', '269', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('824', '12', '270', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('825', '12', '271', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('826', '12', '272', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('827', '12', '273', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('828', '12', '274', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('829', '12', '275', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('830', '12', '276', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('831', '12', '277', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('832', '12', '278', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('833', '12', '279', '2020-04-21', '1', '2020-04-29 09:58:45', '2020-04-29 09:58:45', '0', '0');
INSERT INTO `posts` VALUES ('834', '12', '280', '2020-04-21', '1', '2020-04-29 09:58:46', '2020-04-29 09:58:46', '0', '0');
INSERT INTO `posts` VALUES ('835', '12', '281', '2020-04-21', '1', '2020-04-29 09:58:46', '2020-04-29 09:58:46', '0', '0');
INSERT INTO `posts` VALUES ('836', '12', '282', '2020-04-21', '1', '2020-04-29 09:58:46', '2020-04-29 09:58:46', '0', '0');
INSERT INTO `posts` VALUES ('837', '12', '287', '2020-04-21', '1', '2020-04-29 09:58:46', '2020-04-29 09:58:46', '0', '0');
INSERT INTO `posts` VALUES ('838', '12', '288', '2020-04-21', '1', '2020-04-29 09:58:46', '2020-04-29 09:58:46', '0', '0');
INSERT INTO `posts` VALUES ('839', '12', '289', '2020-04-21', '1', '2020-04-29 09:58:46', '2020-04-29 09:58:46', '0', '0');
INSERT INTO `posts` VALUES ('840', '12', '290', '2020-04-21', '1', '2020-04-29 09:58:46', '2020-04-29 09:58:46', '0', '0');
INSERT INTO `posts` VALUES ('841', '12', '291', '2020-04-21', '1', '2020-04-29 09:58:46', '2020-04-29 09:58:46', '0', '0');
INSERT INTO `posts` VALUES ('842', '12', '292', '2020-04-21', '1', '2020-04-29 09:58:46', '2020-04-29 09:58:46', '0', '0');
INSERT INTO `posts` VALUES ('843', '12', '293', '2020-04-21', '1', '2020-04-29 09:58:46', '2020-04-29 09:58:46', '0', '0');
INSERT INTO `posts` VALUES ('844', '12', '294', '2020-04-21', '1', '2020-04-29 09:58:46', '2020-04-29 09:58:46', '0', '0');
INSERT INTO `posts` VALUES ('845', '12', '295', '2020-04-21', '1', '2020-04-29 09:58:46', '2020-04-29 09:58:46', '0', '0');
INSERT INTO `posts` VALUES ('846', '12', '298', '2020-04-21', '1', '2020-04-29 09:58:46', '2020-04-29 09:58:46', '0', '0');
INSERT INTO `posts` VALUES ('847', '12', '300', '2020-04-21', '1', '2020-04-29 09:58:46', '2020-04-29 09:58:46', '0', '0');
INSERT INTO `posts` VALUES ('848', '12', '302', '2020-04-21', '1', '2020-04-29 09:58:46', '2020-04-29 09:58:46', '0', '0');
INSERT INTO `posts` VALUES ('849', '12', '303', '2020-04-21', '1', '2020-04-29 09:58:46', '2020-04-29 09:58:46', '0', '0');
INSERT INTO `posts` VALUES ('850', '12', '304', '2020-04-21', '1', '2020-04-29 09:58:46', '2020-04-29 09:58:46', '0', '0');
INSERT INTO `posts` VALUES ('851', '12', '305', '2020-04-21', '1', '2020-04-29 09:58:46', '2020-04-29 09:58:46', '0', '0');
INSERT INTO `posts` VALUES ('852', '14', '71', '2020-04-21', '1', '2020-06-03 16:18:58', '2020-06-03 16:18:58', '0', '0');
INSERT INTO `posts` VALUES ('853', '14', '72', '2020-04-21', '1', '2020-06-03 16:18:58', '2020-06-03 16:18:58', '0', '0');
INSERT INTO `posts` VALUES ('854', '14', '73', '2020-04-21', '1', '2020-06-03 16:18:58', '2020-06-03 16:18:58', '0', '0');
INSERT INTO `posts` VALUES ('855', '14', '74', '2020-04-21', '1', '2020-06-03 16:18:58', '2020-06-03 16:18:58', '0', '0');
INSERT INTO `posts` VALUES ('856', '14', '75', '2020-04-21', '1', '2020-06-03 16:18:58', '2020-06-03 16:18:58', '0', '0');
INSERT INTO `posts` VALUES ('857', '14', '76', '2020-04-21', '1', '2020-06-03 16:18:58', '2020-06-03 16:18:58', '0', '0');
INSERT INTO `posts` VALUES ('858', '14', '77', '2020-04-21', '1', '2020-06-03 16:18:58', '2020-06-03 16:18:58', '0', '0');
INSERT INTO `posts` VALUES ('859', '14', '78', '2020-04-21', '1', '2020-06-03 16:18:58', '2020-06-03 16:18:58', '0', '0');
INSERT INTO `posts` VALUES ('860', '14', '79', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('861', '14', '80', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('862', '14', '101', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('863', '14', '102', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('864', '14', '103', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('865', '14', '104', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('866', '14', '105', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('867', '14', '106', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('868', '14', '107', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('869', '14', '108', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('870', '14', '109', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('871', '14', '110', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('872', '14', '111', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('873', '14', '112', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('874', '14', '113', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('875', '14', '114', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('876', '14', '115', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('877', '14', '116', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('878', '14', '117', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('879', '14', '118', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('880', '14', '119', '2020-04-21', '1', '2020-06-03 16:18:59', '2020-06-03 16:18:59', '0', '0');
INSERT INTO `posts` VALUES ('881', '14', '120', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('882', '14', '121', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('883', '14', '122', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('884', '14', '123', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('885', '14', '124', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('886', '14', '125', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('887', '14', '126', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('888', '14', '127', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('889', '14', '128', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('890', '14', '129', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('891', '14', '130', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('892', '14', '131', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('893', '14', '132', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('894', '14', '133', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('895', '14', '134', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('896', '14', '135', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('897', '14', '137', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('898', '14', '138', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('899', '14', '139', '2020-04-21', '1', '2020-06-03 16:19:00', '2020-06-03 16:19:00', '0', '0');
INSERT INTO `posts` VALUES ('900', '14', '140', '2020-04-21', '1', '2020-06-03 16:19:01', '2020-06-03 16:19:01', '0', '0');
INSERT INTO `posts` VALUES ('901', '14', '141', '2020-04-21', '1', '2020-06-03 16:19:01', '2020-06-03 16:19:01', '0', '0');
INSERT INTO `posts` VALUES ('902', '14', '142', '2020-04-21', '1', '2020-06-03 16:19:01', '2020-06-03 16:19:01', '0', '0');
INSERT INTO `posts` VALUES ('903', '14', '143', '2020-04-21', '1', '2020-06-03 16:19:01', '2020-06-03 16:19:01', '0', '0');
INSERT INTO `posts` VALUES ('904', '14', '144', '2020-04-21', '1', '2020-06-03 16:19:01', '2020-06-03 16:19:01', '0', '0');
INSERT INTO `posts` VALUES ('905', '14', '145', '2020-04-21', '1', '2020-06-03 16:19:01', '2020-06-03 16:19:01', '0', '0');
INSERT INTO `posts` VALUES ('906', '14', '146', '2020-04-21', '1', '2020-06-03 16:19:01', '2020-06-03 16:19:01', '0', '0');
INSERT INTO `posts` VALUES ('907', '14', '147', '2020-04-21', '1', '2020-06-03 16:19:01', '2020-06-03 16:19:01', '0', '0');
INSERT INTO `posts` VALUES ('908', '14', '148', '2020-04-21', '1', '2020-06-03 16:19:01', '2020-06-03 16:19:01', '0', '0');
INSERT INTO `posts` VALUES ('909', '14', '149', '2020-04-21', '1', '2020-06-03 16:19:01', '2020-06-03 16:19:01', '0', '0');
INSERT INTO `posts` VALUES ('910', '14', '150', '2020-04-21', '1', '2020-06-03 16:19:01', '2020-06-03 16:19:01', '0', '0');
INSERT INTO `posts` VALUES ('911', '14', '151', '2020-04-21', '1', '2020-06-03 16:19:01', '2020-06-03 16:19:01', '0', '0');
INSERT INTO `posts` VALUES ('912', '14', '152', '2020-04-21', '1', '2020-06-03 16:19:01', '2020-06-03 16:19:01', '0', '0');
INSERT INTO `posts` VALUES ('913', '14', '153', '2020-04-21', '1', '2020-06-03 16:19:01', '2020-06-03 16:19:01', '0', '0');
INSERT INTO `posts` VALUES ('914', '14', '154', '2020-04-21', '1', '2020-06-03 16:19:02', '2020-06-03 16:19:02', '0', '0');
INSERT INTO `posts` VALUES ('915', '14', '155', '2020-04-21', '1', '2020-06-03 16:19:02', '2020-06-03 16:19:02', '0', '0');
INSERT INTO `posts` VALUES ('916', '14', '156', '2020-04-21', '1', '2020-06-03 16:19:02', '2020-06-03 16:19:02', '0', '0');
INSERT INTO `posts` VALUES ('917', '14', '157', '2020-04-21', '1', '2020-06-03 16:19:02', '2020-06-03 16:19:02', '0', '0');
INSERT INTO `posts` VALUES ('918', '14', '158', '2020-04-21', '1', '2020-06-03 16:19:02', '2020-06-03 16:19:02', '0', '0');
INSERT INTO `posts` VALUES ('919', '14', '159', '2020-04-21', '1', '2020-06-03 16:19:02', '2020-06-03 16:19:02', '0', '0');
INSERT INTO `posts` VALUES ('920', '14', '160', '2020-04-21', '1', '2020-06-03 16:19:02', '2020-06-03 16:19:02', '0', '0');
INSERT INTO `posts` VALUES ('921', '14', '161', '2020-04-21', '1', '2020-06-03 16:19:02', '2020-06-03 16:19:02', '0', '0');
INSERT INTO `posts` VALUES ('922', '14', '180', '2020-04-21', '1', '2020-06-03 16:19:02', '2020-06-03 16:19:02', '0', '0');
INSERT INTO `posts` VALUES ('923', '14', '181', '2020-04-21', '1', '2020-06-03 16:19:02', '2020-06-03 16:19:02', '0', '0');
INSERT INTO `posts` VALUES ('924', '14', '182', '2020-04-21', '1', '2020-06-03 16:19:03', '2020-06-03 16:19:03', '0', '0');
INSERT INTO `posts` VALUES ('925', '14', '183', '2020-04-21', '1', '2020-06-03 16:19:03', '2020-06-03 16:19:03', '0', '0');
INSERT INTO `posts` VALUES ('926', '14', '184', '2020-04-21', '1', '2020-06-03 16:19:03', '2020-06-03 16:19:03', '0', '0');
INSERT INTO `posts` VALUES ('927', '14', '185', '2020-04-21', '1', '2020-06-03 16:19:03', '2020-06-03 16:19:03', '0', '0');
INSERT INTO `posts` VALUES ('928', '14', '186', '2020-04-21', '1', '2020-06-03 16:19:03', '2020-06-03 16:19:03', '0', '0');
INSERT INTO `posts` VALUES ('929', '14', '187', '2020-04-21', '1', '2020-06-03 16:19:03', '2020-06-03 16:19:03', '0', '0');
INSERT INTO `posts` VALUES ('930', '14', '188', '2020-04-21', '1', '2020-06-03 16:19:03', '2020-06-03 16:19:03', '0', '0');
INSERT INTO `posts` VALUES ('931', '14', '189', '2020-04-21', '1', '2020-06-03 16:19:03', '2020-06-03 16:19:03', '0', '0');
INSERT INTO `posts` VALUES ('932', '14', '190', '2020-04-21', '1', '2020-06-03 16:19:03', '2020-06-03 16:19:03', '0', '0');
INSERT INTO `posts` VALUES ('933', '14', '191', '2020-04-21', '1', '2020-06-03 16:19:03', '2020-06-03 16:19:03', '0', '0');
INSERT INTO `posts` VALUES ('934', '14', '192', '2020-04-21', '1', '2020-06-03 16:19:03', '2020-06-03 16:19:03', '0', '0');
INSERT INTO `posts` VALUES ('935', '14', '193', '2020-04-21', '1', '2020-06-03 16:19:03', '2020-06-03 16:19:03', '0', '0');
INSERT INTO `posts` VALUES ('936', '14', '194', '2020-04-21', '1', '2020-06-03 16:19:03', '2020-06-03 16:19:03', '0', '0');
INSERT INTO `posts` VALUES ('937', '14', '195', '2020-04-21', '1', '2020-06-03 16:19:03', '2020-06-03 16:19:03', '0', '0');
INSERT INTO `posts` VALUES ('938', '14', '196', '2020-04-21', '1', '2020-06-03 16:19:03', '2020-06-03 16:19:03', '0', '0');
INSERT INTO `posts` VALUES ('939', '14', '197', '2020-04-21', '1', '2020-06-03 16:19:04', '2020-06-03 16:19:04', '0', '0');
INSERT INTO `posts` VALUES ('940', '14', '198', '2020-04-21', '1', '2020-06-03 16:19:04', '2020-06-03 16:19:04', '0', '0');
INSERT INTO `posts` VALUES ('941', '14', '199', '2020-04-21', '1', '2020-06-03 16:19:04', '2020-06-03 16:19:04', '0', '0');
INSERT INTO `posts` VALUES ('942', '14', '200', '2020-04-21', '1', '2020-06-03 16:19:04', '2020-06-03 16:19:04', '0', '0');
INSERT INTO `posts` VALUES ('943', '14', '201', '2020-04-21', '1', '2020-06-03 16:19:04', '2020-06-03 16:19:04', '0', '0');
INSERT INTO `posts` VALUES ('944', '14', '202', '2020-04-21', '1', '2020-06-03 16:19:04', '2020-06-03 16:19:04', '0', '0');
INSERT INTO `posts` VALUES ('945', '14', '203', '2020-04-21', '1', '2020-06-03 16:19:04', '2020-06-03 16:19:04', '0', '0');
INSERT INTO `posts` VALUES ('946', '14', '204', '2020-04-21', '1', '2020-06-03 16:19:04', '2020-06-03 16:19:04', '0', '0');
INSERT INTO `posts` VALUES ('947', '14', '205', '2020-04-21', '1', '2020-06-03 16:19:04', '2020-06-03 16:19:04', '0', '0');
INSERT INTO `posts` VALUES ('948', '14', '206', '2020-04-21', '1', '2020-06-03 16:19:04', '2020-06-03 16:19:04', '0', '0');
INSERT INTO `posts` VALUES ('949', '14', '207', '2020-04-21', '1', '2020-06-03 16:19:04', '2020-06-03 16:19:04', '0', '0');
INSERT INTO `posts` VALUES ('950', '14', '208', '2020-04-21', '1', '2020-06-03 16:19:04', '2020-06-03 16:19:04', '0', '0');
INSERT INTO `posts` VALUES ('951', '14', '209', '2020-04-21', '1', '2020-06-03 16:19:04', '2020-06-03 16:19:04', '0', '0');
INSERT INTO `posts` VALUES ('952', '14', '210', '2020-04-21', '1', '2020-06-03 16:19:05', '2020-06-03 16:19:05', '0', '0');
INSERT INTO `posts` VALUES ('953', '14', '211', '2020-04-21', '1', '2020-06-03 16:19:05', '2020-06-03 16:19:05', '0', '0');
INSERT INTO `posts` VALUES ('954', '14', '212', '2020-04-21', '1', '2020-06-03 16:19:05', '2020-06-03 16:19:05', '0', '0');
INSERT INTO `posts` VALUES ('955', '14', '213', '2020-04-21', '1', '2020-06-03 16:19:05', '2020-06-03 16:19:05', '0', '0');
INSERT INTO `posts` VALUES ('956', '14', '214', '2020-04-21', '1', '2020-06-03 16:19:05', '2020-06-03 16:19:05', '0', '0');
INSERT INTO `posts` VALUES ('957', '14', '215', '2020-04-21', '1', '2020-06-03 16:19:05', '2020-06-03 16:19:05', '0', '0');
INSERT INTO `posts` VALUES ('958', '14', '216', '2020-04-21', '1', '2020-06-03 16:19:05', '2020-06-03 16:19:05', '0', '0');
INSERT INTO `posts` VALUES ('959', '14', '217', '2020-04-21', '1', '2020-06-03 16:19:05', '2020-06-03 16:19:05', '0', '0');
INSERT INTO `posts` VALUES ('960', '14', '218', '2020-04-21', '1', '2020-06-03 16:19:05', '2020-06-03 16:19:05', '0', '0');
INSERT INTO `posts` VALUES ('961', '14', '219', '2020-04-21', '1', '2020-06-03 16:19:05', '2020-06-03 16:19:05', '0', '0');
INSERT INTO `posts` VALUES ('962', '14', '220', '2020-04-21', '1', '2020-06-03 16:19:05', '2020-06-03 16:19:05', '0', '0');
INSERT INTO `posts` VALUES ('963', '14', '221', '2020-04-21', '1', '2020-06-03 16:19:05', '2020-06-03 16:19:05', '0', '0');
INSERT INTO `posts` VALUES ('964', '14', '222', '2020-04-21', '1', '2020-06-03 16:19:05', '2020-06-03 16:19:05', '0', '0');
INSERT INTO `posts` VALUES ('965', '14', '223', '2020-04-21', '1', '2020-06-03 16:19:06', '2020-06-03 16:19:06', '0', '0');
INSERT INTO `posts` VALUES ('966', '14', '224', '2020-04-21', '1', '2020-06-03 16:19:06', '2020-06-03 16:19:06', '0', '0');
INSERT INTO `posts` VALUES ('967', '14', '225', '2020-04-21', '1', '2020-06-03 16:19:06', '2020-06-03 16:19:06', '0', '0');
INSERT INTO `posts` VALUES ('968', '14', '226', '2020-04-21', '1', '2020-06-03 16:19:06', '2020-06-03 16:19:06', '0', '0');
INSERT INTO `posts` VALUES ('969', '14', '227', '2020-04-21', '1', '2020-06-03 16:19:06', '2020-06-03 16:19:06', '0', '0');
INSERT INTO `posts` VALUES ('970', '14', '228', '2020-04-21', '1', '2020-06-03 16:19:06', '2020-06-03 16:19:06', '0', '0');
INSERT INTO `posts` VALUES ('971', '14', '229', '2020-04-21', '1', '2020-06-03 16:19:06', '2020-06-03 16:19:06', '0', '0');
INSERT INTO `posts` VALUES ('972', '14', '230', '2020-04-21', '1', '2020-06-03 16:19:06', '2020-06-03 16:19:06', '0', '0');
INSERT INTO `posts` VALUES ('973', '14', '231', '2020-04-21', '1', '2020-06-03 16:19:06', '2020-06-03 16:19:06', '0', '0');
INSERT INTO `posts` VALUES ('974', '14', '232', '2020-04-21', '1', '2020-06-03 16:19:06', '2020-06-03 16:19:06', '0', '0');
INSERT INTO `posts` VALUES ('975', '14', '233', '2020-04-21', '1', '2020-06-03 16:19:06', '2020-06-03 16:19:06', '0', '0');
INSERT INTO `posts` VALUES ('976', '14', '234', '2020-04-21', '1', '2020-06-03 16:19:06', '2020-06-03 16:19:06', '0', '0');
INSERT INTO `posts` VALUES ('977', '14', '235', '2020-04-21', '1', '2020-06-03 16:19:06', '2020-06-03 16:19:06', '0', '0');
INSERT INTO `posts` VALUES ('978', '14', '236', '2020-04-21', '1', '2020-06-03 16:19:06', '2020-06-03 16:19:06', '0', '0');
INSERT INTO `posts` VALUES ('979', '14', '237', '2020-04-21', '1', '2020-06-03 16:19:07', '2020-06-03 16:19:07', '0', '0');
INSERT INTO `posts` VALUES ('980', '14', '238', '2020-04-21', '1', '2020-06-03 16:19:07', '2020-06-03 16:19:07', '0', '0');
INSERT INTO `posts` VALUES ('981', '14', '239', '2020-04-21', '1', '2020-06-03 16:19:07', '2020-06-03 16:19:07', '0', '0');
INSERT INTO `posts` VALUES ('982', '14', '240', '2020-04-21', '1', '2020-06-03 16:19:07', '2020-06-03 16:19:07', '0', '0');
INSERT INTO `posts` VALUES ('983', '14', '241', '2020-04-21', '1', '2020-06-03 16:19:07', '2020-06-03 16:19:07', '0', '0');
INSERT INTO `posts` VALUES ('984', '14', '244', '2020-04-21', '1', '2020-06-03 16:19:07', '2020-06-03 16:19:07', '0', '0');
INSERT INTO `posts` VALUES ('985', '14', '245', '2020-04-21', '1', '2020-06-03 16:19:07', '2020-06-03 16:19:07', '0', '0');
INSERT INTO `posts` VALUES ('986', '14', '246', '2020-04-21', '1', '2020-06-03 16:19:07', '2020-06-03 16:19:07', '0', '0');
INSERT INTO `posts` VALUES ('987', '14', '247', '2020-04-21', '1', '2020-06-03 16:19:07', '2020-06-03 16:19:07', '0', '0');
INSERT INTO `posts` VALUES ('988', '14', '248', '2020-04-21', '1', '2020-06-03 16:19:07', '2020-06-03 16:19:07', '0', '0');
INSERT INTO `posts` VALUES ('989', '14', '250', '2020-04-21', '1', '2020-06-03 16:19:07', '2020-06-03 16:19:07', '0', '0');
INSERT INTO `posts` VALUES ('990', '14', '251', '2020-04-21', '1', '2020-06-03 16:19:07', '2020-06-03 16:19:07', '0', '0');
INSERT INTO `posts` VALUES ('991', '14', '252', '2020-04-21', '1', '2020-06-03 16:19:07', '2020-06-03 16:19:07', '0', '0');
INSERT INTO `posts` VALUES ('992', '14', '253', '2020-04-21', '1', '2020-06-03 16:19:07', '2020-06-03 16:19:07', '0', '0');
INSERT INTO `posts` VALUES ('993', '14', '254', '2020-04-21', '1', '2020-06-03 16:19:07', '2020-06-03 16:19:07', '0', '0');
INSERT INTO `posts` VALUES ('994', '14', '255', '2020-04-21', '1', '2020-06-03 16:19:08', '2020-06-03 16:19:08', '0', '0');
INSERT INTO `posts` VALUES ('995', '14', '256', '2020-04-21', '1', '2020-06-03 16:19:08', '2020-06-03 16:19:08', '0', '0');
INSERT INTO `posts` VALUES ('996', '14', '257', '2020-04-21', '1', '2020-06-03 16:19:08', '2020-06-03 16:19:08', '0', '0');
INSERT INTO `posts` VALUES ('997', '14', '258', '2020-04-21', '1', '2020-06-03 16:19:08', '2020-06-03 16:19:08', '0', '0');
INSERT INTO `posts` VALUES ('998', '14', '259', '2020-04-21', '1', '2020-06-03 16:19:08', '2020-06-03 16:19:08', '0', '0');
INSERT INTO `posts` VALUES ('999', '14', '260', '2020-04-21', '1', '2020-06-03 16:19:08', '2020-06-03 16:19:08', '0', '0');
INSERT INTO `posts` VALUES ('1000', '14', '262', '2020-04-21', '1', '2020-06-03 16:19:08', '2020-06-03 16:19:08', '0', '0');
INSERT INTO `posts` VALUES ('1001', '14', '263', '2020-04-21', '1', '2020-06-03 16:19:08', '2020-06-03 16:19:08', '0', '0');
INSERT INTO `posts` VALUES ('1002', '14', '264', '2020-04-21', '1', '2020-06-03 16:19:08', '2020-06-03 16:19:08', '0', '0');
INSERT INTO `posts` VALUES ('1003', '14', '265', '2020-04-21', '1', '2020-06-03 16:19:08', '2020-06-03 16:19:08', '0', '0');
INSERT INTO `posts` VALUES ('1004', '14', '266', '2020-04-21', '1', '2020-06-03 16:19:08', '2020-06-03 16:19:08', '0', '0');
INSERT INTO `posts` VALUES ('1005', '14', '267', '2020-04-21', '1', '2020-06-03 16:19:08', '2020-06-03 16:19:08', '0', '0');
INSERT INTO `posts` VALUES ('1006', '14', '268', '2020-04-21', '1', '2020-06-03 16:19:08', '2020-06-03 16:19:08', '0', '0');
INSERT INTO `posts` VALUES ('1007', '14', '269', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1008', '14', '270', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1009', '14', '271', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1010', '14', '272', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1011', '14', '273', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1012', '14', '274', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1013', '14', '275', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1014', '14', '276', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1015', '14', '277', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1016', '14', '278', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1017', '14', '279', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1018', '14', '280', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1019', '14', '281', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1020', '14', '282', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1021', '14', '287', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1022', '14', '288', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1023', '14', '289', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1024', '14', '290', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1025', '14', '291', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1026', '14', '292', '2020-04-21', '1', '2020-06-03 16:19:09', '2020-06-03 16:19:09', '0', '0');
INSERT INTO `posts` VALUES ('1027', '14', '293', '2020-04-21', '1', '2020-06-03 16:19:10', '2020-06-03 16:19:10', '0', '0');
INSERT INTO `posts` VALUES ('1028', '14', '294', '2020-04-21', '1', '2020-06-03 16:19:10', '2020-06-03 16:19:10', '0', '0');
INSERT INTO `posts` VALUES ('1029', '14', '295', '2020-04-21', '1', '2020-06-03 16:19:10', '2020-06-03 16:19:10', '0', '0');
INSERT INTO `posts` VALUES ('1030', '14', '298', '2020-04-21', '1', '2020-06-03 16:19:10', '2020-06-03 16:19:10', '0', '0');
INSERT INTO `posts` VALUES ('1031', '14', '300', '2020-04-21', '1', '2020-06-03 16:19:10', '2020-06-03 16:19:10', '0', '0');
INSERT INTO `posts` VALUES ('1032', '14', '302', '2020-04-21', '1', '2020-06-03 16:19:10', '2020-06-03 16:19:10', '0', '0');
INSERT INTO `posts` VALUES ('1033', '14', '303', '2020-04-21', '1', '2020-06-03 16:19:10', '2020-06-03 16:19:10', '0', '0');
INSERT INTO `posts` VALUES ('1034', '14', '304', '2020-04-21', '1', '2020-06-03 16:19:10', '2020-06-03 16:19:10', '0', '0');
INSERT INTO `posts` VALUES ('1035', '14', '305', '2020-04-21', '1', '2020-06-03 16:19:10', '2020-06-03 16:19:10', '0', '0');
INSERT INTO `posts` VALUES ('1036', '9', '306', '2020-10-27', '0', '2020-10-27 08:41:49', '2020-10-27 08:41:49', '0', '1');
INSERT INTO `posts` VALUES ('1037', '10', '306', '2020-10-27', '0', '2020-10-27 08:41:49', '2020-10-27 08:41:49', '0', '1');
INSERT INTO `posts` VALUES ('1038', '14', '306', '2020-10-27', '0', '2020-10-27 08:41:49', '2020-11-09 10:41:09', '1', '1');
INSERT INTO `posts` VALUES ('1039', '9', '307', '2020-10-27', '0', '2020-10-27 14:02:55', '2020-10-27 14:02:55', '1', '1');
INSERT INTO `posts` VALUES ('1040', '10', '307', '2020-10-27', '0', '2020-10-27 14:02:55', '2020-10-27 14:02:55', '1', '1');
INSERT INTO `posts` VALUES ('1041', '14', '307', '2020-10-27', '0', '2020-10-27 14:02:55', '2020-10-27 14:02:55', '1', '1');
INSERT INTO `posts` VALUES ('1042', '8', '71', '2020-04-21', '1', '2020-11-11 16:34:10', '2020-11-11 16:34:10', '0', '0');
INSERT INTO `posts` VALUES ('1043', '8', '72', '2020-04-21', '1', '2020-11-11 16:34:10', '2020-11-11 16:34:10', '0', '0');
INSERT INTO `posts` VALUES ('1044', '8', '73', '2020-04-21', '1', '2020-11-11 16:34:10', '2020-11-11 16:34:10', '0', '0');
INSERT INTO `posts` VALUES ('1045', '8', '74', '2020-04-21', '1', '2020-11-11 16:34:10', '2020-11-11 16:34:10', '0', '0');
INSERT INTO `posts` VALUES ('1046', '8', '75', '2020-04-21', '1', '2020-11-11 16:34:10', '2020-11-11 16:34:10', '0', '0');
INSERT INTO `posts` VALUES ('1047', '8', '76', '2020-04-21', '1', '2020-11-11 16:34:10', '2020-11-11 16:34:10', '0', '0');
INSERT INTO `posts` VALUES ('1048', '8', '77', '2020-04-21', '1', '2020-11-11 16:34:10', '2020-11-11 16:34:10', '0', '0');
INSERT INTO `posts` VALUES ('1049', '8', '78', '2020-04-21', '1', '2020-11-11 16:34:10', '2020-11-11 16:34:10', '0', '0');
INSERT INTO `posts` VALUES ('1050', '8', '79', '2020-04-21', '1', '2020-11-11 16:34:10', '2020-11-11 16:34:10', '0', '0');
INSERT INTO `posts` VALUES ('1051', '8', '80', '2020-04-21', '1', '2020-11-11 16:34:10', '2020-11-11 16:34:10', '0', '0');
INSERT INTO `posts` VALUES ('1052', '8', '101', '2020-04-21', '1', '2020-11-11 16:34:10', '2020-11-11 16:34:10', '0', '0');
INSERT INTO `posts` VALUES ('1053', '8', '102', '2020-04-21', '1', '2020-11-11 16:34:10', '2020-11-11 16:34:10', '0', '0');
INSERT INTO `posts` VALUES ('1054', '8', '103', '2020-04-21', '1', '2020-11-11 16:34:10', '2020-11-11 16:34:10', '0', '0');
INSERT INTO `posts` VALUES ('1055', '8', '104', '2020-04-21', '1', '2020-11-11 16:34:10', '2020-11-11 16:34:10', '0', '0');
INSERT INTO `posts` VALUES ('1056', '8', '105', '2020-04-21', '1', '2020-11-11 16:34:10', '2020-11-11 16:34:10', '0', '0');
INSERT INTO `posts` VALUES ('1057', '8', '106', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1058', '8', '107', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1059', '8', '108', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1060', '8', '109', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1061', '8', '110', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1062', '8', '111', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1063', '8', '112', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1064', '8', '113', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1065', '8', '114', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1066', '8', '115', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1067', '8', '116', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1068', '8', '117', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1069', '8', '118', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1070', '8', '119', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1071', '8', '120', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1072', '8', '121', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1073', '8', '122', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1074', '8', '123', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1075', '8', '124', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1076', '8', '125', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1077', '8', '126', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1078', '8', '127', '2020-04-21', '1', '2020-11-11 16:34:11', '2020-11-11 16:34:11', '0', '0');
INSERT INTO `posts` VALUES ('1079', '8', '128', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1080', '8', '129', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1081', '8', '130', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1082', '8', '131', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1083', '8', '132', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1084', '8', '133', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1085', '8', '134', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1086', '8', '135', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1087', '8', '137', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1088', '8', '138', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1089', '8', '139', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1090', '8', '140', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1091', '8', '141', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1092', '8', '142', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1093', '8', '143', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1094', '8', '144', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1095', '8', '145', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1096', '8', '146', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1097', '8', '147', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1098', '8', '148', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1099', '8', '149', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1100', '8', '150', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1101', '8', '151', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1102', '8', '152', '2020-04-21', '1', '2020-11-11 16:34:12', '2020-11-11 16:34:12', '0', '0');
INSERT INTO `posts` VALUES ('1103', '8', '153', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1104', '8', '154', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1105', '8', '155', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1106', '8', '156', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1107', '8', '157', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1108', '8', '158', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1109', '8', '159', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1110', '8', '160', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1111', '8', '161', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1112', '8', '180', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1113', '8', '181', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1114', '8', '182', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1115', '8', '183', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1116', '8', '184', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1117', '8', '185', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1118', '8', '186', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1119', '8', '187', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1120', '8', '188', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1121', '8', '189', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1122', '8', '190', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1123', '8', '191', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1124', '8', '192', '2020-04-21', '1', '2020-11-11 16:34:13', '2020-11-11 16:34:13', '0', '0');
INSERT INTO `posts` VALUES ('1125', '8', '193', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1126', '8', '194', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1127', '8', '195', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1128', '8', '196', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1129', '8', '197', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1130', '8', '198', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1131', '8', '199', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1132', '8', '200', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1133', '8', '201', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1134', '8', '202', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1135', '8', '203', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1136', '8', '204', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1137', '8', '205', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1138', '8', '206', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1139', '8', '207', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1140', '8', '208', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1141', '8', '209', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1142', '8', '210', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1143', '8', '211', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1144', '8', '212', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1145', '8', '213', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1146', '8', '214', '2020-04-21', '1', '2020-11-11 16:34:14', '2020-11-11 16:34:14', '0', '0');
INSERT INTO `posts` VALUES ('1147', '8', '215', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1148', '8', '216', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1149', '8', '217', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1150', '8', '218', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1151', '8', '219', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1152', '8', '220', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1153', '8', '221', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1154', '8', '222', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1155', '8', '223', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1156', '8', '224', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1157', '8', '225', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1158', '8', '226', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1159', '8', '227', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1160', '8', '228', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1161', '8', '229', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1162', '8', '230', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1163', '8', '231', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1164', '8', '232', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1165', '8', '233', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1166', '8', '234', '2020-04-21', '1', '2020-11-11 16:34:15', '2020-11-11 16:34:15', '0', '0');
INSERT INTO `posts` VALUES ('1167', '8', '235', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1168', '8', '236', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1169', '8', '237', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1170', '8', '238', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1171', '8', '239', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1172', '8', '240', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1173', '8', '241', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1174', '8', '244', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1175', '8', '245', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1176', '8', '246', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1177', '8', '247', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1178', '8', '248', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1179', '8', '250', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1180', '8', '251', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1181', '8', '252', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1182', '8', '253', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1183', '8', '254', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1184', '8', '255', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1185', '8', '256', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1186', '8', '257', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1187', '8', '258', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1188', '8', '259', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1189', '8', '260', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1190', '8', '262', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1191', '8', '263', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1192', '8', '264', '2020-04-21', '1', '2020-11-11 16:34:16', '2020-11-11 16:34:16', '0', '0');
INSERT INTO `posts` VALUES ('1193', '8', '265', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1194', '8', '266', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1195', '8', '267', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1196', '8', '268', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1197', '8', '269', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1198', '8', '270', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1199', '8', '271', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1200', '8', '272', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1201', '8', '273', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1202', '8', '274', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1203', '8', '275', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1204', '8', '276', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1205', '8', '277', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1206', '8', '278', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1207', '8', '279', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1208', '8', '280', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1209', '8', '281', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1210', '8', '282', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1211', '8', '287', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1212', '8', '288', '2020-04-21', '1', '2020-11-11 16:34:17', '2020-11-11 16:34:17', '0', '0');
INSERT INTO `posts` VALUES ('1213', '8', '289', '2020-04-21', '1', '2020-11-11 16:34:18', '2020-11-11 16:34:18', '0', '0');
INSERT INTO `posts` VALUES ('1214', '8', '290', '2020-04-21', '1', '2020-11-11 16:34:18', '2020-11-11 16:34:18', '0', '0');
INSERT INTO `posts` VALUES ('1215', '8', '291', '2020-04-21', '1', '2020-11-11 16:34:18', '2020-11-11 16:34:18', '0', '0');
INSERT INTO `posts` VALUES ('1216', '8', '292', '2020-04-21', '1', '2020-11-11 16:34:18', '2020-11-11 16:34:18', '0', '0');
INSERT INTO `posts` VALUES ('1217', '8', '293', '2020-04-21', '1', '2020-11-11 16:34:18', '2020-11-11 16:34:18', '0', '0');
INSERT INTO `posts` VALUES ('1218', '8', '294', '2020-04-21', '1', '2020-11-11 16:34:18', '2020-11-11 16:34:18', '0', '0');
INSERT INTO `posts` VALUES ('1219', '8', '295', '2020-04-21', '1', '2020-11-11 16:34:18', '2020-11-11 16:34:18', '0', '0');
INSERT INTO `posts` VALUES ('1220', '8', '298', '2020-04-21', '1', '2020-11-11 16:34:18', '2020-11-11 16:34:18', '0', '0');
INSERT INTO `posts` VALUES ('1221', '8', '300', '2020-04-21', '1', '2020-11-11 16:34:18', '2020-11-11 16:34:18', '0', '0');
INSERT INTO `posts` VALUES ('1222', '8', '302', '2020-04-21', '1', '2020-11-11 16:34:18', '2020-11-11 16:34:18', '0', '0');
INSERT INTO `posts` VALUES ('1223', '8', '303', '2020-04-21', '1', '2020-11-11 16:34:18', '2020-11-11 16:34:18', '0', '0');
INSERT INTO `posts` VALUES ('1224', '8', '304', '2020-04-21', '1', '2020-11-11 16:34:18', '2020-11-11 16:34:18', '0', '0');
INSERT INTO `posts` VALUES ('1225', '8', '305', '2020-04-21', '1', '2020-11-11 16:34:18', '2020-11-11 16:34:18', '0', '0');
INSERT INTO `posts` VALUES ('1226', '8', '306', '2020-04-21', '1', '2020-11-11 16:34:18', '2020-11-11 16:34:18', '0', '0');
INSERT INTO `posts` VALUES ('1227', '8', '307', '2020-04-21', '1', '2020-11-11 16:34:18', '2020-11-11 16:34:18', '0', '0');
INSERT INTO `posts` VALUES ('1229', '14', '308', '2020-11-22', '0', '2020-11-22 13:39:15', '2020-11-22 13:39:15', '0', '0');
INSERT INTO `posts` VALUES ('1230', '14', '309', '2020-11-22', '0', '2020-11-22 13:39:21', '2020-11-22 13:39:21', '0', '0');

-- ----------------------------
-- Table structure for `providers`
-- ----------------------------
DROP TABLE IF EXISTS `providers`;
CREATE TABLE `providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of providers
-- ----------------------------
INSERT INTO `providers` VALUES ('20', 'Mishari Rashid alafasi', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" id=\"Layer_1\" x=\"0px\" y=\"0px\" viewBox=\"0 0 27 22\" style=\"enable-background:new 0 0 27 22;\" xml:space=\"preserve\"> <path class=\"st0\" d=\"M16.1,1.9c0.3,0.1,0.5,0.2,0.8,0.3c0.5,0.3,0.7,0.8,0.7,1.2c0,1.9,0,3.7,0,5.5c0,1.1-0.5,2-1.3,2.7  c-0.1,0.1-0.1,0.2-0.1,0.3c0,0.3,0,0.5,0,0.8c0.1,0,0.2,0,0.2,0c0.6,0,1.2,0,1.8,0c1.4,0.2,2.6,1.4,2.8,2.8c0,0.2,0,0.4,0,0.6  c0,1,0,2.1,0,3.1c0,0.4-0.2,0.7-0.7,0.7c-4.6,0-9.3,0-13.9,0c-0.5,0-0.7-0.2-0.7-0.7c0-1,0-2.1,0-3.1c0-1.7,1.1-3,2.7-3.4  c0.2,0,0.5-0.1,0.7-0.1c0.5,0,1,0,1.5,0c0-0.3,0-0.6,0-0.9c0,0,0-0.1-0.1-0.1c-0.8-0.8-1.3-1.9-1.3-3.1c0-1.7,0-3.4,0-5.1  c0-0.8,0.5-1.5,1.3-1.7l0,0C12.6,1.9,14.4,1.9,16.1,1.9z M14,12.9c0,0.1,0,0.1,0,0.2c0,1.1,0,2.3,0,3.4c0,0.2,0,0.4-0.2,0.5  c-0.2,0.2-0.4,0.2-0.6,0.1c-0.2-0.1-0.3-0.3-0.3-0.5c0-1.1,0-2.3,0-3.5c0-0.1,0-0.1,0-0.2c-0.4-0.1-0.8-0.2-1-0.3c0,0.3,0,0.5,0,0.8  c0,0.4-0.2,0.6-0.6,0.6c-0.7,0-1.3,0-2,0c-1.3,0-2.3,1-2.3,2.3c0,0.8,0,1.7,0,2.5c0,0.1,0,0.1,0,0.2c0.6,0,1.1,0,1.8,0  c0-0.8,0-1.6,0-2.3c0-0.2,0.1-0.3,0.2-0.5C9.1,16,9.4,16,9.6,16c0.2,0.1,0.3,0.3,0.4,0.5c0,0.7,0,1.4,0,2.1c0,0.1,0,0.2,0,0.3  c2.4,0,4.9,0,7.4,0c0-0.1,0-0.1,0-0.2c0-0.7,0-1.4,0-2.1c0-0.4,0.2-0.6,0.6-0.6c0.3,0,0.6,0.3,0.6,0.6c0,0.8,0,1.4,0,2.2  c0,0.1,0,0.1,0,0.2c0.6,0,1.1,0,1.8,0c0-0.1,0-0.1,0-0.2c0-0.8,0-1.7,0-2.5c0-1.3-1-2.3-2.3-2.3c-0.7,0-1.3,0-2.1,0  c-0.4,0-0.6-0.2-0.6-0.6c0-0.3,0-0.5,0-0.8C14.7,12.7,14.4,12.8,14,12.9z M10.5,6.6c0,0.8,0,1.6,0,2.3c0,0.8,0.3,1.5,0.8,2.1  c0,0,0.1,0.1,0.2,0.1c0-0.3,0-0.6,0-0.8c0-0.8,0.6-1.2,1.2-1.2c0.3,0,0.5,0,0.8,0c1.4-0.1,2,0.5,1.9,1.9c0,0.1,0,0.1,0,0.2  c0,0,0,0,0.1,0c0,0,0,0,0.1-0.1c0.6-0.6,0.9-1.2,0.9-2.1c0-0.8,0-1.5,0-2.3V6.6C14.4,6.6,12.5,6.6,10.5,6.6z M16.5,5.5  C16.5,5.4,16.5,5.4,16.5,5.5c0-0.7,0-1.3,0-1.9c0-0.4-0.2-0.6-0.6-0.6c-1.6,0-3.2,0-4.8,0c-0.4,0-0.6,0.2-0.6,0.6c0,0.6,0,1.1,0,1.8  v0.1C12.5,5.5,14.4,5.5,16.5,5.5z M14.4,11L14.4,11c0-0.2,0-0.5,0-0.7c0-0.2-0.1-0.2-0.2-0.2c-0.5,0-0.8,0-1.3,0  c-0.2,0-0.2,0.1-0.2,0.2c0,0.5,0,0.8,0,1.3c0,0.1,0.1,0.1,0.1,0.2c0.5,0.2,1,0.2,1.5,0l0.1-0.1C14.4,11.3,14.4,11.2,14.4,11z\"/> </svg>', '4', '2020-04-09 20:49:24', '2020-11-30 12:33:47');
INSERT INTO `providers` VALUES ('21', 'Al Tablawy', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" id=\"Layer_1\" x=\"0px\" y=\"0px\" viewBox=\"0 0 27 22\" style=\"enable-background:new 0 0 27 22;\" xml:space=\"preserve\"> <path class=\"st0\" d=\"M16.1,1.9c0.3,0.1,0.5,0.2,0.8,0.3c0.5,0.3,0.7,0.8,0.7,1.2c0,1.9,0,3.7,0,5.5c0,1.1-0.5,2-1.3,2.7  c-0.1,0.1-0.1,0.2-0.1,0.3c0,0.3,0,0.5,0,0.8c0.1,0,0.2,0,0.2,0c0.6,0,1.2,0,1.8,0c1.4,0.2,2.6,1.4,2.8,2.8c0,0.2,0,0.4,0,0.6  c0,1,0,2.1,0,3.1c0,0.4-0.2,0.7-0.7,0.7c-4.6,0-9.3,0-13.9,0c-0.5,0-0.7-0.2-0.7-0.7c0-1,0-2.1,0-3.1c0-1.7,1.1-3,2.7-3.4  c0.2,0,0.5-0.1,0.7-0.1c0.5,0,1,0,1.5,0c0-0.3,0-0.6,0-0.9c0,0,0-0.1-0.1-0.1c-0.8-0.8-1.3-1.9-1.3-3.1c0-1.7,0-3.4,0-5.1  c0-0.8,0.5-1.5,1.3-1.7l0,0C12.6,1.9,14.4,1.9,16.1,1.9z M14,12.9c0,0.1,0,0.1,0,0.2c0,1.1,0,2.3,0,3.4c0,0.2,0,0.4-0.2,0.5  c-0.2,0.2-0.4,0.2-0.6,0.1c-0.2-0.1-0.3-0.3-0.3-0.5c0-1.1,0-2.3,0-3.5c0-0.1,0-0.1,0-0.2c-0.4-0.1-0.8-0.2-1-0.3c0,0.3,0,0.5,0,0.8  c0,0.4-0.2,0.6-0.6,0.6c-0.7,0-1.3,0-2,0c-1.3,0-2.3,1-2.3,2.3c0,0.8,0,1.7,0,2.5c0,0.1,0,0.1,0,0.2c0.6,0,1.1,0,1.8,0  c0-0.8,0-1.6,0-2.3c0-0.2,0.1-0.3,0.2-0.5C9.1,16,9.4,16,9.6,16c0.2,0.1,0.3,0.3,0.4,0.5c0,0.7,0,1.4,0,2.1c0,0.1,0,0.2,0,0.3  c2.4,0,4.9,0,7.4,0c0-0.1,0-0.1,0-0.2c0-0.7,0-1.4,0-2.1c0-0.4,0.2-0.6,0.6-0.6c0.3,0,0.6,0.3,0.6,0.6c0,0.8,0,1.4,0,2.2  c0,0.1,0,0.1,0,0.2c0.6,0,1.1,0,1.8,0c0-0.1,0-0.1,0-0.2c0-0.8,0-1.7,0-2.5c0-1.3-1-2.3-2.3-2.3c-0.7,0-1.3,0-2.1,0  c-0.4,0-0.6-0.2-0.6-0.6c0-0.3,0-0.5,0-0.8C14.7,12.7,14.4,12.8,14,12.9z M10.5,6.6c0,0.8,0,1.6,0,2.3c0,0.8,0.3,1.5,0.8,2.1  c0,0,0.1,0.1,0.2,0.1c0-0.3,0-0.6,0-0.8c0-0.8,0.6-1.2,1.2-1.2c0.3,0,0.5,0,0.8,0c1.4-0.1,2,0.5,1.9,1.9c0,0.1,0,0.1,0,0.2  c0,0,0,0,0.1,0c0,0,0,0,0.1-0.1c0.6-0.6,0.9-1.2,0.9-2.1c0-0.8,0-1.5,0-2.3V6.6C14.4,6.6,12.5,6.6,10.5,6.6z M16.5,5.5  C16.5,5.4,16.5,5.4,16.5,5.5c0-0.7,0-1.3,0-1.9c0-0.4-0.2-0.6-0.6-0.6c-1.6,0-3.2,0-4.8,0c-0.4,0-0.6,0.2-0.6,0.6c0,0.6,0,1.1,0,1.8  v0.1C12.5,5.5,14.4,5.5,16.5,5.5z M14.4,11L14.4,11c0-0.2,0-0.5,0-0.7c0-0.2-0.1-0.2-0.2-0.2c-0.5,0-0.8,0-1.3,0  c-0.2,0-0.2,0.1-0.2,0.2c0,0.5,0,0.8,0,1.3c0,0.1,0.1,0.1,0.1,0.2c0.5,0.2,1,0.2,1.5,0l0.1-0.1C14.4,11.3,14.4,11.2,14.4,11z\"/> </svg>', '5', '2020-04-14 04:43:07', '2020-11-30 12:33:47');
INSERT INTO `providers` VALUES ('22', 'El Helbawy', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" id=\"Layer_1\" x=\"0px\" y=\"0px\" viewBox=\"0 0 27 22\" style=\"enable-background:new 0 0 27 22;\" xml:space=\"preserve\"> <path class=\"st0\" d=\"M16.1,1.9c0.3,0.1,0.5,0.2,0.8,0.3c0.5,0.3,0.7,0.8,0.7,1.2c0,1.9,0,3.7,0,5.5c0,1.1-0.5,2-1.3,2.7  c-0.1,0.1-0.1,0.2-0.1,0.3c0,0.3,0,0.5,0,0.8c0.1,0,0.2,0,0.2,0c0.6,0,1.2,0,1.8,0c1.4,0.2,2.6,1.4,2.8,2.8c0,0.2,0,0.4,0,0.6  c0,1,0,2.1,0,3.1c0,0.4-0.2,0.7-0.7,0.7c-4.6,0-9.3,0-13.9,0c-0.5,0-0.7-0.2-0.7-0.7c0-1,0-2.1,0-3.1c0-1.7,1.1-3,2.7-3.4  c0.2,0,0.5-0.1,0.7-0.1c0.5,0,1,0,1.5,0c0-0.3,0-0.6,0-0.9c0,0,0-0.1-0.1-0.1c-0.8-0.8-1.3-1.9-1.3-3.1c0-1.7,0-3.4,0-5.1  c0-0.8,0.5-1.5,1.3-1.7l0,0C12.6,1.9,14.4,1.9,16.1,1.9z M14,12.9c0,0.1,0,0.1,0,0.2c0,1.1,0,2.3,0,3.4c0,0.2,0,0.4-0.2,0.5  c-0.2,0.2-0.4,0.2-0.6,0.1c-0.2-0.1-0.3-0.3-0.3-0.5c0-1.1,0-2.3,0-3.5c0-0.1,0-0.1,0-0.2c-0.4-0.1-0.8-0.2-1-0.3c0,0.3,0,0.5,0,0.8  c0,0.4-0.2,0.6-0.6,0.6c-0.7,0-1.3,0-2,0c-1.3,0-2.3,1-2.3,2.3c0,0.8,0,1.7,0,2.5c0,0.1,0,0.1,0,0.2c0.6,0,1.1,0,1.8,0  c0-0.8,0-1.6,0-2.3c0-0.2,0.1-0.3,0.2-0.5C9.1,16,9.4,16,9.6,16c0.2,0.1,0.3,0.3,0.4,0.5c0,0.7,0,1.4,0,2.1c0,0.1,0,0.2,0,0.3  c2.4,0,4.9,0,7.4,0c0-0.1,0-0.1,0-0.2c0-0.7,0-1.4,0-2.1c0-0.4,0.2-0.6,0.6-0.6c0.3,0,0.6,0.3,0.6,0.6c0,0.8,0,1.4,0,2.2  c0,0.1,0,0.1,0,0.2c0.6,0,1.1,0,1.8,0c0-0.1,0-0.1,0-0.2c0-0.8,0-1.7,0-2.5c0-1.3-1-2.3-2.3-2.3c-0.7,0-1.3,0-2.1,0  c-0.4,0-0.6-0.2-0.6-0.6c0-0.3,0-0.5,0-0.8C14.7,12.7,14.4,12.8,14,12.9z M10.5,6.6c0,0.8,0,1.6,0,2.3c0,0.8,0.3,1.5,0.8,2.1  c0,0,0.1,0.1,0.2,0.1c0-0.3,0-0.6,0-0.8c0-0.8,0.6-1.2,1.2-1.2c0.3,0,0.5,0,0.8,0c1.4-0.1,2,0.5,1.9,1.9c0,0.1,0,0.1,0,0.2  c0,0,0,0,0.1,0c0,0,0,0,0.1-0.1c0.6-0.6,0.9-1.2,0.9-2.1c0-0.8,0-1.5,0-2.3V6.6C14.4,6.6,12.5,6.6,10.5,6.6z M16.5,5.5  C16.5,5.4,16.5,5.4,16.5,5.5c0-0.7,0-1.3,0-1.9c0-0.4-0.2-0.6-0.6-0.6c-1.6,0-3.2,0-4.8,0c-0.4,0-0.6,0.2-0.6,0.6c0,0.6,0,1.1,0,1.8  v0.1C12.5,5.5,14.4,5.5,16.5,5.5z M14.4,11L14.4,11c0-0.2,0-0.5,0-0.7c0-0.2-0.1-0.2-0.2-0.2c-0.5,0-0.8,0-1.3,0  c-0.2,0-0.2,0.1-0.2,0.2c0,0.5,0,0.8,0,1.3c0,0.1,0.1,0.1,0.1,0.2c0.5,0.2,1,0.2,1.5,0l0.1-0.1C14.4,11.3,14.4,11.2,14.4,11z\"/> </svg>', '6', '2020-04-14 04:43:57', '2020-11-30 12:33:47');
INSERT INTO `providers` VALUES ('23', 'The Holy Quran', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" id=\"Layer_1\" x=\"0px\" y=\"0px\" viewBox=\"0 0 27 22\" style=\"enable-background:new 0 0 27 22;\" xml:space=\"preserve\">\r\n<g>     <path class=\"st0\" d=\"M7.8,15.7h11.6c0.2,0,0.3-0.1,0.3-0.3V3.8c0-0.2-0.1-0.3-0.3-0.3l0,0H7.8c-0.2,0-0.3,0.1-0.3,0.3v11.6   C7.5,15.6,7.7,15.7,7.8,15.7z M8.1,4.2h11v11h-11V4.2z\"/>     <path class=\"st0\" d=\"M21.5,17.3V2c0-0.2-0.1-0.3-0.3-0.3H7.7c-1.2,0-2.2,1-2.2,2.2v14.8l0,0c0,0.9,0.7,1.7,1.7,1.7h14   c0.2,0,0.3-0.1,0.3-0.3V17.3L21.5,17.3L21.5,17.3z M7.8,2.3H21v14.8H7.3c-0.4,0-0.8,0.2-1.1,0.4V3.9C6.2,3,6.9,2.3,7.8,2.3L7.8,2.3   z M7.3,19.8c-0.6,0-1.1-0.5-1.1-1.1l0,0l0,0c0-0.6,0.5-1.1,1.1-1.1H21v0.8H7.8c-0.2,0-0.3,0.1-0.3,0.3c0,0.2,0.1,0.3,0.3,0.3H21   v0.8L7.3,19.8z\"/>     <path class=\"st0\" d=\"M16.5,10.8c-0.3,0.1-0.7,0.2-1,0.2c-1.5,0-2.7-1.2-2.7-2.7c0-0.6,0.2-1.2,0.6-1.6c0.1-0.1,0.1-0.3,0-0.4   c-0.1,0-0.1-0.1-0.2-0.1c-1.9,0.4-3.1,2.2-2.7,4.1s2.2,3.1,4.1,2.7c1-0.2,1.9-0.9,2.4-1.8c0.1-0.1,0-0.3-0.1-0.4   C16.7,10.8,16.6,10.8,16.5,10.8L16.5,10.8z M13.8,12.5c-1.6,0-2.9-1.3-2.9-2.9c0-1.1,0.6-2.1,1.6-2.6c-0.2,0.4-0.3,0.9-0.3,1.3   c0,1.8,1.5,3.3,3.3,3.2c0.2,0,0.3,0,0.5,0C15.4,12.2,14.6,12.5,13.8,12.5z\"/>     <path class=\"st0\" d=\"M14.4,8.6l-0.3,0.8c0,0.1,0,0.3,0.2,0.3c0.1,0,0.2,0,0.2,0l0.7-0.5l0.7,0.5c0.1,0.1,0.3,0.1,0.4-0.1   c0.1-0.1,0.1-0.2,0-0.2L16,8.6l0.7-0.5c0.1-0.1,0.2-0.3,0.1-0.4c-0.1-0.1-0.1-0.1-0.2-0.1h-0.8l-0.3-0.8c0-0.1-0.2-0.2-0.3-0.2   c-0.1,0-0.1,0.1-0.2,0.2l-0.3,0.8h-0.8c-0.2,0-0.3,0.1-0.3,0.3c0,0.1,0,0.2,0.1,0.2L14.4,8.6z M14.9,8.1c0.1,0,0.2-0.1,0.3-0.2   l0.1-0.2l0.1,0.2c0,0.1,0.1,0.2,0.3,0.2h0.2l-0.1,0.1c-0.1,0.1-0.1,0.2-0.1,0.3l0.1,0.2l-0.1-0.1c-0.1-0.1-0.2-0.1-0.3,0l-0.1,0.1   l0.1-0.2c0-0.1,0-0.2-0.1-0.3l-0.1-0.1H14.9z\"/> </g> </svg>', '7', '2020-04-16 00:11:24', '2020-11-30 12:33:47');
INSERT INTO `providers` VALUES ('25', 'Muslim Topic', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" id=\"Layer_1\" x=\"0px\" y=\"0px\" viewBox=\"0 0 27 22\" style=\"enable-background:new 0 0 27 22;\" xml:space=\"preserve\">\r\n<g>     <path class=\"st0\" d=\"M22.8,4.6v13.5h-8.4v0.3c0,0.5-0.4,1-1,1c-0.5,0-1-0.4-1-1v-0.3H4.1V4h0.6v13.5h17.4v-10h-0.6v9.3h-7.7V2.7   h1.6V2.1H4.7v1.3H3.4v15.5h8.4c0.1,0.7,0.8,1.3,1.6,1.3c0.8,0,1.4-0.6,1.6-1.3h8.4V4.6H22.8z M13.1,2.7v14.2H5.4c0,0,0-14.2,0-14.2   H13.1z\"/>     <path class=\"st0\" d=\"M12.5,3.3H6v5.2h6.4V3.3z M11.8,7.8H6.7V4h5.2V7.8z\"/>     <rect x=\"11.8\" y=\"15.6\" class=\"st0\" width=\"0.6\" height=\"0.6\"/>     <rect x=\"6\" y=\"15.6\" class=\"st0\" width=\"5.2\" height=\"0.6\"/>     <rect x=\"6\" y=\"14.3\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"6\" y=\"13\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"6\" y=\"11.7\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"7.3\" y=\"10.4\" class=\"st0\" width=\"5.2\" height=\"0.6\"/>     <rect x=\"6\" y=\"10.4\" class=\"st0\" width=\"0.6\" height=\"0.6\"/>     <rect x=\"6\" y=\"9.1\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"20.2\" y=\"15.6\" class=\"st0\" width=\"0.6\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"15.6\" class=\"st0\" width=\"5.2\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"14.3\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"13\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"11.7\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"15.7\" y=\"10.4\" class=\"st0\" width=\"5.2\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"10.4\" class=\"st0\" width=\"0.6\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"9.1\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"8\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"6.9\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"5.8\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"4.7\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"3.5\" class=\"st0\" width=\"6.4\" height=\"0.6\"/> </g> </svg>', '8', '2020-04-16 01:30:31', '2020-11-30 12:33:47');
INSERT INTO `providers` VALUES ('26', 'Ramadan', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" id=\"Layer_1\" x=\"0px\" y=\"0px\" viewBox=\"0 0 27 22\" style=\"enable-background:new 0 0 27 22;\" xml:space=\"preserve\">\r\n<path class=\"st0\" d=\"M15,20.6c-1.4,0.1-2.9-0.1-4.2-0.6l0.2-0.6c1.3,0.5,2.6,0.6,3.9,0.5c1-0.1,1.9-0.3,2.8-0.7  c-4.6,0.2-8.5-3.2-8.9-7.8c-0.1-1.2,0-2.3,0.4-3.5c0.4-1.1,1-2.1,1.7-2.9l0.5,0.4c-0.7,0.8-1.3,1.7-1.6,2.7c-0.4,1-0.5,2.1-0.4,3.2  c0.4,4.3,4.3,7.5,8.7,7.2c0.4,0,0.8-0.1,1.2-0.2c0.2,0,0.3,0,0.4,0.2c0.1,0.1,0,0.3-0.1,0.4C18.3,19.9,16.7,20.4,15,20.6L15,20.6z\"/> <path class=\"st0\" d=\"M10.1,19.7C8.6,19,7.2,18,6.2,16.6c-1-1.4-1.6-3-1.8-4.8C4,6.5,8,1.9,13.4,1.4c1.7-0.1,3.4,0.1,4.9,0.8  c0.1,0.1,0.2,0.2,0.2,0.4c0,0.2-0.2,0.3-0.3,0.2c-0.4,0-0.8,0-1.2,0c-1.8,0.2-3.4,0.9-4.8,2.1l-0.4-0.5c1.3-1.2,2.9-1.9,4.7-2.2  c-1-0.2-1.9-0.3-2.9-0.2c-5,0.4-8.8,4.8-8.3,9.7c0.1,1.6,0.7,3.1,1.7,4.4c0.9,1.3,2.2,2.3,3.6,2.9L10.1,19.7z\"/> <path class=\"st0\" d=\"M19.7,10.9c-0.1,0-0.1,0-0.2,0l-1.7-0.7l-1.6,1c-0.1,0.1-0.2,0.1-0.3,0c-0.1-0.1-0.2-0.2-0.2-0.3L15.9,9  l-1.4-1.2c-0.1-0.1-0.1-0.2-0.1-0.3c0-0.1,0.1-0.2,0.2-0.2l1.8-0.4l0.7-1.7c0-0.1,0.1-0.2,0.3-0.2c0.1,0,0.2,0,0.3,0.2l1,1.6  l1.8,0.1c0.1,0,0.2,0.1,0.3,0.2c0,0.1,0,0.2-0.1,0.3l-1.2,1.4l0.5,1.8c0,0.1,0,0.2-0.1,0.3C19.8,10.8,19.7,10.9,19.7,10.9L19.7,10.9  z M17.7,9.5c0.1,0,0.1,0,0.2,0l1.3,0.5l-0.3-1.3c0-0.1,0-0.2,0.1-0.3l0.9-1l-1.4-0.1c-0.1,0-0.2-0.1-0.3-0.2L17.5,6L17,7.2  c0,0.1-0.1,0.2-0.2,0.2l-1.3,0.3l1.1,0.9c0.1,0.1,0.1,0.2,0.1,0.3l-0.1,1.4l1.2-0.7C17.6,9.5,17.7,9.5,17.7,9.5L17.7,9.5z\"/> </svg>', '3', '2020-04-16 09:10:05', '2020-11-30 12:33:47');
INSERT INTO `providers` VALUES ('27', 'Interpretation Qur`an', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" id=\"Layer_1\" x=\"0px\" y=\"0px\" viewBox=\"0 0 27 22\" style=\"enable-background:new 0 0 27 22;\" xml:space=\"preserve\">\r\n<g>     <path class=\"st0\" d=\"M13.8,12.9c2,0,3.6-1.4,4-3.3c0-0.2-0.1-0.5-0.3-0.6c-0.2-0.1-0.5-0.1-0.6,0c-0.4,0.3-0.9,0.4-1.3,0.4   c-1.3,0-2.3-1-2.3-2.3c0-0.5,0.1-0.9,0.4-1.3c0.1-0.2,0.1-0.4,0-0.6c-0.1-0.2-0.4-0.3-0.6-0.3c-1.9,0.3-3.3,2-3.3,4   C9.8,11,11.6,12.9,13.8,12.9z M12.1,6.5c0,0.2-0.1,0.4-0.1,0.6c0,1.9,1.6,3.5,3.5,3.5c0.2,0,0.4,0,0.6-0.1   c-0.5,0.7-1.4,1.2-2.3,1.2c-1.6,0-2.9-1.3-2.9-2.9C10.9,7.8,11.4,7,12.1,6.5z\"/>     <path class=\"st0\" d=\"M19.3,16.4c0.3,0,0.6-0.3,0.6-0.6v-14c0-0.3-0.3-0.6-0.6-0.6H9.5c-1.3,0-2.3,1-2.3,2.3v14c0,1.3,1,2.3,2.3,2.3   h1.2v0.6c0,0.2,0.1,0.4,0.3,0.5c0.2,0.1,0.4,0.1,0.6,0l1.4-0.9l1.4,0.9c0.2,0.1,0.4,0.1,0.6,0c0.2-0.1,0.3-0.3,0.3-0.5v-0.6h4   c0.3,0,0.6-0.3,0.6-0.6c0-0.3-0.3-0.6-0.6-0.6c-0.2,0-0.6-0.5-0.6-1.2C18.7,16.9,19.1,16.4,19.3,16.4z M10.6,18.7H9.5   c-0.6,0-1.2-0.5-1.2-1.2c0-0.6,0.5-1.2,1.2-1.2h1.2V18.7z M14.1,19.4l-0.8-0.6c-0.2-0.1-0.4-0.1-0.6,0l-0.8,0.6v-3h2.3V19.4z    M17.8,18.7h-2.5v-2.3h2.5c-0.1,0.3-0.2,0.7-0.2,1.2C17.6,18,17.7,18.4,17.8,18.7z M18.7,15.3c-1.8,0-7.1,0-9.3,0   c-0.4,0-0.8,0.1-1.2,0.3v-12c0-0.6,0.5-1.2,1.2-1.2h9.3V15.3z\"/> </g> </svg>', '9', '2020-04-16 10:30:09', '2020-11-30 12:33:47');
INSERT INTO `providers` VALUES ('28', 'WHO Guidelines', null, '1', '2020-04-18 21:34:00', '2020-11-30 12:33:47');
INSERT INTO `providers` VALUES ('33', 'islamic filters', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" id=\"Layer_1\" x=\"0px\" y=\"0px\" viewBox=\"0 0 27 22\" style=\"enable-background:new 0 0 27 22;\" xml:space=\"preserve\">\r\n<g>     <path class=\"st0\" d=\"M13.8,12.9c2,0,3.6-1.4,4-3.3c0-0.2-0.1-0.5-0.3-0.6c-0.2-0.1-0.5-0.1-0.6,0c-0.4,0.3-0.9,0.4-1.3,0.4   c-1.3,0-2.3-1-2.3-2.3c0-0.5,0.1-0.9,0.4-1.3c0.1-0.2,0.1-0.4,0-0.6c-0.1-0.2-0.4-0.3-0.6-0.3c-1.9,0.3-3.3,2-3.3,4   C9.8,11,11.6,12.9,13.8,12.9z M12.1,6.5c0,0.2-0.1,0.4-0.1,0.6c0,1.9,1.6,3.5,3.5,3.5c0.2,0,0.4,0,0.6-0.1   c-0.5,0.7-1.4,1.2-2.3,1.2c-1.6,0-2.9-1.3-2.9-2.9C10.9,7.8,11.4,7,12.1,6.5z\"/>     <path class=\"st0\" d=\"M19.3,16.4c0.3,0,0.6-0.3,0.6-0.6v-14c0-0.3-0.3-0.6-0.6-0.6H9.5c-1.3,0-2.3,1-2.3,2.3v14c0,1.3,1,2.3,2.3,2.3   h1.2v0.6c0,0.2,0.1,0.4,0.3,0.5c0.2,0.1,0.4,0.1,0.6,0l1.4-0.9l1.4,0.9c0.2,0.1,0.4,0.1,0.6,0c0.2-0.1,0.3-0.3,0.3-0.5v-0.6h4   c0.3,0,0.6-0.3,0.6-0.6c0-0.3-0.3-0.6-0.6-0.6c-0.2,0-0.6-0.5-0.6-1.2C18.7,16.9,19.1,16.4,19.3,16.4z M10.6,18.7H9.5   c-0.6,0-1.2-0.5-1.2-1.2c0-0.6,0.5-1.2,1.2-1.2h1.2V18.7z M14.1,19.4l-0.8-0.6c-0.2-0.1-0.4-0.1-0.6,0l-0.8,0.6v-3h2.3V19.4z    M17.8,18.7h-2.5v-2.3h2.5c-0.1,0.3-0.2,0.7-0.2,1.2C17.6,18,17.7,18.4,17.8,18.7z M18.7,15.3c-1.8,0-7.1,0-9.3,0   c-0.4,0-0.8,0.1-1.2,0.3v-12c0-0.6,0.5-1.2,1.2-1.2h9.3V15.3z\"/> </g> </svg>', '2', '2020-11-30 12:33:38', '2020-11-30 12:33:47');

-- ----------------------------
-- Table structure for `relations`
-- ----------------------------
DROP TABLE IF EXISTS `relations`;
CREATE TABLE `relations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scaffoldinterface_id` int(10) unsigned NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `having` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `relations_scaffoldinterface_id_foreign` (`scaffoldinterface_id`),
  CONSTRAINT `relations_scaffoldinterface_id_foreign` FOREIGN KEY (`scaffoldinterface_id`) REFERENCES `scaffoldinterfaces` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of relations
-- ----------------------------

-- ----------------------------
-- Table structure for `resend_pincodes`
-- ----------------------------
DROP TABLE IF EXISTS `resend_pincodes`;
CREATE TABLE `resend_pincodes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of resend_pincodes
-- ----------------------------
INSERT INTO `resend_pincodes` VALUES ('1', '96612345678', '1', '2020-11-26', '2020-11-26 16:39:24', '2020-11-26 16:39:24');
INSERT INTO `resend_pincodes` VALUES ('2', '966540380855', '3', '2020-11-26', '2020-11-26 16:40:11', '2020-11-26 16:43:23');

-- ----------------------------
-- Table structure for `response_send_messages`
-- ----------------------------
DROP TABLE IF EXISTS `response_send_messages`;
CREATE TABLE `response_send_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `request_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of response_send_messages
-- ----------------------------
INSERT INTO `response_send_messages` VALUES ('1', 'http://mbc.mobc.com:8030/ALkanz_PIN/pincode.aspx?Mobileno=966540380854&OP=MOB', 'OK', '2020-11-25 16:19:30', '2020-11-25 16:19:30', 'Send Pincode');
INSERT INTO `response_send_messages` VALUES ('2', 'http://mbc.mobc.com:8030/ALkanz_PIN/pincode.aspx?Mobileno=&OP=MOB', 'No MobileNo', '2020-11-25 16:26:36', '2020-11-25 16:26:36', 'Send Pincode');
INSERT INTO `response_send_messages` VALUES ('3', 'http://mbc.mobc.com:8030/ALkanz_PIN/pincode.aspx?Mobileno=&OP=MOB', 'No MobileNo', '2020-11-25 16:35:01', '2020-11-25 16:35:01', 'Send Pincode');
INSERT INTO `response_send_messages` VALUES ('4', 'http://mbc.mobc.com:8030/ALkanz_PIN/pincode.aspx?Mobileno=966540380854&OP=MOB', 'OK', '2020-11-25 16:36:16', '2020-11-25 16:36:16', 'Send Pincode');
INSERT INTO `response_send_messages` VALUES ('5', 'http://mbc.mobc.com:8030/ALkanz_PIN/pincode.aspx?Mobileno=966540380854&OP=MOB', 'OK', '2020-11-25 16:48:54', '2020-11-25 16:48:54', 'Send Pincode');
INSERT INTO `response_send_messages` VALUES ('6', 'http://mbc.mobc.com:8030/ALkanz_PIN/Confirm.aspx?Mobileno=966540380854&OP=MOB&PinCode=1234', 'IncorrectCode', '2020-11-25 16:50:34', '2020-11-25 16:50:34', 'Confirm Pincode');
INSERT INTO `response_send_messages` VALUES ('7', 'http://mbc.mobc.com:8030/ALkanz_PIN/Confirm.aspx?Mobileno=966540380854&OP=MOB&PinCode=1234', 'IncorrectCode', '2020-11-25 16:53:48', '2020-11-25 16:53:48', 'Confirm Pincode');
INSERT INTO `response_send_messages` VALUES ('8', 'http://mbc.mobc.com:8030/ALkanz_PIN/pincode.aspx?Mobileno=966540380854&OP=MOB', 'OK', '2020-11-26 09:16:59', '2020-11-26 09:16:59', 'Send Pincode');
INSERT INTO `response_send_messages` VALUES ('9', 'http://mbc.mobc.com:8030/ALkanz_PIN/pincode.aspx?Mobileno=966540380851&OP=MOB', 'General Error', '2020-11-26 09:36:56', '2020-11-26 09:36:56', 'Send Pincode');
INSERT INTO `response_send_messages` VALUES ('10', 'http://mbc.mobc.com:8030/ALkanz_PIN/pincode.aspx?Mobileno=9661212&OP=MOB', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" cont', '2020-11-26 13:07:46', '2020-11-26 13:07:46', 'Send Pincode');
INSERT INTO `response_send_messages` VALUES ('11', 'http://mbc.mobc.com:8030/ALkanz_PIN/pincode.aspx?Mobileno=96612345678&OP=MOB', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" cont', '2020-11-26 16:39:25', '2020-11-26 16:39:25', 'Send Pincode');
INSERT INTO `response_send_messages` VALUES ('12', 'http://mbc.mobc.com:8030/ALkanz_PIN/pincode.aspx?Mobileno=966540380855&OP=MOB', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" cont', '2020-11-26 16:40:11', '2020-11-26 16:40:11', 'Send Pincode');
INSERT INTO `response_send_messages` VALUES ('13', 'http://mbc.mobc.com:8030/ALkanz_PIN/pincode.aspx?Mobileno=966540380855&OP=MOB', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\"/>\r\n<title>403 - Forbidden: Access is denied.</title>\r\n<style type=\"text/css\">\r\n<!--\r\nbody{margin:0;font-size:.7em;font-family:Verdana, Arial, Helvetica, sans-serif;background:#EEEEEE;}\r\nfieldset{padding:0 15px 10px 15px;} \r\nh1{font-size:2.4em;margin:0;color:#FFF;}\r\nh2{font-size:1.7em;margin:0;color:#CC0000;} \r\nh3{font-size:1.2em;margin:10px 0 0 0;color:#000000;} \r\n#header{width:96%;margin:0 0 0 0;padding:6px 2% 6px 2%;font-family:\"trebuchet MS\", Verdana, sans-serif;color:#FFF;\r\nbackground-color:#555555;}\r\n#content{margin:0 0 0 2%;position:relative;}\r\n.content-container{background:#FFF;width:96%;margin-top:8px;padding:10px;position:relative;}\r\n-->\r\n</style>\r\n</head>\r\n<body>\r\n<div id=\"header\"><h1>Server Error</h1></div>\r\n<div id=\"content\">\r\n <div class=\"content-container\"><fieldset>\r\n  <h2>403 - Forbidden: Access is denied.</h2>\r\n  <h3>You do not have permission to view this directory or page using the credentials that you supplied.</h3>\r\n </fieldset></div>\r\n</div>\r\n</body>\r\n</html>\r\n', '2020-11-26 16:42:53', '2020-11-26 16:42:53', 'Send Pincode');
INSERT INTO `response_send_messages` VALUES ('14', 'http://mbc.mobc.com:8030/ALkanz_PIN/pincode.aspx?Mobileno=966540380855&OP=MOB', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\"/>\r\n<title>403 - Forbidden: Access is denied.</title>\r\n<style type=\"text/css\">\r\n<!--\r\nbody{margin:0;font-size:.7em;font-family:Verdana, Arial, Helvetica, sans-serif;background:#EEEEEE;}\r\nfieldset{padding:0 15px 10px 15px;} \r\nh1{font-size:2.4em;margin:0;color:#FFF;}\r\nh2{font-size:1.7em;margin:0;color:#CC0000;} \r\nh3{font-size:1.2em;margin:10px 0 0 0;color:#000000;} \r\n#header{width:96%;margin:0 0 0 0;padding:6px 2% 6px 2%;font-family:\"trebuchet MS\", Verdana, sans-serif;color:#FFF;\r\nbackground-color:#555555;}\r\n#content{margin:0 0 0 2%;position:relative;}\r\n.content-container{background:#FFF;width:96%;margin-top:8px;padding:10px;position:relative;}\r\n-->\r\n</style>\r\n</head>\r\n<body>\r\n<div id=\"header\"><h1>Server Error</h1></div>\r\n<div id=\"content\">\r\n <div class=\"content-container\"><fieldset>\r\n  <h2>403 - Forbidden: Access is denied.</h2>\r\n  <h3>You do not have permission to view this directory or page using the credentials that you supplied.</h3>\r\n </fieldset></div>\r\n</div>\r\n</body>\r\n</html>\r\n', '2020-11-26 16:43:23', '2020-11-26 16:43:23', 'Send Pincode');

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'super_admin', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES ('6', 'admin', '2', '2018-01-08 21:40:19', '2018-01-08 21:40:19');

-- ----------------------------
-- Table structure for `role_has_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `role_route`
-- ----------------------------
DROP TABLE IF EXISTS `role_route`;
CREATE TABLE `role_route` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `route_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id_2` (`role_id`),
  KEY `route_id_2` (`route_id`),
  CONSTRAINT `role_route_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_route_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_route
-- ----------------------------

-- ----------------------------
-- Table structure for `routes`
-- ----------------------------
DROP TABLE IF EXISTS `routes`;
CREATE TABLE `routes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `method` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `controller_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `function_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of routes
-- ----------------------------
INSERT INTO `routes` VALUES ('2', 'get', 'setting/new', 'SettingController', '0000-00-00 00:00:00', '2018-02-05 20:39:21', 'create');
INSERT INTO `routes` VALUES ('3', 'post', 'setting', 'SettingController', '0000-00-00 00:00:00', '2018-02-05 20:39:21', 'store');
INSERT INTO `routes` VALUES ('4', 'get', 'dashboard', 'DashboardController', '0000-00-00 00:00:00', '2018-07-24 19:47:45', 'index');
INSERT INTO `routes` VALUES ('6', 'get', 'user_profile', 'UserController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'profile');
INSERT INTO `routes` VALUES ('7', 'post', 'user_profile/updatepassword', 'UserController', '0000-00-00 00:00:00', '2017-11-14 19:29:01', 'UpdatePassword');
INSERT INTO `routes` VALUES ('8', 'post', 'user_profile/updateprofilepic', 'UserController', '0000-00-00 00:00:00', '2017-11-14 19:29:08', 'UpdateProfilePicture');
INSERT INTO `routes` VALUES ('9', 'post', 'user_profile/updateuserdata', 'UserController', '0000-00-00 00:00:00', '2017-11-14 19:29:19', 'UpdateNameAndEmail');
INSERT INTO `routes` VALUES ('10', 'get', 'setting/{id}/delete', 'SettingController', '0000-00-00 00:00:00', '2018-02-05 20:39:22', 'destroy');
INSERT INTO `routes` VALUES ('11', 'get', 'setting/{id}/edit', 'SettingController', '0000-00-00 00:00:00', '2018-02-05 20:39:21', 'edit');
INSERT INTO `routes` VALUES ('12', 'post', 'setting/{id}', 'SettingController', '0000-00-00 00:00:00', '2020-03-24 17:17:21', 'update');
INSERT INTO `routes` VALUES ('14', 'get', 'static_translation', 'StaticTranslationController', '0000-00-00 00:00:00', '2017-11-14 19:29:57', 'index');
INSERT INTO `routes` VALUES ('21', 'get', 'file_manager', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'file_manager');
INSERT INTO `routes` VALUES ('22', 'get', 'upload_items', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'multi_upload');
INSERT INTO `routes` VALUES ('23', 'post', 'save_items', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'save_uploaded');
INSERT INTO `routes` VALUES ('24', 'get', 'upload_resize', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'upload_resize');
INSERT INTO `routes` VALUES ('25', 'post', 'save_image', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'save_image');
INSERT INTO `routes` VALUES ('26', 'post', 'static_translation/{id}/update', 'StaticTranslationController', '0000-00-00 00:00:00', '2017-11-12 19:19:46', 'update');
INSERT INTO `routes` VALUES ('27', 'get', 'static_translation/{id}/delete', 'StaticTranslationController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'destroy');
INSERT INTO `routes` VALUES ('28', 'get', 'language/{id}/delete', 'LanguageController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'destroy');
INSERT INTO `routes` VALUES ('29', 'post', 'language/{id}/update', 'LanguageController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'update');
INSERT INTO `routes` VALUES ('30', 'get', 'roles', 'RoleController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'index');
INSERT INTO `routes` VALUES ('31', 'get', 'roles/new', 'RoleController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'create');
INSERT INTO `routes` VALUES ('32', 'post', 'roles', 'RoleController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'store');
INSERT INTO `routes` VALUES ('33', 'get', 'roles/{id}/delete', 'RoleController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'destroy');
INSERT INTO `routes` VALUES ('34', 'get', 'roles/{id}/edit', 'RoleController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'edit');
INSERT INTO `routes` VALUES ('35', 'post', 'roles/{id}/update', 'RoleController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'update');
INSERT INTO `routes` VALUES ('36', 'get', 'language', 'LanguageController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'index');
INSERT INTO `routes` VALUES ('37', 'get', 'language/create', 'LanguageController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'create');
INSERT INTO `routes` VALUES ('38', 'post', 'language', 'LanguageController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'store');
INSERT INTO `routes` VALUES ('39', 'get', 'language/{id}/edit', 'LanguageController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'edit');
INSERT INTO `routes` VALUES ('40', 'get', 'routes', 'RouteController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'index');
INSERT INTO `routes` VALUES ('41', 'post', 'routes', 'RouteController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'store');
INSERT INTO `routes` VALUES ('42', 'get', 'routes/{id}/edit', 'RouteController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'edit');
INSERT INTO `routes` VALUES ('43', 'post', 'routes/{id}/update', 'RouteController', '0000-00-00 00:00:00', '2018-01-28 16:25:29', 'update');
INSERT INTO `routes` VALUES ('44', 'get', 'routes/{id}/delete', 'RouteController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'destroy');
INSERT INTO `routes` VALUES ('45', 'get', 'routes/create', 'RouteController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'create');
INSERT INTO `routes` VALUES ('57', 'get', 'routes/index_v2', 'RouteController', '2017-11-12 20:45:15', '2017-11-12 21:04:53', 'index_v2');
INSERT INTO `routes` VALUES ('58', 'get', 'roles/{id}/view_access', 'RoleController', '2017-11-14 17:56:14', '2017-11-15 15:14:14', 'view_access');
INSERT INTO `routes` VALUES ('59', 'get', 'types/index', 'TypeController', '2018-01-28 15:25:37', '2018-01-28 15:25:37', 'index');
INSERT INTO `routes` VALUES ('60', 'get', 'types/create', 'TypeController', '2018-01-28 15:25:37', '2018-01-28 15:25:37', 'create');
INSERT INTO `routes` VALUES ('61', 'post', 'types', 'TypeController', '2018-01-28 15:25:38', '2018-01-28 15:25:38', 'store');
INSERT INTO `routes` VALUES ('62', 'get', 'types/{id}/edit', 'TypeController', '2018-01-28 15:25:38', '2018-01-28 15:25:38', 'edit');
INSERT INTO `routes` VALUES ('63', 'patch', 'types/{id}', 'TypeController', '2018-01-28 15:25:38', '2018-01-28 15:25:38', 'update');
INSERT INTO `routes` VALUES ('64', 'get', 'types/{id}/delete', 'TypeController', '2018-01-28 15:25:38', '2018-01-28 15:25:38', 'destroy');
INSERT INTO `routes` VALUES ('65', 'post', 'sortabledatatable', 'SettingController', '2018-01-28 16:22:00', '2018-01-28 16:22:00', 'updateOrder');
INSERT INTO `routes` VALUES ('66', 'get', 'buildroutes', 'RouteController', '2018-01-28 16:23:55', '2018-01-28 16:23:55', 'buildroutes');
INSERT INTO `routes` VALUES ('69', 'get', 'delete_all', 'DashboardController', '2018-02-04 19:01:23', '2018-02-04 19:01:23', 'delete_all_index');
INSERT INTO `routes` VALUES ('70', 'post', 'delete_all', 'DashboardController', '2018-02-04 19:01:23', '2018-02-04 19:01:23', 'delete_all_store');
INSERT INTO `routes` VALUES ('71', 'get', 'upload_resize_v2', 'DashboardController', '2018-02-04 20:02:56', '2018-02-04 20:02:56', 'upload_resize_v2');
INSERT INTO `routes` VALUES ('72', 'post', 'sortabledatatable', 'UserController', '2018-02-05 20:39:22', '2018-02-05 20:39:22', 'updateOrder');
INSERT INTO `routes` VALUES ('79', 'get', 'setting', 'SettingController', '2018-02-05 21:10:10', '2018-02-05 21:10:10', 'index');
INSERT INTO `routes` VALUES ('80', 'get', 'users', 'UserController', '2018-05-31 15:42:21', '2018-05-31 15:42:21', 'index');
INSERT INTO `routes` VALUES ('81', 'get', 'users/new', 'UserController', '2018-05-31 15:42:21', '2018-05-31 15:42:21', 'create');
INSERT INTO `routes` VALUES ('82', 'post', 'users', 'UserController', '2018-05-31 15:42:21', '2018-05-31 15:42:21', 'store');
INSERT INTO `routes` VALUES ('83', 'get', 'users/{id}/edit', 'UserController', '2018-05-31 15:42:21', '2018-05-31 15:42:21', 'edit');
INSERT INTO `routes` VALUES ('84', 'post', 'users/{id}/update', 'UserController', '2018-05-31 15:42:21', '2018-05-31 15:42:21', 'update');
INSERT INTO `routes` VALUES ('85', 'get', 'providers', 'ProvidersController', '2018-12-18 16:43:08', '2018-12-18 16:43:08', 'index');
INSERT INTO `routes` VALUES ('86', 'get', 'providers/create', 'ProvidersController', '2018-12-18 16:43:08', '2018-12-18 16:43:08', 'create');
INSERT INTO `routes` VALUES ('87', 'post', 'providers', 'ProvidersController', '2018-12-18 16:43:08', '2018-12-18 16:43:08', 'store');
INSERT INTO `routes` VALUES ('88', 'get', 'providers/{id}/edit', 'ProvidersController', '2018-12-18 16:43:08', '2018-12-18 16:43:08', 'edit');
INSERT INTO `routes` VALUES ('89', 'patch', 'providers/{id}', 'ProvidersController', '2018-12-18 16:43:08', '2018-12-18 16:43:08', 'update');
INSERT INTO `routes` VALUES ('90', 'get', 'providers/{id}/delete', 'ProvidersController', '2018-12-18 16:43:08', '2018-12-18 16:43:08', 'destroy');
INSERT INTO `routes` VALUES ('91', 'get', 'services', 'ServicesController', '2018-12-18 17:49:59', '2018-12-18 17:49:59', 'index');
INSERT INTO `routes` VALUES ('92', 'get', 'services/create', 'ServicesController', '2018-12-18 17:49:59', '2018-12-18 17:49:59', 'create');
INSERT INTO `routes` VALUES ('93', 'post', 'services', 'ServicesController', '2018-12-18 17:49:59', '2018-12-18 17:49:59', 'store');
INSERT INTO `routes` VALUES ('94', 'get', 'services/{id}/edit', 'ServicesController', '2018-12-18 17:49:59', '2018-12-18 17:49:59', 'edit');
INSERT INTO `routes` VALUES ('95', 'patch', 'services/{id}', 'ServicesController', '2018-12-18 17:49:59', '2018-12-18 17:49:59', 'update');
INSERT INTO `routes` VALUES ('96', 'get', 'services/{id}/delete', 'ServicesController', '2018-12-18 17:49:59', '2018-12-18 17:49:59', 'destroy');
INSERT INTO `routes` VALUES ('97', 'get', 'services/{id}/videos', 'ServicesController', '2018-12-18 17:49:59', '2018-12-18 17:49:59', 'videos');
INSERT INTO `routes` VALUES ('98', 'get', 'providers/{id}/services', 'ProvidersController', '2018-12-18 17:50:35', '2018-12-18 17:50:35', 'services');
INSERT INTO `routes` VALUES ('99', 'get', 'operators', 'OperatorsController', '2018-12-18 18:28:07', '2018-12-18 18:28:07', 'index');
INSERT INTO `routes` VALUES ('100', 'get', 'operators/create', 'OperatorsController', '2018-12-18 18:28:08', '2018-12-18 18:28:08', 'create');
INSERT INTO `routes` VALUES ('101', 'post', 'operators', 'OperatorsController', '2018-12-18 18:28:08', '2018-12-18 18:28:08', 'store');
INSERT INTO `routes` VALUES ('102', 'get', 'operators/{id}/edit', 'OperatorsController', '2018-12-18 18:28:08', '2018-12-18 18:28:08', 'edit');
INSERT INTO `routes` VALUES ('103', 'patch', 'operators/{id}', 'OperatorsController', '2018-12-18 18:28:08', '2018-12-18 18:28:08', 'update');
INSERT INTO `routes` VALUES ('104', 'get', 'operators/{id}/delete', 'OperatorsController', '2018-12-18 18:28:08', '2018-12-18 18:28:08', 'destroy');
INSERT INTO `routes` VALUES ('105', 'get', 'videos', 'VideosController', '2018-12-18 20:41:38', '2018-12-18 20:41:38', 'index');
INSERT INTO `routes` VALUES ('106', 'get', 'videos/create', 'VideosController', '2018-12-18 20:41:38', '2018-12-18 20:41:38', 'create');
INSERT INTO `routes` VALUES ('107', 'post', 'videos', 'VideosController', '2018-12-18 20:41:38', '2018-12-18 20:41:38', 'store');
INSERT INTO `routes` VALUES ('108', 'get', 'videos/{id}/edit', 'VideosController', '2018-12-18 20:41:38', '2018-12-18 20:41:38', 'edit');
INSERT INTO `routes` VALUES ('109', 'patch', 'videos/{id}', 'VideosController', '2018-12-18 20:41:38', '2018-12-18 20:41:38', 'update');
INSERT INTO `routes` VALUES ('110', 'get', 'videos/{id}/delete', 'VideosController', '2018-12-18 20:41:38', '2018-12-18 20:41:38', 'destroy');
INSERT INTO `routes` VALUES ('111', 'get', 'posts', 'PostsController', '2018-12-18 21:25:53', '2018-12-18 21:25:53', 'index');
INSERT INTO `routes` VALUES ('112', 'get', 'posts/create', 'PostsController', '2018-12-18 21:25:53', '2018-12-18 21:40:50', 'create');
INSERT INTO `routes` VALUES ('113', 'post', 'posts', 'PostsController', '2018-12-18 21:25:53', '2018-12-18 21:25:53', 'store');
INSERT INTO `routes` VALUES ('114', 'get', 'posts/{id}/edit', 'PostsController', '2018-12-18 21:25:53', '2018-12-18 21:25:53', 'edit');
INSERT INTO `routes` VALUES ('115', 'patch', 'posts/{id}', 'PostsController', '2018-12-18 21:25:53', '2018-12-18 21:25:53', 'update');
INSERT INTO `routes` VALUES ('116', 'get', 'posts/{id}/delete', 'PostsController', '2018-12-18 21:25:53', '2018-12-18 21:25:53', 'destroy');
INSERT INTO `routes` VALUES ('117', 'get', 'videos/{id}/posts', 'VideosController', '2018-12-18 21:45:29', '2018-12-18 21:45:29', 'posts');
INSERT INTO `routes` VALUES ('118', 'get', 'audios', 'AudiosController', '2018-12-24 20:38:48', '2018-12-24 20:38:48', 'index');
INSERT INTO `routes` VALUES ('119', 'get', 'audios/create', 'AudiosController', '2018-12-24 20:38:48', '2018-12-24 20:38:48', 'create');
INSERT INTO `routes` VALUES ('120', 'post', 'audios', 'AudiosController', '2018-12-24 20:38:48', '2018-12-24 20:38:48', 'store');
INSERT INTO `routes` VALUES ('121', 'get', 'audios/{id}/edit', 'AudiosController', '2018-12-24 20:38:48', '2018-12-24 20:38:48', 'edit');
INSERT INTO `routes` VALUES ('122', 'patch', 'audios/{id}', 'AudiosController', '2018-12-24 20:38:48', '2018-12-24 20:38:48', 'update');
INSERT INTO `routes` VALUES ('123', 'get', 'audios/{id}/delete', 'AudiosController', '2018-12-24 20:38:48', '2018-12-24 20:38:48', 'destroy');
INSERT INTO `routes` VALUES ('124', 'get', 'videos/{id}/audios', 'VideosController', '2018-12-27 16:43:49', '2018-12-27 16:43:49', 'audios');
INSERT INTO `routes` VALUES ('125', 'get', 'providers/{id}/audios', 'ProvidersController', '2018-12-27 16:44:26', '2018-12-27 16:44:26', 'audios');
INSERT INTO `routes` VALUES ('126', 'get', 'countries', 'CountryController', '2018-12-27 20:52:47', '2018-12-27 20:52:47', 'index');
INSERT INTO `routes` VALUES ('127', 'get', 'countries/create', 'CountryController', '2018-12-27 20:52:47', '2018-12-27 20:52:47', 'create');
INSERT INTO `routes` VALUES ('128', 'post', 'countries', 'CountryController', '2018-12-27 20:52:47', '2018-12-27 20:52:47', 'store');
INSERT INTO `routes` VALUES ('129', 'get', 'countries/{id}/edit', 'CountryController', '2018-12-27 20:52:47', '2018-12-27 20:52:47', 'edit');
INSERT INTO `routes` VALUES ('130', 'patch', 'countries/{id}', 'CountryController', '2018-12-27 20:52:47', '2018-12-27 20:52:47', 'update');
INSERT INTO `routes` VALUES ('131', 'get', 'countries/{id}/delete', 'CountryController', '2018-12-27 20:52:47', '2018-12-27 20:52:47', 'destroy');
INSERT INTO `routes` VALUES ('132', 'get', 'listazan', 'ListAzanController', '2020-03-25 16:46:07', '2020-03-25 16:46:07', 'index');
INSERT INTO `routes` VALUES ('133', 'get', 'users/{id}/delete', 'UserController', '2020-04-10 01:26:57', '2020-04-10 01:26:59', 'destroy');

-- ----------------------------
-- Table structure for `scaffoldinterfaces`
-- ----------------------------
DROP TABLE IF EXISTS `scaffoldinterfaces`;
CREATE TABLE `scaffoldinterfaces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `package` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tablename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of scaffoldinterfaces
-- ----------------------------

-- ----------------------------
-- Table structure for `services`
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provider_id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `index` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = video /2 = audio /3 = image',
  PRIMARY KEY (`id`),
  KEY `provider_id` (`provider_id`),
  CONSTRAINT `services_provider_id_foreign1` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of services
-- ----------------------------
INSERT INTO `services` VALUES ('33', '20', 'Quran', 'uploads/services/5e975d4d0c744.png', '1', '2020-04-09 20:49:48', '2020-04-18 22:09:18', '1');
INSERT INTO `services` VALUES ('34', '20', 'Ahadeath', 'uploads/services/5e975d70b0d44.png', '1', '2020-04-14 03:35:26', '2020-04-18 22:09:18', '1');
INSERT INTO `services` VALUES ('35', '20', 'Anasheed', 'uploads/services/5e975e444a999.png', '1', '2020-04-14 04:15:19', '2020-04-18 22:09:18', '1');
INSERT INTO `services` VALUES ('36', '20', 'Doaa', 'uploads/services/5e976d0008cfb.png', '1', '2020-04-14 04:28:53', '2020-04-18 22:09:18', '1');
INSERT INTO `services` VALUES ('37', '22', 'Ebthal', 'uploads/services/5e975e904e2de.png', '1', '2020-04-14 04:45:34', '2020-04-18 22:09:18', '1');
INSERT INTO `services` VALUES ('38', '21', 'Ebthal', 'uploads/services/5e975ea8eac7b.png', '1', '2020-04-14 04:49:36', '2020-04-18 22:09:18', '1');
INSERT INTO `services` VALUES ('39', '21', 'Quran', 'uploads/services/5e975edad1492.png', '1', '2020-04-14 04:51:02', '2020-04-18 22:09:18', '1');
INSERT INTO `services` VALUES ('40', '23', 'Mishari Rashid alafasi', 'uploads/services/5e975f123cab8.png', '1', '2020-04-16 00:13:52', '2020-04-18 22:09:18', '1');
INSERT INTO `services` VALUES ('41', '23', 'Tablawy', 'uploads/services/5e97c6566b554.png', '1', '2020-04-16 00:21:08', '2020-04-18 22:09:18', '1');
INSERT INTO `services` VALUES ('42', '25', 'So2al wa Jawab', 'uploads/services/5e975d104167f.png', '1', '2020-04-16 01:14:24', '2020-04-18 22:09:18', '1');
INSERT INTO `services` VALUES ('43', '25', 'prophet`s stories', 'uploads/services/5e9761576bc30.png', '1', '2020-04-16 01:32:39', '2020-04-18 22:09:18', '3');
INSERT INTO `services` VALUES ('44', '25', 'Biography of the prophet', 'uploads/services/5e9779e2a104b.png', '1', '2020-04-16 03:17:22', '2020-04-18 22:09:18', '3');
INSERT INTO `services` VALUES ('45', '25', 'Guide of fasting', 'uploads/services/5e97ab051eb32.png', '1', '2020-04-16 06:47:01', '2020-04-18 22:09:19', '1');
INSERT INTO `services` VALUES ('46', '25', 'Roquia', 'uploads/services/5e97ab746c254.png', '1', '2020-04-16 06:48:52', '2020-04-18 22:09:19', '1');
INSERT INTO `services` VALUES ('47', '25', 'Interpretation of The koran', 'uploads/services/5e97ae118df48.png', '1', '2020-04-16 07:00:01', '2020-04-18 22:09:19', '4');
INSERT INTO `services` VALUES ('48', '25', 'God Names', 'uploads/services/5e97b0dd677cb.png', '1', '2020-04-16 07:11:57', '2020-04-18 22:09:19', '4');
INSERT INTO `services` VALUES ('49', '25', 'The Quran Answer', 'uploads/services/5e97baee940f2.png', '1', '2020-04-16 07:54:54', '2020-04-18 22:09:19', '1');
INSERT INTO `services` VALUES ('50', '25', 'Information', 'uploads/services/5e97bd69d47e8.png', '1', '2020-04-16 08:05:29', '2020-04-18 22:09:19', '4');
INSERT INTO `services` VALUES ('51', '25', 'Hajj And Umrah guide', 'uploads/services/5e97c0d986050.png', '1', '2020-04-16 08:20:09', '2020-04-18 22:09:19', '1');
INSERT INTO `services` VALUES ('52', '25', 'Azkar', 'uploads/services/5e97c3977967c.png', '1', '2020-04-16 08:31:51', '2020-04-18 22:09:19', '1');
INSERT INTO `services` VALUES ('53', '26', 'Ramadan Doaa', 'uploads/services/5e97cd03ea867.png', '2', '2020-04-16 09:12:03', '2020-04-18 22:09:19', '1');
INSERT INTO `services` VALUES ('54', '26', 'Ramadan Ahadeth', 'uploads/services/5e97cd5f84cf4.png', '3', '2020-04-16 09:13:35', '2020-04-18 22:09:19', '1');
INSERT INTO `services` VALUES ('57', '26', 'Anashed', 'uploads/services/5e97ce456aee5.png', '1', '2020-04-16 09:17:25', '2020-04-18 22:09:19', '1');
INSERT INTO `services` VALUES ('58', '27', 'Interpretation Qur`an in English', 'uploads/services/5e97dfb5f2642.png', '1', '2020-04-16 10:31:49', '2020-04-18 22:09:19', '1');
INSERT INTO `services` VALUES ('59', '27', 'Interpretation Qur`an in Arabic', 'uploads/services/5e97dfd931c6d.png', '1', '2020-04-16 10:32:25', '2020-04-18 22:09:19', '1');
INSERT INTO `services` VALUES ('60', '27', 'Interpretation Qur`an in Urdo', 'uploads/services/5e97dfff18109.png', '1', '2020-04-16 10:33:03', '2020-04-18 22:09:20', '1');
INSERT INTO `services` VALUES ('62', '28', 'covid 19', 'uploads/services/5e9b73338563e.jpg', '1', '2020-04-18 21:37:55', '2020-04-18 22:09:20', '4');
INSERT INTO `services` VALUES ('63', '20', 'mishar_audio_en', 'uploads/services/5e9ecce164cd4.jpg', '0', '2020-04-21 10:37:21', '2020-04-21 10:37:21', '2');

-- ----------------------------
-- Table structure for `settings`
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type_ibfk_1` (`type_id`),
  CONSTRAINT `type_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('25', 'uploadAllow', 'all', '2018-02-04 17:04:09', '2018-02-04 17:04:09', '6', '0');
INSERT INTO `settings` VALUES ('26', 'facebook', 'http://www.facebook.com/iVASEgypt', '2018-12-19 14:19:19', '2018-12-19 14:19:19', '2', '0');
INSERT INTO `settings` VALUES ('27', 'twitter', 'http://www.twitter.com/iVASEgypt', '2018-12-19 14:25:26', '2018-12-19 14:25:26', '2', '0');
INSERT INTO `settings` VALUES ('28', 'instagram', 'http://www.instagram.com/iVASEgypt', '2018-12-19 14:25:43', '2018-12-19 14:25:43', '2', '0');
INSERT INTO `settings` VALUES ('29', 'soundcloud', 'http://www.soundcloud.com/iVASEgypt', '2018-12-19 14:26:12', '2018-12-19 14:26:12', '2', '0');
INSERT INTO `settings` VALUES ('30', 'youtube', 'https://www.youtube.com/channel/UCoaSZFW4h6xITQVJJ__ZY3g?sub_confirmation=1', '2018-12-19 14:26:29', '2018-12-19 14:26:29', '2', '0');
INSERT INTO `settings` VALUES ('31', 'linkedin', 'http://www.linkedin.com/company-beta/3354483', '2018-12-19 14:26:44', '2018-12-19 14:26:44', '2', '0');
INSERT INTO `settings` VALUES ('64', 'home_page_logo', 'uploads/settings_images/5e5cf927166e1.png', '2019-12-31 17:50:04', '2019-12-31 15:54:06', '3', '0');
INSERT INTO `settings` VALUES ('65', 'header_logo', 'uploads/settings_images/5e5cf94047ffc.png', '2019-12-31 17:50:04', '2019-12-31 15:54:06', '3', '0');
INSERT INTO `settings` VALUES ('66', 'loading_image', 'uploads/settings_images/5e5cf954396bd.png', '2019-12-31 17:50:04', '2019-12-31 15:54:06', '3', '0');
INSERT INTO `settings` VALUES ('67', 'title_page', 'My World', '2019-12-31 17:50:04', '2020-04-02 10:45:25', '2', '0');
INSERT INTO `settings` VALUES ('68', 'fav_icon', 'uploads/settings_images/5e5cf9743fb3e.png', '2019-12-31 17:50:04', '2019-12-31 15:54:06', '3', '0');
INSERT INTO `settings` VALUES ('69', 'copy_rights', 'Copyright © 2020 islamic services Powered by DIGIZONE', '2019-12-31 17:50:04', '2019-12-31 15:54:06', '2', '0');
INSERT INTO `settings` VALUES ('70', 'title_menu', 'دو الخير', '2019-12-31 17:50:04', '2019-12-31 15:54:06', '3', '0');
INSERT INTO `settings` VALUES ('71', 'enable_testing', '0', '2020-03-03 19:42:27', '2020-09-23 10:00:23', '7', '0');
INSERT INTO `settings` VALUES ('72', 'enable_social', '1', '2020-03-03 19:42:27', '2020-03-03 19:42:27', '7', '0');
INSERT INTO `settings` VALUES ('73', 'pageLength', '300', '2020-03-03 19:42:27', '2020-04-16 21:58:35', '2', '0');
INSERT INTO `settings` VALUES ('74', 'facebook', 'http://www.facebook.com/iVASEgypt', '2018-12-19 14:19:19', '2018-12-19 14:19:19', '10', '0');
INSERT INTO `settings` VALUES ('75', 'twitter', 'http://www.twitter.com/iVASEgypt', '2018-12-19 14:19:19', '2018-12-19 14:19:19', '10', '0');
INSERT INTO `settings` VALUES ('76', 'instagram', 'http://www.instagram.com/iVASEgypt', '2018-12-19 14:19:19', '2018-12-19 14:19:19', '10', '0');
INSERT INTO `settings` VALUES ('77', 'soundcloud', 'http://www.soundcloud.com/iVASEgypt', '2018-12-19 14:19:19', '2018-12-19 14:19:19', '10', '0');
INSERT INTO `settings` VALUES ('78', 'youtube', 'https://www.youtube.com/channel/UCoaSZFW4h6xITQVJJ__ZY3g?sub_confirmation=1', '2018-12-19 14:19:19', '2018-12-19 14:19:19', '10', '0');
INSERT INTO `settings` VALUES ('79', 'linkedin', 'http://www.linkedin.com/company-beta/3354483', '2018-12-19 14:19:19', '2018-12-19 14:19:19', '10', '0');
INSERT INTO `settings` VALUES ('80', 'view_coming_post', '1', '2020-04-02 15:16:34', '2020-04-02 15:16:34', '7', '0');
INSERT INTO `settings` VALUES ('81', 'service_delete_flag', '0', '2020-04-16 18:54:33', '2020-04-16 18:55:24', '7', '0');
INSERT INTO `settings` VALUES ('82', 'provider_delete_flag', '1', '2020-04-16 18:54:53', '2020-04-18 12:44:22', '7', '0');
INSERT INTO `settings` VALUES ('83', 'content_exact_name', '0', '2020-04-16 17:27:06', '2020-04-16 17:43:32', '7', '0');
INSERT INTO `settings` VALUES ('84', 'inspector_debug', '1', null, '2020-09-03 08:29:37', '7', '0');
INSERT INTO `settings` VALUES ('85', 'terms_ar', '<ul class=\"terms text-right\" dir=\"rtl\" style=\"box-sizing: border-box; margin-top: 1rem; margin-bottom: 1rem; font-size: 16px; padding-right: 1.5rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; text-align: right !important; color: rgb(255, 255, 255)\">\r\n	<li style=\"box-sizing: border-box; margin-bottom: 0.75rem;\">تجديد الاشتراك سيكون تلقائي وفعال بتكلفة 10 ريال فى الاسبوع</li>\r\n	<li style=\"box-sizing: border-box; margin-bottom: 0.75rem;\">يمكنك إيقاف هذه الخدمة في أي وقت عن طريق إرسال Unsub ISL الى 92842</li>\r\n	<li style=\"box-sizing: border-box; margin-bottom: 0.75rem;\">يجب ان يكون عمرك 18 عاماً أو أكثر أو لديك الإذن من والديك أو الشخص المسؤول عن دفع فاتورتك حتى تستطيع الاشتراك هذه الخدمة</li>\r\n</ul>', '2020-09-21 09:10:41', '2020-10-05 12:56:03', '1', '0');
INSERT INTO `settings` VALUES ('86', 'terms_en', '<ul class=\"terms text-left\" dir=\"ltr\" style=\"box-sizing: border-box; margin-top: 1rem; margin-bottom: 1rem; font-size: 16px; padding-right: 1.5rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; color: rgb(255, 255, 255)\">\r\n	<li style=\"box-sizing: border-box; margin-bottom: 0.75rem;\">Subscription renewal will be automatic and effective at a cost of 10 riyals per week</li>\r\n	<li style=\"box-sizing: border-box; margin-bottom: 0.75rem;\">You can stop this service at any time by sending Unsub ISL to 92842</li>\r\n	<li style=\"box-sizing: border-box; margin-bottom: 0.75rem;\">You must be 18 years of age or over or have permission from your parents or the person responsible for paying your bill in order to be able to subscribe to this service</li>\r\n</ul>', '2020-09-21 09:10:41', '2020-10-05 12:55:34', '1', '0');
INSERT INTO `settings` VALUES ('87', 'f_q_en', '<ul class=\"terms text-left\" dir=\"ltr\" style=\"box-sizing: border-box; margin-top: 1rem; margin-bottom: 1rem; font-size: 16px; padding-right: 1.5rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; color: rgb(255, 255, 255)\">\r\n	<li style=\"box-sizing: border-box; margin-bottom: 0.75rem;\">Subscription renewal will be automatic and effective at a cost of 10 riyals per week</li>\r\n	<li style=\"box-sizing: border-box; margin-bottom: 0.75rem;\">You can stop this service at any time by sending Unsub ISL to 92842</li>\r\n	<li style=\"box-sizing: border-box; margin-bottom: 0.75rem;\">You must be 18 years of age or over or have permission from your parents or the person responsible for paying your bill in order to be able to subscribe to this service</li>\r\n</ul>', '2020-09-21 09:10:41', '2020-10-05 12:56:28', '1', '0');
INSERT INTO `settings` VALUES ('88', 'f_q_ar', '<ul class=\"terms text-right\" dir=\"rtl\" style=\"box-sizing: border-box; margin-top: 1rem; margin-bottom: 1rem; font-size: 16px; padding-right: 1.5rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot; text-align: right !important; color: rgb(255, 255, 255)\">\r\n	<li style=\"box-sizing: border-box; margin-bottom: 0.75rem;\">تجديد الاشتراك سيكون تلقائي وفعال بتكلفة 10 ريال فى الاسبوع</li>\r\n	<li style=\"box-sizing: border-box; margin-bottom: 0.75rem;\">يمكنك إيقاف هذه الخدمة في أي وقت عن طريق إرسال Unsub ISL الى 92842</li>\r\n	<li style=\"box-sizing: border-box; margin-bottom: 0.75rem;\">يجب ان يكون عمرك 18 عاماً أو أكثر أو لديك الإذن من والديك أو الشخص المسؤول عن دفع فاتورتك حتى تستطيع الاشتراك هذه الخدمة</li>\r\n</ul>', '2020-09-21 09:10:41', '2020-10-05 12:56:46', '1', '0');
INSERT INTO `settings` VALUES ('89', 'enable_free', '1', '2020-03-03 19:42:27', '2020-10-27 10:44:03', '7', '0');

-- ----------------------------
-- Table structure for `static_bodies`
-- ----------------------------
DROP TABLE IF EXISTS `static_bodies`;
CREATE TABLE `static_bodies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned NOT NULL,
  `static_translation_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `static_bodies_language_id_foreign` (`language_id`),
  KEY `static_bodies_static_translation_id_foreign` (`static_translation_id`),
  CONSTRAINT `static_bodies_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `static_bodies_static_translation_id_foreign` FOREIGN KEY (`static_translation_id`) REFERENCES `static_translations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of static_bodies
-- ----------------------------

-- ----------------------------
-- Table structure for `static_translations`
-- ----------------------------
DROP TABLE IF EXISTS `static_translations`;
CREATE TABLE `static_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key_word` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of static_translations
-- ----------------------------

-- ----------------------------
-- Table structure for `tans_bodies`
-- ----------------------------
DROP TABLE IF EXISTS `tans_bodies`;
CREATE TABLE `tans_bodies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned NOT NULL,
  `translatable_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tans_bodies_language_id_foreign` (`language_id`),
  KEY `tans_bodies_translatable_id_foreign` (`translatable_id`),
  CONSTRAINT `tans_bodies_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tans_bodies_translatable_id_foreign` FOREIGN KEY (`translatable_id`) REFERENCES `translatables` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=390 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tans_bodies
-- ----------------------------
INSERT INTO `tans_bodies` VALUES ('14', '2', '33', 'قران', '2020-03-30 14:39:32', '2020-03-30 14:39:32');
INSERT INTO `tans_bodies` VALUES ('15', '2', '34', 'تفسير 1', '2020-03-30 14:41:08', '2020-03-30 14:41:08');
INSERT INTO `tans_bodies` VALUES ('16', '2', '35', 'تفسير 2', '2020-03-30 14:41:50', '2020-03-30 14:41:50');
INSERT INTO `tans_bodies` VALUES ('17', '2', '36', 'تفسير 3', '2020-03-30 14:42:15', '2020-03-30 14:42:15');
INSERT INTO `tans_bodies` VALUES ('18', '2', '37', 'تفسير 4', '2020-03-30 14:42:59', '2020-03-30 14:43:17');
INSERT INTO `tans_bodies` VALUES ('19', '2', '38', 'رسائل1', '2020-03-30 14:44:48', '2020-03-30 14:44:48');
INSERT INTO `tans_bodies` VALUES ('20', '2', '39', 'ان ربنا هو الخالق نحبه ليس من اجل شى فقط لانه هو الله', '2020-03-30 14:44:48', '2020-03-30 14:44:48');
INSERT INTO `tans_bodies` VALUES ('21', '2', '40', 'رسائل2', '2020-03-30 14:46:26', '2020-03-30 14:46:26');
INSERT INTO `tans_bodies` VALUES ('22', '2', '41', 'ساعد الفقراء الذين يحتجون الى الطعام والماء', '2020-03-30 14:46:26', '2020-03-30 14:46:26');
INSERT INTO `tans_bodies` VALUES ('23', '2', '42', 'قران 1', '2020-03-30 14:47:22', '2020-03-30 14:47:22');
INSERT INTO `tans_bodies` VALUES ('24', '2', '43', 'قران 2', '2020-03-30 14:47:50', '2020-03-30 14:47:50');
INSERT INTO `tans_bodies` VALUES ('25', '2', '44', 'قران 3', '2020-03-30 14:48:26', '2020-03-30 14:48:26');
INSERT INTO `tans_bodies` VALUES ('26', '2', '45', 'قران 4', '2020-03-30 14:49:06', '2020-03-30 14:49:06');
INSERT INTO `tans_bodies` VALUES ('27', '2', '46', 'تفسير 1', '2020-03-30 14:55:40', '2020-03-30 14:55:40');
INSERT INTO `tans_bodies` VALUES ('28', '2', '47', 'تفسير 2', '2020-03-30 14:56:15', '2020-03-30 14:56:15');
INSERT INTO `tans_bodies` VALUES ('29', '2', '48', 'قران', '2020-03-30 14:56:53', '2020-03-30 14:56:53');
INSERT INTO `tans_bodies` VALUES ('30', '2', '49', 'قران 2', '2020-03-30 14:57:29', '2020-03-30 14:57:29');
INSERT INTO `tans_bodies` VALUES ('31', '2', '50', 'تفسير 4', '2020-03-30 14:57:59', '2020-03-30 14:57:59');
INSERT INTO `tans_bodies` VALUES ('32', '2', '51', 'قران 4', '2020-03-30 14:58:45', '2020-03-30 14:58:45');
INSERT INTO `tans_bodies` VALUES ('33', '2', '52', 'تواشيح', '2020-03-30 15:01:52', '2020-03-30 15:01:52');
INSERT INTO `tans_bodies` VALUES ('34', '2', '53', 'خواطر ايمانية', '2020-03-30 15:03:39', '2020-03-30 15:03:39');
INSERT INTO `tans_bodies` VALUES ('36', '2', '55', 'خدمة', '2020-04-01 19:37:34', '2020-04-01 19:37:34');
INSERT INTO `tans_bodies` VALUES ('37', '2', '56', 'content_video_ar_1', '2020-04-01 19:38:11', '2020-04-03 18:56:34');
INSERT INTO `tans_bodies` VALUES ('38', '2', '57', 'service2_audio_ar', '2020-04-02 12:30:59', '2020-04-02 12:30:59');
INSERT INTO `tans_bodies` VALUES ('39', '2', '58', 'content_audio_1_ar', '2020-04-02 12:31:25', '2020-04-02 12:31:25');
INSERT INTO `tans_bodies` VALUES ('40', '2', '59', 'content2_audio_ar', '2020-04-02 12:48:01', '2020-04-02 12:48:01');
INSERT INTO `tans_bodies` VALUES ('41', '2', '60', 'service3_image_ar', '2020-04-02 15:14:19', '2020-04-02 15:14:19');
INSERT INTO `tans_bodies` VALUES ('42', '2', '61', 'content_image_ar_1', '2020-04-02 15:14:42', '2020-04-02 15:14:42');
INSERT INTO `tans_bodies` VALUES ('43', '2', '62', 'servuice_image_ar_2', '2020-04-02 16:02:27', '2020-04-02 16:02:27');
INSERT INTO `tans_bodies` VALUES ('44', '2', '63', 'text_service_ar', '2020-04-03 18:57:48', '2020-04-03 18:58:24');
INSERT INTO `tans_bodies` VALUES ('45', '2', '64', 'content_text_title_ar', '2020-04-03 18:59:16', '2020-04-03 18:59:16');
INSERT INTO `tans_bodies` VALUES ('46', '2', '65', 'content_text_desc_ar', '2020-04-03 18:59:16', '2020-04-03 18:59:16');
INSERT INTO `tans_bodies` VALUES ('47', '2', '66', 'call_tone1_ar', '2020-04-03 21:56:57', '2020-04-03 21:59:01');
INSERT INTO `tans_bodies` VALUES ('48', '2', '67', 'call_tone_2_ar', '2020-04-03 21:58:04', '2020-04-03 21:58:04');
INSERT INTO `tans_bodies` VALUES ('49', '2', '68', 'call_du_1_ar', '2020-04-03 22:05:19', '2020-04-03 22:05:19');
INSERT INTO `tans_bodies` VALUES ('50', '2', '69', 'call_tone2_du_ar', '2020-04-03 22:07:57', '2020-04-03 22:07:57');
INSERT INTO `tans_bodies` VALUES ('52', '2', '71', 'emad_rbt_ar', '2020-04-08 17:36:18', '2020-04-08 18:06:36');
INSERT INTO `tans_bodies` VALUES ('53', '2', '72', 'emad_service_ar', '2020-04-08 17:40:47', '2020-04-08 17:40:47');
INSERT INTO `tans_bodies` VALUES ('54', '2', '73', 'emad_content_ar', '2020-04-08 17:50:27', '2020-04-08 17:50:27');
INSERT INTO `tans_bodies` VALUES ('56', '2', '75', 'مشاري راشد العفاسي', '2020-04-09 20:49:25', '2020-04-16 07:49:06');
INSERT INTO `tans_bodies` VALUES ('57', '2', '76', 'قرآن', '2020-04-09 20:49:49', '2020-04-15 23:06:32');
INSERT INTO `tans_bodies` VALUES ('59', '2', '78', 'rbt 1 ar', '2020-04-09 20:53:38', '2020-04-09 20:53:38');
INSERT INTO `tans_bodies` VALUES ('60', '2', '79', 'rbt2 ar', '2020-04-09 20:55:27', '2020-04-09 20:55:27');
INSERT INTO `tans_bodies` VALUES ('61', '2', '80', 'rbt3 ar', '2020-04-09 21:04:59', '2020-04-09 21:04:59');
INSERT INTO `tans_bodies` VALUES ('62', '2', '81', 'rbt4 ar', '2020-04-09 21:05:24', '2020-04-09 21:05:24');
INSERT INTO `tans_bodies` VALUES ('63', '2', '82', 'أحاديث', '2020-04-14 03:35:26', '2020-04-14 03:35:26');
INSERT INTO `tans_bodies` VALUES ('64', '2', '83', 'من سورة الفاتحة', '2020-04-14 03:40:32', '2020-04-14 03:40:32');
INSERT INTO `tans_bodies` VALUES ('65', '2', '84', 'سورة البقرة', '2020-04-14 03:43:44', '2020-04-14 03:43:44');
INSERT INTO `tans_bodies` VALUES ('66', '2', '85', 'سورة البقرة 2', '2020-04-14 03:45:07', '2020-04-14 03:45:07');
INSERT INTO `tans_bodies` VALUES ('67', '2', '86', 'سورة البقرة 3', '2020-04-14 03:46:12', '2020-04-14 03:46:12');
INSERT INTO `tans_bodies` VALUES ('68', '2', '87', 'سورة البقرة 4', '2020-04-14 03:47:11', '2020-04-14 03:47:11');
INSERT INTO `tans_bodies` VALUES ('69', '2', '88', 'سورة البقرة 5', '2020-04-14 03:48:10', '2020-04-14 03:48:10');
INSERT INTO `tans_bodies` VALUES ('70', '2', '89', 'سورة البقرة 6', '2020-04-14 03:49:52', '2020-04-14 03:49:52');
INSERT INTO `tans_bodies` VALUES ('71', '2', '90', 'سورة البقرة 7', '2020-04-14 03:50:43', '2020-04-14 03:50:43');
INSERT INTO `tans_bodies` VALUES ('72', '2', '91', 'سورة البقرة 8', '2020-04-14 03:51:32', '2020-04-14 03:51:32');
INSERT INTO `tans_bodies` VALUES ('73', '2', '92', 'سورة البقرة 9', '2020-04-14 03:52:17', '2020-04-14 03:52:17');
INSERT INTO `tans_bodies` VALUES ('84', '2', '103', 'أناشيد', '2020-04-14 04:15:19', '2020-04-14 04:15:19');
INSERT INTO `tans_bodies` VALUES ('95', '2', '114', 'دعاء', '2020-04-14 04:28:53', '2020-04-14 04:28:53');
INSERT INTO `tans_bodies` VALUES ('96', '2', '115', 'اللهم احفظنا بالاسلام', '2020-04-14 04:33:13', '2020-04-14 04:33:13');
INSERT INTO `tans_bodies` VALUES ('97', '2', '116', 'اللهم اني اعوذ بك من الهم والحزن', '2020-04-14 04:33:46', '2020-04-14 04:33:46');
INSERT INTO `tans_bodies` VALUES ('98', '2', '117', 'اللهم انا نسالك فعل الخيرات', '2020-04-14 04:34:44', '2020-04-14 04:34:44');
INSERT INTO `tans_bodies` VALUES ('99', '2', '118', 'اللهم اصلح احوالنا', '2020-04-14 04:35:21', '2020-04-14 04:35:21');
INSERT INTO `tans_bodies` VALUES ('100', '2', '119', 'اللهم اني اعوذ بك من جهد البلاء', '2020-04-14 04:36:22', '2020-04-14 04:36:22');
INSERT INTO `tans_bodies` VALUES ('101', '2', '120', 'اللهم اغفر لحينا وميتنا', '2020-04-14 04:37:45', '2020-04-14 04:37:45');
INSERT INTO `tans_bodies` VALUES ('102', '2', '121', 'اللهم انك خلقت نفسي', '2020-04-14 04:38:15', '2020-04-14 04:38:15');
INSERT INTO `tans_bodies` VALUES ('103', '2', '122', 'اللهم زدنا ولا تنقصنا', '2020-04-14 04:38:50', '2020-04-14 04:38:50');
INSERT INTO `tans_bodies` VALUES ('104', '2', '123', 'اللهم بلغنا رمضان', '2020-04-14 04:39:29', '2020-04-14 04:39:29');
INSERT INTO `tans_bodies` VALUES ('105', '2', '124', 'اللهم اني اسالك ان تبارك لي في نفسي', '2020-04-14 04:40:07', '2020-04-14 04:40:07');
INSERT INTO `tans_bodies` VALUES ('106', '2', '125', 'الطبلاوى', '2020-04-14 04:43:07', '2020-04-14 04:43:07');
INSERT INTO `tans_bodies` VALUES ('107', '2', '126', 'الهلباوى', '2020-04-14 04:43:57', '2020-04-14 04:43:57');
INSERT INTO `tans_bodies` VALUES ('108', '2', '127', 'إبتهالات', '2020-04-14 04:45:34', '2020-04-16 01:20:48');
INSERT INTO `tans_bodies` VALUES ('109', '2', '128', 'إبتهالات', '2020-04-14 04:49:36', '2020-04-14 04:49:36');
INSERT INTO `tans_bodies` VALUES ('110', '2', '129', 'قرآن', '2020-04-14 04:51:02', '2020-04-14 04:51:02');
INSERT INTO `tans_bodies` VALUES ('111', '2', '130', 'السلام على أله و صحبه', '2020-04-14 04:55:58', '2020-04-14 04:55:58');
INSERT INTO `tans_bodies` VALUES ('112', '2', '131', 'واعمله نبوته', '2020-04-14 04:56:38', '2020-04-14 04:56:38');
INSERT INTO `tans_bodies` VALUES ('113', '2', '132', 'الصلاة على النبى بقدر سكان جنان', '2020-04-14 04:57:39', '2020-04-14 04:57:39');
INSERT INTO `tans_bodies` VALUES ('114', '2', '133', 'حمدت_المجموعة1', '2020-04-14 04:58:38', '2020-04-14 04:58:38');
INSERT INTO `tans_bodies` VALUES ('115', '2', '134', 'حمدت_الطبلاوي1', '2020-04-14 04:59:26', '2020-04-14 04:59:26');
INSERT INTO `tans_bodies` VALUES ('116', '2', '135', 'حمدت_الطبلاوي2', '2020-04-14 05:00:07', '2020-04-14 05:00:07');
INSERT INTO `tans_bodies` VALUES ('117', '2', '136', 'حمدت_الطبلاوي3', '2020-04-14 05:00:55', '2020-04-14 05:00:55');
INSERT INTO `tans_bodies` VALUES ('118', '2', '137', 'ياصاحب الهم_الطبلاوي', '2020-04-14 05:01:43', '2020-04-14 05:01:43');
INSERT INTO `tans_bodies` VALUES ('119', '2', '138', 'يارب إن الأمور_الطبلاوي', '2020-04-14 05:02:32', '2020-04-14 05:02:32');
INSERT INTO `tans_bodies` VALUES ('120', '2', '139', 'يامن تماديت_الطبلاوي', '2020-04-14 05:03:12', '2020-04-14 05:03:12');
INSERT INTO `tans_bodies` VALUES ('121', '2', '140', 'سورة البقرة  1', '2020-04-14 05:07:25', '2020-04-14 05:07:25');
INSERT INTO `tans_bodies` VALUES ('122', '2', '141', 'سورة البقرة  2', '2020-04-14 05:08:08', '2020-04-14 05:08:08');
INSERT INTO `tans_bodies` VALUES ('123', '2', '142', 'سورة البقرة  3', '2020-04-14 05:09:10', '2020-04-14 05:09:10');
INSERT INTO `tans_bodies` VALUES ('124', '2', '143', 'سورة البقرة  4', '2020-04-14 05:09:55', '2020-04-14 05:09:55');
INSERT INTO `tans_bodies` VALUES ('125', '2', '144', 'سورة البقرة  5', '2020-04-14 05:10:46', '2020-04-14 05:10:46');
INSERT INTO `tans_bodies` VALUES ('126', '2', '145', 'سورة البقرة  6', '2020-04-14 05:11:25', '2020-04-14 05:11:25');
INSERT INTO `tans_bodies` VALUES ('127', '2', '146', 'سورة البقرة  7', '2020-04-14 05:12:02', '2020-04-14 05:12:02');
INSERT INTO `tans_bodies` VALUES ('128', '2', '147', 'سورة البقرة  8', '2020-04-14 05:12:39', '2020-04-14 05:12:39');
INSERT INTO `tans_bodies` VALUES ('129', '2', '148', 'سورة البقرة  9', '2020-04-14 05:13:43', '2020-04-14 05:13:43');
INSERT INTO `tans_bodies` VALUES ('130', '2', '149', 'سورة البقرة  10', '2020-04-14 05:14:18', '2020-04-14 05:14:18');
INSERT INTO `tans_bodies` VALUES ('131', '2', '150', 'أسماء الله الحسنى 1', '2020-04-14 05:45:42', '2020-04-14 06:00:50');
INSERT INTO `tans_bodies` VALUES ('132', '2', '151', 'أسماء الله الحسنى 2', '2020-04-14 05:46:26', '2020-04-14 06:01:33');
INSERT INTO `tans_bodies` VALUES ('133', '2', '152', 'اللهم اكفنا السوء 1', '2020-04-14 05:49:46', '2020-04-14 06:02:05');
INSERT INTO `tans_bodies` VALUES ('134', '2', '153', 'اللهم اكفنا السوء 2', '2020-04-14 05:50:50', '2020-04-14 06:02:30');
INSERT INTO `tans_bodies` VALUES ('135', '2', '154', 'صلوات على النبي', '2020-04-14 05:51:31', '2020-04-14 06:02:58');
INSERT INTO `tans_bodies` VALUES ('137', '2', '156', 'ايات الدعاء 1', '2020-04-14 05:52:36', '2020-04-14 06:04:03');
INSERT INTO `tans_bodies` VALUES ('138', '2', '157', 'ايات الدعاء 2', '2020-04-14 05:54:34', '2020-04-14 06:04:22');
INSERT INTO `tans_bodies` VALUES ('139', '2', '158', 'ايات الدعاء 3', '2020-04-14 05:56:17', '2020-04-14 06:04:38');
INSERT INTO `tans_bodies` VALUES ('140', '2', '159', 'ايات الدعاء 4', '2020-04-14 05:57:06', '2020-04-14 06:04:54');
INSERT INTO `tans_bodies` VALUES ('141', '2', '160', 'ايات الدعاء 5', '2020-04-14 05:57:56', '2020-04-14 06:05:14');
INSERT INTO `tans_bodies` VALUES ('142', '2', '161', 'اللهم اني ظلمت نفسي', '2020-04-15 03:33:02', '2020-04-15 03:33:02');
INSERT INTO `tans_bodies` VALUES ('143', '2', '162', 'اللهم اني اعوذ بك ان ارد الي ارذل العمر', '2020-04-15 03:33:41', '2020-04-15 03:33:41');
INSERT INTO `tans_bodies` VALUES ('144', '2', '163', 'اللهم اني اسالك نفس مطمئنة', '2020-04-15 03:34:35', '2020-04-15 03:34:35');
INSERT INTO `tans_bodies` VALUES ('145', '2', '164', 'اللهم اجعل والدي حبيبي', '2020-04-15 03:35:14', '2020-04-15 03:35:14');
INSERT INTO `tans_bodies` VALUES ('146', '2', '165', 'رب اعني ولا تعن عليا', '2020-04-15 03:35:52', '2020-04-15 03:35:52');
INSERT INTO `tans_bodies` VALUES ('147', '2', '166', 'اللهم بابك مفتوح', '2020-04-15 03:36:29', '2020-04-15 03:36:29');
INSERT INTO `tans_bodies` VALUES ('148', '2', '167', 'اللهم اكفنا شر الامراض', '2020-04-15 03:37:05', '2020-04-15 03:37:05');
INSERT INTO `tans_bodies` VALUES ('149', '2', '168', 'اللهم لا ترد دعائنا', '2020-04-15 03:37:44', '2020-04-15 03:37:44');
INSERT INTO `tans_bodies` VALUES ('150', '2', '169', 'اللهم ان ناصيتي بيدك', '2020-04-15 03:38:25', '2020-04-15 03:38:25');
INSERT INTO `tans_bodies` VALUES ('151', '2', '170', 'اللهم اغفر لنا علمك فينا', '2020-04-15 03:39:33', '2020-04-15 03:39:33');
INSERT INTO `tans_bodies` VALUES ('152', '2', '171', 'نستودعك ابائنا وامهاتنا', '2020-04-15 03:40:36', '2020-04-15 03:40:36');
INSERT INTO `tans_bodies` VALUES ('153', '2', '172', 'اللهم مالك الملك', '2020-04-15 03:41:59', '2020-04-15 03:41:59');
INSERT INTO `tans_bodies` VALUES ('154', '2', '173', 'كل شئ خاشع لك', '2020-04-15 03:44:12', '2020-04-15 03:44:12');
INSERT INTO `tans_bodies` VALUES ('155', '2', '174', 'يا صاحبي عند الشدة', '2020-04-15 03:45:29', '2020-04-15 03:45:29');
INSERT INTO `tans_bodies` VALUES ('156', '2', '175', 'حب الاحسان', '2020-04-15 03:46:40', '2020-04-15 03:46:40');
INSERT INTO `tans_bodies` VALUES ('157', '2', '176', 'اعوذ من التردي', '2020-04-15 03:47:53', '2020-04-15 03:47:53');
INSERT INTO `tans_bodies` VALUES ('158', '2', '177', 'الهي لا تعذب لسانا', '2020-04-15 03:48:40', '2020-04-15 03:48:40');
INSERT INTO `tans_bodies` VALUES ('159', '2', '178', 'رفع البلاء', '2020-04-15 03:49:22', '2020-04-15 03:49:22');
INSERT INTO `tans_bodies` VALUES ('160', '2', '179', 'ياارحم الراحمين', '2020-04-15 03:50:31', '2020-04-15 03:50:31');
INSERT INTO `tans_bodies` VALUES ('161', '2', '180', 'الحمد لله عدد ما احصي كتابة', '2020-04-15 03:51:14', '2020-04-15 03:51:14');
INSERT INTO `tans_bodies` VALUES ('180', '2', '199', 'سورة البقرة 10', '2020-04-15 04:24:07', '2020-04-15 04:24:07');
INSERT INTO `tans_bodies` VALUES ('181', '2', '200', 'سورة البقرة 11', '2020-04-15 04:25:43', '2020-04-15 04:25:43');
INSERT INTO `tans_bodies` VALUES ('182', '2', '201', 'سورة البقرة 12', '2020-04-15 04:26:56', '2020-04-15 04:26:56');
INSERT INTO `tans_bodies` VALUES ('183', '2', '202', 'سورة البقرة 13', '2020-04-15 04:28:11', '2020-04-15 04:28:11');
INSERT INTO `tans_bodies` VALUES ('184', '2', '203', 'سورة البقرة 14', '2020-04-15 04:30:51', '2020-04-15 04:30:51');
INSERT INTO `tans_bodies` VALUES ('185', '2', '204', 'سورة البقرة 15', '2020-04-15 04:33:02', '2020-04-15 04:33:02');
INSERT INTO `tans_bodies` VALUES ('186', '2', '205', 'سورة البقرة 16', '2020-04-15 04:35:35', '2020-04-15 04:35:35');
INSERT INTO `tans_bodies` VALUES ('187', '2', '206', 'سورة البقرة 17', '2020-04-15 04:36:57', '2020-04-15 04:36:57');
INSERT INTO `tans_bodies` VALUES ('188', '2', '207', 'سورة البقرة 18', '2020-04-15 04:39:35', '2020-04-15 04:39:35');
INSERT INTO `tans_bodies` VALUES ('189', '2', '208', 'سورة البقرة 19', '2020-04-15 04:40:31', '2020-04-15 04:40:31');
INSERT INTO `tans_bodies` VALUES ('190', '2', '209', 'سورة البقرة 20', '2020-04-15 04:42:59', '2020-04-15 04:42:59');
INSERT INTO `tans_bodies` VALUES ('191', '2', '210', 'سورة البقرة 21', '2020-04-15 04:44:48', '2020-04-15 04:44:48');
INSERT INTO `tans_bodies` VALUES ('192', '2', '211', 'سورة البقرة 22', '2020-04-15 04:47:55', '2020-04-15 04:47:55');
INSERT INTO `tans_bodies` VALUES ('193', '2', '212', 'سورة البقرة 23', '2020-04-15 04:50:50', '2020-04-15 04:50:50');
INSERT INTO `tans_bodies` VALUES ('194', '2', '213', 'سورة البقرة 24', '2020-04-15 04:52:05', '2020-04-15 04:52:05');
INSERT INTO `tans_bodies` VALUES ('195', '2', '214', 'سورة البقرة 25', '2020-04-15 04:53:37', '2020-04-15 04:53:37');
INSERT INTO `tans_bodies` VALUES ('196', '2', '215', 'سورة البقرة 26', '2020-04-15 04:55:16', '2020-04-15 04:55:16');
INSERT INTO `tans_bodies` VALUES ('197', '2', '216', 'سورة البقرة 27', '2020-04-15 04:58:27', '2020-04-15 04:58:27');
INSERT INTO `tans_bodies` VALUES ('198', '2', '217', 'سورة البقرة 28', '2020-04-15 04:59:40', '2020-04-15 04:59:40');
INSERT INTO `tans_bodies` VALUES ('199', '2', '218', 'سورة البقرة 29', '2020-04-15 05:00:39', '2020-04-15 05:00:39');
INSERT INTO `tans_bodies` VALUES ('200', '2', '219', 'سورة البقرة 30', '2020-04-15 05:01:47', '2020-04-15 05:01:47');
INSERT INTO `tans_bodies` VALUES ('201', '2', '220', 'سورة البقرة 11', '2020-04-15 05:10:58', '2020-04-15 05:10:58');
INSERT INTO `tans_bodies` VALUES ('202', '2', '221', 'سورة البقرة 12', '2020-04-15 05:11:42', '2020-04-15 05:11:42');
INSERT INTO `tans_bodies` VALUES ('203', '2', '222', 'سورة البقرة 13', '2020-04-15 05:12:35', '2020-04-15 05:12:35');
INSERT INTO `tans_bodies` VALUES ('204', '2', '223', 'سورة البقرة 14', '2020-04-15 05:13:21', '2020-04-15 05:13:21');
INSERT INTO `tans_bodies` VALUES ('205', '2', '224', 'سورة البقرة 15', '2020-04-15 05:15:04', '2020-04-15 05:15:04');
INSERT INTO `tans_bodies` VALUES ('206', '2', '225', 'سورة البقرة 16', '2020-04-15 05:15:45', '2020-04-15 05:15:45');
INSERT INTO `tans_bodies` VALUES ('207', '2', '226', 'سورة البقرة 16', '2020-04-15 05:16:16', '2020-04-15 05:16:16');
INSERT INTO `tans_bodies` VALUES ('208', '2', '227', 'سورة البقرة 17', '2020-04-15 05:16:19', '2020-04-15 05:16:19');
INSERT INTO `tans_bodies` VALUES ('209', '2', '228', 'سورة البقرة 18', '2020-04-15 05:21:43', '2020-04-15 05:21:43');
INSERT INTO `tans_bodies` VALUES ('210', '2', '229', 'سورة البقرة 19', '2020-04-15 05:26:19', '2020-04-15 05:26:19');
INSERT INTO `tans_bodies` VALUES ('211', '2', '230', 'سورة البقرة 20', '2020-04-15 05:27:27', '2020-04-15 05:27:27');
INSERT INTO `tans_bodies` VALUES ('212', '2', '231', 'سورة البقرة 21', '2020-04-15 05:28:58', '2020-04-15 05:28:58');
INSERT INTO `tans_bodies` VALUES ('213', '2', '232', 'سورة البقرة 22', '2020-04-15 05:30:11', '2020-04-15 05:30:11');
INSERT INTO `tans_bodies` VALUES ('214', '2', '233', 'سورة البقرة 23', '2020-04-15 05:31:32', '2020-04-15 05:31:32');
INSERT INTO `tans_bodies` VALUES ('215', '2', '234', 'سورة البقرة 24', '2020-04-15 05:32:38', '2020-04-15 05:32:38');
INSERT INTO `tans_bodies` VALUES ('216', '2', '235', 'سورة البقرة 25', '2020-04-15 05:34:33', '2020-04-15 05:34:33');
INSERT INTO `tans_bodies` VALUES ('217', '2', '236', 'سورة البقرة 26', '2020-04-15 05:35:43', '2020-04-15 05:35:43');
INSERT INTO `tans_bodies` VALUES ('218', '2', '237', 'سورة البقرة 27', '2020-04-15 05:36:20', '2020-04-15 05:36:20');
INSERT INTO `tans_bodies` VALUES ('219', '2', '238', 'سورة البقرة 28', '2020-04-15 05:38:03', '2020-04-15 05:38:03');
INSERT INTO `tans_bodies` VALUES ('220', '2', '239', 'سورة البقرة 29', '2020-04-15 05:39:06', '2020-04-15 05:39:06');
INSERT INTO `tans_bodies` VALUES ('221', '2', '240', 'سورة البقرة 30', '2020-04-15 05:39:57', '2020-04-15 05:39:57');
INSERT INTO `tans_bodies` VALUES ('222', '2', '241', 'ايات الدعاء 6', '2020-04-15 23:29:08', '2020-04-15 23:29:08');
INSERT INTO `tans_bodies` VALUES ('223', '2', '242', 'ايات الدعاء 7', '2020-04-15 23:30:05', '2020-04-15 23:30:05');
INSERT INTO `tans_bodies` VALUES ('224', '2', '243', 'ايات الدعاء 8', '2020-04-15 23:31:35', '2020-04-15 23:31:35');
INSERT INTO `tans_bodies` VALUES ('225', '2', '244', 'ايات الدعاء 9', '2020-04-15 23:32:26', '2020-04-15 23:32:26');
INSERT INTO `tans_bodies` VALUES ('226', '2', '245', 'ايات الدعاء 10', '2020-04-15 23:33:20', '2020-04-15 23:33:20');
INSERT INTO `tans_bodies` VALUES ('227', '2', '246', 'أضاء في الليل نار', '2020-04-15 23:34:53', '2020-04-15 23:34:53');
INSERT INTO `tans_bodies` VALUES ('228', '2', '247', 'اغفت قريش', '2020-04-15 23:40:07', '2020-04-15 23:40:07');
INSERT INTO `tans_bodies` VALUES ('229', '2', '248', 'الله اكبر', '2020-04-15 23:41:50', '2020-04-15 23:41:50');
INSERT INTO `tans_bodies` VALUES ('230', '2', '249', 'الاولياء', '2020-04-15 23:43:34', '2020-04-15 23:43:34');
INSERT INTO `tans_bodies` VALUES ('231', '2', '250', 'محمد سيد الخلق', '2020-04-15 23:45:20', '2020-04-15 23:45:20');
INSERT INTO `tans_bodies` VALUES ('232', '2', '251', 'بعزمه', '2020-04-15 23:46:52', '2020-04-15 23:46:52');
INSERT INTO `tans_bodies` VALUES ('233', '2', '252', 'عيد السماء', '2020-04-15 23:48:15', '2020-04-15 23:48:15');
INSERT INTO `tans_bodies` VALUES ('234', '2', '253', 'عز قلب كل محب', '2020-04-15 23:49:13', '2020-04-15 23:49:13');
INSERT INTO `tans_bodies` VALUES ('235', '2', '254', 'في فتح مكه', '2020-04-15 23:55:23', '2020-04-15 23:55:23');
INSERT INTO `tans_bodies` VALUES ('236', '2', '255', 'هل يبتغي الملك', '2020-04-15 23:56:03', '2020-04-15 23:56:03');
INSERT INTO `tans_bodies` VALUES ('237', '2', '256', 'امل ترقبه الزمان 1', '2020-04-15 23:56:46', '2020-04-15 23:56:46');
INSERT INTO `tans_bodies` VALUES ('238', '2', '257', 'امل ترقبه الزمان 2', '2020-04-15 23:57:32', '2020-04-15 23:57:32');
INSERT INTO `tans_bodies` VALUES ('239', '2', '258', 'امل ترقبه الزمان 3', '2020-04-15 23:58:58', '2020-04-15 23:58:58');
INSERT INTO `tans_bodies` VALUES ('240', '2', '259', 'امل ترقبه الزمان 4', '2020-04-15 23:59:54', '2020-04-15 23:59:54');
INSERT INTO `tans_bodies` VALUES ('241', '2', '260', 'امل ترقبه الزمان 5', '2020-04-16 00:00:39', '2020-04-16 00:00:39');
INSERT INTO `tans_bodies` VALUES ('244', '2', '263', 'القرآن الكريم', '2020-04-16 00:11:24', '2020-04-16 04:00:55');
INSERT INTO `tans_bodies` VALUES ('245', '2', '264', 'مشاري راشد العفاسي', '2020-04-16 00:13:52', '2020-04-16 07:50:39');
INSERT INTO `tans_bodies` VALUES ('246', '2', '265', 'من سورة الفاتحة', '2020-04-16 00:16:13', '2020-04-16 00:16:13');
INSERT INTO `tans_bodies` VALUES ('247', '2', '266', 'سورة البقرة  1', '2020-04-16 00:17:01', '2020-04-16 00:17:01');
INSERT INTO `tans_bodies` VALUES ('248', '2', '267', 'سورة البقرة 2', '2020-04-16 00:20:03', '2020-04-16 00:20:03');
INSERT INTO `tans_bodies` VALUES ('249', '2', '268', 'الطبلاوي', '2020-04-16 00:21:08', '2020-04-16 00:21:08');
INSERT INTO `tans_bodies` VALUES ('250', '2', '269', 'سورة البقرة  1', '2020-04-16 00:22:12', '2020-04-16 00:22:12');
INSERT INTO `tans_bodies` VALUES ('251', '2', '270', 'سورة البقرة  2', '2020-04-16 00:24:06', '2020-04-16 00:24:06');
INSERT INTO `tans_bodies` VALUES ('253', '2', '272', 'سؤال وجواب', '2020-04-16 01:14:24', '2020-04-16 01:14:24');
INSERT INTO `tans_bodies` VALUES ('254', '2', '273', 'موضوعات', '2020-04-16 01:30:31', '2020-04-16 01:30:31');
INSERT INTO `tans_bodies` VALUES ('255', '2', '274', 'قصص الانبياء', '2020-04-16 01:32:39', '2020-04-16 01:32:39');
INSERT INTO `tans_bodies` VALUES ('257', '2', '276', 'صفات الماء الذي يصلح للوضوء', '2020-04-16 02:38:06', '2020-04-16 05:17:49');
INSERT INTO `tans_bodies` VALUES ('258', '2', '277', 'استخدام مياة المجاري  للوضوء', '2020-04-16 02:39:47', '2020-04-16 05:20:53');
INSERT INTO `tans_bodies` VALUES ('259', '2', '278', 'هل يضر الماء المشمس  بالانسان', '2020-04-16 02:43:19', '2020-04-16 05:24:58');
INSERT INTO `tans_bodies` VALUES ('260', '2', '279', 'تطهر من الجنابة بمسح جسدي بالثلج', '2020-04-16 03:01:56', '2020-04-16 05:16:02');
INSERT INTO `tans_bodies` VALUES ('261', '2', '280', 'خلط الماء بالصابون اثناء الغسل', '2020-04-16 03:05:14', '2020-04-16 05:14:24');
INSERT INTO `tans_bodies` VALUES ('262', '2', '281', 'عيسى عليه السلام ( ولادة عيسى عليه السلام )', '2020-04-16 03:07:32', '2020-04-16 06:40:19');
INSERT INTO `tans_bodies` VALUES ('263', '2', '282', 'السيرة النبوية', '2020-04-16 03:17:22', '2020-04-16 03:17:22');
INSERT INTO `tans_bodies` VALUES ('264', '2', '283', 'الفتح المبين (صلح الحديبية)  صلح الحديبية', '2020-04-16 03:19:43', '2020-04-16 06:32:58');
INSERT INTO `tans_bodies` VALUES ('265', '2', '284', 'الفتح المبين (صلح الحديبية)  صلح الحديبية', '2020-04-16 06:34:26', '2020-04-16 06:34:26');
INSERT INTO `tans_bodies` VALUES ('266', '2', '285', 'الفتح المبين (صلح الحديبية)  صلح الحديبية', '2020-04-16 06:34:42', '2020-04-16 06:34:42');
INSERT INTO `tans_bodies` VALUES ('267', '2', '286', 'الفتح المبين (صلح الحديبية)  صلح الحديبية', '2020-04-16 06:34:56', '2020-04-16 06:34:56');
INSERT INTO `tans_bodies` VALUES ('268', '2', '287', 'الفتح المبين (صلح الحديبية)  صلح الحديبية', '2020-04-16 06:35:08', '2020-04-16 06:35:08');
INSERT INTO `tans_bodies` VALUES ('270', '2', '289', 'عيسى عليه السلام ( مواجهة القوم )', '2020-04-16 06:42:30', '2020-04-16 06:42:30');
INSERT INTO `tans_bodies` VALUES ('271', '2', '290', 'عيسى عليه السلام ( مواجهة القوم )', '2020-04-16 06:42:42', '2020-04-16 06:42:42');
INSERT INTO `tans_bodies` VALUES ('272', '2', '291', 'عيسى عليه السلام ( مواجهة القوم )', '2020-04-16 06:43:02', '2020-04-16 06:43:02');
INSERT INTO `tans_bodies` VALUES ('273', '2', '292', 'دليل الصائم', '2020-04-16 06:47:01', '2020-04-16 06:47:01');
INSERT INTO `tans_bodies` VALUES ('274', '2', '293', 'الرقية الشرعية', '2020-04-16 06:48:52', '2020-04-16 06:48:52');
INSERT INTO `tans_bodies` VALUES ('275', '2', '294', 'ايه ومعلومة', '2020-04-16 07:00:01', '2020-04-16 07:00:01');
INSERT INTO `tans_bodies` VALUES ('276', '2', '295', 'سورة البقرة  186', '2020-04-16 07:04:39', '2020-04-16 07:04:39');
INSERT INTO `tans_bodies` VALUES ('277', '2', '296', '7 سورة إبراهيم', '2020-04-16 07:06:33', '2020-04-16 07:06:33');
INSERT INTO `tans_bodies` VALUES ('278', '2', '297', '42سورة الزمر', '2020-04-16 07:07:23', '2020-04-16 07:07:23');
INSERT INTO `tans_bodies` VALUES ('279', '2', '298', 'سورة النساء 19', '2020-04-16 07:09:04', '2020-04-16 07:09:04');
INSERT INTO `tans_bodies` VALUES ('280', '2', '299', 'سورة الأعراف 32', '2020-04-16 07:09:55', '2020-04-16 07:09:55');
INSERT INTO `tans_bodies` VALUES ('281', '2', '300', 'أسماء الله الحسنى', '2020-04-16 07:11:57', '2020-04-16 07:11:57');
INSERT INTO `tans_bodies` VALUES ('282', '2', '301', 'الباسط', '2020-04-16 07:19:40', '2020-04-16 07:19:40');
INSERT INTO `tans_bodies` VALUES ('283', '2', '302', 'الباسط: يعطي رزقه ويقدّره لمن يشاء من عباده', '2020-04-16 07:19:40', '2020-04-16 07:19:40');
INSERT INTO `tans_bodies` VALUES ('284', '2', '303', 'الباطن', '2020-04-16 07:20:19', '2020-04-16 07:20:19');
INSERT INTO `tans_bodies` VALUES ('285', '2', '304', 'الباطن: يُعرف من خلال دلائل قدرته، وعظيم خلقه، فهو لا يُرى في الحياة الدّنيا', '2020-04-16 07:20:19', '2020-04-16 07:20:19');
INSERT INTO `tans_bodies` VALUES ('286', '2', '305', 'البديع', '2020-04-16 07:21:05', '2020-04-16 07:21:05');
INSERT INTO `tans_bodies` VALUES ('287', '2', '306', 'البديع: خلق الكون وما فيه بإبداعٍ وإتقانٍ لا يُعرف له مثيل', '2020-04-16 07:21:05', '2020-04-16 07:21:05');
INSERT INTO `tans_bodies` VALUES ('288', '2', '307', 'البصير', '2020-04-16 07:21:37', '2020-04-16 07:23:37');
INSERT INTO `tans_bodies` VALUES ('289', '2', '308', 'البصير: يرى كلّ شيءٍ في هذا الكون، ولا يخفى عليه شيء', '2020-04-16 07:21:37', '2020-04-16 07:21:37');
INSERT INTO `tans_bodies` VALUES ('290', '2', '309', 'التّواب', '2020-04-16 07:22:14', '2020-04-16 07:22:14');
INSERT INTO `tans_bodies` VALUES ('291', '2', '310', 'التّواب: يتوب على عباده، ويغفر لهم كلّما أذنبوا', '2020-04-16 07:22:14', '2020-04-16 07:22:14');
INSERT INTO `tans_bodies` VALUES ('292', '2', '311', '<p><strong>فالدنيا دار اختبار للايمان، والاخرة دار الجزاء</strong></p>\r\n\r\n<p>.. ومن الناس من لا يعبد الله.. هؤلاء متساوون في عطاء الربوبية مع المؤمنين في الدنيا.. ولكن في الآخرة يكون عطاء الالوهية للمؤمنين وحدهم.. فنعم الله لأصحاب الجنة، وعطاءات الله لمن آمن.. واقرأ قوله تبارك وتعالى. {قُلْ مَنْ حَرَّمَ زِينَةَ الله التي أَخْرَجَ لِعِبَادِهِ وَالْطَّيِّبَاتِ مِنَ الرزق قُلْ هِي لِلَّذِينَ آمَنُواْ فِي الحياة الدنيا خَالِصَةً يَوْمَ القيامة كَذَلِكَ نُفَصِّلُ الآيات لِقَوْمٍ يَعْلَمُونَ} [الأعراف: 32] على ان الحمد لله ليس في الدنيا فقط.. بل هو في الدنيا والاخرة</p>', '2020-04-16 07:24:32', '2020-04-17 17:23:05');
INSERT INTO `tans_bodies` VALUES ('293', '2', '312', 'واذا عدنا إلى بيوتنا فالله سخر لنا زوجاتنا ورزقنا بأولادنا وهذا يستوجب الحمد\r\nاذن فكل حركة حياة في الدنيا من الانسان تستوجب الحمد.. ولهذا لابد ان يكون الانسان حامدا دائما..\r\nبل ان الانسان يجب ان يحمد الله على اي مكروه أصابه؛ لأنه قد يكون الشيء الذي يعتبره شرا هو عينه الخير\r\nفالله تعالى يقول:\r\n{يَا أَيُّهَا الذين آمَنُواْ لاَ يَحِلُّ لَكُمْ أَن تَرِثُواْ النسآء كَرْهاً وَلاَ تَعْضُلُوهُنَّ لِتَذْهَبُواْ بِبَعْضِ ما آتَيْتُمُوهُنَّ إِلاَّ أَن يَأْتِينَ بِفَاحِشَةٍ مُّبَيِّنَةٍ وَعَاشِرُوهُنَّ بالمعروف فَإِن كَرِهْتُمُوهُنَّ فعسى أَن تَكْرَهُواْ شَيْئاً وَيَجْعَلَ الله فِيهيهِ خَيْراً كَثِيراً}\r\n[النساء: 19]', '2020-04-16 07:25:52', '2020-04-16 07:25:52');
INSERT INTO `tans_bodies` VALUES ('294', '2', '313', 'عندما ننام ويأخذ الله سبحانه وتعالى أرواحنا، ثم يردها الينا عندما نستيقظ، فإن هذا يوجب الحمد، فالله سبحانه وتعالى يقول:\r\n{الله يَتَوَفَّى الأنفس حِينَ مَوْتِهَا والتي لَمْ تَمُتْ فِي مَنَامِهَا فَيُمْسِكُ التي قضى عَلَيْهَا الموت وَيُرْسِلُ الأخرى إلى أَجَلٍ مُّسَمًّى إِنَّ فِي ذَلِكَ لآيَاتٍ لِّقَوْمٍ يَتَفَكَّرُونَ}\r\n[الزمر: 42] وهكذا فإن مجرد استيقاظنا من النوم، وان الله سبحانه وتعالى رد علينا أرواحنا، وهذا الرد يستوجب الحمد،', '2020-04-16 07:27:13', '2020-04-16 07:27:13');
INSERT INTO `tans_bodies` VALUES ('295', '2', '314', '{وَإِذْ تَأَذَّنَ رَبُّكُمْ لَئِن شَكَرْتُمْ لأَزِيدَنَّكُمْ وَلَئِن كَفَرْتُمْ إِنَّ عَذَابِي لَشَدِيدٌ} [إبراهيم: 7]\r\nوهكذا نعرف ان الشكر على النعمة يعطينا مزيدا من النعمة.. فنشكر عليها فتعطينا المزيد وهكذا يظل الحمد دائماً والنعمة دائمة.. اننا لو استعرضنا حياتنا كلها فكل حركة فيها تقتضي الحمد،', '2020-04-16 07:31:28', '2020-04-16 07:31:28');
INSERT INTO `tans_bodies` VALUES ('296', '2', '315', 'وَإِذَا سَأَلَكَ عِبَادِي عَنِّي فَإِنِّي قَرِيبٌ أُجِيبُ دَعْوَةَ الداع إِذَا دَعَانِ فَلْيَسْتَجِيبُواْ لِي وَلْيُؤْمِنُواْ بِي لَععَلَّهُمْ يَرْشُدُونَ} [البقرة: 186]\r\nوالله سبحانه وتعالى يعرف ما في نفسك، ولذلك فإنه يعطيك دون أن تسأل. واقرأ الحديث القدسي: يقول رب العزة: (من شغله ذكري عن مسألتي أعطيته أفضل ما أعطي السائلين)', '2020-04-16 07:35:20', '2020-04-16 07:35:20');
INSERT INTO `tans_bodies` VALUES ('297', '2', '316', 'القرآن يجيب', '2020-04-16 07:54:54', '2020-04-16 07:54:54');
INSERT INTO `tans_bodies` VALUES ('298', '2', '317', 'Did Jesus preach, peace be upon him', '2020-04-16 07:57:28', '2020-04-16 08:45:57');
INSERT INTO `tans_bodies` VALUES ('299', '2', '318', 'أركان الإسلام', '2020-04-16 08:05:29', '2020-04-16 08:05:29');
INSERT INTO `tans_bodies` VALUES ('300', '2', '319', 'الشّهادتان', '2020-04-16 08:07:33', '2020-04-16 08:07:33');
INSERT INTO `tans_bodies` VALUES ('301', '2', '320', 'ومعنى الشهادتين (أن يشهد المسلم بشهادتي الإسلام قائلاً: (أشْهَدُ أنْ لا إِلهَ إلّا اللهُ وأشْهَدُ أنّ محمّداً رسولُ اللهِ))، وتُستفاد هذه الصيغة للشهادتين من قوله تعالى: (أشَهِدَ اللَّهُ أَنَّهُ لا إِلَهَ إِلَّا هُوَ وَالْمَلائِكَةُ وَأُولُو الْعِلْمِ قَائِماً بِالْقِسْطِ لا إِلَهَ إِلَّا هُوَ الْعَزِيزُ الْحَكِيمُ)،[٤] وقوله تعالى: (مُحَمَّدٌ رَسُولُ اللَّهِ وَالَّذِينَ مَعَهُ أَشِدَّاءُ عَلَى الْكُفَّارِ رُحَمَاءُ بَيْنَهُمْ).[٥] أما معنى قول: (لا إلهَ إلّا اللهُ): أي أنّه لا معبودَ يُعبد بحقٍّ في الوجود إلا الله -تبارك وتعالى- وحدَه، وأنّه لا شريك له، بل هو واحد بألوهيّته وربوبيّته وأسمائه وصفاته، قال تعالى: (وَإِذْ قَالَ إِبْرَاهِيمُ لِأَبِيهِ وَقَوْمِهِ إِنَّنِي بَرَاءٌ مِمَّا تَعْبُدُونَ*إِلَّا الَّذِي فَطَرَنِي)؛[٦] فمعنى الشّهادتَين: هو أن يشهد المسلم أنّه لا معبود بحقٍّ إلا الله، وأنّ يشهد أن محمّداً هو عبد الله ورسوله وخاتم الأنبياء والمُرسَلين.[٧]', '2020-04-16 08:07:33', '2020-04-16 08:07:33');
INSERT INTO `tans_bodies` VALUES ('302', '2', '321', 'إقامة الصّلاة', '2020-04-16 08:09:03', '2020-04-16 08:09:03');
INSERT INTO `tans_bodies` VALUES ('303', '2', '322', 'الصلّاة عمود الدّين الإسلاميّ، وأوّل ما يُحاسَب عليه العبد المسلم يوم القيامة الصّلاة، فإن صَلحت صَلح سائر العمل والعبادة، والصّلاة هي الصلة بين العبد وربّه، ومعنى ركن إقامة الصلاة أن يعتقد الإنسان اعتقاداً جازماً أنّ الله قد أوجب وفرض على كلّ مسلمٍ بالغٍ عاقلٍ أهلٌ للتكليف خمس صلواتٍ مفروضةٍ في اليوم واللّيلة، وعلى المسلم أن يُؤدّي الصّلوات الخمس المفروضة حسب وقتها وهيئتها وكيّفيتها، وأنّ يكون على طهارةٍ، والصّلوات المفروضة هي صلاة الفجر، وصلاة الظّهر، وصلاة العصر، وصلاة المغرب، وصلاة العشاء، وتمثّل إقامة الصلاة نافلةً كانت أو فرضاً صِدقَ وصحة التّوجُّه إلى الله تبارك وتعالى وحدَه لا شريك له في الأمور جميعها، مع صدق التوكّل عليه، وصدق اللّجوء إليه.[٨] ودقّة التعبير باللفظ الدّال على إقامة الصّلاة هو إقامتها على أفضل وجهٍ مُمكن والإتيان بها على حقيقتها، وهذا هو المطلوب من كل مسلم تحقيقه في الصّلاة، وهي الصلة اليوميّة بين العبد وخالقه، فالمطلوب إقامتها لا أداءها فحسب؛ لأن الأداء لا يعني الإتيان بها على حقيقتها، فللصّلاة أثر عجيب إذا ما أقامها المُسلم بحقّها والتزم أخلاقها التي تدعو لها، والفضائل التي تُرشِد إليها، فكلّ مسلمٍ التزم بتلك الأخلاق بعد التزامه بأداء الصّلاة فهو مسلمٌ مُقيمٌ للصّلاة، وفرقٌ كبير بين مُقيمٌ للرّكن ومؤدٍّ له.[٨] قال تعالى: (اتْلُ مَا أُوحِيَ إِلَيْكَ مِنَ الْكِتَابِ وَأَقِمِ الصَّلَاةَ ۖ إِنَّ الصَّلَاةَ تَنْهَىٰ عَنِ الْفَحْشَاءِ وَالْمُنكَرِ ۗ وَلَذِكْرُ اللَّهِ أَكْبَرُ ۗ وَاللَّهُ يَعْلَمُ مَا تَصْنَعُونَ).[٩]', '2020-04-16 08:09:03', '2020-04-16 08:09:03');
INSERT INTO `tans_bodies` VALUES ('304', '2', '323', 'الصّيام', '2020-04-16 08:12:01', '2020-04-16 08:12:01');
INSERT INTO `tans_bodies` VALUES ('305', '2', '324', 'يُعرّف الصّيام بأنّه الإمساك عن جميع المُفطرات من الفجر الصادق إلى غروب الشمس؛ بقصد التقرّب إلى الله وطاعته، والتزام أمره سبحانه وتعالى. فالصوم هو ركن من أركان الإسلام الخمسة، وله أحكام خاصّة وكيفيّة شرعيّة، ويجب التقيّد فيها كما جاءت دون زيادةٍ أو نُقصان، ولا يُعدّ العبد مُحقّقاً لحقيقة الصيام إلّا إذا ترك وأمسك عن جميع المفطرات الحسيّة والمعنويّة؛ فالمُفطرات الحسيّة هي الأكل والشّرب، والمُفطرات المعنويّة هي الأفعال والأمور المُنقِصة لأجر الصّائم من الذّنوب؛ فيُمسك عن ارتكاب الذنوب والمعاصي والمُنكَرات، فيبتعد عن الخصام والرّفث، وبما أنّ الصّوم ركنٌ من أركان الإسلام فهو فرضٌ على كل مسلمٍ ومسلمةٍ بشرط أهليّة التّكليف.[٨]', '2020-04-16 08:12:01', '2020-04-16 08:12:01');
INSERT INTO `tans_bodies` VALUES ('306', '2', '325', 'إيتاء الزّكاة', '2020-04-16 08:13:04', '2020-04-16 08:13:04');
INSERT INTO `tans_bodies` VALUES ('307', '2', '326', 'الزّكاة ركنٌ من أركان الإسلام الخمسة، وهي حقٌّ واجبٌ في المال في أحوالٍ خاصّةٍ في توقيتٍ مُحدَّدٍ، والزّكاة هي المقدار الواجب إخراجه من أموال المسلمين لمُستحقّيه، ويكون ذلك في المال الذي بلغ النِّصاب الشرعيّ مُحدّد المقدار في الشريعة الإسلاميّة بنظامٍ دقيقٍ وبشروطٍ مُعيّنةٍ، ويُطلَق لفظ الزّكاة على المقدار الذي يتم استخراجه من مجموع المال المُزكّى به، فيُسمّى ذلك المقدار المُستخرَج من المال زكاةً‏.[١٠]‏ وقد أوجب الله سبحانه وتعالى الزّكاة في الأموال التي لها قابليّة النموّ والزّيادة، فأوجب الزكاة في الأموال التي يمكن تنميتها، وهي الأنعام، والذّهب والفضّة اللذان يُعرفان بالنقدين، وكذلك من الأموال التي تنمو فأوجب فيها الزّكاة؛ كالزروع والثمار، وعروض التجارة. أمّا مصارف الزّكاة فهي ثمانية مصارف؛ وقد بيّنها الله تبارك وتعالى بالنص عليها في القرآن الكريم بقوله: (إِنَّمَا الصَّدَقَاتُ لِلْفُقَرَاءِ وَالْمَسَاكِينِ وَالْعَامِلِينَ عَلَيْهَا وَالْمُؤَلَّفَةِ قُلُوبُهُمْ وَفِي الرِّقَابِ وَالْغَارِمِينَ وَفِي سَبِيلِ اللَّهِ وَابْنِ السَّبِيلِ ۖ فَرِيضَةً مِّنَ اللَّهِ ۗ وَاللَّهُ عَلِيمٌ حَكِيمٌ)،[١١] ولذلك فمصارف الزّكاة التي أوجب الله صرفها عليها هي هذه المصارف الثمانية، فمن أخرج الزّكاة في غير هذه المصارف فلم يَقُم بالرّكن المطلوب منه، ولا تسقط عنه فريضة الزكاة؛ لأنّه لم يَقُم به بالكيفيّة الشرعيّة المُحدّدة في هذا الرّكن، وتبقى ذمته مشغولةً بهذا المال الذي أوجبه الله عليه فرضاً حقاً لأصناف الزّكاة الثّمانية، ويجب على المسلم إخراج مقدار الزّكاة الواجب عليه فورَ وجوبها، بشرط أن تكون بلغت النِّصاب الشرعيّ المُحدّد أيضاً بالشريعة الإسلاميّة من خلال نظام الزّكاة، ويشترط كذلك أن يُحوّل الحول على المال، فأي مسلم حالَ على ماله سنة كاملة مع وجود باقي شروط الزّكاة وجب عليه إخراج الزّكاة فرضاً، مع الأخذ بعين الاعتبار أن الزّكاة عبادةٌ شأنها شأنُ باقي العبادات، فيجوز تأخير دفع الزّكاة لمُستحقّيها مع وجود الظروف الخاصّة أو حتى العامّة التي تحول دون دفع الزكاة، فأحكام التيسير عند المَشقّة لدفع الضّرر تُطبق أيضاً في الزّكاة، ولكن على ألا يكون الدّافع هو التهرّب من دفع حقوق المُستحقّين لأموال الزّكاة.[٨]', '2020-04-16 08:13:04', '2020-04-16 08:13:04');
INSERT INTO `tans_bodies` VALUES ('308', '2', '327', 'الحجّ', '2020-04-16 08:13:05', '2020-04-16 08:13:05');
INSERT INTO `tans_bodies` VALUES ('309', '2', '328', 'ومن أركان الإسلام الخمسة كذلك الحجّ الذي فرضهُ الله تبارك وتعالى على المسلمين مرّةً واحدةً في حياة الإنسان، بشرط القدرة الصحيّة والماليّة، وأن يكون الطّريق إلى الحجّ آمناً بحيث إذا ترك بلاده وسافر للحج فإنّه يأمن الطريق وشروره على الأغلب، فإن لم يأمن الطّريق وغلب على الظنّ الهلاك إذا خرج من بلده؛ فتنتفي القدرة بانعدام أمن الطّريق، وذلك لقوله سبحانه وتعالى: (وَللهِ عَلَى النَّاسِ حِجُّ الْبَيْتِ مَنِ اسْتَطَاعَ إِلَيْهِ سَبِيلاً وَمَن كَفَرَ فَإِنَّ اللهَ غَنِيٌّ عَنِ الْعَالَمِينَ)،[١٢] أمّا معنى الحجّ وقد عرّف العلماءُ الحج بأنه (قصدُ بيت الله تعالى بصفةٍ مخصوصةٍ، في وقتٍ مخصوصٍ، بشرائطَ وأركانٍ وفروعٍ مخصوصةٍ).[١٣]', '2020-04-16 08:13:05', '2020-04-16 08:13:05');
INSERT INTO `tans_bodies` VALUES ('310', '2', '329', 'دليل الحج والمعتمر', '2020-04-16 08:20:09', '2020-04-16 08:20:09');
INSERT INTO `tans_bodies` VALUES ('311', '2', '330', 'أذكار', '2020-04-16 08:31:51', '2020-04-16 08:31:51');
INSERT INTO `tans_bodies` VALUES ('312', '2', '331', 'رمضان', '2020-04-16 09:10:05', '2020-04-16 09:10:05');
INSERT INTO `tans_bodies` VALUES ('313', '2', '332', 'ادعية رمضانية', '2020-04-16 09:12:03', '2020-04-16 09:12:03');
INSERT INTO `tans_bodies` VALUES ('314', '2', '333', 'أحاديث رمضانية', '2020-04-16 09:13:35', '2020-04-16 10:25:51');
INSERT INTO `tans_bodies` VALUES ('317', '2', '336', 'اناشيد', '2020-04-16 09:17:25', '2020-04-16 09:17:25');
INSERT INTO `tans_bodies` VALUES ('318', '2', '337', 'اذا كان اول ليله من شهر رمضان', '2020-04-16 10:06:05', '2020-04-16 10:06:05');
INSERT INTO `tans_bodies` VALUES ('319', '2', '338', 'نهي عن صيام يوم الشك', '2020-04-16 10:07:59', '2020-04-16 10:07:59');
INSERT INTO `tans_bodies` VALUES ('324', '2', '343', 'تفسير القرآن', '2020-04-16 10:30:09', '2020-04-16 10:30:09');
INSERT INTO `tans_bodies` VALUES ('325', '2', '344', 'تفسير القرآن باللغة الإنجليزية', '2020-04-16 10:31:49', '2020-04-16 10:31:49');
INSERT INTO `tans_bodies` VALUES ('326', '2', '345', 'تفسير القرآن باللغة العربية', '2020-04-16 10:32:25', '2020-04-16 10:32:25');
INSERT INTO `tans_bodies` VALUES ('327', '2', '346', 'تفسير القرآن باللغة الأردية', '2020-04-16 10:33:03', '2020-04-16 10:33:03');
INSERT INTO `tans_bodies` VALUES ('328', '2', '347', 'سورة النور', '2020-04-16 10:41:10', '2020-04-16 10:41:10');
INSERT INTO `tans_bodies` VALUES ('329', '2', '348', 'سورة يونس', '2020-04-16 10:42:50', '2020-04-16 10:42:50');
INSERT INTO `tans_bodies` VALUES ('330', '2', '349', 'سورة البقرة', '2020-04-16 10:44:23', '2020-04-16 10:44:23');
INSERT INTO `tans_bodies` VALUES ('331', '2', '350', 'فضل الحج', '2020-04-16 10:48:06', '2020-04-16 10:48:06');
INSERT INTO `tans_bodies` VALUES ('332', '2', '351', 'من نسي وهو صائم', '2020-04-16 10:50:00', '2020-04-16 10:50:00');
INSERT INTO `tans_bodies` VALUES ('333', '2', '352', 'رمضان مبارك', '2020-04-16 10:52:52', '2020-04-16 10:52:52');
INSERT INTO `tans_bodies` VALUES ('334', '2', '353', 'test_1111', '2020-04-17 21:34:01', '2020-04-17 21:34:01');
INSERT INTO `tans_bodies` VALUES ('335', '2', '354', 'فثقف', '2020-04-18 07:30:07', '2020-04-18 07:30:07');
INSERT INTO `tans_bodies` VALUES ('336', '2', '355', 'rrrrrrrrr', '2020-04-18 07:32:24', '2020-04-18 07:32:24');
INSERT INTO `tans_bodies` VALUES ('339', '2', '358', 'ddddddddddddddddddddd', '2020-04-18 08:58:27', '2020-04-18 08:58:27');
INSERT INTO `tans_bodies` VALUES ('341', '2', '360', 'test_27_10 ar', '2020-04-18 12:27:18', '2020-10-27 08:49:43');
INSERT INTO `tans_bodies` VALUES ('350', '2', '367', 'service_ar', '2020-04-18 13:22:39', '2020-04-18 13:22:39');
INSERT INTO `tans_bodies` VALUES ('351', '3', '367', 'service_udkkkkkkk', '2020-04-18 13:22:39', '2020-04-18 13:27:25');
INSERT INTO `tans_bodies` VALUES ('352', '2', '368', 'content_ar', '2020-04-18 13:24:31', '2020-04-18 13:24:31');
INSERT INTO `tans_bodies` VALUES ('353', '3', '368', 'content_ud888888888', '2020-04-18 13:24:31', '2020-04-18 13:24:42');
INSERT INTO `tans_bodies` VALUES ('354', '3', '360', 'test_27_10 ur', '2020-04-18 15:09:43', '2020-10-27 08:49:43');
INSERT INTO `tans_bodies` VALUES ('355', '3', '83', 'dddddddddd', '2020-04-18 17:26:13', '2020-04-18 17:26:13');
INSERT INTO `tans_bodies` VALUES ('356', '2', '369', 'أرشادات منظمة الصحة العالمية', '2020-04-18 21:34:00', '2020-04-18 21:34:00');
INSERT INTO `tans_bodies` VALUES ('357', '3', '369', 'أرشادات منظمة الصحة العالمية', '2020-04-18 21:34:00', '2020-04-18 21:34:00');
INSERT INTO `tans_bodies` VALUES ('358', '2', '370', 'covid 19', '2020-04-18 21:37:55', '2020-04-18 21:37:55');
INSERT INTO `tans_bodies` VALUES ('359', '3', '370', 'covid 19', '2020-04-18 21:37:55', '2020-04-18 21:37:55');
INSERT INTO `tans_bodies` VALUES ('360', '2', '371', 'تدابير الوقاية الأساسية من فيروس كورونا (كوفيد-19)', '2020-04-18 21:38:54', '2020-04-18 21:38:54');
INSERT INTO `tans_bodies` VALUES ('361', '2', '372', '<p dir=\"RTL\"><strong>تدابير الوقاية الأساسية من فيروس كورونا (كوفيد-19)</strong></p>\r\n\r\n<p dir=\"RTL\">احرص على متابعة آخر المستجدات عن فاشية مرض كوفيد-19، على الموقع الإلكتروني لمنظمة الصحة العالمية ومن خلال سلطات الصحة العامة المحلية والوطنية. وفي حين لا تزال عدوى كوفيد-19 متفشية في الصين بشكل أساسي، فهناك بعض بؤر التفشي في بلدان أخرى.&nbsp; ومعظم الأفراد الذين يصابون بالعدوى يشعرون بأعراض خفيفة ويتعافون، ولكن الأعراض قد تظهر بشكل أكثر حدة لدى غيرهم. احرص على العناية بصحتك وحماية الآخرين بواسطة التدابير التالية<span dir=\"LTR\">:</span></p>\r\n\r\n<p dir=\"RTL\"><strong>اغسل اليدين بانتظام&nbsp;</strong></p>\r\n\r\n<p dir=\"RTL\"><strong>لماذا؟</strong>&nbsp;إن تنظيف يديك بالماء والصابون أو فركهما بمطهر كحولي من شأنه أن يقتل الفيروسات التي قد تكون على يديك<span dir=\"LTR\">.</span></p>\r\n\r\n<p dir=\"RTL\">&nbsp;</p>\r\n\r\n<p dir=\"RTL\"><strong>احرص على ممارسات النظافة التنفسية</strong></p>\r\n\r\n<p dir=\"RTL\">احرص على تغطية الفم والأنف بثني المرفق أو بمنديل ورقي عند السعال أو العطس، ثم تخلص من المنديل الورقي فوراً بإلقائه في سلة مهملات مغلقة ونظف يديك بمطهر كحولي أو بالماء والصابون.</p>\r\n\r\n<p dir=\"RTL\"><strong>لماذا؟&nbsp;</strong>تغطية الفم والأنف عند السعال والعطس تمنع انتشار الجراثيم والفيروسات. أما إذا غطيت فمك وأنفك بيدك أثناء العطس والسعال فقد تنقل الجراثيم إلى كل ما تلمسه من أشياء وأشخاص.</p>\r\n\r\n<p dir=\"RTL\"><strong>تجنب الاقتراب كثيرا من الناس</strong></p>\r\n\r\n<p dir=\"RTL\">احتفظ بمسافة لا تقل عن متر واحد (3 أقدام) بينك وبين أي شخص يسعل أو يعطس<span dir=\"LTR\">.</span></p>\r\n\r\n<p dir=\"RTL\"><strong>لماذا؟</strong>&nbsp;عندما يسعل الشخص أو يعطس، تتناثر من أنفه أو فمه قُطيرات سائلة صغيرة قد تحتوي على الفيروس. فإذا كنت شديد الاقتراب منه يمكن أن تتنفس هذه القُطيرات، بما في ذلك الفيروس المسبب لمرض كوفيد-19 إذا كان الشخص مصاباً به<span dir=\"LTR\">.</span></p>\r\n\r\n<p dir=\"RTL\"><strong>تجنب لمس عينيك وأنفك وفمك</strong></p>\r\n\r\n<p dir=\"RTL\"><strong>لماذا؟</strong>&nbsp;تلمس اليدين العديد من الأسطح ويمكنها أن تلتقط الفيروسات. وإذا تلوثت اليدان فإنهما قد تنقلان الفيروس إلى العينين أو الأنف أو الفم. ويمكن للفيروس أن يدخل الجسم عن طريق هذه المنافذ ويصيبك بالمرض<span dir=\"LTR\">.</span></p>\r\n\r\n<p dir=\"RTL\">إذا كنت تعاني من الحمى والسعال وصعوبة التنفس، التمس المشورة الطبية على الفور، فقد تكون مصاباً بعدوى الجهاز التنفسي أو حالة مرضية وخيمة أخرى. واتصل قبل الذهاب إلى مقدم الرعاية وأخبره إن كنت قد سافرت أو خالطت أي مسافرين مؤخراً<span dir=\"LTR\">.</span></p>\r\n\r\n<p dir=\"RTL\"><strong>لماذا؟</strong>&nbsp;إن اتصالك المسبق بمقدم الرعاية سيسمح له بتوجيهك سريعاً إلى مرفق الرعاية الصحية المناسب. وسيساعد ذلك أيضاً على منع أي انتشار محتمل للفيروس المسبب لمرض كوفيد-19 وغيره من الفيروسات<span dir=\"LTR\">.</span></p>\r\n\r\n<p dir=\"RTL\">&nbsp;</p>\r\n\r\n<p dir=\"RTL\">&nbsp;<strong>تابع المستجدات واتبع نصائح مقدمي الرعاية الصحية</strong></p>\r\n\r\n<p dir=\"RTL\">&nbsp;&nbsp;احرص على متابعة آخر المستجدات بشأن مرض كوفيد-19. واتبع النصائح التي يقدمها لك مقدم الرعاية الصحية وتلك الصادرة عن سلطات الصحة العامة المحلية والوطنية أو عن رب عملك بشأن أساليب حماية نفسك والآخرين من الإصابة بعدوى كوفيد-19<span dir=\"LTR\">.</span></p>\r\n\r\n<p dir=\"RTL\">&nbsp;لماذا؟&nbsp;لأن السلطات المحلية والوطنية لديها أحدث المعلومات عما إذا كانت عدوى كوفيد-19 قد انتشرت بالفعل في منطقتك، وهي الأقدر على تقديم النصائح بشأن ما ينبغي للناس في منطقتك فعله لحماية أنفسهم<span dir=\"LTR\">.&nbsp;</span></p>', '2020-04-18 21:38:54', '2020-04-18 21:38:54');
INSERT INTO `tans_bodies` VALUES ('362', '3', '371', 'تدابير الوقاية الأساسية من فيروس كورونا (كوفيد-19)', '2020-04-18 21:38:54', '2020-04-18 21:38:54');
INSERT INTO `tans_bodies` VALUES ('363', '3', '372', '<p dir=\"RTL\"><strong>تدابير الوقاية الأساسية من فيروس كورونا (كوفيد-19)</strong></p>\r\n\r\n<p dir=\"RTL\">احرص على متابعة آخر المستجدات عن فاشية مرض كوفيد-19، على الموقع الإلكتروني لمنظمة الصحة العالمية ومن خلال سلطات الصحة العامة المحلية والوطنية. وفي حين لا تزال عدوى كوفيد-19 متفشية في الصين بشكل أساسي، فهناك بعض بؤر التفشي في بلدان أخرى.&nbsp; ومعظم الأفراد الذين يصابون بالعدوى يشعرون بأعراض خفيفة ويتعافون، ولكن الأعراض قد تظهر بشكل أكثر حدة لدى غيرهم. احرص على العناية بصحتك وحماية الآخرين بواسطة التدابير التالية<span dir=\"LTR\">:</span></p>\r\n\r\n<p dir=\"RTL\"><strong>اغسل اليدين بانتظام&nbsp;</strong></p>\r\n\r\n<p dir=\"RTL\"><strong>لماذا؟</strong>&nbsp;إن تنظيف يديك بالماء والصابون أو فركهما بمطهر كحولي من شأنه أن يقتل الفيروسات التي قد تكون على يديك<span dir=\"LTR\">.</span></p>\r\n\r\n<p dir=\"RTL\">&nbsp;</p>\r\n\r\n<p dir=\"RTL\"><strong>احرص على ممارسات النظافة التنفسية</strong></p>\r\n\r\n<p dir=\"RTL\">احرص على تغطية الفم والأنف بثني المرفق أو بمنديل ورقي عند السعال أو العطس، ثم تخلص من المنديل الورقي فوراً بإلقائه في سلة مهملات مغلقة ونظف يديك بمطهر كحولي أو بالماء والصابون.</p>\r\n\r\n<p dir=\"RTL\"><strong>لماذا؟&nbsp;</strong>تغطية الفم والأنف عند السعال والعطس تمنع انتشار الجراثيم والفيروسات. أما إذا غطيت فمك وأنفك بيدك أثناء العطس والسعال فقد تنقل الجراثيم إلى كل ما تلمسه من أشياء وأشخاص.</p>\r\n\r\n<p dir=\"RTL\"><strong>تجنب الاقتراب كثيرا من الناس</strong></p>\r\n\r\n<p dir=\"RTL\">احتفظ بمسافة لا تقل عن متر واحد (3 أقدام) بينك وبين أي شخص يسعل أو يعطس<span dir=\"LTR\">.</span></p>\r\n\r\n<p dir=\"RTL\"><strong>لماذا؟</strong>&nbsp;عندما يسعل الشخص أو يعطس، تتناثر من أنفه أو فمه قُطيرات سائلة صغيرة قد تحتوي على الفيروس. فإذا كنت شديد الاقتراب منه يمكن أن تتنفس هذه القُطيرات، بما في ذلك الفيروس المسبب لمرض كوفيد-19 إذا كان الشخص مصاباً به<span dir=\"LTR\">.</span></p>\r\n\r\n<p dir=\"RTL\"><strong>تجنب لمس عينيك وأنفك وفمك</strong></p>\r\n\r\n<p dir=\"RTL\"><strong>لماذا؟</strong>&nbsp;تلمس اليدين العديد من الأسطح ويمكنها أن تلتقط الفيروسات. وإذا تلوثت اليدان فإنهما قد تنقلان الفيروس إلى العينين أو الأنف أو الفم. ويمكن للفيروس أن يدخل الجسم عن طريق هذه المنافذ ويصيبك بالمرض<span dir=\"LTR\">.</span></p>\r\n\r\n<p dir=\"RTL\">إذا كنت تعاني من الحمى والسعال وصعوبة التنفس، التمس المشورة الطبية على الفور، فقد تكون مصاباً بعدوى الجهاز التنفسي أو حالة مرضية وخيمة أخرى. واتصل قبل الذهاب إلى مقدم الرعاية وأخبره إن كنت قد سافرت أو خالطت أي مسافرين مؤخراً<span dir=\"LTR\">.</span></p>\r\n\r\n<p dir=\"RTL\"><strong>لماذا؟</strong>&nbsp;إن اتصالك المسبق بمقدم الرعاية سيسمح له بتوجيهك سريعاً إلى مرفق الرعاية الصحية المناسب. وسيساعد ذلك أيضاً على منع أي انتشار محتمل للفيروس المسبب لمرض كوفيد-19 وغيره من الفيروسات<span dir=\"LTR\">.</span></p>\r\n\r\n<p dir=\"RTL\">&nbsp;</p>\r\n\r\n<p dir=\"RTL\">&nbsp;<strong>تابع المستجدات واتبع نصائح مقدمي الرعاية الصحية</strong></p>\r\n\r\n<p dir=\"RTL\">&nbsp;&nbsp;احرص على متابعة آخر المستجدات بشأن مرض كوفيد-19. واتبع النصائح التي يقدمها لك مقدم الرعاية الصحية وتلك الصادرة عن سلطات الصحة العامة المحلية والوطنية أو عن رب عملك بشأن أساليب حماية نفسك والآخرين من الإصابة بعدوى كوفيد-19<span dir=\"LTR\">.</span></p>\r\n\r\n<p dir=\"RTL\">&nbsp;لماذا؟&nbsp;لأن السلطات المحلية والوطنية لديها أحدث المعلومات عما إذا كانت عدوى كوفيد-19 قد انتشرت بالفعل في منطقتك، وهي الأقدر على تقديم النصائح بشأن ما ينبغي للناس في منطقتك فعله لحماية أنفسهم<span dir=\"LTR\">.&nbsp;</span></p>', '2020-04-18 21:38:54', '2020-04-18 21:38:54');
INSERT INTO `tans_bodies` VALUES ('364', '2', '373', 'أرشادات منظمة الصحة العالمية', '2020-04-18 21:42:54', '2020-04-18 21:42:54');
INSERT INTO `tans_bodies` VALUES ('365', '3', '373', 'أرشادات منظمة الصحة العالمية', '2020-04-18 21:42:54', '2020-04-18 21:42:54');
INSERT INTO `tans_bodies` VALUES ('366', '2', '374', 'mishar_audio_ar', '2020-04-21 10:37:21', '2020-04-21 10:37:21');
INSERT INTO `tans_bodies` VALUES ('367', '3', '374', 'mishar_audio_ur', '2020-04-21 10:37:21', '2020-04-21 10:37:21');
INSERT INTO `tans_bodies` VALUES ('368', '2', '375', 'audio_ar', '2020-04-21 10:37:59', '2020-04-21 10:37:59');
INSERT INTO `tans_bodies` VALUES ('369', '3', '375', 'audio_ur', '2020-04-21 10:37:59', '2020-04-21 10:37:59');
INSERT INTO `tans_bodies` VALUES ('370', '2', '376', 'audio2_ar', '2020-04-21 11:36:29', '2020-04-21 11:36:29');
INSERT INTO `tans_bodies` VALUES ('371', '3', '376', 'audio2_ur', '2020-04-21 11:36:29', '2020-04-21 11:36:29');
INSERT INTO `tans_bodies` VALUES ('372', '2', '377', 'فاتحة 2', '2020-04-21 19:08:26', '2020-04-21 19:08:26');
INSERT INTO `tans_bodies` VALUES ('373', '3', '377', 'فاتحة 2', '2020-04-21 19:08:26', '2020-04-21 19:08:26');
INSERT INTO `tans_bodies` VALUES ('374', '2', '378', 'test ar', '2020-10-27 08:41:11', '2020-10-27 08:41:11');
INSERT INTO `tans_bodies` VALUES ('375', '3', '378', 'test ur', '2020-10-27 08:41:11', '2020-10-27 08:41:11');
INSERT INTO `tans_bodies` VALUES ('376', '2', '379', 'ramdan test 27 ar', '2020-10-27 14:02:18', '2020-10-27 14:02:18');
INSERT INTO `tans_bodies` VALUES ('377', '3', '379', 'ramdan test 27 ar', '2020-10-27 14:02:18', '2020-10-27 14:02:18');
INSERT INTO `tans_bodies` VALUES ('378', '2', '380', 'test_mbc_1', '2020-11-22 13:38:11', '2020-11-22 13:38:11');
INSERT INTO `tans_bodies` VALUES ('379', '3', '380', 'test_mbc_1', '2020-11-22 13:38:12', '2020-11-22 13:38:12');
INSERT INTO `tans_bodies` VALUES ('380', '2', '381', 'test_mbc_2', '2020-11-22 13:38:33', '2020-11-22 13:38:33');
INSERT INTO `tans_bodies` VALUES ('381', '3', '381', 'test_mbc_2', '2020-11-22 13:38:33', '2020-11-22 13:38:33');
INSERT INTO `tans_bodies` VALUES ('382', '2', '382', 'فلاتر اسلامية', '2020-11-30 12:33:38', '2020-11-30 12:33:38');
INSERT INTO `tans_bodies` VALUES ('383', '3', '382', 'فلاتر اسلامية', '2020-11-30 12:33:38', '2020-11-30 12:33:38');
INSERT INTO `tans_bodies` VALUES ('386', '2', '384', 'filetr ar', '2020-12-01 08:31:19', '2020-12-01 08:31:19');
INSERT INTO `tans_bodies` VALUES ('387', '3', '384', 'filetr ur', '2020-12-01 08:31:19', '2020-12-01 08:31:19');
INSERT INTO `tans_bodies` VALUES ('388', '2', '385', 'filter ar 2', '2020-12-01 11:14:37', '2020-12-01 11:14:37');
INSERT INTO `tans_bodies` VALUES ('389', '3', '385', 'filter ur 2', '2020-12-01 11:14:37', '2020-12-01 11:14:37');

-- ----------------------------
-- Table structure for `timwe_subscribers`
-- ----------------------------
DROP TABLE IF EXISTS `timwe_subscribers`;
CREATE TABLE `timwe_subscribers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requestId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of timwe_subscribers
-- ----------------------------
INSERT INTO `timwe_subscribers` VALUES ('1', '97466671329', '10458', '21', '2020-05-14 21:16:39', '2020-05-14 21:16:39');
INSERT INTO `timwe_subscribers` VALUES ('2', '12345678', '10458', '67', '2020-07-15 14:02:59', '2020-07-15 14:02:59');

-- ----------------------------
-- Table structure for `timwe_unsubscribers`
-- ----------------------------
DROP TABLE IF EXISTS `timwe_unsubscribers`;
CREATE TABLE `timwe_unsubscribers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requestId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of timwe_unsubscribers
-- ----------------------------

-- ----------------------------
-- Table structure for `tim_wes`
-- ----------------------------
DROP TABLE IF EXISTS `tim_wes`;
CREATE TABLE `tim_wes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `api_request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tim_wes
-- ----------------------------
INSERT INTO `tim_wes` VALUES ('68', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"37:1594814669177\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"18dab292-36ce-4190-9321-4a067db96c49\",\"subscriptionStatus\":\"ACTIVE\",\"externalTxId\":\"18dab292-36ce-4190-9321-4a067db96c49\",\"subSubStatus\":\"CHARGING_PENDING\",\"subStatusDate\":\"2020-05-20 13:31:40.0\",\"subSubStatusDate\":\"2020-05-20 13:31:39.509\",\"optinPricepointId\":46758,\"renewalPricepointId\":46758,\"subscriptionResult\":\"GET_STATUS_OK\",\"subscriptionError\":\"Retrieved subscription information\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: CeMLkFLF4k8aChBAhZkrEy54Ww\\/u9d+X3\\/Ig\\/53Xvh4=\",\"external-tx-id: 18dab292-36ce-4190-9321-4a067db96c49\"]', 'Check Status', '2020-07-15 14:04:29', '2020-07-15 14:04:29');
INSERT INTO `tim_wes` VALUES ('69', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345677\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"52:1594814710419\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"11cd135e-be02-4c1e-b242-f9dd806483c5\",\"externalTxId\":\"11cd135e-be02-4c1e-b242-f9dd806483c5\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: sj5x7FZ9y27XhjuT43NCHaqU7Fwj2ohRWRub1CmT850=\",\"external-tx-id: 11cd135e-be02-4c1e-b242-f9dd806483c5\"]', 'Check Status', '2020-07-15 14:05:10', '2020-07-15 14:05:10');
INSERT INTO `tim_wes` VALUES ('70', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345677\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"39:1594814717084\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"556f93a7-4ee1-492c-87ae-532c7d65ad1c\",\"externalTxId\":\"556f93a7-4ee1-492c-87ae-532c7d65ad1c\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: OCR7jpPB7KZ2fIZuXOmSQByx5zZV7Th6uczlIa05qkY=\",\"external-tx-id: 556f93a7-4ee1-492c-87ae-532c7d65ad1c\"]', 'Check Status', '2020-07-15 14:05:17', '2020-07-15 14:05:17');
INSERT INTO `tim_wes` VALUES ('71', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345677\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"45:1594814717599\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"72c75661-c693-11ea-a578-005056b71b59\",\"externalTxId\":\"503627b6-b556-440f-92a6-e7ac1996c565\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: mfCYf77spKaRN9kkUMfVqeZnzEA85M5iCEMDEUVrsS4=\",\"external-tx-id: 503627b6-b556-440f-92a6-e7ac1996c565\"]', 'Timwe Subscription OptIn', '2020-07-15 14:05:17', '2020-07-15 14:05:17');
INSERT INTO `tim_wes` VALUES ('72', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345677\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"47:1594814858125\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"4fb59ed3-12de-4f0f-8d87-cee15f4e83fa\",\"externalTxId\":\"4fb59ed3-12de-4f0f-8d87-cee15f4e83fa\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: o\\/LFwQjzvuK9Gb+Z\\/R6mhk0myW5YFTRh2ITzw94qh74=\",\"external-tx-id: 4fb59ed3-12de-4f0f-8d87-cee15f4e83fa\"]', 'Check Status', '2020-07-15 14:07:38', '2020-07-15 14:07:38');
INSERT INTO `tim_wes` VALUES ('73', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"829:1594820311237\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"8b54cf9a-5c88-4b3d-a25e-1c73e6f9650b\",\"externalTxId\":\"8b54cf9a-5c88-4b3d-a25e-1c73e6f9650b\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: pRjWO7a6XftlFunPQHi39EPyv4EhVEKofyI+rJoirHY=\",\"external-tx-id: 8b54cf9a-5c88-4b3d-a25e-1c73e6f9650b\"]', 'Check Status', '2020-07-15 15:38:31', '2020-07-15 15:38:31');
INSERT INTO `tim_wes` VALUES ('74', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"51:1594820316654\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"3f90b464-849e-4437-ba16-e519358b6270\",\"externalTxId\":\"3f90b464-849e-4437-ba16-e519358b6270\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 2oSQMUaxFUvii2ngDksJKh2ltB575R1ujCwchCi1IMI=\",\"external-tx-id: 3f90b464-849e-4437-ba16-e519358b6270\"]', 'Check Status', '2020-07-15 15:38:36', '2020-07-15 15:38:36');
INSERT INTO `tim_wes` VALUES ('75', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"45:1594820317178\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"7c6015aa-c6a0-11ea-9a50-005056b77fc1\",\"externalTxId\":\"13e2ee35-b1c3-469c-8dc1-27a69c2f5293\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: YoKVy0KUFEjOheMZcgP1SiVvvJrC97IZ8CQU51kZ90U=\",\"external-tx-id: 13e2ee35-b1c3-469c-8dc1-27a69c2f5293\"]', 'Timwe Subscription OptIn', '2020-07-15 15:38:37', '2020-07-15 15:38:37');
INSERT INTO `tim_wes` VALUES ('76', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"45:1594822791820\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"3528852d-d4a6-479e-b35b-f948e15c94fb\",\"externalTxId\":\"3528852d-d4a6-479e-b35b-f948e15c94fb\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: dnO5Q1QGksN82R+gVkLECo24YyLXFYDUJ4PJvZ9H0sc=\",\"external-tx-id: 3528852d-d4a6-479e-b35b-f948e15c94fb\"]', 'Check Status', '2020-07-15 16:19:52', '2020-07-15 16:19:52');
INSERT INTO `tim_wes` VALUES ('77', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"881:1594822793097\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"7c6015aa-c6a0-11ea-9a50-005056b77fc1\",\"externalTxId\":\"eb129a87-048a-4768-b3bd-bfaf8a955e6d\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: zKjUkgLwqZYAOq3c8oxuAbtkzdUNmwgN0wcmnwXr324=\",\"external-tx-id: eb129a87-048a-4768-b3bd-bfaf8a955e6d\"]', 'Timwe Subscription OptIn', '2020-07-15 16:19:53', '2020-07-15 16:19:53');
INSERT INTO `tim_wes` VALUES ('78', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"23155:1598179972550\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"fa11ad82-b487-4635-b67f-5158e029c4e3\",\"externalTxId\":\"fa11ad82-b487-4635-b67f-5158e029c4e3\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 4xYTYmHU\\/OhY4Jufd8\\/fTel+3VpApapToRXfsx4uZQQ=\",\"external-tx-id: fa11ad82-b487-4635-b67f-5158e029c4e3\"]', 'Check Status', '2020-08-23 12:47:58', '2020-08-23 12:47:58');
INSERT INTO `tim_wes` VALUES ('79', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"23221:1598179973630\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"2cca3b1e-e51b-11ea-aee4-005056b71b59\",\"externalTxId\":\"1b043441-8282-40ab-9ea9-915873605dc5\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: EAwk5oma2vbDKZbi4h1x5KqU7Fwj2ohRWRub1CmT850=\",\"external-tx-id: 1b043441-8282-40ab-9ea9-915873605dc5\"]', 'Timwe Subscription OptIn', '2020-08-23 12:47:58', '2020-08-23 12:47:58');
INSERT INTO `tim_wes` VALUES ('80', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"23223:1598180114635\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"289a5493-6f37-4dcb-9a54-5f98051afc05\",\"externalTxId\":\"289a5493-6f37-4dcb-9a54-5f98051afc05\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: E4Yq1P5GFByxFQYBMk4Ogc80yJMO+Bkvfv1yTArDhPs=\",\"external-tx-id: 289a5493-6f37-4dcb-9a54-5f98051afc05\"]', 'Check Status', '2020-08-23 12:50:19', '2020-08-23 12:50:19');
INSERT INTO `tim_wes` VALUES ('81', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"23408:1598180115179\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"2cca3b1e-e51b-11ea-aee4-005056b71b59\",\"externalTxId\":\"b15acb66-cfa1-47b7-b727-74c48a5bdb46\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: pd7Bt8sz\\/u95\\/PVUh1xtUlXysZ8k6jrfFrFqhqMgOfo=\",\"external-tx-id: b15acb66-cfa1-47b7-b727-74c48a5bdb46\"]', 'Timwe Subscription OptIn', '2020-08-23 12:50:20', '2020-08-23 12:50:20');
INSERT INTO `tim_wes` VALUES ('82', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"23149:1598180132304\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"1f262f80-208b-446f-9d23-1e9f29551829\",\"externalTxId\":\"1f262f80-208b-446f-9d23-1e9f29551829\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: OlupvITAWGYMEl8MyzTrZXQQsesBdm9L2eqhQAHf1sU=\",\"external-tx-id: 1f262f80-208b-446f-9d23-1e9f29551829\"]', 'Check Status', '2020-08-23 12:50:37', '2020-08-23 12:50:37');
INSERT INTO `tim_wes` VALUES ('83', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"23411:1598180132923\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"2cca3b1e-e51b-11ea-aee4-005056b71b59\",\"externalTxId\":\"83d1c63d-ce8e-4a84-8783-50f435af2fbe\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: Uml\\/N0yx3elLM\\/opXO9BEcVRkpKw0ekDSCfGmeROc2k=\",\"external-tx-id: 83d1c63d-ce8e-4a84-8783-50f435af2fbe\"]', 'Timwe Subscription OptIn', '2020-08-23 12:50:38', '2020-08-23 12:50:38');
INSERT INTO `tim_wes` VALUES ('84', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"23236:1598181489655\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"e5436d15-5ed4-4fe0-a964-6825809fc186\",\"externalTxId\":\"e5436d15-5ed4-4fe0-a964-6825809fc186\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: JO0+6icdcGZKQPSZEtLHFnYgtjrZLzV1k5GlHw3fTUY=\",\"external-tx-id: e5436d15-5ed4-4fe0-a964-6825809fc186\"]', 'Check Status', '2020-08-23 13:13:14', '2020-08-23 13:13:14');
INSERT INTO `tim_wes` VALUES ('85', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"23409:1598181490198\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"2cca3b1e-e51b-11ea-aee4-005056b71b59\",\"externalTxId\":\"d13323d0-5307-45b9-aa11-0e2722e39ed5\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: lRDmilTXqYkMFUq3DEdnoRl179HpLuJl24qkjNDoMZ4=\",\"external-tx-id: d13323d0-5307-45b9-aa11-0e2722e39ed5\"]', 'Timwe Subscription OptIn', '2020-08-23 13:13:15', '2020-08-23 13:13:15');
INSERT INTO `tim_wes` VALUES ('86', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"36466:1598347168543\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"78e72e42-46b7-4a74-af9f-9baa1b108f57\",\"externalTxId\":\"78e72e42-46b7-4a74-af9f-9baa1b108f57\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: wFOt2N76LVN8Ljv+KeOfjJdmMf6GiQGpByJZAD6kCLc=\",\"external-tx-id: 78e72e42-46b7-4a74-af9f-9baa1b108f57\"]', 'Check Status', '2020-08-25 11:14:35', '2020-08-25 11:14:35');
INSERT INTO `tim_wes` VALUES ('87', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"37598:1598347169390\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"141f9fde-e6b4-11ea-8b91-005056b71b59\",\"externalTxId\":\"cbc59c70-35ac-4dd7-9c08-e2672dfa8f7a\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: +DvPigRq1sEncP5ju0nb6Zu\\/fnoH0DMZNx17wjVvyBs=\",\"external-tx-id: cbc59c70-35ac-4dd7-9c08-e2672dfa8f7a\"]', 'Timwe Subscription OptIn', '2020-08-25 11:14:35', '2020-08-25 11:14:35');
INSERT INTO `tim_wes` VALUES ('88', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"36756:1598348589887\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"8278b902-59ac-442a-8df6-09c9f59acba1\",\"externalTxId\":\"8278b902-59ac-442a-8df6-09c9f59acba1\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: XnDrK6G4UNzrEVXD+tQYPwN36hfre9j1KSI9amraM9k=\",\"external-tx-id: 8278b902-59ac-442a-8df6-09c9f59acba1\"]', 'Check Status', '2020-08-25 11:38:16', '2020-08-25 11:38:16');
INSERT INTO `tim_wes` VALUES ('89', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"36729:1598348590378\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"141f9fde-e6b4-11ea-8b91-005056b71b59\",\"externalTxId\":\"f7f3e8ef-271b-41f9-96b0-2c192b60cba2\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 2BsvroIVcLloJd3vqnLGuXQQsesBdm9L2eqhQAHf1sU=\",\"external-tx-id: f7f3e8ef-271b-41f9-96b0-2c192b60cba2\"]', 'Timwe Subscription OptIn', '2020-08-25 11:38:16', '2020-08-25 11:38:16');
INSERT INTO `tim_wes` VALUES ('90', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"36459:1598348601101\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"a71b9133-d80c-4ec6-b4a4-0f3f025b32ec\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 5uhZEC8qfXuhRWtpcJMprJdmMf6GiQGpByJZAD6kCLc=\",\"external-tx-id: a71b9133-d80c-4ec6-b4a4-0f3f025b32ec\"]', 'Timwe subscription Confirm', '2020-08-25 11:38:28', '2020-08-25 11:38:28');
INSERT INTO `tim_wes` VALUES ('91', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"37629:1598348612343\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"47e86923-fab6-44ec-ae8d-a736250de2aa\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: t1MqbFlJBEgOSps+Tw1hT9IXpJ5O0kBBORBY2RCw+yk=\",\"external-tx-id: 47e86923-fab6-44ec-ae8d-a736250de2aa\"]', 'Timwe subscription Confirm', '2020-08-25 11:38:39', '2020-08-25 11:38:39');
INSERT INTO `tim_wes` VALUES ('92', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"974\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"36765:1598348621854\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"1e6f1024-1972-4a4a-8c8a-1d6d034a3cad\",\"externalTxId\":\"1e6f1024-1972-4a4a-8c8a-1d6d034a3cad\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: IWOgLzm8FninhTyrZlGFo+s+s7NF\\/r8\\/byg\\/DlR17b4=\",\"external-tx-id: 1e6f1024-1972-4a4a-8c8a-1d6d034a3cad\"]', 'Check Status', '2020-08-25 11:38:48', '2020-08-25 11:38:48');
INSERT INTO `tim_wes` VALUES ('93', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"974\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"37310:1598348622464\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"ddaa1a2b-424f-44d1-8acb-4b9e87c98c9d\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: xdernP9eY6DRkceXVKrVznQQsesBdm9L2eqhQAHf1sU=\",\"external-tx-id: ddaa1a2b-424f-44d1-8acb-4b9e87c98c9d\"]', 'Timwe Subscription OptIn', '2020-08-25 11:38:48', '2020-08-25 11:38:48');
INSERT INTO `tim_wes` VALUES ('94', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"37614:1598364693974\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"3b76e946-11a4-4d35-87bc-a9b2bcc9af74\",\"externalTxId\":\"3b76e946-11a4-4d35-87bc-a9b2bcc9af74\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: NqZbAgYfpYg8QwSqwpFEL2zJbPAZ68Py\\/ldbvMKGpZ8=\",\"external-tx-id: 3b76e946-11a4-4d35-87bc-a9b2bcc9af74\"]', 'Check Status', '2020-08-25 16:06:40', '2020-08-25 16:06:40');
INSERT INTO `tim_wes` VALUES ('95', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"38520:1598364694656\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"141f9fde-e6b4-11ea-8b91-005056b71b59\",\"externalTxId\":\"ad81fba4-904f-4e60-878a-7c561a19e39f\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 3IZ9bJBkZi8iQh\\/PApF7UpTPClrJV2mxbf4G9fDiWf8=\",\"external-tx-id: ad81fba4-904f-4e60-878a-7c561a19e39f\"]', 'Timwe Subscription OptIn', '2020-08-25 16:06:41', '2020-08-25 16:06:41');
INSERT INTO `tim_wes` VALUES ('96', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"36723:1598364714395\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"e726df3e-b590-439d-9ff8-3d2de9f6e84a\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: dHeiE5xYwFyTMBbSXIMUvfpaNRZ9BV1L1mQZmH4JF8E=\",\"external-tx-id: e726df3e-b590-439d-9ff8-3d2de9f6e84a\"]', 'Timwe subscription Confirm', '2020-08-25 16:07:01', '2020-08-25 16:07:01');
INSERT INTO `tim_wes` VALUES ('97', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"974\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"36765:1598364727009\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"ccfeaa20-1a58-42bb-93d4-505ea263c3bb\",\"externalTxId\":\"ccfeaa20-1a58-42bb-93d4-505ea263c3bb\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: ps7c\\/bPhhJ4bNrkyrbbmgyeiXD7icG6hRCG943JqyF8=\",\"external-tx-id: ccfeaa20-1a58-42bb-93d4-505ea263c3bb\"]', 'Check Status', '2020-08-25 16:07:13', '2020-08-25 16:07:13');
INSERT INTO `tim_wes` VALUES ('98', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"974\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"37597:1598364728202\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"2ed2fd18-20d0-4eac-8d29-425d651b5801\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: D+hMmCni1t9ItsObLZahJPMWLE\\/AknUdDsfzXv2gsyU=\",\"external-tx-id: 2ed2fd18-20d0-4eac-8d29-425d651b5801\"]', 'Timwe Subscription OptIn', '2020-08-25 16:07:14', '2020-08-25 16:07:14');
INSERT INTO `tim_wes` VALUES ('99', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"37614:1598365703941\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"c3672b31-1f49-488f-83d1-c0dafd133281\",\"externalTxId\":\"c3672b31-1f49-488f-83d1-c0dafd133281\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: lAoL2ORzicNO1HNvfe4czvoaokt88fu3Oxhsh+0d+Xs=\",\"external-tx-id: c3672b31-1f49-488f-83d1-c0dafd133281\"]', 'Check Status', '2020-08-25 16:23:30', '2020-08-25 16:23:30');
INSERT INTO `tim_wes` VALUES ('100', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"37621:1598365705102\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"141f9fde-e6b4-11ea-8b91-005056b71b59\",\"externalTxId\":\"961ecaa8-6a9d-4894-b369-e0655db5a7b3\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: V9rC1ZWzKITTuH\\/7aeNpkQ7u4pcBalzxieDmr09j5fA=\",\"external-tx-id: 961ecaa8-6a9d-4894-b369-e0655db5a7b3\"]', 'Timwe Subscription OptIn', '2020-08-25 16:23:31', '2020-08-25 16:23:31');
INSERT INTO `tim_wes` VALUES ('101', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1224\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"37616:1598365714962\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"87d04cf6-9b64-4b6d-921c-59577833bbda\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: PS07hbhSad\\/ONxIqyKj+BigqccNU0TFjoTZA+Ju38D4=\",\"external-tx-id: 87d04cf6-9b64-4b6d-921c-59577833bbda\"]', 'Timwe subscription Confirm', '2020-08-25 16:23:42', '2020-08-25 16:23:42');
INSERT INTO `tim_wes` VALUES ('102', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"974\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"37619:1598365729227\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"77b4d7f2-592f-47b8-a038-caa3a2c0ebc4\",\"externalTxId\":\"77b4d7f2-592f-47b8-a038-caa3a2c0ebc4\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: NHOZHxhv53i3Bse+okg57UxbCbyC0Vx0rc4IGZTDquU=\",\"external-tx-id: 77b4d7f2-592f-47b8-a038-caa3a2c0ebc4\"]', 'Check Status', '2020-08-25 16:23:55', '2020-08-25 16:23:55');
INSERT INTO `tim_wes` VALUES ('103', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"974\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"36729:1598365730688\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"0aebf723-eb1a-4d14-ae8c-ec0742c7a017\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: KHswh6R8LTs6eWcom7FJUdZuCLfHk9QmXEtJUjtAHvM=\",\"external-tx-id: 0aebf723-eb1a-4d14-ae8c-ec0742c7a017\"]', 'Timwe Subscription OptIn', '2020-08-25 16:23:57', '2020-08-25 16:23:57');
INSERT INTO `tim_wes` VALUES ('104', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"37592:1598365786252\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"962c1c81-f3ba-49b9-bfc9-ffb65bfb8257\",\"externalTxId\":\"962c1c81-f3ba-49b9-bfc9-ffb65bfb8257\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: DOxf75PbEUCYdPm1uUxSKdiWstmUUP9J1EM8qVYfFU8=\",\"external-tx-id: 962c1c81-f3ba-49b9-bfc9-ffb65bfb8257\"]', 'Check Status', '2020-08-25 16:24:52', '2020-08-25 16:24:52');
INSERT INTO `tim_wes` VALUES ('105', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"36765:1598365787218\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"141f9fde-e6b4-11ea-8b91-005056b71b59\",\"externalTxId\":\"ee6a4a28-186d-4b1e-a096-11cc11f442a1\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: wgqmx+\\/LfahZvxjIivBqj9sxDdv9puWDU5+h5zd3hn4=\",\"external-tx-id: ee6a4a28-186d-4b1e-a096-11cc11f442a1\"]', 'Timwe Subscription OptIn', '2020-08-25 16:24:53', '2020-08-25 16:24:53');
INSERT INTO `tim_wes` VALUES ('106', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"974\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"37590:1598365797268\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"ac762cb4-17a0-494d-8bf8-59b32048d500\",\"externalTxId\":\"ac762cb4-17a0-494d-8bf8-59b32048d500\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: KQFAKqsRNzMidlb8ePBWAGdFNswdOIipwGjdMU0NxmU=\",\"external-tx-id: ac762cb4-17a0-494d-8bf8-59b32048d500\"]', 'Check Status', '2020-08-25 16:25:03', '2020-08-25 16:25:03');
INSERT INTO `tim_wes` VALUES ('107', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"974\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"37619:1598365798294\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"8498d1f9-c02a-4630-afb0-418e468266d5\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 5JHvT5zJlqEl6WC0Oa0FcU0myW5YFTRh2ITzw94qh74=\",\"external-tx-id: 8498d1f9-c02a-4630-afb0-418e468266d5\"]', 'Timwe Subscription OptIn', '2020-08-25 16:25:04', '2020-08-25 16:25:04');
INSERT INTO `tim_wes` VALUES ('108', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"37629:1598365839759\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"0379f02d-a362-418d-a773-e2fb9cd73c77\",\"externalTxId\":\"0379f02d-a362-418d-a773-e2fb9cd73c77\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: q+Fz3AD71Kvy7ejbxZRLxUz7+ZmUc2n\\/gKiJpuwC7EY=\",\"external-tx-id: 0379f02d-a362-418d-a773-e2fb9cd73c77\"]', 'Check Status', '2020-08-25 16:25:46', '2020-08-25 16:25:46');
INSERT INTO `tim_wes` VALUES ('109', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"37589:1598365840916\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"141f9fde-e6b4-11ea-8b91-005056b71b59\",\"externalTxId\":\"63c02418-c16e-4b93-89c1-6682300cc8db\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 9+AgPIzha1qtYGHwVqG0YUxbCbyC0Vx0rc4IGZTDquU=\",\"external-tx-id: 63c02418-c16e-4b93-89c1-6682300cc8db\"]', 'Timwe Subscription OptIn', '2020-08-25 16:25:47', '2020-08-25 16:25:47');
INSERT INTO `tim_wes` VALUES ('110', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"974\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"36723:1598365844527\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"89395f90-eacf-49ea-ad62-75b9c57604d8\",\"externalTxId\":\"89395f90-eacf-49ea-ad62-75b9c57604d8\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: JOUAUqKr+\\/QbKGWWv354HyeiXD7icG6hRCG943JqyF8=\",\"external-tx-id: 89395f90-eacf-49ea-ad62-75b9c57604d8\"]', 'Check Status', '2020-08-25 16:25:51', '2020-08-25 16:25:51');
INSERT INTO `tim_wes` VALUES ('111', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"974\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"37619:1598365845667\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"bfd792d3-5996-47d5-adf0-48973a9a908e\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 99hLZBI0\\/3iqmlCBLv0s3KIvEAC9VNy2jhTjCX+zpEo=\",\"external-tx-id: bfd792d3-5996-47d5-adf0-48973a9a908e\"]', 'Timwe Subscription OptIn', '2020-08-25 16:25:52', '2020-08-25 16:25:52');
INSERT INTO `tim_wes` VALUES ('112', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"37590:1598365907213\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"86577ff2-1b4b-4ccb-97e8-632c0772fa01\",\"externalTxId\":\"86577ff2-1b4b-4ccb-97e8-632c0772fa01\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: Aa2RwMqtSRjBz2jGQO1lCkUVf939etLoxaZbbPfri2U=\",\"external-tx-id: 86577ff2-1b4b-4ccb-97e8-632c0772fa01\"]', 'Check Status', '2020-08-25 16:26:53', '2020-08-25 16:26:53');
INSERT INTO `tim_wes` VALUES ('113', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"38520:1598365908846\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"141f9fde-e6b4-11ea-8b91-005056b71b59\",\"externalTxId\":\"82a8272e-f4f1-4741-99a4-2cd590c0b5d0\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: iEmX6gmYDT67jT0J5dWWlul+3VpApapToRXfsx4uZQQ=\",\"external-tx-id: 82a8272e-f4f1-4741-99a4-2cd590c0b5d0\"]', 'Timwe Subscription OptIn', '2020-08-25 16:26:55', '2020-08-25 16:26:55');
INSERT INTO `tim_wes` VALUES ('114', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"36460:1598365916382\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"7cb9db19-116f-4ac2-ad98-5eaf3753601f\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: L75lzn\\/OKK6Ko+Q7\\/Kfzy52KrlHVVoFssDI883Hgc9o=\",\"external-tx-id: 7cb9db19-116f-4ac2-ad98-5eaf3753601f\"]', 'Timwe subscription Confirm', '2020-08-25 16:27:03', '2020-08-25 16:27:03');
INSERT INTO `tim_wes` VALUES ('115', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"974\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"36745:1598365939777\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"0bd5ffb3-0306-4a0d-91e2-8872a943d287\",\"externalTxId\":\"0bd5ffb3-0306-4a0d-91e2-8872a943d287\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 7MZN9ibm8zxWpGZyrDVmiatsCe3Y9hNnl1ngSVKfBqk=\",\"external-tx-id: 0bd5ffb3-0306-4a0d-91e2-8872a943d287\"]', 'Check Status', '2020-08-25 16:27:26', '2020-08-25 16:27:26');
INSERT INTO `tim_wes` VALUES ('116', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"974\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"37614:1598365940829\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"29db49fe-4e7c-44fa-924f-62f0c6c7b2e5\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: Ph\\/ybwz2GkM\\/CRyNIdVcuZdmMf6GiQGpByJZAD6kCLc=\",\"external-tx-id: 29db49fe-4e7c-44fa-924f-62f0c6c7b2e5\"]', 'Timwe Subscription OptIn', '2020-08-25 16:27:27', '2020-08-25 16:27:27');
INSERT INTO `tim_wes` VALUES ('117', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"39102:1598370231850\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"27ea40ec-59c4-4b79-9f28-7cdace3da16f\",\"externalTxId\":\"27ea40ec-59c4-4b79-9f28-7cdace3da16f\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 2wfaMNiT7FS2icBmo3Ve5\\/paNRZ9BV1L1mQZmH4JF8E=\",\"external-tx-id: 27ea40ec-59c4-4b79-9f28-7cdace3da16f\"]', 'Check Status', '2020-08-25 17:38:58', '2020-08-25 17:38:58');
INSERT INTO `tim_wes` VALUES ('118', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"38201:1598370232795\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"141f9fde-e6b4-11ea-8b91-005056b71b59\",\"externalTxId\":\"d21e977e-632d-4291-9474-da279e167a3b\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: oJ1HbTPm12oJbLfniVvKz6mtQa64O5LKSZh98qP7zlY=\",\"external-tx-id: d21e977e-632d-4291-9474-da279e167a3b\"]', 'Timwe Subscription OptIn', '2020-08-25 17:38:59', '2020-08-25 17:38:59');
INSERT INTO `tim_wes` VALUES ('119', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"39110:1598370236698\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"abb3e68a-ef8d-4739-b336-86cfce57ef1b\",\"externalTxId\":\"abb3e68a-ef8d-4739-b336-86cfce57ef1b\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 6W\\/NmbA0uXE4pYrVisbvmZ2smhpUJ20ApHW8WodYZ1s=\",\"external-tx-id: abb3e68a-ef8d-4739-b336-86cfce57ef1b\"]', 'Check Status', '2020-08-25 17:39:03', '2020-08-25 17:39:03');
INSERT INTO `tim_wes` VALUES ('120', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"38212:1598370237082\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"141f9fde-e6b4-11ea-8b91-005056b71b59\",\"externalTxId\":\"c47afba7-6952-420c-a0f6-c1db8ed56ceb\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: +cRTxMcZCVu8JK+wQn5l5XS6dA7QPWAGdD9KhHrbnH0=\",\"external-tx-id: c47afba7-6952-420c-a0f6-c1db8ed56ceb\"]', 'Timwe Subscription OptIn', '2020-08-25 17:39:03', '2020-08-25 17:39:03');
INSERT INTO `tim_wes` VALUES ('121', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"47:1598434815929\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"994b422d-b1a3-4ede-bc5b-9cbe2958dc16\",\"externalTxId\":\"994b422d-b1a3-4ede-bc5b-9cbe2958dc16\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 3aayCIDHABG5tuS\\/\\/UHAhPmMUfBvPQZFCOtCH+bt3g0=\",\"external-tx-id: 994b422d-b1a3-4ede-bc5b-9cbe2958dc16\"]', 'Check Status', '2020-08-26 11:35:23', '2020-08-26 11:35:23');
INSERT INTO `tim_wes` VALUES ('122', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"53:1598434816703\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"141f9fde-e6b4-11ea-8b91-005056b71b59\",\"externalTxId\":\"169bbbe2-686c-4117-982a-db224aa689a7\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: r15dLTyhNfJZu3\\/wlGdQDfMWLE\\/AknUdDsfzXv2gsyU=\",\"external-tx-id: 169bbbe2-686c-4117-982a-db224aa689a7\"]', 'Timwe Subscription OptIn', '2020-08-26 11:35:24', '2020-08-26 11:35:24');
INSERT INTO `tim_wes` VALUES ('123', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"48:1598434821785\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"c7e42f27-168c-4fe9-994d-91c48f4087b2\",\"externalTxId\":\"c7e42f27-168c-4fe9-994d-91c48f4087b2\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: IlRp6fZskOREdKVRT+tSjK5ZN8QKLradaB\\/FSwgewPQ=\",\"external-tx-id: c7e42f27-168c-4fe9-994d-91c48f4087b2\"]', 'Check Status', '2020-08-26 11:35:28', '2020-08-26 11:35:28');
INSERT INTO `tim_wes` VALUES ('124', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"40:1598434822696\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"141f9fde-e6b4-11ea-8b91-005056b71b59\",\"externalTxId\":\"dc39d855-991f-41e0-ba2f-c99b87608921\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: WODPYqFCVX2c+5UBOXJhndIXpJ5O0kBBORBY2RCw+yk=\",\"external-tx-id: dc39d855-991f-41e0-ba2f-c99b87608921\"]', 'Timwe Subscription OptIn', '2020-08-26 11:35:30', '2020-08-26 11:35:30');
INSERT INTO `tim_wes` VALUES ('125', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"46:1598434836175\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"6e911910-375c-4ad8-b071-e50464c9d67f\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: AcfnOQApMXQlEtCVD6fZX+l+3VpApapToRXfsx4uZQQ=\",\"external-tx-id: 6e911910-375c-4ad8-b071-e50464c9d67f\"]', 'Timwe subscription Confirm', '2020-08-26 11:35:43', '2020-08-26 11:35:43');
INSERT INTO `tim_wes` VALUES ('126', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"46:1598434932897\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"c40c66fb-f1ad-40cf-b529-d980f79a5ff8\",\"externalTxId\":\"c40c66fb-f1ad-40cf-b529-d980f79a5ff8\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: SJ8AY1k80z7lvEAKe2Ofq6fc+8VK0sfxHsiCx2HaDOQ=\",\"external-tx-id: c40c66fb-f1ad-40cf-b529-d980f79a5ff8\"]', 'Check Status', '2020-08-26 11:37:20', '2020-08-26 11:37:20');
INSERT INTO `tim_wes` VALUES ('127', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"44:1598434933617\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"141f9fde-e6b4-11ea-8b91-005056b71b59\",\"externalTxId\":\"631b7466-fa7d-4e8c-8086-c7b8bd986a98\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: YTj7usNcVC5dMvaENr6lEqtsCe3Y9hNnl1ngSVKfBqk=\",\"external-tx-id: 631b7466-fa7d-4e8c-8086-c7b8bd986a98\"]', 'Timwe Subscription OptIn', '2020-08-26 11:37:20', '2020-08-26 11:37:20');
INSERT INTO `tim_wes` VALUES ('128', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"45:1598434938730\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"4b373215-dbae-4f06-9489-ae8a98f6393b\",\"externalTxId\":\"4b373215-dbae-4f06-9489-ae8a98f6393b\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: kwLFPee6LzI\\/Y5xEpQdQu9BJWFUTPng7gIN5Tkeozh8=\",\"external-tx-id: 4b373215-dbae-4f06-9489-ae8a98f6393b\"]', 'Check Status', '2020-08-26 11:37:25', '2020-08-26 11:37:25');
INSERT INTO `tim_wes` VALUES ('129', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"50:1598434940352\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"141f9fde-e6b4-11ea-8b91-005056b71b59\",\"externalTxId\":\"f0d14340-15fd-4a85-8cd6-d72678c8b027\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: YDeFA1Q8pPjekwJX7FSVrVqTFSrRepcmGl2lVGEyLg8=\",\"external-tx-id: f0d14340-15fd-4a85-8cd6-d72678c8b027\"]', 'Timwe Subscription OptIn', '2020-08-26 11:37:27', '2020-08-26 11:37:27');
INSERT INTO `tim_wes` VALUES ('130', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"2458:1599052597202\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"ab6c569a-cd9e-4c74-9a03-738f0f320a5d\",\"externalTxId\":\"ab6c569a-cd9e-4c74-9a03-738f0f320a5d\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: zD9KJc+F2ylcAVYCtgvmWVqTFSrRepcmGl2lVGEyLg8=\",\"external-tx-id: ab6c569a-cd9e-4c74-9a03-738f0f320a5d\"]', 'Check Status', '2020-09-02 15:11:49', '2020-09-02 15:11:49');
INSERT INTO `tim_wes` VALUES ('131', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"1426:1599052599256\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"89155680-ed1e-11ea-bf82-005056b77fc1\",\"externalTxId\":\"295c7194-743d-4e98-9912-92e2fc6b859c\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 1YuD8EzeNSlowa34vDJ1cWk4UGBZwPpBKX9TzT7jI4I=\",\"external-tx-id: 295c7194-743d-4e98-9912-92e2fc6b859c\"]', 'Timwe Subscription OptIn', '2020-09-02 15:11:51', '2020-09-02 15:11:51');
INSERT INTO `tim_wes` VALUES ('132', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"2451:1599052613741\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"2d131d88-cd09-46e7-8bf2-64f32b6f9554\",\"externalTxId\":\"2d131d88-cd09-46e7-8bf2-64f32b6f9554\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: ylJcntH899pWAg598fYhaK5ZN8QKLradaB\\/FSwgewPQ=\",\"external-tx-id: 2d131d88-cd09-46e7-8bf2-64f32b6f9554\"]', 'Check Status', '2020-09-02 15:12:05', '2020-09-02 15:12:05');
INSERT INTO `tim_wes` VALUES ('133', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"2470:1599052614471\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"89155680-ed1e-11ea-bf82-005056b77fc1\",\"externalTxId\":\"7001c67a-5198-4516-b3b3-9b8b33690485\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: CAc0nMqR0XIMMIoeaHC4lNsxDdv9puWDU5+h5zd3hn4=\",\"external-tx-id: 7001c67a-5198-4516-b3b3-9b8b33690485\"]', 'Timwe Subscription OptIn', '2020-09-02 15:12:06', '2020-09-02 15:12:06');
INSERT INTO `tim_wes` VALUES ('134', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"2454:1599052628202\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"ede58f05-b83d-46c0-822d-dedf0b8f015a\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: wQWBlpFD82Rqc20rtmrN45svX92sV+QvhhQonUIzAOk=\",\"external-tx-id: ede58f05-b83d-46c0-822d-dedf0b8f015a\"]', 'Timwe subscription Confirm', '2020-09-02 15:12:21', '2020-09-02 15:12:21');
INSERT INTO `tim_wes` VALUES ('135', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"7511:1599120951973\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"25ff2c0a-92e0-48f6-924a-a5b59ecfb731\",\"externalTxId\":\"25ff2c0a-92e0-48f6-924a-a5b59ecfb731\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: tlYe1c4TOzR8sTYtfCrYMbtkzdUNmwgN0wcmnwXr324=\",\"external-tx-id: 25ff2c0a-92e0-48f6-924a-a5b59ecfb731\"]', 'Check Status', '2020-09-03 10:11:05', '2020-09-03 10:11:05');
INSERT INTO `tim_wes` VALUES ('136', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"7539:1599120954028\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"89155680-ed1e-11ea-bf82-005056b77fc1\",\"externalTxId\":\"1935fac6-a1e9-46a1-9253-df91b933721d\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 2yxaoCcZVEtNCbjlJWFNSjFsBKk2wESr2CWjP1SUbOE=\",\"external-tx-id: 1935fac6-a1e9-46a1-9253-df91b933721d\"]', 'Timwe Subscription OptIn', '2020-09-03 10:11:07', '2020-09-03 10:11:07');
INSERT INTO `tim_wes` VALUES ('137', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"7497:1599120959688\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"6495d90e-72e4-4471-a5b0-aa5a13481621\",\"externalTxId\":\"6495d90e-72e4-4471-a5b0-aa5a13481621\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: MHjtnORseFtNKRk6my9HlffPDBtpJKHhD7yj7XVKPfI=\",\"external-tx-id: 6495d90e-72e4-4471-a5b0-aa5a13481621\"]', 'Check Status', '2020-09-03 10:11:12', '2020-09-03 10:11:12');
INSERT INTO `tim_wes` VALUES ('138', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"7562:1599120960166\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"89155680-ed1e-11ea-bf82-005056b77fc1\",\"externalTxId\":\"9e5e0c95-6af9-4138-8ffd-90277b64d1c5\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: GCtjsEFyma9uj\\/27iI9JDWdFNswdOIipwGjdMU0NxmU=\",\"external-tx-id: 9e5e0c95-6af9-4138-8ffd-90277b64d1c5\"]', 'Timwe Subscription OptIn', '2020-09-03 10:11:12', '2020-09-03 10:11:12');
INSERT INTO `tim_wes` VALUES ('139', 'https://qao.timwe.com/external/v2/subscription/optout/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"SUB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"7539:1599121049015\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"38b0f57a-81b4-43eb-a819-ae3179cd3f97\",\"externalTxId\":\"38b0f57a-81b4-43eb-a819-ae3179cd3f97\",\"subscriptionResult\":\"OPTOUT_NO_SUB\",\"subscriptionError\":\"Optout non existent subscription\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: +e83lyNMCOmA7yFnr7hI\\/PMWLE\\/AknUdDsfzXv2gsyU=\",\"external-tx-id: 38b0f57a-81b4-43eb-a819-ae3179cd3f97\"]', 'Timwe subscription OptOut', '2020-09-03 10:12:42', '2020-09-03 10:12:42');
INSERT INTO `tim_wes` VALUES ('140', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"1906:1600009374812\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"ab3a2c71-6cc1-4e86-a301-d5617f116013\",\"externalTxId\":\"ab3a2c71-6cc1-4e86-a301-d5617f116013\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: YobNy5Q6dCaBu8AJQxOp6kz7+ZmUc2n\\/gKiJpuwC7EY=\",\"external-tx-id: ab3a2c71-6cc1-4e86-a301-d5617f116013\"]', 'Check Status', '2020-09-13 16:58:15', '2020-09-13 16:58:15');
INSERT INTO `tim_wes` VALUES ('141', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"1894:1600009375880\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"7f4e30ab-f5ce-11ea-93d8-005056b71b59\",\"externalTxId\":\"f53d8441-ba49-40cd-94e0-816871b5ab03\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: JmbZgiftguvFKMsTcA0M5hqz3uxj2oOfKWrIR5rWwPM=\",\"external-tx-id: f53d8441-ba49-40cd-94e0-816871b5ab03\"]', 'Timwe Subscription OptIn', '2020-09-13 16:58:16', '2020-09-13 16:58:16');
INSERT INTO `tim_wes` VALUES ('142', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"8350:1600776439860\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"95f5eae4-fbe7-11ea-a797-005056b77fc1\",\"externalTxId\":\"06a8c13b-b97b-4558-9de4-d8f5f05052e8\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: GGGd+t5E9uoNIbq7c4GcmKmtQa64O5LKSZh98qP7zlY=\",\"external-tx-id: 06a8c13b-b97b-4558-9de4-d8f5f05052e8\"]', 'Timwe Subscription OptIn', '2020-09-22 14:02:02', '2020-09-22 14:02:02');
INSERT INTO `tim_wes` VALUES ('143', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"8495:1600776458551\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"163c3e09-4ba7-4405-8dcf-3dc878882a28\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: T3+980hhuUkfDuG7stnY3xqz3uxj2oOfKWrIR5rWwPM=\",\"external-tx-id: 163c3e09-4ba7-4405-8dcf-3dc878882a28\"]', 'Timwe subscription Confirm', '2020-09-22 14:02:21', '2020-09-22 14:02:21');
INSERT INTO `tim_wes` VALUES ('144', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"8401:1600776480373\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"95f5eae4-fbe7-11ea-a797-005056b77fc1\",\"externalTxId\":\"dfe62ce1-c1fa-498d-a965-5ca4eaba9900\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 2q8nJYgxt8oLld\\/fck7wUHS6dA7QPWAGdD9KhHrbnH0=\",\"external-tx-id: dfe62ce1-c1fa-498d-a965-5ca4eaba9900\"]', 'Timwe Subscription OptIn', '2020-09-22 14:02:42', '2020-09-22 14:02:42');
INSERT INTO `tim_wes` VALUES ('145', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"8482:1600776490932\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"2882eaf6-264a-4416-b2fe-a4b49dd3be47\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: v7abk9HmG\\/RSYFfB+c10VaQP1PeOOyngV7R1N761gFM=\",\"external-tx-id: 2882eaf6-264a-4416-b2fe-a4b49dd3be47\"]', 'Timwe subscription Confirm', '2020-09-22 14:02:53', '2020-09-22 14:02:53');
INSERT INTO `tim_wes` VALUES ('146', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"45:1600783666352\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"ddc9a9dd-759d-443a-94bf-6ee6201a1b5e\",\"externalTxId\":\"ddc9a9dd-759d-443a-94bf-6ee6201a1b5e\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: qzSMYhpFUQmkR1skXdNQrhl179HpLuJl24qkjNDoMZ4=\",\"external-tx-id: ddc9a9dd-759d-443a-94bf-6ee6201a1b5e\"]', 'Check Status', '2020-09-22 16:02:29', '2020-09-22 16:02:29');
INSERT INTO `tim_wes` VALUES ('147', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97421092093709\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6082:1600855632970\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"bd372f98-0b10-456a-a972-facd13f4da39\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: \\/zCEh2ka9PUjcOx59C9Nf5dmMf6GiQGpByJZAD6kCLc=\",\"external-tx-id: bd372f98-0b10-456a-a972-facd13f4da39\"]', 'Timwe Subscription OptIn', '2020-09-23 12:01:56', '2020-09-23 12:01:56');
INSERT INTO `tim_wes` VALUES ('148', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"null\",\"inError\":false,\"requestId\":\"6081:1600858110816\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"0eb9dcff-fd89-11ea-ae55-005056b77fc1\",\"externalTxId\":\"0a46ebd1-72f2-46b7-8eb2-b290443888c0\",\"subscriptionResult\":\"OPTIN_PREACTIVE_WAIT_CONF\",\"subscriptionError\":\"Preactive and Wait Confirmation\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: rJCOvhSFZzSp\\/Jb+t0VVlLuuIrKWbraFYQTgVAutX60=\",\"external-tx-id: 0a46ebd1-72f2-46b7-8eb2-b290443888c0\"]', 'Timwe Subscription OptIn', '2020-09-23 12:43:14', '2020-09-23 12:43:14');
INSERT INTO `tim_wes` VALUES ('149', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"5965:1600858163152\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"2ff425fd-be42-45b4-917a-1ae2c5c6c151\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: l0KonCCQzYAYwzpsuYV1bdsxDdv9puWDU5+h5zd3hn4=\",\"external-tx-id: 2ff425fd-be42-45b4-917a-1ae2c5c6c151\"]', 'Timwe subscription Confirm', '2020-09-23 12:44:07', '2020-09-23 12:44:07');
INSERT INTO `tim_wes` VALUES ('150', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6082:1600861790373\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"a5e3dc84-16be-4d54-b662-f3968c567eec\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: uwZSN1sqPCNLDN+28tGB9Ryx5zZV7Th6uczlIa05qkY=\",\"external-tx-id: a5e3dc84-16be-4d54-b662-f3968c567eec\"]', 'Timwe Subscription OptIn', '2020-09-23 13:44:33', '2020-09-23 13:44:33');
INSERT INTO `tim_wes` VALUES ('151', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6360:1600861794887\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"aaa32b73-90e4-4ba8-8f7a-1a907147e077\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: RMdm\\/Z5nz1wSdU4qOWQr2GdFNswdOIipwGjdMU0NxmU=\",\"external-tx-id: aaa32b73-90e4-4ba8-8f7a-1a907147e077\"]', 'Timwe subscription Confirm', '2020-09-23 13:44:38', '2020-09-23 13:44:38');
INSERT INTO `tim_wes` VALUES ('152', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6360:1600862016682\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"e84ef51a-d3c4-4d9d-a3c3-d30af8b76992\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: kTpBUPUY4MJkTqtP0dG7bQow9hcKXVZGzxEpehfY87c=\",\"external-tx-id: e84ef51a-d3c4-4d9d-a3c3-d30af8b76992\"]', 'Timwe Subscription OptIn', '2020-09-23 13:48:19', '2020-09-23 13:48:19');
INSERT INTO `tim_wes` VALUES ('153', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6220:1600862024576\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"7aa6710c-5ab8-4e76-b777-af90796642f1\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: T4KuwdRwI\\/MWZLLCXvZa+pdmMf6GiQGpByJZAD6kCLc=\",\"external-tx-id: 7aa6710c-5ab8-4e76-b777-af90796642f1\"]', 'Timwe subscription Confirm', '2020-09-23 13:48:27', '2020-09-23 13:48:27');
INSERT INTO `tim_wes` VALUES ('154', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"5998:1600865546986\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"bd0423af-a40b-44c5-9182-29dc287af207\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: +4nNklYwYPe8KLp0teFS8EPyv4EhVEKofyI+rJoirHY=\",\"external-tx-id: bd0423af-a40b-44c5-9182-29dc287af207\"]', 'Timwe Subscription OptIn', '2020-09-23 14:47:10', '2020-09-23 14:47:10');
INSERT INTO `tim_wes` VALUES ('155', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6233:1600865552889\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"b5c34abd-5f96-4be0-a1a3-082f6d0d3cbe\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: o4OI8utB1+qon7M5VRxH2e429CP1Sd3NMe+wWDtSLQE=\",\"external-tx-id: b5c34abd-5f96-4be0-a1a3-082f6d0d3cbe\"]', 'Timwe subscription Confirm', '2020-09-23 14:47:16', '2020-09-23 14:47:16');
INSERT INTO `tim_wes` VALUES ('156', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"20049:1601198626162\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"3783c7c6-32dd-4b8d-a947-fdc8c669a0b3\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: DQynpG9as6cNDKexuSGSiZTPClrJV2mxbf4G9fDiWf8=\",\"external-tx-id: 3783c7c6-32dd-4b8d-a947-fdc8c669a0b3\"]', 'Timwe Subscription OptIn', '2020-09-27 11:18:33', '2020-09-27 11:18:33');
INSERT INTO `tim_wes` VALUES ('157', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"20030:1601198652110\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"bf512a57-7f00-432f-897f-9c9856e8ba76\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: qKOdgxuv8aDkZIAcDkIr6FXysZ8k6jrfFrFqhqMgOfo=\",\"external-tx-id: bf512a57-7f00-432f-897f-9c9856e8ba76\"]', 'Timwe Subscription OptIn', '2020-09-27 11:18:58', '2020-09-27 11:18:58');
INSERT INTO `tim_wes` VALUES ('158', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":null}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"20044:1601198672796\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"b0fd0697-c296-4ce6-a28f-3f4b3c3770fc\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 6QgQzDhHDbglTBIi1GUst6tsCe3Y9hNnl1ngSVKfBqk=\",\"external-tx-id: b0fd0697-c296-4ce6-a28f-3f4b3c3770fc\"]', 'Timwe subscription Confirm', '2020-09-27 11:19:19', '2020-09-27 11:19:19');
INSERT INTO `tim_wes` VALUES ('159', 'https://qao.timwe.com/external/v2/subscription/optout/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"SUB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"19437:1601198891543\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"1d65ff60-fe1b-4de1-8c4c-0e0ff8037a7d\",\"externalTxId\":\"1d65ff60-fe1b-4de1-8c4c-0e0ff8037a7d\",\"subscriptionResult\":\"OPTOUT_NO_SUB\",\"subscriptionError\":\"Optout non existent subscription\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: tUC1PuV10Kn945MYjviwMpu\\/fnoH0DMZNx17wjVvyBs=\",\"external-tx-id: 1d65ff60-fe1b-4de1-8c4c-0e0ff8037a7d\"]', 'Timwe subscription OptOut', '2020-09-27 11:22:58', '2020-09-27 11:22:58');
INSERT INTO `tim_wes` VALUES ('160', 'https://qao.timwe.com/external/v2/subscription/optout/2614', '{\"userIdentifier\":\"966201092093709\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"SUB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"20044:1601199260748\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"5ec55108-7837-45c0-8569-908b572af8ec\",\"externalTxId\":\"5ec55108-7837-45c0-8569-908b572af8ec\",\"subscriptionResult\":\"OPTOUT_NO_SUB\",\"subscriptionError\":\"Optout non existent subscription\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 5FvmJmnk6WOuPnqtBVT8L65ZN8QKLradaB\\/FSwgewPQ=\",\"external-tx-id: 5ec55108-7837-45c0-8569-908b572af8ec\"]', 'Timwe subscription OptOut', '2020-09-27 11:29:07', '2020-09-27 11:29:07');
INSERT INTO `tim_wes` VALUES ('161', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"966201092093709\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"19470:1601211011770\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"7b15f6c6-2748-472b-b0d3-e26b63258ca7\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: ICR+IXDI6YF48L16QOjZNruuIrKWbraFYQTgVAutX60=\",\"external-tx-id: 7b15f6c6-2748-472b-b0d3-e26b63258ca7\"]', 'Timwe Subscription OptIn', '2020-09-27 14:44:58', '2020-09-27 14:44:58');
INSERT INTO `tim_wes` VALUES ('162', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"966201092093709\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"20031:1601211017595\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"ab7bd5c4-205e-402d-8a25-cc3e93ed1c89\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: qfRpbzvmNYkjPOY4aHSNLWk4UGBZwPpBKX9TzT7jI4I=\",\"external-tx-id: ab7bd5c4-205e-402d-8a25-cc3e93ed1c89\"]', 'Timwe subscription Confirm', '2020-09-27 14:45:04', '2020-09-27 14:45:04');
INSERT INTO `tim_wes` VALUES ('163', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"20109209709\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"1044:1601392562629\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"dabb9e10-9a1b-462b-b2d5-0c627f54b209\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: Zo3JziOGcsAPV\\/KJWnV8jC54Ww\\/u9d+X3\\/Ig\\/53Xvh4=\",\"external-tx-id: dabb9e10-9a1b-462b-b2d5-0c627f54b209\"]', 'Timwe Subscription OptIn', '2020-09-29 17:10:21', '2020-09-29 17:10:21');
INSERT INTO `tim_wes` VALUES ('164', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6264:1601459408674\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"5a5c4459-380a-4b88-963c-bca6cb9f8be2\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: a2TcIPy8sR+coKqcGA8G5CVvvJrC97IZ8CQU51kZ90U=\",\"external-tx-id: 5a5c4459-380a-4b88-963c-bca6cb9f8be2\"]', 'Timwe Subscription OptIn', '2020-09-30 11:44:28', '2020-09-30 11:44:28');
INSERT INTO `tim_wes` VALUES ('165', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6231:1601459494804\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"7361b54d-0556-4e44-a801-7f99008c8f50\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: IqrYA+xw3H5TPsvsuK+UgR3mEzW0u7wSrVp0NUi+bao=\",\"external-tx-id: 7361b54d-0556-4e44-a801-7f99008c8f50\"]', 'Timwe Subscription OptIn', '2020-09-30 11:45:54', '2020-09-30 11:45:54');
INSERT INTO `tim_wes` VALUES ('166', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"966123456789\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6233:1601459506814\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"4550d511-d12b-40b4-9067-38c22b46ebb5\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: zOVIqlyWwb92jg+DYMin2psvX92sV+QvhhQonUIzAOk=\",\"external-tx-id: 4550d511-d12b-40b4-9067-38c22b46ebb5\"]', 'Timwe Subscription OptIn', '2020-09-30 11:46:06', '2020-09-30 11:46:06');
INSERT INTO `tim_wes` VALUES ('167', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"966123456789\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6224:1601459514135\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"be390fbc-5c4a-4d9e-899a-d36c0cc766c8\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: iK84uVkAT1ltiDQG1AmuniVvvJrC97IZ8CQU51kZ90U=\",\"external-tx-id: be390fbc-5c4a-4d9e-899a-d36c0cc766c8\"]', 'Timwe subscription Confirm', '2020-09-30 11:46:13', '2020-09-30 11:46:13');
INSERT INTO `tim_wes` VALUES ('168', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"966123456789\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"12050:1601553092352\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"a5e58b91-7fec-48fe-8f97-9c25bdfcc9c3\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: uNC3pooyGkrtImZE+FGr6MVRkpKw0ekDSCfGmeROc2k=\",\"external-tx-id: a5e58b91-7fec-48fe-8f97-9c25bdfcc9c3\"]', 'Timwe Subscription OptIn', '2020-10-01 13:45:53', '2020-10-01 13:45:53');
INSERT INTO `tim_wes` VALUES ('169', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"966123456789\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"11777:1601553099476\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"8f3c2c12-48f3-4748-b8b0-e7e600bd5fe7\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: sEJ1acKqmmBE2AUXGaOtS6IvEAC9VNy2jhTjCX+zpEo=\",\"external-tx-id: 8f3c2c12-48f3-4748-b8b0-e7e600bd5fe7\"]', 'Timwe subscription Confirm', '2020-10-01 13:46:00', '2020-10-01 13:46:00');
INSERT INTO `tim_wes` VALUES ('170', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"966123456789\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"12050:1601553308878\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"58aedf7a-6375-44ca-8e33-79cc99636243\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: vb7d\\/j1xvwVa0R6L6\\/jnrO429CP1Sd3NMe+wWDtSLQE=\",\"external-tx-id: 58aedf7a-6375-44ca-8e33-79cc99636243\"]', 'Timwe Subscription OptIn', '2020-10-01 13:49:29', '2020-10-01 13:49:29');
INSERT INTO `tim_wes` VALUES ('171', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"966123456789\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"11931:1601553331200\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"3909886c-bd70-4b1c-a11f-0ecf7f7daa63\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: q6qDoqLRNvsT1SBM2DLEWORJ3nUfHnoltBWdTUkFXS8=\",\"external-tx-id: 3909886c-bd70-4b1c-a11f-0ecf7f7daa63\"]', 'Timwe subscription Confirm', '2020-10-01 13:49:51', '2020-10-01 13:49:51');
INSERT INTO `tim_wes` VALUES ('172', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"46:1601802524766\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"0c0b44be-914d-4efc-b4f5-24cdecb66874\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: vmCwCYP6yW4FXCdt0vg24K5ZN8QKLradaB\\/FSwgewPQ=\",\"external-tx-id: 0c0b44be-914d-4efc-b4f5-24cdecb66874\"]', 'Timwe Subscription OptIn', '2020-10-04 11:03:08', '2020-10-04 11:03:08');
INSERT INTO `tim_wes` VALUES ('173', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"966123456789\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6688:1601884276080\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"cc5bc446-c51b-4329-8f71-3792d5884df1\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: R7GT2SB3pOfMR2zOWZmIdamtQa64O5LKSZh98qP7zlY=\",\"external-tx-id: cc5bc446-c51b-4329-8f71-3792d5884df1\"]', 'Timwe Subscription OptIn', '2020-10-05 09:45:39', '2020-10-05 09:45:39');
INSERT INTO `tim_wes` VALUES ('174', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"966123456789\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6638:1601884486398\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"db11525c-39e1-408a-9f6b-26fc978c44d5\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 85D0M\\/oTqbOI1tkcqRikeMDrDRDoyyh5+DdMUedwSBs=\",\"external-tx-id: db11525c-39e1-408a-9f6b-26fc978c44d5\"]', 'Timwe Subscription OptIn', '2020-10-05 09:49:09', '2020-10-05 09:49:09');
INSERT INTO `tim_wes` VALUES ('175', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"966123456789\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6643:1601884592224\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"a0193de4-4aa1-4b6e-ae39-009cd1f3a224\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 97Ix3MA+MSHpL\\/NJLi4TEMVRkpKw0ekDSCfGmeROc2k=\",\"external-tx-id: a0193de4-4aa1-4b6e-ae39-009cd1f3a224\"]', 'Timwe Subscription OptIn', '2020-10-05 09:50:55', '2020-10-05 09:50:55');
INSERT INTO `tim_wes` VALUES ('176', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"966123456789\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6764:1601884598496\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"f581aa0f-d18e-4e7e-96fc-8e762473ced2\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: WSXmd2m\\/2\\/B9syM5qd3atWzJbPAZ68Py\\/ldbvMKGpZ8=\",\"external-tx-id: f581aa0f-d18e-4e7e-96fc-8e762473ced2\"]', 'Timwe subscription Confirm', '2020-10-05 09:51:02', '2020-10-05 09:51:02');
INSERT INTO `tim_wes` VALUES ('177', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"966123456789\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6596:1601887012778\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"a5b9a440-09c9-4854-889b-09a0b621e9fd\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 28dak+qYLFyUup4VSQlL09CmsZtdKVL5yKws7ku1PhQ=\",\"external-tx-id: a5b9a440-09c9-4854-889b-09a0b621e9fd\"]', 'Timwe Subscription OptIn', '2020-10-05 10:31:16', '2020-10-05 10:31:16');
INSERT INTO `tim_wes` VALUES ('178', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"966123456789\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6694:1601887047357\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"71929b60-4864-43e2-b334-8acffe0546cf\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: m+BgNdi8vmYHwoeJLN8+xhl179HpLuJl24qkjNDoMZ4=\",\"external-tx-id: 71929b60-4864-43e2-b334-8acffe0546cf\"]', 'Timwe Subscription OptIn', '2020-10-05 10:31:50', '2020-10-05 10:31:50');
INSERT INTO `tim_wes` VALUES ('179', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6819:1601887355107\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"d8236d5c-e89c-4018-960f-9b413fc921fe\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 6DuVdohIvcXuoiB9twQ2eigqccNU0TFjoTZA+Ju38D4=\",\"external-tx-id: d8236d5c-e89c-4018-960f-9b413fc921fe\"]', 'Timwe Subscription OptIn', '2020-10-05 10:36:58', '2020-10-05 10:36:58');
INSERT INTO `tim_wes` VALUES ('180', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6621:1601887363922\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"491c0dad-2c19-49ac-a0ef-f01aeeda21be\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: VUywGbWgD5130VBCObibRnYgtjrZLzV1k5GlHw3fTUY=\",\"external-tx-id: 491c0dad-2c19-49ac-a0ef-f01aeeda21be\"]', 'Timwe subscription Confirm', '2020-10-05 10:37:07', '2020-10-05 10:37:07');
INSERT INTO `tim_wes` VALUES ('181', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6638:1601887616520\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"8ca6bb79-15b7-4d25-ba53-0698394e6bc3\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: Mgw4hax7LJ53B08dBZA1EPmMUfBvPQZFCOtCH+bt3g0=\",\"external-tx-id: 8ca6bb79-15b7-4d25-ba53-0698394e6bc3\"]', 'Timwe Subscription OptIn', '2020-10-05 10:41:20', '2020-10-05 10:41:20');
INSERT INTO `tim_wes` VALUES ('182', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"12345\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6643:1601887621802\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"4c0a17d0-5553-4687-a791-e67f5f8428aa\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 2JSbkMGDYtzrX6Wv6kV58pu\\/fnoH0DMZNx17wjVvyBs=\",\"external-tx-id: 4c0a17d0-5553-4687-a791-e67f5f8428aa\"]', 'Timwe subscription Confirm', '2020-10-05 10:41:25', '2020-10-05 10:41:25');
INSERT INTO `tim_wes` VALUES ('183', 'https://qao.timwe.com/external/v2/subscription/status/2614/', '{\"userIdentifier\":\"97412345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\"}', '{\"message\":\"null\",\"inError\":true,\"requestId\":\"6970:1601889550006\",\"code\":\"SUCCESS\",\"responseData\":{\"transactionId\":\"4fc9aa6a-33a6-42dc-a969-5fc5df1aeffe\",\"externalTxId\":\"4fc9aa6a-33a6-42dc-a969-5fc5df1aeffe\",\"subscriptionResult\":\"GET_STATUS_SUB_NOT_EXIST\",\"subscriptionError\":\"No subscription found\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: sme3v\\/NF8o2RiUDxmrHr\\/65ZN8QKLradaB\\/FSwgewPQ=\",\"external-tx-id: 4fc9aa6a-33a6-42dc-a969-5fc5df1aeffe\"]', 'Check Status', '2020-10-05 11:13:33', '2020-10-05 11:13:33');
INSERT INTO `tim_wes` VALUES ('184', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6968:1601898189093\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"491b6903-3688-429d-be47-be6f1e92c7cd\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: E0ldMEUhr\\/btn\\/7nIiqnkoqE8rgTXC5JclWLt8GBjoo=\",\"external-tx-id: 491b6903-3688-429d-be47-be6f1e92c7cd\"]', 'Timwe Subscription OptIn', '2020-10-05 13:37:32', '2020-10-05 13:37:32');
INSERT INTO `tim_wes` VALUES ('185', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"45:1601898195440\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"6d8fc8c1-3e84-4cd2-86e4-b14e511d6aa3\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: 6xwPvhBjmB0qck01U9hygqqU7Fwj2ohRWRub1CmT850=\",\"external-tx-id: 6d8fc8c1-3e84-4cd2-86e4-b14e511d6aa3\"]', 'Timwe subscription Confirm', '2020-10-05 13:37:39', '2020-10-05 13:37:39');
INSERT INTO `tim_wes` VALUES ('186', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"6968:1601898486098\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"8d8380e2-8d2b-4969-bff9-e22366599666\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: C\\/xhFzpvsAvnaXOtbsTZ7JUUBrWHV8g8\\/6A52Mo0yFU=\",\"external-tx-id: 8d8380e2-8d2b-4969-bff9-e22366599666\"]', 'Timwe Subscription OptIn', '2020-10-05 13:42:29', '2020-10-05 13:42:29');
INSERT INTO `tim_wes` VALUES ('187', 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"54:1601898492767\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"e517f34b-9179-4869-b621-8d2eecfb3725\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: Qbg6OJr8ARwfKuGqUST20SeiXD7icG6hRCG943JqyF8=\",\"external-tx-id: e517f34b-9179-4869-b621-8d2eecfb3725\"]', 'Timwe subscription Confirm', '2020-10-05 13:42:36', '2020-10-05 13:42:36');
INSERT INTO `tim_wes` VALUES ('188', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"50:1601898923650\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"d891d417-e2fc-4041-a097-2e4c28e83aaf\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: WRjRb9yTBQus2BwKrAgaL+s+s7NF\\/r8\\/byg\\/DlR17b4=\",\"external-tx-id: d891d417-e2fc-4041-a097-2e4c28e83aaf\"]', 'Timwe Subscription OptIn', '2020-10-05 13:49:47', '2020-10-05 13:49:47');
INSERT INTO `tim_wes` VALUES ('189', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"53:1601902792822\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"164fa71c-4918-4728-9b3a-309cc353b548\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: cA9nPp1KrIfqFe8wmZ6UidiWstmUUP9J1EM8qVYfFU8=\",\"external-tx-id: 164fa71c-4918-4728-9b3a-309cc353b548\"]', 'Timwe Subscription OptIn', '2020-10-05 14:54:16', '2020-10-05 14:54:16');
INSERT INTO `tim_wes` VALUES ('190', 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"96612345678\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Invalid msisdn!\",\"inError\":true,\"requestId\":\"7797:1601902810865\",\"code\":\"INVALID_MSISDN\",\"responseData\":{\"externalTxId\":\"ab0a9bb1-56db-4b43-a986-988258a31664\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: HiMCffZ8CzGKvZlZk6HC190zwgPGHkzI\\/hksDDJL5mE=\",\"external-tx-id: ab0a9bb1-56db-4b43-a986-988258a31664\"]', 'Timwe Subscription OptIn', '2020-10-05 14:54:34', '2020-10-05 14:54:34');

-- ----------------------------
-- Table structure for `translatables`
-- ----------------------------
DROP TABLE IF EXISTS `translatables`;
CREATE TABLE `translatables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `record_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of translatables
-- ----------------------------
INSERT INTO `translatables` VALUES ('33', 'services', '25', 'title', '2020-03-30 14:39:32', '2020-03-30 14:39:32');
INSERT INTO `translatables` VALUES ('34', 'contents', '53', 'title', '2020-03-30 14:41:08', '2020-03-30 14:41:08');
INSERT INTO `translatables` VALUES ('35', 'contents', '54', 'title', '2020-03-30 14:41:50', '2020-03-30 14:41:50');
INSERT INTO `translatables` VALUES ('36', 'contents', '55', 'title', '2020-03-30 14:42:15', '2020-03-30 14:42:15');
INSERT INTO `translatables` VALUES ('37', 'contents', '56', 'title', '2020-03-30 14:42:59', '2020-03-30 14:42:59');
INSERT INTO `translatables` VALUES ('38', 'contents', '57', 'title', '2020-03-30 14:44:48', '2020-03-30 14:44:48');
INSERT INTO `translatables` VALUES ('39', 'contents', '57', 'content_text', '2020-03-30 14:44:48', '2020-03-30 14:44:48');
INSERT INTO `translatables` VALUES ('40', 'contents', '58', 'title', '2020-03-30 14:46:26', '2020-03-30 14:46:26');
INSERT INTO `translatables` VALUES ('41', 'contents', '58', 'content_text', '2020-03-30 14:46:26', '2020-03-30 14:46:26');
INSERT INTO `translatables` VALUES ('42', 'contents', '59', 'title', '2020-03-30 14:47:22', '2020-03-30 14:47:22');
INSERT INTO `translatables` VALUES ('43', 'contents', '60', 'title', '2020-03-30 14:47:50', '2020-03-30 14:47:50');
INSERT INTO `translatables` VALUES ('44', 'contents', '61', 'title', '2020-03-30 14:48:25', '2020-03-30 14:48:25');
INSERT INTO `translatables` VALUES ('45', 'contents', '62', 'title', '2020-03-30 14:49:06', '2020-03-30 14:49:06');
INSERT INTO `translatables` VALUES ('46', 'audios', '22', 'title', '2020-03-30 14:55:40', '2020-03-30 14:55:40');
INSERT INTO `translatables` VALUES ('47', 'audios', '23', 'title', '2020-03-30 14:56:15', '2020-03-30 14:56:15');
INSERT INTO `translatables` VALUES ('48', 'audios', '24', 'title', '2020-03-30 14:56:53', '2020-03-30 14:56:53');
INSERT INTO `translatables` VALUES ('49', 'audios', '25', 'title', '2020-03-30 14:57:29', '2020-03-30 14:57:29');
INSERT INTO `translatables` VALUES ('50', 'audios', '26', 'title', '2020-03-30 14:57:59', '2020-03-30 14:57:59');
INSERT INTO `translatables` VALUES ('51', 'audios', '27', 'title', '2020-03-30 14:58:45', '2020-03-30 14:58:45');
INSERT INTO `translatables` VALUES ('52', 'services', '26', 'title', '2020-03-30 15:01:51', '2020-03-30 15:01:51');
INSERT INTO `translatables` VALUES ('53', 'services', '27', 'title', '2020-03-30 15:03:39', '2020-03-30 15:03:39');
INSERT INTO `translatables` VALUES ('55', 'services', '28', 'title', '2020-04-01 19:37:34', '2020-04-01 19:37:34');
INSERT INTO `translatables` VALUES ('56', 'contents', '63', 'title', '2020-04-01 19:38:11', '2020-04-01 19:38:11');
INSERT INTO `translatables` VALUES ('57', 'services', '29', 'title', '2020-04-02 12:30:59', '2020-04-02 12:30:59');
INSERT INTO `translatables` VALUES ('58', 'contents', '64', 'title', '2020-04-02 12:31:24', '2020-04-02 12:31:24');
INSERT INTO `translatables` VALUES ('59', 'contents', '65', 'title', '2020-04-02 12:48:01', '2020-04-02 12:48:01');
INSERT INTO `translatables` VALUES ('60', 'services', '30', 'title', '2020-04-02 15:14:19', '2020-04-02 15:14:19');
INSERT INTO `translatables` VALUES ('61', 'contents', '66', 'title', '2020-04-02 15:14:42', '2020-04-02 15:14:42');
INSERT INTO `translatables` VALUES ('62', 'contents', '67', 'title', '2020-04-02 16:02:27', '2020-04-02 16:02:27');
INSERT INTO `translatables` VALUES ('63', 'services', '31', 'title', '2020-04-03 18:57:48', '2020-04-03 18:57:48');
INSERT INTO `translatables` VALUES ('64', 'contents', '68', 'title', '2020-04-03 18:59:15', '2020-04-03 18:59:15');
INSERT INTO `translatables` VALUES ('65', 'contents', '68', 'content_text', '2020-04-03 18:59:16', '2020-04-03 18:59:16');
INSERT INTO `translatables` VALUES ('66', 'audios', '28', 'title', '2020-04-03 21:56:57', '2020-04-03 21:56:57');
INSERT INTO `translatables` VALUES ('67', 'audios', '29', 'title', '2020-04-03 21:58:03', '2020-04-03 21:58:03');
INSERT INTO `translatables` VALUES ('68', 'audios', '30', 'title', '2020-04-03 22:05:19', '2020-04-03 22:05:19');
INSERT INTO `translatables` VALUES ('69', 'audios', '31', 'title', '2020-04-03 22:07:57', '2020-04-03 22:07:57');
INSERT INTO `translatables` VALUES ('71', 'audios', '32', 'title', '2020-04-08 17:36:18', '2020-04-08 17:36:18');
INSERT INTO `translatables` VALUES ('72', 'services', '32', 'title', '2020-04-08 17:40:47', '2020-04-08 17:40:47');
INSERT INTO `translatables` VALUES ('73', 'contents', '69', 'title', '2020-04-08 17:50:26', '2020-04-08 17:50:26');
INSERT INTO `translatables` VALUES ('75', 'providers', '20', 'title', '2020-04-09 20:49:24', '2020-04-09 20:49:24');
INSERT INTO `translatables` VALUES ('76', 'services', '33', 'title', '2020-04-09 20:49:49', '2020-04-09 20:49:49');
INSERT INTO `translatables` VALUES ('78', 'audios', '33', 'title', '2020-04-09 20:53:38', '2020-04-09 20:53:38');
INSERT INTO `translatables` VALUES ('79', 'audios', '34', 'title', '2020-04-09 20:55:27', '2020-04-09 20:55:27');
INSERT INTO `translatables` VALUES ('80', 'audios', '35', 'title', '2020-04-09 21:04:59', '2020-04-09 21:04:59');
INSERT INTO `translatables` VALUES ('81', 'audios', '36', 'title', '2020-04-09 21:05:24', '2020-04-09 21:05:24');
INSERT INTO `translatables` VALUES ('82', 'services', '34', 'title', '2020-04-14 03:35:26', '2020-04-14 03:35:26');
INSERT INTO `translatables` VALUES ('83', 'contents', '71', 'title', '2020-04-14 03:40:32', '2020-04-14 03:40:32');
INSERT INTO `translatables` VALUES ('84', 'contents', '72', 'title', '2020-04-14 03:43:44', '2020-04-14 03:43:44');
INSERT INTO `translatables` VALUES ('85', 'contents', '73', 'title', '2020-04-14 03:45:06', '2020-04-14 03:45:06');
INSERT INTO `translatables` VALUES ('86', 'contents', '74', 'title', '2020-04-14 03:46:12', '2020-04-14 03:46:12');
INSERT INTO `translatables` VALUES ('87', 'contents', '75', 'title', '2020-04-14 03:47:11', '2020-04-14 03:47:11');
INSERT INTO `translatables` VALUES ('88', 'contents', '76', 'title', '2020-04-14 03:48:10', '2020-04-14 03:48:10');
INSERT INTO `translatables` VALUES ('89', 'contents', '77', 'title', '2020-04-14 03:49:52', '2020-04-14 03:49:52');
INSERT INTO `translatables` VALUES ('90', 'contents', '78', 'title', '2020-04-14 03:50:43', '2020-04-14 03:50:43');
INSERT INTO `translatables` VALUES ('91', 'contents', '79', 'title', '2020-04-14 03:51:32', '2020-04-14 03:51:32');
INSERT INTO `translatables` VALUES ('92', 'contents', '80', 'title', '2020-04-14 03:52:17', '2020-04-14 03:52:17');
INSERT INTO `translatables` VALUES ('103', 'services', '35', 'title', '2020-04-14 04:15:19', '2020-04-14 04:15:19');
INSERT INTO `translatables` VALUES ('114', 'services', '36', 'title', '2020-04-14 04:28:53', '2020-04-14 04:28:53');
INSERT INTO `translatables` VALUES ('115', 'contents', '101', 'title', '2020-04-14 04:33:13', '2020-04-14 04:33:13');
INSERT INTO `translatables` VALUES ('116', 'contents', '102', 'title', '2020-04-14 04:33:46', '2020-04-14 04:33:46');
INSERT INTO `translatables` VALUES ('117', 'contents', '103', 'title', '2020-04-14 04:34:44', '2020-04-14 04:34:44');
INSERT INTO `translatables` VALUES ('118', 'contents', '104', 'title', '2020-04-14 04:35:21', '2020-04-14 04:35:21');
INSERT INTO `translatables` VALUES ('119', 'contents', '105', 'title', '2020-04-14 04:36:22', '2020-04-14 04:36:22');
INSERT INTO `translatables` VALUES ('120', 'contents', '106', 'title', '2020-04-14 04:37:45', '2020-04-14 04:37:45');
INSERT INTO `translatables` VALUES ('121', 'contents', '107', 'title', '2020-04-14 04:38:15', '2020-04-14 04:38:15');
INSERT INTO `translatables` VALUES ('122', 'contents', '108', 'title', '2020-04-14 04:38:50', '2020-04-14 04:38:50');
INSERT INTO `translatables` VALUES ('123', 'contents', '109', 'title', '2020-04-14 04:39:29', '2020-04-14 04:39:29');
INSERT INTO `translatables` VALUES ('124', 'contents', '110', 'title', '2020-04-14 04:40:07', '2020-04-14 04:40:07');
INSERT INTO `translatables` VALUES ('125', 'providers', '21', 'title', '2020-04-14 04:43:07', '2020-04-14 04:43:07');
INSERT INTO `translatables` VALUES ('126', 'providers', '22', 'title', '2020-04-14 04:43:57', '2020-04-14 04:43:57');
INSERT INTO `translatables` VALUES ('127', 'services', '37', 'title', '2020-04-14 04:45:34', '2020-04-14 04:45:34');
INSERT INTO `translatables` VALUES ('128', 'services', '38', 'title', '2020-04-14 04:49:36', '2020-04-14 04:49:36');
INSERT INTO `translatables` VALUES ('129', 'services', '39', 'title', '2020-04-14 04:51:02', '2020-04-14 04:51:02');
INSERT INTO `translatables` VALUES ('130', 'contents', '111', 'title', '2020-04-14 04:55:58', '2020-04-14 04:55:58');
INSERT INTO `translatables` VALUES ('131', 'contents', '112', 'title', '2020-04-14 04:56:38', '2020-04-14 04:56:38');
INSERT INTO `translatables` VALUES ('132', 'contents', '113', 'title', '2020-04-14 04:57:39', '2020-04-14 04:57:39');
INSERT INTO `translatables` VALUES ('133', 'contents', '114', 'title', '2020-04-14 04:58:38', '2020-04-14 04:58:38');
INSERT INTO `translatables` VALUES ('134', 'contents', '115', 'title', '2020-04-14 04:59:26', '2020-04-14 04:59:26');
INSERT INTO `translatables` VALUES ('135', 'contents', '116', 'title', '2020-04-14 05:00:07', '2020-04-14 05:00:07');
INSERT INTO `translatables` VALUES ('136', 'contents', '117', 'title', '2020-04-14 05:00:55', '2020-04-14 05:00:55');
INSERT INTO `translatables` VALUES ('137', 'contents', '118', 'title', '2020-04-14 05:01:43', '2020-04-14 05:01:43');
INSERT INTO `translatables` VALUES ('138', 'contents', '119', 'title', '2020-04-14 05:02:32', '2020-04-14 05:02:32');
INSERT INTO `translatables` VALUES ('139', 'contents', '120', 'title', '2020-04-14 05:03:12', '2020-04-14 05:03:12');
INSERT INTO `translatables` VALUES ('140', 'contents', '121', 'title', '2020-04-14 05:07:25', '2020-04-14 05:07:25');
INSERT INTO `translatables` VALUES ('141', 'contents', '122', 'title', '2020-04-14 05:08:08', '2020-04-14 05:08:08');
INSERT INTO `translatables` VALUES ('142', 'contents', '123', 'title', '2020-04-14 05:09:10', '2020-04-14 05:09:10');
INSERT INTO `translatables` VALUES ('143', 'contents', '124', 'title', '2020-04-14 05:09:55', '2020-04-14 05:09:55');
INSERT INTO `translatables` VALUES ('144', 'contents', '125', 'title', '2020-04-14 05:10:46', '2020-04-14 05:10:46');
INSERT INTO `translatables` VALUES ('145', 'contents', '126', 'title', '2020-04-14 05:11:25', '2020-04-14 05:11:25');
INSERT INTO `translatables` VALUES ('146', 'contents', '127', 'title', '2020-04-14 05:12:02', '2020-04-14 05:12:02');
INSERT INTO `translatables` VALUES ('147', 'contents', '128', 'title', '2020-04-14 05:12:39', '2020-04-14 05:12:39');
INSERT INTO `translatables` VALUES ('148', 'contents', '129', 'title', '2020-04-14 05:13:43', '2020-04-14 05:13:43');
INSERT INTO `translatables` VALUES ('149', 'contents', '130', 'title', '2020-04-14 05:14:18', '2020-04-14 05:14:18');
INSERT INTO `translatables` VALUES ('150', 'contents', '131', 'title', '2020-04-14 05:45:42', '2020-04-14 05:45:42');
INSERT INTO `translatables` VALUES ('151', 'contents', '132', 'title', '2020-04-14 05:46:26', '2020-04-14 05:46:26');
INSERT INTO `translatables` VALUES ('152', 'contents', '133', 'title', '2020-04-14 05:49:46', '2020-04-14 05:49:46');
INSERT INTO `translatables` VALUES ('153', 'contents', '134', 'title', '2020-04-14 05:50:50', '2020-04-14 05:50:50');
INSERT INTO `translatables` VALUES ('154', 'contents', '135', 'title', '2020-04-14 05:51:31', '2020-04-14 05:51:31');
INSERT INTO `translatables` VALUES ('156', 'contents', '137', 'title', '2020-04-14 05:52:36', '2020-04-14 05:52:36');
INSERT INTO `translatables` VALUES ('157', 'contents', '138', 'title', '2020-04-14 05:54:34', '2020-04-14 05:54:34');
INSERT INTO `translatables` VALUES ('158', 'contents', '139', 'title', '2020-04-14 05:56:17', '2020-04-14 05:56:17');
INSERT INTO `translatables` VALUES ('159', 'contents', '140', 'title', '2020-04-14 05:57:06', '2020-04-14 05:57:06');
INSERT INTO `translatables` VALUES ('160', 'contents', '141', 'title', '2020-04-14 05:57:56', '2020-04-14 05:57:56');
INSERT INTO `translatables` VALUES ('161', 'contents', '142', 'title', '2020-04-15 03:33:02', '2020-04-15 03:33:02');
INSERT INTO `translatables` VALUES ('162', 'contents', '143', 'title', '2020-04-15 03:33:41', '2020-04-15 03:33:41');
INSERT INTO `translatables` VALUES ('163', 'contents', '144', 'title', '2020-04-15 03:34:35', '2020-04-15 03:34:35');
INSERT INTO `translatables` VALUES ('164', 'contents', '145', 'title', '2020-04-15 03:35:14', '2020-04-15 03:35:14');
INSERT INTO `translatables` VALUES ('165', 'contents', '146', 'title', '2020-04-15 03:35:52', '2020-04-15 03:35:52');
INSERT INTO `translatables` VALUES ('166', 'contents', '147', 'title', '2020-04-15 03:36:29', '2020-04-15 03:36:29');
INSERT INTO `translatables` VALUES ('167', 'contents', '148', 'title', '2020-04-15 03:37:05', '2020-04-15 03:37:05');
INSERT INTO `translatables` VALUES ('168', 'contents', '149', 'title', '2020-04-15 03:37:44', '2020-04-15 03:37:44');
INSERT INTO `translatables` VALUES ('169', 'contents', '150', 'title', '2020-04-15 03:38:25', '2020-04-15 03:38:25');
INSERT INTO `translatables` VALUES ('170', 'contents', '151', 'title', '2020-04-15 03:39:33', '2020-04-15 03:39:33');
INSERT INTO `translatables` VALUES ('171', 'contents', '152', 'title', '2020-04-15 03:40:36', '2020-04-15 03:40:36');
INSERT INTO `translatables` VALUES ('172', 'contents', '153', 'title', '2020-04-15 03:41:59', '2020-04-15 03:41:59');
INSERT INTO `translatables` VALUES ('173', 'contents', '154', 'title', '2020-04-15 03:44:12', '2020-04-15 03:44:12');
INSERT INTO `translatables` VALUES ('174', 'contents', '155', 'title', '2020-04-15 03:45:29', '2020-04-15 03:45:29');
INSERT INTO `translatables` VALUES ('175', 'contents', '156', 'title', '2020-04-15 03:46:40', '2020-04-15 03:46:40');
INSERT INTO `translatables` VALUES ('176', 'contents', '157', 'title', '2020-04-15 03:47:53', '2020-04-15 03:47:53');
INSERT INTO `translatables` VALUES ('177', 'contents', '158', 'title', '2020-04-15 03:48:40', '2020-04-15 03:48:40');
INSERT INTO `translatables` VALUES ('178', 'contents', '159', 'title', '2020-04-15 03:49:22', '2020-04-15 03:49:22');
INSERT INTO `translatables` VALUES ('179', 'contents', '160', 'title', '2020-04-15 03:50:31', '2020-04-15 03:50:31');
INSERT INTO `translatables` VALUES ('180', 'contents', '161', 'title', '2020-04-15 03:51:14', '2020-04-15 03:51:14');
INSERT INTO `translatables` VALUES ('199', 'contents', '180', 'title', '2020-04-15 04:24:07', '2020-04-15 04:24:07');
INSERT INTO `translatables` VALUES ('200', 'contents', '181', 'title', '2020-04-15 04:25:43', '2020-04-15 04:25:43');
INSERT INTO `translatables` VALUES ('201', 'contents', '182', 'title', '2020-04-15 04:26:56', '2020-04-15 04:26:56');
INSERT INTO `translatables` VALUES ('202', 'contents', '183', 'title', '2020-04-15 04:28:11', '2020-04-15 04:28:11');
INSERT INTO `translatables` VALUES ('203', 'contents', '184', 'title', '2020-04-15 04:30:51', '2020-04-15 04:30:51');
INSERT INTO `translatables` VALUES ('204', 'contents', '185', 'title', '2020-04-15 04:33:02', '2020-04-15 04:33:02');
INSERT INTO `translatables` VALUES ('205', 'contents', '186', 'title', '2020-04-15 04:35:35', '2020-04-15 04:35:35');
INSERT INTO `translatables` VALUES ('206', 'contents', '187', 'title', '2020-04-15 04:36:57', '2020-04-15 04:36:57');
INSERT INTO `translatables` VALUES ('207', 'contents', '188', 'title', '2020-04-15 04:39:35', '2020-04-15 04:39:35');
INSERT INTO `translatables` VALUES ('208', 'contents', '189', 'title', '2020-04-15 04:40:31', '2020-04-15 04:40:31');
INSERT INTO `translatables` VALUES ('209', 'contents', '190', 'title', '2020-04-15 04:42:59', '2020-04-15 04:42:59');
INSERT INTO `translatables` VALUES ('210', 'contents', '191', 'title', '2020-04-15 04:44:48', '2020-04-15 04:44:48');
INSERT INTO `translatables` VALUES ('211', 'contents', '192', 'title', '2020-04-15 04:47:55', '2020-04-15 04:47:55');
INSERT INTO `translatables` VALUES ('212', 'contents', '193', 'title', '2020-04-15 04:50:50', '2020-04-15 04:50:50');
INSERT INTO `translatables` VALUES ('213', 'contents', '194', 'title', '2020-04-15 04:52:05', '2020-04-15 04:52:05');
INSERT INTO `translatables` VALUES ('214', 'contents', '195', 'title', '2020-04-15 04:53:37', '2020-04-15 04:53:37');
INSERT INTO `translatables` VALUES ('215', 'contents', '196', 'title', '2020-04-15 04:55:16', '2020-04-15 04:55:16');
INSERT INTO `translatables` VALUES ('216', 'contents', '197', 'title', '2020-04-15 04:58:27', '2020-04-15 04:58:27');
INSERT INTO `translatables` VALUES ('217', 'contents', '198', 'title', '2020-04-15 04:59:40', '2020-04-15 04:59:40');
INSERT INTO `translatables` VALUES ('218', 'contents', '199', 'title', '2020-04-15 05:00:39', '2020-04-15 05:00:39');
INSERT INTO `translatables` VALUES ('219', 'contents', '200', 'title', '2020-04-15 05:01:47', '2020-04-15 05:01:47');
INSERT INTO `translatables` VALUES ('220', 'contents', '201', 'title', '2020-04-15 05:10:58', '2020-04-15 05:10:58');
INSERT INTO `translatables` VALUES ('221', 'contents', '202', 'title', '2020-04-15 05:11:42', '2020-04-15 05:11:42');
INSERT INTO `translatables` VALUES ('222', 'contents', '203', 'title', '2020-04-15 05:12:35', '2020-04-15 05:12:35');
INSERT INTO `translatables` VALUES ('223', 'contents', '204', 'title', '2020-04-15 05:13:21', '2020-04-15 05:13:21');
INSERT INTO `translatables` VALUES ('224', 'contents', '205', 'title', '2020-04-15 05:15:04', '2020-04-15 05:15:04');
INSERT INTO `translatables` VALUES ('225', 'contents', '206', 'title', '2020-04-15 05:15:45', '2020-04-15 05:15:45');
INSERT INTO `translatables` VALUES ('226', 'contents', '207', 'title', '2020-04-15 05:16:16', '2020-04-15 05:16:16');
INSERT INTO `translatables` VALUES ('227', 'contents', '208', 'title', '2020-04-15 05:16:19', '2020-04-15 05:16:19');
INSERT INTO `translatables` VALUES ('228', 'contents', '209', 'title', '2020-04-15 05:21:43', '2020-04-15 05:21:43');
INSERT INTO `translatables` VALUES ('229', 'contents', '210', 'title', '2020-04-15 05:26:19', '2020-04-15 05:26:19');
INSERT INTO `translatables` VALUES ('230', 'contents', '211', 'title', '2020-04-15 05:27:27', '2020-04-15 05:27:27');
INSERT INTO `translatables` VALUES ('231', 'contents', '212', 'title', '2020-04-15 05:28:58', '2020-04-15 05:28:58');
INSERT INTO `translatables` VALUES ('232', 'contents', '213', 'title', '2020-04-15 05:30:11', '2020-04-15 05:30:11');
INSERT INTO `translatables` VALUES ('233', 'contents', '214', 'title', '2020-04-15 05:31:32', '2020-04-15 05:31:32');
INSERT INTO `translatables` VALUES ('234', 'contents', '215', 'title', '2020-04-15 05:32:38', '2020-04-15 05:32:38');
INSERT INTO `translatables` VALUES ('235', 'contents', '216', 'title', '2020-04-15 05:34:33', '2020-04-15 05:34:33');
INSERT INTO `translatables` VALUES ('236', 'contents', '217', 'title', '2020-04-15 05:35:43', '2020-04-15 05:35:43');
INSERT INTO `translatables` VALUES ('237', 'contents', '218', 'title', '2020-04-15 05:36:20', '2020-04-15 05:36:20');
INSERT INTO `translatables` VALUES ('238', 'contents', '219', 'title', '2020-04-15 05:38:03', '2020-04-15 05:38:03');
INSERT INTO `translatables` VALUES ('239', 'contents', '220', 'title', '2020-04-15 05:39:06', '2020-04-15 05:39:06');
INSERT INTO `translatables` VALUES ('240', 'contents', '221', 'title', '2020-04-15 05:39:57', '2020-04-15 05:39:57');
INSERT INTO `translatables` VALUES ('241', 'contents', '222', 'title', '2020-04-15 23:29:08', '2020-04-15 23:29:08');
INSERT INTO `translatables` VALUES ('242', 'contents', '223', 'title', '2020-04-15 23:30:05', '2020-04-15 23:30:05');
INSERT INTO `translatables` VALUES ('243', 'contents', '224', 'title', '2020-04-15 23:31:35', '2020-04-15 23:31:35');
INSERT INTO `translatables` VALUES ('244', 'contents', '225', 'title', '2020-04-15 23:32:26', '2020-04-15 23:32:26');
INSERT INTO `translatables` VALUES ('245', 'contents', '226', 'title', '2020-04-15 23:33:20', '2020-04-15 23:33:20');
INSERT INTO `translatables` VALUES ('246', 'contents', '227', 'title', '2020-04-15 23:34:53', '2020-04-15 23:34:53');
INSERT INTO `translatables` VALUES ('247', 'contents', '228', 'title', '2020-04-15 23:40:07', '2020-04-15 23:40:07');
INSERT INTO `translatables` VALUES ('248', 'contents', '229', 'title', '2020-04-15 23:41:50', '2020-04-15 23:41:50');
INSERT INTO `translatables` VALUES ('249', 'contents', '230', 'title', '2020-04-15 23:43:34', '2020-04-15 23:43:34');
INSERT INTO `translatables` VALUES ('250', 'contents', '231', 'title', '2020-04-15 23:45:20', '2020-04-15 23:45:20');
INSERT INTO `translatables` VALUES ('251', 'contents', '232', 'title', '2020-04-15 23:46:52', '2020-04-15 23:46:52');
INSERT INTO `translatables` VALUES ('252', 'contents', '233', 'title', '2020-04-15 23:48:15', '2020-04-15 23:48:15');
INSERT INTO `translatables` VALUES ('253', 'contents', '234', 'title', '2020-04-15 23:49:13', '2020-04-15 23:49:13');
INSERT INTO `translatables` VALUES ('254', 'contents', '235', 'title', '2020-04-15 23:55:23', '2020-04-15 23:55:23');
INSERT INTO `translatables` VALUES ('255', 'contents', '236', 'title', '2020-04-15 23:56:03', '2020-04-15 23:56:03');
INSERT INTO `translatables` VALUES ('256', 'contents', '237', 'title', '2020-04-15 23:56:46', '2020-04-15 23:56:46');
INSERT INTO `translatables` VALUES ('257', 'contents', '238', 'title', '2020-04-15 23:57:32', '2020-04-15 23:57:32');
INSERT INTO `translatables` VALUES ('258', 'contents', '239', 'title', '2020-04-15 23:58:58', '2020-04-15 23:58:58');
INSERT INTO `translatables` VALUES ('259', 'contents', '240', 'title', '2020-04-15 23:59:54', '2020-04-15 23:59:54');
INSERT INTO `translatables` VALUES ('260', 'contents', '241', 'title', '2020-04-16 00:00:39', '2020-04-16 00:00:39');
INSERT INTO `translatables` VALUES ('263', 'providers', '23', 'title', '2020-04-16 00:11:24', '2020-04-16 00:11:24');
INSERT INTO `translatables` VALUES ('264', 'services', '40', 'title', '2020-04-16 00:13:52', '2020-04-16 00:13:52');
INSERT INTO `translatables` VALUES ('265', 'contents', '244', 'title', '2020-04-16 00:16:13', '2020-04-16 00:16:13');
INSERT INTO `translatables` VALUES ('266', 'contents', '245', 'title', '2020-04-16 00:17:01', '2020-04-16 00:17:01');
INSERT INTO `translatables` VALUES ('267', 'contents', '246', 'title', '2020-04-16 00:20:03', '2020-04-16 00:20:03');
INSERT INTO `translatables` VALUES ('268', 'services', '41', 'title', '2020-04-16 00:21:08', '2020-04-16 00:21:08');
INSERT INTO `translatables` VALUES ('269', 'contents', '247', 'title', '2020-04-16 00:22:12', '2020-04-16 00:22:12');
INSERT INTO `translatables` VALUES ('270', 'contents', '248', 'title', '2020-04-16 00:24:06', '2020-04-16 00:24:06');
INSERT INTO `translatables` VALUES ('272', 'services', '42', 'title', '2020-04-16 01:14:24', '2020-04-16 01:14:24');
INSERT INTO `translatables` VALUES ('273', 'providers', '25', 'title', '2020-04-16 01:30:31', '2020-04-16 01:30:31');
INSERT INTO `translatables` VALUES ('274', 'services', '43', 'title', '2020-04-16 01:32:39', '2020-04-16 01:32:39');
INSERT INTO `translatables` VALUES ('276', 'contents', '250', 'title', '2020-04-16 02:38:06', '2020-04-16 02:38:06');
INSERT INTO `translatables` VALUES ('277', 'contents', '251', 'title', '2020-04-16 02:39:47', '2020-04-16 02:39:47');
INSERT INTO `translatables` VALUES ('278', 'contents', '252', 'title', '2020-04-16 02:43:19', '2020-04-16 02:43:19');
INSERT INTO `translatables` VALUES ('279', 'contents', '253', 'title', '2020-04-16 03:01:56', '2020-04-16 03:01:56');
INSERT INTO `translatables` VALUES ('280', 'contents', '254', 'title', '2020-04-16 03:05:14', '2020-04-16 03:05:14');
INSERT INTO `translatables` VALUES ('281', 'contents', '255', 'title', '2020-04-16 03:07:32', '2020-04-16 03:07:32');
INSERT INTO `translatables` VALUES ('282', 'services', '44', 'title', '2020-04-16 03:17:22', '2020-04-16 03:17:22');
INSERT INTO `translatables` VALUES ('283', 'contents', '256', 'title', '2020-04-16 03:19:43', '2020-04-16 03:19:43');
INSERT INTO `translatables` VALUES ('284', 'contents', '257', 'title', '2020-04-16 06:34:26', '2020-04-16 06:34:26');
INSERT INTO `translatables` VALUES ('285', 'contents', '258', 'title', '2020-04-16 06:34:42', '2020-04-16 06:34:42');
INSERT INTO `translatables` VALUES ('286', 'contents', '259', 'title', '2020-04-16 06:34:56', '2020-04-16 06:34:56');
INSERT INTO `translatables` VALUES ('287', 'contents', '260', 'title', '2020-04-16 06:35:08', '2020-04-16 06:35:08');
INSERT INTO `translatables` VALUES ('289', 'contents', '262', 'title', '2020-04-16 06:42:30', '2020-04-16 06:42:30');
INSERT INTO `translatables` VALUES ('290', 'contents', '263', 'title', '2020-04-16 06:42:42', '2020-04-16 06:42:42');
INSERT INTO `translatables` VALUES ('291', 'contents', '264', 'title', '2020-04-16 06:43:02', '2020-04-16 06:43:02');
INSERT INTO `translatables` VALUES ('292', 'services', '45', 'title', '2020-04-16 06:47:01', '2020-04-16 06:47:01');
INSERT INTO `translatables` VALUES ('293', 'services', '46', 'title', '2020-04-16 06:48:52', '2020-04-16 06:48:52');
INSERT INTO `translatables` VALUES ('294', 'services', '47', 'title', '2020-04-16 07:00:01', '2020-04-16 07:00:01');
INSERT INTO `translatables` VALUES ('295', 'contents', '265', 'title', '2020-04-16 07:04:39', '2020-04-16 07:04:39');
INSERT INTO `translatables` VALUES ('296', 'contents', '266', 'title', '2020-04-16 07:06:33', '2020-04-16 07:06:33');
INSERT INTO `translatables` VALUES ('297', 'contents', '267', 'title', '2020-04-16 07:07:23', '2020-04-16 07:07:23');
INSERT INTO `translatables` VALUES ('298', 'contents', '268', 'title', '2020-04-16 07:09:04', '2020-04-16 07:09:04');
INSERT INTO `translatables` VALUES ('299', 'contents', '269', 'title', '2020-04-16 07:09:55', '2020-04-16 07:09:55');
INSERT INTO `translatables` VALUES ('300', 'services', '48', 'title', '2020-04-16 07:11:57', '2020-04-16 07:11:57');
INSERT INTO `translatables` VALUES ('301', 'contents', '270', 'title', '2020-04-16 07:19:40', '2020-04-16 07:19:40');
INSERT INTO `translatables` VALUES ('302', 'contents', '270', 'content_text', '2020-04-16 07:19:40', '2020-04-16 07:19:40');
INSERT INTO `translatables` VALUES ('303', 'contents', '271', 'title', '2020-04-16 07:20:19', '2020-04-16 07:20:19');
INSERT INTO `translatables` VALUES ('304', 'contents', '271', 'content_text', '2020-04-16 07:20:19', '2020-04-16 07:20:19');
INSERT INTO `translatables` VALUES ('305', 'contents', '272', 'title', '2020-04-16 07:21:05', '2020-04-16 07:21:05');
INSERT INTO `translatables` VALUES ('306', 'contents', '272', 'content_text', '2020-04-16 07:21:05', '2020-04-16 07:21:05');
INSERT INTO `translatables` VALUES ('307', 'contents', '273', 'title', '2020-04-16 07:21:37', '2020-04-16 07:21:37');
INSERT INTO `translatables` VALUES ('308', 'contents', '273', 'content_text', '2020-04-16 07:21:37', '2020-04-16 07:21:37');
INSERT INTO `translatables` VALUES ('309', 'contents', '274', 'title', '2020-04-16 07:22:14', '2020-04-16 07:22:14');
INSERT INTO `translatables` VALUES ('310', 'contents', '274', 'content_text', '2020-04-16 07:22:14', '2020-04-16 07:22:14');
INSERT INTO `translatables` VALUES ('311', 'contents', '269', 'content_text', '2020-04-16 07:24:32', '2020-04-16 07:24:32');
INSERT INTO `translatables` VALUES ('312', 'contents', '268', 'content_text', '2020-04-16 07:25:52', '2020-04-16 07:25:52');
INSERT INTO `translatables` VALUES ('313', 'contents', '267', 'content_text', '2020-04-16 07:27:13', '2020-04-16 07:27:13');
INSERT INTO `translatables` VALUES ('314', 'contents', '266', 'content_text', '2020-04-16 07:31:28', '2020-04-16 07:31:28');
INSERT INTO `translatables` VALUES ('315', 'contents', '265', 'content_text', '2020-04-16 07:35:20', '2020-04-16 07:35:20');
INSERT INTO `translatables` VALUES ('316', 'services', '49', 'title', '2020-04-16 07:54:54', '2020-04-16 07:54:54');
INSERT INTO `translatables` VALUES ('317', 'contents', '275', 'title', '2020-04-16 07:57:28', '2020-04-16 07:57:28');
INSERT INTO `translatables` VALUES ('318', 'services', '50', 'title', '2020-04-16 08:05:29', '2020-04-16 08:05:29');
INSERT INTO `translatables` VALUES ('319', 'contents', '276', 'title', '2020-04-16 08:07:33', '2020-04-16 08:07:33');
INSERT INTO `translatables` VALUES ('320', 'contents', '276', 'content_text', '2020-04-16 08:07:33', '2020-04-16 08:07:33');
INSERT INTO `translatables` VALUES ('321', 'contents', '277', 'title', '2020-04-16 08:09:03', '2020-04-16 08:09:03');
INSERT INTO `translatables` VALUES ('322', 'contents', '277', 'content_text', '2020-04-16 08:09:03', '2020-04-16 08:09:03');
INSERT INTO `translatables` VALUES ('323', 'contents', '278', 'title', '2020-04-16 08:12:01', '2020-04-16 08:12:01');
INSERT INTO `translatables` VALUES ('324', 'contents', '278', 'content_text', '2020-04-16 08:12:01', '2020-04-16 08:12:01');
INSERT INTO `translatables` VALUES ('325', 'contents', '279', 'title', '2020-04-16 08:13:04', '2020-04-16 08:13:04');
INSERT INTO `translatables` VALUES ('326', 'contents', '279', 'content_text', '2020-04-16 08:13:04', '2020-04-16 08:13:04');
INSERT INTO `translatables` VALUES ('327', 'contents', '280', 'title', '2020-04-16 08:13:05', '2020-04-16 08:13:05');
INSERT INTO `translatables` VALUES ('328', 'contents', '280', 'content_text', '2020-04-16 08:13:05', '2020-04-16 08:13:05');
INSERT INTO `translatables` VALUES ('329', 'services', '51', 'title', '2020-04-16 08:20:09', '2020-04-16 08:20:09');
INSERT INTO `translatables` VALUES ('330', 'services', '52', 'title', '2020-04-16 08:31:51', '2020-04-16 08:31:51');
INSERT INTO `translatables` VALUES ('331', 'providers', '26', 'title', '2020-04-16 09:10:05', '2020-04-16 09:10:05');
INSERT INTO `translatables` VALUES ('332', 'services', '53', 'title', '2020-04-16 09:12:03', '2020-04-16 09:12:03');
INSERT INTO `translatables` VALUES ('333', 'services', '54', 'title', '2020-04-16 09:13:35', '2020-04-16 09:13:35');
INSERT INTO `translatables` VALUES ('336', 'services', '57', 'title', '2020-04-16 09:17:25', '2020-04-16 09:17:25');
INSERT INTO `translatables` VALUES ('337', 'contents', '281', 'title', '2020-04-16 10:06:05', '2020-04-16 10:06:05');
INSERT INTO `translatables` VALUES ('338', 'contents', '282', 'title', '2020-04-16 10:07:59', '2020-04-16 10:07:59');
INSERT INTO `translatables` VALUES ('343', 'providers', '27', 'title', '2020-04-16 10:30:09', '2020-04-16 10:30:09');
INSERT INTO `translatables` VALUES ('344', 'services', '58', 'title', '2020-04-16 10:31:49', '2020-04-16 10:31:49');
INSERT INTO `translatables` VALUES ('345', 'services', '59', 'title', '2020-04-16 10:32:25', '2020-04-16 10:32:25');
INSERT INTO `translatables` VALUES ('346', 'services', '60', 'title', '2020-04-16 10:33:03', '2020-04-16 10:33:03');
INSERT INTO `translatables` VALUES ('347', 'contents', '287', 'title', '2020-04-16 10:41:10', '2020-04-16 10:41:10');
INSERT INTO `translatables` VALUES ('348', 'contents', '288', 'title', '2020-04-16 10:42:50', '2020-04-16 10:42:50');
INSERT INTO `translatables` VALUES ('349', 'contents', '289', 'title', '2020-04-16 10:44:23', '2020-04-16 10:44:23');
INSERT INTO `translatables` VALUES ('350', 'contents', '290', 'title', '2020-04-16 10:48:06', '2020-04-16 10:48:06');
INSERT INTO `translatables` VALUES ('351', 'contents', '291', 'title', '2020-04-16 10:50:00', '2020-04-16 10:50:00');
INSERT INTO `translatables` VALUES ('352', 'contents', '292', 'title', '2020-04-16 10:52:52', '2020-04-16 10:52:52');
INSERT INTO `translatables` VALUES ('353', 'contents', '293', 'title', '2020-04-17 21:34:01', '2020-04-17 21:34:01');
INSERT INTO `translatables` VALUES ('354', 'contents', '294', 'title', '2020-04-18 07:30:07', '2020-04-18 07:30:07');
INSERT INTO `translatables` VALUES ('355', 'contents', '295', 'title', '2020-04-18 07:32:24', '2020-04-18 07:32:24');
INSERT INTO `translatables` VALUES ('358', 'contents', '298', 'title', '2020-04-18 08:58:27', '2020-04-18 08:58:27');
INSERT INTO `translatables` VALUES ('360', 'contents', '300', 'title', '2020-04-18 12:27:17', '2020-04-18 12:27:17');
INSERT INTO `translatables` VALUES ('367', 'services', '61', 'title', '2020-04-18 13:22:38', '2020-04-18 13:22:38');
INSERT INTO `translatables` VALUES ('368', 'contents', '301', 'title', '2020-04-18 13:24:31', '2020-04-18 13:24:31');
INSERT INTO `translatables` VALUES ('369', 'providers', '32', 'title', '2020-04-18 21:34:00', '2020-04-18 21:34:00');
INSERT INTO `translatables` VALUES ('370', 'services', '62', 'title', '2020-04-18 21:37:55', '2020-04-18 21:37:55');
INSERT INTO `translatables` VALUES ('371', 'contents', '302', 'title', '2020-04-18 21:38:54', '2020-04-18 21:38:54');
INSERT INTO `translatables` VALUES ('372', 'contents', '302', 'content_text', '2020-04-18 21:38:54', '2020-04-18 21:38:54');
INSERT INTO `translatables` VALUES ('373', 'providers', '28', 'title', '2020-04-18 21:42:54', '2020-04-18 21:42:54');
INSERT INTO `translatables` VALUES ('374', 'services', '63', 'title', '2020-04-21 10:37:21', '2020-04-21 10:37:21');
INSERT INTO `translatables` VALUES ('375', 'contents', '303', 'title', '2020-04-21 10:37:58', '2020-04-21 10:37:58');
INSERT INTO `translatables` VALUES ('376', 'contents', '304', 'title', '2020-04-21 11:36:29', '2020-04-21 11:36:29');
INSERT INTO `translatables` VALUES ('377', 'contents', '305', 'title', '2020-04-21 19:08:26', '2020-04-21 19:08:26');
INSERT INTO `translatables` VALUES ('378', 'contents', '306', 'title', '2020-10-27 08:41:11', '2020-10-27 08:41:11');
INSERT INTO `translatables` VALUES ('379', 'contents', '307', 'title', '2020-10-27 14:02:18', '2020-10-27 14:02:18');
INSERT INTO `translatables` VALUES ('380', 'contents', '308', 'title', '2020-11-22 13:38:11', '2020-11-22 13:38:11');
INSERT INTO `translatables` VALUES ('381', 'contents', '309', 'title', '2020-11-22 13:38:33', '2020-11-22 13:38:33');
INSERT INTO `translatables` VALUES ('382', 'providers', '33', 'title', '2020-11-30 12:33:38', '2020-11-30 12:33:38');
INSERT INTO `translatables` VALUES ('384', 'filters', '2', 'title', '2020-12-01 08:31:19', '2020-12-01 08:31:19');
INSERT INTO `translatables` VALUES ('385', 'filters', '3', 'title', '2020-12-01 11:14:37', '2020-12-01 11:14:37');

-- ----------------------------
-- Table structure for `types`
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES ('1', 'Advanced Editor', '2018-01-28 15:30:05', '2018-01-28 15:30:05');
INSERT INTO `types` VALUES ('2', 'Normal Editor', '2018-01-28 15:30:14', '2018-01-28 15:30:14');
INSERT INTO `types` VALUES ('3', 'Image', '2018-01-28 15:30:29', '2018-01-28 15:30:29');
INSERT INTO `types` VALUES ('4', 'Video', '2018-01-28 15:30:39', '2018-01-28 15:30:39');
INSERT INTO `types` VALUES ('5', 'Audio', '2018-01-28 15:30:47', '2018-01-28 15:30:47');
INSERT INTO `types` VALUES ('6', 'File Manager Uploads Extensions', '2018-01-28 15:30:57', '2018-01-28 15:30:57');
INSERT INTO `types` VALUES ('7', 'selector', '2020-03-04 19:34:33', '2020-03-04 19:34:33');
INSERT INTO `types` VALUES ('10', 'link', '2020-03-04 19:34:33', '2020-03-04 19:34:33');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'emad', 'super_admin@ivas.com', '$2y$10$TzQ40fe.6ThJZL66xOgbWeSUP7pb3xx3PMTvPG.kFTaz6IZ5dpwp2', '', '01223872695', null, '0000-00-00 00:00:00', '2020-04-11 15:59:13');
INSERT INTO `users` VALUES ('3', 'sherif', 'sherif.mohamed@ivas.com.eg', '$2y$10$TzQ40fe.6ThJZL66xOgbWeSUP7pb3xx3PMTvPG.kFTaz6IZ5dpwp2', '', null, null, '2020-04-11 15:58:20', '2020-04-11 15:58:20');

-- ----------------------------
-- Table structure for `user_has_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `user_has_permissions`;
CREATE TABLE `user_has_permissions` (
  `user_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`permission_id`),
  KEY `user_has_permissions_permission_id_foreign` (`permission_id`),
  CONSTRAINT `user_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_has_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `user_has_roles`
-- ----------------------------
DROP TABLE IF EXISTS `user_has_roles`;
CREATE TABLE `user_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`),
  KEY `user_has_roles_user_id_foreign` (`user_id`),
  CONSTRAINT `user_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_has_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_has_roles
-- ----------------------------
INSERT INTO `user_has_roles` VALUES ('1', '1');
INSERT INTO `user_has_roles` VALUES ('6', '3');
