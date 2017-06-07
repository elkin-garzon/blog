-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2017 a las 00:01:11
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `page`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `albums`
--

INSERT INTO `albums` (`id`, `name`, `category`, `status`, `created_at`, `updated_at`) VALUES
(1, 'cafam', 1, 1, '2017-06-03 15:51:44', '2017-06-03 15:51:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_category` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`id`, `name`, `image`, `banner_category`, `status`, `url`, `created_at`, `updated_at`) VALUES
(1, 'banner de prueba', 'banners/May2017/Ge04ldTmLrpeKXozTDLQ.jpg', 1, 2, '#', '2017-05-30 01:30:29', '2017-05-30 01:30:29'),
(2, 'banner 2', 'banners/May2017/NyRKOllOGMFesM1vcRok.jpg', 1, 1, '#', '2017-05-30 01:41:07', '2017-05-30 01:41:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_categories`
--

CREATE TABLE `banner_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `banner_categories`
--

INSERT INTO `banner_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'home', 1, '2017-05-29 18:17:58', '2017-05-29 18:17:58'),
(2, 'servicios', 1, '2017-05-30 01:27:08', '2017-05-31 02:58:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_pages`
--

CREATE TABLE `category_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `category_pages`
--

INSERT INTO `category_pages` (`id`, `name`, `status`, `created_at`, `updated_at`, `slug`, `url`) VALUES
(1, 'home', 1, '2017-05-31 02:04:10', '2017-06-05 18:35:15', 'inicio', '/'),
(2, 'services', 1, '2017-06-05 20:38:26', '2017-06-05 20:38:26', 'servicios', '/servicios'),
(3, 'team', 1, '2017-06-06 20:54:44', '2017-06-06 20:54:44', 'nuestro equipo', '/nuestro-equipo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(38, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(39, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{"default":"","null":"","options":{"":"-- None --"},"relationship":{"key":"id","label":"name"}}', 2),
(40, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{"default":1}', 3),
(41, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(42, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '', 5),
(43, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(44, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(45, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(47, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(48, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(49, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(52, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(58, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '', 1),
(59, 8, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '', 2),
(60, 8, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '', 3),
(61, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 4),
(62, 8, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '', 5),
(63, 9, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '', 1),
(64, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 3),
(65, 9, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{"relationship":{"key":"id","label":"status","status_slug":"admin/status"}}', 2),
(66, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 4),
(67, 9, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '', 5),
(68, 10, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '', 1),
(69, 10, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '', 2),
(70, 10, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '', 3),
(73, 10, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '', 6),
(74, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 7),
(75, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 8),
(76, 10, 'banner_category', 'select_dropdown', 'Banner Category', 1, 0, 0, 0, 0, 0, '{"relationship":{"key":"id","label":"name"}}', 4),
(77, 10, 'status', 'select_dropdown', 'Status', 1, 0, 0, 0, 0, 0, '{"relationship":{"key":"id","label":"status","status_slug":"admin/status"}}', 5),
(78, 11, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '', 1),
(79, 11, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '', 2),
(80, 11, 'status', 'select_dropdown', 'Status', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"status","status_slug":"admin/status"}}', 4),
(81, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(82, 11, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '', 7),
(83, 11, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '', 3),
(84, 12, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '', 1),
(85, 12, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '', 2),
(86, 12, 'body', 'rich_text_box', 'Body', 0, 0, 0, 1, 1, 1, '', 3),
(87, 12, 'image', 'image', 'Image', 0, 0, 0, 1, 1, 1, '', 4),
(88, 12, 'slug', 'text', 'Slug', 0, 0, 0, 1, 1, 1, '', 5),
(89, 12, 'meta_description', 'text', 'Meta Description', 0, 0, 0, 1, 1, 1, '', 6),
(90, 12, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 0, 1, 1, 1, '', 7),
(92, 12, 'status', 'select_dropdown', 'Status', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"status"}}', 9),
(93, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 10),
(94, 12, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '', 11),
(97, 12, 'category_page', 'select_dropdown', 'Category', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"name"}}', 8),
(98, 13, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, '', 1),
(99, 13, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '', 2),
(100, 13, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '', 3),
(101, 13, 'status', 'select_dropdown', 'Status', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"status","status_slug":"admin/status"}}', 4),
(102, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 5),
(103, 13, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '', 6),
(104, 16, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, '', 1),
(105, 16, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '', 2),
(106, 16, 'body', 'rich_text_box', 'Body', 0, 0, 0, 1, 1, 1, '', 3),
(107, 16, 'image', 'image', 'Image', 0, 0, 0, 1, 1, 1, '', 4),
(108, 16, 'slug', 'text', 'Slug', 0, 0, 0, 1, 1, 1, '', 5),
(109, 16, 'meta_description', 'text', 'Meta Description', 0, 0, 0, 1, 1, 1, '', 6),
(110, 16, 'metal_keywords', 'text', 'Metal Keywords', 0, 0, 0, 1, 1, 1, '', 7),
(111, 16, 'seo_title', 'text', 'Seo Title', 0, 0, 0, 1, 1, 1, '', 8),
(112, 16, 'cover', 'checkbox', 'Cover', 0, 0, 0, 1, 1, 1, '', 9),
(113, 16, 'category', 'select_dropdown', 'Category', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"name"}}', 10),
(114, 16, 'status', 'select_dropdown', 'Status', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"status","status_slug":"admin/status"}}', 11),
(115, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 0, '', 12),
(116, 16, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '', 13),
(117, 17, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, '', 1),
(118, 17, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '', 2),
(119, 17, 'status', 'select_dropdown', 'Status', 0, 0, 1, 1, 1, 1, '{"relationship":{"key":"id","label":"status","status_slug":"admin/status"}}', 3),
(120, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 0, '', 4),
(121, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 5),
(128, 21, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, '', 1),
(129, 21, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '', 2),
(130, 21, 'category', 'select_dropdown', 'Category', 0, 0, 1, 1, 1, 1, '{"relationship":{"key":"id","label":"name"}}', 3),
(131, 21, 'status', 'select_dropdown', 'Status', 0, 0, 1, 1, 1, 1, '{"relationship":{"key":"id","label":"status","status_slug":"admin/status"}}', 4),
(132, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 5),
(133, 21, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '', 6),
(134, 23, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, '', 1),
(135, 23, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '', 2),
(136, 23, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '', 3),
(137, 23, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '', 4),
(138, 23, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '', 5),
(139, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 8),
(140, 23, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '', 9),
(141, 23, 'album', 'select_dropdown', 'Album', 0, 0, 1, 1, 1, 1, '', 6),
(142, 23, 'status', 'select_dropdown', 'Status', 0, 0, 1, 1, 1, 1, '', 7),
(152, 25, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, '', 1),
(153, 25, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '', 2),
(154, 25, 'image', 'text', 'Image', 0, 0, 0, 1, 1, 1, '', 3),
(155, 25, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '', 4),
(156, 25, 'category', 'select_dropdown', 'Category', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"name"}}', 6),
(157, 25, 'album', 'select_dropdown', 'Album', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"name"}}', 7),
(158, 25, 'status', 'select_dropdown', 'Status', 0, 0, 0, 1, 1, 1, '{"relationship":{"key":"id","label":"status","status_slug":"admin/status"}}', 8),
(159, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 9),
(160, 25, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '', 10),
(161, 25, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '', 5),
(162, 11, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', '', '', 1, 0, '2017-05-29 17:34:04', '2017-05-29 17:34:04'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', '', '', 1, 0, '2017-05-29 17:34:05', '2017-05-29 17:34:05'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', '', '', 1, 0, '2017-05-29 17:34:05', '2017-05-29 17:34:05'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', '', '', 1, 0, '2017-05-29 17:34:05', '2017-05-29 17:34:05'),
(8, 'statuses', 'status', 'Status', 'Statuses', 'voyager-check-circle', 'App\\Status', '', '', 1, 1, '2017-05-29 17:53:42', '2017-05-29 17:56:12'),
(9, 'banner_categories', 'banner-category', 'Banner Category', 'Banner Categories', 'voyager-plus', 'App\\BannerCategory', '', '', 1, 1, '2017-05-29 18:04:18', '2017-05-29 18:04:18'),
(10, 'banners', 'banners', 'Banner', 'Banners', 'voyager-images', 'App\\Banner', '', '', 1, 0, '2017-05-29 19:24:55', '2017-05-29 19:24:55'),
(11, 'category_pages', 'category-pages', 'Category Page', 'Category Pages', 'voyager-folder', 'App\\CategoryPage', '', '', 1, 0, '2017-05-31 01:50:19', '2017-05-31 01:50:19'),
(12, 'pages', 'pages', 'Page', 'Pages', 'voyager-book', 'App\\Page', '', '', 1, 0, '2017-05-31 02:22:25', '2017-05-31 02:22:25'),
(13, 'news_categories', 'news-category', 'News Category', 'News Categories', 'voyager-folder', 'App\\NewsCategory', '', '', 1, 0, '2017-06-02 00:59:46', '2017-06-02 01:03:04'),
(16, 'news', 'news', 'News', 'News', 'voyager-file-text', 'App\\News', '', '', 1, 0, '2017-06-02 02:07:02', '2017-06-02 02:07:02'),
(17, 'galery_categories', 'galery-category', 'Galery Category', 'Galery Categories', 'voyager-images', 'App\\GaleryCategory', '', '', 1, 0, '2017-06-02 22:56:01', '2017-06-02 22:56:01'),
(21, 'albums', 'album', 'Album', 'Albums', 'voyager-tag', 'App\\Album', '', '', 1, 0, '2017-06-03 15:37:27', '2017-06-03 15:37:27'),
(23, 'photo', 'photo', 'Photo', 'Photos', 'voyager-images', 'App\\Photo', '', '', 1, 0, '2017-06-03 16:54:48', '2017-06-03 16:54:48'),
(25, 'galery_photos', 'galery-photo', 'Galery Photo', 'Galery Photos', 'voyager-images', 'App\\GaleryPhoto', '', '', 1, 0, '2017-06-03 17:22:28', '2017-06-03 17:23:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galery_categories`
--

CREATE TABLE `galery_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `galery_categories`
--

INSERT INTO `galery_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'salud', 1, '2017-06-02 23:03:15', '2017-06-02 23:03:15'),
(2, 'mercadeo', 1, '2017-06-02 23:03:59', '2017-06-02 23:03:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galery_photos`
--

CREATE TABLE `galery_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `album` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-05-29 17:34:08', '2017-05-29 17:34:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '/admin', '_self', 'voyager-boat', NULL, NULL, 1, '2017-05-29 17:34:08', '2017-05-29 17:34:08', NULL, NULL),
(2, 1, 'Media', '/admin/media', '_self', 'voyager-images', NULL, NULL, 9, '2017-05-29 17:34:08', '2017-06-02 23:02:11', NULL, NULL),
(4, 1, 'Users', '/admin/users', '_self', 'voyager-person', NULL, NULL, 8, '2017-05-29 17:34:08', '2017-06-02 23:02:11', NULL, NULL),
(5, 1, 'News', '/admin/categories', '_self', 'voyager-categories', '#000000', NULL, 6, '2017-05-29 17:34:08', '2017-06-02 01:13:07', NULL, ''),
(6, 1, 'Pages', '/admin/pages', '_self', 'voyager-file-text', NULL, 16, 2, '2017-05-29 17:34:08', '2017-05-31 02:07:39', NULL, NULL),
(7, 1, 'Roles', '/admin/roles', '_self', 'voyager-lock', NULL, NULL, 3, '2017-05-29 17:34:08', '2017-05-29 17:40:40', NULL, NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2017-05-29 17:34:08', '2017-06-02 23:02:11', NULL, NULL),
(9, 1, 'Menu Builder', '/admin/menus', '_self', 'voyager-list', NULL, 8, 1, '2017-05-29 17:34:08', '2017-05-29 17:40:32', NULL, NULL),
(10, 1, 'Database', '/admin/database', '_self', 'voyager-data', NULL, 8, 2, '2017-05-29 17:34:08', '2017-05-29 17:40:32', NULL, NULL),
(11, 1, 'Settings', '/admin/settings', '_self', 'voyager-settings', NULL, NULL, 11, '2017-05-29 17:34:09', '2017-06-02 23:02:12', NULL, NULL),
(12, 1, 'status', '/admin/status', '_self', 'voyager-check-circle', '#000000', NULL, 2, '2017-05-29 17:40:18', '2017-05-29 17:40:40', NULL, ''),
(13, 1, 'banner category', '/admin/banner-category', '_self', 'voyager-camera', '#000000', 14, 1, '2017-05-29 18:06:28', '2017-06-02 03:02:21', NULL, ''),
(14, 1, 'banner', '/admin/banner', '_self', 'voyager-categories', '#000000', NULL, 4, '2017-05-29 18:07:41', '2017-06-02 03:01:18', NULL, ''),
(15, 1, 'banner', '/admin/banners', '_self', 'voyager-images', '#000000', 14, 2, '2017-05-29 19:26:16', '2017-05-29 19:27:31', NULL, ''),
(16, 1, 'pages', '/admin/pages', '_self', 'voyager-categories', '#000000', NULL, 5, '2017-05-31 01:44:41', '2017-06-02 02:37:15', NULL, ''),
(17, 1, 'category pages', '/admin/category-pages', '_self', 'voyager-folder', '#000000', 16, 1, '2017-05-31 01:54:22', '2017-05-31 02:07:39', NULL, ''),
(18, 1, 'News category', '/admin/news-category', '_self', 'voyager-news', '#000000', 5, 1, '2017-06-02 01:05:35', '2017-06-02 02:34:33', NULL, ''),
(19, 1, 'News', '/admin/news', '_self', 'voyager-file-text', '#000000', 5, 2, '2017-06-02 02:13:16', '2017-06-02 02:13:28', NULL, ''),
(20, 1, 'galery category', '/admin/galery-category', '_self', 'voyager-images', '#000000', 21, 1, '2017-06-02 22:58:49', '2017-06-02 23:02:02', NULL, ''),
(21, 1, 'galery', '', '_self', 'voyager-categories', '#000000', NULL, 7, '2017-06-02 22:59:20', '2017-06-02 23:02:11', NULL, ''),
(22, 1, 'album', '/admin/album', '_self', 'voyager-tag', '#000000', 21, 2, '2017-06-02 23:20:40', '2017-06-02 23:20:57', NULL, ''),
(23, 1, 'photo', '/admin/galery-photo', '_self', 'voyager-images', '#000000', 21, 3, '2017-06-03 17:07:03', '2017-06-03 17:23:51', NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `body` varchar(3000) COLLATE utf8_unicode_ci DEFAULT NULL,
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

--
-- Volcado de datos para la tabla `news`
--

INSERT INTO `news` (`id`, `title`, `body`, `image`, `slug`, `meta_description`, `metal_keywords`, `seo_title`, `cover`, `category`, `status`, `created_at`, `updated_at`) VALUES
(1, 'noticias de prueba', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&nbsp;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'news/June2017/idCy5cxfi3SCl0Xv6rau.jpg', 'noticias de prueba', 'noticia de prueba dos', 'prueba, noticia, hola, mundo', 'noticia', 0, 1, 1, '2017-06-02 12:18:00', '2017-06-02 02:18:57');

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

--
-- Volcado de datos para la tabla `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'noticias', 'noticias', 1, '2017-06-02 02:14:50', '2017-06-02 02:14:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_page` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `title`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `category_page`, `status`, `created_at`, `updated_at`) VALUES
(1, 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium eligendi, delectus eaque explicabo asperiores consequuntur ipsum voluptatibus facere commodi libero vero est accusantium rerum, officia sint cupiditate perspiciatis deleniti architecto.</p>', 'pages/May2017/r11iqjvkU6nWsExgUO3X.jpg', 'home', 'primera pagina creada', 'primera, pagina, creada', 1, 1, '2017-05-31 03:14:01', '2017-05-31 03:14:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2017-05-29 17:34:09', '2017-05-29 17:34:09', NULL),
(2, 'browse_database', NULL, '2017-05-29 17:34:09', '2017-05-29 17:34:09', NULL),
(3, 'browse_media', NULL, '2017-05-29 17:34:09', '2017-05-29 17:34:09', NULL),
(4, 'browse_settings', NULL, '2017-05-29 17:34:09', '2017-05-29 17:34:09', NULL),
(5, 'browse_menus', 'menus', '2017-05-29 17:34:09', '2017-05-29 17:34:09', NULL),
(6, 'read_menus', 'menus', '2017-05-29 17:34:09', '2017-05-29 17:34:09', NULL),
(7, 'edit_menus', 'menus', '2017-05-29 17:34:09', '2017-05-29 17:34:09', NULL),
(8, 'add_menus', 'menus', '2017-05-29 17:34:09', '2017-05-29 17:34:09', NULL),
(9, 'delete_menus', 'menus', '2017-05-29 17:34:09', '2017-05-29 17:34:09', NULL),
(15, 'browse_roles', 'roles', '2017-05-29 17:34:10', '2017-05-29 17:34:10', NULL),
(16, 'read_roles', 'roles', '2017-05-29 17:34:10', '2017-05-29 17:34:10', NULL),
(17, 'edit_roles', 'roles', '2017-05-29 17:34:10', '2017-05-29 17:34:10', NULL),
(18, 'add_roles', 'roles', '2017-05-29 17:34:10', '2017-05-29 17:34:10', NULL),
(19, 'delete_roles', 'roles', '2017-05-29 17:34:10', '2017-05-29 17:34:10', NULL),
(20, 'browse_users', 'users', '2017-05-29 17:34:10', '2017-05-29 17:34:10', NULL),
(21, 'read_users', 'users', '2017-05-29 17:34:10', '2017-05-29 17:34:10', NULL),
(22, 'edit_users', 'users', '2017-05-29 17:34:10', '2017-05-29 17:34:10', NULL),
(23, 'add_users', 'users', '2017-05-29 17:34:11', '2017-05-29 17:34:11', NULL),
(24, 'delete_users', 'users', '2017-05-29 17:34:11', '2017-05-29 17:34:11', NULL),
(30, 'browse_categories', 'categories', '2017-05-29 17:34:11', '2017-05-29 17:34:11', NULL),
(31, 'read_categories', 'categories', '2017-05-29 17:34:11', '2017-05-29 17:34:11', NULL),
(32, 'edit_categories', 'categories', '2017-05-29 17:34:11', '2017-05-29 17:34:11', NULL),
(33, 'add_categories', 'categories', '2017-05-29 17:34:11', '2017-05-29 17:34:11', NULL),
(34, 'delete_categories', 'categories', '2017-05-29 17:34:11', '2017-05-29 17:34:11', NULL),
(40, 'browse_statuses', 'statuses', '2017-05-29 17:53:42', '2017-05-29 17:53:42', NULL),
(41, 'read_statuses', 'statuses', '2017-05-29 17:53:42', '2017-05-29 17:53:42', NULL),
(42, 'edit_statuses', 'statuses', '2017-05-29 17:53:42', '2017-05-29 17:53:42', NULL),
(43, 'add_statuses', 'statuses', '2017-05-29 17:53:42', '2017-05-29 17:53:42', NULL),
(44, 'delete_statuses', 'statuses', '2017-05-29 17:53:42', '2017-05-29 17:53:42', NULL),
(45, 'browse_banner_categories', 'banner_categories', '2017-05-29 18:04:19', '2017-05-29 18:04:19', NULL),
(46, 'read_banner_categories', 'banner_categories', '2017-05-29 18:04:19', '2017-05-29 18:04:19', NULL),
(47, 'edit_banner_categories', 'banner_categories', '2017-05-29 18:04:19', '2017-05-29 18:04:19', NULL),
(48, 'add_banner_categories', 'banner_categories', '2017-05-29 18:04:19', '2017-05-29 18:04:19', NULL),
(49, 'delete_banner_categories', 'banner_categories', '2017-05-29 18:04:19', '2017-05-29 18:04:19', NULL),
(50, 'browse_banners', 'banners', '2017-05-29 19:24:56', '2017-05-29 19:24:56', NULL),
(51, 'read_banners', 'banners', '2017-05-29 19:24:56', '2017-05-29 19:24:56', NULL),
(52, 'edit_banners', 'banners', '2017-05-29 19:24:56', '2017-05-29 19:24:56', NULL),
(53, 'add_banners', 'banners', '2017-05-29 19:24:56', '2017-05-29 19:24:56', NULL),
(54, 'delete_banners', 'banners', '2017-05-29 19:24:56', '2017-05-29 19:24:56', NULL),
(55, 'browse_category_pages', 'category_pages', '2017-05-31 01:50:19', '2017-05-31 01:50:19', NULL),
(56, 'read_category_pages', 'category_pages', '2017-05-31 01:50:19', '2017-05-31 01:50:19', NULL),
(57, 'edit_category_pages', 'category_pages', '2017-05-31 01:50:19', '2017-05-31 01:50:19', NULL),
(58, 'add_category_pages', 'category_pages', '2017-05-31 01:50:19', '2017-05-31 01:50:19', NULL),
(59, 'delete_category_pages', 'category_pages', '2017-05-31 01:50:19', '2017-05-31 01:50:19', NULL),
(60, 'browse_pages', 'pages', '2017-05-31 02:22:26', '2017-05-31 02:22:26', NULL),
(61, 'read_pages', 'pages', '2017-05-31 02:22:26', '2017-05-31 02:22:26', NULL),
(62, 'edit_pages', 'pages', '2017-05-31 02:22:26', '2017-05-31 02:22:26', NULL),
(63, 'add_pages', 'pages', '2017-05-31 02:22:26', '2017-05-31 02:22:26', NULL),
(64, 'delete_pages', 'pages', '2017-05-31 02:22:26', '2017-05-31 02:22:26', NULL),
(65, 'browse_news_categories', 'news_categories', '2017-06-02 00:59:46', '2017-06-02 00:59:46', NULL),
(66, 'read_news_categories', 'news_categories', '2017-06-02 00:59:46', '2017-06-02 00:59:46', NULL),
(67, 'edit_news_categories', 'news_categories', '2017-06-02 00:59:46', '2017-06-02 00:59:46', NULL),
(68, 'add_news_categories', 'news_categories', '2017-06-02 00:59:46', '2017-06-02 00:59:46', NULL),
(69, 'delete_news_categories', 'news_categories', '2017-06-02 00:59:46', '2017-06-02 00:59:46', NULL),
(70, 'browse_news', 'news', '2017-06-02 02:07:04', '2017-06-02 02:07:04', NULL),
(71, 'read_news', 'news', '2017-06-02 02:07:04', '2017-06-02 02:07:04', NULL),
(72, 'edit_news', 'news', '2017-06-02 02:07:04', '2017-06-02 02:07:04', NULL),
(73, 'add_news', 'news', '2017-06-02 02:07:04', '2017-06-02 02:07:04', NULL),
(74, 'delete_news', 'news', '2017-06-02 02:07:04', '2017-06-02 02:07:04', NULL),
(75, 'browse_galery_categories', 'galery_categories', '2017-06-02 22:56:01', '2017-06-02 22:56:01', NULL),
(76, 'read_galery_categories', 'galery_categories', '2017-06-02 22:56:01', '2017-06-02 22:56:01', NULL),
(77, 'edit_galery_categories', 'galery_categories', '2017-06-02 22:56:01', '2017-06-02 22:56:01', NULL),
(78, 'add_galery_categories', 'galery_categories', '2017-06-02 22:56:01', '2017-06-02 22:56:01', NULL),
(79, 'delete_galery_categories', 'galery_categories', '2017-06-02 22:56:01', '2017-06-02 22:56:01', NULL),
(80, 'browse_album', 'album', '2017-06-02 23:11:00', '2017-06-02 23:11:00', NULL),
(81, 'read_album', 'album', '2017-06-02 23:11:00', '2017-06-02 23:11:00', NULL),
(82, 'edit_album', 'album', '2017-06-02 23:11:00', '2017-06-02 23:11:00', NULL),
(83, 'add_album', 'album', '2017-06-02 23:11:00', '2017-06-02 23:11:00', NULL),
(84, 'delete_album', 'album', '2017-06-02 23:11:00', '2017-06-02 23:11:00', NULL),
(85, 'browse_albums', 'albums', '2017-06-03 15:37:28', '2017-06-03 15:37:28', NULL),
(86, 'read_albums', 'albums', '2017-06-03 15:37:28', '2017-06-03 15:37:28', NULL),
(87, 'edit_albums', 'albums', '2017-06-03 15:37:28', '2017-06-03 15:37:28', NULL),
(88, 'add_albums', 'albums', '2017-06-03 15:37:28', '2017-06-03 15:37:28', NULL),
(89, 'delete_albums', 'albums', '2017-06-03 15:37:28', '2017-06-03 15:37:28', NULL),
(90, 'browse_photo', 'photo', '2017-06-03 16:54:49', '2017-06-03 16:54:49', NULL),
(91, 'read_photo', 'photo', '2017-06-03 16:54:49', '2017-06-03 16:54:49', NULL),
(92, 'edit_photo', 'photo', '2017-06-03 16:54:49', '2017-06-03 16:54:49', NULL),
(93, 'add_photo', 'photo', '2017-06-03 16:54:49', '2017-06-03 16:54:49', NULL),
(94, 'delete_photo', 'photo', '2017-06-03 16:54:49', '2017-06-03 16:54:49', NULL),
(100, 'browse_galery_photos', 'galery_photos', '2017-06-03 17:22:28', '2017-06-03 17:22:28', NULL),
(101, 'read_galery_photos', 'galery_photos', '2017-06-03 17:22:28', '2017-06-03 17:22:28', NULL),
(102, 'edit_galery_photos', 'galery_photos', '2017-06-03 17:22:28', '2017-06-03 17:22:28', NULL),
(103, 'add_galery_photos', 'galery_photos', '2017-06-03 17:22:28', '2017-06-03 17:22:28', NULL),
(104, 'delete_galery_photos', 'galery_photos', '2017-06-03 17:22:28', '2017-06-03 17:22:28', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2017-05-29 17:34:09', '2017-05-29 17:34:09'),
(2, 'user', 'Normal User', '2017-05-29 17:34:09', '2017-05-29 17:34:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`) VALUES
(1, 'google_analytics_client_id', 'google_analytics_client_id', '', '', 'text', 0),
(2, 'admin_title', 'admin_title', 'Duna-web', '', 'text', 1),
(3, 'admin_description', 'admin_description', 'Admin', '', 'text', 2),
(4, 'admin_loader', 'admin_loader', '', '', 'image', 3),
(5, 'admin_bg_image', 'admin_bg_image', '', '', 'image', 4),
(6, 'admin_bg_color', 'admin_bg_color', '', '', 'text', 5),
(7, 'title_site', 'title_site', 'Duna web', '', 'text', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `statuses`
--

CREATE TABLE `statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `statuses`
--

INSERT INTO `statuses` (`id`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'activo', 'activo', '2017-05-29 17:56:46', '2017-05-29 17:56:46'),
(2, 'inactivo', 'inactivo', '2017-05-29 17:57:18', '2017-05-29 17:57:18'),
(3, 'pendiente', 'pendiente', '2017-05-29 17:57:52', '2017-05-29 17:57:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Elkin Garzon', 'elkingarzonyaya@gmail.com', 'users/default.png', '$2y$10$VeEqq8FDJ6CzGbgJLjennuN8VTRl9GSQR8R0g0ZmTw2Va.hLdK4ja', 'nqFoaUFRrqh20ATU4luoI4pfEuOBcxikNZk3W6qp8eBH5GxJZFihZqbcxCyO', '2017-05-29 17:35:01', '2017-06-03 16:33:38');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albums_status_index` (`status`),
  ADD KEY `albums_category_index` (`category`);

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_banner_category_id_index` (`banner_category`),
  ADD KEY `banners_status_id_index` (`status`);

--
-- Indices de la tabla `banner_categories`
--
ALTER TABLE `banner_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_categories_status_index` (`status`);

--
-- Indices de la tabla `category_pages`
--
ALTER TABLE `category_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_pages_status_index` (`status`);

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
-- Indices de la tabla `galery_categories`
--
ALTER TABLE `galery_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `galery_categories_name_unique` (`name`),
  ADD KEY `galery_categories_status_index` (`status`);

--
-- Indices de la tabla `galery_photos`
--
ALTER TABLE `galery_photos`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_slug_unique` (`slug`),
  ADD UNIQUE KEY `news_cover_unique` (`cover`),
  ADD KEY `news_status_index` (`status`),
  ADD KEY `news_category_index` (`category`);

--
-- Indices de la tabla `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_slug_unique` (`slug`),
  ADD KEY `news_categories_status_index` (`status`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_page_category_index` (`category_page`),
  ADD KEY `pages_status_index` (`status`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de la tabla `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `banner_categories`
--
ALTER TABLE `banner_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `category_pages`
--
ALTER TABLE `category_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `galery_categories`
--
ALTER TABLE `galery_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `galery_photos`
--
ALTER TABLE `galery_photos`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
