-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2023 at 08:51 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karaoke-online-demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(11, 'plugin::upload.read', NULL, '{}', '[]', '2023-01-09 22:22:42.524000', '2023-01-09 22:22:42.524000', NULL, NULL),
(12, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-01-09 22:22:42.535000', '2023-01-09 22:22:42.535000', NULL, NULL),
(13, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-01-09 22:22:42.546000', '2023-01-09 22:22:42.546000', NULL, NULL),
(14, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-01-09 22:22:42.556000', '2023-01-09 22:22:42.556000', NULL, NULL),
(15, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-01-09 22:22:42.568000', '2023-01-09 22:22:42.568000', NULL, NULL),
(24, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2023-01-09 22:22:42.656000', '2023-01-09 22:22:42.656000', NULL, NULL),
(25, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-01-09 22:22:42.666000', '2023-01-09 22:22:42.666000', NULL, NULL),
(26, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2023-01-09 22:22:42.674000', '2023-01-09 22:22:42.674000', NULL, NULL),
(27, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-01-09 22:22:42.684000', '2023-01-09 22:22:42.684000', NULL, NULL),
(28, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-01-09 22:22:42.691000', '2023-01-09 22:22:42.691000', NULL, NULL),
(40, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2023-01-09 22:22:42.829000', '2023-01-09 22:22:42.829000', NULL, NULL),
(43, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2023-01-09 22:22:42.853000', '2023-01-09 22:22:42.853000', NULL, NULL),
(44, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2023-01-09 22:22:42.862000', '2023-01-09 22:22:42.862000', NULL, NULL),
(45, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2023-01-09 22:22:42.880000', '2023-01-09 22:22:42.880000', NULL, NULL),
(46, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2023-01-09 22:22:42.892000', '2023-01-09 22:22:42.892000', NULL, NULL),
(47, 'plugin::email.settings.read', NULL, '{}', '[]', '2023-01-09 22:22:42.904000', '2023-01-09 22:22:42.904000', NULL, NULL),
(48, 'plugin::upload.read', NULL, '{}', '[]', '2023-01-09 22:22:42.914000', '2023-01-09 22:22:42.914000', NULL, NULL),
(49, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-01-09 22:22:42.925000', '2023-01-09 22:22:42.925000', NULL, NULL),
(50, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-01-09 22:22:42.935000', '2023-01-09 22:22:42.935000', NULL, NULL),
(51, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-01-09 22:22:42.944000', '2023-01-09 22:22:42.944000', NULL, NULL),
(52, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-01-09 22:22:42.954000', '2023-01-09 22:22:42.954000', NULL, NULL),
(53, 'plugin::upload.settings.read', NULL, '{}', '[]', '2023-01-09 22:22:42.963000', '2023-01-09 22:22:42.963000', NULL, NULL),
(54, 'plugin::documentation.read', NULL, '{}', '[]', '2023-01-09 22:22:42.972000', '2023-01-09 22:22:42.972000', NULL, NULL),
(55, 'plugin::documentation.settings.update', NULL, '{}', '[]', '2023-01-09 22:22:42.982000', '2023-01-09 22:22:42.982000', NULL, NULL),
(56, 'plugin::documentation.settings.regenerate', NULL, '{}', '[]', '2023-01-09 22:22:42.991000', '2023-01-09 22:22:42.991000', NULL, NULL),
(57, 'plugin::documentation.settings.read', NULL, '{}', '[]', '2023-01-09 22:22:43.000000', '2023-01-09 22:22:43.000000', NULL, NULL),
(58, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2023-01-09 22:22:43.008000', '2023-01-09 22:22:43.008000', NULL, NULL),
(59, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2023-01-09 22:22:43.018000', '2023-01-09 22:22:43.018000', NULL, NULL),
(60, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2023-01-09 22:22:43.027000', '2023-01-09 22:22:43.027000', NULL, NULL),
(61, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2023-01-09 22:22:43.039000', '2023-01-09 22:22:43.039000', NULL, NULL),
(62, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2023-01-09 22:22:43.049000', '2023-01-09 22:22:43.049000', NULL, NULL),
(63, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2023-01-09 22:22:43.058000', '2023-01-09 22:22:43.058000', NULL, NULL),
(64, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2023-01-09 22:22:43.067000', '2023-01-09 22:22:43.067000', NULL, NULL),
(65, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2023-01-09 22:22:43.076000', '2023-01-09 22:22:43.076000', NULL, NULL),
(66, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2023-01-09 22:22:43.084000', '2023-01-09 22:22:43.084000', NULL, NULL),
(67, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2023-01-09 22:22:43.094000', '2023-01-09 22:22:43.094000', NULL, NULL),
(68, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2023-01-09 22:22:43.103000', '2023-01-09 22:22:43.103000', NULL, NULL),
(69, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2023-01-09 22:22:43.113000', '2023-01-09 22:22:43.113000', NULL, NULL),
(70, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2023-01-09 22:22:43.122000', '2023-01-09 22:22:43.122000', NULL, NULL),
(71, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2023-01-09 22:22:43.132000', '2023-01-09 22:22:43.132000', NULL, NULL),
(72, 'admin::marketplace.read', NULL, '{}', '[]', '2023-01-09 22:22:43.141000', '2023-01-09 22:22:43.141000', NULL, NULL),
(73, 'admin::marketplace.plugins.install', NULL, '{}', '[]', '2023-01-09 22:22:43.154000', '2023-01-09 22:22:43.154000', NULL, NULL),
(74, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', '2023-01-09 22:22:43.163000', '2023-01-09 22:22:43.163000', NULL, NULL),
(75, 'admin::webhooks.create', NULL, '{}', '[]', '2023-01-09 22:22:43.173000', '2023-01-09 22:22:43.173000', NULL, NULL),
(76, 'admin::webhooks.read', NULL, '{}', '[]', '2023-01-09 22:22:43.182000', '2023-01-09 22:22:43.182000', NULL, NULL),
(77, 'admin::webhooks.update', NULL, '{}', '[]', '2023-01-09 22:22:43.191000', '2023-01-09 22:22:43.191000', NULL, NULL),
(78, 'admin::webhooks.delete', NULL, '{}', '[]', '2023-01-09 22:22:43.200000', '2023-01-09 22:22:43.200000', NULL, NULL),
(79, 'admin::users.create', NULL, '{}', '[]', '2023-01-09 22:22:43.209000', '2023-01-09 22:22:43.209000', NULL, NULL),
(80, 'admin::users.read', NULL, '{}', '[]', '2023-01-09 22:22:43.218000', '2023-01-09 22:22:43.218000', NULL, NULL),
(81, 'admin::users.update', NULL, '{}', '[]', '2023-01-09 22:22:43.228000', '2023-01-09 22:22:43.228000', NULL, NULL),
(82, 'admin::users.delete', NULL, '{}', '[]', '2023-01-09 22:22:43.237000', '2023-01-09 22:22:43.237000', NULL, NULL),
(83, 'admin::roles.create', NULL, '{}', '[]', '2023-01-09 22:22:43.247000', '2023-01-09 22:22:43.247000', NULL, NULL),
(84, 'admin::roles.read', NULL, '{}', '[]', '2023-01-09 22:22:43.257000', '2023-01-09 22:22:43.257000', NULL, NULL),
(85, 'admin::roles.update', NULL, '{}', '[]', '2023-01-09 22:22:43.268000', '2023-01-09 22:22:43.268000', NULL, NULL),
(86, 'admin::roles.delete', NULL, '{}', '[]', '2023-01-09 22:22:43.276000', '2023-01-09 22:22:43.276000', NULL, NULL),
(87, 'admin::api-tokens.access', NULL, '{}', '[]', '2023-01-09 22:22:43.285000', '2023-01-09 22:22:43.285000', NULL, NULL),
(88, 'admin::api-tokens.create', NULL, '{}', '[]', '2023-01-09 22:22:43.295000', '2023-01-09 22:22:43.295000', NULL, NULL),
(89, 'admin::api-tokens.read', NULL, '{}', '[]', '2023-01-09 22:22:43.307000', '2023-01-09 22:22:43.307000', NULL, NULL),
(90, 'admin::api-tokens.update', NULL, '{}', '[]', '2023-01-09 22:22:43.318000', '2023-01-09 22:22:43.318000', NULL, NULL),
(91, 'admin::api-tokens.regenerate', NULL, '{}', '[]', '2023-01-09 22:22:43.327000', '2023-01-09 22:22:43.327000', NULL, NULL),
(92, 'admin::api-tokens.delete', NULL, '{}', '[]', '2023-01-09 22:22:43.337000', '2023-01-09 22:22:43.337000', NULL, NULL),
(93, 'admin::project-settings.update', NULL, '{}', '[]', '2023-01-09 22:22:43.348000', '2023-01-09 22:22:43.348000', NULL, NULL),
(94, 'admin::project-settings.read', NULL, '{}', '[]', '2023-01-09 22:22:43.357000', '2023-01-09 22:22:43.357000', NULL, NULL),
(98, 'plugin::content-manager.explorer.delete', 'api::singer.singer', '{}', '[]', '2023-01-10 09:33:51.177000', '2023-01-10 09:33:51.177000', NULL, NULL),
(99, 'plugin::content-manager.explorer.publish', 'api::singer.singer', '{}', '[]', '2023-01-10 09:33:51.194000', '2023-01-10 09:33:51.194000', NULL, NULL),
(106, 'plugin::content-manager.explorer.delete', 'api::song.song', '{}', '[]', '2023-01-10 09:48:31.271000', '2023-01-10 09:48:31.271000', NULL, NULL),
(107, 'plugin::content-manager.explorer.publish', 'api::song.song', '{}', '[]', '2023-01-10 09:48:31.281000', '2023-01-10 09:48:31.281000', NULL, NULL),
(157, 'plugin::content-manager.explorer.create', 'api::singer.singer', '{\"fields\":[\"name\",\"information\",\"avatar\",\"songs\"]}', '[]', '2023-01-11 13:23:35.628000', '2023-01-11 13:23:35.628000', NULL, NULL),
(159, 'plugin::content-manager.explorer.read', 'api::singer.singer', '{\"fields\":[\"name\",\"information\",\"avatar\",\"songs\"]}', '[]', '2023-01-11 13:23:35.650000', '2023-01-11 13:23:35.650000', NULL, NULL),
(161, 'plugin::content-manager.explorer.update', 'api::singer.singer', '{\"fields\":[\"name\",\"information\",\"avatar\",\"songs\"]}', '[]', '2023-01-11 13:23:35.668000', '2023-01-11 13:23:35.668000', NULL, NULL),
(166, 'plugin::content-manager.explorer.create', 'api::image-slide.image-slide', '{\"fields\":[\"image\"]}', '[]', '2023-01-14 11:28:33.048000', '2023-01-14 11:28:33.048000', NULL, NULL),
(167, 'plugin::content-manager.explorer.read', 'api::image-slide.image-slide', '{\"fields\":[\"image\"]}', '[]', '2023-01-14 11:28:33.064000', '2023-01-14 11:28:33.064000', NULL, NULL),
(168, 'plugin::content-manager.explorer.update', 'api::image-slide.image-slide', '{\"fields\":[\"image\"]}', '[]', '2023-01-14 11:28:33.076000', '2023-01-14 11:28:33.076000', NULL, NULL),
(169, 'plugin::content-manager.explorer.delete', 'api::image-slide.image-slide', '{}', '[]', '2023-01-14 11:28:33.090000', '2023-01-14 11:28:33.090000', NULL, NULL),
(170, 'plugin::content-manager.explorer.publish', 'api::image-slide.image-slide', '{}', '[]', '2023-01-14 11:28:33.104000', '2023-01-14 11:28:33.104000', NULL, NULL),
(180, 'plugin::content-manager.explorer.delete', 'api::song-history.song-history', '{}', '[]', '2023-01-15 11:27:01.313000', '2023-01-15 11:27:01.313000', NULL, NULL),
(181, 'plugin::content-manager.explorer.publish', 'api::song-history.song-history', '{}', '[]', '2023-01-15 11:27:01.336000', '2023-01-15 11:27:01.336000', NULL, NULL),
(232, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"song_histories\"]}', '[]', '2023-01-15 18:06:31.878000', '2023-01-15 18:06:31.878000', NULL, NULL),
(233, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"song_histories\"]}', '[]', '2023-01-15 18:06:31.926000', '2023-01-15 18:06:31.926000', NULL, NULL),
(234, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"song_histories\"]}', '[]', '2023-01-15 18:06:31.940000', '2023-01-15 18:06:31.940000', NULL, NULL),
(238, 'plugin::content-manager.explorer.create', 'api::song-history.song-history', '{\"fields\":[\"song\",\"user\"]}', '[]', '2023-01-15 18:23:27.311000', '2023-01-15 18:23:27.311000', NULL, NULL),
(239, 'plugin::content-manager.explorer.read', 'api::song-history.song-history', '{\"fields\":[\"song\",\"user\"]}', '[]', '2023-01-15 18:23:27.321000', '2023-01-15 18:23:27.321000', NULL, NULL),
(240, 'plugin::content-manager.explorer.update', 'api::song-history.song-history', '{\"fields\":[\"song\",\"user\"]}', '[]', '2023-01-15 18:23:27.330000', '2023-01-15 18:23:27.330000', NULL, NULL),
(244, 'plugin::content-manager.explorer.delete', 'api::favourite-song.favourite-song', '{}', '[]', '2023-01-16 09:49:54.256000', '2023-01-16 09:49:54.256000', NULL, NULL),
(245, 'plugin::content-manager.explorer.publish', 'api::favourite-song.favourite-song', '{}', '[]', '2023-01-16 09:49:54.267000', '2023-01-16 09:49:54.267000', NULL, NULL),
(249, 'plugin::content-manager.explorer.create', 'api::favourite-song.favourite-song', '{\"fields\":[\"song\",\"user\"]}', '[]', '2023-01-16 10:14:30.385000', '2023-01-16 10:14:30.385000', NULL, NULL),
(250, 'plugin::content-manager.explorer.read', 'api::favourite-song.favourite-song', '{\"fields\":[\"song\",\"user\"]}', '[]', '2023-01-16 10:14:30.403000', '2023-01-16 10:14:30.403000', NULL, NULL),
(251, 'plugin::content-manager.explorer.update', 'api::favourite-song.favourite-song', '{\"fields\":[\"song\",\"user\"]}', '[]', '2023-01-16 10:14:30.416000', '2023-01-16 10:14:30.416000', NULL, NULL),
(255, 'plugin::content-manager.explorer.delete', 'api::my-song.my-song', '{}', '[]', '2023-01-25 21:27:51.459000', '2023-01-25 21:27:51.459000', NULL, NULL),
(256, 'plugin::content-manager.explorer.publish', 'api::my-song.my-song', '{}', '[]', '2023-01-25 21:27:51.468000', '2023-01-25 21:27:51.468000', NULL, NULL),
(257, 'plugin::content-manager.explorer.create', 'api::my-song.my-song', '{\"fields\":[\"video\",\"song\",\"user\",\"name\"]}', '[]', '2023-01-26 19:33:08.110000', '2023-01-26 19:33:08.110000', NULL, NULL),
(258, 'plugin::content-manager.explorer.read', 'api::my-song.my-song', '{\"fields\":[\"video\",\"song\",\"user\",\"name\"]}', '[]', '2023-01-26 19:33:08.120000', '2023-01-26 19:33:08.120000', NULL, NULL),
(259, 'plugin::content-manager.explorer.update', 'api::my-song.my-song', '{\"fields\":[\"video\",\"song\",\"user\",\"name\"]}', '[]', '2023-01-26 19:33:08.130000', '2023-01-26 19:33:08.130000', NULL, NULL),
(266, 'plugin::content-manager.explorer.create', 'api::song.song', '{\"fields\":[\"name\",\"lyrics\",\"media\",\"genre\",\"image\",\"singers\",\"song_histories\"]}', '[]', '2023-01-29 10:29:44.654000', '2023-01-29 10:29:44.654000', NULL, NULL),
(267, 'plugin::content-manager.explorer.read', 'api::song.song', '{\"fields\":[\"name\",\"lyrics\",\"media\",\"genre\",\"image\",\"singers\",\"song_histories\"]}', '[]', '2023-01-29 10:29:44.666000', '2023-01-29 10:29:44.666000', NULL, NULL),
(268, 'plugin::content-manager.explorer.update', 'api::song.song', '{\"fields\":[\"name\",\"lyrics\",\"media\",\"genre\",\"image\",\"singers\",\"song_histories\"]}', '[]', '2023-01-29 10:29:44.678000', '2023-01-29 10:29:44.678000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(11, 11, 2, 11),
(12, 12, 2, 12),
(13, 13, 2, 13),
(14, 14, 2, 14),
(15, 15, 2, 15),
(24, 24, 3, 9),
(25, 25, 3, 10),
(26, 26, 3, 11),
(27, 27, 3, 12),
(28, 28, 3, 13),
(40, 40, 1, 12),
(43, 43, 1, 15),
(44, 44, 1, 16),
(45, 45, 1, 17),
(46, 46, 1, 18),
(47, 47, 1, 19),
(48, 48, 1, 20),
(49, 49, 1, 21),
(50, 50, 1, 22),
(51, 51, 1, 23),
(52, 52, 1, 24),
(53, 53, 1, 25),
(54, 54, 1, 26),
(55, 55, 1, 27),
(56, 56, 1, 28),
(57, 57, 1, 29),
(58, 58, 1, 30),
(59, 59, 1, 31),
(60, 60, 1, 32),
(61, 61, 1, 33),
(62, 62, 1, 34),
(63, 63, 1, 35),
(64, 64, 1, 36),
(65, 65, 1, 37),
(66, 66, 1, 38),
(67, 67, 1, 39),
(68, 68, 1, 40),
(69, 69, 1, 41),
(70, 70, 1, 42),
(71, 71, 1, 43),
(72, 72, 1, 44),
(73, 73, 1, 45),
(74, 74, 1, 46),
(75, 75, 1, 47),
(76, 76, 1, 48),
(77, 77, 1, 49),
(78, 78, 1, 50),
(79, 79, 1, 51),
(80, 80, 1, 52),
(81, 81, 1, 53),
(82, 82, 1, 54),
(83, 83, 1, 55),
(84, 84, 1, 56),
(85, 85, 1, 57),
(86, 86, 1, 58),
(87, 87, 1, 59),
(88, 88, 1, 60),
(89, 89, 1, 61),
(90, 90, 1, 62),
(91, 91, 1, 63),
(92, 92, 1, 64),
(93, 93, 1, 65),
(94, 94, 1, 66),
(98, 98, 1, 70),
(99, 99, 1, 71),
(106, 106, 1, 78),
(107, 107, 1, 79),
(157, 157, 1, 86),
(159, 159, 1, 88),
(161, 161, 1, 90),
(166, 166, 1, 94),
(167, 167, 1, 95),
(168, 168, 1, 96),
(169, 169, 1, 97),
(170, 170, 1, 98),
(180, 180, 1, 108),
(181, 181, 1, 109),
(232, 232, 1, 126),
(233, 233, 1, 127),
(234, 234, 1, 128),
(238, 238, 1, 129),
(239, 239, 1, 130),
(240, 240, 1, 131),
(244, 244, 1, 135),
(245, 245, 1, 136),
(249, 249, 1, 137),
(250, 250, 1, 138),
(251, 251, 1, 139),
(255, 255, 1, 143),
(256, 256, 1, 144),
(257, 257, 1, 145),
(258, 258, 1, 146),
(259, 259, 1, 147),
(266, 266, 1, 148),
(267, 267, 1, 149),
(268, 268, 1, 150);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2023-01-09 22:22:42.359000', '2023-01-09 22:22:42.359000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2023-01-09 22:22:42.369000', '2023-01-09 22:22:42.369000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2023-01-09 22:22:42.379000', '2023-01-09 22:22:42.379000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'ĐẶNG', 'HÀ', NULL, 'quanghadang08@gmail.com', '$2a$10$L58oW9D/ei6PKFcxTofWce9Kx9MzBUODhU2ofNUAHi7h3vPXLIThq', NULL, NULL, 1, 0, NULL, '2023-01-09 22:23:21.453000', '2023-01-10 09:32:27.546000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_order` int(10) UNSIGNED DEFAULT NULL,
  `user_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `favourite_songs`
--

CREATE TABLE `favourite_songs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favourite_songs`
--

INSERT INTO `favourite_songs` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(50, '2023-01-28 10:34:02.108000', '2023-01-28 10:34:02.108000', '2023-01-28 10:34:02.106000', NULL, NULL),
(51, '2023-01-28 13:25:51.579000', '2023-01-28 13:25:51.579000', '2023-01-28 13:25:51.577000', NULL, NULL),
(52, '2023-01-28 14:53:13.204000', '2023-01-28 14:53:13.204000', '2023-01-28 14:53:13.199000', NULL, NULL),
(53, '2023-01-29 10:20:36.987000', '2023-01-29 10:20:36.987000', '2023-01-29 10:20:36.982000', NULL, NULL),
(54, '2023-01-29 13:21:24.397000', '2023-01-29 13:21:24.397000', '2023-01-29 13:21:24.396000', NULL, NULL),
(55, '2023-01-29 13:24:23.452000', '2023-01-29 13:24:23.452000', '2023-01-29 13:24:23.448000', NULL, NULL),
(56, '2023-02-01 09:24:14.584000', '2023-02-01 09:24:14.584000', '2023-02-01 09:24:14.579000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `favourite_songs_song_links`
--

CREATE TABLE `favourite_songs_song_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `favourite_song_id` int(10) UNSIGNED DEFAULT NULL,
  `song_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favourite_songs_song_links`
--

INSERT INTO `favourite_songs_song_links` (`id`, `favourite_song_id`, `song_id`) VALUES
(50, 50, 1),
(51, 51, 6),
(52, 52, 3),
(53, 53, 5),
(54, 54, 12),
(55, 55, 13),
(56, 56, 15);

-- --------------------------------------------------------

--
-- Table structure for table `favourite_songs_user_links`
--

CREATE TABLE `favourite_songs_user_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `favourite_song_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favourite_songs_user_links`
--

INSERT INTO `favourite_songs_user_links` (`id`, `favourite_song_id`, `user_id`) VALUES
(44, 50, 1),
(45, 51, 1),
(46, 52, 1),
(47, 53, 1),
(48, 54, 1),
(49, 55, 1),
(50, 56, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(3, '166.jpg', NULL, NULL, 320, 320, '{\"thumbnail\":{\"name\":\"thumbnail_166.jpg\",\"hash\":\"thumbnail_166_8b7aabd5e8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":5.32,\"url\":\"/uploads/thumbnail_166_8b7aabd5e8.jpg\"}}', '166_8b7aabd5e8', '.jpg', 'image/jpeg', '14.06', '/uploads/166_8b7aabd5e8.jpg', NULL, 'local', NULL, '/1', '2023-01-10 23:14:15.309000', '2023-01-10 23:14:15.309000', 1, 1),
(4, '32899.jpg', NULL, NULL, 320, 320, '{\"thumbnail\":{\"name\":\"thumbnail_32899.jpg\",\"hash\":\"thumbnail_32899_949a9eb22f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.28,\"url\":\"/uploads/thumbnail_32899_949a9eb22f.jpg\"}}', '32899_949a9eb22f', '.jpg', 'image/jpeg', '12.46', '/uploads/32899_949a9eb22f.jpg', NULL, 'local', NULL, '/1', '2023-01-10 23:14:53.780000', '2023-01-10 23:14:53.780000', 1, 1),
(5, '70.jpg', NULL, NULL, 320, 320, '{\"thumbnail\":{\"name\":\"thumbnail_70.jpg\",\"hash\":\"thumbnail_70_b1dc9a213d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.07,\"url\":\"/uploads/thumbnail_70_b1dc9a213d.jpg\"}}', '70_b1dc9a213d', '.jpg', 'image/jpeg', '8.09', '/uploads/70_b1dc9a213d.jpg', NULL, 'local', NULL, '/1', '2023-01-10 23:16:33.305000', '2023-01-10 23:16:33.305000', 1, 1),
(6, 'mqdefault_6s.webp', NULL, NULL, 320, 180, '{\"thumbnail\":{\"name\":\"thumbnail_mqdefault_6s.webp\",\"hash\":\"thumbnail_mqdefault_6s_ffa92fee0a\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":245,\"height\":138,\"size\":8.33,\"url\":\"/uploads/thumbnail_mqdefault_6s_ffa92fee0a.webp\"}}', 'mqdefault_6s_ffa92fee0a', '.webp', 'image/webp', '15.40', '/uploads/mqdefault_6s_ffa92fee0a.webp', NULL, 'local', NULL, '/2/3', '2023-01-11 14:01:10.501000', '2023-01-11 14:01:10.501000', 1, 1),
(7, 'yt1s.com - HẾT THƯƠNG CẠN NHỚ  ĐỨC PHÚC  KARAOKE BEAT CHUẨN.mp4', NULL, NULL, NULL, NULL, NULL, 'yt1s_com_HET_THUONG_CAN_NHO_DUC_PHUC_KARAOKE_BEAT_CHUAN_a41b3c0ae0', '.mp4', 'video/mp4', '20067.21', '/uploads/yt1s_com_HET_THUONG_CAN_NHO_DUC_PHUC_KARAOKE_BEAT_CHUAN_a41b3c0ae0.mp4', NULL, 'local', NULL, '/2/4', '2023-01-11 14:01:28.897000', '2023-01-11 14:01:28.897000', 1, 1),
(8, '32893.jpg', NULL, NULL, 320, 320, '{\"thumbnail\":{\"name\":\"thumbnail_32893.jpg\",\"hash\":\"thumbnail_32893_be72b45e52\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":6.65,\"url\":\"/uploads/thumbnail_32893_be72b45e52.jpg\"}}', '32893_be72b45e52', '.jpg', 'image/jpeg', '20.17', '/uploads/32893_be72b45e52.jpg', NULL, 'local', NULL, '/1', '2023-01-11 16:22:10.935000', '2023-01-11 16:22:10.935000', 1, 1),
(9, 'ĐÁNH MẤT EM (KARAOKE) - QUANG ĐĂNG TRẦN X PROD. DUY NGUYỆN.mp4', NULL, NULL, NULL, NULL, NULL, 'DANH_MAT_EM_KARAOKE_QUANG_DANG_TRAN_X_PROD_DUY_NGUYEN_514398816e', '.mp4', 'video/mp4', '18694.84', '/uploads/DANH_MAT_EM_KARAOKE_QUANG_DANG_TRAN_X_PROD_DUY_NGUYEN_514398816e.mp4', NULL, 'local', NULL, '/2/4', '2023-01-11 16:24:26.612000', '2023-01-11 16:24:26.612000', 1, 1),
(11, 'mqdefault_6s.webp', NULL, NULL, 320, 180, '{\"thumbnail\":{\"name\":\"thumbnail_mqdefault_6s.webp\",\"hash\":\"thumbnail_mqdefault_6s_67efbabcdb\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":245,\"height\":138,\"size\":3.83,\"url\":\"/uploads/thumbnail_mqdefault_6s_67efbabcdb.webp\"}}', 'mqdefault_6s_67efbabcdb', '.webp', 'image/webp', '6.70', '/uploads/mqdefault_6s_67efbabcdb.webp', NULL, 'local', NULL, '/2/3', '2023-01-11 16:26:18.232000', '2023-01-11 16:26:18.232000', 1, 1),
(12, 'yt1s.com - NGÀY ĐẦU TIÊN  ĐỨC PHÚC  OFFICIAL KARAOKE  INSTRUMENTAL.mp4', NULL, NULL, NULL, NULL, NULL, 'yt1s_com_NGAY_DAU_TIEN_DUC_PHUC_OFFICIAL_KARAOKE_INSTRUMENTAL_cb5054a992', '.mp4', 'video/mp4', '26409.47', '/uploads/yt1s_com_NGAY_DAU_TIEN_DUC_PHUC_OFFICIAL_KARAOKE_INSTRUMENTAL_cb5054a992.mp4', NULL, 'local', NULL, '/2/4', '2023-01-11 20:26:57.385000', '2023-01-11 20:26:57.385000', 1, 1),
(13, 'mqdefault_6s (1).webp', NULL, NULL, 320, 180, '{\"thumbnail\":{\"name\":\"thumbnail_mqdefault_6s (1).webp\",\"hash\":\"thumbnail_mqdefault_6s_1_d8be4832f6\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":245,\"height\":138,\"size\":5.8,\"url\":\"/uploads/thumbnail_mqdefault_6s_1_d8be4832f6.webp\"}}', 'mqdefault_6s_1_d8be4832f6', '.webp', 'image/webp', '9.76', '/uploads/mqdefault_6s_1_d8be4832f6.webp', NULL, 'local', NULL, '/2/3', '2023-01-11 20:27:09.062000', '2023-01-11 20:27:09.062000', 1, 1),
(14, 'yt1s.com - Cả Nhà Thương Nhau Karaoke Nhạc Thiếu Nhi Beat Chuẩn Karaoke.mp4', NULL, NULL, NULL, NULL, NULL, 'yt1s_com_Ca_Nha_Thuong_Nhau_Karaoke_Nhac_Thieu_Nhi_Beat_Chuan_Karaoke_a5db80a193', '.mp4', 'video/mp4', '11571.49', '/uploads/yt1s_com_Ca_Nha_Thuong_Nhau_Karaoke_Nhac_Thieu_Nhi_Beat_Chuan_Karaoke_a5db80a193.mp4', NULL, 'local', NULL, '/2/4', '2023-01-11 21:38:45.087000', '2023-01-11 21:38:45.087000', 1, 1),
(17, 'mqdefault_6s.webp', NULL, NULL, 320, 180, '{\"thumbnail\":{\"name\":\"thumbnail_mqdefault_6s.webp\",\"hash\":\"thumbnail_mqdefault_6s_3980f64b7e\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":245,\"height\":138,\"size\":7.74,\"url\":\"/uploads/thumbnail_mqdefault_6s_3980f64b7e.webp\"}}', 'mqdefault_6s_3980f64b7e', '.webp', 'image/webp', '10.58', '/uploads/mqdefault_6s_3980f64b7e.webp', NULL, 'local', NULL, '/2/3', '2023-01-11 21:52:18.637000', '2023-01-11 21:52:18.637000', 1, 1),
(18, 'da-lo-yeu-em-nhieu.jpg', NULL, NULL, 480, 270, '{\"thumbnail\":{\"name\":\"thumbnail_da-lo-yeu-em-nhieu.jpg\",\"hash\":\"thumbnail_da_lo_yeu_em_nhieu_4d8544c143\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":138,\"size\":7.99,\"url\":\"/uploads/thumbnail_da_lo_yeu_em_nhieu_4d8544c143.jpg\"}}', 'da_lo_yeu_em_nhieu_4d8544c143', '.jpg', 'image/jpeg', '26.86', '/uploads/da_lo_yeu_em_nhieu_4d8544c143.jpg', NULL, 'local', NULL, '/5', '2023-01-14 11:31:14.588000', '2023-01-14 11:31:14.588000', 1, 1),
(19, 'danh-mat-em.jpg', NULL, NULL, 480, 270, '{\"thumbnail\":{\"name\":\"thumbnail_danh-mat-em.jpg\",\"hash\":\"thumbnail_danh_mat_em_dbf92384f0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":138,\"size\":8.82,\"url\":\"/uploads/thumbnail_danh_mat_em_dbf92384f0.jpg\"}}', 'danh_mat_em_dbf92384f0', '.jpg', 'image/jpeg', '32.39', '/uploads/danh_mat_em_dbf92384f0.jpg', NULL, 'local', NULL, '/5', '2023-01-14 11:31:33.887000', '2023-01-14 11:31:33.887000', 1, 1),
(20, 'dau-nhat-la-lang-im.jpg', NULL, NULL, 480, 270, '{\"thumbnail\":{\"name\":\"thumbnail_dau-nhat-la-lang-im.jpg\",\"hash\":\"thumbnail_dau_nhat_la_lang_im_d6f366160e\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":138,\"size\":10.38,\"url\":\"/uploads/thumbnail_dau_nhat_la_lang_im_d6f366160e.jpg\"}}', 'dau_nhat_la_lang_im_d6f366160e', '.jpg', 'image/jpeg', '35.57', '/uploads/dau_nhat_la_lang_im_d6f366160e.jpg', NULL, 'local', NULL, '/5', '2023-01-14 11:31:53.898000', '2023-01-14 11:31:53.898000', 1, 1),
(21, 'sau-lung-anh-co-ai-kia.jpg', NULL, NULL, 480, 270, '{\"thumbnail\":{\"name\":\"thumbnail_sau-lung-anh-co-ai-kia.jpg\",\"hash\":\"thumbnail_sau_lung_anh_co_ai_kia_4e7b90bfd5\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":138,\"size\":10.11,\"url\":\"/uploads/thumbnail_sau_lung_anh_co_ai_kia_4e7b90bfd5.jpg\"}}', 'sau_lung_anh_co_ai_kia_4e7b90bfd5', '.jpg', 'image/jpeg', '30.03', '/uploads/sau_lung_anh_co_ai_kia_4e7b90bfd5.jpg', NULL, 'local', NULL, '/5', '2023-01-14 11:32:10.110000', '2023-01-14 11:32:10.110000', 1, 1),
(22, 'beauty-and-a-beat.jpg', NULL, NULL, 480, 270, '{\"thumbnail\":{\"name\":\"thumbnail_beauty-and-a-beat.jpg\",\"hash\":\"thumbnail_beauty_and_a_beat_8da84857a6\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":138,\"size\":8.6,\"url\":\"/uploads/thumbnail_beauty_and_a_beat_8da84857a6.jpg\"}}', 'beauty_and_a_beat_8da84857a6', '.jpg', 'image/jpeg', '29.57', '/uploads/beauty_and_a_beat_8da84857a6.jpg', NULL, 'local', NULL, '/5', '2023-01-14 11:32:25.985000', '2023-01-14 11:32:25.985000', 1, 1),
(23, 'yt1s.com - Karaoke Sầu Tím Thiệp Hồng  Song Ca Quang Lê  Lệ Quyên.mp4', NULL, NULL, NULL, NULL, NULL, 'yt1s_com_Karaoke_Sau_Tim_Thiep_Hong_Song_Ca_Quang_Le_Le_Quyen_a4d1a6de0a', '.mp4', 'video/mp4', '85806.46', '/uploads/yt1s_com_Karaoke_Sau_Tim_Thiep_Hong_Song_Ca_Quang_Le_Le_Quyen_a4d1a6de0a.mp4', NULL, 'local', NULL, '/2/4', '2023-01-15 22:52:32.045000', '2023-01-15 22:52:32.045000', 1, 1),
(24, 'mqdefault_6s.webp', NULL, NULL, 320, 180, '{\"thumbnail\":{\"name\":\"thumbnail_mqdefault_6s.webp\",\"hash\":\"thumbnail_mqdefault_6s_caf934e6cc\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":245,\"height\":138,\"size\":5.42,\"url\":\"/uploads/thumbnail_mqdefault_6s_caf934e6cc.webp\"}}', 'mqdefault_6s_caf934e6cc', '.webp', 'image/webp', '8.22', '/uploads/mqdefault_6s_caf934e6cc.webp', NULL, 'local', NULL, '/2/3', '2023-01-15 22:53:22.878000', '2023-01-15 22:53:22.878000', 1, 1),
(25, '557.jpg', NULL, NULL, 320, 320, '{\"thumbnail\":{\"name\":\"thumbnail_557.jpg\",\"hash\":\"thumbnail_557_809ba22335\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":5.26,\"url\":\"/uploads/thumbnail_557_809ba22335.jpg\"}}', '557_809ba22335', '.jpg', 'image/jpeg', '16.81', '/uploads/557_809ba22335.jpg', NULL, 'local', NULL, '/1', '2023-01-15 22:54:10.642000', '2023-01-15 22:54:10.642000', 1, 1),
(26, '129.jpg', NULL, NULL, 320, 320, '{\"thumbnail\":{\"name\":\"thumbnail_129.jpg\",\"hash\":\"thumbnail_129_fb5d032994\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":6.88,\"url\":\"/uploads/thumbnail_129_fb5d032994.jpg\"}}', '129_fb5d032994', '.jpg', 'image/jpeg', '20.66', '/uploads/129_fb5d032994.jpg', NULL, 'local', NULL, '/1', '2023-01-15 23:01:44.663000', '2023-01-15 23:01:44.663000', 1, 1),
(27, 'Karaoke Tình Lỡ - Beat Chuẩn Hay Nhất _ Lệ Quyên ( Tone Nữ ).mp4', NULL, NULL, NULL, NULL, NULL, 'Karaoke_Tinh_Lo_Beat_Chuan_Hay_Nhat_Le_Quyen_Tone_Nu_f9c916d14a', '.mp4', 'video/mp4', '44571.30', '/uploads/Karaoke_Tinh_Lo_Beat_Chuan_Hay_Nhat_Le_Quyen_Tone_Nu_f9c916d14a.mp4', NULL, 'local', NULL, '/2/4', '2023-01-15 23:03:21.405000', '2023-01-15 23:03:21.405000', 1, 1),
(30, 'mqdefault_6s (4).webp', NULL, NULL, 320, 180, '{\"thumbnail\":{\"name\":\"thumbnail_mqdefault_6s (4).webp\",\"hash\":\"thumbnail_mqdefault_6s_4_860f1fad0b\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":245,\"height\":138,\"size\":8.06,\"url\":\"/uploads/thumbnail_mqdefault_6s_4_860f1fad0b.webp\"}}', 'mqdefault_6s_4_860f1fad0b', '.webp', 'image/webp', '9.95', '/uploads/mqdefault_6s_4_860f1fad0b.webp', NULL, 'local', NULL, '/2/3', '2023-01-15 23:07:17.963000', '2023-01-15 23:07:17.963000', 1, 1),
(31, 'cute_tiger_cartoon_logo.png', NULL, NULL, 800, 600, '{\"thumbnail\":{\"name\":\"thumbnail_cute_tiger_cartoon_logo.png\",\"hash\":\"thumbnail_cute_tiger_cartoon_logo_11d5c5dc6a\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":208,\"height\":156,\"size\":2.98,\"url\":\"/uploads/thumbnail_cute_tiger_cartoon_logo_11d5c5dc6a.png\"},\"small\":{\"name\":\"small_cute_tiger_cartoon_logo.png\",\"hash\":\"small_cute_tiger_cartoon_logo_11d5c5dc6a\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":375,\"size\":8.67,\"url\":\"/uploads/small_cute_tiger_cartoon_logo_11d5c5dc6a.png\"},\"medium\":{\"name\":\"medium_cute_tiger_cartoon_logo.png\",\"hash\":\"medium_cute_tiger_cartoon_logo_11d5c5dc6a\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":562,\"size\":13.26,\"url\":\"/uploads/medium_cute_tiger_cartoon_logo_11d5c5dc6a.png\"}}', 'cute_tiger_cartoon_logo_11d5c5dc6a', '.png', 'image/png', '16.32', '/uploads/cute_tiger_cartoon_logo_11d5c5dc6a.png', NULL, 'local', NULL, '/6', '2023-01-25 21:23:47.750000', '2023-01-25 21:23:47.750000', NULL, NULL),
(32, 'yt1s.com - NGÀY ĐẦU TIÊN  ĐỨC PHÚC  OFFICIAL KARAOKE  INSTRUMENTAL.mp4', NULL, NULL, NULL, NULL, NULL, 'yt1s_com_NGAY_DAU_TIEN_DUC_PHUC_OFFICIAL_KARAOKE_INSTRUMENTAL_162d8edf65', '.mp4', 'video/mp4', '26409.47', '/uploads/yt1s_com_NGAY_DAU_TIEN_DUC_PHUC_OFFICIAL_KARAOKE_INSTRUMENTAL_162d8edf65.mp4', NULL, 'local', NULL, '/6', '2023-01-25 21:29:39.026000', '2023-01-25 21:29:39.026000', NULL, NULL),
(33, 'yt1s.com - MONO  Waiting For You Official Music Video.mp4', NULL, NULL, NULL, NULL, NULL, 'yt1s_com_MONO_Waiting_For_You_Official_Music_Video_b36414b3ca', '.mp4', 'video/mp4', '57427.30', '/uploads/yt1s_com_MONO_Waiting_For_You_Official_Music_Video_b36414b3ca.mp4', NULL, 'local', NULL, '/6', '2023-01-25 21:33:48.780000', '2023-01-25 21:33:48.780000', NULL, NULL),
(34, 'Hơn_cả_yêu_1674828968.mp4', NULL, NULL, NULL, NULL, NULL, 'Hon_ca_yeu_1674828968_7c11b8a3f4', '.mp4', 'video/mp4', '367.58', '/uploads/Hon_ca_yeu_1674828968_7c11b8a3f4.mp4', NULL, 'local', NULL, '/6', '2023-01-27 21:16:08.561000', '2023-01-27 21:16:08.561000', NULL, NULL),
(35, 'Hơn_cả_yêu_1674829087.mp4', NULL, NULL, NULL, NULL, NULL, 'Hon_ca_yeu_1674829087_7e9a101e82', '.mp4', 'video/mp4', '251.23', '/uploads/Hon_ca_yeu_1674829087_7e9a101e82.mp4', NULL, 'local', NULL, '/6', '2023-01-27 21:18:07.488000', '2023-01-27 21:18:07.488000', NULL, NULL),
(36, 'Hơn_cả_yêu_1674829153.mp4', NULL, NULL, NULL, NULL, NULL, 'Hon_ca_yeu_1674829153_bd7f5dd6e8', '.mp4', 'video/mp4', '286.73', '/uploads/Hon_ca_yeu_1674829153_bd7f5dd6e8.mp4', NULL, 'local', NULL, '/6', '2023-01-27 21:19:13.834000', '2023-01-27 21:19:13.834000', NULL, NULL),
(37, 'Hơn_cả_yêu_1674829230.mp4', NULL, NULL, NULL, NULL, NULL, 'Hon_ca_yeu_1674829230_b898a2ecf9', '.mp4', 'video/mp4', '318.78', '/uploads/Hon_ca_yeu_1674829230_b898a2ecf9.mp4', NULL, 'local', NULL, '/6', '2023-01-27 21:20:30.558000', '2023-01-27 21:20:30.558000', NULL, NULL),
(38, 'Hơn_cả_yêu_1674829261.mp4', NULL, NULL, NULL, NULL, NULL, 'Hon_ca_yeu_1674829261_e264f49f8f', '.mp4', 'video/mp4', '246.18', '/uploads/Hon_ca_yeu_1674829261_e264f49f8f.mp4', NULL, 'local', NULL, '/6', '2023-01-27 21:21:01.853000', '2023-01-27 21:21:01.853000', NULL, NULL),
(39, 'Hơn_cả_yêu_1674829391.mp4', NULL, NULL, NULL, NULL, NULL, 'Hon_ca_yeu_1674829391_9e571a6c9f', '.mp4', 'video/mp4', '296.87', '/uploads/Hon_ca_yeu_1674829391_9e571a6c9f.mp4', NULL, 'local', NULL, '/6', '2023-01-27 21:23:11.457000', '2023-01-27 21:23:11.457000', NULL, NULL),
(40, 'Hơn_cả_yêu_1674829482.mp4', NULL, NULL, NULL, NULL, NULL, 'Hon_ca_yeu_1674829482_90efd7068b', '.mp4', 'video/mp4', '492.32', '/uploads/Hon_ca_yeu_1674829482_90efd7068b.mp4', NULL, 'local', NULL, '/6', '2023-01-27 21:24:42.136000', '2023-01-27 21:24:42.136000', NULL, NULL),
(41, 'Hơn_cả_yêu_1674829542.mp4', NULL, NULL, NULL, NULL, NULL, 'Hon_ca_yeu_1674829542_85e62d1bc2', '.mp4', 'video/mp4', '161.52', '/uploads/Hon_ca_yeu_1674829542_85e62d1bc2.mp4', NULL, 'local', NULL, '/6', '2023-01-27 21:25:42.331000', '2023-01-27 21:25:42.331000', NULL, NULL),
(42, 'Hơn_cả_yêu_1674829643.mp4', NULL, NULL, NULL, NULL, NULL, 'Hon_ca_yeu_1674829643_1cd1baaca7', '.mp4', 'video/mp4', '574.17', '/uploads/Hon_ca_yeu_1674829643_1cd1baaca7.mp4', NULL, 'local', NULL, '/6', '2023-01-27 21:27:23.434000', '2023-01-27 21:27:23.434000', NULL, NULL),
(43, 'Hết_thương_cạn_nhớ_1674830309.mp4', NULL, NULL, NULL, NULL, NULL, 'Het_thuong_can_nho_1674830309_a74604221c', '.mp4', 'video/mp4', '665.64', '/uploads/Het_thuong_can_nho_1674830309_a74604221c.mp4', NULL, 'local', NULL, '/6', '2023-01-27 21:38:29.202000', '2023-01-27 21:38:29.202000', NULL, NULL),
(44, 'Hết_thương_cạn_nhớ_1674830498.mp4', NULL, NULL, NULL, NULL, NULL, 'Het_thuong_can_nho_1674830498_688cb5194e', '.mp4', 'video/mp4', '1006.00', '/uploads/Het_thuong_can_nho_1674830498_688cb5194e.mp4', NULL, 'local', NULL, '/6', '2023-01-27 21:41:38.627000', '2023-01-27 21:41:38.627000', NULL, NULL),
(45, 'Hết_thương_cạn_nhớ_1674831550.mp4', NULL, NULL, NULL, NULL, NULL, 'Het_thuong_can_nho_1674831550_ef213f69e7', '.mp4', 'video/mp4', '774.91', '/uploads/Het_thuong_can_nho_1674831550_ef213f69e7.mp4', NULL, 'local', NULL, '/6', '2023-01-27 21:59:10.831000', '2023-01-27 21:59:10.831000', NULL, NULL),
(46, 'Hết_thương_cạn_nhớ_1674832275.mp4', NULL, NULL, NULL, NULL, NULL, 'Het_thuong_can_nho_1674832275_b28c696a11', '.mp4', 'video/mp4', '1637.46', '/uploads/Het_thuong_can_nho_1674832275_b28c696a11.mp4', NULL, 'local', NULL, '/6', '2023-01-27 22:11:15.753000', '2023-01-27 22:11:15.753000', NULL, NULL),
(47, 'Hơn_cả_yêu_1674875233.mp4', NULL, NULL, NULL, NULL, NULL, 'Hon_ca_yeu_1674875233_7795d3ca93', '.mp4', 'video/mp4', '10815.82', '/uploads/Hon_ca_yeu_1674875233_7795d3ca93.mp4', NULL, 'local', NULL, '/6', '2023-01-28 10:07:14.375000', '2023-01-28 10:07:14.375000', NULL, NULL),
(48, 'Đánh_mất_em_1674892487.mp4', NULL, NULL, NULL, NULL, NULL, 'Danh_mat_em_1674892487_fe724c3c11', '.mp4', 'video/mp4', '410.44', '/uploads/Danh_mat_em_1674892487_fe724c3c11.mp4', NULL, 'local', NULL, '/6', '2023-01-28 14:54:47.535000', '2023-01-28 14:54:47.535000', NULL, NULL),
(49, 'Hết_thương_cạn_nhớ_1674910170.mp4', NULL, NULL, NULL, NULL, NULL, 'Het_thuong_can_nho_1674910170_97af6da475', '.mp4', 'video/mp4', '2776.58', '/uploads/Het_thuong_can_nho_1674910170_97af6da475.mp4', NULL, 'local', NULL, '/6', '2023-01-28 19:49:31.209000', '2023-01-28 19:49:31.209000', NULL, NULL),
(50, 'mqdefault_6s (5).webp', NULL, NULL, 320, 180, '{\"thumbnail\":{\"name\":\"thumbnail_mqdefault_6s (5).webp\",\"hash\":\"thumbnail_mqdefault_6s_5_d5806efffa\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":245,\"height\":138,\"size\":7.86,\"url\":\"/uploads/thumbnail_mqdefault_6s_5_d5806efffa.webp\"}}', 'mqdefault_6s_5_d5806efffa', '.webp', 'image/webp', '10.72', '/uploads/mqdefault_6s_5_d5806efffa.webp', NULL, 'local', NULL, '/2/3', '2023-01-29 10:14:40.494000', '2023-01-29 10:14:40.494000', 1, 1),
(51, 'yt1s.com - Cơn Mưa Tình Yêu  Karaoke  Song Ca  Hà Anh Tuấn ft Phương Linh.mp4', NULL, NULL, NULL, NULL, NULL, 'yt1s_com_Con_Mua_Tinh_Yeu_Karaoke_Song_Ca_Ha_Anh_Tuan_ft_Phuong_Linh_74bcc335af', '.mp4', 'video/mp4', '24842.79', '/uploads/yt1s_com_Con_Mua_Tinh_Yeu_Karaoke_Song_Ca_Ha_Anh_Tuan_ft_Phuong_Linh_74bcc335af.mp4', NULL, 'local', NULL, '/2/4', '2023-01-29 10:17:20.613000', '2023-01-29 10:17:20.613000', 1, 1),
(52, 'mqdefault_6s.webp', NULL, NULL, 320, 180, '{\"thumbnail\":{\"name\":\"thumbnail_mqdefault_6s.webp\",\"hash\":\"thumbnail_mqdefault_6s_27a8053205\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":245,\"height\":138,\"size\":5.79,\"url\":\"/uploads/thumbnail_mqdefault_6s_27a8053205.webp\"}}', 'mqdefault_6s_27a8053205', '.webp', 'image/webp', '7.57', '/uploads/mqdefault_6s_27a8053205.webp', NULL, 'local', NULL, '/2/3', '2023-01-29 10:19:37.626000', '2023-01-29 10:19:37.626000', 1, 1),
(53, '9170.jpg', NULL, NULL, 320, 320, '{\"thumbnail\":{\"name\":\"thumbnail_9170.jpg\",\"hash\":\"thumbnail_9170_572d5950d8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":5.01,\"url\":\"/uploads/thumbnail_9170_572d5950d8.jpg\"}}', '9170_572d5950d8', '.jpg', 'image/jpeg', '16.90', '/uploads/9170_572d5950d8.jpg', NULL, 'local', NULL, '/1', '2023-01-29 10:23:41.338000', '2023-01-29 10:23:41.338000', 1, 1),
(54, 'mqdefault_6s.webp', NULL, NULL, 320, 180, '{\"thumbnail\":{\"name\":\"thumbnail_mqdefault_6s.webp\",\"hash\":\"thumbnail_mqdefault_6s_e4de9aba94\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":245,\"height\":138,\"size\":8.19,\"url\":\"/uploads/thumbnail_mqdefault_6s_e4de9aba94.webp\"}}', 'mqdefault_6s_e4de9aba94', '.webp', 'image/webp', '11.96', '/uploads/mqdefault_6s_e4de9aba94.webp', NULL, 'local', NULL, '/2/3', '2023-01-29 10:27:26.647000', '2023-01-29 10:27:26.647000', 1, 1),
(55, 'yt1s.com - BLACKJACK  SOOBIN ft BINZ  KARAOKE NHẠC TRẺ SPACESPEAKER  RAP VIỆT  KARAOKE BEAT PHỐI MỚI.mp4', NULL, NULL, NULL, NULL, NULL, 'yt1s_com_BLACKJACK_SOOBIN_ft_BINZ_KARAOKE_NHAC_TRE_SPACESPEAKER_RAP_VIET_KARAOKE_BEAT_PHOI_MOI_ea9670d958', '.mp4', 'video/mp4', '33476.05', '/uploads/yt1s_com_BLACKJACK_SOOBIN_ft_BINZ_KARAOKE_NHAC_TRE_SPACESPEAKER_RAP_VIET_KARAOKE_BEAT_PHOI_MOI_ea9670d958.mp4', NULL, 'local', NULL, '/2/4', '2023-01-29 10:27:49.125000', '2023-01-29 10:27:49.125000', 1, 1),
(56, 'Hết_thương_cạn_nhớ_1674964528.mp4', NULL, NULL, NULL, NULL, NULL, 'Het_thuong_can_nho_1674964528_07b387aaad', '.mp4', 'video/mp4', '1751.93', '/uploads/Het_thuong_can_nho_1674964528_07b387aaad.mp4', NULL, 'local', NULL, '/6', '2023-01-29 10:55:28.747000', '2023-01-29 10:55:28.747000', NULL, NULL),
(57, '27966.jpg', NULL, NULL, 320, 320, '{\"thumbnail\":{\"name\":\"thumbnail_27966.jpg\",\"hash\":\"thumbnail_27966_a19584893a\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.9,\"url\":\"/uploads/thumbnail_27966_a19584893a.jpg\"}}', '27966_a19584893a', '.jpg', 'image/jpeg', '11.85', '/uploads/27966_a19584893a.jpg', NULL, 'local', NULL, '/1', '2023-01-29 11:12:57.835000', '2023-01-29 11:12:57.835000', 1, 1),
(58, 'yt1s.com - KARAOKE  QUA ĐÊM NAY  Phương Linh và Hà Anh Tuấn beat chuẩn.mp4', NULL, NULL, NULL, NULL, NULL, 'yt1s_com_KARAOKE_QUA_DEM_NAY_Phuong_Linh_va_Ha_Anh_Tuan_beat_chuan_628db865c6', '.mp4', 'video/mp4', '6611.86', '/uploads/yt1s_com_KARAOKE_QUA_DEM_NAY_Phuong_Linh_va_Ha_Anh_Tuan_beat_chuan_628db865c6.mp4', NULL, 'local', NULL, '/2/4', '2023-01-29 12:46:08.256000', '2023-01-29 12:46:08.256000', 1, 1),
(59, 'mqdefault_6s (1).webp', NULL, NULL, 320, 180, '{\"thumbnail\":{\"name\":\"thumbnail_mqdefault_6s (1).webp\",\"hash\":\"thumbnail_mqdefault_6s_1_12fcd5ada4\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":245,\"height\":138,\"size\":3.83,\"url\":\"/uploads/thumbnail_mqdefault_6s_1_12fcd5ada4.webp\"}}', 'mqdefault_6s_1_12fcd5ada4', '.webp', 'image/webp', '6.60', '/uploads/mqdefault_6s_1_12fcd5ada4.webp', NULL, 'local', NULL, '/2/3', '2023-01-29 12:46:29.341000', '2023-01-29 12:46:29.341000', 1, 1),
(61, '40133.jpg', NULL, NULL, 320, 320, '{\"thumbnail\":{\"name\":\"thumbnail_40133.jpg\",\"hash\":\"thumbnail_40133_a520b3f1a9\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":8.4,\"url\":\"/uploads/thumbnail_40133_a520b3f1a9.jpg\"}}', '40133_a520b3f1a9', '.jpg', 'image/jpeg', '25.46', '/uploads/40133_a520b3f1a9.jpg', NULL, 'local', NULL, '/1', '2023-01-29 12:53:45.456000', '2023-01-29 12:53:45.456000', 1, 1),
(62, 'yt1s.com - Karaoke  Ai Chung Tình Được Mãi  Đinh Tùng Huy  Beat Chuẩn.mp4', NULL, NULL, NULL, NULL, NULL, 'yt1s_com_Karaoke_Ai_Chung_Tinh_Duoc_Mai_Dinh_Tung_Huy_Beat_Chuan_e5ebfd8fb9', '.mp4', 'video/mp4', '32788.54', '/uploads/yt1s_com_Karaoke_Ai_Chung_Tinh_Duoc_Mai_Dinh_Tung_Huy_Beat_Chuan_e5ebfd8fb9.mp4', NULL, 'local', NULL, '/2/4', '2023-01-29 13:09:16.087000', '2023-01-29 13:09:16.087000', 1, 1),
(63, 'hqdefault.jpg', NULL, NULL, 480, 360, '{\"thumbnail\":{\"name\":\"thumbnail_hqdefault.jpg\",\"hash\":\"thumbnail_hqdefault_8f79520c70\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":208,\"height\":156,\"size\":8.29,\"url\":\"/uploads/thumbnail_hqdefault_8f79520c70.jpg\"}}', 'hqdefault_8f79520c70', '.jpg', 'image/jpeg', '28.64', '/uploads/hqdefault_8f79520c70.jpg', NULL, 'local', NULL, '/2/3', '2023-01-29 13:09:39.384000', '2023-01-29 13:09:39.384000', 1, 1),
(64, 'yt1s.com - Karaoke  Người Lạ Thoáng Qua  Đinh Tùng Huy  Beat Chuẩn.mp4', NULL, NULL, NULL, NULL, NULL, 'yt1s_com_Karaoke_Nguoi_La_Thoang_Qua_Dinh_Tung_Huy_Beat_Chuan_f2e351d793', '.mp4', 'video/mp4', '91642.16', '/uploads/yt1s_com_Karaoke_Nguoi_La_Thoang_Qua_Dinh_Tung_Huy_Beat_Chuan_f2e351d793.mp4', NULL, 'local', NULL, '/2/4', '2023-01-29 13:15:53.304000', '2023-01-29 13:15:53.304000', 1, 1),
(65, 'hqdefault.jpg', NULL, NULL, 480, 360, '{\"thumbnail\":{\"name\":\"thumbnail_hqdefault.jpg\",\"hash\":\"thumbnail_hqdefault_8a6f74e330\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":208,\"height\":156,\"size\":6.7,\"url\":\"/uploads/thumbnail_hqdefault_8a6f74e330.jpg\"}}', 'hqdefault_8a6f74e330', '.jpg', 'image/jpeg', '22.90', '/uploads/hqdefault_8a6f74e330.jpg', NULL, 'local', NULL, '/2/3', '2023-01-29 13:16:13.739000', '2023-01-29 13:16:13.739000', 1, 1),
(66, '37204.jpg', NULL, NULL, 320, 320, '{\"thumbnail\":{\"name\":\"thumbnail_37204.jpg\",\"hash\":\"thumbnail_37204_dca79ec03d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":5.72,\"url\":\"/uploads/thumbnail_37204_dca79ec03d.jpg\"}}', '37204_dca79ec03d', '.jpg', 'image/jpeg', '16.21', '/uploads/37204_dca79ec03d.jpg', NULL, 'local', NULL, '/1', '2023-01-29 13:18:45.779000', '2023-01-29 13:18:45.779000', 1, 1),
(67, 'yt1s.com - KARAOKE ERIK  yêu đương khó quá thì CHẠY VỀ KHÓC VỚI ANH  Instrumental  Beat gốc.mp4', NULL, NULL, NULL, NULL, NULL, 'yt1s_com_KARAOKE_ERIK_yeu_duong_kho_qua_thi_CHAY_VE_KHOC_VOI_ANH_Instrumental_Beat_goc_a2311d369b', '.mp4', 'video/mp4', '7488.16', '/uploads/yt1s_com_KARAOKE_ERIK_yeu_duong_kho_qua_thi_CHAY_VE_KHOC_VOI_ANH_Instrumental_Beat_goc_a2311d369b.mp4', NULL, 'local', NULL, '/2/4', '2023-01-29 13:19:54.936000', '2023-01-29 13:19:54.936000', 1, 1),
(68, 'hqdefault.jpg', NULL, NULL, 480, 360, '{\"thumbnail\":{\"name\":\"thumbnail_hqdefault.jpg\",\"hash\":\"thumbnail_hqdefault_cae75f414f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":208,\"height\":156,\"size\":8.94,\"url\":\"/uploads/thumbnail_hqdefault_cae75f414f.jpg\"}}', 'hqdefault_cae75f414f', '.jpg', 'image/jpeg', '36.03', '/uploads/hqdefault_cae75f414f.jpg', NULL, 'local', NULL, '/2/3', '2023-01-29 13:20:56.817000', '2023-01-29 13:20:56.817000', 1, 1),
(69, 'hqdefault (1).jpg', NULL, NULL, 480, 360, '{\"thumbnail\":{\"name\":\"thumbnail_hqdefault (1).jpg\",\"hash\":\"thumbnail_hqdefault_1_6e3867a70b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":208,\"height\":156,\"size\":7.92,\"url\":\"/uploads/thumbnail_hqdefault_1_6e3867a70b.jpg\"}}', 'hqdefault_1_6e3867a70b', '.jpg', 'image/jpeg', '26.22', '/uploads/hqdefault_1_6e3867a70b.jpg', NULL, 'local', NULL, '/2/3', '2023-01-29 13:23:21.095000', '2023-01-29 13:23:21.095000', 1, 1),
(70, 'yt1s.com - Có Tất Cả Nhưng Thiếu Anh  Karaoke  Erik  Beat Chuẩn _360p.mp4', NULL, NULL, NULL, NULL, NULL, 'yt1s_com_Co_Tat_Ca_Nhung_Thieu_Anh_Karaoke_Erik_Beat_Chuan_360p_2588df4bfe', '.mp4', 'video/mp4', '9703.84', '/uploads/yt1s_com_Co_Tat_Ca_Nhung_Thieu_Anh_Karaoke_Erik_Beat_Chuan_360p_2588df4bfe.mp4', NULL, 'local', NULL, '/2/4', '2023-01-29 13:23:35.554000', '2023-01-29 13:23:35.554000', 1, 1),
(71, '102776.jpg', NULL, NULL, 320, 320, '{\"thumbnail\":{\"name\":\"thumbnail_102776.jpg\",\"hash\":\"thumbnail_102776_ccf775144c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":6.33,\"url\":\"/uploads/thumbnail_102776_ccf775144c.jpg\"}}', '102776_ccf775144c', '.jpg', 'image/jpeg', '18.43', '/uploads/102776_ccf775144c.jpg', NULL, 'local', NULL, '/1', '2023-01-29 13:25:44.584000', '2023-01-29 13:25:44.584000', 1, 1),
(72, 'hqdefault.jpg', NULL, NULL, 480, 360, '{\"thumbnail\":{\"name\":\"thumbnail_hqdefault.jpg\",\"hash\":\"thumbnail_hqdefault_4ac8705e7b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":208,\"height\":156,\"size\":6.95,\"url\":\"/uploads/thumbnail_hqdefault_4ac8705e7b.jpg\"}}', 'hqdefault_4ac8705e7b', '.jpg', 'image/jpeg', '24.75', '/uploads/hqdefault_4ac8705e7b.jpg', NULL, 'local', NULL, '/2/3', '2023-01-29 13:26:52.989000', '2023-01-29 13:26:52.989000', 1, 1),
(73, 'BÊN TRÊN TẦNG LẦU - TĂNG DUY TÂN  [ KARAOKE REMIX BEAT CHUẨN ].mp4', NULL, NULL, NULL, NULL, NULL, 'BEN_TREN_TANG_LAU_TANG_DUY_TAN_KARAOKE_REMIX_BEAT_CHUAN_1580f67880', '.mp4', 'video/mp4', '24077.96', '/uploads/BEN_TREN_TANG_LAU_TANG_DUY_TAN_KARAOKE_REMIX_BEAT_CHUAN_1580f67880.mp4', NULL, 'local', NULL, '/2/4', '2023-01-29 13:28:12.413000', '2023-01-29 13:28:12.413000', 1, 1),
(74, 'yt1s.com - Karaoke Ánh Nắng Của Anh  Đức Phúc .mp4', NULL, NULL, NULL, NULL, NULL, 'yt1s_com_Karaoke_Anh_Nang_Cua_Anh_Duc_Phuc_78a9a3b662', '.mp4', 'video/mp4', '9314.41', '/uploads/yt1s_com_Karaoke_Anh_Nang_Cua_Anh_Duc_Phuc_78a9a3b662.mp4', NULL, 'local', NULL, '/2/3', '2023-01-29 13:43:01.366000', '2023-01-29 13:43:01.366000', 1, 1),
(75, 'yt1s.com - Karaoke Ánh Nắng Của Anh  Đức Phúc .mp4', NULL, NULL, NULL, NULL, NULL, 'yt1s_com_Karaoke_Anh_Nang_Cua_Anh_Duc_Phuc_e679e5868b', '.mp4', 'video/mp4', '9314.41', '/uploads/yt1s_com_Karaoke_Anh_Nang_Cua_Anh_Duc_Phuc_e679e5868b.mp4', NULL, 'local', NULL, '/2/4', '2023-01-29 13:43:48.527000', '2023-01-29 13:43:48.527000', 1, 1),
(76, 'hqdefault.webp', NULL, NULL, 336, 188, '{\"thumbnail\":{\"name\":\"thumbnail_hqdefault.webp\",\"hash\":\"thumbnail_hqdefault_89b7c6d6a0\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":245,\"height\":137,\"size\":9.53,\"url\":\"/uploads/thumbnail_hqdefault_89b7c6d6a0.webp\"}}', 'hqdefault_89b7c6d6a0', '.webp', 'image/webp', '17.36', '/uploads/hqdefault_89b7c6d6a0.webp', NULL, 'local', NULL, '/2/3', '2023-01-29 13:44:00.900000', '2023-01-29 13:44:00.900000', 1, 1),
(77, 'Chạy_về_khóc_với_anh_1674976429.mp4', NULL, NULL, NULL, NULL, NULL, 'Chay_ve_khoc_voi_anh_1674976429_41dc7f7a91', '.mp4', 'video/mp4', '975.11', '/uploads/Chay_ve_khoc_voi_anh_1674976429_41dc7f7a91.mp4', NULL, 'local', NULL, '/6', '2023-01-29 14:13:49.824000', '2023-01-29 14:13:49.824000', NULL, NULL),
(78, 'Chạy_về_khóc_với_anh_1675045275.mp4', NULL, NULL, NULL, NULL, NULL, 'Chay_ve_khoc_voi_anh_1675045275_047164015f', '.mp4', 'video/mp4', '1417.93', '/uploads/Chay_ve_khoc_voi_anh_1675045275_047164015f.mp4', NULL, 'local', NULL, '/6', '2023-01-30 09:21:15.872000', '2023-01-30 09:21:15.872000', NULL, NULL),
(79, 'Chạy_về_khóc_với_anh_1675045426.mp4', NULL, NULL, NULL, NULL, NULL, 'Chay_ve_khoc_voi_anh_1675045426_0084193b9d', '.mp4', 'video/mp4', '3655.06', '/uploads/Chay_ve_khoc_voi_anh_1675045426_0084193b9d.mp4', NULL, 'local', NULL, '/6', '2023-01-30 09:23:46.863000', '2023-01-30 09:23:46.863000', NULL, NULL),
(80, 'Chạy_về_khóc_với_anh_1675045515.mp4', NULL, NULL, NULL, NULL, NULL, 'Chay_ve_khoc_voi_anh_1675045515_523bb0edff', '.mp4', 'video/mp4', '974.49', '/uploads/Chay_ve_khoc_voi_anh_1675045515_523bb0edff.mp4', NULL, 'local', NULL, '/6', '2023-01-30 09:25:15.153000', '2023-01-30 09:25:15.153000', NULL, NULL),
(81, 'Chạy_về_khóc_với_anh_1675045825.mp4', NULL, NULL, NULL, NULL, NULL, 'Chay_ve_khoc_voi_anh_1675045825_2b0caf3524', '.mp4', 'video/mp4', '8365.45', '/uploads/Chay_ve_khoc_voi_anh_1675045825_2b0caf3524.mp4', NULL, 'local', NULL, '/6', '2023-01-30 09:30:26.152000', '2023-01-30 09:30:26.152000', NULL, NULL),
(82, 'Ánh_nắng_của_anh_1675218374.mp4', NULL, NULL, NULL, NULL, NULL, 'Anh_nang_cua_anh_1675218374_9a4d88ccd8', '.mp4', 'video/mp4', '5852.43', '/uploads/Anh_nang_cua_anh_1675218374_9a4d88ccd8.mp4', NULL, 'local', NULL, '/6', '2023-02-01 09:26:14.467000', '2023-02-01 09:26:14.467000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files_folder_links`
--

INSERT INTO `files_folder_links` (`id`, `file_id`, `folder_id`, `file_order`) VALUES
(3, 3, 1, 3),
(4, 4, 1, 4),
(5, 5, 1, 5),
(6, 6, 3, 1),
(7, 7, 4, 1),
(8, 8, 1, 6),
(9, 9, 4, 2),
(11, 11, 3, 2),
(12, 12, 4, 3),
(13, 13, 3, 3),
(14, 14, 4, 4),
(17, 17, 3, 4),
(18, 18, 5, 1),
(19, 19, 5, 2),
(20, 20, 5, 3),
(21, 21, 5, 4),
(22, 22, 5, 5),
(23, 23, 4, 5),
(24, 24, 3, 5),
(25, 25, 1, 7),
(26, 26, 1, 8),
(27, 27, 4, 6),
(30, 30, 3, 6),
(31, 31, 6, 1),
(32, 32, 6, 2),
(33, 33, 6, 3),
(34, 34, 6, 4),
(35, 35, 6, 5),
(36, 36, 6, 6),
(37, 37, 6, 7),
(38, 38, 6, 8),
(39, 39, 6, 9),
(40, 40, 6, 10),
(41, 41, 6, 11),
(42, 42, 6, 12),
(43, 43, 6, 13),
(44, 44, 6, 14),
(45, 45, 6, 15),
(46, 46, 6, 16),
(47, 47, 6, 17),
(48, 48, 6, 18),
(49, 49, 6, 19),
(50, 50, 3, 7),
(51, 51, 4, 7),
(52, 52, 3, 8),
(53, 53, 1, 9),
(54, 54, 3, 9),
(55, 55, 4, 8),
(56, 56, 6, 20),
(57, 57, 1, 10),
(58, 58, 4, 9),
(59, 59, 3, 10),
(62, 61, 1, 11),
(63, 62, 4, 10),
(64, 63, 3, 11),
(65, 64, 4, 11),
(66, 65, 3, 12),
(67, 66, 1, 12),
(68, 67, 4, 12),
(69, 68, 3, 13),
(70, 69, 3, 14),
(71, 70, 4, 13),
(72, 71, 1, 13),
(73, 72, 3, 15),
(74, 73, 4, 14),
(75, 74, 3, 16),
(76, 75, 4, 15),
(77, 76, 3, 17),
(78, 77, 6, 21),
(79, 78, 6, 22),
(80, 79, 6, 23),
(81, 80, 6, 24),
(82, 81, 6, 25),
(83, 82, 6, 26);

-- --------------------------------------------------------

--
-- Table structure for table `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(3, 3, 2, 'api::singer.singer', 'avatar', 1),
(4, 4, 1, 'api::singer.singer', 'avatar', 1),
(5, 5, 3, 'api::singer.singer', 'avatar', 1),
(8, 8, 4, 'api::singer.singer', 'avatar', 1),
(23, 18, 1, 'api::image-slide.image-slide', 'image', 1),
(24, 19, 2, 'api::image-slide.image-slide', 'image', 1),
(25, 20, 3, 'api::image-slide.image-slide', 'image', 1),
(26, 21, 4, 'api::image-slide.image-slide', 'image', 1),
(27, 22, 5, 'api::image-slide.image-slide', 'image', 1),
(30, 25, 5, 'api::singer.singer', 'avatar', 1),
(31, 26, 6, 'api::singer.singer', 'avatar', 1),
(45, 46, 4, 'api::my-song.my-song', 'video', 1),
(56, 47, 5, 'api::my-song.my-song', 'video', 1),
(57, 48, 6, 'api::my-song.my-song', 'video', 1),
(58, 49, 7, 'api::my-song.my-song', 'video', 1),
(63, 53, 7, 'api::singer.singer', 'avatar', 1),
(72, 56, 8, 'api::my-song.my-song', 'video', 1),
(73, 7, 1, 'api::song.song', 'media', 1),
(74, 6, 1, 'api::song.song', 'image', 1),
(79, 23, 5, 'api::song.song', 'media', 1),
(80, 52, 5, 'api::song.song', 'image', 1),
(81, 27, 6, 'api::song.song', 'media', 1),
(82, 30, 6, 'api::song.song', 'image', 1),
(83, 9, 2, 'api::song.song', 'media', 1),
(84, 11, 2, 'api::song.song', 'image', 1),
(85, 12, 3, 'api::song.song', 'media', 1),
(86, 13, 3, 'api::song.song', 'image', 1),
(87, 57, 8, 'api::singer.singer', 'avatar', 1),
(88, 51, 7, 'api::song.song', 'media', 1),
(89, 50, 7, 'api::song.song', 'image', 1),
(90, 55, 8, 'api::song.song', 'media', 1),
(91, 54, 8, 'api::song.song', 'image', 1),
(92, 58, 9, 'api::song.song', 'media', 1),
(93, 59, 9, 'api::song.song', 'image', 1),
(95, 61, 9, 'api::singer.singer', 'avatar', 1),
(96, 62, 10, 'api::song.song', 'media', 1),
(97, 63, 10, 'api::song.song', 'image', 1),
(98, 64, 11, 'api::song.song', 'media', 1),
(99, 65, 11, 'api::song.song', 'image', 1),
(100, 66, 10, 'api::singer.singer', 'avatar', 1),
(101, 67, 12, 'api::song.song', 'media', 1),
(102, 68, 12, 'api::song.song', 'image', 1),
(103, 70, 13, 'api::song.song', 'media', 1),
(104, 69, 13, 'api::song.song', 'image', 1),
(105, 71, 11, 'api::singer.singer', 'avatar', 1),
(106, 73, 14, 'api::song.song', 'media', 1),
(107, 72, 14, 'api::song.song', 'image', 1),
(108, 75, 15, 'api::song.song', 'media', 1),
(109, 76, 15, 'api::song.song', 'image', 1),
(111, 78, 10, 'api::my-song.my-song', 'video', 1),
(112, 79, 11, 'api::my-song.my-song', 'video', 1),
(113, 80, 12, 'api::my-song.my-song', 'video', 1),
(114, 81, 13, 'api::my-song.my-song', 'video', 1),
(115, 82, 14, 'api::my-song.my-song', 'video', 1);

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2023-01-09 22:22:42.218000', '2023-01-09 22:22:42.218000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_slides`
--

CREATE TABLE `image_slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image_slides`
--

INSERT INTO `image_slides` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, '2023-01-14 11:31:17.228000', '2023-01-14 11:31:43.024000', '2023-01-14 11:31:43.021000', 1, 1),
(2, '2023-01-14 11:31:36.718000', '2023-01-14 11:31:39.369000', '2023-01-14 11:31:39.365000', 1, 1),
(3, '2023-01-14 11:31:56.109000', '2023-01-14 11:31:56.837000', '2023-01-14 11:31:56.834000', 1, 1),
(4, '2023-01-14 11:32:12.501000', '2023-01-14 11:32:13.195000', '2023-01-14 11:32:13.193000', 1, 1),
(5, '2023-01-14 11:32:28.425000', '2023-01-14 14:01:51.446000', '2023-01-14 14:01:51.443000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_songs`
--

CREATE TABLE `my_songs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `my_songs`
--

INSERT INTO `my_songs` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `name`) VALUES
(4, '2023-01-27 22:11:15.976000', '2023-01-27 22:11:15.976000', '2023-01-27 22:11:15.970000', NULL, NULL, 'Hết_thương_cạn_nhớ_1674832275'),
(5, '2023-01-28 10:07:14.424000', '2023-01-28 10:07:14.424000', '2023-01-28 10:07:14.419000', NULL, NULL, 'Hơn_cả_yêu_1674875234'),
(6, '2023-01-28 14:54:47.886000', '2023-01-28 14:54:47.886000', '2023-01-28 14:54:47.883000', NULL, NULL, 'Đánh_mất_em_1674892487'),
(7, '2023-01-28 19:49:31.374000', '2023-01-28 19:49:31.374000', '2023-01-28 19:49:31.367000', NULL, NULL, 'Hết_thương_cạn_nhớ_1674910171'),
(8, '2023-01-29 10:55:29.120000', '2023-01-29 10:55:29.120000', '2023-01-29 10:55:29.116000', NULL, NULL, 'Hết_thương_cạn_nhớ_1674964528'),
(10, '2023-01-30 09:21:16.078000', '2023-01-30 09:21:16.078000', '2023-01-30 09:21:16.074000', NULL, NULL, 'Chạy_về_khóc_với_anh_1675045275'),
(11, '2023-01-30 09:23:46.976000', '2023-01-30 09:23:46.976000', '2023-01-30 09:23:46.969000', NULL, NULL, 'Chạy_về_khóc_với_anh_1675045426'),
(12, '2023-01-30 09:25:15.520000', '2023-01-30 09:25:15.520000', '2023-01-30 09:25:15.517000', NULL, NULL, 'Chạy_về_khóc_với_anh_1675045515'),
(13, '2023-01-30 09:30:26.251000', '2023-01-30 09:30:26.251000', '2023-01-30 09:30:26.242000', NULL, NULL, 'Chạy_về_khóc_với_anh_1675045826'),
(14, '2023-02-01 09:26:14.858000', '2023-02-01 09:26:14.858000', '2023-02-01 09:26:14.854000', NULL, NULL, 'Ánh_nắng_của_anh_1675218374');

-- --------------------------------------------------------

--
-- Table structure for table `my_songs_song_links`
--

CREATE TABLE `my_songs_song_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `my_song_id` int(10) UNSIGNED DEFAULT NULL,
  `song_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `my_songs_song_links`
--

INSERT INTO `my_songs_song_links` (`id`, `my_song_id`, `song_id`) VALUES
(4, 4, 1),
(5, 5, 3),
(6, 6, 2),
(7, 7, 1),
(8, 8, 1),
(10, 10, 12),
(11, 11, 12),
(12, 12, 12),
(13, 13, 12),
(14, 14, 15);

-- --------------------------------------------------------

--
-- Table structure for table `my_songs_user_links`
--

CREATE TABLE `my_songs_user_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `my_song_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `my_songs_user_links`
--

INSERT INTO `my_songs_user_links` (`id`, `my_song_id`, `user_id`) VALUES
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(10, 10, 5),
(11, 11, 5),
(12, 12, 5),
(13, 13, 5),
(14, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `singers`
--

CREATE TABLE `singers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `information` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `singers`
--

INSERT INTO `singers` (`id`, `name`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `information`) VALUES
(1, 'Đức Phúc', '2023-01-10 20:15:38.909000', '2023-01-10 23:14:56.207000', '2023-01-10 20:15:40.788000', 1, 1, NULL),
(2, 'Mỹ Tâm', '2023-01-10 23:06:47.732000', '2023-01-10 23:14:18.402000', '2023-01-10 23:06:48.945000', 1, 1, NULL),
(3, 'Hà Anh Tuấn', '2023-01-10 23:16:15.298000', '2023-01-10 23:16:44.212000', '2023-01-10 23:16:44.209000', 1, 1, NULL),
(4, 'Quang Đăng Trần', '2023-01-11 16:22:19.106000', '2023-01-11 16:25:11.101000', '2023-01-11 16:25:11.097000', 1, 1, NULL),
(5, 'Quang Lê', '2023-01-15 22:54:13.930000', '2023-01-15 22:54:16.037000', '2023-01-15 22:54:16.033000', 1, 1, NULL),
(6, 'Lệ Quyên', '2023-01-15 23:01:49.392000', '2023-01-15 23:08:08.829000', '2023-01-15 23:08:08.825000', 1, 1, NULL),
(7, 'Soobin', '2023-01-29 10:23:44.126000', '2023-01-29 10:23:45.182000', '2023-01-29 10:23:45.179000', 1, 1, NULL),
(8, 'Phương Linh', '2023-01-29 11:13:01.370000', '2023-01-29 11:13:02.075000', '2023-01-29 11:13:02.072000', 1, 1, NULL),
(9, 'Đinh Tùng Huy', '2023-01-29 12:51:12.028000', '2023-01-29 12:53:50.864000', '2023-01-29 12:51:12.741000', 1, 1, NULL),
(10, 'Erik', '2023-01-29 13:18:47.894000', '2023-01-29 13:18:48.561000', '2023-01-29 13:18:48.559000', 1, 1, NULL),
(11, 'Tăng Duy Tân', '2023-01-29 13:25:46.814000', '2023-01-29 13:25:47.458000', '2023-01-29 13:25:47.456000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lyrics` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `name`, `lyrics`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `genre`) VALUES
(1, 'Hết thương cạn nhớ', NULL, '2023-01-11 14:01:33.258000', '2023-01-29 11:03:10.337000', '2023-01-11 14:01:35.133000', 1, 1, 'YOUNG_MUSIC'),
(2, 'Đánh mất em', NULL, '2023-01-11 16:24:55.774000', '2023-01-29 11:04:05.799000', '2023-01-11 16:25:03.711000', 1, 1, 'YOUNG_MUSIC'),
(3, 'Hơn cả yêu', NULL, '2023-01-11 20:27:12.559000', '2023-01-29 11:06:53.254000', '2023-01-11 20:27:13.753000', 1, 1, 'YOUNG_MUSIC'),
(5, 'Sầu tím thiệp hồng', NULL, '2023-01-15 22:53:33.238000', '2023-01-29 11:03:52.262000', '2023-01-15 22:54:25.923000', 1, 1, 'LYRICAL_MUSIC'),
(6, 'Tình lỡ', NULL, '2023-01-15 23:05:34.510000', '2023-01-29 11:03:59.574000', '2023-01-15 23:05:37.801000', 1, 1, 'LYRICAL_MUSIC'),
(7, 'Cơn mưa tình yêu', NULL, '2023-01-29 10:17:26.655000', '2023-01-29 11:13:10.717000', '2023-01-29 10:17:37.639000', 1, 1, 'YOUNG_MUSIC'),
(8, 'BlackJack', NULL, '2023-01-29 10:27:51.889000', '2023-01-29 12:40:25.932000', '2023-01-29 10:27:52.978000', 1, 1, 'RAP_MUSIC'),
(9, 'Qua đêm nay', NULL, '2023-01-29 12:46:35.967000', '2023-01-29 12:46:37.008000', '2023-01-29 12:46:37.006000', 1, 1, 'YOUNG_MUSIC'),
(10, 'Ai chung tình được mãi', NULL, '2023-01-29 13:09:42.329000', '2023-01-29 13:09:43.384000', '2023-01-29 13:09:43.381000', 1, 1, 'YOUNG_MUSIC'),
(11, 'Người lạ thoáng qua', NULL, '2023-01-29 13:16:15.833000', '2023-01-29 13:16:16.749000', '2023-01-29 13:16:16.747000', 1, 1, 'YOUNG_MUSIC'),
(12, 'Chạy về khóc với anh', NULL, '2023-01-29 13:21:01.482000', '2023-01-29 13:21:02.319000', '2023-01-29 13:21:02.314000', 1, 1, 'YOUNG_MUSIC'),
(13, 'Có tất cả nhưng thiếu anh', NULL, '2023-01-29 13:23:37.534000', '2023-01-29 13:23:38.360000', '2023-01-29 13:23:38.357000', 1, 1, 'YOUNG_MUSIC'),
(14, 'Bên trên tầng lầu', NULL, '2023-01-29 13:28:16.534000', '2023-01-29 13:28:18.169000', '2023-01-29 13:28:18.165000', 1, 1, 'YOUNG_MUSIC'),
(15, 'Ánh nắng của anh', NULL, '2023-01-29 13:44:12.575000', '2023-01-29 13:44:13.563000', '2023-01-29 13:44:13.559000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `songs_singers_links`
--

CREATE TABLE `songs_singers_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `song_id` int(10) UNSIGNED DEFAULT NULL,
  `singer_id` int(10) UNSIGNED DEFAULT NULL,
  `singer_order` int(10) UNSIGNED DEFAULT NULL,
  `song_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs_singers_links`
--

INSERT INTO `songs_singers_links` (`id`, `song_id`, `singer_id`, `singer_order`, `song_order`) VALUES
(1, 7, 3, 1, 0),
(5, 1, 1, 0, 0),
(6, 8, 7, 0, 0),
(7, 5, 5, 0, 1),
(8, 5, 6, 0, 1),
(9, 6, 6, 0, 2),
(10, 2, 4, 0, 1),
(11, 3, 1, 0, 1),
(12, 7, 8, 2, 1),
(13, 9, 3, 1, 1),
(14, 9, 8, 2, 2),
(15, 10, 9, 1, 1),
(16, 11, 9, 1, 2),
(17, 12, 10, 1, 1),
(18, 13, 10, 1, 2),
(19, 14, 11, 1, 1),
(20, 15, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `song_histories`
--

CREATE TABLE `song_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `song_histories`
--

INSERT INTO `song_histories` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(27, '2023-01-15 18:19:52.733000', '2023-01-15 18:19:52.733000', '2023-01-15 18:19:52.730000', NULL, NULL),
(28, '2023-01-15 18:21:24.308000', '2023-01-15 18:21:24.308000', '2023-01-15 18:21:24.304000', NULL, NULL),
(31, '2023-01-15 21:46:35.808000', '2023-01-15 21:46:35.808000', '2023-01-15 21:46:35.794000', NULL, NULL),
(33, '2023-01-15 21:46:41.864000', '2023-01-15 21:46:41.864000', '2023-01-15 21:46:41.850000', NULL, NULL),
(39, '2023-01-15 21:53:50.997000', '2023-01-15 21:53:50.997000', '2023-01-15 21:53:50.992000', NULL, NULL),
(40, '2023-01-15 21:54:57.746000', '2023-01-15 21:54:57.746000', '2023-01-15 21:54:57.742000', NULL, NULL),
(41, '2023-01-15 21:54:59.847000', '2023-01-15 21:54:59.847000', '2023-01-15 21:54:59.839000', NULL, NULL),
(42, '2023-01-15 21:55:01.437000', '2023-01-15 21:55:01.437000', '2023-01-15 21:55:01.430000', NULL, NULL),
(43, '2023-01-15 21:55:03.102000', '2023-01-15 21:55:03.102000', '2023-01-15 21:55:03.100000', NULL, NULL),
(44, '2023-01-15 21:55:05.123000', '2023-01-15 21:55:05.123000', '2023-01-15 21:55:05.118000', NULL, NULL),
(60, '2023-01-16 09:47:39.195000', '2023-01-16 09:47:39.195000', '2023-01-16 09:47:39.184000', NULL, NULL),
(61, '2023-01-16 10:47:55.618000', '2023-01-16 10:47:55.618000', '2023-01-16 10:47:55.603000', NULL, NULL),
(62, '2023-01-16 21:17:05.375000', '2023-01-16 21:17:05.375000', '2023-01-16 21:17:05.054000', NULL, NULL),
(63, '2023-01-16 21:30:40.595000', '2023-01-16 21:30:40.595000', '2023-01-16 21:30:40.581000', NULL, NULL),
(64, '2023-01-16 21:32:45.120000', '2023-01-16 21:32:45.120000', '2023-01-16 21:32:45.105000', NULL, NULL),
(65, '2023-01-16 21:36:30.336000', '2023-01-16 21:36:30.336000', '2023-01-16 21:36:30.327000', NULL, NULL),
(66, '2023-01-16 21:41:13.994000', '2023-01-16 21:41:13.994000', '2023-01-16 21:41:13.984000', NULL, NULL),
(67, '2023-01-16 21:44:15.370000', '2023-01-16 21:44:15.370000', '2023-01-16 21:44:15.357000', NULL, NULL),
(68, '2023-01-16 21:47:22.207000', '2023-01-16 21:47:22.207000', '2023-01-16 21:47:22.197000', NULL, NULL),
(69, '2023-01-16 21:59:30.484000', '2023-01-16 21:59:30.484000', '2023-01-16 21:59:30.471000', NULL, NULL),
(70, '2023-01-16 21:59:59.678000', '2023-01-16 21:59:59.678000', '2023-01-16 21:59:59.666000', NULL, NULL),
(71, '2023-01-16 22:00:03.295000', '2023-01-16 22:00:03.295000', '2023-01-16 22:00:03.270000', NULL, NULL),
(72, '2023-01-16 22:00:34.547000', '2023-01-16 22:00:34.547000', '2023-01-16 22:00:34.530000', NULL, NULL),
(73, '2023-01-16 22:01:18.664000', '2023-01-16 22:01:18.664000', '2023-01-16 22:01:18.640000', NULL, NULL),
(74, '2023-01-16 22:03:31.007000', '2023-01-16 22:03:31.007000', '2023-01-16 22:03:30.994000', NULL, NULL),
(75, '2023-01-16 22:04:26.992000', '2023-01-16 22:04:26.992000', '2023-01-16 22:04:26.972000', NULL, NULL),
(76, '2023-01-16 22:04:56.534000', '2023-01-16 22:04:56.534000', '2023-01-16 22:04:56.527000', NULL, NULL),
(77, '2023-01-16 22:06:06.339000', '2023-01-16 22:06:06.339000', '2023-01-16 22:06:06.331000', NULL, NULL),
(78, '2023-01-16 22:06:28.947000', '2023-01-16 22:06:28.947000', '2023-01-16 22:06:28.933000', NULL, NULL),
(79, '2023-01-16 22:07:04.262000', '2023-01-16 22:07:04.262000', '2023-01-16 22:07:04.252000', NULL, NULL),
(80, '2023-01-16 22:07:26.603000', '2023-01-16 22:07:26.603000', '2023-01-16 22:07:26.488000', NULL, NULL),
(81, '2023-01-16 22:21:10.316000', '2023-01-16 22:21:10.316000', '2023-01-16 22:21:10.307000', NULL, NULL),
(82, '2023-01-16 22:21:15.114000', '2023-01-16 22:21:15.114000', '2023-01-16 22:21:15.099000', NULL, NULL),
(83, '2023-01-16 22:22:48.775000', '2023-01-16 22:22:48.775000', '2023-01-16 22:22:48.768000', NULL, NULL),
(84, '2023-01-16 22:26:11.081000', '2023-01-16 22:26:11.081000', '2023-01-16 22:26:11.070000', NULL, NULL),
(85, '2023-01-16 22:27:07.487000', '2023-01-16 22:27:07.487000', '2023-01-16 22:27:07.475000', NULL, NULL),
(86, '2023-01-16 22:27:33.405000', '2023-01-16 22:27:33.405000', '2023-01-16 22:27:33.385000', NULL, NULL),
(87, '2023-01-16 22:27:42.105000', '2023-01-16 22:27:42.105000', '2023-01-16 22:27:42.098000', NULL, NULL),
(88, '2023-01-16 22:28:37.728000', '2023-01-16 22:28:37.728000', '2023-01-16 22:28:37.712000', NULL, NULL),
(89, '2023-01-16 22:29:57.963000', '2023-01-16 22:29:57.963000', '2023-01-16 22:29:57.868000', NULL, NULL),
(90, '2023-01-16 22:47:13.878000', '2023-01-16 22:47:13.878000', '2023-01-16 22:47:13.858000', NULL, NULL),
(91, '2023-01-16 22:47:27.212000', '2023-01-16 22:47:27.212000', '2023-01-16 22:47:27.165000', NULL, NULL),
(92, '2023-01-16 22:48:34.719000', '2023-01-16 22:48:34.719000', '2023-01-16 22:48:34.698000', NULL, NULL),
(93, '2023-01-16 22:48:58.889000', '2023-01-16 22:48:58.889000', '2023-01-16 22:48:58.879000', NULL, NULL),
(94, '2023-01-16 22:49:51.676000', '2023-01-16 22:49:51.676000', '2023-01-16 22:49:51.667000', NULL, NULL),
(95, '2023-01-16 22:50:03.672000', '2023-01-16 22:50:03.672000', '2023-01-16 22:50:03.650000', NULL, NULL),
(96, '2023-01-16 22:51:34.403000', '2023-01-16 22:51:34.403000', '2023-01-16 22:51:34.384000', NULL, NULL),
(97, '2023-01-17 22:46:03.645000', '2023-01-17 22:46:03.645000', '2023-01-17 22:46:03.640000', NULL, NULL),
(98, '2023-01-18 22:04:34.545000', '2023-01-18 22:04:34.545000', '2023-01-18 22:04:34.536000', NULL, NULL),
(99, '2023-01-18 22:04:38.741000', '2023-01-18 22:04:38.741000', '2023-01-18 22:04:38.737000', NULL, NULL),
(100, '2023-01-18 22:05:13.837000', '2023-01-18 22:05:13.837000', '2023-01-18 22:05:13.828000', NULL, NULL),
(101, '2023-01-20 20:18:56.514000', '2023-01-20 20:18:56.514000', '2023-01-20 20:18:56.509000', NULL, NULL),
(102, '2023-01-20 20:19:37.551000', '2023-01-20 20:19:37.551000', '2023-01-20 20:19:37.540000', NULL, NULL),
(103, '2023-01-20 20:21:09.161000', '2023-01-20 20:21:09.161000', '2023-01-20 20:21:09.154000', NULL, NULL),
(104, '2023-01-20 20:21:58.753000', '2023-01-20 20:21:58.753000', '2023-01-20 20:21:58.737000', NULL, NULL),
(105, '2023-01-20 20:22:25.578000', '2023-01-20 20:22:25.578000', '2023-01-20 20:22:25.570000', NULL, NULL),
(106, '2023-01-20 20:24:04.301000', '2023-01-20 20:24:04.301000', '2023-01-20 20:24:04.296000', NULL, NULL),
(107, '2023-01-20 20:26:09.702000', '2023-01-20 20:26:09.702000', '2023-01-20 20:26:09.693000', NULL, NULL),
(108, '2023-01-20 20:27:51.216000', '2023-01-20 20:27:51.216000', '2023-01-20 20:27:51.197000', NULL, NULL),
(109, '2023-01-20 20:27:58.763000', '2023-01-20 20:27:58.763000', '2023-01-20 20:27:58.755000', NULL, NULL),
(110, '2023-01-20 20:29:57.638000', '2023-01-20 20:29:57.638000', '2023-01-20 20:29:57.632000', NULL, NULL),
(111, '2023-01-20 20:31:58.227000', '2023-01-20 20:31:58.227000', '2023-01-20 20:31:58.220000', NULL, NULL),
(112, '2023-01-20 20:32:08.265000', '2023-01-20 20:32:08.265000', '2023-01-20 20:32:08.258000', NULL, NULL),
(113, '2023-01-20 20:33:16.389000', '2023-01-20 20:33:16.389000', '2023-01-20 20:33:16.379000', NULL, NULL),
(114, '2023-01-20 20:34:03.216000', '2023-01-20 20:34:03.216000', '2023-01-20 20:34:03.210000', NULL, NULL),
(115, '2023-01-20 20:34:19.933000', '2023-01-20 20:34:19.933000', '2023-01-20 20:34:19.927000', NULL, NULL),
(116, '2023-01-20 20:34:39.640000', '2023-01-20 20:34:39.640000', '2023-01-20 20:34:39.626000', NULL, NULL),
(117, '2023-01-20 20:34:55.964000', '2023-01-20 20:34:55.964000', '2023-01-20 20:34:55.961000', NULL, NULL),
(118, '2023-01-20 20:36:15.701000', '2023-01-20 20:36:15.701000', '2023-01-20 20:36:15.693000', NULL, NULL),
(119, '2023-01-20 20:37:17.353000', '2023-01-20 20:37:17.353000', '2023-01-20 20:37:17.348000', NULL, NULL),
(120, '2023-01-20 20:37:38.773000', '2023-01-20 20:37:38.773000', '2023-01-20 20:37:38.763000', NULL, NULL),
(121, '2023-01-20 20:38:09.267000', '2023-01-20 20:38:09.267000', '2023-01-20 20:38:09.262000', NULL, NULL),
(122, '2023-01-24 22:06:41.554000', '2023-01-24 22:06:41.554000', '2023-01-24 22:06:41.536000', NULL, NULL),
(123, '2023-01-24 22:18:08.734000', '2023-01-24 22:18:08.734000', '2023-01-24 22:18:08.726000', NULL, NULL),
(124, '2023-01-24 22:43:25.106000', '2023-01-24 22:43:25.106000', '2023-01-24 22:43:25.098000', NULL, NULL),
(125, '2023-01-24 22:45:09.917000', '2023-01-24 22:45:09.917000', '2023-01-24 22:45:09.907000', NULL, NULL),
(126, '2023-01-24 22:46:29.470000', '2023-01-24 22:46:29.470000', '2023-01-24 22:46:29.461000', NULL, NULL),
(127, '2023-01-24 22:46:38.828000', '2023-01-24 22:46:38.828000', '2023-01-24 22:46:38.820000', NULL, NULL),
(128, '2023-01-24 22:47:33.650000', '2023-01-24 22:47:33.650000', '2023-01-24 22:47:33.643000', NULL, NULL),
(129, '2023-01-24 22:48:08.568000', '2023-01-24 22:48:08.568000', '2023-01-24 22:48:08.562000', NULL, NULL),
(130, '2023-01-24 22:48:45.423000', '2023-01-24 22:48:45.423000', '2023-01-24 22:48:45.415000', NULL, NULL),
(131, '2023-01-24 22:48:55.120000', '2023-01-24 22:48:55.120000', '2023-01-24 22:48:55.113000', NULL, NULL),
(132, '2023-01-24 22:49:48.739000', '2023-01-24 22:49:48.739000', '2023-01-24 22:49:48.734000', NULL, NULL),
(133, '2023-01-24 22:49:52.514000', '2023-01-24 22:49:52.514000', '2023-01-24 22:49:52.498000', NULL, NULL),
(134, '2023-01-24 22:49:56.814000', '2023-01-24 22:49:56.814000', '2023-01-24 22:49:56.811000', NULL, NULL),
(135, '2023-01-24 22:50:04.183000', '2023-01-24 22:50:04.183000', '2023-01-24 22:50:04.172000', NULL, NULL),
(136, '2023-01-24 22:50:22.313000', '2023-01-24 22:50:22.313000', '2023-01-24 22:50:22.308000', NULL, NULL),
(137, '2023-01-24 22:50:40.679000', '2023-01-24 22:50:40.679000', '2023-01-24 22:50:40.652000', NULL, NULL),
(138, '2023-01-24 22:50:45.733000', '2023-01-24 22:50:45.733000', '2023-01-24 22:50:45.725000', NULL, NULL),
(139, '2023-01-24 22:50:59.059000', '2023-01-24 22:50:59.059000', '2023-01-24 22:50:59.053000', NULL, NULL),
(140, '2023-01-24 22:51:09.618000', '2023-01-24 22:51:09.618000', '2023-01-24 22:51:09.611000', NULL, NULL),
(141, '2023-01-24 22:51:15.549000', '2023-01-24 22:51:15.549000', '2023-01-24 22:51:15.538000', NULL, NULL),
(142, '2023-01-24 22:51:22.036000', '2023-01-24 22:51:22.036000', '2023-01-24 22:51:22.025000', NULL, NULL),
(143, '2023-01-24 22:51:27.780000', '2023-01-24 22:51:27.780000', '2023-01-24 22:51:27.769000', NULL, NULL),
(144, '2023-01-24 22:51:35.851000', '2023-01-24 22:51:35.851000', '2023-01-24 22:51:35.847000', NULL, NULL),
(145, '2023-01-24 22:51:39.602000', '2023-01-24 22:51:39.602000', '2023-01-24 22:51:39.596000', NULL, NULL),
(146, '2023-01-24 22:51:46.260000', '2023-01-24 22:51:46.260000', '2023-01-24 22:51:46.253000', NULL, NULL),
(147, '2023-01-24 22:51:50.334000', '2023-01-24 22:51:50.334000', '2023-01-24 22:51:50.326000', NULL, NULL),
(148, '2023-01-24 22:51:56.966000', '2023-01-24 22:51:56.966000', '2023-01-24 22:51:56.953000', NULL, NULL),
(149, '2023-01-24 22:52:01.530000', '2023-01-24 22:52:01.530000', '2023-01-24 22:52:01.526000', NULL, NULL),
(150, '2023-01-24 22:52:53.090000', '2023-01-24 22:52:53.090000', '2023-01-24 22:52:53.083000', NULL, NULL),
(151, '2023-01-24 22:53:00.017000', '2023-01-24 22:53:00.017000', '2023-01-24 22:53:00.011000', NULL, NULL),
(152, '2023-01-24 22:54:17.804000', '2023-01-24 22:54:17.804000', '2023-01-24 22:54:17.797000', NULL, NULL),
(153, '2023-01-24 22:54:27.272000', '2023-01-24 22:54:27.272000', '2023-01-24 22:54:27.264000', NULL, NULL),
(154, '2023-01-24 22:54:32.899000', '2023-01-24 22:54:32.899000', '2023-01-24 22:54:32.889000', NULL, NULL),
(155, '2023-01-24 22:54:55.259000', '2023-01-24 22:54:55.259000', '2023-01-24 22:54:55.241000', NULL, NULL),
(156, '2023-01-24 22:55:01.910000', '2023-01-24 22:55:01.910000', '2023-01-24 22:55:01.897000', NULL, NULL),
(176, '2023-01-25 14:26:25.912000', '2023-01-25 14:26:25.912000', '2023-01-25 14:26:25.907000', NULL, NULL),
(177, '2023-01-25 15:46:03.723000', '2023-01-25 15:46:03.723000', '2023-01-25 15:46:03.719000', NULL, NULL),
(178, '2023-01-25 16:11:18.612000', '2023-01-25 16:11:18.612000', '2023-01-25 16:11:18.608000', NULL, NULL),
(179, '2023-01-25 16:32:25.439000', '2023-01-25 16:32:25.439000', '2023-01-25 16:32:25.437000', NULL, NULL),
(180, '2023-01-25 16:32:28.826000', '2023-01-25 16:32:28.826000', '2023-01-25 16:32:28.820000', NULL, NULL),
(181, '2023-01-25 16:32:32.357000', '2023-01-25 16:32:32.357000', '2023-01-25 16:32:32.345000', NULL, NULL),
(182, '2023-01-25 16:32:35.394000', '2023-01-25 16:32:35.394000', '2023-01-25 16:32:35.384000', NULL, NULL),
(183, '2023-01-25 16:32:41.362000', '2023-01-25 16:32:41.362000', '2023-01-25 16:32:41.352000', NULL, NULL),
(184, '2023-01-25 16:33:09.679000', '2023-01-25 16:33:09.679000', '2023-01-25 16:33:09.676000', NULL, NULL),
(185, '2023-01-25 16:33:22.213000', '2023-01-25 16:33:22.213000', '2023-01-25 16:33:22.208000', NULL, NULL),
(186, '2023-01-25 16:33:44.608000', '2023-01-25 16:33:44.608000', '2023-01-25 16:33:44.604000', NULL, NULL),
(187, '2023-01-25 19:21:07.399000', '2023-01-25 19:21:07.399000', '2023-01-25 19:21:07.396000', NULL, NULL),
(188, '2023-01-25 19:22:04.288000', '2023-01-25 19:22:04.288000', '2023-01-25 19:22:04.279000', NULL, NULL),
(189, '2023-01-25 19:28:39.018000', '2023-01-25 19:28:39.018000', '2023-01-25 19:28:39.006000', NULL, NULL),
(190, '2023-01-25 19:28:55.740000', '2023-01-25 19:28:55.740000', '2023-01-25 19:28:55.728000', NULL, NULL),
(191, '2023-01-25 19:37:11.779000', '2023-01-25 19:37:11.779000', '2023-01-25 19:37:11.773000', NULL, NULL),
(192, '2023-01-25 19:37:47.490000', '2023-01-25 19:37:47.490000', '2023-01-25 19:37:47.482000', NULL, NULL),
(193, '2023-01-25 21:38:46.247000', '2023-01-25 21:38:46.247000', '2023-01-25 21:38:46.239000', NULL, NULL),
(194, '2023-01-25 21:49:59.268000', '2023-01-25 21:49:59.268000', '2023-01-25 21:49:59.259000', NULL, NULL),
(195, '2023-01-25 21:50:31.439000', '2023-01-25 21:50:31.439000', '2023-01-25 21:50:31.427000', NULL, NULL),
(196, '2023-01-25 21:51:05.405000', '2023-01-25 21:51:05.405000', '2023-01-25 21:51:05.396000', NULL, NULL),
(197, '2023-01-25 21:51:30.728000', '2023-01-25 21:51:30.728000', '2023-01-25 21:51:30.719000', NULL, NULL),
(198, '2023-01-25 21:52:04.096000', '2023-01-25 21:52:04.096000', '2023-01-25 21:52:04.081000', NULL, NULL),
(199, '2023-01-25 21:52:40.949000', '2023-01-25 21:52:40.949000', '2023-01-25 21:52:40.939000', NULL, NULL),
(200, '2023-01-25 21:53:03.560000', '2023-01-25 21:53:03.560000', '2023-01-25 21:53:03.542000', NULL, NULL),
(201, '2023-01-25 21:54:53.523000', '2023-01-25 21:54:53.523000', '2023-01-25 21:54:53.509000', NULL, NULL),
(202, '2023-01-25 21:55:10.381000', '2023-01-25 21:55:10.381000', '2023-01-25 21:55:10.376000', NULL, NULL),
(203, '2023-01-25 22:20:17.712000', '2023-01-25 22:20:17.712000', '2023-01-25 22:20:17.706000', NULL, NULL),
(204, '2023-01-25 22:21:04.323000', '2023-01-25 22:21:04.323000', '2023-01-25 22:21:04.318000', NULL, NULL),
(205, '2023-01-25 22:22:06.697000', '2023-01-25 22:22:06.697000', '2023-01-25 22:22:06.671000', NULL, NULL),
(206, '2023-01-25 22:22:15.571000', '2023-01-25 22:22:15.571000', '2023-01-25 22:22:15.565000', NULL, NULL),
(207, '2023-01-25 22:24:32.559000', '2023-01-25 22:24:32.559000', '2023-01-25 22:24:32.552000', NULL, NULL),
(208, '2023-01-25 22:30:45.774000', '2023-01-25 22:30:45.774000', '2023-01-25 22:30:45.758000', NULL, NULL),
(209, '2023-01-26 19:30:03.305000', '2023-01-26 19:30:03.305000', '2023-01-26 19:30:03.295000', NULL, NULL),
(210, '2023-01-26 19:37:20.270000', '2023-01-26 19:37:20.270000', '2023-01-26 19:37:20.248000', NULL, NULL),
(211, '2023-01-26 19:38:46.563000', '2023-01-26 19:38:46.563000', '2023-01-26 19:38:46.553000', NULL, NULL),
(212, '2023-01-26 19:39:31.604000', '2023-01-26 19:39:31.604000', '2023-01-26 19:39:31.594000', NULL, NULL),
(213, '2023-01-26 19:39:48.361000', '2023-01-26 19:39:48.361000', '2023-01-26 19:39:48.347000', NULL, NULL),
(214, '2023-01-26 19:40:06.702000', '2023-01-26 19:40:06.702000', '2023-01-26 19:40:06.693000', NULL, NULL),
(215, '2023-01-26 19:41:06.273000', '2023-01-26 19:41:06.273000', '2023-01-26 19:41:06.268000', NULL, NULL),
(216, '2023-01-26 19:41:22.943000', '2023-01-26 19:41:22.943000', '2023-01-26 19:41:22.934000', NULL, NULL),
(217, '2023-01-26 19:42:03.734000', '2023-01-26 19:42:03.734000', '2023-01-26 19:42:03.728000', NULL, NULL),
(218, '2023-01-26 19:43:08.179000', '2023-01-26 19:43:08.179000', '2023-01-26 19:43:08.170000', NULL, NULL),
(219, '2023-01-26 19:43:42.856000', '2023-01-26 19:43:42.856000', '2023-01-26 19:43:42.845000', NULL, NULL),
(220, '2023-01-26 19:44:03.501000', '2023-01-26 19:44:03.501000', '2023-01-26 19:44:03.490000', NULL, NULL),
(221, '2023-01-26 19:45:48.765000', '2023-01-26 19:45:48.765000', '2023-01-26 19:45:48.758000', NULL, NULL),
(222, '2023-01-26 19:49:22.512000', '2023-01-26 19:49:22.512000', '2023-01-26 19:49:22.505000', NULL, NULL),
(223, '2023-01-26 20:00:15.502000', '2023-01-26 20:00:15.502000', '2023-01-26 20:00:15.496000', NULL, NULL),
(224, '2023-01-26 20:00:33.744000', '2023-01-26 20:00:33.744000', '2023-01-26 20:00:33.732000', NULL, NULL),
(225, '2023-01-26 20:02:39.667000', '2023-01-26 20:02:39.667000', '2023-01-26 20:02:39.661000', NULL, NULL),
(226, '2023-01-26 20:02:44.107000', '2023-01-26 20:02:44.107000', '2023-01-26 20:02:44.096000', NULL, NULL),
(227, '2023-01-26 20:03:54.278000', '2023-01-26 20:03:54.278000', '2023-01-26 20:03:54.270000', NULL, NULL),
(228, '2023-01-26 20:04:16.959000', '2023-01-26 20:04:16.959000', '2023-01-26 20:04:16.954000', NULL, NULL),
(229, '2023-01-26 20:04:41.583000', '2023-01-26 20:04:41.583000', '2023-01-26 20:04:41.576000', NULL, NULL),
(230, '2023-01-26 20:10:36.769000', '2023-01-26 20:10:36.769000', '2023-01-26 20:10:36.762000', NULL, NULL),
(231, '2023-01-26 20:16:17.762000', '2023-01-26 20:16:17.762000', '2023-01-26 20:16:17.753000', NULL, NULL),
(232, '2023-01-26 20:17:04.644000', '2023-01-26 20:17:04.644000', '2023-01-26 20:17:04.638000', NULL, NULL),
(233, '2023-01-26 20:34:01.223000', '2023-01-26 20:34:01.223000', '2023-01-26 20:34:01.209000', NULL, NULL),
(234, '2023-01-26 20:35:55.093000', '2023-01-26 20:35:55.093000', '2023-01-26 20:35:55.079000', NULL, NULL),
(235, '2023-01-26 20:37:14.224000', '2023-01-26 20:37:14.224000', '2023-01-26 20:37:14.216000', NULL, NULL),
(236, '2023-01-26 20:39:02.229000', '2023-01-26 20:39:02.229000', '2023-01-26 20:39:02.222000', NULL, NULL),
(237, '2023-01-26 20:40:40.160000', '2023-01-26 20:40:40.160000', '2023-01-26 20:40:40.148000', NULL, NULL),
(238, '2023-01-26 20:44:22.313000', '2023-01-26 20:44:22.313000', '2023-01-26 20:44:22.302000', NULL, NULL),
(239, '2023-01-26 20:45:06.526000', '2023-01-26 20:45:06.526000', '2023-01-26 20:45:06.518000', NULL, NULL),
(240, '2023-01-26 20:47:57.822000', '2023-01-26 20:47:57.822000', '2023-01-26 20:47:57.813000', NULL, NULL),
(241, '2023-01-26 21:15:17.337000', '2023-01-26 21:15:17.337000', '2023-01-26 21:15:17.328000', NULL, NULL),
(242, '2023-01-26 21:32:47.518000', '2023-01-26 21:32:47.518000', '2023-01-26 21:32:47.511000', NULL, NULL),
(243, '2023-01-26 21:51:02.836000', '2023-01-26 21:51:02.836000', '2023-01-26 21:51:02.827000', NULL, NULL),
(244, '2023-01-26 22:03:19.560000', '2023-01-26 22:03:19.560000', '2023-01-26 22:03:19.553000', NULL, NULL),
(245, '2023-01-26 22:31:16.313000', '2023-01-26 22:31:16.313000', '2023-01-26 22:31:16.304000', NULL, NULL),
(246, '2023-01-26 22:31:32.984000', '2023-01-26 22:31:32.984000', '2023-01-26 22:31:32.976000', NULL, NULL),
(247, '2023-01-26 22:32:57.758000', '2023-01-26 22:32:57.758000', '2023-01-26 22:32:57.751000', NULL, NULL),
(248, '2023-01-26 22:33:19.623000', '2023-01-26 22:33:19.623000', '2023-01-26 22:33:19.618000', NULL, NULL),
(249, '2023-01-26 22:34:13.966000', '2023-01-26 22:34:13.966000', '2023-01-26 22:34:13.959000', NULL, NULL),
(250, '2023-01-26 22:34:29.940000', '2023-01-26 22:34:29.940000', '2023-01-26 22:34:29.930000', NULL, NULL),
(251, '2023-01-26 22:35:39.914000', '2023-01-26 22:35:39.914000', '2023-01-26 22:35:39.905000', NULL, NULL),
(252, '2023-01-26 22:36:46.446000', '2023-01-26 22:36:46.446000', '2023-01-26 22:36:46.439000', NULL, NULL),
(253, '2023-01-26 22:45:40.554000', '2023-01-26 22:45:40.554000', '2023-01-26 22:45:40.549000', NULL, NULL),
(254, '2023-01-26 22:46:40.090000', '2023-01-26 22:46:40.090000', '2023-01-26 22:46:40.083000', NULL, NULL),
(255, '2023-01-26 22:47:32.751000', '2023-01-26 22:47:32.751000', '2023-01-26 22:47:32.743000', NULL, NULL),
(256, '2023-01-26 22:47:59.860000', '2023-01-26 22:47:59.860000', '2023-01-26 22:47:59.852000', NULL, NULL),
(257, '2023-01-26 22:49:15.046000', '2023-01-26 22:49:15.046000', '2023-01-26 22:49:15.040000', NULL, NULL),
(258, '2023-01-26 22:49:31.290000', '2023-01-26 22:49:31.290000', '2023-01-26 22:49:31.285000', NULL, NULL),
(259, '2023-01-26 22:50:02.229000', '2023-01-26 22:50:02.229000', '2023-01-26 22:50:02.225000', NULL, NULL),
(260, '2023-01-26 22:50:37.457000', '2023-01-26 22:50:37.457000', '2023-01-26 22:50:37.448000', NULL, NULL),
(261, '2023-01-26 22:51:15.453000', '2023-01-26 22:51:15.453000', '2023-01-26 22:51:15.446000', NULL, NULL),
(262, '2023-01-26 22:52:43.515000', '2023-01-26 22:52:43.515000', '2023-01-26 22:52:43.506000', NULL, NULL),
(263, '2023-01-26 22:53:17.635000', '2023-01-26 22:53:17.635000', '2023-01-26 22:53:17.615000', NULL, NULL),
(264, '2023-01-26 22:53:46.765000', '2023-01-26 22:53:46.765000', '2023-01-26 22:53:46.761000', NULL, NULL),
(265, '2023-01-26 22:54:11.657000', '2023-01-26 22:54:11.657000', '2023-01-26 22:54:11.652000', NULL, NULL),
(266, '2023-01-26 22:54:40.830000', '2023-01-26 22:54:40.830000', '2023-01-26 22:54:40.823000', NULL, NULL),
(267, '2023-01-26 22:55:46.708000', '2023-01-26 22:55:46.708000', '2023-01-26 22:55:46.698000', NULL, NULL),
(268, '2023-01-26 22:56:32.861000', '2023-01-26 22:56:32.861000', '2023-01-26 22:56:32.850000', NULL, NULL),
(269, '2023-01-26 23:00:29.400000', '2023-01-26 23:00:29.400000', '2023-01-26 23:00:29.384000', NULL, NULL),
(270, '2023-01-26 23:02:43.928000', '2023-01-26 23:02:43.928000', '2023-01-26 23:02:43.921000', NULL, NULL),
(271, '2023-01-26 23:03:08.542000', '2023-01-26 23:03:08.542000', '2023-01-26 23:03:08.534000', NULL, NULL),
(272, '2023-01-27 19:46:44.914000', '2023-01-27 19:46:44.914000', '2023-01-27 19:46:44.905000', NULL, NULL),
(273, '2023-01-27 19:49:10.644000', '2023-01-27 19:49:10.644000', '2023-01-27 19:49:10.632000', NULL, NULL),
(274, '2023-01-27 20:35:37.265000', '2023-01-27 20:35:37.265000', '2023-01-27 20:35:37.261000', NULL, NULL),
(275, '2023-01-27 20:39:49.508000', '2023-01-27 20:39:49.508000', '2023-01-27 20:39:49.495000', NULL, NULL),
(276, '2023-01-27 20:40:35.731000', '2023-01-27 20:40:35.731000', '2023-01-27 20:40:35.721000', NULL, NULL),
(277, '2023-01-27 20:41:36.141000', '2023-01-27 20:41:36.141000', '2023-01-27 20:41:36.124000', NULL, NULL),
(278, '2023-01-27 20:43:49.053000', '2023-01-27 20:43:49.053000', '2023-01-27 20:43:49.046000', NULL, NULL),
(279, '2023-01-27 20:44:27.370000', '2023-01-27 20:44:27.370000', '2023-01-27 20:44:27.355000', NULL, NULL),
(280, '2023-01-27 20:45:10.279000', '2023-01-27 20:45:10.279000', '2023-01-27 20:45:10.265000', NULL, NULL),
(281, '2023-01-27 20:46:49.283000', '2023-01-27 20:46:49.283000', '2023-01-27 20:46:49.274000', NULL, NULL),
(282, '2023-01-27 20:49:45.485000', '2023-01-27 20:49:45.485000', '2023-01-27 20:49:45.481000', NULL, NULL),
(283, '2023-01-27 20:51:06.265000', '2023-01-27 20:51:06.265000', '2023-01-27 20:51:06.256000', NULL, NULL),
(284, '2023-01-27 20:51:32.277000', '2023-01-27 20:51:32.277000', '2023-01-27 20:51:32.267000', NULL, NULL),
(285, '2023-01-27 20:53:29.139000', '2023-01-27 20:53:29.139000', '2023-01-27 20:53:29.131000', NULL, NULL),
(286, '2023-01-27 20:54:17.172000', '2023-01-27 20:54:17.172000', '2023-01-27 20:54:17.168000', NULL, NULL),
(287, '2023-01-27 20:57:35.770000', '2023-01-27 20:57:35.770000', '2023-01-27 20:57:35.762000', NULL, NULL),
(288, '2023-01-27 21:04:10.647000', '2023-01-27 21:04:10.647000', '2023-01-27 21:04:10.636000', NULL, NULL),
(289, '2023-01-27 21:05:01.325000', '2023-01-27 21:05:01.325000', '2023-01-27 21:05:01.317000', NULL, NULL),
(290, '2023-01-27 21:07:33.433000', '2023-01-27 21:07:33.433000', '2023-01-27 21:07:33.424000', NULL, NULL),
(291, '2023-01-27 21:09:40.151000', '2023-01-27 21:09:40.151000', '2023-01-27 21:09:40.140000', NULL, NULL),
(292, '2023-01-27 21:11:34.705000', '2023-01-27 21:11:34.705000', '2023-01-27 21:11:34.694000', NULL, NULL),
(293, '2023-01-27 21:11:47.740000', '2023-01-27 21:11:47.740000', '2023-01-27 21:11:47.728000', NULL, NULL),
(294, '2023-01-27 21:12:13.272000', '2023-01-27 21:12:13.272000', '2023-01-27 21:12:13.266000', NULL, NULL),
(295, '2023-01-27 21:15:58.270000', '2023-01-27 21:15:58.270000', '2023-01-27 21:15:58.255000', NULL, NULL),
(296, '2023-01-27 21:17:42.199000', '2023-01-27 21:17:42.199000', '2023-01-27 21:17:42.190000', NULL, NULL),
(297, '2023-01-27 21:17:57.937000', '2023-01-27 21:17:57.937000', '2023-01-27 21:17:57.928000', NULL, NULL),
(298, '2023-01-27 21:19:04.262000', '2023-01-27 21:19:04.262000', '2023-01-27 21:19:04.250000', NULL, NULL),
(299, '2023-01-27 21:20:20.890000', '2023-01-27 21:20:20.890000', '2023-01-27 21:20:20.884000', NULL, NULL),
(300, '2023-01-27 21:20:53.068000', '2023-01-27 21:20:53.068000', '2023-01-27 21:20:53.058000', NULL, NULL),
(301, '2023-01-27 21:23:01.940000', '2023-01-27 21:23:01.940000', '2023-01-27 21:23:01.924000', NULL, NULL),
(302, '2023-01-27 21:24:26.782000', '2023-01-27 21:24:26.782000', '2023-01-27 21:24:26.774000', NULL, NULL),
(303, '2023-01-27 21:25:29.937000', '2023-01-27 21:25:29.937000', '2023-01-27 21:25:29.926000', NULL, NULL),
(304, '2023-01-27 21:27:10.299000', '2023-01-27 21:27:10.299000', '2023-01-27 21:27:10.292000', NULL, NULL),
(305, '2023-01-27 21:27:43.394000', '2023-01-27 21:27:43.394000', '2023-01-27 21:27:43.385000', NULL, NULL),
(306, '2023-01-27 21:36:23.137000', '2023-01-27 21:36:23.137000', '2023-01-27 21:36:23.129000', NULL, NULL),
(307, '2023-01-27 21:38:14.777000', '2023-01-27 21:38:14.777000', '2023-01-27 21:38:14.770000', NULL, NULL),
(308, '2023-01-27 21:41:18.370000', '2023-01-27 21:41:18.370000', '2023-01-27 21:41:18.349000', NULL, NULL),
(309, '2023-01-27 21:41:25.938000', '2023-01-27 21:41:25.938000', '2023-01-27 21:41:25.928000', NULL, NULL),
(310, '2023-01-27 21:43:31.883000', '2023-01-27 21:43:31.883000', '2023-01-27 21:43:31.872000', NULL, NULL),
(311, '2023-01-27 21:58:47.779000', '2023-01-27 21:58:47.779000', '2023-01-27 21:58:47.769000', NULL, NULL),
(312, '2023-01-27 22:12:03.503000', '2023-01-27 22:12:03.503000', '2023-01-27 22:12:03.496000', NULL, NULL),
(313, '2023-01-27 22:12:28.553000', '2023-01-27 22:12:28.553000', '2023-01-27 22:12:28.547000', NULL, NULL),
(314, '2023-01-27 22:25:17.673000', '2023-01-27 22:25:17.673000', '2023-01-27 22:25:17.667000', NULL, NULL),
(315, '2023-01-27 22:59:48.491000', '2023-01-27 22:59:48.491000', '2023-01-27 22:59:48.482000', NULL, NULL),
(316, '2023-01-28 09:12:47.205000', '2023-01-28 09:12:47.205000', '2023-01-28 09:12:47.195000', NULL, NULL),
(317, '2023-01-28 09:13:18.939000', '2023-01-28 09:13:18.939000', '2023-01-28 09:13:18.931000', NULL, NULL),
(318, '2023-01-28 09:20:37.207000', '2023-01-28 09:20:37.207000', '2023-01-28 09:20:37.197000', NULL, NULL),
(319, '2023-01-28 09:21:01.363000', '2023-01-28 09:21:01.363000', '2023-01-28 09:21:01.344000', NULL, NULL),
(320, '2023-01-28 09:25:08.302000', '2023-01-28 09:25:08.302000', '2023-01-28 09:25:08.282000', NULL, NULL),
(321, '2023-01-28 09:59:47.330000', '2023-01-28 09:59:47.330000', '2023-01-28 09:59:47.324000', NULL, NULL),
(322, '2023-01-28 10:00:02.644000', '2023-01-28 10:00:02.644000', '2023-01-28 10:00:02.623000', NULL, NULL),
(323, '2023-01-28 10:00:20.105000', '2023-01-28 10:00:20.105000', '2023-01-28 10:00:20.102000', NULL, NULL),
(324, '2023-01-28 10:00:52.603000', '2023-01-28 10:00:52.603000', '2023-01-28 10:00:52.595000', NULL, NULL),
(325, '2023-01-28 10:01:29.817000', '2023-01-28 10:01:29.817000', '2023-01-28 10:01:29.805000', NULL, NULL),
(326, '2023-01-28 10:06:07.986000', '2023-01-28 10:06:07.986000', '2023-01-28 10:06:07.981000', NULL, NULL),
(327, '2023-01-28 10:10:34.633000', '2023-01-28 10:10:34.633000', '2023-01-28 10:10:34.626000', NULL, NULL),
(328, '2023-01-28 10:11:18.235000', '2023-01-28 10:11:18.235000', '2023-01-28 10:11:18.217000', NULL, NULL),
(329, '2023-01-28 10:31:03.377000', '2023-01-28 10:31:03.377000', '2023-01-28 10:31:03.371000', NULL, NULL),
(330, '2023-01-28 10:31:06.003000', '2023-01-28 10:31:06.003000', '2023-01-28 10:31:05.994000', NULL, NULL),
(331, '2023-01-28 10:31:18.680000', '2023-01-28 10:31:18.680000', '2023-01-28 10:31:18.672000', NULL, NULL),
(332, '2023-01-28 10:31:20.036000', '2023-01-28 10:31:20.036000', '2023-01-28 10:31:20.032000', NULL, NULL),
(333, '2023-01-28 10:31:49.893000', '2023-01-28 10:31:49.893000', '2023-01-28 10:31:49.874000', NULL, NULL),
(334, '2023-01-28 10:33:21.447000', '2023-01-28 10:33:21.447000', '2023-01-28 10:33:21.444000', NULL, NULL),
(335, '2023-01-28 10:33:24.290000', '2023-01-28 10:33:24.290000', '2023-01-28 10:33:24.276000', NULL, NULL),
(336, '2023-01-28 10:33:51.303000', '2023-01-28 10:33:51.303000', '2023-01-28 10:33:51.294000', NULL, NULL),
(337, '2023-01-28 10:44:05.908000', '2023-01-28 10:44:05.908000', '2023-01-28 10:44:05.897000', NULL, NULL),
(338, '2023-01-28 12:33:58.060000', '2023-01-28 12:33:58.060000', '2023-01-28 12:33:58.052000', NULL, NULL),
(339, '2023-01-28 12:34:24.258000', '2023-01-28 12:34:24.258000', '2023-01-28 12:34:24.252000', NULL, NULL),
(340, '2023-01-28 13:16:00.760000', '2023-01-28 13:16:00.760000', '2023-01-28 13:16:00.749000', NULL, NULL),
(341, '2023-01-28 13:20:17.439000', '2023-01-28 13:20:17.439000', '2023-01-28 13:20:17.434000', NULL, NULL),
(342, '2023-01-28 13:20:49.622000', '2023-01-28 13:20:49.622000', '2023-01-28 13:20:49.608000', NULL, NULL),
(343, '2023-01-28 13:23:56.559000', '2023-01-28 13:23:56.559000', '2023-01-28 13:23:56.553000', NULL, NULL),
(344, '2023-01-28 13:23:59.722000', '2023-01-28 13:23:59.722000', '2023-01-28 13:23:59.714000', NULL, NULL),
(345, '2023-01-28 13:24:14.787000', '2023-01-28 13:24:14.787000', '2023-01-28 13:24:14.783000', NULL, NULL),
(346, '2023-01-28 13:24:17.077000', '2023-01-28 13:24:17.077000', '2023-01-28 13:24:17.073000', NULL, NULL),
(347, '2023-01-28 13:24:25.359000', '2023-01-28 13:24:25.359000', '2023-01-28 13:24:25.348000', NULL, NULL),
(348, '2023-01-28 13:24:57.317000', '2023-01-28 13:24:57.317000', '2023-01-28 13:24:57.313000', NULL, NULL),
(349, '2023-01-28 13:24:59.663000', '2023-01-28 13:24:59.663000', '2023-01-28 13:24:59.658000', NULL, NULL),
(350, '2023-01-28 13:25:02.632000', '2023-01-28 13:25:02.632000', '2023-01-28 13:25:02.628000', NULL, NULL),
(351, '2023-01-28 13:25:04.942000', '2023-01-28 13:25:04.942000', '2023-01-28 13:25:04.934000', NULL, NULL),
(352, '2023-01-28 13:25:27.465000', '2023-01-28 13:25:27.465000', '2023-01-28 13:25:27.458000', NULL, NULL),
(353, '2023-01-28 13:25:55.313000', '2023-01-28 13:25:55.313000', '2023-01-28 13:25:55.306000', NULL, NULL),
(354, '2023-01-28 13:27:39.440000', '2023-01-28 13:27:39.440000', '2023-01-28 13:27:39.434000', NULL, NULL),
(355, '2023-01-28 13:32:00.698000', '2023-01-28 13:32:00.698000', '2023-01-28 13:32:00.692000', NULL, NULL),
(356, '2023-01-28 13:32:10.552000', '2023-01-28 13:32:10.552000', '2023-01-28 13:32:10.544000', NULL, NULL),
(357, '2023-01-28 13:32:29.474000', '2023-01-28 13:32:29.474000', '2023-01-28 13:32:29.468000', NULL, NULL),
(358, '2023-01-28 13:38:59.140000', '2023-01-28 13:38:59.140000', '2023-01-28 13:38:59.136000', NULL, NULL),
(359, '2023-01-28 13:39:02.519000', '2023-01-28 13:39:02.519000', '2023-01-28 13:39:02.516000', NULL, NULL),
(360, '2023-01-28 13:40:04.812000', '2023-01-28 13:40:04.812000', '2023-01-28 13:40:04.800000', NULL, NULL),
(361, '2023-01-28 13:40:17.284000', '2023-01-28 13:40:17.284000', '2023-01-28 13:40:17.269000', NULL, NULL),
(362, '2023-01-28 13:40:23.584000', '2023-01-28 13:40:23.584000', '2023-01-28 13:40:23.578000', NULL, NULL),
(363, '2023-01-28 13:49:03.384000', '2023-01-28 13:49:03.384000', '2023-01-28 13:49:03.378000', NULL, NULL),
(364, '2023-01-28 13:49:07.024000', '2023-01-28 13:49:07.024000', '2023-01-28 13:49:07.019000', NULL, NULL),
(365, '2023-01-28 14:52:59.921000', '2023-01-28 14:52:59.921000', '2023-01-28 14:52:59.911000', NULL, NULL),
(366, '2023-01-28 14:53:17.782000', '2023-01-28 14:53:17.782000', '2023-01-28 14:53:17.759000', NULL, NULL),
(367, '2023-01-28 14:53:47.421000', '2023-01-28 14:53:47.421000', '2023-01-28 14:53:47.403000', NULL, NULL),
(368, '2023-01-28 14:54:23.282000', '2023-01-28 14:54:23.282000', '2023-01-28 14:54:23.275000', NULL, NULL),
(369, '2023-01-28 14:54:56.260000', '2023-01-28 14:54:56.260000', '2023-01-28 14:54:56.247000', NULL, NULL),
(370, '2023-01-28 14:57:31.282000', '2023-01-28 14:57:31.282000', '2023-01-28 14:57:31.272000', NULL, NULL),
(371, '2023-01-28 14:57:33.492000', '2023-01-28 14:57:33.492000', '2023-01-28 14:57:33.486000', NULL, NULL),
(372, '2023-01-28 15:01:33.339000', '2023-01-28 15:01:33.339000', '2023-01-28 15:01:33.328000', NULL, NULL),
(373, '2023-01-28 15:01:35.359000', '2023-01-28 15:01:35.359000', '2023-01-28 15:01:35.356000', NULL, NULL),
(374, '2023-01-28 15:01:52.601000', '2023-01-28 15:01:52.601000', '2023-01-28 15:01:52.586000', NULL, NULL),
(375, '2023-01-28 15:02:59.531000', '2023-01-28 15:02:59.531000', '2023-01-28 15:02:59.516000', NULL, NULL),
(376, '2023-01-28 15:09:24.548000', '2023-01-28 15:09:24.548000', '2023-01-28 15:09:24.539000', NULL, NULL),
(377, '2023-01-28 15:09:29.509000', '2023-01-28 15:09:29.509000', '2023-01-28 15:09:29.495000', NULL, NULL),
(378, '2023-01-28 15:09:33.103000', '2023-01-28 15:09:33.103000', '2023-01-28 15:09:33.093000', NULL, NULL),
(379, '2023-01-28 15:09:41.916000', '2023-01-28 15:09:41.916000', '2023-01-28 15:09:41.900000', NULL, NULL),
(380, '2023-01-28 15:11:12.776000', '2023-01-28 15:11:12.776000', '2023-01-28 15:11:12.764000', NULL, NULL),
(381, '2023-01-28 15:11:54.583000', '2023-01-28 15:11:54.583000', '2023-01-28 15:11:54.551000', NULL, NULL),
(382, '2023-01-28 15:12:09.939000', '2023-01-28 15:12:09.939000', '2023-01-28 15:12:09.928000', NULL, NULL),
(383, '2023-01-28 15:12:46.962000', '2023-01-28 15:12:46.962000', '2023-01-28 15:12:46.951000', NULL, NULL),
(384, '2023-01-28 15:20:44.749000', '2023-01-28 15:20:44.749000', '2023-01-28 15:20:44.738000', NULL, NULL),
(385, '2023-01-28 15:21:10.442000', '2023-01-28 15:21:10.442000', '2023-01-28 15:21:10.438000', NULL, NULL),
(386, '2023-01-28 15:21:13.203000', '2023-01-28 15:21:13.203000', '2023-01-28 15:21:13.197000', NULL, NULL),
(387, '2023-01-28 15:22:53.199000', '2023-01-28 15:22:53.199000', '2023-01-28 15:22:53.192000', NULL, NULL),
(388, '2023-01-28 15:31:50.541000', '2023-01-28 15:31:50.541000', '2023-01-28 15:31:50.533000', NULL, NULL),
(389, '2023-01-28 15:31:54.430000', '2023-01-28 15:31:54.430000', '2023-01-28 15:31:54.426000', NULL, NULL),
(390, '2023-01-28 15:33:23.733000', '2023-01-28 15:33:23.733000', '2023-01-28 15:33:23.723000', NULL, NULL),
(391, '2023-01-28 15:33:26.502000', '2023-01-28 15:33:26.502000', '2023-01-28 15:33:26.494000', NULL, NULL),
(392, '2023-01-28 15:33:44.970000', '2023-01-28 15:33:44.970000', '2023-01-28 15:33:44.960000', NULL, NULL),
(393, '2023-01-28 15:33:48.688000', '2023-01-28 15:33:48.688000', '2023-01-28 15:33:48.683000', NULL, NULL),
(394, '2023-01-28 15:33:58.924000', '2023-01-28 15:33:58.924000', '2023-01-28 15:33:58.915000', NULL, NULL),
(395, '2023-01-28 15:36:28.553000', '2023-01-28 15:36:28.553000', '2023-01-28 15:36:28.542000', NULL, NULL),
(396, '2023-01-28 15:37:42.649000', '2023-01-28 15:37:42.649000', '2023-01-28 15:37:42.641000', NULL, NULL),
(397, '2023-01-28 16:11:59.035000', '2023-01-28 16:11:59.035000', '2023-01-28 16:11:59.027000', NULL, NULL),
(398, '2023-01-28 16:12:11.797000', '2023-01-28 16:12:11.797000', '2023-01-28 16:12:11.780000', NULL, NULL),
(399, '2023-01-28 16:16:01.259000', '2023-01-28 16:16:01.259000', '2023-01-28 16:16:01.246000', NULL, NULL),
(400, '2023-01-28 16:16:03.756000', '2023-01-28 16:16:03.756000', '2023-01-28 16:16:03.740000', NULL, NULL),
(401, '2023-01-28 16:18:59.375000', '2023-01-28 16:18:59.375000', '2023-01-28 16:18:59.356000', NULL, NULL),
(402, '2023-01-28 16:19:03.168000', '2023-01-28 16:19:03.168000', '2023-01-28 16:19:03.153000', NULL, NULL),
(403, '2023-01-28 16:22:57.872000', '2023-01-28 16:22:57.872000', '2023-01-28 16:22:57.863000', NULL, NULL),
(404, '2023-01-28 16:23:00.742000', '2023-01-28 16:23:00.742000', '2023-01-28 16:23:00.733000', NULL, NULL),
(405, '2023-01-28 16:23:24.657000', '2023-01-28 16:23:24.657000', '2023-01-28 16:23:24.648000', NULL, NULL),
(406, '2023-01-28 16:23:28.186000', '2023-01-28 16:23:28.186000', '2023-01-28 16:23:28.177000', NULL, NULL),
(407, '2023-01-28 16:26:34.491000', '2023-01-28 16:26:34.491000', '2023-01-28 16:26:34.484000', NULL, NULL),
(408, '2023-01-28 16:26:37.034000', '2023-01-28 16:26:37.034000', '2023-01-28 16:26:37.028000', NULL, NULL),
(409, '2023-01-28 17:06:49.122000', '2023-01-28 17:06:49.122000', '2023-01-28 17:06:49.117000', NULL, NULL),
(410, '2023-01-28 17:07:00.166000', '2023-01-28 17:07:00.166000', '2023-01-28 17:07:00.155000', NULL, NULL),
(411, '2023-01-28 17:11:05.777000', '2023-01-28 17:11:05.777000', '2023-01-28 17:11:05.774000', NULL, NULL),
(412, '2023-01-28 17:16:25.055000', '2023-01-28 17:16:25.055000', '2023-01-28 17:16:25.045000', NULL, NULL),
(413, '2023-01-28 17:16:32.301000', '2023-01-28 17:16:32.301000', '2023-01-28 17:16:32.292000', NULL, NULL),
(414, '2023-01-28 17:17:31.195000', '2023-01-28 17:17:31.195000', '2023-01-28 17:17:31.185000', NULL, NULL),
(415, '2023-01-28 17:17:34.398000', '2023-01-28 17:17:34.398000', '2023-01-28 17:17:34.387000', NULL, NULL),
(416, '2023-01-28 17:19:24.907000', '2023-01-28 17:19:24.907000', '2023-01-28 17:19:24.896000', NULL, NULL),
(417, '2023-01-28 17:19:28.706000', '2023-01-28 17:19:28.706000', '2023-01-28 17:19:28.700000', NULL, NULL),
(418, '2023-01-28 17:19:37.756000', '2023-01-28 17:19:37.756000', '2023-01-28 17:19:37.751000', NULL, NULL),
(419, '2023-01-28 17:19:41.570000', '2023-01-28 17:19:41.570000', '2023-01-28 17:19:41.567000', NULL, NULL),
(420, '2023-01-28 17:20:28.218000', '2023-01-28 17:20:28.218000', '2023-01-28 17:20:28.210000', NULL, NULL),
(421, '2023-01-28 17:21:50.684000', '2023-01-28 17:21:50.684000', '2023-01-28 17:21:50.678000', NULL, NULL),
(422, '2023-01-28 17:24:59.834000', '2023-01-28 17:24:59.834000', '2023-01-28 17:24:59.822000', NULL, NULL),
(423, '2023-01-28 17:25:01.062000', '2023-01-28 17:25:01.062000', '2023-01-28 17:25:01.053000', NULL, NULL),
(424, '2023-01-28 17:25:07.438000', '2023-01-28 17:25:07.438000', '2023-01-28 17:25:07.391000', NULL, NULL),
(425, '2023-01-28 17:26:16.316000', '2023-01-28 17:26:16.316000', '2023-01-28 17:26:16.311000', NULL, NULL),
(426, '2023-01-28 17:26:18.863000', '2023-01-28 17:26:18.863000', '2023-01-28 17:26:18.860000', NULL, NULL),
(427, '2023-01-28 17:31:18.980000', '2023-01-28 17:31:18.980000', '2023-01-28 17:31:18.969000', NULL, NULL),
(428, '2023-01-28 17:31:22.411000', '2023-01-28 17:31:22.411000', '2023-01-28 17:31:22.406000', NULL, NULL),
(429, '2023-01-28 17:31:42.235000', '2023-01-28 17:31:42.235000', '2023-01-28 17:31:42.213000', NULL, NULL),
(430, '2023-01-28 17:32:12.821000', '2023-01-28 17:32:12.821000', '2023-01-28 17:32:12.811000', NULL, NULL),
(431, '2023-01-28 17:43:50.387000', '2023-01-28 17:43:50.387000', '2023-01-28 17:43:50.383000', NULL, NULL),
(432, '2023-01-28 17:44:02.606000', '2023-01-28 17:44:02.606000', '2023-01-28 17:44:02.599000', NULL, NULL),
(433, '2023-01-28 17:44:07.617000', '2023-01-28 17:44:07.617000', '2023-01-28 17:44:07.613000', NULL, NULL),
(434, '2023-01-28 17:44:35.628000', '2023-01-28 17:44:35.628000', '2023-01-28 17:44:35.611000', NULL, NULL),
(435, '2023-01-28 17:46:50.586000', '2023-01-28 17:46:50.586000', '2023-01-28 17:46:50.580000', NULL, NULL),
(436, '2023-01-28 17:46:53.618000', '2023-01-28 17:46:53.618000', '2023-01-28 17:46:53.615000', NULL, NULL),
(437, '2023-01-28 17:46:59.476000', '2023-01-28 17:46:59.476000', '2023-01-28 17:46:59.470000', NULL, NULL),
(438, '2023-01-28 17:47:08.979000', '2023-01-28 17:47:08.979000', '2023-01-28 17:47:08.970000', NULL, NULL),
(439, '2023-01-28 17:47:14.530000', '2023-01-28 17:47:14.530000', '2023-01-28 17:47:14.518000', NULL, NULL),
(440, '2023-01-28 17:47:31.213000', '2023-01-28 17:47:31.213000', '2023-01-28 17:47:31.202000', NULL, NULL),
(441, '2023-01-28 17:47:34.603000', '2023-01-28 17:47:34.603000', '2023-01-28 17:47:34.594000', NULL, NULL),
(442, '2023-01-28 17:47:38.412000', '2023-01-28 17:47:38.412000', '2023-01-28 17:47:38.394000', NULL, NULL),
(443, '2023-01-28 17:48:27.638000', '2023-01-28 17:48:27.638000', '2023-01-28 17:48:27.626000', NULL, NULL),
(444, '2023-01-28 19:48:50.805000', '2023-01-28 19:48:50.805000', '2023-01-28 19:48:50.798000', NULL, NULL),
(445, '2023-01-28 19:48:56.128000', '2023-01-28 19:48:56.128000', '2023-01-28 19:48:56.124000', NULL, NULL),
(446, '2023-01-28 20:33:26.404000', '2023-01-28 20:33:26.404000', '2023-01-28 20:33:26.395000', NULL, NULL),
(447, '2023-01-29 10:20:01.619000', '2023-01-29 10:20:01.619000', '2023-01-29 10:20:01.616000', NULL, NULL),
(448, '2023-01-29 10:40:12.703000', '2023-01-29 10:40:12.703000', '2023-01-29 10:40:12.680000', NULL, NULL),
(449, '2023-01-29 10:40:22.484000', '2023-01-29 10:40:22.484000', '2023-01-29 10:40:22.471000', NULL, NULL),
(450, '2023-01-29 10:43:20.026000', '2023-01-29 10:43:20.026000', '2023-01-29 10:43:20.007000', NULL, NULL),
(451, '2023-01-29 10:46:56.163000', '2023-01-29 10:46:56.163000', '2023-01-29 10:46:56.149000', NULL, NULL),
(452, '2023-01-29 10:52:01.070000', '2023-01-29 10:52:01.070000', '2023-01-29 10:52:01.060000', NULL, NULL),
(453, '2023-01-29 10:52:19.479000', '2023-01-29 10:52:19.479000', '2023-01-29 10:52:19.470000', NULL, NULL),
(454, '2023-01-29 10:52:56.930000', '2023-01-29 10:52:56.930000', '2023-01-29 10:52:56.919000', NULL, NULL),
(455, '2023-01-29 10:53:05.336000', '2023-01-29 10:53:05.336000', '2023-01-29 10:53:05.322000', NULL, NULL),
(456, '2023-01-29 10:54:12.857000', '2023-01-29 10:54:12.857000', '2023-01-29 10:54:12.843000', NULL, NULL),
(457, '2023-01-29 10:54:44.078000', '2023-01-29 10:54:44.078000', '2023-01-29 10:54:44.057000', NULL, NULL),
(458, '2023-01-29 10:54:54.801000', '2023-01-29 10:54:54.801000', '2023-01-29 10:54:54.793000', NULL, NULL),
(459, '2023-01-29 11:04:35.202000', '2023-01-29 11:04:35.202000', '2023-01-29 11:04:35.197000', NULL, NULL),
(460, '2023-01-29 11:06:22.473000', '2023-01-29 11:06:22.473000', '2023-01-29 11:06:22.463000', NULL, NULL),
(461, '2023-01-29 11:06:57.765000', '2023-01-29 11:06:57.765000', '2023-01-29 11:06:57.757000', NULL, NULL),
(462, '2023-01-29 11:13:19.125000', '2023-01-29 11:13:19.125000', '2023-01-29 11:13:19.121000', NULL, NULL),
(463, '2023-01-29 11:16:18.883000', '2023-01-29 11:16:18.883000', '2023-01-29 11:16:18.877000', NULL, NULL),
(464, '2023-01-29 11:18:32.465000', '2023-01-29 11:18:32.465000', '2023-01-29 11:18:32.456000', NULL, NULL),
(465, '2023-01-29 11:18:35.080000', '2023-01-29 11:18:35.080000', '2023-01-29 11:18:35.074000', NULL, NULL),
(466, '2023-01-29 11:21:24.719000', '2023-01-29 11:21:24.719000', '2023-01-29 11:21:24.711000', NULL, NULL),
(467, '2023-01-29 11:21:34.440000', '2023-01-29 11:21:34.440000', '2023-01-29 11:21:34.432000', NULL, NULL),
(468, '2023-01-29 11:24:39.460000', '2023-01-29 11:24:39.460000', '2023-01-29 11:24:39.454000', NULL, NULL),
(469, '2023-01-29 11:26:39.618000', '2023-01-29 11:26:39.618000', '2023-01-29 11:26:39.603000', NULL, NULL),
(470, '2023-01-29 11:27:48.834000', '2023-01-29 11:27:48.834000', '2023-01-29 11:27:48.832000', NULL, NULL),
(471, '2023-01-29 11:27:52.343000', '2023-01-29 11:27:52.343000', '2023-01-29 11:27:52.335000', NULL, NULL),
(472, '2023-01-29 11:27:56.274000', '2023-01-29 11:27:56.274000', '2023-01-29 11:27:56.259000', NULL, NULL),
(473, '2023-01-29 11:28:23.671000', '2023-01-29 11:28:23.671000', '2023-01-29 11:28:23.661000', NULL, NULL),
(474, '2023-01-29 11:28:26.511000', '2023-01-29 11:28:26.511000', '2023-01-29 11:28:26.507000', NULL, NULL),
(475, '2023-01-29 11:28:30.278000', '2023-01-29 11:28:30.278000', '2023-01-29 11:28:30.270000', NULL, NULL),
(476, '2023-01-29 11:28:35.232000', '2023-01-29 11:28:35.232000', '2023-01-29 11:28:35.217000', NULL, NULL),
(477, '2023-01-29 11:28:39.089000', '2023-01-29 11:28:39.089000', '2023-01-29 11:28:39.080000', NULL, NULL),
(478, '2023-01-29 13:12:20.947000', '2023-01-29 13:12:20.947000', '2023-01-29 13:12:20.943000', NULL, NULL),
(479, '2023-01-29 13:16:23.141000', '2023-01-29 13:16:23.141000', '2023-01-29 13:16:23.134000', NULL, NULL),
(480, '2023-01-29 13:16:26.593000', '2023-01-29 13:16:26.593000', '2023-01-29 13:16:26.589000', NULL, NULL),
(481, '2023-01-29 13:21:06.498000', '2023-01-29 13:21:06.498000', '2023-01-29 13:21:06.491000', NULL, NULL),
(482, '2023-01-29 13:21:08.695000', '2023-01-29 13:21:08.695000', '2023-01-29 13:21:08.685000', NULL, NULL),
(483, '2023-01-29 13:24:11.643000', '2023-01-29 13:24:11.643000', '2023-01-29 13:24:11.636000', NULL, NULL),
(484, '2023-01-29 13:24:19.028000', '2023-01-29 13:24:19.028000', '2023-01-29 13:24:19.018000', NULL, NULL),
(485, '2023-01-29 13:28:21.305000', '2023-01-29 13:28:21.305000', '2023-01-29 13:28:21.299000', NULL, NULL),
(486, '2023-01-29 13:28:23.226000', '2023-01-29 13:28:23.226000', '2023-01-29 13:28:23.213000', NULL, NULL),
(487, '2023-01-29 13:29:14.181000', '2023-01-29 13:29:14.181000', '2023-01-29 13:29:14.170000', NULL, NULL),
(488, '2023-01-29 13:29:17.651000', '2023-01-29 13:29:17.651000', '2023-01-29 13:29:17.640000', NULL, NULL),
(489, '2023-01-29 13:29:41.923000', '2023-01-29 13:29:41.923000', '2023-01-29 13:29:41.919000', NULL, NULL),
(490, '2023-01-29 13:32:58.063000', '2023-01-29 13:32:58.063000', '2023-01-29 13:32:58.055000', NULL, NULL),
(491, '2023-01-29 13:37:57.754000', '2023-01-29 13:37:57.754000', '2023-01-29 13:37:57.751000', NULL, NULL),
(492, '2023-01-29 13:44:20.790000', '2023-01-29 13:44:20.790000', '2023-01-29 13:44:20.778000', NULL, NULL),
(493, '2023-01-29 13:46:01.630000', '2023-01-29 13:46:01.630000', '2023-01-29 13:46:01.622000', NULL, NULL),
(494, '2023-01-29 14:12:04.576000', '2023-01-29 14:12:04.576000', '2023-01-29 14:12:04.565000', NULL, NULL),
(495, '2023-01-30 09:18:33.904000', '2023-01-30 09:18:33.904000', '2023-01-30 09:18:33.893000', NULL, NULL),
(496, '2023-01-30 09:18:40.086000', '2023-01-30 09:18:40.086000', '2023-01-30 09:18:40.078000', NULL, NULL),
(497, '2023-01-30 09:23:21.104000', '2023-01-30 09:23:21.104000', '2023-01-30 09:23:21.092000', NULL, NULL),
(498, '2023-01-30 09:24:53.651000', '2023-01-30 09:24:53.651000', '2023-01-30 09:24:53.633000', NULL, NULL),
(499, '2023-01-30 09:28:20.330000', '2023-01-30 09:28:20.330000', '2023-01-30 09:28:20.321000', NULL, NULL),
(500, '2023-01-30 09:33:49.057000', '2023-01-30 09:33:49.057000', '2023-01-30 09:33:49.050000', NULL, NULL),
(501, '2023-01-30 09:34:03.093000', '2023-01-30 09:34:03.093000', '2023-01-30 09:34:03.085000', NULL, NULL),
(502, '2023-01-30 09:37:07.280000', '2023-01-30 09:37:07.280000', '2023-01-30 09:37:07.258000', NULL, NULL),
(503, '2023-01-31 20:50:32.815000', '2023-01-31 20:50:32.815000', '2023-01-31 20:50:32.808000', NULL, NULL),
(504, '2023-02-01 09:13:07.680000', '2023-02-01 09:13:07.680000', '2023-02-01 09:13:07.673000', NULL, NULL),
(505, '2023-02-01 09:24:07.549000', '2023-02-01 09:24:07.549000', '2023-02-01 09:24:07.507000', NULL, NULL),
(506, '2023-02-01 09:25:23.685000', '2023-02-01 09:25:23.685000', '2023-02-01 09:25:23.668000', NULL, NULL),
(507, '2023-02-01 09:27:03.221000', '2023-02-01 09:27:03.221000', '2023-02-01 09:27:03.190000', NULL, NULL),
(508, '2023-02-01 09:27:40.803000', '2023-02-01 09:27:40.803000', '2023-02-01 09:27:40.779000', NULL, NULL),
(509, '2023-02-01 09:29:19.255000', '2023-02-01 09:29:19.255000', '2023-02-01 09:29:19.246000', NULL, NULL),
(510, '2023-02-01 09:30:38.207000', '2023-02-01 09:30:38.207000', '2023-02-01 09:30:38.199000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `song_histories_song_links`
--

CREATE TABLE `song_histories_song_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `song_history_id` int(10) UNSIGNED DEFAULT NULL,
  `song_id` int(10) UNSIGNED DEFAULT NULL,
  `song_history_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `song_histories_song_links`
--

INSERT INTO `song_histories_song_links` (`id`, `song_history_id`, `song_id`, `song_history_order`) VALUES
(19, 27, 1, 1),
(20, 28, 1, 2),
(23, 31, 2, 1),
(25, 33, 1, 3),
(31, 39, 1, 4),
(32, 40, 2, 2),
(33, 41, 3, 1),
(34, 42, 1, 5),
(35, 43, 3, 2),
(36, 44, 2, 3),
(52, 60, 2, 4),
(53, 61, 5, 1),
(54, 62, 2, 5),
(55, 63, 2, 6),
(56, 64, 2, 7),
(57, 65, 2, 8),
(58, 66, 2, 9),
(59, 67, 2, 10),
(60, 68, 2, 11),
(61, 69, 2, 12),
(62, 70, 2, 13),
(63, 71, 1, 6),
(64, 72, 1, 7),
(65, 73, 1, 8),
(66, 74, 1, 9),
(67, 75, 1, 10),
(68, 76, 1, 11),
(69, 77, 1, 12),
(70, 78, 1, 13),
(71, 79, 1, 14),
(72, 80, 2, 14),
(73, 81, 2, 15),
(74, 82, 1, 15),
(75, 83, 1, 16),
(76, 84, 1, 17),
(77, 85, 1, 18),
(78, 86, 1, 19),
(79, 87, 3, 3),
(80, 88, 3, 4),
(81, 89, 5, 2),
(82, 90, 2, 16),
(83, 91, 1, 20),
(84, 92, 1, 21),
(85, 93, 1, 22),
(86, 94, 1, 23),
(87, 95, 3, 5),
(88, 96, 3, 6),
(89, 97, 5, 3),
(90, 98, 6, 1),
(91, 99, 5, 4),
(92, 100, 5, 5),
(93, 101, 5, 6),
(94, 102, 5, 7),
(95, 103, 5, 8),
(96, 104, 5, 9),
(97, 105, 5, 10),
(98, 106, 5, 11),
(99, 107, 5, 12),
(100, 108, 5, 13),
(101, 109, 5, 14),
(102, 110, 5, 15),
(103, 111, 5, 16),
(104, 112, 5, 17),
(105, 113, 5, 18),
(106, 114, 5, 19),
(107, 115, 5, 20),
(108, 116, 5, 21),
(109, 117, 5, 22),
(110, 118, 5, 23),
(111, 119, 5, 24),
(112, 120, 5, 25),
(113, 121, 5, 26),
(114, 122, 2, 17),
(115, 123, 2, 18),
(116, 124, 6, 2),
(117, 125, 6, 3),
(118, 126, 6, 4),
(119, 127, 6, 5),
(120, 128, 6, 6),
(121, 129, 6, 7),
(122, 130, 6, 8),
(123, 131, 6, 9),
(124, 132, 6, 10),
(125, 133, 6, 11),
(126, 134, 6, 12),
(127, 135, 6, 13),
(128, 136, 6, 14),
(129, 137, 6, 15),
(130, 138, 6, 16),
(131, 139, 6, 17),
(132, 140, 5, 27),
(133, 141, 2, 19),
(134, 142, 5, 28),
(135, 143, 6, 18),
(137, 145, 2, 20),
(138, 146, 6, 19),
(139, 147, 2, 21),
(140, 148, 6, 20),
(141, 149, 2, 22),
(142, 150, 2, 23),
(143, 151, 2, 24),
(144, 152, 2, 25),
(145, 153, 2, 26),
(146, 154, 3, 7),
(147, 155, 3, 8),
(148, 156, 1, 24),
(168, 176, 5, 29),
(169, 177, 1, 25),
(170, 178, 5, 30),
(171, 179, 5, 31),
(172, 180, 6, 21),
(173, 181, 2, 27),
(174, 182, 3, 9),
(175, 183, 1, 26),
(176, 184, 2, 28),
(177, 185, 1, 27),
(178, 186, 1, 28),
(179, 187, 5, 32),
(180, 188, 5, 33),
(181, 189, 5, 34),
(182, 190, 5, 35),
(183, 191, 5, 36),
(184, 192, 5, 37),
(185, 193, 5, 38),
(186, 194, 5, 39),
(187, 195, 5, 40),
(188, 196, 5, 41),
(189, 197, 5, 42),
(190, 198, 5, 43),
(191, 199, 5, 44),
(192, 200, 5, 45),
(193, 201, 5, 46),
(194, 202, 5, 47),
(195, 203, 2, 29),
(196, 204, 2, 30),
(197, 205, 5, 48),
(198, 206, 5, 49),
(199, 207, 5, 50),
(200, 208, 5, 51),
(201, 209, 2, 31),
(202, 210, 2, 32),
(203, 211, 2, 33),
(204, 212, 2, 34),
(205, 213, 2, 35),
(206, 214, 2, 36),
(207, 215, 2, 37),
(208, 216, 2, 38),
(209, 217, 2, 39),
(210, 218, 2, 40),
(211, 219, 2, 41),
(212, 220, 2, 42),
(213, 221, 2, 43),
(214, 222, 2, 44),
(215, 223, 2, 45),
(216, 224, 2, 46),
(217, 225, 2, 47),
(218, 226, 2, 48),
(219, 227, 2, 49),
(220, 228, 2, 50),
(221, 229, 2, 51),
(222, 230, 2, 52),
(223, 231, 2, 53),
(224, 232, 2, 54),
(225, 233, 2, 55),
(226, 234, 2, 56),
(227, 235, 2, 57),
(228, 236, 2, 58),
(229, 237, 2, 59),
(230, 238, 2, 60),
(231, 239, 2, 61),
(232, 240, 2, 62),
(233, 241, 2, 63),
(234, 242, 2, 64),
(235, 243, 2, 65),
(236, 244, 2, 66),
(237, 245, 2, 67),
(238, 246, 2, 68),
(239, 247, 2, 69),
(240, 248, 2, 70),
(241, 249, 2, 71),
(242, 250, 2, 72),
(243, 251, 2, 73),
(244, 252, 2, 74),
(245, 253, 2, 75),
(246, 254, 2, 76),
(247, 255, 2, 77),
(248, 256, 2, 78),
(249, 257, 2, 79),
(250, 258, 2, 80),
(251, 259, 2, 81),
(252, 260, 2, 82),
(253, 261, 2, 83),
(254, 262, 2, 84),
(255, 263, 2, 85),
(256, 264, 2, 86),
(257, 265, 2, 87),
(258, 266, 2, 88),
(259, 267, 2, 89),
(260, 268, 2, 90),
(261, 269, 2, 91),
(262, 270, 2, 92),
(263, 271, 2, 93),
(267, 275, 3, 10),
(268, 276, 3, 11),
(269, 277, 3, 12),
(270, 278, 3, 13),
(271, 279, 3, 14),
(272, 280, 3, 15),
(273, 281, 3, 16),
(274, 282, 3, 17),
(275, 283, 3, 18),
(276, 284, 3, 19),
(277, 285, 3, 20),
(278, 286, 3, 21),
(279, 287, 3, 22),
(280, 288, 3, 23),
(281, 289, 3, 24),
(282, 290, 3, 25),
(283, 291, 3, 26),
(284, 292, 3, 27),
(285, 293, 3, 28),
(286, 294, 3, 29),
(287, 295, 3, 30),
(288, 296, 3, 31),
(289, 297, 3, 32),
(290, 298, 3, 33),
(291, 299, 3, 34),
(292, 300, 3, 35),
(293, 301, 3, 36),
(294, 302, 3, 37),
(295, 303, 3, 38),
(296, 304, 3, 39),
(297, 305, 3, 40),
(298, 306, 3, 41),
(299, 307, 1, 29),
(300, 308, 1, 30),
(301, 309, 1, 31),
(302, 310, 1, 32),
(303, 311, 1, 33),
(304, 312, 1, 34),
(305, 313, 1, 35),
(306, 314, 5, 52),
(307, 315, 5, 53),
(308, 316, 5, 54),
(309, 317, 5, 55),
(310, 318, 1, 36),
(311, 319, 1, 37),
(312, 320, 1, 38),
(313, 321, 1, 39),
(314, 322, 1, 40),
(315, 323, 1, 41),
(316, 324, 1, 42),
(317, 325, 1, 43),
(318, 326, 3, 42),
(319, 327, 3, 43),
(320, 328, 3, 44),
(321, 329, 2, 94),
(322, 330, 3, 45),
(323, 331, 3, 46),
(324, 332, 1, 44),
(325, 333, 3, 47),
(326, 334, 2, 95),
(327, 335, 1, 45),
(328, 336, 1, 46),
(329, 337, 3, 48),
(330, 338, 6, 22),
(331, 339, 6, 23),
(332, 340, 3, 49),
(333, 341, 3, 50),
(334, 342, 1, 47),
(335, 343, 1, 48),
(336, 344, 5, 56),
(337, 345, 6, 24),
(338, 346, 5, 57),
(339, 347, 6, 25),
(340, 348, 6, 26),
(341, 349, 5, 58),
(342, 350, 6, 27),
(343, 351, 6, 28),
(344, 352, 6, 29),
(345, 353, 5, 59),
(346, 354, 3, 51),
(347, 355, 3, 52),
(348, 356, 1, 49),
(349, 357, 3, 53),
(350, 358, 3, 54),
(351, 359, 1, 50),
(352, 360, 1, 51),
(353, 361, 6, 30),
(354, 362, 6, 31),
(355, 363, 3, 55),
(356, 364, 1, 52),
(357, 365, 3, 56),
(358, 366, 1, 53),
(359, 367, 2, 96),
(360, 368, 2, 97),
(361, 369, 5, 60),
(362, 370, 5, 61),
(363, 371, 6, 32),
(364, 372, 6, 33),
(365, 373, 5, 62),
(366, 374, 5, 63),
(367, 375, 5, 64),
(368, 376, 5, 65),
(369, 377, 5, 66),
(370, 378, 5, 67),
(371, 379, 6, 34),
(372, 380, 2, 98),
(373, 381, 2, 99),
(374, 382, 2, 100),
(375, 383, 3, 57),
(376, 384, 3, 58),
(377, 385, 6, 35),
(378, 386, 5, 68),
(379, 387, 6, 36),
(380, 388, 1, 54),
(381, 389, 3, 59),
(382, 390, 3, 60),
(383, 391, 2, 101),
(384, 392, 2, 102),
(385, 393, 3, 61),
(386, 394, 3, 62),
(387, 395, 5, 69),
(388, 396, 5, 70),
(389, 397, 3, 63),
(390, 398, 3, 64),
(391, 399, 3, 65),
(392, 400, 1, 55),
(393, 401, 2, 103),
(394, 402, 1, 56),
(395, 403, 1, 57),
(396, 404, 2, 104),
(397, 405, 2, 105),
(398, 406, 1, 58),
(399, 407, 1, 59),
(400, 408, 3, 66),
(401, 409, 3, 67),
(402, 410, 1, 60),
(403, 411, 3, 68),
(404, 412, 2, 106),
(405, 413, 3, 69),
(406, 414, 3, 70),
(407, 415, 2, 107),
(408, 416, 2, 108),
(409, 417, 1, 61),
(410, 418, 2, 109),
(411, 419, 3, 71),
(412, 420, 3, 72),
(413, 421, 6, 37),
(414, 422, 1, 62),
(415, 423, 3, 73),
(416, 424, 3, 74),
(417, 425, 3, 75),
(418, 426, 2, 110),
(419, 427, 2, 111),
(420, 428, 1, 63),
(421, 429, 1, 64),
(422, 430, 1, 65),
(423, 431, 3, 76),
(424, 432, 2, 112),
(425, 433, 3, 77),
(426, 434, 3, 78),
(427, 435, 3, 79),
(428, 436, 2, 113),
(429, 437, 1, 66),
(430, 438, 2, 114),
(431, 439, 3, 80),
(432, 440, 1, 67),
(433, 441, 3, 81),
(434, 442, 2, 115),
(435, 443, 2, 116),
(436, 444, 2, 117),
(437, 445, 1, 68),
(438, 446, 2, 118),
(439, 447, 5, 71),
(440, 448, 1, 69),
(441, 449, 1, 70),
(442, 450, 1, 71),
(443, 451, 1, 72),
(444, 452, 1, 73),
(445, 453, 1, 74),
(446, 454, 1, 75),
(447, 455, 1, 76),
(448, 456, 1, 77),
(449, 457, 1, 78),
(450, 458, 1, 79),
(451, 459, 5, 72),
(452, 460, 5, 73),
(453, 461, 6, 38),
(454, 462, 7, 1),
(455, 463, 7, 2),
(456, 464, 7, 3),
(457, 465, 3, 82),
(458, 466, 3, 83),
(459, 467, 3, 84),
(460, 468, 3, 85),
(461, 469, 8, 1),
(462, 470, 7, 4),
(463, 471, 2, 119),
(464, 472, 3, 86),
(465, 473, 7, 5),
(466, 474, 1, 80),
(467, 475, 2, 120),
(468, 476, 3, 87),
(469, 477, 2, 121),
(470, 478, 10, 1),
(471, 479, 10, 2),
(472, 480, 11, 1),
(473, 481, 11, 2),
(474, 482, 12, 1),
(475, 483, 12, 2),
(476, 484, 13, 1),
(477, 485, 13, 2),
(478, 486, 14, 1),
(479, 487, 12, 3),
(480, 488, 14, 2),
(481, 489, 10, 3),
(482, 490, 10, 4),
(483, 491, 12, 4),
(484, 492, 15, 1),
(485, 493, 15, 2),
(486, 494, 12, 5),
(487, 495, 14, 3),
(488, 496, 12, 6),
(489, 497, 12, 7),
(490, 498, 12, 8),
(491, 499, 12, 9),
(492, 500, 12, 10),
(493, 501, 12, 11),
(494, 502, 12, 12),
(495, 503, 12, 13),
(496, 504, 15, 3),
(497, 505, 15, 4),
(498, 506, 15, 5),
(499, 507, 15, 6),
(500, 508, 15, 7),
(501, 509, 15, 8),
(502, 510, 15, 9);

-- --------------------------------------------------------

--
-- Table structure for table `song_histories_user_links`
--

CREATE TABLE `song_histories_user_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `song_history_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `song_history_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `song_histories_user_links`
--

INSERT INTO `song_histories_user_links` (`id`, `song_history_id`, `user_id`, `song_history_order`) VALUES
(3, 31, 1, 1),
(5, 33, 1, 3),
(11, 39, 1, 4),
(12, 40, 1, 5),
(13, 41, 1, 6),
(14, 42, 1, 7),
(15, 43, 1, 8),
(16, 44, 1, 9),
(32, 60, 1, 10),
(33, 61, 1, 11),
(34, 62, 1, 12),
(35, 63, 1, 13),
(36, 64, 1, 14),
(37, 65, 1, 15),
(38, 66, 1, 16),
(39, 67, 1, 17),
(40, 68, 1, 18),
(41, 69, 1, 19),
(42, 70, 1, 20),
(43, 71, 1, 21),
(44, 72, 1, 22),
(45, 73, 1, 23),
(46, 74, 1, 24),
(47, 75, 1, 25),
(48, 76, 1, 26),
(49, 77, 1, 27),
(50, 78, 1, 28),
(51, 79, 1, 29),
(52, 80, 1, 30),
(53, 81, 1, 31),
(54, 82, 1, 32),
(55, 83, 1, 33),
(56, 84, 1, 34),
(57, 85, 1, 35),
(58, 86, 1, 36),
(59, 87, 1, 37),
(60, 88, 1, 38),
(61, 89, 1, 39),
(62, 90, 1, 40),
(63, 91, 1, 41),
(64, 92, 1, 42),
(65, 93, 1, 43),
(66, 94, 1, 44),
(67, 95, 1, 45),
(68, 96, 1, 46),
(69, 97, 1, 47),
(70, 98, 1, 48),
(71, 99, 1, 49),
(72, 100, 1, 50),
(73, 101, 1, 51),
(74, 102, 1, 52),
(75, 103, 1, 53),
(76, 104, 1, 54),
(77, 105, 1, 55),
(78, 106, 1, 56),
(79, 107, 1, 57),
(80, 108, 1, 58),
(81, 109, 1, 59),
(82, 110, 1, 60),
(83, 111, 1, 61),
(84, 112, 1, 62),
(85, 113, 1, 63),
(86, 114, 1, 64),
(87, 115, 1, 65),
(88, 116, 1, 66),
(89, 117, 1, 67),
(90, 118, 1, 68),
(91, 119, 1, 69),
(92, 120, 1, 70),
(93, 121, 1, 71),
(94, 122, 1, 72),
(95, 123, 1, 73),
(96, 124, 1, 74),
(97, 125, 1, 75),
(98, 126, 1, 76),
(99, 127, 1, 77),
(100, 128, 1, 78),
(101, 129, 1, 79),
(102, 130, 1, 80),
(103, 131, 1, 81),
(104, 132, 1, 82),
(105, 133, 1, 83),
(106, 134, 1, 84),
(107, 135, 1, 85),
(108, 136, 1, 86),
(109, 137, 1, 87),
(110, 138, 1, 88),
(111, 139, 1, 89),
(112, 140, 1, 90),
(113, 141, 1, 91),
(114, 142, 1, 92),
(115, 143, 1, 93),
(116, 144, 1, 94),
(117, 145, 1, 95),
(118, 146, 1, 96),
(119, 147, 1, 97),
(120, 148, 1, 98),
(121, 149, 1, 99),
(122, 150, 1, 100),
(123, 151, 1, 101),
(124, 152, 1, 102),
(125, 153, 1, 103),
(126, 154, 1, 104),
(127, 155, 1, 105),
(128, 156, 1, 106),
(148, 176, 1, 107),
(149, 177, 1, 108),
(150, 178, 1, 109),
(151, 179, 1, 110),
(152, 180, 1, 111),
(153, 181, 1, 112),
(154, 182, 1, 113),
(155, 183, 1, 114),
(156, 184, 1, 115),
(157, 185, 1, 116),
(158, 186, 1, 117),
(159, 187, 1, 118),
(160, 188, 1, 119),
(161, 189, 1, 120),
(162, 190, 1, 121),
(163, 191, 1, 122),
(164, 192, 1, 123),
(165, 193, 1, 124),
(166, 194, 1, 125),
(167, 195, 1, 126),
(168, 196, 1, 127),
(169, 197, 1, 128),
(170, 198, 1, 129),
(171, 199, 1, 130),
(172, 200, 1, 131),
(173, 201, 1, 132),
(174, 202, 1, 133),
(175, 203, 1, 134),
(176, 204, 1, 135),
(177, 205, 1, 136),
(178, 206, 1, 137),
(179, 207, 1, 138),
(180, 208, 1, 139),
(181, 209, 1, 140),
(182, 210, 1, 141),
(183, 211, 1, 142),
(184, 212, 1, 143),
(185, 213, 1, 144),
(186, 214, 1, 145),
(187, 215, 1, 146),
(188, 216, 1, 147),
(189, 217, 1, 148),
(190, 218, 1, 149),
(191, 219, 1, 150),
(192, 220, 1, 151),
(193, 221, 1, 152),
(194, 222, 1, 153),
(195, 223, 1, 154),
(196, 224, 1, 155),
(197, 225, 1, 156),
(198, 226, 1, 157),
(199, 227, 1, 158),
(200, 228, 1, 159),
(201, 229, 1, 160),
(202, 230, 1, 161),
(203, 231, 1, 162),
(204, 232, 1, 163),
(205, 233, 1, 164),
(206, 234, 1, 165),
(207, 235, 1, 166),
(208, 236, 1, 167),
(209, 237, 1, 168),
(210, 238, 1, 169),
(211, 239, 1, 170),
(212, 240, 1, 171),
(213, 241, 1, 172),
(214, 242, 1, 173),
(215, 243, 1, 174),
(216, 244, 1, 175),
(217, 245, 1, 176),
(218, 246, 1, 177),
(219, 247, 1, 178),
(220, 248, 1, 179),
(221, 249, 1, 180),
(222, 250, 1, 181),
(223, 251, 1, 182),
(224, 252, 1, 183),
(225, 253, 1, 184),
(226, 254, 1, 185),
(227, 255, 1, 186),
(228, 256, 1, 187),
(229, 257, 1, 188),
(230, 258, 1, 189),
(231, 259, 1, 190),
(232, 260, 1, 191),
(233, 261, 1, 192),
(234, 262, 1, 193),
(235, 263, 1, 194),
(236, 264, 1, 195),
(237, 265, 1, 196),
(238, 266, 1, 197),
(239, 267, 1, 198),
(240, 268, 1, 199),
(241, 269, 1, 200),
(242, 270, 1, 201),
(243, 271, 1, 202),
(244, 272, 1, 203),
(245, 273, 1, 204),
(246, 274, 1, 205),
(247, 275, 1, 206),
(248, 276, 1, 207),
(249, 277, 1, 208),
(250, 278, 1, 209),
(251, 279, 1, 210),
(252, 280, 1, 211),
(253, 281, 1, 212),
(254, 282, 1, 213),
(255, 283, 1, 214),
(256, 284, 1, 215),
(257, 285, 1, 216),
(258, 286, 1, 217),
(259, 287, 1, 218),
(260, 288, 1, 219),
(261, 289, 1, 220),
(262, 290, 1, 221),
(263, 291, 1, 222),
(264, 292, 1, 223),
(265, 293, 1, 224),
(266, 294, 1, 225),
(267, 295, 1, 226),
(268, 296, 1, 227),
(269, 297, 1, 228),
(270, 298, 1, 229),
(271, 299, 1, 230),
(272, 300, 1, 231),
(273, 301, 1, 232),
(274, 302, 1, 233),
(275, 303, 1, 234),
(276, 304, 1, 235),
(277, 305, 1, 236),
(278, 306, 1, 237),
(279, 307, 1, 238),
(280, 308, 1, 239),
(281, 309, 1, 240),
(282, 310, 1, 241),
(283, 311, 1, 242),
(284, 312, 1, 243),
(285, 313, 1, 244),
(286, 314, 1, 245),
(287, 315, 1, 246),
(288, 316, 1, 247),
(289, 317, 1, 248),
(290, 318, 1, 249),
(291, 319, 1, 250),
(292, 320, 1, 251),
(293, 321, 1, 252),
(294, 322, 1, 253),
(295, 323, 1, 254),
(296, 324, 1, 255),
(297, 325, 1, 256),
(298, 326, 1, 257),
(299, 327, 1, 258),
(300, 328, 1, 259),
(301, 329, 1, 260),
(302, 330, 1, 261),
(303, 331, 1, 262),
(304, 332, 1, 263),
(305, 333, 1, 264),
(306, 334, 1, 265),
(307, 335, 1, 266),
(308, 336, 1, 267),
(309, 337, 1, 268),
(310, 338, 1, 269),
(311, 339, 1, 270),
(312, 340, 1, 271),
(313, 341, 1, 272),
(314, 342, 1, 273),
(315, 343, 1, 274),
(316, 344, 1, 275),
(317, 345, 1, 276),
(318, 346, 1, 277),
(319, 347, 1, 278),
(320, 348, 1, 279),
(321, 349, 1, 280),
(322, 350, 1, 281),
(323, 351, 1, 282),
(324, 352, 1, 283),
(325, 353, 1, 284),
(326, 354, 1, 285),
(327, 355, 1, 286),
(328, 356, 1, 287),
(329, 357, 1, 288),
(330, 358, 1, 289),
(331, 359, 1, 290),
(332, 360, 1, 291),
(333, 361, 1, 292),
(334, 362, 1, 293),
(335, 363, 1, 294),
(336, 364, 1, 295),
(337, 365, 1, 296),
(338, 366, 1, 297),
(339, 367, 1, 298),
(340, 368, 1, 299),
(341, 369, 1, 300),
(342, 370, 1, 301),
(343, 371, 1, 302),
(344, 372, 1, 303),
(345, 373, 1, 304),
(346, 374, 1, 305),
(347, 375, 1, 306),
(348, 376, 1, 307),
(349, 377, 1, 308),
(350, 378, 1, 309),
(351, 379, 1, 310),
(352, 380, 1, 311),
(353, 381, 1, 312),
(354, 382, 1, 313),
(355, 383, 1, 314),
(356, 384, 1, 315),
(357, 385, 1, 316),
(358, 386, 1, 317),
(359, 387, 1, 318),
(360, 388, 1, 319),
(361, 389, 1, 320),
(362, 390, 1, 321),
(363, 391, 1, 322),
(364, 392, 1, 323),
(365, 393, 1, 324),
(366, 394, 1, 325),
(367, 395, 1, 326),
(368, 396, 1, 327),
(369, 397, 1, 328),
(370, 398, 1, 329),
(371, 399, 1, 330),
(372, 400, 1, 331),
(373, 401, 1, 332),
(374, 402, 1, 333),
(375, 403, 1, 334),
(376, 404, 1, 335),
(377, 405, 1, 336),
(378, 406, 1, 337),
(379, 407, 1, 338),
(380, 408, 1, 339),
(381, 409, 1, 340),
(382, 410, 1, 341),
(383, 411, 1, 342),
(384, 412, 1, 343),
(385, 413, 1, 344),
(386, 414, 1, 345),
(387, 415, 1, 346),
(388, 416, 1, 347),
(389, 417, 1, 348),
(390, 418, 1, 349),
(391, 419, 1, 350),
(392, 420, 1, 351),
(393, 421, 1, 352),
(394, 422, 1, 353),
(395, 423, 1, 354),
(396, 424, 1, 355),
(397, 425, 1, 356),
(398, 426, 1, 357),
(399, 427, 1, 358),
(400, 428, 1, 359),
(401, 429, 1, 360),
(402, 430, 1, 361),
(403, 431, 1, 362),
(404, 432, 1, 363),
(405, 433, 1, 364),
(406, 434, 1, 365),
(407, 435, 1, 366),
(408, 436, 1, 367),
(409, 437, 1, 368),
(410, 438, 1, 369),
(411, 439, 1, 370),
(412, 440, 1, 371),
(413, 441, 1, 372),
(414, 442, 1, 373),
(415, 443, 1, 374),
(416, 444, 1, 375),
(417, 445, 1, 376),
(418, 446, 1, 377),
(419, 447, 1, 378),
(420, 448, 1, 379),
(421, 449, 1, 380),
(422, 450, 1, 381),
(423, 451, 1, 382),
(424, 452, 1, 383),
(425, 453, 1, 384),
(426, 454, 1, 385),
(427, 455, 1, 386),
(428, 456, 1, 387),
(429, 457, 1, 388),
(430, 458, 1, 389),
(431, 459, 1, 390),
(432, 460, 1, 391),
(433, 461, 1, 392),
(434, 462, 1, 393),
(435, 463, 1, 394),
(436, 464, 1, 395),
(437, 465, 1, 396),
(438, 466, 1, 397),
(439, 467, 1, 398),
(440, 468, 1, 399),
(441, 469, 1, 400),
(442, 470, 1, 401),
(443, 471, 1, 402),
(444, 472, 1, 403),
(445, 473, 1, 404),
(446, 474, 1, 405),
(447, 475, 1, 406),
(448, 476, 1, 407),
(449, 477, 1, 408),
(450, 478, 1, 409),
(451, 479, 1, 410),
(452, 480, 1, 411),
(453, 481, 1, 412),
(454, 482, 1, 413),
(455, 483, 1, 414),
(456, 484, 1, 415),
(457, 485, 1, 416),
(458, 486, 1, 417),
(459, 487, 1, 418),
(460, 488, 1, 419),
(461, 489, 1, 420),
(462, 490, 1, 421),
(463, 491, 1, 422),
(464, 492, 1, 423),
(465, 493, 1, 424),
(466, 494, 1, 425),
(467, 495, 5, 1),
(468, 496, 5, 2),
(469, 497, 5, 3),
(470, 498, 5, 4),
(471, 499, 5, 5),
(472, 500, 5, 6),
(473, 501, 5, 7),
(474, 502, 5, 8),
(475, 503, 1, 426),
(476, 504, 1, 427),
(477, 505, 1, 428),
(478, 506, 1, 429),
(479, 507, 1, 430),
(480, 508, 1, 431),
(481, 509, 1, 432),
(482, 510, 1, 433);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions_token_links`
--

CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"song_histories\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::song-history.song-history\",\"mappedBy\":\"user\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__filename__\":\"schema.json\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"song_histories\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::song-history.song-history\",\"mappedBy\":\"user\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::favourite-song.favourite-song\":{\"kind\":\"collectionType\",\"collectionName\":\"favourite_songs\",\"info\":{\"singularName\":\"favourite-song\",\"pluralName\":\"favourite-songs\",\"displayName\":\"Favourite Song\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"song\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::song.song\"},\"user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"favourite_songs\",\"info\":{\"singularName\":\"favourite-song\",\"pluralName\":\"favourite-songs\",\"displayName\":\"Favourite Song\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"song\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::song.song\"},\"user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"favourite-song\",\"connection\":\"default\",\"uid\":\"api::favourite-song.favourite-song\",\"apiName\":\"favourite-song\",\"globalId\":\"FavouriteSong\",\"actions\":{},\"lifecycles\":{}},\"api::image-slide.image-slide\":{\"kind\":\"collectionType\",\"collectionName\":\"image_slides\",\"info\":{\"singularName\":\"image-slide\",\"pluralName\":\"image-slides\",\"displayName\":\"Image slide\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"image\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"image_slides\",\"info\":{\"singularName\":\"image-slide\",\"pluralName\":\"image-slides\",\"displayName\":\"Image slide\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"image\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"image-slide\",\"connection\":\"default\",\"uid\":\"api::image-slide.image-slide\",\"apiName\":\"image-slide\",\"globalId\":\"ImageSlide\",\"actions\":{},\"lifecycles\":{}},\"api::my-song.my-song\":{\"kind\":\"collectionType\",\"collectionName\":\"my_songs\",\"info\":{\"singularName\":\"my-song\",\"pluralName\":\"my-songs\",\"displayName\":\"My song\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"video\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"videos\"]},\"song\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::song.song\"},\"user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"name\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"my_songs\",\"info\":{\"singularName\":\"my-song\",\"pluralName\":\"my-songs\",\"displayName\":\"My song\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"video\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"videos\"]},\"song\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::song.song\"},\"user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"name\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"my-song\",\"connection\":\"default\",\"uid\":\"api::my-song.my-song\",\"apiName\":\"my-song\",\"globalId\":\"MySong\",\"actions\":{},\"lifecycles\":{}},\"api::singer.singer\":{\"kind\":\"collectionType\",\"collectionName\":\"singers\",\"info\":{\"singularName\":\"singer\",\"pluralName\":\"singers\",\"displayName\":\"Singer\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"information\":{\"type\":\"text\"},\"avatar\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"songs\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::song.song\",\"mappedBy\":\"singers\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"singers\",\"info\":{\"singularName\":\"singer\",\"pluralName\":\"singers\",\"displayName\":\"Singer\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"information\":{\"type\":\"text\"},\"avatar\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"songs\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::song.song\",\"mappedBy\":\"singers\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"singer\",\"connection\":\"default\",\"uid\":\"api::singer.singer\",\"apiName\":\"singer\",\"globalId\":\"Singer\",\"actions\":{},\"lifecycles\":{}},\"api::song.song\":{\"kind\":\"collectionType\",\"collectionName\":\"songs\",\"info\":{\"singularName\":\"song\",\"pluralName\":\"songs\",\"displayName\":\"Song\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"lyrics\":{\"type\":\"text\"},\"media\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"videos\",\"audios\"]},\"genre\":{\"type\":\"enumeration\",\"enum\":[\"YOUNG_MUSIC\",\"RAP_MUSIC\",\"CHILDREN_MUSIC\",\"LYRICAL_MUSIC\",\"CHRISTMAS_MUSIC\"],\"required\":false},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"]},\"singers\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::singer.singer\",\"inversedBy\":\"songs\"},\"song_histories\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::song-history.song-history\",\"mappedBy\":\"song\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"songs\",\"info\":{\"singularName\":\"song\",\"pluralName\":\"songs\",\"displayName\":\"Song\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"lyrics\":{\"type\":\"text\"},\"media\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"videos\",\"audios\"]},\"genre\":{\"type\":\"enumeration\",\"enum\":[\"YOUNG_MUSIC\",\"RAP_MUSIC\",\"CHILDREN_MUSIC\",\"LYRICAL_MUSIC\",\"CHRISTMAS_MUSIC\"],\"required\":false},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"]},\"singers\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::singer.singer\",\"inversedBy\":\"songs\"},\"song_histories\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::song-history.song-history\",\"mappedBy\":\"song\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"song\",\"connection\":\"default\",\"uid\":\"api::song.song\",\"apiName\":\"song\",\"globalId\":\"Song\",\"actions\":{},\"lifecycles\":{}},\"api::song-history.song-history\":{\"kind\":\"collectionType\",\"collectionName\":\"song_histories\",\"info\":{\"singularName\":\"song-history\",\"pluralName\":\"song-histories\",\"displayName\":\"Song History\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"song\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::song.song\",\"inversedBy\":\"song_histories\"},\"user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"song_histories\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"song_histories\",\"info\":{\"singularName\":\"song-history\",\"pluralName\":\"song-histories\",\"displayName\":\"Song History\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"song\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::song.song\",\"inversedBy\":\"song_histories\"},\"user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"song_histories\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"song-history\",\"connection\":\"default\",\"uid\":\"api::song-history.song-history\",\"apiName\":\"song-history\",\"globalId\":\"SongHistory\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL),
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(6, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"song_histories\":{\"edit\":{\"label\":\"song_histories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"song_histories\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}],[{\"name\":\"song_histories\",\"size\":6}]]}}', 'object', NULL, NULL),
(15, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(16, 'plugin_upload_metrics', '{\"weeklySchedule\":\"53 15 9 * * 3\",\"lastWeeklyUpdate\":1675217753067}', 'object', NULL, NULL),
(17, 'plugin_documentation_config', '{\"restrictedAccess\":false}', 'object', NULL, NULL),
(18, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(19, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}', 'object', NULL, NULL),
(20, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Karaoke Online\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(21, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":true,\"email_reset_password\":\"http://localhost:3456/auth/reset-password\",\"email_confirmation_redirection\":\"http://localhost:3456/auth/verify-account\",\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(22, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', NULL, NULL),
(23, 'plugin_content_manager_configuration_content_types::api::singer.singer', '{\"uid\":\"api::singer.singer\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"information\":{\"edit\":{\"label\":\"information\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"information\",\"searchable\":true,\"sortable\":true}},\"avatar\":{\"edit\":{\"label\":\"avatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"avatar\",\"searchable\":false,\"sortable\":false}},\"songs\":{\"edit\":{\"label\":\"songs\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"songs\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"createdAt\",\"updatedAt\",\"avatar\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"information\",\"size\":6}],[{\"name\":\"avatar\",\"size\":6},{\"name\":\"songs\",\"size\":6}]]}}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::api::song.song', '{\"uid\":\"api::song.song\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"lyrics\":{\"edit\":{\"label\":\"lyrics\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lyrics\",\"searchable\":true,\"sortable\":true}},\"media\":{\"edit\":{\"label\":\"media\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"media\",\"searchable\":false,\"sortable\":false}},\"genre\":{\"edit\":{\"label\":\"genre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"genre\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"singers\":{\"edit\":{\"label\":\"singers\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"singers\",\"searchable\":false,\"sortable\":false}},\"song_histories\":{\"edit\":{\"label\":\"song_histories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"song_histories\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"lyrics\",\"size\":6}],[{\"name\":\"media\",\"size\":6}],[{\"name\":\"genre\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"song_histories\",\"size\":6},{\"name\":\"singers\",\"size\":6}]],\"list\":[\"id\",\"name\",\"media\",\"image\",\"singers\",\"createdAt\"]}}', 'object', NULL, NULL),
(27, 'plugin_content_manager_configuration_content_types::api::image-slide.image-slide', '{\"uid\":\"api::image-slide.image-slide\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"image\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"image\",\"size\":6}]]}}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::api::song-history.song-history', '{\"uid\":\"api::song-history.song-history\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"song\":{\"edit\":{\"label\":\"song\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"song\",\"searchable\":true,\"sortable\":true}},\"user\":{\"edit\":{\"label\":\"user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"user\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"song\",\"user\"],\"edit\":[[{\"name\":\"song\",\"size\":6},{\"name\":\"user\",\"size\":6}]]}}', 'object', NULL, NULL),
(30, 'plugin_content_manager_configuration_content_types::api::favourite-song.favourite-song', '{\"uid\":\"api::favourite-song.favourite-song\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"song\":{\"edit\":{\"label\":\"song\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"song\",\"searchable\":true,\"sortable\":true}},\"user\":{\"edit\":{\"label\":\"user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"user\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"song\",\"size\":6},{\"name\":\"user\",\"size\":6}]],\"list\":[\"id\",\"song\",\"createdAt\",\"updatedAt\",\"user\"]}}', 'object', NULL, NULL),
(31, 'plugin_upload_api-folder', '{\"id\":6}', 'object', NULL, NULL),
(32, 'plugin_content_manager_configuration_content_types::api::my-song.my-song', '{\"uid\":\"api::my-song.my-song\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"video\":{\"edit\":{\"label\":\"video\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"video\",\"searchable\":false,\"sortable\":false}},\"song\":{\"edit\":{\"label\":\"song\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"song\",\"searchable\":true,\"sortable\":true}},\"user\":{\"edit\":{\"label\":\"user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"user\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"video\",\"song\",\"user\"],\"edit\":[[{\"name\":\"video\",\"size\":6},{\"name\":\"song\",\"size\":6}],[{\"name\":\"user\",\"size\":6},{\"name\":\"name\",\"size\":6}]]}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(48, '{\"tables\":[{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"favourite_songs\",\"indexes\":[{\"name\":\"favourite_songs_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"favourite_songs_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"favourite_songs_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"favourite_songs_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"image_slides\",\"indexes\":[{\"name\":\"image_slides_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"image_slides_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"image_slides_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"image_slides_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"my_songs\",\"indexes\":[{\"name\":\"my_songs_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"my_songs_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"my_songs_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"my_songs_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"singers\",\"indexes\":[{\"name\":\"singers_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"singers_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"singers_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"singers_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"information\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"songs\",\"indexes\":[{\"name\":\"songs_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"songs_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"songs_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"songs_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lyrics\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"genre\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"song_histories\",\"indexes\":[{\"name\":\"song_histories_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"song_histories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"song_histories_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"song_histories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_links\",\"indexes\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_links\",\"indexes\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_links_order_fk\",\"columns\":[\"role_order\"]},{\"name\":\"admin_users_roles_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_unique\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_links_order_inv_fk\",\"columns\":[\"api_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_morphs\",\"indexes\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"]}],\"foreignKeys\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_links\",\"indexes\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_links_unique\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_links_order_inv_fk\",\"columns\":[\"file_order\"]}],\"foreignKeys\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_links\",\"indexes\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_links_unique\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_links_order_inv_fk\",\"columns\":[\"folder_order\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_links\",\"indexes\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_links\",\"indexes\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"favourite_songs_song_links\",\"indexes\":[{\"name\":\"favourite_songs_song_links_fk\",\"columns\":[\"favourite_song_id\"]},{\"name\":\"favourite_songs_song_links_inv_fk\",\"columns\":[\"song_id\"]},{\"name\":\"favourite_songs_song_links_unique\",\"columns\":[\"favourite_song_id\",\"song_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"favourite_songs_song_links_fk\",\"columns\":[\"favourite_song_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"favourite_songs\",\"onDelete\":\"CASCADE\"},{\"name\":\"favourite_songs_song_links_inv_fk\",\"columns\":[\"song_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"songs\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"favourite_song_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"song_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"favourite_songs_user_links\",\"indexes\":[{\"name\":\"favourite_songs_user_links_fk\",\"columns\":[\"favourite_song_id\"]},{\"name\":\"favourite_songs_user_links_inv_fk\",\"columns\":[\"user_id\"]},{\"name\":\"favourite_songs_user_links_unique\",\"columns\":[\"favourite_song_id\",\"user_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"favourite_songs_user_links_fk\",\"columns\":[\"favourite_song_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"favourite_songs\",\"onDelete\":\"CASCADE\"},{\"name\":\"favourite_songs_user_links_inv_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"favourite_song_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"my_songs_song_links\",\"indexes\":[{\"name\":\"my_songs_song_links_fk\",\"columns\":[\"my_song_id\"]},{\"name\":\"my_songs_song_links_inv_fk\",\"columns\":[\"song_id\"]},{\"name\":\"my_songs_song_links_unique\",\"columns\":[\"my_song_id\",\"song_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"my_songs_song_links_fk\",\"columns\":[\"my_song_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"my_songs\",\"onDelete\":\"CASCADE\"},{\"name\":\"my_songs_song_links_inv_fk\",\"columns\":[\"song_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"songs\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"my_song_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"song_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"my_songs_user_links\",\"indexes\":[{\"name\":\"my_songs_user_links_fk\",\"columns\":[\"my_song_id\"]},{\"name\":\"my_songs_user_links_inv_fk\",\"columns\":[\"user_id\"]},{\"name\":\"my_songs_user_links_unique\",\"columns\":[\"my_song_id\",\"user_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"my_songs_user_links_fk\",\"columns\":[\"my_song_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"my_songs\",\"onDelete\":\"CASCADE\"},{\"name\":\"my_songs_user_links_inv_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"my_song_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"songs_singers_links\",\"indexes\":[{\"name\":\"songs_singers_links_fk\",\"columns\":[\"song_id\"]},{\"name\":\"songs_singers_links_inv_fk\",\"columns\":[\"singer_id\"]},{\"name\":\"songs_singers_links_unique\",\"columns\":[\"song_id\",\"singer_id\"],\"type\":\"unique\"},{\"name\":\"songs_singers_links_order_fk\",\"columns\":[\"singer_order\"]},{\"name\":\"songs_singers_links_order_inv_fk\",\"columns\":[\"song_order\"]}],\"foreignKeys\":[{\"name\":\"songs_singers_links_fk\",\"columns\":[\"song_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"songs\",\"onDelete\":\"CASCADE\"},{\"name\":\"songs_singers_links_inv_fk\",\"columns\":[\"singer_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"singers\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"song_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"singer_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"singer_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"song_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"song_histories_song_links\",\"indexes\":[{\"name\":\"song_histories_song_links_fk\",\"columns\":[\"song_history_id\"]},{\"name\":\"song_histories_song_links_inv_fk\",\"columns\":[\"song_id\"]},{\"name\":\"song_histories_song_links_unique\",\"columns\":[\"song_history_id\",\"song_id\"],\"type\":\"unique\"},{\"name\":\"song_histories_song_links_order_inv_fk\",\"columns\":[\"song_history_order\"]}],\"foreignKeys\":[{\"name\":\"song_histories_song_links_fk\",\"columns\":[\"song_history_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"song_histories\",\"onDelete\":\"CASCADE\"},{\"name\":\"song_histories_song_links_inv_fk\",\"columns\":[\"song_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"songs\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"song_history_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"song_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"song_history_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"song_histories_user_links\",\"indexes\":[{\"name\":\"song_histories_user_links_fk\",\"columns\":[\"song_history_id\"]},{\"name\":\"song_histories_user_links_inv_fk\",\"columns\":[\"user_id\"]},{\"name\":\"song_histories_user_links_unique\",\"columns\":[\"song_history_id\",\"user_id\"],\"type\":\"unique\"},{\"name\":\"song_histories_user_links_order_inv_fk\",\"columns\":[\"song_history_order\"]}],\"foreignKeys\":[{\"name\":\"song_histories_user_links_fk\",\"columns\":[\"song_history_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"song_histories\",\"onDelete\":\"CASCADE\"},{\"name\":\"song_histories_user_links_inv_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"song_history_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"song_history_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2023-01-29 10:29:44', 'c623da03e310ee1ee00416ad7e0f5937');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upload_folders`
--

INSERT INTO `upload_folders` (`id`, `name`, `path_id`, `path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'singer', 1, '/1', '2023-01-10 20:13:00.143000', '2023-01-10 20:13:00.143000', 1, 1),
(2, 'song', 2, '/2', '2023-01-11 14:00:38.057000', '2023-01-11 14:00:38.057000', 1, 1),
(3, 'image', 3, '/2/3', '2023-01-11 14:00:56.246000', '2023-01-11 14:00:56.246000', 1, 1),
(4, 'video', 4, '/2/4', '2023-01-11 14:01:00.991000', '2023-01-11 14:01:00.991000', 1, 1),
(5, 'slide', 5, '/5', '2023-01-14 11:30:06.349000', '2023-01-14 11:30:06.349000', 1, 1),
(6, 'API Uploads', 6, '/6', '2023-01-25 21:23:47.480000', '2023-01-25 21:23:47.480000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upload_folders_parent_links`
--

INSERT INTO `upload_folders_parent_links` (`id`, `folder_id`, `inv_folder_id`, `folder_order`) VALUES
(1, 3, 2, 1),
(2, 4, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2023-01-09 22:22:42.304000', '2023-01-09 22:22:42.304000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2023-01-09 22:22:42.305000', '2023-01-09 22:22:42.305000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2023-01-09 22:22:42.321000', '2023-01-09 22:22:42.321000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2023-01-09 22:22:42.321000', '2023-01-09 22:22:42.321000', NULL, NULL),
(5, 'plugin::users-permissions.auth.forgotPassword', '2023-01-09 22:22:42.321000', '2023-01-09 22:22:42.321000', NULL, NULL),
(6, 'plugin::users-permissions.auth.resetPassword', '2023-01-09 22:22:42.321000', '2023-01-09 22:22:42.321000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2023-01-09 22:22:42.321000', '2023-01-09 22:22:42.321000', NULL, NULL),
(8, 'plugin::users-permissions.auth.emailConfirmation', '2023-01-09 22:22:42.321000', '2023-01-09 22:22:42.321000', NULL, NULL),
(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-01-09 22:22:42.321000', '2023-01-09 22:22:42.321000', NULL, NULL),
(10, 'api::singer.singer.find', '2023-01-10 17:24:51.028000', '2023-01-10 17:24:51.028000', NULL, NULL),
(11, 'api::song.song.find', '2023-01-10 17:24:51.028000', '2023-01-10 17:24:51.028000', NULL, NULL),
(12, 'api::singer.singer.findOne', '2023-01-10 17:24:51.028000', '2023-01-10 17:24:51.028000', NULL, NULL),
(13, 'api::song.song.findOne', '2023-01-10 17:24:51.028000', '2023-01-10 17:24:51.028000', NULL, NULL),
(14, 'api::singer.singer.findOne', '2023-01-10 20:54:47.495000', '2023-01-10 20:54:47.495000', NULL, NULL),
(15, 'api::singer.singer.find', '2023-01-10 20:54:47.495000', '2023-01-10 20:54:47.495000', NULL, NULL),
(19, 'plugin::email.email.send', '2023-01-11 13:38:40.787000', '2023-01-11 13:38:40.787000', NULL, NULL),
(20, 'plugin::users-permissions.auth.changePassword', '2023-01-11 13:38:40.787000', '2023-01-11 13:38:40.787000', NULL, NULL),
(21, 'plugin::users-permissions.auth.callback', '2023-01-11 13:38:56.348000', '2023-01-11 13:38:56.348000', NULL, NULL),
(22, 'plugin::users-permissions.auth.resetPassword', '2023-01-11 13:38:56.348000', '2023-01-11 13:38:56.348000', NULL, NULL),
(23, 'plugin::users-permissions.auth.emailConfirmation', '2023-01-11 13:38:56.348000', '2023-01-11 13:38:56.348000', NULL, NULL),
(24, 'plugin::users-permissions.auth.forgotPassword', '2023-01-11 13:38:56.348000', '2023-01-11 13:38:56.348000', NULL, NULL),
(25, 'plugin::users-permissions.auth.connect', '2023-01-11 13:38:56.348000', '2023-01-11 13:38:56.348000', NULL, NULL),
(26, 'plugin::users-permissions.auth.register', '2023-01-11 13:38:56.348000', '2023-01-11 13:38:56.348000', NULL, NULL),
(27, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-01-11 13:38:56.348000', '2023-01-11 13:38:56.348000', NULL, NULL),
(28, 'api::song.song.find', '2023-01-11 16:09:55.955000', '2023-01-11 16:09:55.955000', NULL, NULL),
(29, 'api::song.song.findOne', '2023-01-11 16:09:55.955000', '2023-01-11 16:09:55.955000', NULL, NULL),
(30, 'api::image-slide.image-slide.find', '2023-01-14 11:32:49.581000', '2023-01-14 11:32:49.581000', NULL, NULL),
(31, 'api::image-slide.image-slide.findOne', '2023-01-14 11:32:49.581000', '2023-01-14 11:32:49.581000', NULL, NULL),
(32, 'api::image-slide.image-slide.find', '2023-01-14 11:32:56.344000', '2023-01-14 11:32:56.344000', NULL, NULL),
(33, 'api::image-slide.image-slide.findOne', '2023-01-14 11:32:56.344000', '2023-01-14 11:32:56.344000', NULL, NULL),
(39, 'api::song-history.song-history.find', '2023-01-15 14:30:03.679000', '2023-01-15 14:30:03.679000', NULL, NULL),
(40, 'api::song-history.song-history.findOne', '2023-01-15 14:30:03.679000', '2023-01-15 14:30:03.679000', NULL, NULL),
(41, 'api::song-history.song-history.create', '2023-01-15 14:30:03.679000', '2023-01-15 14:30:03.679000', NULL, NULL),
(42, 'api::song-history.song-history.find', '2023-01-15 14:33:36.137000', '2023-01-15 14:33:36.137000', NULL, NULL),
(43, 'api::song-history.song-history.findOne', '2023-01-15 14:33:36.137000', '2023-01-15 14:33:36.137000', NULL, NULL),
(44, 'api::song-history.song-history.create', '2023-01-15 14:33:36.137000', '2023-01-15 14:33:36.137000', NULL, NULL),
(45, 'api::song-history.song-history.update', '2023-01-15 14:33:36.137000', '2023-01-15 14:33:36.137000', NULL, NULL),
(46, 'api::song-history.song-history.delete', '2023-01-15 14:33:36.137000', '2023-01-15 14:33:36.137000', NULL, NULL),
(47, 'plugin::users-permissions.user.find', '2023-01-15 18:21:20.135000', '2023-01-15 18:21:20.135000', NULL, NULL),
(48, 'plugin::users-permissions.user.findOne', '2023-01-15 18:21:20.135000', '2023-01-15 18:21:20.135000', NULL, NULL),
(49, 'plugin::email.email.send', '2023-01-15 18:22:31.770000', '2023-01-15 18:22:31.770000', NULL, NULL),
(50, 'plugin::upload.content-api.find', '2023-01-15 18:22:31.770000', '2023-01-15 18:22:31.770000', NULL, NULL),
(51, 'plugin::upload.content-api.findOne', '2023-01-15 18:22:31.770000', '2023-01-15 18:22:31.770000', NULL, NULL),
(52, 'plugin::users-permissions.user.find', '2023-01-15 18:22:31.770000', '2023-01-15 18:22:31.770000', NULL, NULL),
(53, 'plugin::users-permissions.role.find', '2023-01-15 18:22:31.770000', '2023-01-15 18:22:31.770000', NULL, NULL),
(54, 'plugin::users-permissions.user.findOne', '2023-01-15 18:22:31.770000', '2023-01-15 18:22:31.770000', NULL, NULL),
(55, 'plugin::users-permissions.role.findOne', '2023-01-15 18:22:31.770000', '2023-01-15 18:22:31.770000', NULL, NULL),
(56, 'plugin::users-permissions.user.count', '2023-01-15 18:22:31.770000', '2023-01-15 18:22:31.770000', NULL, NULL),
(57, 'plugin::users-permissions.permissions.getPermissions', '2023-01-15 18:22:31.770000', '2023-01-15 18:22:31.770000', NULL, NULL),
(58, 'api::song-history.song-history.delete', '2023-01-15 21:45:54.397000', '2023-01-15 21:45:54.397000', NULL, NULL),
(64, 'api::favourite-song.favourite-song.create', '2023-01-16 22:49:31.645000', '2023-01-16 22:49:31.645000', NULL, NULL),
(65, 'api::favourite-song.favourite-song.find', '2023-01-16 22:49:31.645000', '2023-01-16 22:49:31.645000', NULL, NULL),
(66, 'api::favourite-song.favourite-song.findOne', '2023-01-16 22:49:31.645000', '2023-01-16 22:49:31.645000', NULL, NULL),
(67, 'api::favourite-song.favourite-song.update', '2023-01-16 22:49:31.645000', '2023-01-16 22:49:31.645000', NULL, NULL),
(68, 'api::favourite-song.favourite-song.delete', '2023-01-16 22:49:31.645000', '2023-01-16 22:49:31.645000', NULL, NULL),
(69, 'plugin::upload.content-api.upload', '2023-01-25 21:23:43.875000', '2023-01-25 21:23:43.875000', NULL, NULL),
(70, 'api::my-song.my-song.find', '2023-01-25 21:30:43.946000', '2023-01-25 21:30:43.946000', NULL, NULL),
(71, 'api::my-song.my-song.findOne', '2023-01-25 21:30:43.946000', '2023-01-25 21:30:43.946000', NULL, NULL),
(72, 'api::my-song.my-song.create', '2023-01-25 21:30:43.946000', '2023-01-25 21:30:43.946000', NULL, NULL),
(73, 'api::my-song.my-song.update', '2023-01-25 21:30:43.946000', '2023-01-25 21:30:43.946000', NULL, NULL),
(74, 'api::my-song.my-song.delete', '2023-01-25 21:30:43.946000', '2023-01-25 21:30:43.946000', NULL, NULL),
(75, 'api::my-song.my-song.find', '2023-01-27 21:38:48.546000', '2023-01-27 21:38:48.546000', NULL, NULL),
(76, 'api::my-song.my-song.findOne', '2023-01-27 21:38:48.546000', '2023-01-27 21:38:48.546000', NULL, NULL),
(77, 'api::my-song.my-song.create', '2023-01-27 21:38:48.546000', '2023-01-27 21:38:48.546000', NULL, NULL),
(78, 'api::my-song.my-song.update', '2023-01-27 21:38:48.546000', '2023-01-27 21:38:48.546000', NULL, NULL),
(79, 'api::my-song.my-song.delete', '2023-01-27 21:38:48.546000', '2023-01-27 21:38:48.546000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 2, 1, 1),
(2, 1, 1, 1),
(3, 3, 2, 1),
(4, 4, 2, 1),
(5, 9, 2, 2),
(6, 5, 2, 2),
(7, 8, 2, 2),
(8, 7, 2, 2),
(9, 6, 2, 2),
(10, 11, 2, 3),
(11, 10, 2, 3),
(12, 12, 2, 3),
(13, 13, 2, 3),
(14, 15, 1, 2),
(15, 14, 1, 2),
(19, 19, 2, 5),
(20, 20, 2, 5),
(21, 21, 1, 3),
(22, 22, 1, 3),
(23, 23, 1, 3),
(24, 25, 1, 4),
(25, 27, 1, 5),
(26, 26, 1, 5),
(27, 24, 1, 5),
(28, 28, 1, 6),
(29, 29, 1, 6),
(30, 30, 2, 6),
(31, 31, 2, 6),
(32, 32, 1, 7),
(33, 33, 1, 8),
(39, 39, 1, 9),
(40, 40, 1, 10),
(41, 41, 1, 10),
(42, 44, 2, 7),
(43, 43, 2, 7),
(44, 42, 2, 7),
(45, 46, 2, 7),
(46, 45, 2, 7),
(47, 47, 2, 8),
(48, 48, 2, 8),
(49, 50, 1, 11),
(50, 49, 1, 11),
(51, 52, 1, 11),
(52, 51, 1, 11),
(53, 54, 1, 12),
(54, 53, 1, 12),
(55, 56, 1, 12),
(56, 55, 1, 12),
(57, 57, 1, 12),
(58, 58, 1, 13),
(64, 64, 1, 14),
(65, 65, 1, 14),
(66, 66, 1, 14),
(67, 68, 1, 15),
(68, 67, 1, 15),
(69, 69, 1, 16),
(70, 70, 2, 9),
(71, 71, 2, 9),
(72, 72, 2, 9),
(73, 73, 2, 9),
(74, 74, 2, 9),
(75, 76, 1, 17),
(76, 75, 1, 17),
(77, 77, 1, 17),
(78, 79, 1, 18),
(79, 78, 1, 18);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2023-01-09 22:22:42.289000', '2023-01-27 21:39:53.620000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2023-01-09 22:22:42.296000', '2023-01-27 21:46:40.615000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'user', 'quanghadang@gmail.com', 'local', '$2a$10$bMl4whqMUfql8qC2NjBfGeezpCIuL5S3BRTmVY5C0KJc2CqEzCk1e', '0eeff7ded12eb7587c6f2e55455aaa5e0ef5a26a1a2b2c4e06ca3b31ac4a09da0a2c8f8a04e2c43ba769e96e28e52a64a4f57d02008e4200b7f4bba8254a0413', NULL, 1, 0, '2023-01-10 10:23:19.049000', '2023-01-29 19:33:44.649000', 1, 1),
(2, 'demo', 'demo@gmail.com', 'local', '$2a$10$d/4g16epOBbMOhJnQ0zDEulIXtDfvoS9JyrpGHanps//Pr2e0SDB2', NULL, NULL, 1, 0, '2023-01-15 14:34:36.868000', '2023-01-15 14:34:36.868000', 1, 1),
(5, 'hadvq', 'quanghadang08@gmail.com', 'local', '$2a$10$lInMtFs70qfCinK6Na4gQ.E4SKTbROyynBHhKf/Vd.Abm6GdSZhOe', NULL, NULL, 1, 0, '2023-01-29 19:35:45.910000', '2023-01-29 19:35:58.936000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`id`, `user_id`, `role_id`, `user_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2),
(5, 5, 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Indexes for table `favourite_songs`
--
ALTER TABLE `favourite_songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favourite_songs_created_by_id_fk` (`created_by_id`),
  ADD KEY `favourite_songs_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `favourite_songs_song_links`
--
ALTER TABLE `favourite_songs_song_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `favourite_songs_song_links_unique` (`favourite_song_id`,`song_id`),
  ADD KEY `favourite_songs_song_links_fk` (`favourite_song_id`),
  ADD KEY `favourite_songs_song_links_inv_fk` (`song_id`);

--
-- Indexes for table `favourite_songs_user_links`
--
ALTER TABLE `favourite_songs_user_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `favourite_songs_user_links_unique` (`favourite_song_id`,`user_id`),
  ADD KEY `favourite_songs_user_links_fk` (`favourite_song_id`),
  ADD KEY `favourite_songs_user_links_inv_fk` (`user_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Indexes for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `image_slides`
--
ALTER TABLE `image_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_slides_created_by_id_fk` (`created_by_id`),
  ADD KEY `image_slides_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `my_songs`
--
ALTER TABLE `my_songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_songs_created_by_id_fk` (`created_by_id`),
  ADD KEY `my_songs_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `my_songs_song_links`
--
ALTER TABLE `my_songs_song_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_songs_song_links_unique` (`my_song_id`,`song_id`),
  ADD KEY `my_songs_song_links_fk` (`my_song_id`),
  ADD KEY `my_songs_song_links_inv_fk` (`song_id`);

--
-- Indexes for table `my_songs_user_links`
--
ALTER TABLE `my_songs_user_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_songs_user_links_unique` (`my_song_id`,`user_id`),
  ADD KEY `my_songs_user_links_fk` (`my_song_id`),
  ADD KEY `my_songs_user_links_inv_fk` (`user_id`);

--
-- Indexes for table `singers`
--
ALTER TABLE `singers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `singers_created_by_id_fk` (`created_by_id`),
  ADD KEY `singers_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `songs_created_by_id_fk` (`created_by_id`),
  ADD KEY `songs_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `songs_singers_links`
--
ALTER TABLE `songs_singers_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `songs_singers_links_unique` (`song_id`,`singer_id`),
  ADD KEY `songs_singers_links_fk` (`song_id`),
  ADD KEY `songs_singers_links_inv_fk` (`singer_id`),
  ADD KEY `songs_singers_links_order_fk` (`singer_order`),
  ADD KEY `songs_singers_links_order_inv_fk` (`song_order`);

--
-- Indexes for table `song_histories`
--
ALTER TABLE `song_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `song_histories_created_by_id_fk` (`created_by_id`),
  ADD KEY `song_histories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `song_histories_song_links`
--
ALTER TABLE `song_histories_song_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `song_histories_song_links_unique` (`song_history_id`,`song_id`),
  ADD KEY `song_histories_song_links_fk` (`song_history_id`),
  ADD KEY `song_histories_song_links_inv_fk` (`song_id`),
  ADD KEY `song_histories_song_links_order_inv_fk` (`song_history_order`);

--
-- Indexes for table `song_histories_user_links`
--
ALTER TABLE `song_histories_user_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `song_histories_user_links_unique` (`song_history_id`,`user_id`),
  ADD KEY `song_histories_user_links_fk` (`song_history_id`),
  ADD KEY `song_histories_user_links_inv_fk` (`user_id`),
  ADD KEY `song_histories_user_links_order_inv_fk` (`song_history_order`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `favourite_songs`
--
ALTER TABLE `favourite_songs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `favourite_songs_song_links`
--
ALTER TABLE `favourite_songs_song_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `favourite_songs_user_links`
--
ALTER TABLE `favourite_songs_user_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `image_slides`
--
ALTER TABLE `image_slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `my_songs`
--
ALTER TABLE `my_songs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `my_songs_song_links`
--
ALTER TABLE `my_songs_song_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `my_songs_user_links`
--
ALTER TABLE `my_songs_user_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `singers`
--
ALTER TABLE `singers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `songs_singers_links`
--
ALTER TABLE `songs_singers_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `song_histories`
--
ALTER TABLE `song_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=511;

--
-- AUTO_INCREMENT for table `song_histories_song_links`
--
ALTER TABLE `song_histories_song_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT for table `song_histories_user_links`
--
ALTER TABLE `song_histories_user_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favourite_songs`
--
ALTER TABLE `favourite_songs`
  ADD CONSTRAINT `favourite_songs_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `favourite_songs_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `favourite_songs_song_links`
--
ALTER TABLE `favourite_songs_song_links`
  ADD CONSTRAINT `favourite_songs_song_links_fk` FOREIGN KEY (`favourite_song_id`) REFERENCES `favourite_songs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favourite_songs_song_links_inv_fk` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favourite_songs_user_links`
--
ALTER TABLE `favourite_songs_user_links`
  ADD CONSTRAINT `favourite_songs_user_links_fk` FOREIGN KEY (`favourite_song_id`) REFERENCES `favourite_songs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favourite_songs_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `image_slides`
--
ALTER TABLE `image_slides`
  ADD CONSTRAINT `image_slides_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `image_slides_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `my_songs`
--
ALTER TABLE `my_songs`
  ADD CONSTRAINT `my_songs_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `my_songs_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `my_songs_song_links`
--
ALTER TABLE `my_songs_song_links`
  ADD CONSTRAINT `my_songs_song_links_fk` FOREIGN KEY (`my_song_id`) REFERENCES `my_songs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_songs_song_links_inv_fk` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `my_songs_user_links`
--
ALTER TABLE `my_songs_user_links`
  ADD CONSTRAINT `my_songs_user_links_fk` FOREIGN KEY (`my_song_id`) REFERENCES `my_songs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_songs_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `singers`
--
ALTER TABLE `singers`
  ADD CONSTRAINT `singers_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `singers_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `songs_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `songs_singers_links`
--
ALTER TABLE `songs_singers_links`
  ADD CONSTRAINT `songs_singers_links_fk` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `songs_singers_links_inv_fk` FOREIGN KEY (`singer_id`) REFERENCES `singers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `song_histories`
--
ALTER TABLE `song_histories`
  ADD CONSTRAINT `song_histories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `song_histories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `song_histories_song_links`
--
ALTER TABLE `song_histories_song_links`
  ADD CONSTRAINT `song_histories_song_links_fk` FOREIGN KEY (`song_history_id`) REFERENCES `song_histories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `song_histories_song_links_inv_fk` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `song_histories_user_links`
--
ALTER TABLE `song_histories_user_links`
  ADD CONSTRAINT `song_histories_user_links_fk` FOREIGN KEY (`song_history_id`) REFERENCES `song_histories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `song_histories_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
