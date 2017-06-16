-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2017 a las 23:24:05
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_categories`
--

CREATE TABLE `banner_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 1, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(31, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(32, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(33, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(34, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(35, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(36, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(37, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(45, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(47, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(48, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(49, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(52, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(53, 7, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(54, 7, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{"validation":{"rule":"required|max:30","messages":{"required":"Este campo es obligatorio","max":"maximo :max caracteres"}}}', 2),
(55, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 3),
(56, 7, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 4),
(57, 8, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(58, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{"validation":{"rule":"required|max:30","messages":{"required":"Este campo es obligatorio","max":"maximo :max caracteres"}}}', 2),
(59, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 4),
(60, 8, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 5),
(61, 9, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(62, 9, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{"validation":{"rule":"required","messages":{"required":"Este campo es obligatorio"}}}', 2),
(63, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 3),
(64, 9, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, NULL, 4),
(65, 9, 'status', 'select_dropdown', 'Status', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"status"}}', 5),
(66, 9, 'category', 'select_dropdown', 'Category', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"name"}}', 6),
(67, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 7),
(68, 9, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 8),
(69, 8, 'status', 'select_dropdown', 'Status', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"status"}}', 3),
(70, 10, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(71, 10, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(72, 10, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 3),
(73, 10, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, NULL, 4),
(74, 10, 'status', 'select_dropdown', 'Status', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"status"}}', 5),
(75, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(76, 10, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 7),
(77, 11, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(78, 11, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, NULL, 2),
(79, 11, 'body', 'rich_text_box', 'Body', 0, 0, 0, 1, 1, 1, NULL, 3),
(80, 11, 'image', 'image', 'Image', 0, 0, 0, 1, 1, 1, NULL, 4),
(81, 11, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{"slugify":{"origin":"title","forceUpdate":true}}', 5),
(82, 11, 'meta_description', 'text', 'Meta Description', 0, 0, 0, 1, 1, 1, NULL, 6),
(83, 11, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 0, 1, 1, 1, NULL, 7),
(84, 11, 'category', 'select_dropdown', 'Category', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"name"}}', 8),
(85, 11, 'status', 'select_dropdown', 'Status', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"status"}}', 9),
(86, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 10),
(87, 11, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 11),
(88, 12, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(89, 12, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{"validation":{"rule":"required","messages":{"required":"Este campo es obligatorio"}}}', 2),
(90, 12, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 3),
(91, 12, 'status', 'select_dropdown', 'Status', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"status"}}', 4),
(92, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 5),
(93, 12, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 6),
(94, 13, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(95, 13, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{"validation":{"rule":"required","messages":{"required":"Este campo es obligatorio"}}}', 2),
(96, 13, 'body', 'rich_text_box', 'Body', 0, 0, 0, 1, 1, 1, '{"validation":{"rule":"required","messages":{"required":"Este campo es obligatorio"}}}', 3),
(97, 13, 'image', 'image', 'Image', 0, 0, 0, 1, 1, 1, NULL, 4),
(98, 13, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{"slugify":{"origin":"title","forceUpdate":true}}', 5),
(99, 13, 'meta_description', 'text', 'Meta Description', 0, 0, 0, 1, 1, 1, NULL, 6),
(100, 13, 'metal_keywords', 'text', 'Metal Keywords', 0, 0, 0, 1, 1, 1, NULL, 7),
(101, 13, 'seo_title', 'text', 'Seo Title', 0, 1, 1, 1, 1, 1, NULL, 8),
(102, 13, 'cover', 'checkbox', 'Cover', 0, 0, 0, 1, 1, 1, NULL, 9),
(103, 13, 'category', 'select_dropdown', 'Category', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"name"}}', 10),
(104, 13, 'status', 'select_dropdown', 'Status', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"status"}}', 11),
(105, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(106, 13, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 13),
(107, 14, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(108, 14, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(109, 14, 'status', 'select_dropdown', 'Status', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"status"}}', 3),
(110, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 4),
(111, 14, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 5),
(112, 15, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(113, 15, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{"validation":{"rule":"required","messages":{"required":"Este campo es obligatorio"}}}', 2),
(114, 15, 'category', 'select_dropdown', 'Category', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"name"}}', 3),
(115, 15, 'status', 'select_dropdown', 'Status', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"status"}}', 4),
(116, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 5),
(117, 15, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 6),
(118, 16, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(119, 16, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{"validation":{"rule":"required","messages":{"required":"Este campo es obligatorio"}}}', 2),
(120, 16, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{"validation":{"rule":"required","messages":{"required":"Este campo es obligatorio"}}}', 3),
(121, 16, 'description', 'text', 'Description', 0, 0, 0, 1, 1, 1, NULL, 4),
(122, 16, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, NULL, 5),
(123, 16, 'status', 'select_dropdown', 'Status', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"status"}}', 6),
(124, 16, 'category', 'select_dropdown', 'Category', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"name"}}', 7),
(125, 16, 'album', 'select_dropdown', 'Album', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"name"}}', 8),
(126, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 9),
(127, 16, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', '', '', 1, 0, '2017-06-11 19:24:08', '2017-06-11 19:24:08'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', '', '', 1, 0, '2017-06-11 19:24:08', '2017-06-11 19:24:08'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', '', '', 1, 0, '2017-06-11 19:24:08', '2017-06-11 19:24:08'),
(7, 'statuses', 'status', 'Status', 'Statuses', 'voyager-check-circle', 'App\\Status', NULL, NULL, 1, 0, '2017-06-13 22:33:55', '2017-06-13 22:33:55'),
(8, 'banner_categories', 'banner-category', 'Banner Category', 'Banner Categories', NULL, 'App\\BannerCategory', NULL, NULL, 1, 0, '2017-06-13 22:48:52', '2017-06-13 22:48:52'),
(9, 'banners', 'banner', 'Banner', 'Banners', 'voyager-images', 'App\\Banner', NULL, NULL, 1, 0, '2017-06-13 23:11:43', '2017-06-13 23:11:43'),
(10, 'page_categories', 'page-category', 'Page Category', 'Page Categories', 'voyager-categories', 'App\\PageCategory', NULL, NULL, 1, 0, '2017-06-13 23:49:37', '2017-06-13 23:49:37'),
(11, 'pages', 'page', 'Page', 'Pages', 'voyager-file-text', 'App\\Page', NULL, NULL, 1, 0, '2017-06-14 00:08:13', '2017-06-14 00:08:13'),
(12, 'news_categories', 'news-category', 'News Category', 'News Categories', 'voyager-categories', 'App\\NewsCategory', NULL, NULL, 1, 0, '2017-06-14 00:38:48', '2017-06-14 00:38:48'),
(13, 'news', 'news', 'News', 'News', NULL, 'App\\News', NULL, NULL, 1, 0, '2017-06-14 00:54:03', '2017-06-14 00:56:56'),
(14, 'gallery_categories', 'gallery-category', 'Gallery Category', 'Gallery Categories', 'voyager-categories', 'App\\GalleryCategory', NULL, NULL, 1, 0, '2017-06-14 01:22:28', '2017-06-14 01:22:28'),
(15, 'gallery_albums', 'gallery-album', 'Gallery Album', 'Gallery Albums', NULL, 'App\\GalleryAlbum', NULL, NULL, 1, 0, '2017-06-14 01:31:30', '2017-06-14 01:31:30'),
(16, 'gallery_photos', 'gallery-photo', 'Gallery Photo', 'Gallery Photos', 'voyager-photo', 'App\\GalleryPhoto', NULL, NULL, 1, 0, '2017-06-14 01:45:30', '2017-06-14 01:45:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gallery_albums`
--

CREATE TABLE `gallery_albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gallery_photos`
--

CREATE TABLE `gallery_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `album` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-06-11 19:24:19', '2017-06-11 19:24:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '/admin', '_self', 'voyager-boat', NULL, NULL, 1, '2017-06-11 19:24:19', '2017-06-11 19:24:19', NULL, NULL),
(2, 1, 'Media', '/admin/media', '_self', 'voyager-images', NULL, NULL, 9, '2017-06-11 19:24:19', '2017-06-14 02:06:10', NULL, NULL),
(4, 1, 'Users', '/admin/users', '_self', 'voyager-person', NULL, NULL, 8, '2017-06-11 19:24:20', '2017-06-14 02:06:10', NULL, NULL),
(7, 1, 'Roles', '/admin/roles', '_self', 'voyager-lock', NULL, NULL, 2, '2017-06-11 19:24:20', '2017-06-11 19:24:20', NULL, NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2017-06-11 19:24:20', '2017-06-14 02:06:10', NULL, NULL),
(9, 1, 'Menu Builder', '/admin/menus', '_self', 'voyager-list', NULL, 8, 1, '2017-06-11 19:24:20', '2017-06-13 22:37:23', NULL, NULL),
(10, 1, 'Database', '/admin/database', '_self', 'voyager-data', NULL, 8, 2, '2017-06-11 19:24:20', '2017-06-13 22:37:23', NULL, NULL),
(11, 1, 'Settings', '/admin/settings', '_self', 'voyager-settings', NULL, NULL, 11, '2017-06-11 19:24:20', '2017-06-14 02:06:10', NULL, NULL),
(12, 1, 'status', '/admin/status', '_self', 'voyager-check-circle', '#000000', NULL, 7, '2017-06-13 22:37:13', '2017-06-14 02:06:10', NULL, ''),
(13, 1, 'banner category', '/admin/banner-category', '_self', 'voyager-categories', '#000000', 15, 1, '2017-06-13 22:51:30', '2017-06-13 23:28:00', NULL, ''),
(14, 1, 'banner', '/admin/banner', '_self', 'voyager-images', '#000000', 15, 2, '2017-06-13 23:26:39', '2017-06-13 23:28:11', NULL, ''),
(15, 1, 'banners', '#', '_self', 'voyager-plus', '#000000', NULL, 3, '2017-06-13 23:27:24', '2017-06-13 23:27:58', NULL, ''),
(16, 1, 'page category', '/admin/page-category', '_self', 'voyager-categories', '#000000', 17, 1, '2017-06-13 23:53:39', '2017-06-14 00:17:11', NULL, ''),
(17, 1, 'pages', '#', '_self', 'voyager-plus', '#000000', NULL, 4, '2017-06-14 00:16:39', '2017-06-14 00:18:45', NULL, ''),
(18, 1, 'page', '/admin/page', '_self', 'voyager-file-text', '#000000', 17, 2, '2017-06-14 00:18:11', '2017-06-14 00:18:24', NULL, ''),
(19, 1, 'news', '#', '_self', 'voyager-plus', '#000000', NULL, 5, '2017-06-14 01:04:39', '2017-06-14 01:07:43', NULL, ''),
(20, 1, 'news-category', '/admin/news-category', '_self', 'voyager-categories', '#000000', 19, 1, '2017-06-14 01:06:10', '2017-06-14 01:07:16', NULL, ''),
(21, 1, 'news', '/admin/news', '_self', 'voyager-news', '#000000', 19, 2, '2017-06-14 01:07:07', '2017-06-14 01:07:26', NULL, ''),
(22, 1, 'gallery', '#', '_self', 'voyager-plus', '#000000', NULL, 6, '2017-06-14 01:56:34', '2017-06-14 02:02:08', NULL, ''),
(23, 1, 'gallery category', '/admin/gallery-category', '_self', 'voyager-categories', '#000000', 22, 1, '2017-06-14 01:59:53', '2017-06-14 02:01:56', NULL, ''),
(24, 1, 'gallery album', '/admin/gallery-album', '_self', 'voyager-photos', '#000000', 22, 2, '2017-06-14 02:00:54', '2017-06-14 02:01:58', NULL, ''),
(25, 1, 'photo', '/admin/gallery-photo', '_self', 'voyager-photo', '#000000', 22, 3, '2017-06-14 02:01:42', '2017-06-14 02:01:59', NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_21_000000_add_order_to_data_rows_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metal_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` varchar(3000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `page_categories`
--

CREATE TABLE `page_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2017-06-11 19:24:20', '2017-06-11 19:24:20', NULL),
(2, 'browse_database', NULL, '2017-06-11 19:24:21', '2017-06-11 19:24:21', NULL),
(3, 'browse_media', NULL, '2017-06-11 19:24:21', '2017-06-11 19:24:21', NULL),
(4, 'browse_settings', NULL, '2017-06-11 19:24:21', '2017-06-11 19:24:21', NULL),
(5, 'browse_menus', 'menus', '2017-06-11 19:24:21', '2017-06-11 19:24:21', NULL),
(6, 'read_menus', 'menus', '2017-06-11 19:24:21', '2017-06-11 19:24:21', NULL),
(7, 'edit_menus', 'menus', '2017-06-11 19:24:21', '2017-06-11 19:24:21', NULL),
(8, 'add_menus', 'menus', '2017-06-11 19:24:21', '2017-06-11 19:24:21', NULL),
(9, 'delete_menus', 'menus', '2017-06-11 19:24:21', '2017-06-11 19:24:21', NULL),
(15, 'browse_roles', 'roles', '2017-06-11 19:24:21', '2017-06-11 19:24:21', NULL),
(16, 'read_roles', 'roles', '2017-06-11 19:24:21', '2017-06-11 19:24:21', NULL),
(17, 'edit_roles', 'roles', '2017-06-11 19:24:21', '2017-06-11 19:24:21', NULL),
(18, 'add_roles', 'roles', '2017-06-11 19:24:21', '2017-06-11 19:24:21', NULL),
(19, 'delete_roles', 'roles', '2017-06-11 19:24:21', '2017-06-11 19:24:21', NULL),
(20, 'browse_users', 'users', '2017-06-11 19:24:21', '2017-06-11 19:24:21', NULL),
(21, 'read_users', 'users', '2017-06-11 19:24:21', '2017-06-11 19:24:21', NULL),
(22, 'edit_users', 'users', '2017-06-11 19:24:22', '2017-06-11 19:24:22', NULL),
(23, 'add_users', 'users', '2017-06-11 19:24:22', '2017-06-11 19:24:22', NULL),
(24, 'delete_users', 'users', '2017-06-11 19:24:22', '2017-06-11 19:24:22', NULL),
(30, 'browse_statuses', 'statuses', '2017-06-13 22:33:55', '2017-06-13 22:33:55', NULL),
(31, 'read_statuses', 'statuses', '2017-06-13 22:33:55', '2017-06-13 22:33:55', NULL),
(32, 'edit_statuses', 'statuses', '2017-06-13 22:33:55', '2017-06-13 22:33:55', NULL),
(33, 'add_statuses', 'statuses', '2017-06-13 22:33:55', '2017-06-13 22:33:55', NULL),
(34, 'delete_statuses', 'statuses', '2017-06-13 22:33:55', '2017-06-13 22:33:55', NULL),
(35, 'browse_banner_categories', 'banner_categories', '2017-06-13 22:48:52', '2017-06-13 22:48:52', NULL),
(36, 'read_banner_categories', 'banner_categories', '2017-06-13 22:48:52', '2017-06-13 22:48:52', NULL),
(37, 'edit_banner_categories', 'banner_categories', '2017-06-13 22:48:52', '2017-06-13 22:48:52', NULL),
(38, 'add_banner_categories', 'banner_categories', '2017-06-13 22:48:52', '2017-06-13 22:48:52', NULL),
(39, 'delete_banner_categories', 'banner_categories', '2017-06-13 22:48:52', '2017-06-13 22:48:52', NULL),
(40, 'browse_banners', 'banners', '2017-06-13 23:11:44', '2017-06-13 23:11:44', NULL),
(41, 'read_banners', 'banners', '2017-06-13 23:11:44', '2017-06-13 23:11:44', NULL),
(42, 'edit_banners', 'banners', '2017-06-13 23:11:44', '2017-06-13 23:11:44', NULL),
(43, 'add_banners', 'banners', '2017-06-13 23:11:44', '2017-06-13 23:11:44', NULL),
(44, 'delete_banners', 'banners', '2017-06-13 23:11:44', '2017-06-13 23:11:44', NULL),
(45, 'browse_page_categories', 'page_categories', '2017-06-13 23:49:38', '2017-06-13 23:49:38', NULL),
(46, 'read_page_categories', 'page_categories', '2017-06-13 23:49:38', '2017-06-13 23:49:38', NULL),
(47, 'edit_page_categories', 'page_categories', '2017-06-13 23:49:38', '2017-06-13 23:49:38', NULL),
(48, 'add_page_categories', 'page_categories', '2017-06-13 23:49:38', '2017-06-13 23:49:38', NULL),
(49, 'delete_page_categories', 'page_categories', '2017-06-13 23:49:38', '2017-06-13 23:49:38', NULL),
(50, 'browse_pages', 'pages', '2017-06-14 00:08:13', '2017-06-14 00:08:13', NULL),
(51, 'read_pages', 'pages', '2017-06-14 00:08:13', '2017-06-14 00:08:13', NULL),
(52, 'edit_pages', 'pages', '2017-06-14 00:08:13', '2017-06-14 00:08:13', NULL),
(53, 'add_pages', 'pages', '2017-06-14 00:08:13', '2017-06-14 00:08:13', NULL),
(54, 'delete_pages', 'pages', '2017-06-14 00:08:13', '2017-06-14 00:08:13', NULL),
(55, 'browse_news_categories', 'news_categories', '2017-06-14 00:38:48', '2017-06-14 00:38:48', NULL),
(56, 'read_news_categories', 'news_categories', '2017-06-14 00:38:48', '2017-06-14 00:38:48', NULL),
(57, 'edit_news_categories', 'news_categories', '2017-06-14 00:38:48', '2017-06-14 00:38:48', NULL),
(58, 'add_news_categories', 'news_categories', '2017-06-14 00:38:48', '2017-06-14 00:38:48', NULL),
(59, 'delete_news_categories', 'news_categories', '2017-06-14 00:38:48', '2017-06-14 00:38:48', NULL),
(60, 'browse_news', 'news', '2017-06-14 00:54:04', '2017-06-14 00:54:04', NULL),
(61, 'read_news', 'news', '2017-06-14 00:54:04', '2017-06-14 00:54:04', NULL),
(62, 'edit_news', 'news', '2017-06-14 00:54:04', '2017-06-14 00:54:04', NULL),
(63, 'add_news', 'news', '2017-06-14 00:54:04', '2017-06-14 00:54:04', NULL),
(64, 'delete_news', 'news', '2017-06-14 00:54:04', '2017-06-14 00:54:04', NULL),
(65, 'browse_gallery_categories', 'gallery_categories', '2017-06-14 01:22:29', '2017-06-14 01:22:29', NULL),
(66, 'read_gallery_categories', 'gallery_categories', '2017-06-14 01:22:29', '2017-06-14 01:22:29', NULL),
(67, 'edit_gallery_categories', 'gallery_categories', '2017-06-14 01:22:29', '2017-06-14 01:22:29', NULL),
(68, 'add_gallery_categories', 'gallery_categories', '2017-06-14 01:22:29', '2017-06-14 01:22:29', NULL),
(69, 'delete_gallery_categories', 'gallery_categories', '2017-06-14 01:22:29', '2017-06-14 01:22:29', NULL),
(70, 'browse_gallery_albums', 'gallery_albums', '2017-06-14 01:31:30', '2017-06-14 01:31:30', NULL),
(71, 'read_gallery_albums', 'gallery_albums', '2017-06-14 01:31:30', '2017-06-14 01:31:30', NULL),
(72, 'edit_gallery_albums', 'gallery_albums', '2017-06-14 01:31:30', '2017-06-14 01:31:30', NULL),
(73, 'add_gallery_albums', 'gallery_albums', '2017-06-14 01:31:30', '2017-06-14 01:31:30', NULL),
(74, 'delete_gallery_albums', 'gallery_albums', '2017-06-14 01:31:30', '2017-06-14 01:31:30', NULL),
(75, 'browse_gallery_photos', 'gallery_photos', '2017-06-14 01:45:30', '2017-06-14 01:45:30', NULL),
(76, 'read_gallery_photos', 'gallery_photos', '2017-06-14 01:45:30', '2017-06-14 01:45:30', NULL),
(77, 'edit_gallery_photos', 'gallery_photos', '2017-06-14 01:45:30', '2017-06-14 01:45:30', NULL),
(78, 'add_gallery_photos', 'gallery_photos', '2017-06-14 01:45:30', '2017-06-14 01:45:30', NULL),
(79, 'delete_gallery_photos', 'gallery_photos', '2017-06-14 01:45:30', '2017-06-14 01:45:30', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2017-06-11 19:24:20', '2017-06-11 19:24:20'),
(2, 'user', 'Normal User', '2017-06-11 19:24:20', '2017-06-11 19:24:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `statuses`
--

CREATE TABLE `statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `statuses`
--

INSERT INTO `statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'activo', '2017-06-13 23:15:07', '2017-06-13 23:15:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'elkin garzon', 'elkingarzonyaya@gmail.com', 'users/June2017/l8WH2ASypbdBbYR5rClm.png', '$2y$10$2f6fiFAX3IpqKJBz8R.4JeFOufEZXoBUrlV3pg5f6IUyOpRwCv9wW', '12ijNO4xWoZxi1pvXB1Ce9TugKNN6dkOc9FOg5mUT4bxKOiqTwpWGuu5zCtA', '2017-06-11 19:25:22', '2017-06-13 09:48:02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_categories`
--
ALTER TABLE `banner_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banner_category_name_unique` (`name`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `gallery_albums`
--
ALTER TABLE `gallery_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gallery_photos`
--
ALTER TABLE `gallery_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `page_categories`
--
ALTER TABLE `page_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `statuses_status_unique` (`status`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `banner_categories`
--
ALTER TABLE `banner_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `gallery_albums`
--
ALTER TABLE `gallery_albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `gallery_photos`
--
ALTER TABLE `gallery_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `page_categories`
--
ALTER TABLE `page_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT de la tabla `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
