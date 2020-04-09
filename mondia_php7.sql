/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : mondia_php7

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-04-09 20:44:52
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
INSERT INTO `audios` VALUES ('33', '20', '9', 'rbt1 en', 'uploads/audios/5e8f36f21058a.mp3', '789', '2020-04-09 14:53:38', '2020-04-09 14:53:59', null, '1');
INSERT INTO `audios` VALUES ('34', '20', '9', 'rbt2 en', 'uploads/audios/5e8f375f7e6b9.mp3', '456', '2020-04-09 14:55:27', '2020-04-09 14:55:27', null, '0');
INSERT INTO `audios` VALUES ('35', '20', '10', 'rbt3 en', 'uploads/audios/5e8f399b94720.mp3', '456', '2020-04-09 15:04:59', '2020-04-09 15:04:59', null, '1');
INSERT INTO `audios` VALUES ('36', '20', '10', 'rbt4 en', 'uploads/audios/5e8f39b444d63.mp3', '789', '2020-04-09 15:05:24', '2020-04-09 15:05:24', null, '0');

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
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = video /2 = audio /3 = image',
  PRIMARY KEY (`id`),
  KEY `service_id` (`service_id`),
  CONSTRAINT `contents_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of contents
-- ----------------------------
INSERT INTO `contents` VALUES ('70', '33', 'video 1 en', '2020-04-09 14:50:26', '2020-04-09 14:50:26', 'uploads/videos/5e8f36310016e.mp4', null, '5e8f36310063f.png', '1');

-- ----------------------------
-- Table structure for `countries`
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('2', 'egypt', '2018-05-07 10:21:24', '2018-05-07 10:21:24');
INSERT INTO `countries` VALUES ('3', 'sa', '2018-05-07 10:24:39', '2018-05-07 10:24:39');
INSERT INTO `countries` VALUES ('4', 'oman', '2020-03-26 13:12:49', '2020-03-26 13:12:49');
INSERT INTO `countries` VALUES ('5', 'emirate', '2020-03-28 13:56:46', '2020-03-28 13:56:46');

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
INSERT INTO `delete_all_flags` VALUES ('2', '118', '2020-03-30 08:33:09', '2020-03-30 08:33:09');
INSERT INTO `delete_all_flags` VALUES ('3', '132', '2020-03-30 08:33:10', '2020-03-30 08:33:10');
INSERT INTO `delete_all_flags` VALUES ('4', '99', '2020-03-30 08:33:10', '2020-03-30 08:33:10');
INSERT INTO `delete_all_flags` VALUES ('5', '111', '2020-03-30 08:33:10', '2020-03-30 08:33:10');
INSERT INTO `delete_all_flags` VALUES ('6', '85', '2020-03-30 08:33:10', '2020-03-30 08:33:10');
INSERT INTO `delete_all_flags` VALUES ('7', '91', '2020-03-30 08:33:10', '2020-03-30 08:33:10');
INSERT INTO `delete_all_flags` VALUES ('8', '105', '2020-03-30 08:33:10', '2020-03-30 08:33:10');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO `languages` VALUES ('1', 'English', '2020-03-21 22:23:01', '2020-03-21 22:23:01', 'en', '0');
INSERT INTO `languages` VALUES ('2', 'Arabic', '2020-03-21 22:23:12', '2020-03-21 22:23:12', 'ar', '1');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `operators_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of operators
-- ----------------------------
INSERT INTO `operators` VALUES ('7', 'etislat', 'uploads/operators/5c2b237670d66.jpg', '2018-12-27 13:23:45', '2019-01-01 08:23:25', '1500', '2');
INSERT INTO `operators` VALUES ('8', 'orange', 'uploads/operators/5c2b236e9e890.jpg', '2019-01-01 08:23:10', '2019-01-01 08:23:10', '9999', '2');
INSERT INTO `operators` VALUES ('9', 'omantel', 'uploads/operators/5e7caa88d6f8d.png', '2020-03-26 13:13:44', '2020-04-09 14:54:19', '9999', '4');
INSERT INTO `operators` VALUES ('10', 'du', 'uploads/operators/5e7f2d823b601.png', '2020-03-28 10:57:06', '2020-04-09 14:54:25', '5555', '5');

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
  PRIMARY KEY (`id`),
  KEY `operator_id` (`operator_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`operator_id`) REFERENCES `operators` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_operator_id_foreign1` FOREIGN KEY (`operator_id`) REFERENCES `operators` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `posts_video_id_foreign1` FOREIGN KEY (`video_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('31', '9', '70', '2020-04-09', '0', '2020-04-09 14:52:36', '2020-04-09 14:52:36');
INSERT INTO `posts` VALUES ('32', '10', '70', '2020-04-09', '0', '2020-04-09 14:52:36', '2020-04-09 14:52:36');

-- ----------------------------
-- Table structure for `providers`
-- ----------------------------
DROP TABLE IF EXISTS `providers`;
CREATE TABLE `providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of providers
-- ----------------------------
INSERT INTO `providers` VALUES ('20', 'mishari', null, '2020-04-09 14:49:24', '2020-04-09 14:49:24');

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
INSERT INTO `roles` VALUES ('6', 'admin', '2', '2018-01-08 14:40:19', '2018-01-08 14:40:19');

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
INSERT INTO `routes` VALUES ('2', 'get', 'setting/new', 'SettingController', '0000-00-00 00:00:00', '2018-02-05 13:39:21', 'create');
INSERT INTO `routes` VALUES ('3', 'post', 'setting', 'SettingController', '0000-00-00 00:00:00', '2018-02-05 13:39:21', 'store');
INSERT INTO `routes` VALUES ('4', 'get', 'dashboard', 'DashboardController', '0000-00-00 00:00:00', '2018-07-24 13:47:45', 'index');
INSERT INTO `routes` VALUES ('6', 'get', 'user_profile', 'UserController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'profile');
INSERT INTO `routes` VALUES ('7', 'post', 'user_profile/updatepassword', 'UserController', '0000-00-00 00:00:00', '2017-11-14 12:29:01', 'UpdatePassword');
INSERT INTO `routes` VALUES ('8', 'post', 'user_profile/updateprofilepic', 'UserController', '0000-00-00 00:00:00', '2017-11-14 12:29:08', 'UpdateProfilePicture');
INSERT INTO `routes` VALUES ('9', 'post', 'user_profile/updateuserdata', 'UserController', '0000-00-00 00:00:00', '2017-11-14 12:29:19', 'UpdateNameAndEmail');
INSERT INTO `routes` VALUES ('10', 'get', 'setting/{id}/delete', 'SettingController', '0000-00-00 00:00:00', '2018-02-05 13:39:22', 'destroy');
INSERT INTO `routes` VALUES ('11', 'get', 'setting/{id}/edit', 'SettingController', '0000-00-00 00:00:00', '2018-02-05 13:39:21', 'edit');
INSERT INTO `routes` VALUES ('12', 'post', 'setting/{id}', 'SettingController', '0000-00-00 00:00:00', '2020-03-24 11:17:21', 'update');
INSERT INTO `routes` VALUES ('14', 'get', 'static_translation', 'StaticTranslationController', '0000-00-00 00:00:00', '2017-11-14 12:29:57', 'index');
INSERT INTO `routes` VALUES ('21', 'get', 'file_manager', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'file_manager');
INSERT INTO `routes` VALUES ('22', 'get', 'upload_items', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'multi_upload');
INSERT INTO `routes` VALUES ('23', 'post', 'save_items', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'save_uploaded');
INSERT INTO `routes` VALUES ('24', 'get', 'upload_resize', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'upload_resize');
INSERT INTO `routes` VALUES ('25', 'post', 'save_image', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'save_image');
INSERT INTO `routes` VALUES ('26', 'post', 'static_translation/{id}/update', 'StaticTranslationController', '0000-00-00 00:00:00', '2017-11-12 12:19:46', 'update');
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
INSERT INTO `routes` VALUES ('43', 'post', 'routes/{id}/update', 'RouteController', '0000-00-00 00:00:00', '2018-01-28 09:25:29', 'update');
INSERT INTO `routes` VALUES ('44', 'get', 'routes/{id}/delete', 'RouteController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'destroy');
INSERT INTO `routes` VALUES ('45', 'get', 'routes/create', 'RouteController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'create');
INSERT INTO `routes` VALUES ('57', 'get', 'routes/index_v2', 'RouteController', '2017-11-12 13:45:15', '2017-11-12 14:04:53', 'index_v2');
INSERT INTO `routes` VALUES ('58', 'get', 'roles/{id}/view_access', 'RoleController', '2017-11-14 10:56:14', '2017-11-15 08:14:14', 'view_access');
INSERT INTO `routes` VALUES ('59', 'get', 'types/index', 'TypeController', '2018-01-28 08:25:37', '2018-01-28 08:25:37', 'index');
INSERT INTO `routes` VALUES ('60', 'get', 'types/create', 'TypeController', '2018-01-28 08:25:37', '2018-01-28 08:25:37', 'create');
INSERT INTO `routes` VALUES ('61', 'post', 'types', 'TypeController', '2018-01-28 08:25:38', '2018-01-28 08:25:38', 'store');
INSERT INTO `routes` VALUES ('62', 'get', 'types/{id}/edit', 'TypeController', '2018-01-28 08:25:38', '2018-01-28 08:25:38', 'edit');
INSERT INTO `routes` VALUES ('63', 'patch', 'types/{id}', 'TypeController', '2018-01-28 08:25:38', '2018-01-28 08:25:38', 'update');
INSERT INTO `routes` VALUES ('64', 'get', 'types/{id}/delete', 'TypeController', '2018-01-28 08:25:38', '2018-01-28 08:25:38', 'destroy');
INSERT INTO `routes` VALUES ('65', 'post', 'sortabledatatable', 'SettingController', '2018-01-28 09:22:00', '2018-01-28 09:22:00', 'updateOrder');
INSERT INTO `routes` VALUES ('66', 'get', 'buildroutes', 'RouteController', '2018-01-28 09:23:55', '2018-01-28 09:23:55', 'buildroutes');
INSERT INTO `routes` VALUES ('69', 'get', 'delete_all', 'DashboardController', '2018-02-04 12:01:23', '2018-02-04 12:01:23', 'delete_all_index');
INSERT INTO `routes` VALUES ('70', 'post', 'delete_all', 'DashboardController', '2018-02-04 12:01:23', '2018-02-04 12:01:23', 'delete_all_store');
INSERT INTO `routes` VALUES ('71', 'get', 'upload_resize_v2', 'DashboardController', '2018-02-04 13:02:56', '2018-02-04 13:02:56', 'upload_resize_v2');
INSERT INTO `routes` VALUES ('72', 'post', 'sortabledatatable', 'UserController', '2018-02-05 13:39:22', '2018-02-05 13:39:22', 'updateOrder');
INSERT INTO `routes` VALUES ('79', 'get', 'setting', 'SettingController', '2018-02-05 14:10:10', '2018-02-05 14:10:10', 'index');
INSERT INTO `routes` VALUES ('80', 'get', 'users', 'UserController', '2018-05-31 09:42:21', '2018-05-31 09:42:21', 'index');
INSERT INTO `routes` VALUES ('81', 'get', 'users/new', 'UserController', '2018-05-31 09:42:21', '2018-05-31 09:42:21', 'create');
INSERT INTO `routes` VALUES ('82', 'post', 'users', 'UserController', '2018-05-31 09:42:21', '2018-05-31 09:42:21', 'store');
INSERT INTO `routes` VALUES ('83', 'get', 'users/{id}/edit', 'UserController', '2018-05-31 09:42:21', '2018-05-31 09:42:21', 'edit');
INSERT INTO `routes` VALUES ('84', 'post', 'users/{id}/update', 'UserController', '2018-05-31 09:42:21', '2018-05-31 09:42:21', 'update');
INSERT INTO `routes` VALUES ('85', 'get', 'providers', 'ProvidersController', '2018-12-18 09:43:08', '2018-12-18 09:43:08', 'index');
INSERT INTO `routes` VALUES ('86', 'get', 'providers/create', 'ProvidersController', '2018-12-18 09:43:08', '2018-12-18 09:43:08', 'create');
INSERT INTO `routes` VALUES ('87', 'post', 'providers', 'ProvidersController', '2018-12-18 09:43:08', '2018-12-18 09:43:08', 'store');
INSERT INTO `routes` VALUES ('88', 'get', 'providers/{id}/edit', 'ProvidersController', '2018-12-18 09:43:08', '2018-12-18 09:43:08', 'edit');
INSERT INTO `routes` VALUES ('89', 'patch', 'providers/{id}', 'ProvidersController', '2018-12-18 09:43:08', '2018-12-18 09:43:08', 'update');
INSERT INTO `routes` VALUES ('90', 'get', 'providers/{id}/delete', 'ProvidersController', '2018-12-18 09:43:08', '2018-12-18 09:43:08', 'destroy');
INSERT INTO `routes` VALUES ('91', 'get', 'services', 'ServicesController', '2018-12-18 10:49:59', '2018-12-18 10:49:59', 'index');
INSERT INTO `routes` VALUES ('92', 'get', 'services/create', 'ServicesController', '2018-12-18 10:49:59', '2018-12-18 10:49:59', 'create');
INSERT INTO `routes` VALUES ('93', 'post', 'services', 'ServicesController', '2018-12-18 10:49:59', '2018-12-18 10:49:59', 'store');
INSERT INTO `routes` VALUES ('94', 'get', 'services/{id}/edit', 'ServicesController', '2018-12-18 10:49:59', '2018-12-18 10:49:59', 'edit');
INSERT INTO `routes` VALUES ('95', 'patch', 'services/{id}', 'ServicesController', '2018-12-18 10:49:59', '2018-12-18 10:49:59', 'update');
INSERT INTO `routes` VALUES ('96', 'get', 'services/{id}/delete', 'ServicesController', '2018-12-18 10:49:59', '2018-12-18 10:49:59', 'destroy');
INSERT INTO `routes` VALUES ('97', 'get', 'services/{id}/videos', 'ServicesController', '2018-12-18 10:49:59', '2018-12-18 10:49:59', 'videos');
INSERT INTO `routes` VALUES ('98', 'get', 'providers/{id}/services', 'ProvidersController', '2018-12-18 10:50:35', '2018-12-18 10:50:35', 'services');
INSERT INTO `routes` VALUES ('99', 'get', 'operators', 'OperatorsController', '2018-12-18 11:28:07', '2018-12-18 11:28:07', 'index');
INSERT INTO `routes` VALUES ('100', 'get', 'operators/create', 'OperatorsController', '2018-12-18 11:28:08', '2018-12-18 11:28:08', 'create');
INSERT INTO `routes` VALUES ('101', 'post', 'operators', 'OperatorsController', '2018-12-18 11:28:08', '2018-12-18 11:28:08', 'store');
INSERT INTO `routes` VALUES ('102', 'get', 'operators/{id}/edit', 'OperatorsController', '2018-12-18 11:28:08', '2018-12-18 11:28:08', 'edit');
INSERT INTO `routes` VALUES ('103', 'patch', 'operators/{id}', 'OperatorsController', '2018-12-18 11:28:08', '2018-12-18 11:28:08', 'update');
INSERT INTO `routes` VALUES ('104', 'get', 'operators/{id}/delete', 'OperatorsController', '2018-12-18 11:28:08', '2018-12-18 11:28:08', 'destroy');
INSERT INTO `routes` VALUES ('105', 'get', 'videos', 'VideosController', '2018-12-18 13:41:38', '2018-12-18 13:41:38', 'index');
INSERT INTO `routes` VALUES ('106', 'get', 'videos/create', 'VideosController', '2018-12-18 13:41:38', '2018-12-18 13:41:38', 'create');
INSERT INTO `routes` VALUES ('107', 'post', 'videos', 'VideosController', '2018-12-18 13:41:38', '2018-12-18 13:41:38', 'store');
INSERT INTO `routes` VALUES ('108', 'get', 'videos/{id}/edit', 'VideosController', '2018-12-18 13:41:38', '2018-12-18 13:41:38', 'edit');
INSERT INTO `routes` VALUES ('109', 'patch', 'videos/{id}', 'VideosController', '2018-12-18 13:41:38', '2018-12-18 13:41:38', 'update');
INSERT INTO `routes` VALUES ('110', 'get', 'videos/{id}/delete', 'VideosController', '2018-12-18 13:41:38', '2018-12-18 13:41:38', 'destroy');
INSERT INTO `routes` VALUES ('111', 'get', 'posts', 'PostsController', '2018-12-18 14:25:53', '2018-12-18 14:25:53', 'index');
INSERT INTO `routes` VALUES ('112', 'get', 'posts/create', 'PostsController', '2018-12-18 14:25:53', '2018-12-18 14:40:50', 'create');
INSERT INTO `routes` VALUES ('113', 'post', 'posts', 'PostsController', '2018-12-18 14:25:53', '2018-12-18 14:25:53', 'store');
INSERT INTO `routes` VALUES ('114', 'get', 'posts/{id}/edit', 'PostsController', '2018-12-18 14:25:53', '2018-12-18 14:25:53', 'edit');
INSERT INTO `routes` VALUES ('115', 'patch', 'posts/{id}', 'PostsController', '2018-12-18 14:25:53', '2018-12-18 14:25:53', 'update');
INSERT INTO `routes` VALUES ('116', 'get', 'posts/{id}/delete', 'PostsController', '2018-12-18 14:25:53', '2018-12-18 14:25:53', 'destroy');
INSERT INTO `routes` VALUES ('117', 'get', 'videos/{id}/posts', 'VideosController', '2018-12-18 14:45:29', '2018-12-18 14:45:29', 'posts');
INSERT INTO `routes` VALUES ('118', 'get', 'audios', 'AudiosController', '2018-12-24 13:38:48', '2018-12-24 13:38:48', 'index');
INSERT INTO `routes` VALUES ('119', 'get', 'audios/create', 'AudiosController', '2018-12-24 13:38:48', '2018-12-24 13:38:48', 'create');
INSERT INTO `routes` VALUES ('120', 'post', 'audios', 'AudiosController', '2018-12-24 13:38:48', '2018-12-24 13:38:48', 'store');
INSERT INTO `routes` VALUES ('121', 'get', 'audios/{id}/edit', 'AudiosController', '2018-12-24 13:38:48', '2018-12-24 13:38:48', 'edit');
INSERT INTO `routes` VALUES ('122', 'patch', 'audios/{id}', 'AudiosController', '2018-12-24 13:38:48', '2018-12-24 13:38:48', 'update');
INSERT INTO `routes` VALUES ('123', 'get', 'audios/{id}/delete', 'AudiosController', '2018-12-24 13:38:48', '2018-12-24 13:38:48', 'destroy');
INSERT INTO `routes` VALUES ('124', 'get', 'videos/{id}/audios', 'VideosController', '2018-12-27 09:43:49', '2018-12-27 09:43:49', 'audios');
INSERT INTO `routes` VALUES ('125', 'get', 'providers/{id}/audios', 'ProvidersController', '2018-12-27 09:44:26', '2018-12-27 09:44:26', 'audios');
INSERT INTO `routes` VALUES ('126', 'get', 'countries', 'CountryController', '2018-12-27 13:52:47', '2018-12-27 13:52:47', 'index');
INSERT INTO `routes` VALUES ('127', 'get', 'countries/create', 'CountryController', '2018-12-27 13:52:47', '2018-12-27 13:52:47', 'create');
INSERT INTO `routes` VALUES ('128', 'post', 'countries', 'CountryController', '2018-12-27 13:52:47', '2018-12-27 13:52:47', 'store');
INSERT INTO `routes` VALUES ('129', 'get', 'countries/{id}/edit', 'CountryController', '2018-12-27 13:52:47', '2018-12-27 13:52:47', 'edit');
INSERT INTO `routes` VALUES ('130', 'patch', 'countries/{id}', 'CountryController', '2018-12-27 13:52:47', '2018-12-27 13:52:47', 'update');
INSERT INTO `routes` VALUES ('131', 'get', 'countries/{id}/delete', 'CountryController', '2018-12-27 13:52:47', '2018-12-27 13:52:47', 'destroy');
INSERT INTO `routes` VALUES ('132', 'get', 'listazan', 'ListAzanController', '2020-03-25 10:46:07', '2020-03-25 10:46:07', 'index');
INSERT INTO `routes` VALUES ('133', 'get', 'users/{id}/delete', 'UserController', '2020-04-09 19:26:57', '2020-04-09 19:26:59', 'destroy');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = video /2 = audio /3 = image',
  PRIMARY KEY (`id`),
  KEY `provider_id` (`provider_id`),
  CONSTRAINT `services_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `services_provider_id_foreign1` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of services
-- ----------------------------
INSERT INTO `services` VALUES ('33', '20', 'Quarn', 'uploads/services/5e8f360ce606f.png', '2020-04-09 14:49:48', '2020-04-09 14:49:48', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('25', 'uploadAllow', 'all', '2018-02-04 10:04:09', '2018-02-04 10:04:09', '6', '0');
INSERT INTO `settings` VALUES ('26', 'facebook', 'http://www.facebook.com/iVASEgypt', '2018-12-19 07:19:19', '2018-12-19 07:19:19', '2', '0');
INSERT INTO `settings` VALUES ('27', 'twitter', 'http://www.twitter.com/iVASEgypt', '2018-12-19 07:25:26', '2018-12-19 07:25:26', '2', '0');
INSERT INTO `settings` VALUES ('28', 'instagram', 'http://www.instagram.com/iVASEgypt', '2018-12-19 07:25:43', '2018-12-19 07:25:43', '2', '0');
INSERT INTO `settings` VALUES ('29', 'soundcloud', 'http://www.soundcloud.com/iVASEgypt', '2018-12-19 07:26:12', '2018-12-19 07:26:12', '2', '0');
INSERT INTO `settings` VALUES ('30', 'youtube', 'https://www.youtube.com/channel/UCoaSZFW4h6xITQVJJ__ZY3g?sub_confirmation=1', '2018-12-19 07:26:29', '2018-12-19 07:26:29', '2', '0');
INSERT INTO `settings` VALUES ('31', 'linkedin', 'http://www.linkedin.com/company-beta/3354483', '2018-12-19 07:26:44', '2018-12-19 07:26:44', '2', '0');
INSERT INTO `settings` VALUES ('64', 'home_page_logo', 'uploads/settings_images/5e5cf927166e1.png', '2019-12-31 10:50:04', '2019-12-31 08:54:06', '3', '0');
INSERT INTO `settings` VALUES ('65', 'header_logo', 'uploads/settings_images/5e5cf94047ffc.png', '2019-12-31 10:50:04', '2019-12-31 08:54:06', '3', '0');
INSERT INTO `settings` VALUES ('66', 'loading_image', 'uploads/settings_images/5e5cf954396bd.png', '2019-12-31 10:50:04', '2019-12-31 08:54:06', '3', '0');
INSERT INTO `settings` VALUES ('67', 'title_page', 'My World', '2019-12-31 10:50:04', '2020-04-02 04:45:25', '2', '0');
INSERT INTO `settings` VALUES ('68', 'fav_icon', 'uploads/settings_images/5e5cf9743fb3e.png', '2019-12-31 10:50:04', '2019-12-31 08:54:06', '3', '0');
INSERT INTO `settings` VALUES ('69', 'copy_rights', 'Copyright © 2020 islamic services Powered by DIGIZONE', '2019-12-31 10:50:04', '2019-12-31 08:54:06', '2', '0');
INSERT INTO `settings` VALUES ('70', 'title_menu', 'دو الخير', '2019-12-31 10:50:04', '2019-12-31 08:54:06', '3', '0');
INSERT INTO `settings` VALUES ('71', 'enable_testing', '1', '2020-03-03 12:42:27', '2020-03-03 12:42:27', '7', '0');
INSERT INTO `settings` VALUES ('72', 'enable_social', '1', '2020-03-03 12:42:27', '2020-03-03 12:42:27', '7', '0');
INSERT INTO `settings` VALUES ('73', 'pageLength', '6', '2020-03-03 12:42:27', '2020-03-24 11:18:43', '2', '0');
INSERT INTO `settings` VALUES ('74', 'facebook', 'http://www.facebook.com/iVASEgypt', '2018-12-19 07:19:19', '2018-12-19 07:19:19', '10', '0');
INSERT INTO `settings` VALUES ('75', 'twitter', 'http://www.twitter.com/iVASEgypt', '2018-12-19 07:19:19', '2018-12-19 07:19:19', '10', '0');
INSERT INTO `settings` VALUES ('76', 'instagram', 'http://www.instagram.com/iVASEgypt', '2018-12-19 07:19:19', '2018-12-19 07:19:19', '10', '0');
INSERT INTO `settings` VALUES ('77', 'soundcloud', 'http://www.soundcloud.com/iVASEgypt', '2018-12-19 07:19:19', '2018-12-19 07:19:19', '10', '0');
INSERT INTO `settings` VALUES ('78', 'youtube', 'https://www.youtube.com/channel/UCoaSZFW4h6xITQVJJ__ZY3g?sub_confirmation=1', '2018-12-19 07:19:19', '2018-12-19 07:19:19', '10', '0');
INSERT INTO `settings` VALUES ('79', 'linkedin', 'http://www.linkedin.com/company-beta/3354483', '2018-12-19 07:19:19', '2018-12-19 07:19:19', '10', '0');
INSERT INTO `settings` VALUES ('80', 'view_coming_post', '1', '2020-04-02 09:16:34', '2020-04-02 09:16:34', '7', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tans_bodies
-- ----------------------------
INSERT INTO `tans_bodies` VALUES ('14', '2', '33', 'قران', '2020-03-30 08:39:32', '2020-03-30 08:39:32');
INSERT INTO `tans_bodies` VALUES ('15', '2', '34', 'تفسير 1', '2020-03-30 08:41:08', '2020-03-30 08:41:08');
INSERT INTO `tans_bodies` VALUES ('16', '2', '35', 'تفسير 2', '2020-03-30 08:41:50', '2020-03-30 08:41:50');
INSERT INTO `tans_bodies` VALUES ('17', '2', '36', 'تفسير 3', '2020-03-30 08:42:15', '2020-03-30 08:42:15');
INSERT INTO `tans_bodies` VALUES ('18', '2', '37', 'تفسير 4', '2020-03-30 08:42:59', '2020-03-30 08:43:17');
INSERT INTO `tans_bodies` VALUES ('19', '2', '38', 'رسائل1', '2020-03-30 08:44:48', '2020-03-30 08:44:48');
INSERT INTO `tans_bodies` VALUES ('20', '2', '39', 'ان ربنا هو الخالق نحبه ليس من اجل شى فقط لانه هو الله', '2020-03-30 08:44:48', '2020-03-30 08:44:48');
INSERT INTO `tans_bodies` VALUES ('21', '2', '40', 'رسائل2', '2020-03-30 08:46:26', '2020-03-30 08:46:26');
INSERT INTO `tans_bodies` VALUES ('22', '2', '41', 'ساعد الفقراء الذين يحتجون الى الطعام والماء', '2020-03-30 08:46:26', '2020-03-30 08:46:26');
INSERT INTO `tans_bodies` VALUES ('23', '2', '42', 'قران 1', '2020-03-30 08:47:22', '2020-03-30 08:47:22');
INSERT INTO `tans_bodies` VALUES ('24', '2', '43', 'قران 2', '2020-03-30 08:47:50', '2020-03-30 08:47:50');
INSERT INTO `tans_bodies` VALUES ('25', '2', '44', 'قران 3', '2020-03-30 08:48:26', '2020-03-30 08:48:26');
INSERT INTO `tans_bodies` VALUES ('26', '2', '45', 'قران 4', '2020-03-30 08:49:06', '2020-03-30 08:49:06');
INSERT INTO `tans_bodies` VALUES ('27', '2', '46', 'تفسير 1', '2020-03-30 08:55:40', '2020-03-30 08:55:40');
INSERT INTO `tans_bodies` VALUES ('28', '2', '47', 'تفسير 2', '2020-03-30 08:56:15', '2020-03-30 08:56:15');
INSERT INTO `tans_bodies` VALUES ('29', '2', '48', 'قران', '2020-03-30 08:56:53', '2020-03-30 08:56:53');
INSERT INTO `tans_bodies` VALUES ('30', '2', '49', 'قران 2', '2020-03-30 08:57:29', '2020-03-30 08:57:29');
INSERT INTO `tans_bodies` VALUES ('31', '2', '50', 'تفسير 4', '2020-03-30 08:57:59', '2020-03-30 08:57:59');
INSERT INTO `tans_bodies` VALUES ('32', '2', '51', 'قران 4', '2020-03-30 08:58:45', '2020-03-30 08:58:45');
INSERT INTO `tans_bodies` VALUES ('33', '2', '52', 'تواشيح', '2020-03-30 09:01:52', '2020-03-30 09:01:52');
INSERT INTO `tans_bodies` VALUES ('34', '2', '53', 'خواطر ايمانية', '2020-03-30 09:03:39', '2020-03-30 09:03:39');
INSERT INTO `tans_bodies` VALUES ('36', '2', '55', 'خدمة', '2020-04-01 13:37:34', '2020-04-01 13:37:34');
INSERT INTO `tans_bodies` VALUES ('37', '2', '56', 'content_video_ar_1', '2020-04-01 13:38:11', '2020-04-03 12:56:34');
INSERT INTO `tans_bodies` VALUES ('38', '2', '57', 'service2_audio_ar', '2020-04-02 06:30:59', '2020-04-02 06:30:59');
INSERT INTO `tans_bodies` VALUES ('39', '2', '58', 'content_audio_1_ar', '2020-04-02 06:31:25', '2020-04-02 06:31:25');
INSERT INTO `tans_bodies` VALUES ('40', '2', '59', 'content2_audio_ar', '2020-04-02 06:48:01', '2020-04-02 06:48:01');
INSERT INTO `tans_bodies` VALUES ('41', '2', '60', 'service3_image_ar', '2020-04-02 09:14:19', '2020-04-02 09:14:19');
INSERT INTO `tans_bodies` VALUES ('42', '2', '61', 'content_image_ar_1', '2020-04-02 09:14:42', '2020-04-02 09:14:42');
INSERT INTO `tans_bodies` VALUES ('43', '2', '62', 'servuice_image_ar_2', '2020-04-02 10:02:27', '2020-04-02 10:02:27');
INSERT INTO `tans_bodies` VALUES ('44', '2', '63', 'text_service_ar', '2020-04-03 12:57:48', '2020-04-03 12:58:24');
INSERT INTO `tans_bodies` VALUES ('45', '2', '64', 'content_text_title_ar', '2020-04-03 12:59:16', '2020-04-03 12:59:16');
INSERT INTO `tans_bodies` VALUES ('46', '2', '65', 'content_text_desc_ar', '2020-04-03 12:59:16', '2020-04-03 12:59:16');
INSERT INTO `tans_bodies` VALUES ('47', '2', '66', 'call_tone1_ar', '2020-04-03 15:56:57', '2020-04-03 15:59:01');
INSERT INTO `tans_bodies` VALUES ('48', '2', '67', 'call_tone_2_ar', '2020-04-03 15:58:04', '2020-04-03 15:58:04');
INSERT INTO `tans_bodies` VALUES ('49', '2', '68', 'call_du_1_ar', '2020-04-03 16:05:19', '2020-04-03 16:05:19');
INSERT INTO `tans_bodies` VALUES ('50', '2', '69', 'call_tone2_du_ar', '2020-04-03 16:07:57', '2020-04-03 16:07:57');
INSERT INTO `tans_bodies` VALUES ('52', '2', '71', 'emad_rbt_ar', '2020-04-08 11:36:18', '2020-04-08 12:06:36');
INSERT INTO `tans_bodies` VALUES ('53', '2', '72', 'emad_service_ar', '2020-04-08 11:40:47', '2020-04-08 11:40:47');
INSERT INTO `tans_bodies` VALUES ('54', '2', '73', 'emad_content_ar', '2020-04-08 11:50:27', '2020-04-08 11:50:27');
INSERT INTO `tans_bodies` VALUES ('56', '2', '75', 'مشاري', '2020-04-09 14:49:25', '2020-04-09 14:49:25');
INSERT INTO `tans_bodies` VALUES ('57', '2', '76', 'Quarn', '2020-04-09 14:49:49', '2020-04-09 14:49:49');
INSERT INTO `tans_bodies` VALUES ('58', '2', '77', 'video 1 ar', '2020-04-09 14:50:27', '2020-04-09 14:50:27');
INSERT INTO `tans_bodies` VALUES ('59', '2', '78', 'rbt 1 ar', '2020-04-09 14:53:38', '2020-04-09 14:53:38');
INSERT INTO `tans_bodies` VALUES ('60', '2', '79', 'rbt2 ar', '2020-04-09 14:55:27', '2020-04-09 14:55:27');
INSERT INTO `tans_bodies` VALUES ('61', '2', '80', 'rbt3 ar', '2020-04-09 15:04:59', '2020-04-09 15:04:59');
INSERT INTO `tans_bodies` VALUES ('62', '2', '81', 'rbt4 ar', '2020-04-09 15:05:24', '2020-04-09 15:05:24');

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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of translatables
-- ----------------------------
INSERT INTO `translatables` VALUES ('33', 'services', '25', 'title', '2020-03-30 08:39:32', '2020-03-30 08:39:32');
INSERT INTO `translatables` VALUES ('34', 'contents', '53', 'title', '2020-03-30 08:41:08', '2020-03-30 08:41:08');
INSERT INTO `translatables` VALUES ('35', 'contents', '54', 'title', '2020-03-30 08:41:50', '2020-03-30 08:41:50');
INSERT INTO `translatables` VALUES ('36', 'contents', '55', 'title', '2020-03-30 08:42:15', '2020-03-30 08:42:15');
INSERT INTO `translatables` VALUES ('37', 'contents', '56', 'title', '2020-03-30 08:42:59', '2020-03-30 08:42:59');
INSERT INTO `translatables` VALUES ('38', 'contents', '57', 'title', '2020-03-30 08:44:48', '2020-03-30 08:44:48');
INSERT INTO `translatables` VALUES ('39', 'contents', '57', 'content_text', '2020-03-30 08:44:48', '2020-03-30 08:44:48');
INSERT INTO `translatables` VALUES ('40', 'contents', '58', 'title', '2020-03-30 08:46:26', '2020-03-30 08:46:26');
INSERT INTO `translatables` VALUES ('41', 'contents', '58', 'content_text', '2020-03-30 08:46:26', '2020-03-30 08:46:26');
INSERT INTO `translatables` VALUES ('42', 'contents', '59', 'title', '2020-03-30 08:47:22', '2020-03-30 08:47:22');
INSERT INTO `translatables` VALUES ('43', 'contents', '60', 'title', '2020-03-30 08:47:50', '2020-03-30 08:47:50');
INSERT INTO `translatables` VALUES ('44', 'contents', '61', 'title', '2020-03-30 08:48:25', '2020-03-30 08:48:25');
INSERT INTO `translatables` VALUES ('45', 'contents', '62', 'title', '2020-03-30 08:49:06', '2020-03-30 08:49:06');
INSERT INTO `translatables` VALUES ('46', 'audios', '22', 'title', '2020-03-30 08:55:40', '2020-03-30 08:55:40');
INSERT INTO `translatables` VALUES ('47', 'audios', '23', 'title', '2020-03-30 08:56:15', '2020-03-30 08:56:15');
INSERT INTO `translatables` VALUES ('48', 'audios', '24', 'title', '2020-03-30 08:56:53', '2020-03-30 08:56:53');
INSERT INTO `translatables` VALUES ('49', 'audios', '25', 'title', '2020-03-30 08:57:29', '2020-03-30 08:57:29');
INSERT INTO `translatables` VALUES ('50', 'audios', '26', 'title', '2020-03-30 08:57:59', '2020-03-30 08:57:59');
INSERT INTO `translatables` VALUES ('51', 'audios', '27', 'title', '2020-03-30 08:58:45', '2020-03-30 08:58:45');
INSERT INTO `translatables` VALUES ('52', 'services', '26', 'title', '2020-03-30 09:01:51', '2020-03-30 09:01:51');
INSERT INTO `translatables` VALUES ('53', 'services', '27', 'title', '2020-03-30 09:03:39', '2020-03-30 09:03:39');
INSERT INTO `translatables` VALUES ('55', 'services', '28', 'title', '2020-04-01 13:37:34', '2020-04-01 13:37:34');
INSERT INTO `translatables` VALUES ('56', 'contents', '63', 'title', '2020-04-01 13:38:11', '2020-04-01 13:38:11');
INSERT INTO `translatables` VALUES ('57', 'services', '29', 'title', '2020-04-02 06:30:59', '2020-04-02 06:30:59');
INSERT INTO `translatables` VALUES ('58', 'contents', '64', 'title', '2020-04-02 06:31:24', '2020-04-02 06:31:24');
INSERT INTO `translatables` VALUES ('59', 'contents', '65', 'title', '2020-04-02 06:48:01', '2020-04-02 06:48:01');
INSERT INTO `translatables` VALUES ('60', 'services', '30', 'title', '2020-04-02 09:14:19', '2020-04-02 09:14:19');
INSERT INTO `translatables` VALUES ('61', 'contents', '66', 'title', '2020-04-02 09:14:42', '2020-04-02 09:14:42');
INSERT INTO `translatables` VALUES ('62', 'contents', '67', 'title', '2020-04-02 10:02:27', '2020-04-02 10:02:27');
INSERT INTO `translatables` VALUES ('63', 'services', '31', 'title', '2020-04-03 12:57:48', '2020-04-03 12:57:48');
INSERT INTO `translatables` VALUES ('64', 'contents', '68', 'title', '2020-04-03 12:59:15', '2020-04-03 12:59:15');
INSERT INTO `translatables` VALUES ('65', 'contents', '68', 'content_text', '2020-04-03 12:59:16', '2020-04-03 12:59:16');
INSERT INTO `translatables` VALUES ('66', 'audios', '28', 'title', '2020-04-03 15:56:57', '2020-04-03 15:56:57');
INSERT INTO `translatables` VALUES ('67', 'audios', '29', 'title', '2020-04-03 15:58:03', '2020-04-03 15:58:03');
INSERT INTO `translatables` VALUES ('68', 'audios', '30', 'title', '2020-04-03 16:05:19', '2020-04-03 16:05:19');
INSERT INTO `translatables` VALUES ('69', 'audios', '31', 'title', '2020-04-03 16:07:57', '2020-04-03 16:07:57');
INSERT INTO `translatables` VALUES ('71', 'audios', '32', 'title', '2020-04-08 11:36:18', '2020-04-08 11:36:18');
INSERT INTO `translatables` VALUES ('72', 'services', '32', 'title', '2020-04-08 11:40:47', '2020-04-08 11:40:47');
INSERT INTO `translatables` VALUES ('73', 'contents', '69', 'title', '2020-04-08 11:50:26', '2020-04-08 11:50:26');
INSERT INTO `translatables` VALUES ('75', 'providers', '20', 'title', '2020-04-09 14:49:24', '2020-04-09 14:49:24');
INSERT INTO `translatables` VALUES ('76', 'services', '33', 'title', '2020-04-09 14:49:49', '2020-04-09 14:49:49');
INSERT INTO `translatables` VALUES ('77', 'contents', '70', 'title', '2020-04-09 14:50:27', '2020-04-09 14:50:27');
INSERT INTO `translatables` VALUES ('78', 'audios', '33', 'title', '2020-04-09 14:53:38', '2020-04-09 14:53:38');
INSERT INTO `translatables` VALUES ('79', 'audios', '34', 'title', '2020-04-09 14:55:27', '2020-04-09 14:55:27');
INSERT INTO `translatables` VALUES ('80', 'audios', '35', 'title', '2020-04-09 15:04:59', '2020-04-09 15:04:59');
INSERT INTO `translatables` VALUES ('81', 'audios', '36', 'title', '2020-04-09 15:05:24', '2020-04-09 15:05:24');

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
INSERT INTO `types` VALUES ('1', 'Advanced Editor', '2018-01-28 08:30:05', '2018-01-28 08:30:05');
INSERT INTO `types` VALUES ('2', 'Normal Editor', '2018-01-28 08:30:14', '2018-01-28 08:30:14');
INSERT INTO `types` VALUES ('3', 'Image', '2018-01-28 08:30:29', '2018-01-28 08:30:29');
INSERT INTO `types` VALUES ('4', 'Video', '2018-01-28 08:30:39', '2018-01-28 08:30:39');
INSERT INTO `types` VALUES ('5', 'Audio', '2018-01-28 08:30:47', '2018-01-28 08:30:47');
INSERT INTO `types` VALUES ('6', 'File Manager Uploads Extensions', '2018-01-28 08:30:57', '2018-01-28 08:30:57');
INSERT INTO `types` VALUES ('7', 'selector', '2020-03-04 12:34:33', '2020-03-04 12:34:33');
INSERT INTO `types` VALUES ('10', 'link', '2020-03-04 12:34:33', '2020-03-04 12:34:33');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'super admin', 'super_admin@ivas.com', '$2y$10$u2evAW530miwgUb2jcXkTuqIGswxnSQ3DSmX1Ji5rtO3Tx.MtVcX2', '', '01234567890', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
