-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-05-2017 a las 06:14:49
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
-- Estructura de tabla para la tabla `laralum_blog_categories`
--

CREATE TABLE `laralum_blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `laralum_blog_categories`
--

INSERT INTO `laralum_blog_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'servicios', '2017-05-05 07:21:39', '2017-05-05 07:52:40'),
(2, 'noticias', '2017-05-05 07:53:16', '2017-05-05 07:53:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laralum_blog_comments`
--

CREATE TABLE `laralum_blog_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laralum_blog_posts`
--

CREATE TABLE `laralum_blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `laralum_blog_posts`
--

INSERT INTO `laralum_blog_posts` (`id`, `user_id`, `category_id`, `title`, `description`, `content`, `created_at`, `updated_at`, `image`) VALUES
(1, 1, 1, 'prueba', 'prueba', '<p>prueba de escritura</p>', '2017-05-05 07:50:07', '2017-05-05 07:50:07', 'https://www.walldevil.com/wallpapers/a71/wallpaper-marvel-wolverine-comics.jpg'),
(2, 1, 2, 'noticia de prueba dos', 'noticia', '<p>hola mundo</p>', '2017-05-05 07:54:53', '2017-05-05 07:54:53', 'https://s-media-cache-ak0.pinimg.com/originals/9d/78/01/9d780181f3caef8c61959d10ffede31d.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laralum_blog_settings`
--

CREATE TABLE `laralum_blog_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `text_editor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `laralum_blog_settings`
--

INSERT INTO `laralum_blog_settings` (`id`, `text_editor`, `public_url`, `created_at`, `updated_at`) VALUES
(1, 'wysiwyg', 'blog', '2017-05-05 07:21:40', '2017-05-05 07:47:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laralum_customization`
--

CREATE TABLE `laralum_customization` (
  `id` int(10) UNSIGNED NOT NULL,
  `css` text COLLATE utf8mb4_unicode_ci,
  `js` text COLLATE utf8mb4_unicode_ci,
  `navbar_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `laralum_customization`
--

INSERT INTO `laralum_customization` (`id`, `css`, `js`, `navbar_color`, `favicon`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '#0F7AE5', 'https://avatars1.githubusercontent.com/u/22253051', '2017-05-05 07:08:59', '2017-05-05 07:08:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laralum_notifications`
--

CREATE TABLE `laralum_notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laralum_notifications_settings`
--

CREATE TABLE `laralum_notifications_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `mail_enabled` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `laralum_notifications_settings`
--

INSERT INTO `laralum_notifications_settings` (`id`, `mail_enabled`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-05-05 06:59:15', '2017-05-05 08:06:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laralum_permissions`
--

CREATE TABLE `laralum_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `laralum_permissions`
--

INSERT INTO `laralum_permissions` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Laralum Access', 'laralum::access', 'Grants access to all laralum infrastructure', '2017-05-05 06:59:26', '2017-05-05 06:59:26'),
(2, 'Notifications Access', 'laralum::notifications.access', 'Grants access to laralum/notifications module', '2017-05-05 06:59:26', '2017-05-05 06:59:26'),
(3, 'Create Notifications', 'laralum::notifications.create', 'Allows creating notifications', '2017-05-05 06:59:26', '2017-05-05 06:59:26'),
(4, 'View Notifications', 'laralum::notifications.view', 'Allows viewing notifications', '2017-05-05 06:59:26', '2017-05-05 06:59:26'),
(5, 'Edit Notifications Settings', 'laralum::notifications.settings', 'Allows edititing the notification settings', '2017-05-05 06:59:26', '2017-05-05 06:59:26'),
(6, 'Permissions Access', 'laralum::permissions.access', 'Grants access to laralum/permissions module', '2017-05-05 06:59:26', '2017-05-05 06:59:26'),
(7, 'Create Permissions', 'laralum::permissions.create', 'Allows creating permissions', '2017-05-05 06:59:26', '2017-05-05 06:59:26'),
(8, 'Update Permissions', 'laralum::permissions.update', 'Allows updating permissions', '2017-05-05 06:59:26', '2017-05-05 06:59:26'),
(9, 'Delete Permissions', 'laralum::permissions.delete', 'Allows delete permissions', '2017-05-05 06:59:26', '2017-05-05 06:59:26'),
(10, 'Roles Access', 'laralum::roles.access', 'Grants access to laralum/roles module', '2017-05-05 06:59:26', '2017-05-05 06:59:26'),
(11, 'Create Roles', 'laralum::roles.create', 'Allows creating roles', '2017-05-05 06:59:27', '2017-05-05 06:59:27'),
(12, 'Update Roles', 'laralum::roles.update', 'Allows updating roles', '2017-05-05 06:59:27', '2017-05-05 06:59:27'),
(13, 'View Roles', 'laralum::roles.view', 'Allows previewing roles', '2017-05-05 06:59:27', '2017-05-05 06:59:27'),
(14, 'Manage Role Permissions', 'laralum::roles.permissions', 'Allows mange permissions of roles', '2017-05-05 06:59:27', '2017-05-05 06:59:27'),
(15, 'Delete Roles', 'laralum::roles.delete', 'Allows delete roles', '2017-05-05 06:59:27', '2017-05-05 06:59:27'),
(16, 'Update Settings', 'laralum::settings.update', 'Allows updating the general settings', '2017-05-05 06:59:27', '2017-05-05 06:59:27'),
(17, 'Users Access', 'laralum::users.access', 'Grants access to laralum/users module', '2017-05-05 06:59:27', '2017-05-05 06:59:27'),
(18, 'Create Users', 'laralum::users.create', 'Allows creating users', '2017-05-05 06:59:27', '2017-05-05 06:59:27'),
(19, 'Update Users', 'laralum::users.update', 'Allows updating users', '2017-05-05 06:59:27', '2017-05-05 06:59:27'),
(20, 'View Users', 'laralum::users.view', 'Allows previewing users', '2017-05-05 06:59:27', '2017-05-05 06:59:27'),
(21, 'Manage Users Roles', 'laralum::users.roles', 'Grants access to manage user roles', '2017-05-05 06:59:27', '2017-05-05 06:59:27'),
(22, 'Delete Users', 'laralum::users.delete', 'Allows delete users', '2017-05-05 06:59:27', '2017-05-05 06:59:27'),
(23, 'Customization Access', 'laralum::customization.access', 'Grants access to laralum/customization module', '2017-05-05 07:08:30', '2017-05-05 07:08:30'),
(24, 'Blog Categories Access', 'laralum::blog.categories.access', 'Grants access to blog categories', '2017-05-05 07:20:52', '2017-05-05 07:20:52'),
(25, 'Create Blog Categories', 'laralum::blog.categories.create', 'Allows creating blog categories', '2017-05-05 07:20:52', '2017-05-05 07:20:52'),
(26, 'Update Blog Categories', 'laralum::blog.categories.update', 'Allows updating blog categories', '2017-05-05 07:20:52', '2017-05-05 07:20:52'),
(27, 'View Blog Categories', 'laralum::blog.categories.view', 'Allows view blog categories', '2017-05-05 07:20:52', '2017-05-05 07:20:52'),
(28, 'Delete Blog Categories', 'laralum::blog.categories.delete', 'Allows delete blog categories', '2017-05-05 07:20:52', '2017-05-05 07:20:52'),
(29, 'Blog Posts Access', 'laralum::blog.posts.access', 'Grants access to blog posts', '2017-05-05 07:20:53', '2017-05-05 07:20:53'),
(30, 'Create Blog Posts', 'laralum::blog.posts.create', 'Allows creating blog posts', '2017-05-05 07:20:53', '2017-05-05 07:20:53'),
(31, 'Update Blog Posts', 'laralum::blog.posts.update', 'Allows updating blog posts', '2017-05-05 07:20:53', '2017-05-05 07:20:53'),
(32, 'View Blog Posts', 'laralum::blog.posts.view', 'Allows view blog posts', '2017-05-05 07:20:53', '2017-05-05 07:20:53'),
(33, 'Delete Blog Posts', 'laralum::blog.posts.delete', 'Allows delete blog posts', '2017-05-05 07:20:53', '2017-05-05 07:20:53'),
(34, 'Blog Comments Access', 'laralum::blog.comments.access', 'Grants access to blog comments', '2017-05-05 07:20:53', '2017-05-05 07:20:53'),
(35, 'Create Blog Comments', 'laralum::blog.comments.create', 'Allows creating blog comments', '2017-05-05 07:20:53', '2017-05-05 07:20:53'),
(36, 'Update Blog Comments', 'laralum::blog.comments.update', 'Allows updating blog comments', '2017-05-05 07:20:53', '2017-05-05 07:20:53'),
(37, 'View Blog Comments', 'laralum::blog.comments.view', 'Allows view blog comments', '2017-05-05 07:20:53', '2017-05-05 07:20:53'),
(38, 'Delete Blog Comments', 'laralum::blog.comments.delete', 'Allows delete blog comments', '2017-05-05 07:20:53', '2017-05-05 07:20:53'),
(39, 'Blog Comments Access (public)', 'laralum::blog.comments.access-public', 'Grants access to blog comments', '2017-05-05 07:20:53', '2017-05-05 07:20:53'),
(40, 'Create Blog Comments (public)', 'laralum::blog.comments.create-public', 'Allows creating blog comments', '2017-05-05 07:20:53', '2017-05-05 07:20:53'),
(41, 'Update Blog Comments (public)', 'laralum::blog.comments.update-public', 'Allows updating blog comments', '2017-05-05 07:20:53', '2017-05-05 07:20:53'),
(42, 'View Blog Comments (public)', 'laralum::blog.comments.view-public', 'Allows view blog comments', '2017-05-05 07:20:53', '2017-05-05 07:20:53'),
(43, 'Delete Blog Comments (public)', 'laralum::blog.comments.delete-public', 'Allows delete blog comments', '2017-05-05 07:20:53', '2017-05-05 07:20:53'),
(44, 'Update Blog Settings', 'laralum::blog.settings', 'Allows update blog settings', '2017-05-05 07:20:53', '2017-05-05 07:20:53'),
(46, 'Statistics Access', 'laralum::statistics.access', 'Grants access to laralum/statistics module', '2017-05-05 07:39:23', '2017-05-05 07:39:23'),
(47, 'Restart Statistics', 'laralum::statistics.restart', 'Grants permission to restart statistics', '2017-05-05 07:39:23', '2017-05-05 07:39:23'),
(48, 'CRUD Access', 'laralum::CRUD.access', 'Grants access to laralum/CRUD module', '2017-05-05 07:44:09', '2017-05-05 07:44:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laralum_permission_role`
--

CREATE TABLE `laralum_permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `laralum_permission_role`
--

INSERT INTO `laralum_permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '2017-05-05 07:26:01', '2017-05-05 07:26:01'),
(2, 25, 1, '2017-05-05 07:26:01', '2017-05-05 07:26:01'),
(3, 26, 1, '2017-05-05 07:26:01', '2017-05-05 07:26:01'),
(4, 27, 1, '2017-05-05 07:26:01', '2017-05-05 07:26:01'),
(5, 1, 1, '2017-05-05 07:30:33', '2017-05-05 07:30:33'),
(6, 2, 1, '2017-05-05 07:30:33', '2017-05-05 07:30:33'),
(7, 3, 1, '2017-05-05 07:30:33', '2017-05-05 07:30:33'),
(26, 23, 1, '2017-05-05 07:30:34', '2017-05-05 07:30:34'),
(27, 24, 1, '2017-05-05 07:30:34', '2017-05-05 07:30:34'),
(28, 28, 1, '2017-05-05 07:30:34', '2017-05-05 07:30:34'),
(29, 29, 1, '2017-05-05 07:30:34', '2017-05-05 07:30:34'),
(30, 30, 1, '2017-05-05 07:30:34', '2017-05-05 07:30:34'),
(31, 31, 1, '2017-05-05 07:30:34', '2017-05-05 07:30:34'),
(32, 32, 1, '2017-05-05 07:30:34', '2017-05-05 07:30:34'),
(33, 33, 1, '2017-05-05 07:30:35', '2017-05-05 07:30:35'),
(34, 34, 1, '2017-05-05 07:30:35', '2017-05-05 07:30:35'),
(35, 35, 1, '2017-05-05 07:30:35', '2017-05-05 07:30:35'),
(36, 36, 1, '2017-05-05 07:30:35', '2017-05-05 07:30:35'),
(37, 37, 1, '2017-05-05 07:30:35', '2017-05-05 07:30:35'),
(38, 38, 1, '2017-05-05 07:30:35', '2017-05-05 07:30:35'),
(39, 39, 1, '2017-05-05 07:30:35', '2017-05-05 07:30:35'),
(40, 40, 1, '2017-05-05 07:30:35', '2017-05-05 07:30:35'),
(41, 41, 1, '2017-05-05 07:30:35', '2017-05-05 07:30:35'),
(42, 42, 1, '2017-05-05 07:30:35', '2017-05-05 07:30:35'),
(43, 43, 1, '2017-05-05 07:30:35', '2017-05-05 07:30:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laralum_roles`
--

CREATE TABLE `laralum_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `laralum_roles`
--

INSERT INTO `laralum_roles` (`id`, `name`, `description`, `color`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'prueba', 'red', '2017-05-05 07:23:02', '2017-05-05 07:23:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laralum_role_user`
--

CREATE TABLE `laralum_role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `laralum_role_user`
--

INSERT INTO `laralum_role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2017-05-05 07:27:30', '2017-05-05 07:27:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laralum_settings`
--

CREATE TABLE `laralum_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `appname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `laralum_settings`
--

INSERT INTO `laralum_settings` (`id`, `appname`, `description`, `keywords`, `author`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'The modular laravel administration panel', 'Laralum,Admin,Panel,CMS,Laravel,Modern,Developers', 'elkin garzon, laura vera', '2017-05-05 06:59:13', '2017-05-05 08:02:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laralum_statistics_views`
--

CREATE TABLE `laralum_statistics_views` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os_version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `next_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `laralum_statistics_views`
--

INSERT INTO `laralum_statistics_views` (`id`, `user_id`, `ip`, `browser`, `browser_version`, `os`, `os_version`, `locale`, `browser_locale`, `next_url`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/roles/1/permissions', '2017-05-05 07:40:42', '2017-05-05 07:40:42'),
(2, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/roles/1/permissions', '2017-05-05 07:40:53', '2017-05-05 07:40:53'),
(3, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/statistics', '2017-05-05 07:41:05', '2017-05-05 07:41:05'),
(4, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/views', '2017-05-05 07:41:10', '2017-05-05 07:41:10'),
(5, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/views/unique', '2017-05-05 07:41:11', '2017-05-05 07:41:11'),
(6, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/most/browser', '2017-05-05 07:41:12', '2017-05-05 07:41:12'),
(7, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/most/os', '2017-05-05 07:41:13', '2017-05-05 07:41:13'),
(8, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/most/language', '2017-05-05 07:41:14', '2017-05-05 07:41:14'),
(9, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/statistics/reset', '2017-05-05 07:41:25', '2017-05-05 07:41:25'),
(10, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/statistics', '2017-05-05 07:41:36', '2017-05-05 07:41:36'),
(11, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/views', '2017-05-05 07:41:42', '2017-05-05 07:41:42'),
(12, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/views/unique', '2017-05-05 07:41:44', '2017-05-05 07:41:44'),
(13, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/most/browser', '2017-05-05 07:41:46', '2017-05-05 07:41:46'),
(14, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/most/os', '2017-05-05 07:41:48', '2017-05-05 07:41:48'),
(15, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/most/language', '2017-05-05 07:41:51', '2017-05-05 07:41:51'),
(16, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/statistics', '2017-05-05 07:44:39', '2017-05-05 07:44:39'),
(17, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/views', '2017-05-05 07:44:46', '2017-05-05 07:44:46'),
(18, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/views/unique', '2017-05-05 07:44:46', '2017-05-05 07:44:46'),
(19, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/most/browser', '2017-05-05 07:44:48', '2017-05-05 07:44:48'),
(20, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/most/os', '2017-05-05 07:44:50', '2017-05-05 07:44:50'),
(21, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/most/language', '2017-05-05 07:44:51', '2017-05-05 07:44:51'),
(22, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/CRUD', '2017-05-05 07:44:53', '2017-05-05 07:44:53'),
(23, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/CRUD', '2017-05-05 07:47:13', '2017-05-05 07:47:13'),
(24, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/settings', '2017-05-05 07:47:25', '2017-05-05 07:47:25'),
(25, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/blog/settings', '2017-05-05 07:47:43', '2017-05-05 07:47:43'),
(26, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/settings', '2017-05-05 07:47:46', '2017-05-05 07:47:46'),
(27, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/blog', '2017-05-05 07:48:03', '2017-05-05 07:48:03'),
(28, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/blog/categories/1', '2017-05-05 07:48:11', '2017-05-05 07:48:11'),
(29, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/blog/posts/create', '2017-05-05 07:48:24', '2017-05-05 07:48:24'),
(30, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/blog/posts', '2017-05-05 07:50:07', '2017-05-05 07:50:07'),
(31, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/blog/categories/1', '2017-05-05 07:50:08', '2017-05-05 07:50:08'),
(32, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/blog', '2017-05-05 07:50:21', '2017-05-05 07:50:21'),
(33, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/blog/categories/1', '2017-05-05 07:50:27', '2017-05-05 07:50:27'),
(34, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/blog/posts/1', '2017-05-05 07:50:43', '2017-05-05 07:50:43'),
(35, NULL, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/blog/posts/1', '2017-05-05 07:51:14', '2017-05-05 07:51:14'),
(36, NULL, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/blog', '2017-05-05 07:51:45', '2017-05-05 07:51:45'),
(37, NULL, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/blog/categories/1', '2017-05-05 07:51:57', '2017-05-05 07:51:57'),
(38, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/blog/categories', '2017-05-05 07:52:21', '2017-05-05 07:52:21'),
(39, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/blog/categories/1/edit', '2017-05-05 07:52:27', '2017-05-05 07:52:27'),
(40, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/blog/categories/1', '2017-05-05 07:52:39', '2017-05-05 07:52:39'),
(41, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/blog/categories', '2017-05-05 07:52:41', '2017-05-05 07:52:41'),
(42, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/blog/categories/create', '2017-05-05 07:53:06', '2017-05-05 07:53:06'),
(43, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/blog/categories', '2017-05-05 07:53:16', '2017-05-05 07:53:16'),
(44, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/blog/categories', '2017-05-05 07:53:18', '2017-05-05 07:53:18'),
(45, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/blog/posts/create', '2017-05-05 07:53:52', '2017-05-05 07:53:52'),
(46, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/blog/posts', '2017-05-05 07:54:52', '2017-05-05 07:54:52'),
(47, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/blog/categories/2', '2017-05-05 07:54:54', '2017-05-05 07:54:54'),
(48, NULL, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/blog', '2017-05-05 07:55:05', '2017-05-05 07:55:05'),
(49, NULL, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/blog/categories/2', '2017-05-05 07:55:14', '2017-05-05 07:55:14'),
(50, NULL, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/blog/posts/2', '2017-05-05 07:55:24', '2017-05-05 07:55:24'),
(51, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/blog/posts/2', '2017-05-05 07:55:39', '2017-05-05 07:55:39'),
(52, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/dashboard', '2017-05-05 07:56:00', '2017-05-05 07:56:00'),
(53, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/statistics', '2017-05-05 07:56:16', '2017-05-05 07:56:16'),
(54, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/views', '2017-05-05 07:56:21', '2017-05-05 07:56:21'),
(55, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/views/unique', '2017-05-05 07:56:22', '2017-05-05 07:56:22'),
(56, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/most/browser', '2017-05-05 07:56:23', '2017-05-05 07:56:23'),
(57, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/most/os', '2017-05-05 07:56:25', '2017-05-05 07:56:25'),
(58, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/api/statistics/most/language', '2017-05-05 07:56:26', '2017-05-05 07:56:26'),
(59, NULL, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/blog', '2017-05-05 07:56:53', '2017-05-05 07:56:53'),
(60, NULL, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/blog/categories/1', '2017-05-05 07:57:01', '2017-05-05 07:57:01'),
(61, NULL, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/blog/posts/1', '2017-05-05 07:57:11', '2017-05-05 07:57:11'),
(62, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/settings', '2017-05-05 08:00:49', '2017-05-05 08:00:49'),
(63, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/settings/update', '2017-05-05 08:02:34', '2017-05-05 08:02:34'),
(64, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/settings', '2017-05-05 08:02:36', '2017-05-05 08:02:36'),
(65, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/notifications/settings', '2017-05-05 08:06:07', '2017-05-05 08:06:07'),
(66, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/settings', '2017-05-05 08:06:09', '2017-05-05 08:06:09'),
(67, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin', '2017-05-05 08:46:57', '2017-05-05 08:46:57'),
(68, 1, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/dashboard', '2017-05-05 08:46:57', '2017-05-05 08:46:57'),
(69, NULL, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin', '2017-05-05 09:13:30', '2017-05-05 09:13:30'),
(70, NULL, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/dashboard', '2017-05-05 09:13:32', '2017-05-05 09:13:32'),
(71, NULL, '127.0.0.1', 'Chrome', '58.0.3029.96', 'Windows', '7', 'en', 'es', 'http://localhost:8000/admin/login', '2017-05-05 09:13:34', '2017-05-05 09:13:34');

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
(3, '2016_11_28_115831_add_locale_column', 1),
(4, '2017_02_08_173459_create_laralum_permissions', 1),
(5, '2017_02_09_173459_create_laralum_roles', 1),
(6, '2017_02_09_193534_create_laralum_role_user', 1),
(7, '2017_02_09_233241_create_laralum_permission_role', 1),
(8, '2017_02_14_173459_create_laralum_settings', 1),
(9, '2017_02_23_182920_create_laralum_notifications', 1),
(10, '2017_02_24_182920_create_laralum_notifications_settings', 1),
(11, '2017_02_12_432515_create_customization', 2),
(12, '2017_02_26_233509_create_laralum_blog_categories_table', 3),
(13, '2017_02_26_233529_create_laralum_blog_posts_table', 3),
(14, '2017_02_26_234509_create_laralum_blog_comments_table', 3),
(15, '2017_04_02_133525_create_laralum_blog_settings', 3),
(16, '2017_04_28_115920_add_image_column_laralum_blogs', 3),
(17, '2017_03_03_132914_create_laralum_statistics_views', 4);

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
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `locale`) VALUES
(1, 'elkin garzon', 'elkingarzonyaya@gmail.com', '$2y$10$wBxu6iewSR2aL1uWQuLEUuVVtZK04do8rNs7Z/pBy2MdMEvGCSpMC', 'lcNI4uwzTFEtI5y5vOrTegwfPwRrC9NAAulaDIuobbHkq0ec7wPAGoGsogxI', '2017-05-05 07:02:17', '2017-05-05 07:02:17', 'en'),
(2, 'user', 'user@user.com', '$2y$10$1Rh1FFFw2AbDWqFpaAmxsO9nwI.VxxHTj2eR23zIWdqEikQcCfPtC', 'YUvHfy5ue0VzgqCw8mErjqu9g24VFOjmk4gEBNWI48WZ1NbTD1z7UzFe1TiI', '2017-05-05 07:27:07', '2017-05-05 07:27:07', 'en');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `laralum_blog_categories`
--
ALTER TABLE `laralum_blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `laralum_blog_comments`
--
ALTER TABLE `laralum_blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `laralum_blog_posts`
--
ALTER TABLE `laralum_blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `laralum_blog_settings`
--
ALTER TABLE `laralum_blog_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `laralum_customization`
--
ALTER TABLE `laralum_customization`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `laralum_notifications`
--
ALTER TABLE `laralum_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laralum_notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indices de la tabla `laralum_notifications_settings`
--
ALTER TABLE `laralum_notifications_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `laralum_permissions`
--
ALTER TABLE `laralum_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laralum_permissions_slug_unique` (`slug`);

--
-- Indices de la tabla `laralum_permission_role`
--
ALTER TABLE `laralum_permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `laralum_roles`
--
ALTER TABLE `laralum_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `laralum_role_user`
--
ALTER TABLE `laralum_role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `laralum_settings`
--
ALTER TABLE `laralum_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `laralum_statistics_views`
--
ALTER TABLE `laralum_statistics_views`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT de la tabla `laralum_blog_categories`
--
ALTER TABLE `laralum_blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `laralum_blog_comments`
--
ALTER TABLE `laralum_blog_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `laralum_blog_posts`
--
ALTER TABLE `laralum_blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `laralum_blog_settings`
--
ALTER TABLE `laralum_blog_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `laralum_customization`
--
ALTER TABLE `laralum_customization`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `laralum_notifications_settings`
--
ALTER TABLE `laralum_notifications_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `laralum_permissions`
--
ALTER TABLE `laralum_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT de la tabla `laralum_permission_role`
--
ALTER TABLE `laralum_permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT de la tabla `laralum_roles`
--
ALTER TABLE `laralum_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `laralum_role_user`
--
ALTER TABLE `laralum_role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `laralum_settings`
--
ALTER TABLE `laralum_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `laralum_statistics_views`
--
ALTER TABLE `laralum_statistics_views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
