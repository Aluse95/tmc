-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 11, 2023 lúc 03:49 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fhmagency_xkld`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `json_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_information`)),
  `is_super_admin` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `role`, `json_information`, `is_super_admin`, `status`, `remember_token`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Thắng Nguyễn', 'huuthangb2k50@gmail.com', '$2y$10$25wRBwxStIAcSrqD2FmWWetpAwziXPJhvt5PMy.W1aUP4ETewA0QK', 2, NULL, 1, 'active', NULL, NULL, NULL, '2021-09-24 08:48:18', '2022-12-08 03:56:38'),
(2, 'Test', 'test@gmail.com', '$2y$10$7gxfGSFLfg1BwfRZfsBCL.UNBLgP/R.c87SeIelNhACtfyVYACjoe', 1, NULL, 0, 'active', NULL, NULL, NULL, '2022-07-08 11:13:53', '2022-07-08 11:13:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_09_21_090133_create_admins_table', 1),
(5, '2021_09_29_090019_create_tb_options_table', 1),
(6, '2021_09_29_090048_create_tb_logs_table', 1),
(7, '2021_09_29_090107_create_tb_admin_menus_table', 1),
(8, '2021_09_29_090214_create_tb_modules_table', 1),
(9, '2021_09_29_090233_create_tb_module_functions_table', 1),
(10, '2021_09_29_090301_create_tb_roles_table', 1),
(11, '2021_09_29_090402_create_tb_menus_table', 1),
(12, '2021_09_29_090455_create_tb_blocks_table', 1),
(13, '2021_09_29_090509_create_tb_block_contents_table', 1),
(14, '2021_09_29_090709_create_tb_cms_taxonomys_table', 1),
(15, '2021_09_29_090743_create_tb_cms_posts_table', 1),
(16, '2021_10_09_013236_create_tb_pages_table', 1),
(17, '2021_10_26_210129_change_tb_users_table', 1),
(24, '2022_04_25_163138_create_tb_widgets_table', 3),
(25, '2022_04_25_163922_create_tb_components_table', 3),
(26, '2022_04_26_155008_create_tb_widget_configs_table', 4),
(27, '2022_04_26_155035_create_tb_component_configs_table', 4),
(28, '2022_06_02_102255_create_tb_bookings_table', 5),
(29, '2022_02_14_165457_create_tb_contacts_table', 6),
(30, '2022_02_14_170033_create_tb_orders_table', 6),
(31, '2022_02_14_170056_create_tb_order_details_table', 6),
(32, '2022_06_27_162451_create_tb_popups_table', 7),
(33, '2022_06_29_095757_change_users_table', 8),
(35, '2022_07_07_144844_create_tb_affiliate_payments_table', 9),
(36, '2022_07_12_210520_create_tb_affiliate_historys_table', 10),
(37, '2022_12_02_162806_create_tb_branchs_table', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_admin_menus`
--

CREATE TABLE `tb_admin_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url_link` varchar(255) DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `toolbar` varchar(255) DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_admin_menus`
--

INSERT INTO `tb_admin_menus` (`id`, `parent_id`, `name`, `icon`, `url_link`, `iorder`, `status`, `toolbar`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(3, 10, 'Quản lý người dùng', 'fa fa-user-plus', 'admins', 3, 'active', 'deactive', 1, 1, '2021-09-30 07:38:46', '2022-03-02 19:25:15'),
(5, 10, 'Quản lý nhóm quyền', 'fa fa-users', 'roles', 4, 'active', 'active', 1, 1, '2021-09-30 09:57:11', '2022-03-02 19:25:00'),
(6, 10, 'Quản lý Menu Admin', 'fa fa-tasks', 'admin_menus', 5, 'active', 'deactive', 1, 1, '2021-09-30 21:41:45', '2022-03-02 19:26:32'),
(10, NULL, 'Quản lý hệ thống', 'fa fa-server', NULL, 99, 'active', 'deactive', 1, 1, '2021-10-01 17:10:06', '2022-03-02 19:35:52'),
(13, NULL, 'Quản lý cấu hình', 'fa fa-home', NULL, 98, 'active', 'deactive', 1, 1, '2021-10-02 10:26:41', '2022-03-02 19:35:45'),
(17, 71, 'Quản lý Khối nội dung', 'fa fa-object-group', 'block_contents', 999, 'active', 'deactive', 1, 1, '2021-10-07 09:08:48', '2022-08-06 08:30:21'),
(41, 71, 'Quản lý Pages - Trang', 'fa fa-clone', 'pages', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:15:57', '2022-08-06 08:30:18'),
(42, 71, 'Quản lý Menu Website', 'fa fa-bars', 'menus', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:19:53', '2022-08-06 08:30:15'),
(44, 70, 'Quản lý hình ảnh hệ thống', 'fa fa-picture-o', 'web_image', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:03', '2022-08-06 08:29:09'),
(45, 70, 'Quản lý thông tin Website', 'fa fa-globe', 'web_information', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:28', '2022-08-06 08:29:06'),
(46, 70, 'Quản lý liên kết MXH', 'fa fa-share-alt-square', 'web_social', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:43', '2022-08-06 08:29:03'),
(51, NULL, 'Quản lý nội dung', 'fa fa-folder', NULL, 2, 'active', NULL, 1, 1, '2022-05-30 08:46:23', '2022-08-06 08:32:52'),
(52, 51, 'Quản lý danh mục - thể loại', NULL, 'cms_taxonomys', 1, 'active', NULL, 1, 1, '2022-05-30 08:46:51', '2022-05-30 08:46:51'),
(53, 51, 'Quản lý tin tức - sự kiện', NULL, 'cms_posts', 2, 'active', NULL, 1, 1, '2022-05-30 09:56:47', '2023-01-09 15:24:09'),
(58, 71, 'Quản lý mã nhúng CSS - JS', NULL, 'web_source', NULL, 'active', NULL, 1, 1, '2022-06-07 02:41:52', '2022-08-06 08:30:12'),
(59, 72, 'Quản lý liên hệ', NULL, 'contacts', 3, 'active', NULL, 1, 1, '2022-06-08 03:16:46', '2022-08-06 08:35:02'),
(62, 72, 'Quản lý Đăng ký bản tin', NULL, 'call_request', 2, 'active', NULL, 1, 1, '2022-06-10 03:01:44', '2022-12-07 02:40:22'),
(70, 13, 'Cấu hình thông tin chung', 'fa fa-bars', '#', 1, 'active', NULL, 1, 1, '2022-08-06 08:28:32', '2022-08-06 08:31:29'),
(71, 13, 'Cấu hình Website', 'fa fa-object-group', '#', 2, 'active', NULL, 1, 1, '2022-08-06 08:29:55', '2022-08-06 08:31:10'),
(72, NULL, 'Quản lý khách hàng', 'fa fa-opencart', '#', 1, 'active', NULL, 1, 1, '2022-08-06 08:32:30', '2022-08-06 08:34:15'),
(73, 51, 'Quản lý sản phẩm', NULL, 'cms_products', 4, 'deactive', NULL, 1, 1, '2022-10-08 03:23:29', '2023-01-06 15:57:20'),
(74, 51, 'Quản lý thư viện Media', NULL, 'cms_resources', 5, 'active', NULL, 1, 1, '2022-12-02 02:50:21', '2023-01-09 15:22:53'),
(75, 51, 'Quản lý chi nhánh - đại lý', NULL, 'branchs', 6, 'deactive', NULL, 1, 1, '2022-12-02 10:55:27', '2023-01-06 15:57:33'),
(76, NULL, 'Khai báo Module Functions', NULL, 'module_functions', 100, 'active', NULL, 1, 1, '2023-01-06 08:14:30', '2023-01-06 08:14:30'),
(77, 76, 'Khai báo Modules', NULL, 'modules', 1, 'active', NULL, 1, 1, '2023-01-06 08:15:00', '2023-01-06 08:15:00'),
(78, 76, 'Khai báo Blocks', NULL, 'blocks', 2, 'active', NULL, 1, 1, '2023-01-06 08:15:23', '2023-01-06 08:15:29'),
(79, 76, 'Khai báo tham số', NULL, 'options', 3, 'active', NULL, 1, 1, '2023-01-06 08:15:48', '2023-01-06 08:15:48'),
(80, 51, 'Quản lý khóa học', NULL, 'cms_services', 4, 'active', NULL, 1, 1, '2023-01-06 16:49:19', '2023-01-09 05:27:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_affiliate_historys`
--

CREATE TABLE `tb_affiliate_historys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `order_total_money` double(20,2) NOT NULL DEFAULT 0.00,
  `affiliate_percent` double(20,2) NOT NULL DEFAULT 0.00,
  `affiliate_point` double(20,2) DEFAULT NULL,
  `affiliate_money` double(20,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_affiliate_historys`
--

INSERT INTO `tb_affiliate_historys` (`id`, `is_type`, `user_id`, `order_id`, `order_total_money`, `affiliate_percent`, `affiliate_point`, `affiliate_money`, `description`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'product', 3, 9, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 17:51:21', '2022-07-12 18:52:58'),
(3, 'product', 2, 9, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:18:05', '2022-07-12 18:52:58'),
(4, 'service', 3, 14, 0.00, 3.00, 0.00, 0.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:53:27', '2022-07-12 18:53:27'),
(5, 'service', 2, 14, 0.00, 2.50, 0.00, 0.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:53:27', '2022-07-12 18:53:27'),
(6, 'product', 3, 11, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-13 08:11:45', '2022-07-13 08:11:54'),
(7, 'product', 2, 11, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-13 08:11:45', '2022-07-13 08:11:54'),
(8, 'product', 3, 16, 5350000.00, 1.50, 80250.00, 80250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(9, 'product', 2, 16, 5350000.00, 1.50, 80250.00, 80250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(10, 'service', 3, 15, 450000.00, 3.00, 13500.00, 13500.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17'),
(11, 'service', 2, 15, 450000.00, 2.50, 11250.00, 11250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_affiliate_payments`
--

CREATE TABLE `tb_affiliate_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `money` double(20,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_affiliate_payments`
--

INSERT INTO `tb_affiliate_payments` (`id`, `user_id`, `money`, `description`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 3, 5000000.00, 'Số tài khoản: 1122335789\r\nChủ tài khoản: Nguyễn Hữu Thắng\r\nTên ngân hàng: Vietcombank Hà Tây', NULL, 'new', NULL, NULL, '2022-07-13 08:29:49', '2022-07-13 08:29:49'),
(2, 3, 15000000.00, 'Số tài khoản: 1122335789\r\nChủ tài khoản: Nguyễn Hữu Thắng\r\nTên ngân hàng: MB Bank', '{\"admin_note\":\"ThangNH \\u0111ang x\\u1eed l\\u00fd \\u0111\\u1ec1 ngh\\u1ecb thanh to\\u00e1n n\\u00e0y\"}', 'processing', NULL, 1, '2022-07-13 08:33:09', '2022-07-13 10:40:49'),
(3, 3, 50000.00, NULL, NULL, 'new', NULL, NULL, '2022-07-13 09:01:39', '2022-07-13 09:01:39'),
(4, 3, 5350000.00, NULL, '{\"admin_note\":\"Payment for orders by affiliate wallet\",\"order_id\":16}', 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(5, 3, 450000.00, NULL, '{\"admin_note\":\"Payment for orders by affiliate wallet\",\"order_id\":15}', 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_blocks`
--

CREATE TABLE `tb_blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `block_code` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `is_config` tinyint(1) NOT NULL DEFAULT 1,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_blocks`
--

INSERT INTO `tb_blocks` (`id`, `name`, `description`, `block_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Khối hình ảnh quảng cáo', 'Block used for displaying banner advertising images, with or without additional content', 'banner', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"slide\"\r\n	]\r\n}', 1, 2, 'active', 1, 1, '2021-10-07 04:49:19', '2022-12-05 10:19:46'),
(11, 'Khối nội dung tùy chọn', 'Blocks are used for optional content and styled accordingly', 'custom', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"about_us\",\r\n		\"about_resource\",\r\n		\"core_value\",\r\n		\"about_development\",\r\n		\"about_client\",\r\n                 \"about_register\",\r\n                 \"about_contact\"\r\n	]\r\n}', 1, 3, 'active', 1, 1, '2021-10-11 16:44:15', '2023-01-07 02:10:35'),
(20, 'Khối nội dung đầu trang', NULL, 'header', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"branch.default\"\r\n	],\r\n	\"layout\":[\r\n		\"default\"\r\n	]\r\n}', 1, 1, 'active', 1, 1, '2022-05-30 03:05:17', '2022-12-05 09:11:16'),
(21, 'Khối nội dung chân trang', NULL, 'footer', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"branch.default\"\r\n	]\r\n}', 1, 99, 'active', 1, 1, '2022-05-30 03:06:28', '2022-12-05 09:11:25'),
(22, 'Khối danh sách dịch vụ nổi bật', NULL, 'cms_service', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n	]\r\n}', 1, 5, 'active', 1, 1, '2022-05-31 07:25:43', '2023-01-06 08:16:13'),
(23, 'Khối danh sách bài viết nổi bật', NULL, 'cms_post', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	]\r\n}', 1, 7, 'active', 1, 1, '2022-05-31 09:53:32', '2023-01-06 08:33:35'),
(24, 'Khối Video và hình ảnh nổi bật', NULL, 'cms_resource', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n	],\r\n	\"style\":[\r\n		\"video\",\r\n		\"image\"\r\n	]\r\n}', 1, 6, 'deactive', 1, 1, '2022-06-01 08:38:54', '2022-11-30 07:22:16'),
(27, 'Khối hiển thị nội dung chính', 'Khối hiển thị nội dung theo từng chức năng cụ thể', 'main', '{\r\n	\"template\":[\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"page.price\",\r\n		\"page.content\",\r\n		\"branch.default\",\r\n		\"page.default\"\r\n	]\r\n}', 1, 4, 'active', 1, 1, '2022-06-02 11:23:39', '2022-12-05 10:19:52'),
(35, 'Khối nội dung form đăng ký', NULL, 'form', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"booking\"\r\n	]\r\n}', 1, 8, 'deactive', 1, 1, '2022-09-13 09:23:28', '2022-11-30 07:22:22'),
(36, 'Khối danh sách sản phẩm nổi bật', NULL, 'cms_product', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n	]\r\n}', 1, 4, 'deactive', 1, 1, '2022-10-08 03:22:14', '2023-01-06 16:59:07'),
(37, 'Khối danh sách câu hỏi thường gặp - FAQs', NULL, 'faq', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"default\"\r\n	]\r\n}', 1, NULL, 'deactive', 1, 1, '2022-10-17 04:36:18', '2022-11-30 07:21:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_block_contents`
--

CREATE TABLE `tb_block_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `brief` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `block_code` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `image` varchar(255) DEFAULT NULL,
  `image_background` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url_link` varchar(255) DEFAULT NULL,
  `url_link_title` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `system_code` varchar(255) DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_block_contents`
--

INSERT INTO `tb_block_contents` (`id`, `parent_id`, `title`, `brief`, `content`, `block_code`, `json_params`, `image`, `image_background`, `icon`, `url_link`, `url_link_title`, `position`, `system_code`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(19, NULL, 'VỀ CHÚNG TÔI', 'Chúng tôi luôn coi những kết quả trên là sự ghi nhận sự cố gắng vì người lao động, coi đó là thách thức để làm động lực để vươn lên tầm cao mới. Toàn thể cán bộ, nhân viên công ty luôn thấm nhuần triết lý kinh doanh, nỗ lực hơn nữa để mang lại nhiều cơ hội cho các bạn lao động.', NULL, 'custom', '{\"layout\":\"about_us\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2021-10-12 10:29:41', '2023-01-06 08:30:56'),
(21, 19, 'Tầm nhìn', 'Cung ứng nguồn lao động Nhật Bản chất lượng hàng đầu Việt Nam, là sự lựa chọn hàng đầu cho các đối tác và người lao động.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/02-01.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2021-10-12 10:31:50', '2023-01-06 07:46:45'),
(22, 19, 'Sứ mệnh', 'Định hướng nghề nghiệp cho nguồn nhân lực trẻ Việt Nam, mang lại cơ hội thay đổi tương lai cho người lao động Việt Nam, kết nối và hợp tác với các đối tác lớn, uy tín.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/03-01.png', NULL, NULL, '#', 'learn more', NULL, NULL, 2, 'active', 1, 1, '2021-10-12 10:32:50', '2023-01-06 07:49:40'),
(74, NULL, 'Khối hình ảnh banner đầu trang', NULL, NULL, 'banner', '{\"layout\":\"slide\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2022-03-18 17:50:28', '2022-11-07 15:50:15'),
(79, NULL, 'Tin tức - sự kiện', NULL, NULL, 'cms_post', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, 'tin-tuc', 'Xem tất cả', NULL, NULL, 9, 'active', 1, 1, '2022-05-31 07:26:33', '2023-01-09 04:50:37'),
(82, NULL, 'Học viên nói về chúng tôi', NULL, NULL, 'custom', '{\"layout\":\"about_client\",\"style\":null}', NULL, NULL, NULL, 'dich-vu', 'Xem thêm', NULL, NULL, 8, 'active', 1, 1, '2022-06-01 08:39:42', '2023-01-06 15:51:37'),
(94, NULL, 'Khối hiển thị nội dung chính', NULL, NULL, 'main', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-06-02 11:24:21', '2022-06-03 03:49:47'),
(96, 241, '#2', 'COO - FHM Agency', NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', '/data/cms-image/demo/1233.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2022-08-05 08:58:04', '2022-09-13 07:35:29'),
(97, 241, '#1', NULL, NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', '/data/cms-image/demo/demo.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-08-05 08:58:04', '2022-09-13 07:36:29'),
(103, 241, '#4', NULL, NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', '/data/cms-image/demo/demo.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2022-08-05 09:17:04', '2022-09-13 07:36:51'),
(104, 241, '#3', NULL, NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', '/data/cms-image/demo/1233.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2022-08-05 09:17:04', '2022-09-13 07:35:32'),
(286, 74, '#2', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/BANNER WEB 2.jpg', '/data/cms-image/1/BANNER WEB 2.jpg', NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2022-11-07 15:54:33', '2023-01-09 06:55:57'),
(287, 74, '#1', NULL, 'Digital Agency <span>Solutions</span>', 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/BANNER WEB 2.jpg', '/data/cms-image/1/BANNER WEB 2.jpg', NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-11-07 15:54:33', '2023-01-09 06:55:38'),
(289, 79, 'Tầm nhìn', 'Trở thành công ty cung cấp vật liệu lát sàn hàng đầu Việt Nam năm 2025', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-2-1.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2022-11-15 07:55:34', '2023-01-06 08:39:30'),
(290, 79, 'Mục tiêu', 'Chiếm 35% thị phần ván sàn công nghiệp năm 2025', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-2-3.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2022-11-15 07:56:51', '2023-01-06 08:39:38'),
(291, 79, 'Sứ mệnh', 'Cung cấp các giải pháp lát sàn tuyệt vời và đảm bảo an toàn sức khoẻ cho 100 triệu người dân Việt Nam', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-2-2.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2022-11-15 07:56:53', '2023-01-06 08:39:33'),
(292, 293, 'Chính trực', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-3-1.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2022-11-15 07:56:54', '2023-01-06 09:27:01'),
(293, NULL, 'Bạn sẽ học được những gì?', 'Điểm khác biệt của TMC là Đơn vị có Trung tâm Đào tạo riêng cho người lao động chuẩn phong cách Nhật. Đồng thời, đội ngũ chăm sóc khách hàng của Công ty luôn tận tình, lắng nghe, không ngừng nâng cao chất lượng dịch vụ.', NULL, 'custom', '{\"layout\":\"about_development\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'active', 1, 1, '2022-11-15 07:57:15', '2023-01-06 10:25:33'),
(294, 293, 'Tuân thủ', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-3-4.png', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'delete', 1, 1, '2022-11-15 07:59:00', '2023-01-06 09:27:13'),
(295, 293, 'Công bằng', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-3-3.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2022-11-15 07:59:02', '2023-01-06 09:27:09'),
(296, 293, 'Tôn trọng', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-3-2.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2022-11-15 07:59:03', '2023-01-06 09:27:05'),
(297, 293, 'Đạo đức', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-3-5.png', NULL, NULL, NULL, NULL, NULL, NULL, 5, 'delete', 1, 1, '2022-11-15 07:59:05', '2023-01-06 09:27:17'),
(299, NULL, 'Video khóa học', NULL, NULL, 'custom', '{\"layout\":\"core_value\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'active', 1, 1, '2022-11-15 10:36:53', '2023-01-06 10:37:27'),
(300, 299, 'Tuyển công nhân xây dựng (cốt thép, xây, trát, mộc coppha)', NULL, 'https://www.youtube.com/embed/z2iZkjy0blU', 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/a5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2022-11-15 10:39:21', '2023-01-09 10:29:06'),
(301, 299, 'Tuyển công nhân xây dựng (cốt thép, xây, trát, mộc coppha)', NULL, 'https://www.youtube.com/embed/_uLboWlObOY', 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/a3.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2022-11-15 10:39:23', '2023-01-09 10:32:53'),
(302, 299, 'Tuyển công nhân xây dựng (cốt thép, xây, trát, mộc coppha)', NULL, 'https://www.youtube.com/embed/z2iZkjy0blU', 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/a2.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2022-11-15 10:39:25', '2023-01-09 10:29:39'),
(303, 299, 'Tuyển công nhân xây dựng (cốt thép, xây, trát, mộc coppha)', NULL, 'https://www.youtube.com/embed/_uLboWlObOY', 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/a4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-11-15 10:39:27', '2023-01-09 10:32:07'),
(304, 19, 'Giá trị cốt lõi', 'Người lao động là tài sản có giá trị và là nguồn sức mạnh của chúng tôi, lấy chất lượng làm cam kết với đối tác và người lao động.', NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/01-01.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-01-06 07:45:44', '2023-01-06 07:49:57'),
(305, 293, 'Công nhân giàn giáo', '- Thời gian làm việc: 8 tiếng/ngày, 6 ngày/tuần. Được chủ sử dụng sắp xếp việc làm thêm. Thời gian làm thêm được tính bằng 150% lương cơ bản cho thời gian làm việc ngoài 8 tiếng/ngày, được tính bằng 200% lương cơ bản nếu làm việc trong các ngày Lễ và ngày nghỉ.\r\n- Được cấp vé máy bay lượt đi và lượt về khi kết thúc hợp đồng.\r\n- Miễn phí ở, đi lại từ nơi ở đến nơi làm việc.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/phuho.png', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2023-01-06 09:34:55', '2023-01-06 10:35:37'),
(306, 293, 'Thợ Mộc coppha', '- Thời gian làm việc: 8 tiếng/ngày, 6 ngày/tuần. Được chủ sử dụng sắp xếp việc làm thêm. Thời gian làm thêm được tính bằng 150% lương cơ bản cho thời gian làm việc ngoài 8 tiếng/ngày, được tính bằng 200% lương cơ bản nếu làm việc trong các ngày Lễ và ngày nghỉ.\r\n- Được cấp vé máy bay lượt đi và lượt về khi kết thúc hợp đồng.\r\n- Miễn phí ở, đi lại từ nơi ở đến nơi làm việc.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/phuho.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-01-06 09:34:55', '2023-01-06 10:36:37'),
(307, 293, 'Thợ làm Sắt (cốt thép)', '- Thời gian làm việc: 8 tiếng/ngày, 6 ngày/tuần. Được chủ sử dụng sắp xếp việc làm thêm. Thời gian làm thêm được tính bằng 150% lương cơ bản cho thời gian làm việc ngoài 8 tiếng/ngày, được tính bằng 200% lương cơ bản nếu làm việc trong các ngày Lễ và ngày nghỉ.\r\n- Được cấp vé máy bay lượt đi và lượt về khi kết thúc hợp đồng.\r\n- Miễn phí ở, đi lại từ nơi ở đến nơi làm việc.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/phuho.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-01-06 09:34:55', '2023-01-06 10:36:25'),
(308, 293, 'Thợ Nề: Xây, trát', '- Thời gian làm việc: 8 tiếng/ngày, 6 ngày/tuần. Được chủ sử dụng sắp xếp việc làm thêm. Thời gian làm thêm được tính bằng 150% lương cơ bản cho thời gian làm việc ngoài 8 tiếng/ngày, được tính bằng 200% lương cơ bản nếu làm việc trong các ngày Lễ và ngày nghỉ.\r\n- Được cấp vé máy bay lượt đi và lượt về khi kết thúc hợp đồng.\r\n- Miễn phí ở, đi lại từ nơi ở đến nơi làm việc.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/phuho.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-01-06 09:34:55', '2023-01-06 10:36:15'),
(309, NULL, 'Đội ngũ nhân sự của công ty', 'Đội ngũ chuyên gia đào tạo giàu kinh nghiệm', 'Với  đội ngũ giáo viên giảng dạy giàu kinh nghiệm, năng động, sáng tạo và tận tâm, Công ty cam kết cung ứng nguồn lao động có chất lượng tốt cho đối tác và chủ sử dụng lao động. Đồng thời, đảm bảo mức thu nhập, quyền và lợi ích hợp pháp cho người tham gia chương trình xuất khẩu lao động Nhật Bản. Người lao động luôn được quan tâm, tạo điều kiện tối ưu từ quá trình tuyển dụng cho đến khi làm việc ở nước ngoài.', 'custom', '{\"layout\":\"about_resource\",\"style\":null}', '/data/cms-image/1/nv.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 5, 'active', 1, 1, '2023-01-06 10:12:32', '2023-01-09 02:00:52'),
(310, 82, 'Anh Tùng công nhân xây dựng', 'Với đội ngũ lãnh đạo giàu kinh nghiệm, chiến lược phát triển tốt, cán bộ công nhân viên được đào tạo chuyên ngành có năng lực, chúng tôi đã tiến bước vững chắc và phát triển liên tục để giữ vững uy tín và chất lượng xứng đáng với niềm tin yêu của người lao động.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/cn3.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-01-06 16:21:37', '2023-01-06 16:30:25'),
(311, 82, 'Anh Huy công nhân xây dựng', 'Với đội ngũ lãnh đạo giàu kinh nghiệm, chiến lược phát triển tốt, cán bộ công nhân viên được đào tạo chuyên ngành có năng lực, chúng tôi đã tiến bước vững chắc và phát triển liên tục để giữ vững uy tín và chất lượng xứng đáng với niềm tin yêu của người lao động.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/cn1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-01-06 16:22:25', '2023-01-06 16:30:37'),
(312, 82, 'Anh Hải công nhân xây dựng', 'Với đội ngũ lãnh đạo giàu kinh nghiệm, chiến lược phát triển tốt, cán bộ công nhân viên được đào tạo chuyên ngành có năng lực, chúng tôi đã tiến bước vững chắc và phát triển liên tục để giữ vững uy tín và chất lượng xứng đáng với niềm tin yêu của người lao động.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/giang-vien-tieng-nhat.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-01-06 16:22:59', '2023-01-06 16:30:44'),
(313, 82, 'Anh Thái công nhân xây dựng', 'Với đội ngũ lãnh đạo giàu kinh nghiệm, chiến lược phát triển tốt, cán bộ công nhân viên được đào tạo chuyên ngành có năng lực, chúng tôi đã tiến bước vững chắc và phát triển liên tục để giữ vững uy tín và chất lượng xứng đáng với niềm tin yêu của người lao động.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/cn5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2023-01-06 16:23:24', '2023-01-06 16:31:05'),
(314, 82, 'Anh Hùng công nhân xây dựng', 'Với đội ngũ lãnh đạo giàu kinh nghiệm, chiến lược phát triển tốt, cán bộ công nhân viên được đào tạo chuyên ngành có năng lực, chúng tôi đã tiến bước vững chắc và phát triển liên tục để giữ vững uy tín và chất lượng xứng đáng với niềm tin yêu của người lao động.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/cn2.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 5, 'active', 1, 1, '2023-01-06 16:23:46', '2023-01-06 16:31:12'),
(315, NULL, 'Danh sách khóa học', NULL, NULL, 'cms_service', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, 'khoa-hoc', 'Xem tất cả', NULL, NULL, 4, 'active', 1, 1, '2023-01-06 16:46:45', '2023-01-09 07:00:04'),
(316, NULL, 'Đăng Ký Nhận Tư Vấn', 'Miễn Phí Khóa Học Trải Nghiệm Cho Lớp Đầu Tiến Của Tháng Nhanh Tay Đăng Ký Có Duy Nhất 10 Xuất.', NULL, 'custom', '{\"layout\":\"about_register\",\"style\":null}', '/data/cms-image/1/dangki.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 10, 'active', 1, 1, '2023-01-07 02:02:34', '2023-01-07 02:12:05'),
(317, NULL, 'Đăng ký nhận thông báo', 'Nhận thông báo mới từ Trung tâm qua email của bạn', NULL, 'custom', '{\"layout\":\"about_contact\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 'delete', 1, 1, '2023-01-07 02:11:51', '2023-01-07 04:31:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_bookings`
--

CREATE TABLE `tb_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `customer_note` text DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_time` varchar(255) DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) NOT NULL DEFAULT 'new',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_branchs`
--

CREATE TABLE `tb_branchs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `map` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_branchs`
--

INSERT INTO `tb_branchs` (`id`, `is_type`, `name`, `city`, `district`, `address`, `phone`, `fax`, `map`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'FHM Agency', '5', '825', 'Số 16 Trần Quốc Vượng, Cầu Giấy, Hà nội', '098 226 9600', '098 226 9611', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29792.14029028318!2d105.7910779951155!3d21.03198432079961!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab398a2a3667%3A0x24328ecb439376f!2sFHM%20Agency!5e0!3m2!1svi!2sus!4v1670225754820!5m2!1svi!2sus\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'active', 1, 1, '2022-12-05 07:47:15', '2022-12-05 09:41:38'),
(2, NULL, 'Công ty cổ phần FHM Agency Hà Nội', '5', '825', '2/25 Thọ Tháp, Cầu Giấy, Hà Nội', '0393004567', '0393004567', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d29792.155949030785!2d105.791078!3d21.031906!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd0905b6cacd304da!2zQ8O0bmcgdHkgY-G7lSBwaOG6p24gdGjGsMahbmcgbeG6oWkgRkhNIFZp4buHdCBOYW0!5e0!3m2!1svi!2sus!4v1670225430705!5m2!1svi!2sus\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'active', 1, 1, '2022-12-05 07:49:39', '2022-12-05 07:49:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_cms_posts`
--

CREATE TABLE `tb_cms_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_type` varchar(255) DEFAULT 'post',
  `title` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `image` varchar(255) DEFAULT NULL,
  `image_thumb` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `count_visited` int(11) NOT NULL DEFAULT 0,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_cms_posts`
--

INSERT INTO `tb_cms_posts` (`id`, `taxonomy_id`, `is_type`, `title`, `json_params`, `image`, `image_thumb`, `is_featured`, `count_visited`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(1, 1, 'post', 'Bảng giá thiết kế', '{\"brief\":{\"vi\":\"In varius varius justo, eget ultrices mauris rhoncus non. Morbi tristique, mauris eu bibendum, velit diam.\"},\"content\":{\"vi\":\"<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"\\/data\\/other\\/1\\/bang-gia-thiet-ke-noi-that.jpg\\\" \\/><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/post/1.jpg', '/data/cms-image/post/1.jpg', 0, 18, 1, 'delete', 1, 1, '2021-10-15 08:58:35', '2023-01-06 08:39:57', 'bang-gia-thiet-ke'),
(2, 1, 'post', 'Bảng giá thi công phần thô', '{\"brief\":{\"vi\":\"In varius varius justo, eget ultrices mauris rhoncus non. Morbi tristique, mauris eu bibendum, velit diam.\"},\"content\":{\"vi\":\"<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"\\/data\\/other\\/1\\/bang-gia-thiet-ke-noi-that.jpg\\\" \\/><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/post/1.jpg', '/data/cms-image/post/1.jpg', 0, 9, 2, 'delete', 1, 1, '2021-10-15 08:59:49', '2023-01-06 08:40:03', 'bang-gia-thi-cong-phan-tho'),
(3, 17, 'resource', 'Đào tạo thợ xây, thợ coppha 2023', '{\"price\":null,\"price_old\":null,\"place\":null,\"area\":null,\"scale\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/z4009890024399_5debcb54b49b2f40040561b9fc04503d.jpg', NULL, 1, 31, 1, 'active', 1, 1, '2021-10-15 09:36:39', '2023-01-09 15:53:18', 'dao-tao-tho-xay-tho-coppha-2023'),
(4, 32, 'service', 'Kiến trúc biệt thự', '{\"price\":\"450000\",\"price_currency\":\"\\u20ab\",\"brief\":{\"vi\":\"Powerful Layout with Responsive functionality that can be adapted to any screen size.\"},\"content\":{\"vi\":\"<h2><strong>Quy tr\\u00ecnh trong thi\\u1ebft k\\u1ebf n\\u1ed9i thi c\\u00f4ng th\\u1ea5t chung c\\u01b0 c\\u1ee7a N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t<\\/strong><\\/h2>\\r\\n\\r\\n<h3><strong>1. Thu th\\u1eadp th\\u00f4ng tin, t\\u01b0 v\\u1ea5n \\u00fd t\\u01b0\\u1edfng<\\/strong><\\/h3>\\r\\n\\r\\n<p>Nh\\u00e2n vi\\u00ean t\\u01b0 v\\u1ea5n c\\u1ee7a N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t ti\\u1ebfp nh\\u1eadn y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng, trao \\u0111\\u1ed5i h\\u1ed7 tr\\u1ee3 \\u00fd t\\u01b0\\u1edfng thi\\u1ebft k\\u1ebf v\\u00e0 ch\\u1ecdn ch\\u1ea5t li\\u1ec7u ph\\u00f9 h\\u1ee3p d\\u1ef1a v\\u00e0o t\\u00ecnh h\\u00ecnh t\\u00e0i ch\\u00ednh c\\u1ee7a ch\\u1ee7 nh\\u00e0.<\\/p>\\r\\n\\r\\n<h3><strong>2. Kh\\u1ea3o s\\u00e1t c\\u00f4ng tr\\u00ecnh<\\/strong><\\/h3>\\r\\n\\r\\n<p>X\\u00e1c \\u0111\\u1ecbnh r\\u00f5 m\\u1ee5c \\u0111\\u00edch thi\\u1ebft, d\\u1ef1a tr\\u00ean di\\u1ec7n t\\u00edch t\\u00ednh to\\u00e1n c\\u00e1c th\\u00f4ng s\\u1ed1 \\u0111\\u1ec3 gi\\u00fap kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu, phong c\\u00e1ch thi\\u1ebft k\\u1ebf theo \\u00fd t\\u01b0\\u1edfng v\\u00e0 mong mu\\u1ed1n c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>3. K\\u00fd k\\u1ebft h\\u1ee3p \\u0111\\u1ed3ng thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chung c\\u01b0<\\/strong><\\/h3>\\r\\n\\r\\n<p>Sau khi kh\\u1ea3o s\\u00e1t, N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd x\\u00e1c \\u0111\\u1ecbnh \\u0111\\u01b0\\u1ee3c ph\\u01b0\\u01a1ng \\u00e1n t\\u1ed1i \\u01b0u cho c\\u00f4ng tr\\u00ecnh, sau t\\u1eeb 2-4 ng\\u00e0y t\\u00f9y theo kh\\u1ed1i l\\u01b0\\u1ee3ng c\\u00f4ng vi\\u1ec7c N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd thi\\u1ebft k\\u1ebf ra m\\u1eb7t b\\u1eb1ng t\\u1eeb 2D \\u0111\\u1ec3 l\\u00ean ph\\u01b0\\u01a1ng \\u00e1n cho kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu.<\\/p>\\r\\n\\r\\n<p>Sau khi kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd ti\\u1ebfn h\\u00e0nh b\\u00e1o gi\\u00e1 d\\u1ef1a tr\\u00ean h\\u1ea1ng m\\u1ee5c c\\u00f3 s\\u1eb5n c\\u00f9ng c\\u00e1c y\\u00eau c\\u1ea7u ri\\u00eang c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>4. Thi\\u1ebft k\\u1ebf b\\u1ea3n v\\u1ebd 3D<\\/strong><\\/h3>\\r\\n\\r\\n<p>N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd g\\u1eedi c\\u00e1c h\\u00ecnh \\u1ea3nh c\\u00e1c b\\u1ea3n v\\u1ebd 3D chi ti\\u1ebft t\\u1eebng c\\u0103n ph\\u00f2ng (t\\u1eeb \\u0111\\u01b0\\u1eddng n\\u00e9t, \\u0111\\u1ed9 d\\u00e0i, chi\\u1ec1u cao\\u2026)qua cho kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<p>K\\u00e8m theo \\u0111\\u00f3 l\\u00e0 s\\u1ef1 thi\\u1ebft k\\u1ebf ph\\u1ed1i m\\u00e0u s\\u1eafc \\u0111\\u1ec3 kh\\u00e1ch h\\u00e0ng c\\u00f3 th\\u1ec3 h\\u00ecnh dung \\u0111\\u01b0\\u1ee3c t\\u1ed5ng th\\u1ec3 b\\u1ed1 c\\u1ee5c s\\u1ea3n ph\\u1ea9m sau khi thi\\u1ebft k\\u1ebf.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/1582527257_dream.jpg', '/data/cms-image/1/1582527257_dream.jpg', 0, 6, 7, 'delete', 1, 1, '2022-02-13 15:59:41', '2023-01-07 01:35:35', 'kien-truc-biet-thu'),
(5, 32, 'service', 'Khóa học đào tạo lao động Nhật bản T8', '{\"price\":null,\"price_currency\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":\"<p>Ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng tham gia ch\\u01b0\\u01a1ng tr\\u00ecnh xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng sang Nh\\u1eadt B\\u1ea3n c\\u1ee7a B\\u1ea3o Vi\\u1ec7t.,JSC, s\\u1ebd \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n l\\u1ef1a ch\\u1ecdn c\\u00e1c \\u0111\\u01a1n h\\u00e0ng ph\\u00f9 h\\u1ee3p v\\u1edbi s\\u1ee9c kh\\u1ecfe, n\\u0103ng l\\u1ef1c v\\u00e0 kinh nghi\\u1ec7m, c\\u1ee5 th\\u1ec3:<\\/p>\\r\\n\\r\\n<p>1. \\u0110\\u1ed1i v\\u1edbi&nbsp;<strong>Xu\\u1ea5t Kh\\u1ea9u Lao \\u0110\\u1ed9ng&nbsp;th\\u00f4ng th\\u01b0\\u1eddng<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u2013 Ch\\u1ebf bi\\u1ebfn th\\u1ef1c ph\\u1ea9m, th\\u1ee7y\\/h\\u1ea3i s\\u1ea3n (c\\u01a1m h\\u1ed9p, th\\u1ee9c \\u0103n \\u0103n k\\u00e8m, th\\u1ee9c \\u0103n l\\u1ea9u..);<\\/p>\\r\\n\\r\\n<p>\\u2013 \\u0110\\u00f3ng g\\u00f3i s\\u1ea3n ph\\u1ea9m (th\\u00f9ng carton, h\\u00e0ng h\\u00f3a..);<\\/p>\\r\\n\\r\\n<p>\\u2013 L\\u1eafp r\\u00e1p linh ki\\u1ec7n m\\u00e1y m\\u00f3c (\\u0111i\\u1ec7n t\\u1eed, \\u00f4 t\\u00f4, ph\\u1ee5 ki\\u1ec7n..);<\\/p>\\r\\n\\r\\n<p>\\u2013 C\\u01a1 kh\\u00ed (ti\\u1ec7n, phay, b\\u00e0o, h\\u00e0n \\u0111i\\u1ec7n, h\\u00e0n C02, d\\u1eadp kim lo\\u1ea1i, s\\u1eeda ch\\u1eefa b\\u1ea3o d\\u01b0\\u1ee1ng \\u00f4 t\\u00f4\\u2026);<\\/p>\\r\\n\\r\\n<p>\\u2013 Ch\\u1ebf t\\u1ea1o v\\u00e0 v\\u1eadn h\\u00e0nh m\\u00e1y; S\\u01a1n g\\u00f2 h\\u00e0n; \\u0110i\\u1ec7n; T\\u1ef1 \\u0111\\u1ed9ng h\\u00f3a; C\\u00f4ng ngh\\u1ec7 v\\u1eadt li\\u1ec7u\\u2026<\\/p>\\r\\n\\r\\n<p>\\u2013 May m\\u1eb7c, \\u0111\\u00f3ng g\\u00f3i;<\\/p>\\r\\n\\r\\n<p>\\u2013 X\\u00e2y d\\u1ef1ng (m\\u1ed9c, n\\u1ec1, s\\u01a1n, c\\u1ed1t pha, gi\\u00e0n gi\\u00e1o\\u2026);<\\/p>\\r\\n\\r\\n<p>\\u2013 N\\u00f4ng nghi\\u1ec7p (tr\\u1ed3ng tr\\u1ecdt, ch\\u0103n nu\\u00f4i).<\\/p>\\r\\n\\r\\n<ol start=\\\"2\\\">\\r\\n\\t<li><strong>\\u0110i\\u1ec1u ki\\u1ec7n chung \\u0111\\u1ec3 tham gia<\\/strong><\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>\\u2013 Nam, N\\u1eef \\u0111\\u1ed9 tu\\u1ed5i t\\u1eeb 18-38 tu\\u1ed5i, c\\u00f3 s\\u1ee9c kh\\u1ecfe t\\u1ed1t (\\u0111\\u01a1n h\\u00e0ng tay ngh\\u1ec1\\/ho\\u1eb7c x\\u00e2y d\\u1ef1ng c\\u00f3 th\\u1ec3 l\\u1ea5y \\u0111\\u1ebfn 35- 40 tu\\u1ed5i, s\\u1ebd \\u0111\\u01b0\\u1ee3c C\\u00f4ng ty t\\u01b0 v\\u1ea5n tr\\u1ef1c ti\\u1ebfp); T\\u1ed1t nghi\\u1ec7p c\\u1ea5p 2 ho\\u1eb7c c\\u1ea5p 3 tr\\u1edf l\\u00ean t\\u00f9y \\u0111\\u01a1n h\\u00e0ng; Ch\\u01b0a t\\u1eebng tham gia ch\\u01b0\\u01a1ng tr\\u00ecnh TTS k\\u1ef9 n\\u0103ng t\\u1ea1i Nh\\u1eadt B\\u1ea3n, ch\\u01b0a t\\u1eebng xin visa v\\u00e0o Nh\\u1eadt B\\u1ea3n;<\\/p>\\r\\n\\r\\n<p>\\u2013 \\u01afu ti\\u00ean lao \\u0111\\u1ed9ng c\\u00f3 kinh nghi\\u1ec7m v\\u00e0 k\\u1ef9 n\\u0103ng theo ng\\u00e0nh ngh\\u1ec1 \\u0111\\u0103ng k\\u00fd tham gia XKL\\u0110;<\\/p>\\r\\n\\r\\n<p>\\u2013 Kh\\u00f4ng m\\u1eafc b\\u1ec7nh truy\\u1ec1n nhi\\u1ec5m nh\\u01b0: Vi\\u00ean gan B, giang mai, l\\u1eadu, HIV, lao ph\\u1ed5i\\u2026<\\/p>\\r\\n\\r\\n<ol start=\\\"3\\\">\\r\\n\\t<li><strong>Th\\u1eddi h\\u1ea1n h\\u1ee3p \\u0111\\u1ed3ng<\\/strong><\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>C\\u00f3 02 d\\u1ea1ng h\\u1ee3p \\u0111\\u1ed3ng: 01 n\\u0103m v\\u00e0 3 n\\u0103m. Trong \\u0111\\u00f3, h\\u1ee3p \\u0111\\u1ed3ng 01 n\\u0103m ch\\u1ee7 y\\u1ebfu l\\u00e0 c\\u00e1c ng\\u00e0nh ngh\\u1ec1 nh\\u01b0: Th\\u1ef1c ph\\u1ea9m, gi\\u1eb7t l\\u00e0, thu ho\\u1ea1ch n\\u00f4ng nghi\\u1ec7p, ch\\u1ebf bi\\u1ebfn th\\u1ee7y s\\u1ea3n\\u2026C\\u00f2n h\\u1ee3p \\u0111\\u1ed3ng 3 n\\u0103m ch\\u1ee7 y\\u1ebfu l\\u00e0 d\\u00e0nh cho th\\u1ef1c t\\u1eadp sinh k\\u1ef9 n\\u0103ng v\\u00e0 tu nghi\\u1ec7p sinh ng\\u00e0nh: X\\u00e2y d\\u1ef1ng, k\\u1ef9 s\\u01b0, IT, c\\u01a1 kh\\u00ed, h\\u1ed9 l\\u00fd, \\u0111i\\u1ec7n t\\u1eed\\u2026<\\/p>\\r\\n\\r\\n<p>4.&nbsp;<strong>L\\u01b0\\u01a1ng v\\u00e0 tr\\u1ee3 c\\u1ea5p<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u2013 Trong 01 th\\u00e1ng \\u0111\\u1ea7u ti\\u00ean, lao \\u0111\\u1ed9ng \\u0111\\u01b0\\u1ee3c h\\u01b0\\u1edfng tr\\u1ee3 c\\u1ea5p th\\u1ef1c t\\u1eadp k\\u1ef9 n\\u0103ng trung b\\u00ecnh t\\u1eeb 60.000 \\u0111\\u1ebfn 70.000 y\\u00ean\\/th\\u00e1ng (t\\u01b0\\u01a1ng \\u0111\\u01b0\\u01a1ng 12-14 tri\\u1ec7u \\u0111\\u1ed3ng\\/th\\u00e1ng).<\\/p>\\r\\n\\r\\n<p>\\u2013 Th\\u1eddi gian l\\u00e0m vi\\u1ec7c ti\\u1ebfp theo, lao \\u0111\\u1ed9ng s\\u1ebd \\u0111\\u01b0\\u1ee3c \\u00e1p d\\u1ee5ng m\\u1ee9c l\\u01b0\\u01a1ng theo h\\u1ee3p \\u0111\\u1ed3ng th\\u1ef1c t\\u1eadp sinh, m\\u1ee9c t\\u1ed1i thi\\u1ec3u kho\\u1ea3ng 15-21 man\\/th\\u00e1ng tr\\u1edf l\\u00ean (t\\u01b0\\u01a1ng \\u0111\\u01b0\\u01a1ng 32-45 tri\\u1ec7u \\u0111\\u1ed3ng\\/th\\u00e1ng), ch\\u01b0a bao g\\u1ed3m ti\\u1ec1n l\\u00e0m th\\u00eam gi\\u1edd.<\\/p>\\r\\n\\r\\n<p>\\u2013 \\u0110\\u1ed1i v\\u1edbi th\\u1ef1c t\\u1eadp sinh \\u0111i\\u1ec1u d\\u01b0\\u1ee1ng: L\\u01b0\\u01a1ng c\\u01a1 b\\u1ea3n 170.000-220.000 y\\u00ean\\/th\\u00e1ng, t\\u01b0\\u01a1ng \\u0111\\u01b0\\u01a1ng 35-45 tri\\u1ec7u \\u0111\\u1ed3ng\\/th\\u00e1ng, ch\\u01b0a bao g\\u1ed3m ph\\u1ee5 c\\u1ea5p t\\u0103ng ca v\\u00e0 l\\u00e0m th\\u00eam.<\\/p>\\r\\n\\r\\n<p><em>* Ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng s\\u1ebd t\\u00edch l\\u0169y sau 03 n\\u0103m l\\u00e0m vi\\u1ec7c trung b\\u00ecnh t\\u1eeb 800.000.000-1,5000.000 \\u0111\\u1ed3ng.<\\/em><em>&nbsp;TTS s\\u1ebd \\u0111\\u01b0\\u1ee3c ch\\u00ednh ph\\u1ee7 Nh\\u1eadt B\\u1ea3n ho\\u00e0n thu\\u1ebf\\u2026kho\\u1ea3ng 80 \\u2013 120 tri\\u1ec7u \\u0111\\u1ed3ng, khi h\\u1ebft h\\u1ea1n h\\u1ee3p \\u0111\\u1ed3ng v\\u1ec1 n\\u01b0\\u1edbc.<\\/em><\\/p>\\r\\n\\r\\n<p><em>Sau khi ho\\u00e0n th\\u00e0nh H\\u1ee3p \\u0111\\u1ed3ng v\\u1ec1 n\\u01b0\\u1edbc t\\u1ed1i thi\\u1ec3u 15<\\/em><em>&nbsp;ng\\u00e0y, n\\u1ebfu TTS c\\u00f3 nguy\\u1ec7n v\\u1ecdng ti\\u1ebfp t\\u1ee5c gia h\\u1ea1n th\\u00eam 02 n\\u0103m (m\\u1ee9c l\\u01b0\\u01a1ng s\\u1ebd cao h\\u01a1n nhi\\u1ec1u), c\\u1ea7n li\\u00ean h\\u1ec7 tr\\u1ef1c ti\\u1ebfp v\\u1edbi c\\u00f4ng ty \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n, h\\u01b0\\u1edbng d\\u1eabn chi ti\\u1ebft.<\\/em><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/a2.jpg', NULL, 1, 72, 2, 'active', 1, 1, '2022-02-13 16:05:18', '2023-01-09 15:20:15', 'khoa-hoc-dao-tao-lao-dong-nhat-ban-t8'),
(17, 1, 'post', 'Quy trình thi công nội thất chung cư trọn gói', '{\"brief\":{\"vi\":\"Phasellus et lacus mattis, tincidunt metus sodales, tincidunt urna. Cras felis neque, iaculis vitae varius eu, luctus consectetur odio. However, this ideal is a dream, not reality, and a clever and profitable marketing ruse, not fact.\"},\"content\":{\"vi\":\"<p>Nullam mollis ultrices est. Nulla in justo lacinia, scelerisque purus et, semper tortor. Donec bibendum leo vitae commodo porttitor. Proin tempus sollicitudin odio in feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ultrices vitae nisl tristique commodo. Phasellus porttitor metus at mattis ultricies. In imperdiet nec nunc in tincidunt.<\\/p>\\r\\n\\r\\n<p>Curabitur faucibus dolor at dui lobortis, eget dictum nisi mattis. Fusce risus dui, fringilla non elit sit amet, lobortis interdum eros. Donec mattis lectus quis elit fermentum lacinia. Nullam at ligula semper ante mollis pretium. Nam euismod velit ut quam accumsan vestibulum. Etiam diam augue, dapibus ac placerat nec, accumsan eget nibh. Cras sodales, leo ut volutpat laoreet, velit enim pharetra magna, at dapibus lacus elit vel mi. Nullam a massa ac ligula scelerisque maximus. Quisque dictum quis lorem ut sodales. Duis at semper odio. Morbi in sapien vel lacus posuere mattis ac eget ante. Etiam viverra accumsan rhoncus. Interdum et malesuada fames ac ante ipsum primis in faucibus.<\\/p>\"},\"seo_title\":\"Quy tr\\u00ecnh thi c\\u00f4ng n\\u1ed9i th\\u1ea5t chung c\\u01b0 tr\\u1ecdn g\\u00f3i title\",\"seo_keyword\":\"Cv t\\u1ed1t, h\\u01b0\\u1edbng d\\u1eabn t\\u1ea1o cv\",\"seo_description\":\"Phasellus et lacus mattis, tincidunt metus sodales, tincidunt urna. Cras felis neque, iaculis vitae varius eu, luctus consectetur odio. However, this ideal is a dream, not reality, and a clever and profitable marketing ruse, not fact.\",\"related_post\":[\"19\",\"18\"]}', '/data/cms-image/post/1.jpg', '/data/cms-image/post/1.jpg', 1, 253, 1, 'delete', 1, 1, '2021-10-15 08:58:35', '2023-01-06 08:39:53', 'quy-trinh-thi-cong-noi-that-chung-cu'),
(18, 1, 'post', 'Xu hướng thiết kế nhà phố mới nhất 2022', '{\"brief\":{\"vi\":\"In varius varius justo, eget ultrices mauris rhoncus non. Morbi tristique, mauris eu bibendum, velit diam.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/post/2.jpg', '/data/cms-image/post/2.jpg', 1, 29, 2, 'delete', 1, 1, '2021-10-15 08:59:49', '2023-01-06 08:39:59', 'xu-huong-thiet-ke-nha-pho-moi-nhat-2022'),
(19, 1, 'post', 'Thi công nội thất trọn gói uy tín, chuyên nghiệp', '{\"brief\":{\"vi\":\"In varius varius justo, eget ultrices mauris rhoncus non. Morbi tristique, mauris eu bibendum, velit diam.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/post/3.jpg', '/data/cms-image/post/3.jpg', 1, 23, 3, 'delete', 1, 1, '2021-10-15 09:36:39', '2023-01-06 08:40:06', 'thi-cong-noi-that-tron-goi-uy-tin-chuyen-nghiep'),
(21, 32, 'service', 'Khóa học đào tạo lao động Qatar T1', '{\"price\":null,\"price_currency\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":\"<p>Ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng tham gia ch\\u01b0\\u01a1ng tr\\u00ecnh xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng sang Nh\\u1eadt B\\u1ea3n c\\u1ee7a B\\u1ea3o Vi\\u1ec7t.,JSC, s\\u1ebd \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n l\\u1ef1a ch\\u1ecdn c\\u00e1c \\u0111\\u01a1n h\\u00e0ng ph\\u00f9 h\\u1ee3p v\\u1edbi s\\u1ee9c kh\\u1ecfe, n\\u0103ng l\\u1ef1c v\\u00e0 kinh nghi\\u1ec7m, c\\u1ee5 th\\u1ec3:<\\/p>\\r\\n\\r\\n<p>1. \\u0110\\u1ed1i v\\u1edbi&nbsp;<strong>Xu\\u1ea5t Kh\\u1ea9u Lao \\u0110\\u1ed9ng&nbsp;th\\u00f4ng th\\u01b0\\u1eddng<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u2013 Ch\\u1ebf bi\\u1ebfn th\\u1ef1c ph\\u1ea9m, th\\u1ee7y\\/h\\u1ea3i s\\u1ea3n (c\\u01a1m h\\u1ed9p, th\\u1ee9c \\u0103n \\u0103n k\\u00e8m, th\\u1ee9c \\u0103n l\\u1ea9u..);<\\/p>\\r\\n\\r\\n<p>\\u2013 \\u0110\\u00f3ng g\\u00f3i s\\u1ea3n ph\\u1ea9m (th\\u00f9ng carton, h\\u00e0ng h\\u00f3a..);<\\/p>\\r\\n\\r\\n<p>\\u2013 L\\u1eafp r\\u00e1p linh ki\\u1ec7n m\\u00e1y m\\u00f3c (\\u0111i\\u1ec7n t\\u1eed, \\u00f4 t\\u00f4, ph\\u1ee5 ki\\u1ec7n..);<\\/p>\\r\\n\\r\\n<p>\\u2013 C\\u01a1 kh\\u00ed (ti\\u1ec7n, phay, b\\u00e0o, h\\u00e0n \\u0111i\\u1ec7n, h\\u00e0n C02, d\\u1eadp kim lo\\u1ea1i, s\\u1eeda ch\\u1eefa b\\u1ea3o d\\u01b0\\u1ee1ng \\u00f4 t\\u00f4\\u2026);<\\/p>\\r\\n\\r\\n<p>\\u2013 Ch\\u1ebf t\\u1ea1o v\\u00e0 v\\u1eadn h\\u00e0nh m\\u00e1y; S\\u01a1n g\\u00f2 h\\u00e0n; \\u0110i\\u1ec7n; T\\u1ef1 \\u0111\\u1ed9ng h\\u00f3a; C\\u00f4ng ngh\\u1ec7 v\\u1eadt li\\u1ec7u\\u2026<\\/p>\\r\\n\\r\\n<p>\\u2013 May m\\u1eb7c, \\u0111\\u00f3ng g\\u00f3i;<\\/p>\\r\\n\\r\\n<p>\\u2013 X\\u00e2y d\\u1ef1ng (m\\u1ed9c, n\\u1ec1, s\\u01a1n, c\\u1ed1t pha, gi\\u00e0n gi\\u00e1o\\u2026);<\\/p>\\r\\n\\r\\n<p>\\u2013 N\\u00f4ng nghi\\u1ec7p (tr\\u1ed3ng tr\\u1ecdt, ch\\u0103n nu\\u00f4i).<\\/p>\\r\\n\\r\\n<ol start=\\\"2\\\">\\r\\n\\t<li><strong>\\u0110i\\u1ec1u ki\\u1ec7n chung \\u0111\\u1ec3 tham gia<\\/strong><\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>\\u2013 Nam, N\\u1eef \\u0111\\u1ed9 tu\\u1ed5i t\\u1eeb 18-38 tu\\u1ed5i, c\\u00f3 s\\u1ee9c kh\\u1ecfe t\\u1ed1t (\\u0111\\u01a1n h\\u00e0ng tay ngh\\u1ec1\\/ho\\u1eb7c x\\u00e2y d\\u1ef1ng c\\u00f3 th\\u1ec3 l\\u1ea5y \\u0111\\u1ebfn 35- 40 tu\\u1ed5i, s\\u1ebd \\u0111\\u01b0\\u1ee3c C\\u00f4ng ty t\\u01b0 v\\u1ea5n tr\\u1ef1c ti\\u1ebfp); T\\u1ed1t nghi\\u1ec7p c\\u1ea5p 2 ho\\u1eb7c c\\u1ea5p 3 tr\\u1edf l\\u00ean t\\u00f9y \\u0111\\u01a1n h\\u00e0ng; Ch\\u01b0a t\\u1eebng tham gia ch\\u01b0\\u01a1ng tr\\u00ecnh TTS k\\u1ef9 n\\u0103ng t\\u1ea1i Nh\\u1eadt B\\u1ea3n, ch\\u01b0a t\\u1eebng xin visa v\\u00e0o Nh\\u1eadt B\\u1ea3n;<\\/p>\\r\\n\\r\\n<p>\\u2013 \\u01afu ti\\u00ean lao \\u0111\\u1ed9ng c\\u00f3 kinh nghi\\u1ec7m v\\u00e0 k\\u1ef9 n\\u0103ng theo ng\\u00e0nh ngh\\u1ec1 \\u0111\\u0103ng k\\u00fd tham gia XKL\\u0110;<\\/p>\\r\\n\\r\\n<p>\\u2013 Kh\\u00f4ng m\\u1eafc b\\u1ec7nh truy\\u1ec1n nhi\\u1ec5m nh\\u01b0: Vi\\u00ean gan B, giang mai, l\\u1eadu, HIV, lao ph\\u1ed5i\\u2026<\\/p>\\r\\n\\r\\n<ol start=\\\"3\\\">\\r\\n\\t<li><strong>Th\\u1eddi h\\u1ea1n h\\u1ee3p \\u0111\\u1ed3ng<\\/strong><\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>C\\u00f3 02 d\\u1ea1ng h\\u1ee3p \\u0111\\u1ed3ng: 01 n\\u0103m v\\u00e0 3 n\\u0103m. Trong \\u0111\\u00f3, h\\u1ee3p \\u0111\\u1ed3ng 01 n\\u0103m ch\\u1ee7 y\\u1ebfu l\\u00e0 c\\u00e1c ng\\u00e0nh ngh\\u1ec1 nh\\u01b0: Th\\u1ef1c ph\\u1ea9m, gi\\u1eb7t l\\u00e0, thu ho\\u1ea1ch n\\u00f4ng nghi\\u1ec7p, ch\\u1ebf bi\\u1ebfn th\\u1ee7y s\\u1ea3n\\u2026C\\u00f2n h\\u1ee3p \\u0111\\u1ed3ng 3 n\\u0103m ch\\u1ee7 y\\u1ebfu l\\u00e0 d\\u00e0nh cho th\\u1ef1c t\\u1eadp sinh k\\u1ef9 n\\u0103ng v\\u00e0 tu nghi\\u1ec7p sinh ng\\u00e0nh: X\\u00e2y d\\u1ef1ng, k\\u1ef9 s\\u01b0, IT, c\\u01a1 kh\\u00ed, h\\u1ed9 l\\u00fd, \\u0111i\\u1ec7n t\\u1eed\\u2026<\\/p>\\r\\n\\r\\n<p>4.&nbsp;<strong>L\\u01b0\\u01a1ng v\\u00e0 tr\\u1ee3 c\\u1ea5p<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u2013 Trong 01 th\\u00e1ng \\u0111\\u1ea7u ti\\u00ean, lao \\u0111\\u1ed9ng \\u0111\\u01b0\\u1ee3c h\\u01b0\\u1edfng tr\\u1ee3 c\\u1ea5p th\\u1ef1c t\\u1eadp k\\u1ef9 n\\u0103ng trung b\\u00ecnh t\\u1eeb 60.000 \\u0111\\u1ebfn 70.000 y\\u00ean\\/th\\u00e1ng (t\\u01b0\\u01a1ng \\u0111\\u01b0\\u01a1ng 12-14 tri\\u1ec7u \\u0111\\u1ed3ng\\/th\\u00e1ng).<\\/p>\\r\\n\\r\\n<p>\\u2013 Th\\u1eddi gian l\\u00e0m vi\\u1ec7c ti\\u1ebfp theo, lao \\u0111\\u1ed9ng s\\u1ebd \\u0111\\u01b0\\u1ee3c \\u00e1p d\\u1ee5ng m\\u1ee9c l\\u01b0\\u01a1ng theo h\\u1ee3p \\u0111\\u1ed3ng th\\u1ef1c t\\u1eadp sinh, m\\u1ee9c t\\u1ed1i thi\\u1ec3u kho\\u1ea3ng 15-21 man\\/th\\u00e1ng tr\\u1edf l\\u00ean (t\\u01b0\\u01a1ng \\u0111\\u01b0\\u01a1ng 32-45 tri\\u1ec7u \\u0111\\u1ed3ng\\/th\\u00e1ng), ch\\u01b0a bao g\\u1ed3m ti\\u1ec1n l\\u00e0m th\\u00eam gi\\u1edd.<\\/p>\\r\\n\\r\\n<p>\\u2013 \\u0110\\u1ed1i v\\u1edbi th\\u1ef1c t\\u1eadp sinh \\u0111i\\u1ec1u d\\u01b0\\u1ee1ng: L\\u01b0\\u01a1ng c\\u01a1 b\\u1ea3n 170.000-220.000 y\\u00ean\\/th\\u00e1ng, t\\u01b0\\u01a1ng \\u0111\\u01b0\\u01a1ng 35-45 tri\\u1ec7u \\u0111\\u1ed3ng\\/th\\u00e1ng, ch\\u01b0a bao g\\u1ed3m ph\\u1ee5 c\\u1ea5p t\\u0103ng ca v\\u00e0 l\\u00e0m th\\u00eam.<\\/p>\\r\\n\\r\\n<p><em>* Ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng s\\u1ebd t\\u00edch l\\u0169y sau 03 n\\u0103m l\\u00e0m vi\\u1ec7c trung b\\u00ecnh t\\u1eeb 800.000.000-1,5000.000 \\u0111\\u1ed3ng.<\\/em><em>&nbsp;TTS s\\u1ebd \\u0111\\u01b0\\u1ee3c ch\\u00ednh ph\\u1ee7 Nh\\u1eadt B\\u1ea3n ho\\u00e0n thu\\u1ebf\\u2026kho\\u1ea3ng 80 \\u2013 120 tri\\u1ec7u \\u0111\\u1ed3ng, khi h\\u1ebft h\\u1ea1n h\\u1ee3p \\u0111\\u1ed3ng v\\u1ec1 n\\u01b0\\u1edbc.<\\/em><\\/p>\\r\\n\\r\\n<p><em>Sau khi ho\\u00e0n th\\u00e0nh H\\u1ee3p \\u0111\\u1ed3ng v\\u1ec1 n\\u01b0\\u1edbc t\\u1ed1i thi\\u1ec3u 15<\\/em><em>&nbsp;ng\\u00e0y, n\\u1ebfu TTS c\\u00f3 nguy\\u1ec7n v\\u1ecdng ti\\u1ebfp t\\u1ee5c gia h\\u1ea1n th\\u00eam 02 n\\u0103m (m\\u1ee9c l\\u01b0\\u01a1ng s\\u1ebd cao h\\u01a1n nhi\\u1ec1u), c\\u1ea7n li\\u00ean h\\u1ec7 tr\\u1ef1c ti\\u1ebfp v\\u1edbi c\\u00f4ng ty \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n, h\\u01b0\\u1edbng d\\u1eabn chi ti\\u1ebft.<\\/em><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/a1.jpg', NULL, 1, 187, 1, 'active', 1, 1, '2022-02-13 15:59:41', '2023-01-10 01:51:57', 'khoa-hoc-dao-tao-lao-dong-qatar-t1'),
(36, 1, 'post', 'Quản lý tài khoản', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"18\",\"17\",\"3\",\"2\",\"1\"]}', '/data/cms-image/post/1.jpg', '/data/cms-image/post/1.jpg', 0, 17, NULL, 'delete', 1, 1, '2022-07-18 02:34:33', '2023-01-06 08:39:49', 'quan-ly-tai-khoan'),
(37, 1, 'post', 'Về chúng tôi', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/post/3.jpg', '/data/cms-image/post/3.jpg', 1, 11, 99, 'delete', 1, 1, '2022-08-06 08:23:52', '2023-01-06 08:59:00', 've-chung-toi'),
(38, 1, 'post', 'Hạng mục', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/post/3.jpg', '/data/cms-image/post/3.jpg', 0, 8, 99, 'delete', 1, 1, '2022-08-06 08:24:21', '2023-01-06 08:59:03', 'hang-muc'),
(39, 17, 'service', 'Kiến trúc nhà phố', '{\"price\":\"450000\",\"price_currency\":\"\\u20ab\",\"brief\":{\"vi\":\"Powerful Layout with Responsive functionality that can be adapted to any screen size.\"},\"content\":{\"vi\":\"<h2><strong>Quy tr\\u00ecnh trong thi\\u1ebft k\\u1ebf n\\u1ed9i thi c\\u00f4ng th\\u1ea5t chung c\\u01b0 c\\u1ee7a N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t<\\/strong><\\/h2>\\r\\n\\r\\n<h3><strong>1. Thu th\\u1eadp th\\u00f4ng tin, t\\u01b0 v\\u1ea5n \\u00fd t\\u01b0\\u1edfng<\\/strong><\\/h3>\\r\\n\\r\\n<p>Nh\\u00e2n vi\\u00ean t\\u01b0 v\\u1ea5n c\\u1ee7a N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t ti\\u1ebfp nh\\u1eadn y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng, trao \\u0111\\u1ed5i h\\u1ed7 tr\\u1ee3 \\u00fd t\\u01b0\\u1edfng thi\\u1ebft k\\u1ebf v\\u00e0 ch\\u1ecdn ch\\u1ea5t li\\u1ec7u ph\\u00f9 h\\u1ee3p d\\u1ef1a v\\u00e0o t\\u00ecnh h\\u00ecnh t\\u00e0i ch\\u00ednh c\\u1ee7a ch\\u1ee7 nh\\u00e0.<\\/p>\\r\\n\\r\\n<h3><strong>2. Kh\\u1ea3o s\\u00e1t c\\u00f4ng tr\\u00ecnh<\\/strong><\\/h3>\\r\\n\\r\\n<p>X\\u00e1c \\u0111\\u1ecbnh r\\u00f5 m\\u1ee5c \\u0111\\u00edch thi\\u1ebft, d\\u1ef1a tr\\u00ean di\\u1ec7n t\\u00edch t\\u00ednh to\\u00e1n c\\u00e1c th\\u00f4ng s\\u1ed1 \\u0111\\u1ec3 gi\\u00fap kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu, phong c\\u00e1ch thi\\u1ebft k\\u1ebf theo \\u00fd t\\u01b0\\u1edfng v\\u00e0 mong mu\\u1ed1n c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>3. K\\u00fd k\\u1ebft h\\u1ee3p \\u0111\\u1ed3ng thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chung c\\u01b0<\\/strong><\\/h3>\\r\\n\\r\\n<p>Sau khi kh\\u1ea3o s\\u00e1t, N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd x\\u00e1c \\u0111\\u1ecbnh \\u0111\\u01b0\\u1ee3c ph\\u01b0\\u01a1ng \\u00e1n t\\u1ed1i \\u01b0u cho c\\u00f4ng tr\\u00ecnh, sau t\\u1eeb 2-4 ng\\u00e0y t\\u00f9y theo kh\\u1ed1i l\\u01b0\\u1ee3ng c\\u00f4ng vi\\u1ec7c N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd thi\\u1ebft k\\u1ebf ra m\\u1eb7t b\\u1eb1ng t\\u1eeb 2D \\u0111\\u1ec3 l\\u00ean ph\\u01b0\\u01a1ng \\u00e1n cho kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu.<\\/p>\\r\\n\\r\\n<p>Sau khi kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd ti\\u1ebfn h\\u00e0nh b\\u00e1o gi\\u00e1 d\\u1ef1a tr\\u00ean h\\u1ea1ng m\\u1ee5c c\\u00f3 s\\u1eb5n c\\u00f9ng c\\u00e1c y\\u00eau c\\u1ea7u ri\\u00eang c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>4. Thi\\u1ebft k\\u1ebf b\\u1ea3n v\\u1ebd 3D<\\/strong><\\/h3>\\r\\n\\r\\n<p>N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd g\\u1eedi c\\u00e1c h\\u00ecnh \\u1ea3nh c\\u00e1c b\\u1ea3n v\\u1ebd 3D chi ti\\u1ebft t\\u1eebng c\\u0103n ph\\u00f2ng (t\\u1eeb \\u0111\\u01b0\\u1eddng n\\u00e9t, \\u0111\\u1ed9 d\\u00e0i, chi\\u1ec1u cao\\u2026)qua cho kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<p>K\\u00e8m theo \\u0111\\u00f3 l\\u00e0 s\\u1ef1 thi\\u1ebft k\\u1ebf ph\\u1ed1i m\\u00e0u s\\u1eafc \\u0111\\u1ec3 kh\\u00e1ch h\\u00e0ng c\\u00f3 th\\u1ec3 h\\u00ecnh dung \\u0111\\u01b0\\u1ee3c t\\u1ed5ng th\\u1ec3 b\\u1ed1 c\\u1ee5c s\\u1ea3n ph\\u1ea9m sau khi thi\\u1ebft k\\u1ebf.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/service/bg.jpg', '/data/cms-image/service/bg.jpg', 0, 6, 6, 'delete', 1, 1, '2022-02-13 15:59:41', '2022-11-11 04:38:13', NULL),
(40, 17, 'service', 'Nội thất nhà hàng, cafe, spa,...', '{\"price\":\"450000\",\"price_currency\":\"\\u20ab\",\"brief\":{\"vi\":\"Powerful Layout with Responsive functionality that can be adapted to any screen size.\"},\"content\":{\"vi\":\"<h2><strong>Quy tr\\u00ecnh trong thi\\u1ebft k\\u1ebf n\\u1ed9i thi c\\u00f4ng th\\u1ea5t chung c\\u01b0 c\\u1ee7a N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t<\\/strong><\\/h2>\\r\\n\\r\\n<h3><strong>1. Thu th\\u1eadp th\\u00f4ng tin, t\\u01b0 v\\u1ea5n \\u00fd t\\u01b0\\u1edfng<\\/strong><\\/h3>\\r\\n\\r\\n<p>Nh\\u00e2n vi\\u00ean t\\u01b0 v\\u1ea5n c\\u1ee7a N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t ti\\u1ebfp nh\\u1eadn y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng, trao \\u0111\\u1ed5i h\\u1ed7 tr\\u1ee3 \\u00fd t\\u01b0\\u1edfng thi\\u1ebft k\\u1ebf v\\u00e0 ch\\u1ecdn ch\\u1ea5t li\\u1ec7u ph\\u00f9 h\\u1ee3p d\\u1ef1a v\\u00e0o t\\u00ecnh h\\u00ecnh t\\u00e0i ch\\u00ednh c\\u1ee7a ch\\u1ee7 nh\\u00e0.<\\/p>\\r\\n\\r\\n<h3><strong>2. Kh\\u1ea3o s\\u00e1t c\\u00f4ng tr\\u00ecnh<\\/strong><\\/h3>\\r\\n\\r\\n<p>X\\u00e1c \\u0111\\u1ecbnh r\\u00f5 m\\u1ee5c \\u0111\\u00edch thi\\u1ebft, d\\u1ef1a tr\\u00ean di\\u1ec7n t\\u00edch t\\u00ednh to\\u00e1n c\\u00e1c th\\u00f4ng s\\u1ed1 \\u0111\\u1ec3 gi\\u00fap kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu, phong c\\u00e1ch thi\\u1ebft k\\u1ebf theo \\u00fd t\\u01b0\\u1edfng v\\u00e0 mong mu\\u1ed1n c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>3. K\\u00fd k\\u1ebft h\\u1ee3p \\u0111\\u1ed3ng thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chung c\\u01b0<\\/strong><\\/h3>\\r\\n\\r\\n<p>Sau khi kh\\u1ea3o s\\u00e1t, N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd x\\u00e1c \\u0111\\u1ecbnh \\u0111\\u01b0\\u1ee3c ph\\u01b0\\u01a1ng \\u00e1n t\\u1ed1i \\u01b0u cho c\\u00f4ng tr\\u00ecnh, sau t\\u1eeb 2-4 ng\\u00e0y t\\u00f9y theo kh\\u1ed1i l\\u01b0\\u1ee3ng c\\u00f4ng vi\\u1ec7c N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd thi\\u1ebft k\\u1ebf ra m\\u1eb7t b\\u1eb1ng t\\u1eeb 2D \\u0111\\u1ec3 l\\u00ean ph\\u01b0\\u01a1ng \\u00e1n cho kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu.<\\/p>\\r\\n\\r\\n<p>Sau khi kh\\u00e1ch h\\u00e0ng ch\\u1ecdn m\\u1eabu N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd ti\\u1ebfn h\\u00e0nh b\\u00e1o gi\\u00e1 d\\u1ef1a tr\\u00ean h\\u1ea1ng m\\u1ee5c c\\u00f3 s\\u1eb5n c\\u00f9ng c\\u00e1c y\\u00eau c\\u1ea7u ri\\u00eang c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>4. Thi\\u1ebft k\\u1ebf b\\u1ea3n v\\u1ebd 3D<\\/strong><\\/h3>\\r\\n\\r\\n<p>N\\u1ed9i Th\\u1ea5t Nh\\u00e0 Vi\\u1ec7t s\\u1ebd g\\u1eedi c\\u00e1c h\\u00ecnh \\u1ea3nh c\\u00e1c b\\u1ea3n v\\u1ebd 3D chi ti\\u1ebft t\\u1eebng c\\u0103n ph\\u00f2ng (t\\u1eeb \\u0111\\u01b0\\u1eddng n\\u00e9t, \\u0111\\u1ed9 d\\u00e0i, chi\\u1ec1u cao\\u2026)qua cho kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<p>K\\u00e8m theo \\u0111\\u00f3 l\\u00e0 s\\u1ef1 thi\\u1ebft k\\u1ebf ph\\u1ed1i m\\u00e0u s\\u1eafc \\u0111\\u1ec3 kh\\u00e1ch h\\u00e0ng c\\u00f3 th\\u1ec3 h\\u00ecnh dung \\u0111\\u01b0\\u1ee3c t\\u1ed5ng th\\u1ec3 b\\u1ed1 c\\u1ee5c s\\u1ea3n ph\\u1ea9m sau khi thi\\u1ebft k\\u1ebf.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/service/bg.jpg', '/data/cms-image/service/bg.jpg', 0, 5, 5, 'delete', 1, 1, '2022-02-13 15:59:41', '2022-11-11 04:38:16', NULL),
(41, 32, 'service', 'Khóa học đào tạo lao động Algeri T6', '{\"price\":null,\"price_currency\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":\"<p>Ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng tham gia ch\\u01b0\\u01a1ng tr\\u00ecnh xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng sang Nh\\u1eadt B\\u1ea3n c\\u1ee7a B\\u1ea3o Vi\\u1ec7t.,JSC, s\\u1ebd \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n l\\u1ef1a ch\\u1ecdn c\\u00e1c \\u0111\\u01a1n h\\u00e0ng ph\\u00f9 h\\u1ee3p v\\u1edbi s\\u1ee9c kh\\u1ecfe, n\\u0103ng l\\u1ef1c v\\u00e0 kinh nghi\\u1ec7m, c\\u1ee5 th\\u1ec3:<\\/p>\\r\\n\\r\\n<p>1. \\u0110\\u1ed1i v\\u1edbi&nbsp;<strong>Xu\\u1ea5t Kh\\u1ea9u Lao \\u0110\\u1ed9ng&nbsp;th\\u00f4ng th\\u01b0\\u1eddng<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u2013 Ch\\u1ebf bi\\u1ebfn th\\u1ef1c ph\\u1ea9m, th\\u1ee7y\\/h\\u1ea3i s\\u1ea3n (c\\u01a1m h\\u1ed9p, th\\u1ee9c \\u0103n \\u0103n k\\u00e8m, th\\u1ee9c \\u0103n l\\u1ea9u..);<\\/p>\\r\\n\\r\\n<p>\\u2013 \\u0110\\u00f3ng g\\u00f3i s\\u1ea3n ph\\u1ea9m (th\\u00f9ng carton, h\\u00e0ng h\\u00f3a..);<\\/p>\\r\\n\\r\\n<p>\\u2013 L\\u1eafp r\\u00e1p linh ki\\u1ec7n m\\u00e1y m\\u00f3c (\\u0111i\\u1ec7n t\\u1eed, \\u00f4 t\\u00f4, ph\\u1ee5 ki\\u1ec7n..);<\\/p>\\r\\n\\r\\n<p>\\u2013 C\\u01a1 kh\\u00ed (ti\\u1ec7n, phay, b\\u00e0o, h\\u00e0n \\u0111i\\u1ec7n, h\\u00e0n C02, d\\u1eadp kim lo\\u1ea1i, s\\u1eeda ch\\u1eefa b\\u1ea3o d\\u01b0\\u1ee1ng \\u00f4 t\\u00f4\\u2026);<\\/p>\\r\\n\\r\\n<p>\\u2013 Ch\\u1ebf t\\u1ea1o v\\u00e0 v\\u1eadn h\\u00e0nh m\\u00e1y; S\\u01a1n g\\u00f2 h\\u00e0n; \\u0110i\\u1ec7n; T\\u1ef1 \\u0111\\u1ed9ng h\\u00f3a; C\\u00f4ng ngh\\u1ec7 v\\u1eadt li\\u1ec7u\\u2026<\\/p>\\r\\n\\r\\n<p>\\u2013 May m\\u1eb7c, \\u0111\\u00f3ng g\\u00f3i;<\\/p>\\r\\n\\r\\n<p>\\u2013 X\\u00e2y d\\u1ef1ng (m\\u1ed9c, n\\u1ec1, s\\u01a1n, c\\u1ed1t pha, gi\\u00e0n gi\\u00e1o\\u2026);<\\/p>\\r\\n\\r\\n<p>\\u2013 N\\u00f4ng nghi\\u1ec7p (tr\\u1ed3ng tr\\u1ecdt, ch\\u0103n nu\\u00f4i).<\\/p>\\r\\n\\r\\n<ol start=\\\"2\\\">\\r\\n\\t<li><strong>\\u0110i\\u1ec1u ki\\u1ec7n chung \\u0111\\u1ec3 tham gia<\\/strong><\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>\\u2013 Nam, N\\u1eef \\u0111\\u1ed9 tu\\u1ed5i t\\u1eeb 18-38 tu\\u1ed5i, c\\u00f3 s\\u1ee9c kh\\u1ecfe t\\u1ed1t (\\u0111\\u01a1n h\\u00e0ng tay ngh\\u1ec1\\/ho\\u1eb7c x\\u00e2y d\\u1ef1ng c\\u00f3 th\\u1ec3 l\\u1ea5y \\u0111\\u1ebfn 35- 40 tu\\u1ed5i, s\\u1ebd \\u0111\\u01b0\\u1ee3c C\\u00f4ng ty t\\u01b0 v\\u1ea5n tr\\u1ef1c ti\\u1ebfp); T\\u1ed1t nghi\\u1ec7p c\\u1ea5p 2 ho\\u1eb7c c\\u1ea5p 3 tr\\u1edf l\\u00ean t\\u00f9y \\u0111\\u01a1n h\\u00e0ng; Ch\\u01b0a t\\u1eebng tham gia ch\\u01b0\\u01a1ng tr\\u00ecnh TTS k\\u1ef9 n\\u0103ng t\\u1ea1i Nh\\u1eadt B\\u1ea3n, ch\\u01b0a t\\u1eebng xin visa v\\u00e0o Nh\\u1eadt B\\u1ea3n;<\\/p>\\r\\n\\r\\n<p>\\u2013 \\u01afu ti\\u00ean lao \\u0111\\u1ed9ng c\\u00f3 kinh nghi\\u1ec7m v\\u00e0 k\\u1ef9 n\\u0103ng theo ng\\u00e0nh ngh\\u1ec1 \\u0111\\u0103ng k\\u00fd tham gia XKL\\u0110;<\\/p>\\r\\n\\r\\n<p>\\u2013 Kh\\u00f4ng m\\u1eafc b\\u1ec7nh truy\\u1ec1n nhi\\u1ec5m nh\\u01b0: Vi\\u00ean gan B, giang mai, l\\u1eadu, HIV, lao ph\\u1ed5i\\u2026<\\/p>\\r\\n\\r\\n<ol start=\\\"3\\\">\\r\\n\\t<li><strong>Th\\u1eddi h\\u1ea1n h\\u1ee3p \\u0111\\u1ed3ng<\\/strong><\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>C\\u00f3 02 d\\u1ea1ng h\\u1ee3p \\u0111\\u1ed3ng: 01 n\\u0103m v\\u00e0 3 n\\u0103m. Trong \\u0111\\u00f3, h\\u1ee3p \\u0111\\u1ed3ng 01 n\\u0103m ch\\u1ee7 y\\u1ebfu l\\u00e0 c\\u00e1c ng\\u00e0nh ngh\\u1ec1 nh\\u01b0: Th\\u1ef1c ph\\u1ea9m, gi\\u1eb7t l\\u00e0, thu ho\\u1ea1ch n\\u00f4ng nghi\\u1ec7p, ch\\u1ebf bi\\u1ebfn th\\u1ee7y s\\u1ea3n\\u2026C\\u00f2n h\\u1ee3p \\u0111\\u1ed3ng 3 n\\u0103m ch\\u1ee7 y\\u1ebfu l\\u00e0 d\\u00e0nh cho th\\u1ef1c t\\u1eadp sinh k\\u1ef9 n\\u0103ng v\\u00e0 tu nghi\\u1ec7p sinh ng\\u00e0nh: X\\u00e2y d\\u1ef1ng, k\\u1ef9 s\\u01b0, IT, c\\u01a1 kh\\u00ed, h\\u1ed9 l\\u00fd, \\u0111i\\u1ec7n t\\u1eed\\u2026<\\/p>\\r\\n\\r\\n<p>4.&nbsp;<strong>L\\u01b0\\u01a1ng v\\u00e0 tr\\u1ee3 c\\u1ea5p<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u2013 Trong 01 th\\u00e1ng \\u0111\\u1ea7u ti\\u00ean, lao \\u0111\\u1ed9ng \\u0111\\u01b0\\u1ee3c h\\u01b0\\u1edfng tr\\u1ee3 c\\u1ea5p th\\u1ef1c t\\u1eadp k\\u1ef9 n\\u0103ng trung b\\u00ecnh t\\u1eeb 60.000 \\u0111\\u1ebfn 70.000 y\\u00ean\\/th\\u00e1ng (t\\u01b0\\u01a1ng \\u0111\\u01b0\\u01a1ng 12-14 tri\\u1ec7u \\u0111\\u1ed3ng\\/th\\u00e1ng).<\\/p>\\r\\n\\r\\n<p>\\u2013 Th\\u1eddi gian l\\u00e0m vi\\u1ec7c ti\\u1ebfp theo, lao \\u0111\\u1ed9ng s\\u1ebd \\u0111\\u01b0\\u1ee3c \\u00e1p d\\u1ee5ng m\\u1ee9c l\\u01b0\\u01a1ng theo h\\u1ee3p \\u0111\\u1ed3ng th\\u1ef1c t\\u1eadp sinh, m\\u1ee9c t\\u1ed1i thi\\u1ec3u kho\\u1ea3ng 15-21 man\\/th\\u00e1ng tr\\u1edf l\\u00ean (t\\u01b0\\u01a1ng \\u0111\\u01b0\\u01a1ng 32-45 tri\\u1ec7u \\u0111\\u1ed3ng\\/th\\u00e1ng), ch\\u01b0a bao g\\u1ed3m ti\\u1ec1n l\\u00e0m th\\u00eam gi\\u1edd.<\\/p>\\r\\n\\r\\n<p>\\u2013 \\u0110\\u1ed1i v\\u1edbi th\\u1ef1c t\\u1eadp sinh \\u0111i\\u1ec1u d\\u01b0\\u1ee1ng: L\\u01b0\\u01a1ng c\\u01a1 b\\u1ea3n 170.000-220.000 y\\u00ean\\/th\\u00e1ng, t\\u01b0\\u01a1ng \\u0111\\u01b0\\u01a1ng 35-45 tri\\u1ec7u \\u0111\\u1ed3ng\\/th\\u00e1ng, ch\\u01b0a bao g\\u1ed3m ph\\u1ee5 c\\u1ea5p t\\u0103ng ca v\\u00e0 l\\u00e0m th\\u00eam.<\\/p>\\r\\n\\r\\n<p><em>* Ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng s\\u1ebd t\\u00edch l\\u0169y sau 03 n\\u0103m l\\u00e0m vi\\u1ec7c trung b\\u00ecnh t\\u1eeb 800.000.000-1,5000.000 \\u0111\\u1ed3ng.<\\/em><em>&nbsp;TTS s\\u1ebd \\u0111\\u01b0\\u1ee3c ch\\u00ednh ph\\u1ee7 Nh\\u1eadt B\\u1ea3n ho\\u00e0n thu\\u1ebf\\u2026kho\\u1ea3ng 80 \\u2013 120 tri\\u1ec7u \\u0111\\u1ed3ng, khi h\\u1ebft h\\u1ea1n h\\u1ee3p \\u0111\\u1ed3ng v\\u1ec1 n\\u01b0\\u1edbc.<\\/em><\\/p>\\r\\n\\r\\n<p><em>Sau khi ho\\u00e0n th\\u00e0nh H\\u1ee3p \\u0111\\u1ed3ng v\\u1ec1 n\\u01b0\\u1edbc t\\u1ed1i thi\\u1ec3u 15<\\/em><em>&nbsp;ng\\u00e0y, n\\u1ebfu TTS c\\u00f3 nguy\\u1ec7n v\\u1ecdng ti\\u1ebfp t\\u1ee5c gia h\\u1ea1n th\\u00eam 02 n\\u0103m (m\\u1ee9c l\\u01b0\\u01a1ng s\\u1ebd cao h\\u01a1n nhi\\u1ec1u), c\\u1ea7n li\\u00ean h\\u1ec7 tr\\u1ef1c ti\\u1ebfp v\\u1edbi c\\u00f4ng ty \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n, h\\u01b0\\u1edbng d\\u1eabn chi ti\\u1ebft.<\\/em><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/a5.jpg', NULL, 1, 11, 4, 'active', 1, 1, '2022-02-13 15:59:41', '2023-01-09 06:49:45', 'khoa-hoc-dao-tao-lao-dong-algeri-t6'),
(42, 32, 'service', 'Khóa học đào tạo lao động Hàn quốc', '{\"price\":null,\"price_currency\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":\"<p>Ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng tham gia ch\\u01b0\\u01a1ng tr\\u00ecnh xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng sang Nh\\u1eadt B\\u1ea3n c\\u1ee7a B\\u1ea3o Vi\\u1ec7t.,JSC, s\\u1ebd \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n l\\u1ef1a ch\\u1ecdn c\\u00e1c \\u0111\\u01a1n h\\u00e0ng ph\\u00f9 h\\u1ee3p v\\u1edbi s\\u1ee9c kh\\u1ecfe, n\\u0103ng l\\u1ef1c v\\u00e0 kinh nghi\\u1ec7m, c\\u1ee5 th\\u1ec3:<\\/p>\\r\\n\\r\\n<p>1. \\u0110\\u1ed1i v\\u1edbi&nbsp;<strong>Xu\\u1ea5t Kh\\u1ea9u Lao \\u0110\\u1ed9ng&nbsp;th\\u00f4ng th\\u01b0\\u1eddng<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u2013 Ch\\u1ebf bi\\u1ebfn th\\u1ef1c ph\\u1ea9m, th\\u1ee7y\\/h\\u1ea3i s\\u1ea3n (c\\u01a1m h\\u1ed9p, th\\u1ee9c \\u0103n \\u0103n k\\u00e8m, th\\u1ee9c \\u0103n l\\u1ea9u..);<\\/p>\\r\\n\\r\\n<p>\\u2013 \\u0110\\u00f3ng g\\u00f3i s\\u1ea3n ph\\u1ea9m (th\\u00f9ng carton, h\\u00e0ng h\\u00f3a..);<\\/p>\\r\\n\\r\\n<p>\\u2013 L\\u1eafp r\\u00e1p linh ki\\u1ec7n m\\u00e1y m\\u00f3c (\\u0111i\\u1ec7n t\\u1eed, \\u00f4 t\\u00f4, ph\\u1ee5 ki\\u1ec7n..);<\\/p>\\r\\n\\r\\n<p>\\u2013 C\\u01a1 kh\\u00ed (ti\\u1ec7n, phay, b\\u00e0o, h\\u00e0n \\u0111i\\u1ec7n, h\\u00e0n C02, d\\u1eadp kim lo\\u1ea1i, s\\u1eeda ch\\u1eefa b\\u1ea3o d\\u01b0\\u1ee1ng \\u00f4 t\\u00f4\\u2026);<\\/p>\\r\\n\\r\\n<p>\\u2013 Ch\\u1ebf t\\u1ea1o v\\u00e0 v\\u1eadn h\\u00e0nh m\\u00e1y; S\\u01a1n g\\u00f2 h\\u00e0n; \\u0110i\\u1ec7n; T\\u1ef1 \\u0111\\u1ed9ng h\\u00f3a; C\\u00f4ng ngh\\u1ec7 v\\u1eadt li\\u1ec7u\\u2026<\\/p>\\r\\n\\r\\n<p>\\u2013 May m\\u1eb7c, \\u0111\\u00f3ng g\\u00f3i;<\\/p>\\r\\n\\r\\n<p>\\u2013 X\\u00e2y d\\u1ef1ng (m\\u1ed9c, n\\u1ec1, s\\u01a1n, c\\u1ed1t pha, gi\\u00e0n gi\\u00e1o\\u2026);<\\/p>\\r\\n\\r\\n<p>\\u2013 N\\u00f4ng nghi\\u1ec7p (tr\\u1ed3ng tr\\u1ecdt, ch\\u0103n nu\\u00f4i).<\\/p>\\r\\n\\r\\n<ol start=\\\"2\\\">\\r\\n\\t<li><strong>\\u0110i\\u1ec1u ki\\u1ec7n chung \\u0111\\u1ec3 tham gia<\\/strong><\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>\\u2013 Nam, N\\u1eef \\u0111\\u1ed9 tu\\u1ed5i t\\u1eeb 18-38 tu\\u1ed5i, c\\u00f3 s\\u1ee9c kh\\u1ecfe t\\u1ed1t (\\u0111\\u01a1n h\\u00e0ng tay ngh\\u1ec1\\/ho\\u1eb7c x\\u00e2y d\\u1ef1ng c\\u00f3 th\\u1ec3 l\\u1ea5y \\u0111\\u1ebfn 35- 40 tu\\u1ed5i, s\\u1ebd \\u0111\\u01b0\\u1ee3c C\\u00f4ng ty t\\u01b0 v\\u1ea5n tr\\u1ef1c ti\\u1ebfp); T\\u1ed1t nghi\\u1ec7p c\\u1ea5p 2 ho\\u1eb7c c\\u1ea5p 3 tr\\u1edf l\\u00ean t\\u00f9y \\u0111\\u01a1n h\\u00e0ng; Ch\\u01b0a t\\u1eebng tham gia ch\\u01b0\\u01a1ng tr\\u00ecnh TTS k\\u1ef9 n\\u0103ng t\\u1ea1i Nh\\u1eadt B\\u1ea3n, ch\\u01b0a t\\u1eebng xin visa v\\u00e0o Nh\\u1eadt B\\u1ea3n;<\\/p>\\r\\n\\r\\n<p>\\u2013 \\u01afu ti\\u00ean lao \\u0111\\u1ed9ng c\\u00f3 kinh nghi\\u1ec7m v\\u00e0 k\\u1ef9 n\\u0103ng theo ng\\u00e0nh ngh\\u1ec1 \\u0111\\u0103ng k\\u00fd tham gia XKL\\u0110;<\\/p>\\r\\n\\r\\n<p>\\u2013 Kh\\u00f4ng m\\u1eafc b\\u1ec7nh truy\\u1ec1n nhi\\u1ec5m nh\\u01b0: Vi\\u00ean gan B, giang mai, l\\u1eadu, HIV, lao ph\\u1ed5i\\u2026<\\/p>\\r\\n\\r\\n<ol start=\\\"3\\\">\\r\\n\\t<li><strong>Th\\u1eddi h\\u1ea1n h\\u1ee3p \\u0111\\u1ed3ng<\\/strong><\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>C\\u00f3 02 d\\u1ea1ng h\\u1ee3p \\u0111\\u1ed3ng: 01 n\\u0103m v\\u00e0 3 n\\u0103m. Trong \\u0111\\u00f3, h\\u1ee3p \\u0111\\u1ed3ng 01 n\\u0103m ch\\u1ee7 y\\u1ebfu l\\u00e0 c\\u00e1c ng\\u00e0nh ngh\\u1ec1 nh\\u01b0: Th\\u1ef1c ph\\u1ea9m, gi\\u1eb7t l\\u00e0, thu ho\\u1ea1ch n\\u00f4ng nghi\\u1ec7p, ch\\u1ebf bi\\u1ebfn th\\u1ee7y s\\u1ea3n\\u2026C\\u00f2n h\\u1ee3p \\u0111\\u1ed3ng 3 n\\u0103m ch\\u1ee7 y\\u1ebfu l\\u00e0 d\\u00e0nh cho th\\u1ef1c t\\u1eadp sinh k\\u1ef9 n\\u0103ng v\\u00e0 tu nghi\\u1ec7p sinh ng\\u00e0nh: X\\u00e2y d\\u1ef1ng, k\\u1ef9 s\\u01b0, IT, c\\u01a1 kh\\u00ed, h\\u1ed9 l\\u00fd, \\u0111i\\u1ec7n t\\u1eed\\u2026<\\/p>\\r\\n\\r\\n<p>4.&nbsp;<strong>L\\u01b0\\u01a1ng v\\u00e0 tr\\u1ee3 c\\u1ea5p<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u2013 Trong 01 th\\u00e1ng \\u0111\\u1ea7u ti\\u00ean, lao \\u0111\\u1ed9ng \\u0111\\u01b0\\u1ee3c h\\u01b0\\u1edfng tr\\u1ee3 c\\u1ea5p th\\u1ef1c t\\u1eadp k\\u1ef9 n\\u0103ng trung b\\u00ecnh t\\u1eeb 60.000 \\u0111\\u1ebfn 70.000 y\\u00ean\\/th\\u00e1ng (t\\u01b0\\u01a1ng \\u0111\\u01b0\\u01a1ng 12-14 tri\\u1ec7u \\u0111\\u1ed3ng\\/th\\u00e1ng).<\\/p>\\r\\n\\r\\n<p>\\u2013 Th\\u1eddi gian l\\u00e0m vi\\u1ec7c ti\\u1ebfp theo, lao \\u0111\\u1ed9ng s\\u1ebd \\u0111\\u01b0\\u1ee3c \\u00e1p d\\u1ee5ng m\\u1ee9c l\\u01b0\\u01a1ng theo h\\u1ee3p \\u0111\\u1ed3ng th\\u1ef1c t\\u1eadp sinh, m\\u1ee9c t\\u1ed1i thi\\u1ec3u kho\\u1ea3ng 15-21 man\\/th\\u00e1ng tr\\u1edf l\\u00ean (t\\u01b0\\u01a1ng \\u0111\\u01b0\\u01a1ng 32-45 tri\\u1ec7u \\u0111\\u1ed3ng\\/th\\u00e1ng), ch\\u01b0a bao g\\u1ed3m ti\\u1ec1n l\\u00e0m th\\u00eam gi\\u1edd.<\\/p>\\r\\n\\r\\n<p>\\u2013 \\u0110\\u1ed1i v\\u1edbi th\\u1ef1c t\\u1eadp sinh \\u0111i\\u1ec1u d\\u01b0\\u1ee1ng: L\\u01b0\\u01a1ng c\\u01a1 b\\u1ea3n 170.000-220.000 y\\u00ean\\/th\\u00e1ng, t\\u01b0\\u01a1ng \\u0111\\u01b0\\u01a1ng 35-45 tri\\u1ec7u \\u0111\\u1ed3ng\\/th\\u00e1ng, ch\\u01b0a bao g\\u1ed3m ph\\u1ee5 c\\u1ea5p t\\u0103ng ca v\\u00e0 l\\u00e0m th\\u00eam.<\\/p>\\r\\n\\r\\n<p><em>* Ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng s\\u1ebd t\\u00edch l\\u0169y sau 03 n\\u0103m l\\u00e0m vi\\u1ec7c trung b\\u00ecnh t\\u1eeb 800.000.000-1,5000.000 \\u0111\\u1ed3ng.<\\/em><em>&nbsp;TTS s\\u1ebd \\u0111\\u01b0\\u1ee3c ch\\u00ednh ph\\u1ee7 Nh\\u1eadt B\\u1ea3n ho\\u00e0n thu\\u1ebf\\u2026kho\\u1ea3ng 80 \\u2013 120 tri\\u1ec7u \\u0111\\u1ed3ng, khi h\\u1ebft h\\u1ea1n h\\u1ee3p \\u0111\\u1ed3ng v\\u1ec1 n\\u01b0\\u1edbc.<\\/em><\\/p>\\r\\n\\r\\n<p><em>Sau khi ho\\u00e0n th\\u00e0nh H\\u1ee3p \\u0111\\u1ed3ng v\\u1ec1 n\\u01b0\\u1edbc t\\u1ed1i thi\\u1ec3u 15<\\/em><em>&nbsp;ng\\u00e0y, n\\u1ebfu TTS c\\u00f3 nguy\\u1ec7n v\\u1ecdng ti\\u1ebfp t\\u1ee5c gia h\\u1ea1n th\\u00eam 02 n\\u0103m (m\\u1ee9c l\\u01b0\\u01a1ng s\\u1ebd cao h\\u01a1n nhi\\u1ec1u), c\\u1ea7n li\\u00ean h\\u1ec7 tr\\u1ef1c ti\\u1ebfp v\\u1edbi c\\u00f4ng ty \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n, h\\u01b0\\u1edbng d\\u1eabn chi ti\\u1ebft.<\\/em><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/a3.jpg', NULL, 1, 46, 3, 'active', 1, 1, '2022-02-13 15:59:41', '2023-01-09 08:02:21', 'khoa-hoc-dao-tao-lao-dong-han-quoc'),
(45, 30, 'product', 'Sàn gỗ Timbee', '{\"price\":null,\"price_old\":null,\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/about_us/tb_a11.jpg', NULL, 1, 12, NULL, 'active', 1, 1, '2022-11-21 09:31:42', '2022-12-11 15:39:04', 'san-go-timbee'),
(46, 30, 'product', 'Sàn gỗ Maxdoor', '{\"price\":null,\"price_old\":null,\"catalog\":null,\"shop_online\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/about_us/tb_a11.jpg', NULL, 1, 13, NULL, 'active', 1, 1, '2022-11-21 09:32:10', '2022-12-11 15:39:12', 'san-go-maxdoor'),
(47, 30, 'product', 'Sàn Gỗ ThaiEver', '{\"price\":null,\"price_old\":null,\"catalog\":\"\\/data\\/file\\/FireShot Capture 095 - CRICHTON - Cung c\\u1ea5p s\\u1ea3n ph\\u1ea9m h\\u00e0ng \\u0111\\u1ea7u Vi\\u1ec7t Nam - crichton.vn.pdf\",\"shop_online\":\"https:\\/\\/kimtinshop.com\\/noi-that\\/van-san\\/timbee\",\"brief\":{\"vi\":\"Kh\\u00f4ng qu\\u00e1 c\\u1ea7u k\\u1ef3 hay t\\u1ed1n nhi\\u1ec1u th\\u1eddi gian, chi ph\\u00ed, nh\\u1eefng \\u00fd t\\u01b0\\u1edfng trang tr\\u00ed n\\u1ed9i th\\u1ea5t \\u0111\\u01a1n gi\\u1ea3n nh\\u01b0ng s\\u00e1ng t\\u1ea1o d\\u01b0\\u1edbi \\u0111\\u00e2y s\\u1ebd bi\\u1ebfn ng\\u00f4i nh\\u00e0 c\\u1ee7a b\\u1ea1n th\\u00e0nh m\\u1ed9t kh\\u00f4ng gian s\\u1ed1ng \\u1ea5n t\\u01b0\\u1ee3ng v\\u00e0 c\\u00e1 t\\u00ednh h\\u01a1n h\\u1eb3n.\"},\"content\":{\"vi\":\"<p>Kh\\u00f4ng qu\\u00e1 c\\u1ea7u k\\u1ef3 hay t\\u1ed1n nhi\\u1ec1u th\\u1eddi gian, chi ph\\u00ed, nh\\u1eefng \\u00fd t\\u01b0\\u1edfng trang tr\\u00ed n\\u1ed9i th\\u1ea5t \\u0111\\u01a1n gi\\u1ea3n nh\\u01b0ng s\\u00e1ng t\\u1ea1o d\\u01b0\\u1edbi \\u0111\\u00e2y s\\u1ebd bi\\u1ebfn ng\\u00f4i nh\\u00e0 c\\u1ee7a b\\u1ea1n th\\u00e0nh m\\u1ed9t kh\\u00f4ng gian s\\u1ed1ng \\u1ea5n t\\u01b0\\u1ee3ng v\\u00e0 c\\u00e1 t\\u00ednh h\\u01a1n h\\u1eb3n.<\\/p>\\r\\n\\r\\n<p>Kh\\u00f4ng qu\\u00e1 c\\u1ea7u k\\u1ef3 hay t\\u1ed1n nhi\\u1ec1u th\\u1eddi gian, chi ph\\u00ed, nh\\u1eefng \\u00fd t\\u01b0\\u1edfng trang tr\\u00ed n\\u1ed9i th\\u1ea5t \\u0111\\u01a1n gi\\u1ea3n nh\\u01b0ng s\\u00e1ng t\\u1ea1o d\\u01b0\\u1edbi \\u0111\\u00e2y s\\u1ebd bi\\u1ebfn ng\\u00f4i nh\\u00e0 c\\u1ee7a b\\u1ea1n th\\u00e0nh m\\u1ed9t kh\\u00f4ng gian s\\u1ed1ng \\u1ea5n t\\u01b0\\u1ee3ng v\\u00e0 c\\u00e1 t\\u00ednh h\\u01a1n h\\u1eb3n.<\\/p>\\r\\n\\r\\n<p>Kh\\u00f4ng qu\\u00e1 c\\u1ea7u k\\u1ef3 hay t\\u1ed1n nhi\\u1ec1u th\\u1eddi gian, chi ph\\u00ed, nh\\u1eefng \\u00fd t\\u01b0\\u1edfng trang tr\\u00ed n\\u1ed9i th\\u1ea5t \\u0111\\u01a1n gi\\u1ea3n nh\\u01b0ng s\\u00e1ng t\\u1ea1o d\\u01b0\\u1edbi \\u0111\\u00e2y s\\u1ebd bi\\u1ebfn ng\\u00f4i nh\\u00e0 c\\u1ee7a b\\u1ea1n th\\u00e0nh m\\u1ed9t kh\\u00f4ng gian s\\u1ed1ng \\u1ea5n t\\u01b0\\u1ee3ng v\\u00e0 c\\u00e1 t\\u00ednh h\\u01a1n h\\u1eb3n.Kh\\u00f4ng qu\\u00e1 c\\u1ea7u k\\u1ef3 hay t\\u1ed1n nhi\\u1ec1u th\\u1eddi gian, chi ph\\u00ed, nh\\u1eefng \\u00fd t\\u01b0\\u1edfng trang tr\\u00ed n\\u1ed9i th\\u1ea5t \\u0111\\u01a1n gi\\u1ea3n nh\\u01b0ng s\\u00e1ng t\\u1ea1o d\\u01b0\\u1edbi \\u0111\\u00e2y s\\u1ebd bi\\u1ebfn ng\\u00f4i nh\\u00e0 c\\u1ee7a b\\u1ea1n th\\u00e0nh m\\u1ed9t kh\\u00f4ng gian s\\u1ed1ng \\u1ea5n t\\u01b0\\u1ee3ng v\\u00e0 c\\u00e1 t\\u00ednh h\\u01a1n h\\u1eb3n.Kh\\u00f4ng qu\\u00e1 c\\u1ea7u k\\u1ef3 hay t\\u1ed1n nhi\\u1ec1u th\\u1eddi gian, chi ph\\u00ed, nh\\u1eefng \\u00fd t\\u01b0\\u1edfng trang tr\\u00ed n\\u1ed9i th\\u1ea5t \\u0111\\u01a1n gi\\u1ea3n nh\\u01b0ng s\\u00e1ng t\\u1ea1o d\\u01b0\\u1edbi \\u0111\\u00e2y s\\u1ebd bi\\u1ebfn ng\\u00f4i nh\\u00e0 c\\u1ee7a b\\u1ea1n th\\u00e0nh m\\u1ed9t kh\\u00f4ng gian s\\u1ed1ng \\u1ea5n t\\u01b0\\u1ee3ng v\\u00e0 c\\u00e1 t\\u00ednh h\\u01a1n h\\u1eb3n.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1669949853903\":\"\\/data\\/cms-image\\/post\\/1.jpg\",\"1669949854077\":\"\\/data\\/cms-image\\/post\\/2.jpg\",\"1669949854430\":\"\\/data\\/cms-image\\/post\\/3.jpg\"},\"related_post\":[\"46\",\"45\"]}', '/data/cms-image/about_us/tb_a11.jpg', '/data/cms-image/about_us/tb_a11.jpg', 1, 73, NULL, 'active', 1, 1, '2022-11-21 09:32:31', '2022-12-11 15:39:16', 'san-go-thaiever'),
(48, 17, 'resource', 'Dự án mẫu Hotel 01', '{\"price\":null,\"price_old\":null,\"place\":\"M\\u1eb7t \\u0111\\u01b0\\u1eddng \\u0110\\u1ea1i l\\u1ed9 Th\\u0103ng Long\",\"area\":\"37.500 m2\",\"scale\":\"1500 C\\u0103n h\\u1ed9 (Th\\u01b0\\u01a1ng m\\u1ea1i, d\\u1ecbch v\\u1ee5, Shophouse,...)\",\"brief\":{\"vi\":\"T\\u1eadp \\u0111o\\u00e0n c\\u00f2n th\\u1ef1c hi\\u1ec7n quy tr\\u00ecnh kh\\u00e9p k\\u00edn \\u2013 khai th\\u00e1c \\u0111i \\u0111\\u00f4i v\\u1edbi tr\\u1ed3ng v\\u00e0 ph\\u00e1t tri\\u1ec3n ngu\\u1ed3n r\\u1eebng. Doanh nghi\\u1ec7p ch\\u00fa tr\\u1ecdng t\\u1ea1o ra c\\u00e2y gi\\u1ed1ng c\\u00f3 n\\u0103ng su\\u1ea5t cao, li\\u00ean k\\u1ebft v\\u1edbi c\\u00e1c l\\u00e2m tr\\u01b0\\u1eddng, v\\u00e0 ng\\u01b0\\u1eddi d\\u00e2n \\u0111\\u1ec3 tri\\u1ec3n khai tr\\u1ed3ng, ch\\u0103m s\\u00f3c v\\u00e0 khai th\\u00e1c nh\\u1eb1m t\\u1ea1o 1 v\\u00f2ng \\u0111\\u1eddi s\\u1ea3n xu\\u1ea5t b\\u1ec1n v\\u1eefng.\"},\"content\":{\"vi\":\"<p>T\\u1eadp \\u0111o\\u00e0n c\\u00f2n th\\u1ef1c hi\\u1ec7n quy tr\\u00ecnh kh\\u00e9p k\\u00edn \\u2013 khai th\\u00e1c \\u0111i \\u0111\\u00f4i v\\u1edbi tr\\u1ed3ng v\\u00e0 ph\\u00e1t tri\\u1ec3n ngu\\u1ed3n r\\u1eebng. Doanh nghi\\u1ec7p ch\\u00fa tr\\u1ecdng t\\u1ea1o ra c\\u00e2y gi\\u1ed1ng c\\u00f3 n\\u0103ng su\\u1ea5t cao, li\\u00ean k\\u1ebft v\\u1edbi c\\u00e1c l\\u00e2m tr\\u01b0\\u1eddng, v\\u00e0 ng\\u01b0\\u1eddi d\\u00e2n \\u0111\\u1ec3 tri\\u1ec3n khai tr\\u1ed3ng, ch\\u0103m s\\u00f3c v\\u00e0 khai th\\u00e1c nh\\u1eb1m t\\u1ea1o 1 v\\u00f2ng \\u0111\\u1eddi s\\u1ea3n xu\\u1ea5t b\\u1ec1n v\\u1eefng.<\\/p>\\r\\n\\r\\n<p>T\\u1eadp \\u0111o\\u00e0n c\\u00f2n th\\u1ef1c hi\\u1ec7n quy tr\\u00ecnh kh\\u00e9p k\\u00edn \\u2013 khai th\\u00e1c \\u0111i \\u0111\\u00f4i v\\u1edbi tr\\u1ed3ng v\\u00e0 ph\\u00e1t tri\\u1ec3n ngu\\u1ed3n r\\u1eebng. Doanh nghi\\u1ec7p ch\\u00fa tr\\u1ecdng t\\u1ea1o ra c\\u00e2y gi\\u1ed1ng c\\u00f3 n\\u0103ng su\\u1ea5t cao, li\\u00ean k\\u1ebft v\\u1edbi c\\u00e1c l\\u00e2m tr\\u01b0\\u1eddng, v\\u00e0 ng\\u01b0\\u1eddi d\\u00e2n \\u0111\\u1ec3 tri\\u1ec3n khai tr\\u1ed3ng, ch\\u0103m s\\u00f3c v\\u00e0 khai th\\u00e1c nh\\u1eb1m t\\u1ea1o 1 v\\u00f2ng \\u0111\\u1eddi s\\u1ea3n xu\\u1ea5t b\\u1ec1n v\\u1eefng. T\\u1eadp \\u0111o\\u00e0n c\\u00f2n th\\u1ef1c hi\\u1ec7n quy tr\\u00ecnh kh\\u00e9p k\\u00edn \\u2013 khai th\\u00e1c \\u0111i \\u0111\\u00f4i v\\u1edbi tr\\u1ed3ng v\\u00e0 ph\\u00e1t tri\\u1ec3n ngu\\u1ed3n r\\u1eebng. Doanh nghi\\u1ec7p ch\\u00fa tr\\u1ecdng t\\u1ea1o ra c\\u00e2y gi\\u1ed1ng c\\u00f3 n\\u0103ng su\\u1ea5t cao, li\\u00ean k\\u1ebft v\\u1edbi c\\u00e1c l\\u00e2m tr\\u01b0\\u1eddng, v\\u00e0 ng\\u01b0\\u1eddi d\\u00e2n \\u0111\\u1ec3 tri\\u1ec3n khai tr\\u1ed3ng, ch\\u0103m s\\u00f3c v\\u00e0 khai th\\u00e1c nh\\u1eb1m t\\u1ea1o 1 v\\u00f2ng \\u0111\\u1eddi s\\u1ea3n xu\\u1ea5t b\\u1ec1n v\\u1eefng.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1670223524445\":\"\\/data\\/cms-image\\/post\\/1.jpg\",\"1670223524661\":\"\\/data\\/cms-image\\/post\\/2.jpg\",\"1670223542379\":\"\\/data\\/cms-image\\/post\\/3.jpg\"}}', '/data/cms-image/about_us/tb_a11.jpg', NULL, 0, 7, NULL, 'delete', 1, 1, '2022-12-05 06:59:11', '2023-01-09 15:51:25', 'du-an-mau-hotel-01');
INSERT INTO `tb_cms_posts` (`id`, `taxonomy_id`, `is_type`, `title`, `json_params`, `image`, `image_thumb`, `is_featured`, `count_visited`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(49, 17, 'resource', 'Dự án mẫu Hotel 03', '{\"price\":null,\"price_old\":null,\"place\":\"M\\u1eb7t \\u0111\\u01b0\\u1eddng \\u0110\\u1ea1i l\\u1ed9 Th\\u0103ng Long\",\"area\":\"37.500 m2\",\"scale\":\"1500 C\\u0103n h\\u1ed9 (Th\\u01b0\\u01a1ng m\\u1ea1i, d\\u1ecbch v\\u1ee5, Shophouse,...)\",\"brief\":{\"vi\":\"T\\u1eadp \\u0111o\\u00e0n c\\u00f2n th\\u1ef1c hi\\u1ec7n quy tr\\u00ecnh kh\\u00e9p k\\u00edn \\u2013 khai th\\u00e1c \\u0111i \\u0111\\u00f4i v\\u1edbi tr\\u1ed3ng v\\u00e0 ph\\u00e1t tri\\u1ec3n ngu\\u1ed3n r\\u1eebng. Doanh nghi\\u1ec7p ch\\u00fa tr\\u1ecdng t\\u1ea1o ra c\\u00e2y gi\\u1ed1ng c\\u00f3 n\\u0103ng su\\u1ea5t cao, li\\u00ean k\\u1ebft v\\u1edbi c\\u00e1c l\\u00e2m tr\\u01b0\\u1eddng, v\\u00e0 ng\\u01b0\\u1eddi d\\u00e2n \\u0111\\u1ec3 tri\\u1ec3n khai tr\\u1ed3ng, ch\\u0103m s\\u00f3c v\\u00e0 khai th\\u00e1c nh\\u1eb1m t\\u1ea1o 1 v\\u00f2ng \\u0111\\u1eddi s\\u1ea3n xu\\u1ea5t b\\u1ec1n v\\u1eefng.\"},\"content\":{\"vi\":\"<p>T\\u1eadp \\u0111o\\u00e0n c\\u00f2n th\\u1ef1c hi\\u1ec7n quy tr\\u00ecnh kh\\u00e9p k\\u00edn \\u2013 khai th\\u00e1c \\u0111i \\u0111\\u00f4i v\\u1edbi tr\\u1ed3ng v\\u00e0 ph\\u00e1t tri\\u1ec3n ngu\\u1ed3n r\\u1eebng. Doanh nghi\\u1ec7p ch\\u00fa tr\\u1ecdng t\\u1ea1o ra c\\u00e2y gi\\u1ed1ng c\\u00f3 n\\u0103ng su\\u1ea5t cao, li\\u00ean k\\u1ebft v\\u1edbi c\\u00e1c l\\u00e2m tr\\u01b0\\u1eddng, v\\u00e0 ng\\u01b0\\u1eddi d\\u00e2n \\u0111\\u1ec3 tri\\u1ec3n khai tr\\u1ed3ng, ch\\u0103m s\\u00f3c v\\u00e0 khai th\\u00e1c nh\\u1eb1m t\\u1ea1o 1 v\\u00f2ng \\u0111\\u1eddi s\\u1ea3n xu\\u1ea5t b\\u1ec1n v\\u1eefng.<\\/p>\\r\\n\\r\\n<p>T\\u1eadp \\u0111o\\u00e0n c\\u00f2n th\\u1ef1c hi\\u1ec7n quy tr\\u00ecnh kh\\u00e9p k\\u00edn \\u2013 khai th\\u00e1c \\u0111i \\u0111\\u00f4i v\\u1edbi tr\\u1ed3ng v\\u00e0 ph\\u00e1t tri\\u1ec3n ngu\\u1ed3n r\\u1eebng. Doanh nghi\\u1ec7p ch\\u00fa tr\\u1ecdng t\\u1ea1o ra c\\u00e2y gi\\u1ed1ng c\\u00f3 n\\u0103ng su\\u1ea5t cao, li\\u00ean k\\u1ebft v\\u1edbi c\\u00e1c l\\u00e2m tr\\u01b0\\u1eddng, v\\u00e0 ng\\u01b0\\u1eddi d\\u00e2n \\u0111\\u1ec3 tri\\u1ec3n khai tr\\u1ed3ng, ch\\u0103m s\\u00f3c v\\u00e0 khai th\\u00e1c nh\\u1eb1m t\\u1ea1o 1 v\\u00f2ng \\u0111\\u1eddi s\\u1ea3n xu\\u1ea5t b\\u1ec1n v\\u1eefng. T\\u1eadp \\u0111o\\u00e0n c\\u00f2n th\\u1ef1c hi\\u1ec7n quy tr\\u00ecnh kh\\u00e9p k\\u00edn \\u2013 khai th\\u00e1c \\u0111i \\u0111\\u00f4i v\\u1edbi tr\\u1ed3ng v\\u00e0 ph\\u00e1t tri\\u1ec3n ngu\\u1ed3n r\\u1eebng. Doanh nghi\\u1ec7p ch\\u00fa tr\\u1ecdng t\\u1ea1o ra c\\u00e2y gi\\u1ed1ng c\\u00f3 n\\u0103ng su\\u1ea5t cao, li\\u00ean k\\u1ebft v\\u1edbi c\\u00e1c l\\u00e2m tr\\u01b0\\u1eddng, v\\u00e0 ng\\u01b0\\u1eddi d\\u00e2n \\u0111\\u1ec3 tri\\u1ec3n khai tr\\u1ed3ng, ch\\u0103m s\\u00f3c v\\u00e0 khai th\\u00e1c nh\\u1eb1m t\\u1ea1o 1 v\\u00f2ng \\u0111\\u1eddi s\\u1ea3n xu\\u1ea5t b\\u1ec1n v\\u1eefng.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1670223524445\":\"\\/data\\/cms-image\\/post\\/1.jpg\",\"1670223524661\":\"\\/data\\/cms-image\\/post\\/2.jpg\",\"1670223542379\":\"\\/data\\/cms-image\\/post\\/3.jpg\"},\"related_post\":[\"50\",\"48\"]}', '/data/cms-image/about_us/tb_a11.jpg', NULL, 0, 8, NULL, 'delete', 1, 1, '2022-12-05 06:59:11', '2023-01-09 15:51:22', 'du-an-mau-hotel-03'),
(50, 17, 'resource', 'Dự án mẫu Hotel 02', '{\"price\":null,\"price_old\":null,\"place\":\"M\\u1eb7t \\u0111\\u01b0\\u1eddng \\u0110\\u1ea1i l\\u1ed9 Th\\u0103ng Long\",\"area\":\"37.500 m2\",\"scale\":\"1500 C\\u0103n h\\u1ed9 (Th\\u01b0\\u01a1ng m\\u1ea1i, d\\u1ecbch v\\u1ee5, Shophouse,...)\",\"brief\":{\"vi\":\"T\\u1eadp \\u0111o\\u00e0n c\\u00f2n th\\u1ef1c hi\\u1ec7n quy tr\\u00ecnh kh\\u00e9p k\\u00edn \\u2013 khai th\\u00e1c \\u0111i \\u0111\\u00f4i v\\u1edbi tr\\u1ed3ng v\\u00e0 ph\\u00e1t tri\\u1ec3n ngu\\u1ed3n r\\u1eebng. Doanh nghi\\u1ec7p ch\\u00fa tr\\u1ecdng t\\u1ea1o ra c\\u00e2y gi\\u1ed1ng c\\u00f3 n\\u0103ng su\\u1ea5t cao, li\\u00ean k\\u1ebft v\\u1edbi c\\u00e1c l\\u00e2m tr\\u01b0\\u1eddng, v\\u00e0 ng\\u01b0\\u1eddi d\\u00e2n \\u0111\\u1ec3 tri\\u1ec3n khai tr\\u1ed3ng, ch\\u0103m s\\u00f3c v\\u00e0 khai th\\u00e1c nh\\u1eb1m t\\u1ea1o 1 v\\u00f2ng \\u0111\\u1eddi s\\u1ea3n xu\\u1ea5t b\\u1ec1n v\\u1eefng.\"},\"content\":{\"vi\":\"<p>T\\u1eadp \\u0111o\\u00e0n c\\u00f2n th\\u1ef1c hi\\u1ec7n quy tr\\u00ecnh kh\\u00e9p k\\u00edn \\u2013 khai th\\u00e1c \\u0111i \\u0111\\u00f4i v\\u1edbi tr\\u1ed3ng v\\u00e0 ph\\u00e1t tri\\u1ec3n ngu\\u1ed3n r\\u1eebng. Doanh nghi\\u1ec7p ch\\u00fa tr\\u1ecdng t\\u1ea1o ra c\\u00e2y gi\\u1ed1ng c\\u00f3 n\\u0103ng su\\u1ea5t cao, li\\u00ean k\\u1ebft v\\u1edbi c\\u00e1c l\\u00e2m tr\\u01b0\\u1eddng, v\\u00e0 ng\\u01b0\\u1eddi d\\u00e2n \\u0111\\u1ec3 tri\\u1ec3n khai tr\\u1ed3ng, ch\\u0103m s\\u00f3c v\\u00e0 khai th\\u00e1c nh\\u1eb1m t\\u1ea1o 1 v\\u00f2ng \\u0111\\u1eddi s\\u1ea3n xu\\u1ea5t b\\u1ec1n v\\u1eefng.<\\/p>\\r\\n\\r\\n<p>T\\u1eadp \\u0111o\\u00e0n c\\u00f2n th\\u1ef1c hi\\u1ec7n quy tr\\u00ecnh kh\\u00e9p k\\u00edn \\u2013 khai th\\u00e1c \\u0111i \\u0111\\u00f4i v\\u1edbi tr\\u1ed3ng v\\u00e0 ph\\u00e1t tri\\u1ec3n ngu\\u1ed3n r\\u1eebng. Doanh nghi\\u1ec7p ch\\u00fa tr\\u1ecdng t\\u1ea1o ra c\\u00e2y gi\\u1ed1ng c\\u00f3 n\\u0103ng su\\u1ea5t cao, li\\u00ean k\\u1ebft v\\u1edbi c\\u00e1c l\\u00e2m tr\\u01b0\\u1eddng, v\\u00e0 ng\\u01b0\\u1eddi d\\u00e2n \\u0111\\u1ec3 tri\\u1ec3n khai tr\\u1ed3ng, ch\\u0103m s\\u00f3c v\\u00e0 khai th\\u00e1c nh\\u1eb1m t\\u1ea1o 1 v\\u00f2ng \\u0111\\u1eddi s\\u1ea3n xu\\u1ea5t b\\u1ec1n v\\u1eefng. T\\u1eadp \\u0111o\\u00e0n c\\u00f2n th\\u1ef1c hi\\u1ec7n quy tr\\u00ecnh kh\\u00e9p k\\u00edn \\u2013 khai th\\u00e1c \\u0111i \\u0111\\u00f4i v\\u1edbi tr\\u1ed3ng v\\u00e0 ph\\u00e1t tri\\u1ec3n ngu\\u1ed3n r\\u1eebng. Doanh nghi\\u1ec7p ch\\u00fa tr\\u1ecdng t\\u1ea1o ra c\\u00e2y gi\\u1ed1ng c\\u00f3 n\\u0103ng su\\u1ea5t cao, li\\u00ean k\\u1ebft v\\u1edbi c\\u00e1c l\\u00e2m tr\\u01b0\\u1eddng, v\\u00e0 ng\\u01b0\\u1eddi d\\u00e2n \\u0111\\u1ec3 tri\\u1ec3n khai tr\\u1ed3ng, ch\\u0103m s\\u00f3c v\\u00e0 khai th\\u00e1c nh\\u1eb1m t\\u1ea1o 1 v\\u00f2ng \\u0111\\u1eddi s\\u1ea3n xu\\u1ea5t b\\u1ec1n v\\u1eefng.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1670223524445\":\"\\/data\\/cms-image\\/post\\/1.jpg\",\"1670223524661\":\"\\/data\\/cms-image\\/post\\/2.jpg\",\"1670223542379\":\"\\/data\\/cms-image\\/post\\/3.jpg\"},\"related_post\":[\"49\",\"48\"]}', '/data/cms-image/about_us/tb_a11.jpg', NULL, 0, 36, NULL, 'delete', 1, 1, '2022-12-05 06:59:11', '2023-01-09 15:51:18', 'du-an-mau-hotel-02'),
(51, 17, 'resource', 'Đào tạo thợ xây, thợ phụ, phục vụ thị trường Algeri', '{\"price\":null,\"price_old\":null,\"place\":null,\"area\":null,\"scale\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/a4.jpg', NULL, 1, 11, 2, 'active', 1, 1, '2023-01-06 09:00:23', '2023-01-09 15:54:12', 'dao-tao-tho-xay-tho-phu-phuc-vu-thi-truong-algeri'),
(52, 17, 'resource', 'Học việc thợ xây T5 2022', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_video\":{\"1673254286206\":{\"title\":\"H\\u1ecdc vi\\u1ec7c th\\u1ee3 x\\u00e2y T5 2022\",\"source\":\"\\/data\\/videos\\/tmc1.mp4\"}}}', '/data/cms-image/1/z4015475356796_88095696908e94bce41304dff6d12084.jpg', NULL, 1, 27, NULL, 'active', 1, 1, '2023-01-09 07:33:01', '2023-01-09 15:51:49', 'hoc-viec-tho-xay-t5-2022'),
(53, 17, 'resource', 'Đào tạo lao động xuất khẩu Algeri T5', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_video\":{\"1673255764831\":{\"title\":\"\\u0110\\u00e0o t\\u1ea1o lao \\u0111\\u1ed9ng xu\\u1ea5t kh\\u1ea9u Algeri T5\",\"source\":\"\\/data\\/videos\\/tmc3.mp4\"}}}', '/data/cms-image/1/banner3.jpg', NULL, 0, 11, -1, 'active', 1, 1, '2023-01-09 07:36:11', '2023-01-09 10:00:11', 'dao-tao-lao-dong-xuat-khau-algeri-t5'),
(54, 17, 'resource', 'Học việc thợ phụ 2022', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_video\":{\"1673256215328\":{\"title\":\"H\\u1ecdc vi\\u1ec7c th\\u1ee3 ph\\u1ee5 2022\",\"source\":\"\\/data\\/videos\\/4015475302255.mp4\"}}}', '/data/cms-image/1/z4015475285218_70ee99a0b4055e883c08897c242c652b.jpg', NULL, 0, 10, NULL, 'active', 1, 1, '2023-01-09 09:23:21', '2023-01-10 02:12:53', 'hoc-viec-tho-phu-2022'),
(55, 1, 'post', 'Bí quyết chọn công ty xuất khẩu lao động uy tín', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":\"<p><b><i>C\\u00f4ng ty xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng uy t\\u00edn<\\/i><\\/b><i>&nbsp;n\\u1ebfu l\\u1ef1a ch\\u1ecdn \\u0111\\u01b0\\u1ee3c s\\u1ebd gi\\u00fap b\\u1ea1n \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i. \\u0110\\u1eb7c bi\\u1ec7t c\\u00f2n c\\u00f3 th\\u1ec3 nh\\u1eadn \\u0111\\u01b0\\u1ee3c \\u0111\\u01a1n h\\u00e0ng t\\u1ed1t v\\u1edbi m\\u1ee9c chi ph\\u00ed th\\u1ea5p.<\\/i><\\/p>\\r\\n\\r\\n<p><b>C\\u00f4ng ty xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng uy t\\u00edn<\\/b>&nbsp;v\\u1edbi \\u0111\\u1ed9 tin c\\u1eady cao, \\u0111ang \\u0111\\u01b0\\u1ee3c t\\u00ecm hi\\u1ec3u nhi\\u1ec1u. \\u0110\\u1ec3 c\\u00f3 th\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i c\\u0169ng nh\\u01b0 ch\\u1eafc ch\\u1eafn tr\\u00fang \\u0111\\u01b0\\u1ee3c \\u0111\\u01a1n h\\u00e0ng t\\u1ed1t. Ch\\u00fang t\\u00f4i s\\u1ebd chia s\\u1ebb b\\u00ed quy\\u1ebft ch\\u1ecdn \\u0111\\u01a1n v\\u1ecb xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng uy t\\u00edn trong b\\u00e0i sau.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t c\\u00f4ng ty xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng \\u0111\\u1ea3m b\\u1ea3o, uy t\\u00edn s\\u1ebd th\\u1ec3 hi\\u1ec7n \\u1edf \\u0111\\u01a1n \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng. \\u0110\\u01b0a \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng \\u0111i xu\\u1ea5t kh\\u1ea9u, c\\u00f3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i t\\u1ed1t t\\u1eeb ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng. \\u0110\\u00f3 ch\\u00ednh l\\u00e0 c\\u00f4ng ty m\\u00e0 b\\u1ea1n c\\u1ea7n l\\u1ef1a ch\\u1ecdn. B\\u1edfi th\\u1ecb tr\\u01b0\\u1eddng l\\u00e0m vi\\u1ec7c t\\u1ea1i Nh\\u1eadt B\\u1ea3n lu\\u00f4n n\\u1ed5i ti\\u1ebfng v\\u1edbi s\\u1ef1 kh\\u1eaft khe.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t \\u0111\\u01a1n v\\u1ecb ho\\u1ea1t \\u0111\\u1ed9ng l\\u00e2u n\\u0103m trong l\\u0129nh v\\u1ef1c xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng. S\\u1ebd c\\u00f3 b\\u1ec1 d\\u00e0y kinh nghi\\u1ec7m l\\u1edbn, d\\u1ec5 d\\u00e0ng x\\u1eed l\\u00fd m\\u1ecdi t\\u00ecnh hu\\u1ed1ng ph\\u00e1t sinh. Ch\\u1ec9 c\\u1ea7n d\\u1ef1a v\\u00e0o \\u0111i\\u1ec1u ki\\u1ec7n c\\u0169ng nh\\u01b0 mong mu\\u1ed1n c\\u1ee7a ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng. Ch\\u00fang t\\u00f4i c\\u00f3 th\\u1ec3 \\u0111\\u01b0a ra c\\u00e1c g\\u1ee3i \\u00fd \\u0111\\u01a1n h\\u00e0ng ph\\u00f9 h\\u1ee3p. Sao cho t\\u1ec9 l\\u1ec7 tr\\u00fang \\u0111\\u01a1n h\\u00e0ng l\\u00e0 cao nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t c\\u00f4ng ty c\\u00f3 m\\u1ea1ng l\\u01b0\\u1edbi \\u0111\\u1ed1i t\\u00e1c r\\u1ed9ng r\\u00e3i, ch\\u1ee9ng t\\u1ecf quy m\\u00f4 c\\u0169ng nh\\u01b0 \\u0111\\u1ed9 uy t\\u00edn cao. C\\u00e1c \\u0111\\u01a1n h\\u00e0ng s\\u1ebd \\u0111\\u1ec1u \\u0111\\u1eb7n v\\u00e0 \\u0111a d\\u1ea1ng, ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng s\\u1ebd c\\u00f3 nhi\\u1ec1u c\\u01a1 h\\u1ed9i l\\u1ef1a ch\\u1ecdn.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/banner3.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/z4009890024399_5debcb54b49b2f40040561b9fc04503d.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/z4015475352136_d85bf6f51d0b08d8ee2e49d372e7a757.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/z4015475285218_70ee99a0b4055e883c08897c242c652b.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/a4.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/banner3.jpg', NULL, 1, 18, 6, 'active', 1, 1, '2023-01-09 09:35:05', '2023-01-10 02:58:15', 'bi-quyet-chon-cong-ty-xuat-khau-lao-dong-uy-tin'),
(56, 1, 'post', 'Tìm hiểu chi phí xkld Algeri chuẩn xác nhất', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":\"<p><b><i>C\\u00f4ng ty xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng uy t\\u00edn<\\/i><\\/b><i>&nbsp;n\\u1ebfu l\\u1ef1a ch\\u1ecdn \\u0111\\u01b0\\u1ee3c s\\u1ebd gi\\u00fap b\\u1ea1n \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i. \\u0110\\u1eb7c bi\\u1ec7t c\\u00f2n c\\u00f3 th\\u1ec3 nh\\u1eadn \\u0111\\u01b0\\u1ee3c \\u0111\\u01a1n h\\u00e0ng t\\u1ed1t v\\u1edbi m\\u1ee9c chi ph\\u00ed th\\u1ea5p.<\\/i><\\/p>\\r\\n\\r\\n<p><b>C\\u00f4ng ty xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng uy t\\u00edn<\\/b>&nbsp;v\\u1edbi \\u0111\\u1ed9 tin c\\u1eady cao, \\u0111ang \\u0111\\u01b0\\u1ee3c t\\u00ecm hi\\u1ec3u nhi\\u1ec1u. \\u0110\\u1ec3 c\\u00f3 th\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i c\\u0169ng nh\\u01b0 ch\\u1eafc ch\\u1eafn tr\\u00fang \\u0111\\u01b0\\u1ee3c \\u0111\\u01a1n h\\u00e0ng t\\u1ed1t. Ch\\u00fang t\\u00f4i s\\u1ebd chia s\\u1ebb b\\u00ed quy\\u1ebft ch\\u1ecdn \\u0111\\u01a1n v\\u1ecb xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng uy t\\u00edn trong b\\u00e0i sau.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t c\\u00f4ng ty xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng \\u0111\\u1ea3m b\\u1ea3o, uy t\\u00edn s\\u1ebd th\\u1ec3 hi\\u1ec7n \\u1edf \\u0111\\u01a1n \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng. \\u0110\\u01b0a \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng \\u0111i xu\\u1ea5t kh\\u1ea9u, c\\u00f3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i t\\u1ed1t t\\u1eeb ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng. \\u0110\\u00f3 ch\\u00ednh l\\u00e0 c\\u00f4ng ty m\\u00e0 b\\u1ea1n c\\u1ea7n l\\u1ef1a ch\\u1ecdn. B\\u1edfi th\\u1ecb tr\\u01b0\\u1eddng l\\u00e0m vi\\u1ec7c t\\u1ea1i Nh\\u1eadt B\\u1ea3n lu\\u00f4n n\\u1ed5i ti\\u1ebfng v\\u1edbi s\\u1ef1 kh\\u1eaft khe.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t \\u0111\\u01a1n v\\u1ecb ho\\u1ea1t \\u0111\\u1ed9ng l\\u00e2u n\\u0103m trong l\\u0129nh v\\u1ef1c xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng. S\\u1ebd c\\u00f3 b\\u1ec1 d\\u00e0y kinh nghi\\u1ec7m l\\u1edbn, d\\u1ec5 d\\u00e0ng x\\u1eed l\\u00fd m\\u1ecdi t\\u00ecnh hu\\u1ed1ng ph\\u00e1t sinh. Ch\\u1ec9 c\\u1ea7n d\\u1ef1a v\\u00e0o \\u0111i\\u1ec1u ki\\u1ec7n c\\u0169ng nh\\u01b0 mong mu\\u1ed1n c\\u1ee7a ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng. Ch\\u00fang t\\u00f4i c\\u00f3 th\\u1ec3 \\u0111\\u01b0a ra c\\u00e1c g\\u1ee3i \\u00fd \\u0111\\u01a1n h\\u00e0ng ph\\u00f9 h\\u1ee3p. Sao cho t\\u1ec9 l\\u1ec7 tr\\u00fang \\u0111\\u01a1n h\\u00e0ng l\\u00e0 cao nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t c\\u00f4ng ty c\\u00f3 m\\u1ea1ng l\\u01b0\\u1edbi \\u0111\\u1ed1i t\\u00e1c r\\u1ed9ng r\\u00e3i, ch\\u1ee9ng t\\u1ecf quy m\\u00f4 c\\u0169ng nh\\u01b0 \\u0111\\u1ed9 uy t\\u00edn cao. C\\u00e1c \\u0111\\u01a1n h\\u00e0ng s\\u1ebd \\u0111\\u1ec1u \\u0111\\u1eb7n v\\u00e0 \\u0111a d\\u1ea1ng, ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng s\\u1ebd c\\u00f3 nhi\\u1ec1u c\\u01a1 h\\u1ed9i l\\u1ef1a ch\\u1ecdn.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/banner3.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/z4009890024399_5debcb54b49b2f40040561b9fc04503d.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/z4015475352136_d85bf6f51d0b08d8ee2e49d372e7a757.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/z4015475285218_70ee99a0b4055e883c08897c242c652b.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/a4.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/z4009892749778_ccfbace495db80ecc68098ac36bfdd71.jpg', NULL, 0, 17, 6, 'active', 1, 1, '2023-01-09 09:35:05', '2023-01-10 02:09:33', 'tim-hieu-chi-phi-xkld-algeri-chuan-xac-nhat'),
(57, 1, 'post', 'Những điều quan trọng khi đi xuất khẩu lao động nhật bản cần biết', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":\"<p><b><i>C\\u00f4ng ty xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng uy t\\u00edn<\\/i><\\/b><i>&nbsp;n\\u1ebfu l\\u1ef1a ch\\u1ecdn \\u0111\\u01b0\\u1ee3c s\\u1ebd gi\\u00fap b\\u1ea1n \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i. \\u0110\\u1eb7c bi\\u1ec7t c\\u00f2n c\\u00f3 th\\u1ec3 nh\\u1eadn \\u0111\\u01b0\\u1ee3c \\u0111\\u01a1n h\\u00e0ng t\\u1ed1t v\\u1edbi m\\u1ee9c chi ph\\u00ed th\\u1ea5p.<\\/i><\\/p>\\r\\n\\r\\n<p><b>C\\u00f4ng ty xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng uy t\\u00edn<\\/b>&nbsp;v\\u1edbi \\u0111\\u1ed9 tin c\\u1eady cao, \\u0111ang \\u0111\\u01b0\\u1ee3c t\\u00ecm hi\\u1ec3u nhi\\u1ec1u. \\u0110\\u1ec3 c\\u00f3 th\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i c\\u0169ng nh\\u01b0 ch\\u1eafc ch\\u1eafn tr\\u00fang \\u0111\\u01b0\\u1ee3c \\u0111\\u01a1n h\\u00e0ng t\\u1ed1t. Ch\\u00fang t\\u00f4i s\\u1ebd chia s\\u1ebb b\\u00ed quy\\u1ebft ch\\u1ecdn \\u0111\\u01a1n v\\u1ecb xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng uy t\\u00edn trong b\\u00e0i sau.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t c\\u00f4ng ty xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng \\u0111\\u1ea3m b\\u1ea3o, uy t\\u00edn s\\u1ebd th\\u1ec3 hi\\u1ec7n \\u1edf \\u0111\\u01a1n \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng. \\u0110\\u01b0a \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng \\u0111i xu\\u1ea5t kh\\u1ea9u, c\\u00f3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i t\\u1ed1t t\\u1eeb ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng. \\u0110\\u00f3 ch\\u00ednh l\\u00e0 c\\u00f4ng ty m\\u00e0 b\\u1ea1n c\\u1ea7n l\\u1ef1a ch\\u1ecdn. B\\u1edfi th\\u1ecb tr\\u01b0\\u1eddng l\\u00e0m vi\\u1ec7c t\\u1ea1i Nh\\u1eadt B\\u1ea3n lu\\u00f4n n\\u1ed5i ti\\u1ebfng v\\u1edbi s\\u1ef1 kh\\u1eaft khe.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t \\u0111\\u01a1n v\\u1ecb ho\\u1ea1t \\u0111\\u1ed9ng l\\u00e2u n\\u0103m trong l\\u0129nh v\\u1ef1c xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng. S\\u1ebd c\\u00f3 b\\u1ec1 d\\u00e0y kinh nghi\\u1ec7m l\\u1edbn, d\\u1ec5 d\\u00e0ng x\\u1eed l\\u00fd m\\u1ecdi t\\u00ecnh hu\\u1ed1ng ph\\u00e1t sinh. Ch\\u1ec9 c\\u1ea7n d\\u1ef1a v\\u00e0o \\u0111i\\u1ec1u ki\\u1ec7n c\\u0169ng nh\\u01b0 mong mu\\u1ed1n c\\u1ee7a ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng. Ch\\u00fang t\\u00f4i c\\u00f3 th\\u1ec3 \\u0111\\u01b0a ra c\\u00e1c g\\u1ee3i \\u00fd \\u0111\\u01a1n h\\u00e0ng ph\\u00f9 h\\u1ee3p. Sao cho t\\u1ec9 l\\u1ec7 tr\\u00fang \\u0111\\u01a1n h\\u00e0ng l\\u00e0 cao nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t c\\u00f4ng ty c\\u00f3 m\\u1ea1ng l\\u01b0\\u1edbi \\u0111\\u1ed1i t\\u00e1c r\\u1ed9ng r\\u00e3i, ch\\u1ee9ng t\\u1ecf quy m\\u00f4 c\\u0169ng nh\\u01b0 \\u0111\\u1ed9 uy t\\u00edn cao. C\\u00e1c \\u0111\\u01a1n h\\u00e0ng s\\u1ebd \\u0111\\u1ec1u \\u0111\\u1eb7n v\\u00e0 \\u0111a d\\u1ea1ng, ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng s\\u1ebd c\\u00f3 nhi\\u1ec1u c\\u01a1 h\\u1ed9i l\\u1ef1a ch\\u1ecdn.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/banner3.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/z4009890024399_5debcb54b49b2f40040561b9fc04503d.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/z4015475352136_d85bf6f51d0b08d8ee2e49d372e7a757.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/z4015475285218_70ee99a0b4055e883c08897c242c652b.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/a4.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/dv3.jpg', NULL, 0, 17, 3, 'active', 1, 1, '2023-01-09 09:35:05', '2023-01-10 02:58:04', 'nhung-dieu-quan-trong-khi-di-xuat-khau-lao-dong-nhat-ban-can-biet'),
(58, 1, 'post', 'Lao động xuất khẩu và các hình thức, vấn đề liên quan tới xuất khẩu lao động', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":\"<p><b><i>C\\u00f4ng ty xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng uy t\\u00edn<\\/i><\\/b><i>&nbsp;n\\u1ebfu l\\u1ef1a ch\\u1ecdn \\u0111\\u01b0\\u1ee3c s\\u1ebd gi\\u00fap b\\u1ea1n \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i. \\u0110\\u1eb7c bi\\u1ec7t c\\u00f2n c\\u00f3 th\\u1ec3 nh\\u1eadn \\u0111\\u01b0\\u1ee3c \\u0111\\u01a1n h\\u00e0ng t\\u1ed1t v\\u1edbi m\\u1ee9c chi ph\\u00ed th\\u1ea5p.<\\/i><\\/p>\\r\\n\\r\\n<p><b>C\\u00f4ng ty xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng uy t\\u00edn<\\/b>&nbsp;v\\u1edbi \\u0111\\u1ed9 tin c\\u1eady cao, \\u0111ang \\u0111\\u01b0\\u1ee3c t\\u00ecm hi\\u1ec3u nhi\\u1ec1u. \\u0110\\u1ec3 c\\u00f3 th\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i c\\u0169ng nh\\u01b0 ch\\u1eafc ch\\u1eafn tr\\u00fang \\u0111\\u01b0\\u1ee3c \\u0111\\u01a1n h\\u00e0ng t\\u1ed1t. Ch\\u00fang t\\u00f4i s\\u1ebd chia s\\u1ebb b\\u00ed quy\\u1ebft ch\\u1ecdn \\u0111\\u01a1n v\\u1ecb xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng uy t\\u00edn trong b\\u00e0i sau.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t c\\u00f4ng ty xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng \\u0111\\u1ea3m b\\u1ea3o, uy t\\u00edn s\\u1ebd th\\u1ec3 hi\\u1ec7n \\u1edf \\u0111\\u01a1n \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng. \\u0110\\u01b0a \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng \\u0111i xu\\u1ea5t kh\\u1ea9u, c\\u00f3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i t\\u1ed1t t\\u1eeb ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng. \\u0110\\u00f3 ch\\u00ednh l\\u00e0 c\\u00f4ng ty m\\u00e0 b\\u1ea1n c\\u1ea7n l\\u1ef1a ch\\u1ecdn. B\\u1edfi th\\u1ecb tr\\u01b0\\u1eddng l\\u00e0m vi\\u1ec7c t\\u1ea1i Nh\\u1eadt B\\u1ea3n lu\\u00f4n n\\u1ed5i ti\\u1ebfng v\\u1edbi s\\u1ef1 kh\\u1eaft khe.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t \\u0111\\u01a1n v\\u1ecb ho\\u1ea1t \\u0111\\u1ed9ng l\\u00e2u n\\u0103m trong l\\u0129nh v\\u1ef1c xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng. S\\u1ebd c\\u00f3 b\\u1ec1 d\\u00e0y kinh nghi\\u1ec7m l\\u1edbn, d\\u1ec5 d\\u00e0ng x\\u1eed l\\u00fd m\\u1ecdi t\\u00ecnh hu\\u1ed1ng ph\\u00e1t sinh. Ch\\u1ec9 c\\u1ea7n d\\u1ef1a v\\u00e0o \\u0111i\\u1ec1u ki\\u1ec7n c\\u0169ng nh\\u01b0 mong mu\\u1ed1n c\\u1ee7a ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng. Ch\\u00fang t\\u00f4i c\\u00f3 th\\u1ec3 \\u0111\\u01b0a ra c\\u00e1c g\\u1ee3i \\u00fd \\u0111\\u01a1n h\\u00e0ng ph\\u00f9 h\\u1ee3p. Sao cho t\\u1ec9 l\\u1ec7 tr\\u00fang \\u0111\\u01a1n h\\u00e0ng l\\u00e0 cao nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t c\\u00f4ng ty c\\u00f3 m\\u1ea1ng l\\u01b0\\u1edbi \\u0111\\u1ed1i t\\u00e1c r\\u1ed9ng r\\u00e3i, ch\\u1ee9ng t\\u1ecf quy m\\u00f4 c\\u0169ng nh\\u01b0 \\u0111\\u1ed9 uy t\\u00edn cao. C\\u00e1c \\u0111\\u01a1n h\\u00e0ng s\\u1ebd \\u0111\\u1ec1u \\u0111\\u1eb7n v\\u00e0 \\u0111a d\\u1ea1ng, ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng s\\u1ebd c\\u00f3 nhi\\u1ec1u c\\u01a1 h\\u1ed9i l\\u1ef1a ch\\u1ecdn.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/banner3.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/z4009890024399_5debcb54b49b2f40040561b9fc04503d.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/z4015475352136_d85bf6f51d0b08d8ee2e49d372e7a757.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/z4015475285218_70ee99a0b4055e883c08897c242c652b.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/a4.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/nv.jpg', NULL, 0, 17, 6, 'active', 1, 1, '2023-01-09 09:35:05', '2023-01-09 16:32:41', 'lao-dong-xuat-khau-va-cac-hinh-thuc-van-de-lien-quan-toi-xuat-khau-lao-dong'),
(59, 1, 'post', '9 điều kiện cần phải có khi xuất khẩu lao động Nhật 2020 mới nhất', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":\"<p><b><i>C\\u00f4ng ty xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng uy t\\u00edn<\\/i><\\/b><i>&nbsp;n\\u1ebfu l\\u1ef1a ch\\u1ecdn \\u0111\\u01b0\\u1ee3c s\\u1ebd gi\\u00fap b\\u1ea1n \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i. \\u0110\\u1eb7c bi\\u1ec7t c\\u00f2n c\\u00f3 th\\u1ec3 nh\\u1eadn \\u0111\\u01b0\\u1ee3c \\u0111\\u01a1n h\\u00e0ng t\\u1ed1t v\\u1edbi m\\u1ee9c chi ph\\u00ed th\\u1ea5p.<\\/i><\\/p>\\r\\n\\r\\n<p><b>C\\u00f4ng ty xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng uy t\\u00edn<\\/b>&nbsp;v\\u1edbi \\u0111\\u1ed9 tin c\\u1eady cao, \\u0111ang \\u0111\\u01b0\\u1ee3c t\\u00ecm hi\\u1ec3u nhi\\u1ec1u. \\u0110\\u1ec3 c\\u00f3 th\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i c\\u0169ng nh\\u01b0 ch\\u1eafc ch\\u1eafn tr\\u00fang \\u0111\\u01b0\\u1ee3c \\u0111\\u01a1n h\\u00e0ng t\\u1ed1t. Ch\\u00fang t\\u00f4i s\\u1ebd chia s\\u1ebb b\\u00ed quy\\u1ebft ch\\u1ecdn \\u0111\\u01a1n v\\u1ecb xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng uy t\\u00edn trong b\\u00e0i sau.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t c\\u00f4ng ty xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng \\u0111\\u1ea3m b\\u1ea3o, uy t\\u00edn s\\u1ebd th\\u1ec3 hi\\u1ec7n \\u1edf \\u0111\\u01a1n \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng. \\u0110\\u01b0a \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng \\u0111i xu\\u1ea5t kh\\u1ea9u, c\\u00f3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i t\\u1ed1t t\\u1eeb ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng. \\u0110\\u00f3 ch\\u00ednh l\\u00e0 c\\u00f4ng ty m\\u00e0 b\\u1ea1n c\\u1ea7n l\\u1ef1a ch\\u1ecdn. B\\u1edfi th\\u1ecb tr\\u01b0\\u1eddng l\\u00e0m vi\\u1ec7c t\\u1ea1i Nh\\u1eadt B\\u1ea3n lu\\u00f4n n\\u1ed5i ti\\u1ebfng v\\u1edbi s\\u1ef1 kh\\u1eaft khe.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t \\u0111\\u01a1n v\\u1ecb ho\\u1ea1t \\u0111\\u1ed9ng l\\u00e2u n\\u0103m trong l\\u0129nh v\\u1ef1c xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng. S\\u1ebd c\\u00f3 b\\u1ec1 d\\u00e0y kinh nghi\\u1ec7m l\\u1edbn, d\\u1ec5 d\\u00e0ng x\\u1eed l\\u00fd m\\u1ecdi t\\u00ecnh hu\\u1ed1ng ph\\u00e1t sinh. Ch\\u1ec9 c\\u1ea7n d\\u1ef1a v\\u00e0o \\u0111i\\u1ec1u ki\\u1ec7n c\\u0169ng nh\\u01b0 mong mu\\u1ed1n c\\u1ee7a ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng. Ch\\u00fang t\\u00f4i c\\u00f3 th\\u1ec3 \\u0111\\u01b0a ra c\\u00e1c g\\u1ee3i \\u00fd \\u0111\\u01a1n h\\u00e0ng ph\\u00f9 h\\u1ee3p. Sao cho t\\u1ec9 l\\u1ec7 tr\\u00fang \\u0111\\u01a1n h\\u00e0ng l\\u00e0 cao nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t c\\u00f4ng ty c\\u00f3 m\\u1ea1ng l\\u01b0\\u1edbi \\u0111\\u1ed1i t\\u00e1c r\\u1ed9ng r\\u00e3i, ch\\u1ee9ng t\\u1ecf quy m\\u00f4 c\\u0169ng nh\\u01b0 \\u0111\\u1ed9 uy t\\u00edn cao. C\\u00e1c \\u0111\\u01a1n h\\u00e0ng s\\u1ebd \\u0111\\u1ec1u \\u0111\\u1eb7n v\\u00e0 \\u0111a d\\u1ea1ng, ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng s\\u1ebd c\\u00f3 nhi\\u1ec1u c\\u01a1 h\\u1ed9i l\\u1ef1a ch\\u1ecdn.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/banner3.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/z4009890024399_5debcb54b49b2f40040561b9fc04503d.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/z4015475352136_d85bf6f51d0b08d8ee2e49d372e7a757.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/z4015475285218_70ee99a0b4055e883c08897c242c652b.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/a4.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/banner2.jpg', NULL, 0, 19, 2, 'active', 1, 1, '2023-01-09 09:35:05', '2023-01-10 02:57:55', '9-dieu-kien-can-phai-co-khi-di-xuat-khau-lao-dong-nhat-2020-moi-nhat'),
(60, 1, 'post', 'Những điều quan trọng khi đi xuất khẩu lao động Quatar cần biết', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":\"<p><b><i>C\\u00f4ng ty xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng uy t\\u00edn<\\/i><\\/b><i>&nbsp;n\\u1ebfu l\\u1ef1a ch\\u1ecdn \\u0111\\u01b0\\u1ee3c s\\u1ebd gi\\u00fap b\\u1ea1n \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i. \\u0110\\u1eb7c bi\\u1ec7t c\\u00f2n c\\u00f3 th\\u1ec3 nh\\u1eadn \\u0111\\u01b0\\u1ee3c \\u0111\\u01a1n h\\u00e0ng t\\u1ed1t v\\u1edbi m\\u1ee9c chi ph\\u00ed th\\u1ea5p.<\\/i><\\/p>\\r\\n\\r\\n<p><b>C\\u00f4ng ty xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng uy t\\u00edn<\\/b>&nbsp;v\\u1edbi \\u0111\\u1ed9 tin c\\u1eady cao, \\u0111ang \\u0111\\u01b0\\u1ee3c t\\u00ecm hi\\u1ec3u nhi\\u1ec1u. \\u0110\\u1ec3 c\\u00f3 th\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i c\\u0169ng nh\\u01b0 ch\\u1eafc ch\\u1eafn tr\\u00fang \\u0111\\u01b0\\u1ee3c \\u0111\\u01a1n h\\u00e0ng t\\u1ed1t. Ch\\u00fang t\\u00f4i s\\u1ebd chia s\\u1ebb b\\u00ed quy\\u1ebft ch\\u1ecdn \\u0111\\u01a1n v\\u1ecb xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng uy t\\u00edn trong b\\u00e0i sau.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t c\\u00f4ng ty xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng \\u0111\\u1ea3m b\\u1ea3o, uy t\\u00edn s\\u1ebd th\\u1ec3 hi\\u1ec7n \\u1edf \\u0111\\u01a1n \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng. \\u0110\\u01b0a \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng \\u0111i xu\\u1ea5t kh\\u1ea9u, c\\u00f3 \\u0111\\u01b0\\u1ee3c ph\\u1ea3n h\\u1ed3i t\\u1ed1t t\\u1eeb ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng. \\u0110\\u00f3 ch\\u00ednh l\\u00e0 c\\u00f4ng ty m\\u00e0 b\\u1ea1n c\\u1ea7n l\\u1ef1a ch\\u1ecdn. B\\u1edfi th\\u1ecb tr\\u01b0\\u1eddng l\\u00e0m vi\\u1ec7c t\\u1ea1i Nh\\u1eadt B\\u1ea3n lu\\u00f4n n\\u1ed5i ti\\u1ebfng v\\u1edbi s\\u1ef1 kh\\u1eaft khe.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t \\u0111\\u01a1n v\\u1ecb ho\\u1ea1t \\u0111\\u1ed9ng l\\u00e2u n\\u0103m trong l\\u0129nh v\\u1ef1c xu\\u1ea5t kh\\u1ea9u lao \\u0111\\u1ed9ng. S\\u1ebd c\\u00f3 b\\u1ec1 d\\u00e0y kinh nghi\\u1ec7m l\\u1edbn, d\\u1ec5 d\\u00e0ng x\\u1eed l\\u00fd m\\u1ecdi t\\u00ecnh hu\\u1ed1ng ph\\u00e1t sinh. Ch\\u1ec9 c\\u1ea7n d\\u1ef1a v\\u00e0o \\u0111i\\u1ec1u ki\\u1ec7n c\\u0169ng nh\\u01b0 mong mu\\u1ed1n c\\u1ee7a ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng. Ch\\u00fang t\\u00f4i c\\u00f3 th\\u1ec3 \\u0111\\u01b0a ra c\\u00e1c g\\u1ee3i \\u00fd \\u0111\\u01a1n h\\u00e0ng ph\\u00f9 h\\u1ee3p. Sao cho t\\u1ec9 l\\u1ec7 tr\\u00fang \\u0111\\u01a1n h\\u00e0ng l\\u00e0 cao nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t c\\u00f4ng ty c\\u00f3 m\\u1ea1ng l\\u01b0\\u1edbi \\u0111\\u1ed1i t\\u00e1c r\\u1ed9ng r\\u00e3i, ch\\u1ee9ng t\\u1ecf quy m\\u00f4 c\\u0169ng nh\\u01b0 \\u0111\\u1ed9 uy t\\u00edn cao. C\\u00e1c \\u0111\\u01a1n h\\u00e0ng s\\u1ebd \\u0111\\u1ec1u \\u0111\\u1eb7n v\\u00e0 \\u0111a d\\u1ea1ng, ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng s\\u1ebd c\\u00f3 nhi\\u1ec1u c\\u01a1 h\\u1ed9i l\\u1ef1a ch\\u1ecdn.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/banner3.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/z4009890024399_5debcb54b49b2f40040561b9fc04503d.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/z4015475352136_d85bf6f51d0b08d8ee2e49d372e7a757.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/z4015475285218_70ee99a0b4055e883c08897c242c652b.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/1\\/a4.jpg\\\" style=\\\"width: 1067px; height: 800px;\\\" \\/><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/z4015475356796_88095696908e94bce41304dff6d12084.jpg', NULL, 1, 20, 1, 'active', 1, 1, '2023-01-09 09:35:05', '2023-01-10 03:05:25', 'nhung-dieu-quan-trong-khi-di-xuat-khau-lao-dong-quatar-can-biet'),
(61, 17, 'resource', 'Đào tạo thợ xây lao động tại Đài loan', '{\"price\":null,\"price_old\":null,\"place\":null,\"area\":null,\"scale\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/z4015475352136_d85bf6f51d0b08d8ee2e49d372e7a757.jpg', NULL, 1, 31, 1, 'active', 1, 1, '2021-10-15 09:36:39', '2023-01-10 02:16:12', 'dao-tao-tho-xay-lao-dong-tai-dai-loan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_cms_taxonomys`
--

CREATE TABLE `tb_cms_taxonomys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_cms_taxonomys`
--

INSERT INTO `tb_cms_taxonomys` (`id`, `taxonomy`, `parent_id`, `title`, `json_params`, `is_featured`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(1, 'post', NULL, 'Tin tức', '{\"image\":\"\\/data\\/cms-image\\/1\\/dangki.jpg\",\"image_background\":null,\"brief\":{\"vi\":\"\\u0110\\u0103ng K\\u00fd Nh\\u1eadn T\\u01b0 V\\u1ea5n\"},\"content\":{\"vi\":\"Mi\\u1ec5n Ph\\u00ed Kh\\u00f3a H\\u1ecdc Tr\\u1ea3i Nghi\\u1ec7m Cho L\\u1edbp \\u0110\\u1ea7u Ti\\u1ebfn C\\u1ee7a Th\\u00e1ng Nhanh Tay \\u0110\\u0103ng K\\u00fd C\\u00f3 Duy Nh\\u1ea5t 10 Xu\\u1ea5t.\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, 3, 'active', 1, 1, '2021-10-15 03:19:10', '2023-01-09 08:31:31', 'tin-tuc'),
(2, 'post', NULL, 'Chia sẻ kiến thức', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 2, 'delete', 1, 1, '2021-10-15 04:01:59', '2022-12-08 06:58:09', 'chia-se-kien-thuc'),
(3, 'service', NULL, 'Thiết kế kiến trúc', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 1, 'delete', 1, 1, '2022-02-12 08:10:39', '2022-12-05 02:49:33', 'thiet-ke-kien-truc'),
(4, 'post', NULL, 'Báo giá', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 2, 'delete', 1, 1, '2022-02-13 15:02:31', '2022-12-08 06:58:03', 'bao-gia'),
(17, 'resource', NULL, 'Thư viện Media', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, NULL, 'active', 1, 1, '2022-08-06 02:39:04', '2023-01-09 15:26:28', 'thu-vien-media'),
(18, 'post', NULL, 'Giới thiệu', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 1, 'delete', 1, 1, '2022-08-06 08:22:34', '2022-12-08 06:57:59', 'gioi-thieu'),
(24, 'post', 18, 'Tuyển dụng', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 2, 'delete', 1, 1, '2022-08-19 07:41:33', '2022-12-08 06:57:59', 'tuyen-dung'),
(30, 'product', NULL, 'Sản phẩm', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, NULL, 'delete', 1, 1, '2022-11-21 09:29:34', '2023-01-07 01:49:17', 'san-pham'),
(31, 'product', NULL, 'Software', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'delete', 1, 1, '2022-11-21 09:30:05', '2022-12-08 06:58:13', 'software'),
(32, 'service', NULL, 'Khóa học', '{\"image\":\"\\/data\\/cms-image\\/1\\/dangki.jpg\",\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, 3, 'active', 1, 1, '2023-01-06 17:00:58', '2023-01-09 08:50:01', 'khoa-hoc'),
(33, 'service', 32, 'Hai thủ tướng Việt Nam - Nhật Bản ký biên bản ghi nhớ nhằm tháo gỡ cho thực tập sinh Việt Nam.', '{\"image\":\"\\/data\\/cms-image\\/1\\/dv1.jpg\",\"image_background\":null,\"brief\":{\"vi\":\"M\\u1ed9t ch\\u00ednh s\\u00e1ch nh\\u1eadp c\\u01b0 nghi\\u00eam ng\\u1eb7t v\\u00e0 ch\\u1eb7t ch\\u1ebd \\u0111\\u00e3 bi\\u1ebfn n\\u01b0\\u1edbc Nh\\u1eadt tr\\u1edf th\\u00e0nh m\\u1ed9t trong nh\\u1eefng qu\\u1ed1c gia \\u0111\\u1ed3ng nh\\u1ea5t nh\\u01b0ng c\\u00f3 \\u0111\\u1ed9 tu\\u1ed5i lao \\u0111\\u1ed9ng cao nh\\u1ea5t th\\u1ebf gi\\u1edbi. Tr\\u01b0\\u1edbc t\\u00ecnh tr\\u1ea1ng thi\\u1ebfu h\\u1ee5t ngu\\u1ed3n lao \\u0111\\u1ed9ng tr\\u1ebb hi\\u1ec7n t\\u1ea1i, th\\u1ee7 t\\u01b0\\u1edbng KiShiDa Fumio \\u0111ang l\\u00ean k\\u1ebf ho\\u1ea1ch nh\\u1eb1m n\\u1edbi l\\u1ecfng ch\\u00ednh s\\u00e1ch n\\u00e0y \\u0111\\u1ec3 m\\u1edf c\\u1eeda ch\\u00e0o \\u0111\\u00f3n kho\\u1ea3ng n\\u1eeda tri\\u1ec7u lao \\u0111\\u1ed9ng n\\u01b0\\u1edbc ngo\\u00e0i \\u0111\\u1ebfn l\\u00e0m vi\\u1ec7c. \\u0110\\u00e2y \\u0111\\u01b0\\u1ee3c coi l\\u00e0 m\\u1ed9t \\u201cph\\u00e9p th\\u1eed\\u201d cho nh\\u1eefng s\\u1ef1 thay \\u0111\\u1ed5i t\\u00edch c\\u1ef1c cho n\\u01b0\\u1edbc Nh\\u1eadt trong t\\u01b0\\u01a1ng lai.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, 1, 'delete', 1, 1, '2023-01-06 17:04:10', '2023-01-06 17:05:15', 'hai-thu-tuong-viet-nam-nhat-ban-ky-bien-ban-ghi-nho-nham-thao-go-cho-thuc-tap-sinh-viet-nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_components`
--

CREATE TABLE `tb_components` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `component_code` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `brief` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `image` varchar(255) DEFAULT NULL,
  `image_background` varchar(255) DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_components`
--

INSERT INTO `tb_components` (`id`, `component_code`, `parent_id`, `title`, `brief`, `content`, `json_params`, `image`, `image_background`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'menu', NULL, 'Main menu', NULL, NULL, '{\"menu_id\":\"24\"}', NULL, NULL, 1, 'active', 1, 1, '2022-05-04 08:23:05', '2022-05-20 01:38:02'),
(2, 'banner_image', NULL, 'Adv banner', NULL, NULL, NULL, '/data/cms-image/banner/no-banner.jpg', NULL, 2, 'active', 1, 1, '2022-05-04 10:25:30', '2022-05-04 10:25:30'),
(3, 'menu', NULL, 'Primary sidebar', 'Primary sidebar section', NULL, '{\"menu_id\":\"33\"}', NULL, NULL, 3, 'active', 1, 1, '2022-05-19 07:24:44', '2022-05-20 01:38:15'),
(4, 'custom', NULL, 'Footer content', NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2022-05-19 15:21:27', '2022-05-19 15:21:27'),
(5, NULL, 2, 'Right banner 1', 'Description to this banner', NULL, '{\"url_link\":\"#\",\"url_link_title\":\"Show now\",\"target\":\"_self\"}', '/data/cms-image/meta-logo-favicon.png', NULL, 5, 'delete', 1, 1, '2022-05-20 04:24:40', '2022-05-20 06:23:36'),
(6, NULL, 2, 'Right banner 1', 'Description to this banner', NULL, '{\"url_link\":\"#\",\"url_link_title\":\"Show now\",\"target\":\"_self\"}', '/data/cms-image/meta-logo-favicon.png', NULL, 1, 'active', 1, 1, '2022-05-20 04:27:07', '2022-05-20 04:27:07'),
(7, NULL, 2, 'Right banner 2', NULL, NULL, '{\"url_link\":\"#\",\"url_link_title\":\"View more\",\"target\":\"_self\"}', '/data/banner/architektura-5.jpg', NULL, 2, 'active', 1, 1, '2022-05-20 06:25:03', '2022-05-20 06:25:03'),
(8, NULL, 2, 'Right banner 3', NULL, NULL, '{\"url_link\":null,\"url_link_title\":null,\"target\":\"_self\"}', '/data/banner/ewx_cslxkaio8su.jpg', NULL, 3, 'active', 1, 1, '2022-05-20 06:27:24', '2022-05-20 06:27:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_component_configs`
--

CREATE TABLE `tb_component_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `component_code` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `is_config` tinyint(1) NOT NULL DEFAULT 1,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_component_configs`
--

INSERT INTO `tb_component_configs` (`id`, `name`, `description`, `component_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Menu', NULL, 'menu', NULL, 1, 1, 'active', 1, 1, '2022-04-26 09:53:00', '2022-04-26 09:53:00'),
(2, 'Custom', NULL, 'custom', NULL, 1, 2, 'active', 1, 1, '2022-04-26 09:53:17', '2022-04-26 09:53:17'),
(3, 'Banner / Image', NULL, 'banner_image', NULL, 1, 3, 'active', 1, 1, '2022-04-26 09:53:50', '2022-04-26 09:53:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_contacts`
--

CREATE TABLE `tb_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) DEFAULT 'contact',
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_contacts`
--

INSERT INTO `tb_contacts` (`id`, `is_type`, `name`, `email`, `phone`, `subject`, `content`, `admin_note`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(22, 'contact', 'Thắng Nguyễn 2', 'huuthangb2k50@gmail.com', '0912 568 999', NULL, 'Liên hệ lại cho tôi nhé', NULL, NULL, NULL, 'new', NULL, NULL, '2022-10-11 07:07:33', '2022-10-11 07:07:33'),
(37, 'call_request', 'Lê Mạnh Tưởng', 'tuonglee1001@gmail.com', '0388830059', NULL, '123456789', NULL, NULL, NULL, 'new', NULL, NULL, '2023-01-08 13:58:02', '2023-01-08 13:58:02'),
(38, 'newsletter', NULL, NULL, '0388830059', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2023-01-08 14:31:50', '2023-01-08 14:31:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_logs`
--

CREATE TABLE `tb_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `url_referer` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `params` text DEFAULT NULL,
  `logged_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_menus`
--

CREATE TABLE `tb_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `url_link` varchar(255) DEFAULT NULL,
  `menu_type` varchar(255) DEFAULT NULL,
  `system_code` varchar(255) DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_menus`
--

INSERT INTO `tb_menus` (`id`, `parent_id`, `name`, `description`, `url_link`, `menu_type`, `system_code`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(24, NULL, 'Menu đầu trang', 'Menu link for main navbar', NULL, 'header', NULL, NULL, 1, 'active', 1, 1, '2022-05-10 10:29:01', '2022-08-10 06:52:06'),
(27, 24, 'Giới thiệu', NULL, '/gioi-thieu', 'main', 'public', '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2021-12-08 02:51:06', '2023-01-09 15:30:19'),
(30, 24, 'Tin tức', NULL, '/tin-tuc', NULL, NULL, '{\"target\":\"_self\"}', 4, 'active', 1, 1, '2022-05-18 16:49:38', '2023-01-09 15:30:19'),
(31, 24, 'Liên hệ', NULL, '/lien-he', NULL, NULL, '{\"target\":\"_self\"}', 6, 'active', 1, 1, '2022-05-18 16:52:41', '2023-01-09 15:30:19'),
(33, NULL, 'LIÊN KẾT NHANH', 'Hiển thị liên kết cuối chân trang', NULL, 'footer', NULL, NULL, 3, 'active', 1, 1, '2022-05-18 18:47:23', '2022-11-30 07:41:22'),
(34, 33, 'Liên hệ với chúng tôi', NULL, '/lien-he', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-05-18 18:49:06', '2023-01-08 15:17:17'),
(35, 33, 'Thư viện Media', NULL, '/tin-tuc', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-05-18 18:49:24', '2023-01-08 15:17:32'),
(36, NULL, 'Menu cuối trang #2', NULL, NULL, 'footer', NULL, NULL, 3, 'delete', 1, 1, '2022-06-02 07:25:15', '2022-08-05 10:14:07'),
(37, 36, 'Chính sách bảo mật thông tin', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-06-02 07:25:33', '2022-06-02 07:25:33'),
(38, 36, 'Hướng dẫn tra cứu', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-06-02 07:25:44', '2022-06-02 07:25:44'),
(58, 24, 'Trang chủ', NULL, '/', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-08-17 09:34:50', '2023-01-09 15:30:19'),
(63, 24, 'Khóa học', NULL, '/khoa-hoc', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2022-10-11 02:14:55', '2023-01-09 15:30:19'),
(64, NULL, 'FACEBOOK FANPAGE', NULL, NULL, 'footer', NULL, NULL, 4, 'delete', 1, 1, '2022-10-17 07:19:46', '2023-01-07 04:02:57'),
(68, NULL, 'SẢN PHẨM', NULL, NULL, 'footer', NULL, NULL, 3, 'delete', 1, 1, '2022-11-30 07:30:01', '2022-11-30 07:41:17'),
(74, 33, 'Hoạt động nổi bật', NULL, '/dich-vu', NULL, NULL, '{\"target\":\"_self\"}', 4, 'active', 1, 1, '2023-01-07 03:57:44', '2023-01-08 15:18:17'),
(75, 24, 'Thư viện Media', NULL, '/thu-vien-media', NULL, NULL, '{\"target\":\"_self\"}', 5, 'active', 1, 1, '2023-01-09 15:29:34', '2023-01-09 15:30:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_modules`
--

CREATE TABLE `tb_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_modules`
--

INSERT INTO `tb_modules` (`id`, `module_code`, `name`, `description`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'admins', 'Quản lý người dùng', 'Chức năng quản lý người dùng hệ thống', 100, 'active', 1, 1, '2021-10-01 12:35:15', '2022-08-08 06:47:54'),
(5, 'admin_menus', 'Quản lý Menu Admin', NULL, 102, 'active', 1, 1, '2022-03-04 05:19:37', '2022-08-08 06:47:53'),
(6, 'roles', 'Quản lý nhóm quyền', NULL, 101, 'active', 1, 1, '2022-03-04 05:20:18', '2022-08-08 06:47:54'),
(7, 'menus', 'Quản lý Menu Website Public', NULL, 94, 'active', 1, 1, '2022-03-04 05:20:46', '2022-08-08 06:49:15'),
(8, 'block_contents', 'Quản lý Khối nội dung', NULL, 96, 'active', 1, 1, '2022-03-04 05:21:07', '2022-08-08 06:49:14'),
(9, 'pages', 'Quản lý Pages - Trang', NULL, 95, 'active', 1, 1, '2022-03-04 05:21:19', '2022-08-08 06:49:15'),
(10, 'cms_taxonomys', 'Quản lý danh mục - thể loại', NULL, 3, 'active', 1, 1, '2022-03-04 05:21:40', '2022-03-04 05:29:06'),
(11, 'cms_posts', 'Quản lý bài viết', NULL, 4, 'active', 1, 1, '2022-03-04 05:22:17', '2022-03-04 05:29:11'),
(12, 'cms_services', 'Quản lý khóa học', NULL, 5, 'active', 1, 1, '2022-03-04 05:22:40', '2023-01-11 01:58:49'),
(13, 'cms_products', 'Quản lý sản phẩm', NULL, 6, 'deactive', 1, 1, '2022-03-04 05:22:52', '2023-01-11 01:58:56'),
(16, 'web_information', 'Quản lý thông tin website', NULL, 91, 'active', 1, 1, '2022-03-04 05:24:37', '2022-08-08 06:49:17'),
(17, 'web_image', 'Quản lý hình ảnh hệ thống', NULL, 92, 'active', 1, 1, '2022-03-04 05:25:38', '2022-08-08 06:49:17'),
(18, 'web_social', 'Quản lý liên kết MXH', NULL, 90, 'active', 1, 1, '2022-03-04 05:25:53', '2022-08-08 06:49:18'),
(19, 'contacts', 'Quản lý liên hệ', NULL, 1, 'active', 1, 1, '2022-03-04 05:26:39', '2022-08-08 06:44:47'),
(20, 'call_request', 'Quản lý đăng ký tư vấn', NULL, NULL, 'active', 1, 1, '2022-08-08 06:42:19', '2022-08-08 06:42:34'),
(21, 'web_source', 'Quản lý mã nhúng CSS - JS', NULL, 93, 'active', 1, 1, '2022-08-08 06:46:02', '2022-08-08 06:49:16'),
(22, 'order_services', 'Quản lý đăng ký dịch vụ', NULL, NULL, 'deactive', 1, 1, '2022-08-08 06:50:09', '2022-12-07 02:40:37'),
(23, 'cms_resources', 'Quản lý thư viện Media', NULL, 6, 'active', 1, 1, '2023-01-11 02:00:10', '2023-01-11 02:00:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_module_functions`
--

CREATE TABLE `tb_module_functions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `function_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_module_functions`
--

INSERT INTO `tb_module_functions` (`id`, `module_id`, `function_code`, `name`, `description`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(7, 19, 'contacts.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 05:32:15', '2022-03-04 05:35:40'),
(8, 19, 'contacts.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 05:35:45', '2022-03-04 05:35:45'),
(9, 19, 'contacts.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 05:35:48', '2022-03-04 05:35:48'),
(10, 19, 'contacts.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 05:35:51', '2022-03-04 05:35:51'),
(11, 19, 'contacts.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 05:35:55', '2022-03-04 05:35:55'),
(12, 19, 'contacts.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 05:35:58', '2022-03-04 05:35:58'),
(27, 1, 'admins.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(28, 1, 'admins.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(29, 1, 'admins.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(30, 1, 'admins.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(31, 1, 'admins.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(32, 1, 'admins.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(39, 5, 'admin_menus.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(40, 5, 'admin_menus.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(41, 5, 'admin_menus.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(42, 5, 'admin_menus.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(43, 5, 'admin_menus.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(44, 5, 'admin_menus.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(45, 6, 'roles.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(46, 6, 'roles.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(47, 6, 'roles.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(48, 6, 'roles.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(49, 6, 'roles.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(50, 6, 'roles.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(51, 7, 'menus.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(52, 7, 'menus.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(53, 7, 'menus.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(54, 7, 'menus.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(55, 7, 'menus.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(56, 7, 'menus.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(57, 8, 'block_contents.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(58, 8, 'block_contents.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(59, 8, 'block_contents.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(60, 8, 'block_contents.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(61, 8, 'block_contents.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(62, 8, 'block_contents.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(63, 9, 'pages.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(64, 9, 'pages.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(65, 9, 'pages.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(66, 9, 'pages.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(67, 9, 'pages.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(68, 9, 'pages.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(75, 10, 'cms_taxonomys.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(76, 10, 'cms_taxonomys.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(77, 10, 'cms_taxonomys.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(78, 10, 'cms_taxonomys.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(79, 10, 'cms_taxonomys.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(80, 10, 'cms_taxonomys.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(81, 11, 'cms_posts.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(82, 11, 'cms_posts.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(83, 11, 'cms_posts.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(84, 11, 'cms_posts.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(85, 11, 'cms_posts.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(86, 11, 'cms_posts.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(87, 12, 'cms_services.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(88, 12, 'cms_services.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(89, 12, 'cms_services.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(90, 12, 'cms_services.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(91, 12, 'cms_services.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(92, 12, 'cms_services.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(93, 13, 'cms_products.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-11-06 09:15:42'),
(94, 13, 'cms_products.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-11-06 09:15:42'),
(95, 13, 'cms_products.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-11-06 09:15:41'),
(96, 13, 'cms_products.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-11-06 09:15:41'),
(97, 13, 'cms_products.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-11-06 09:15:40'),
(98, 13, 'cms_products.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-11-06 09:15:40'),
(117, 16, 'web.information', 'Xem thông tin website', NULL, 1, 'active', 1, 1, '2022-03-04 07:24:06', '2022-03-04 07:24:06'),
(118, 16, 'web.information.update', 'Cập nhật thông tin website', NULL, 2, 'active', 1, 1, '2022-03-04 07:24:24', '2022-03-04 07:24:24'),
(119, 17, 'web.image', 'Xem hình ảnh hệ thống', NULL, 1, 'active', 1, 1, '2022-03-04 07:25:11', '2022-03-04 07:25:11'),
(120, 17, 'web.image.update', 'Cập nhật hình ảnh hệ thống', NULL, 2, 'active', 1, 1, '2022-03-04 07:25:34', '2022-03-04 07:25:34'),
(121, 18, 'web.social', 'Xem liên kết MXH', NULL, 1, 'active', 1, 1, '2022-03-04 07:26:03', '2022-03-04 07:26:03'),
(122, 18, 'web.social.update', 'Cập nhật liên kết MXH', NULL, 2, 'active', 1, 1, '2022-03-04 07:26:23', '2022-03-04 07:26:23'),
(123, 20, 'call_request.destroy', 'Xóa', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:30', '2022-08-08 06:44:30'),
(124, 20, 'call_request.update', 'Sửa thông tin (Lưu thông tin)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:30', '2022-08-08 06:44:30'),
(125, 20, 'call_request.show', 'Sửa thông tin (Form nhập)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:31', '2022-08-08 06:44:31'),
(126, 20, 'call_request.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:31', '2022-08-08 06:44:31'),
(127, 21, 'web.source.update', 'Cập nhật mã', NULL, NULL, 'active', 1, 1, '2022-08-08 06:46:40', '2022-08-08 06:46:40'),
(128, 21, 'web.source', 'Xem chi tiết mã', NULL, NULL, 'active', 1, 1, '2022-08-08 06:46:40', '2022-08-08 06:46:40'),
(129, 22, 'order_services.destroy', 'Xóa', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:30', '2022-08-08 06:51:30'),
(130, 22, 'order_services.update', 'Sửa thông tin (Lưu thông tin)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:30', '2022-08-08 06:51:30'),
(131, 22, 'order_services.edit', 'Sửa thông tin (Form nhập)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:31', '2022-08-08 06:51:31'),
(132, 22, 'order_services.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:31', '2022-08-08 06:51:31'),
(133, 23, 'cms_resources.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2023-01-11 02:10:29', '2023-01-11 02:10:29'),
(134, 23, 'cms_resources.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2023-01-11 02:11:05', '2023-01-11 02:12:15'),
(135, 23, 'cms_resources.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2023-01-11 02:12:32', '2023-01-11 02:12:32'),
(136, 23, 'cms_resources.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2023-01-11 02:13:13', '2023-01-11 02:13:13'),
(137, 23, 'cms_resources.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2023-01-11 02:13:44', '2023-01-11 02:13:44'),
(138, 23, 'cms_resources.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2023-01-11 02:14:05', '2023-01-11 02:14:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_options`
--

CREATE TABLE `tb_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `option_value` longtext NOT NULL,
  `description` text DEFAULT NULL,
  `is_system_param` tinyint(1) DEFAULT 1,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_options`
--

INSERT INTO `tb_options` (`id`, `option_name`, `option_value`, `description`, `is_system_param`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(2, 'information', '{\"site_name\":\"C\\u00f4ng Ty C\\u1ed5 Ph\\u1ea7n Th\\u01b0\\u01a1ng M\\u1ea1i V\\u00e0 Cung \\u1ee8ng Nh\\u00e2n L\\u1ef1c Uy T\\u00edn Vi\\u1ec7t Nam\",\"phone\":\"0963.983.007\",\"hotline\":\"0963.983.007\",\"email\":\"tmc@gmail.com\",\"address\":\"S\\u1ed1 9 ng\\u00f5 25 \\u0111\\u01b0\\u1eddng B\\u00f9i Huy B\\u00edch, ph\\u01b0\\u1eddng Ho\\u00e0ng Li\\u1ec7t, qu\\u1eadn Hai B\\u00e0 Tr\\u01b0ng, Th\\u00e0nh ph\\u1ed1 H\\u00e0 N\\u1ed9i\",\"seo_title\":\"C\\u00f4ng Ty C\\u1ed5 Ph\\u1ea7n Th\\u01b0\\u01a1ng M\\u1ea1i V\\u00e0 Cung \\u1ee8ng Nh\\u00e2n L\\u1ef1c Uy T\\u00edn Vi\\u1ec7t Nam\",\"seo_keyword\":null,\"seo_description\":null}', 'Các dữ liệu cấu trúc liên quan đến thông tin liên hệ của hệ thống website', 0, 1, 1, '2021-10-02 05:06:00', '2023-01-07 04:17:04'),
(5, 'image', '{\"logo_header\":\"\\/data\\/cms-image\\/1\\/logo.jpg\",\"logo_footer\":\"\\/data\\/cms-image\\/1\\/logo.jpg\",\"favicon\":\"\\/data\\/cms-image\\/1\\/logo.jpg\",\"background_breadcrumbs\":\"\\/data\\/cms-image\\/banner\\/01-4.jpg\",\"seo_og_image\":\"\\/data\\/cms-image\\/logo\\/logo_new_dark.png\"}', 'Danh sách các hình ảnh cấu hình trên hệ thống tại các vị trí', 0, 1, 1, '2021-10-11 09:22:56', '2023-01-07 10:08:40'),
(6, 'social', '{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"call_now\":\"0963983007\",\"zalo\":\"https:\\/\\/zalo.me\\/0963983007\"}', 'Danh sách các Social network của hệ thống', 0, 1, 1, '2022-02-14 10:35:40', '2023-01-07 04:11:53'),
(7, 'page', '{\r\n\"frontend.home\":  1\r\n}', NULL, 0, 1, 1, '2022-05-26 11:03:52', '2022-06-09 04:03:39'),
(8, 'source_code', '{\"header\":null,\"footer\":\"<iframe src=\\\"https:\\/\\/www.facebook.com\\/plugins\\/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFHM.Agency.VN&tabs=timeline&width=340&height=271&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=true&appId\\\" width=\\\"340\\\" height=\\\"271\\\" style=\\\"border:none;overflow:hidden\\\" scrolling=\\\"no\\\" frameborder=\\\"0\\\" allowfullscreen=\\\"true\\\" allow=\\\"autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share\\\"><\\/iframe>\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3724.019381341712!2d105.78888961546387!3d21.031910493045476!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd0905b6cacd304da!2zQ8O0bmcgdHkgY-G7lSBwaOG6p24gdGjGsMahbmcgbeG6oWkgRkhNIFZp4buHdCBOYW0!5e0!3m2!1svi!2sus!4v1667354812651!5m2!1svi!2sus\\\" style=\\\"border:0;height:100%\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\" height=\\\"100%\\\"><\\/iframe>\"}', NULL, 0, 1, 1, '2022-06-07 02:24:11', '2023-01-08 03:20:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_orders`
--

CREATE TABLE `tb_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) NOT NULL DEFAULT 'product',
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `customer_note` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) NOT NULL DEFAULT 'new',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_orders`
--

INSERT INTO `tb_orders` (`id`, `is_type`, `customer_id`, `name`, `email`, `phone`, `address`, `customer_note`, `admin_note`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'service', NULL, 'Quản lý đăng ký sự kiện', 'thangnh.edu@gmail.com', '0912 568 999', NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2022-10-31 09:46:37', '2022-10-31 09:46:37'),
(2, 'product', NULL, 'Thắng Nguyễn 2', 'huuthangb2k50@gmail.com', '098 226 9600', NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2022-10-31 10:02:12', '2022-10-31 10:02:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_order_details`
--

CREATE TABLE `tb_order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double(20,2) DEFAULT NULL,
  `discount` double(20,2) DEFAULT NULL,
  `customer_note` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_order_details`
--

INSERT INTO `tb_order_details` (`id`, `order_id`, `item_id`, `quantity`, `price`, `discount`, `customer_note`, `admin_note`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 1, 44, 1, 5000000.00, NULL, NULL, NULL, '{\"post_type\":\"product\",\"post_link\":\"http:\\/\\/fhmvn.test\\/kho-giao-dien\\/ban-hang\\/mau-website-ban-hang-01-44.html\"}', NULL, NULL, NULL, '2022-10-31 09:46:38', '2022-10-31 09:46:38'),
(2, 2, 44, 1, 5000000.00, NULL, NULL, NULL, '{\"post_type\":\"product\",\"post_link\":\"http:\\/\\/fhmvn.test\\/kho-giao-dien\\/ban-hang\\/mau-website-ban-hang-01-44.html\"}', NULL, NULL, NULL, '2022-10-31 10:02:12', '2022-10-31 10:02:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_pages`
--

CREATE TABLE `tb_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `route_name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_page` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_pages`
--

INSERT INTO `tb_pages` (`id`, `name`, `title`, `keyword`, `description`, `content`, `route_name`, `alias`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `is_page`) VALUES
(1, 'Trang chủ', NULL, NULL, NULL, NULL, 'frontend.home', 'trang-chu', '{\"og_image\":null,\"template\":\"home.primary\",\"block_content\":[\"74\",\"19\",\"315\",\"309\",\"293\",\"299\",\"82\",\"79\",\"316\"]}', 1, 'active', 1, 1, '2022-03-23 09:35:33', '2023-01-09 04:48:14', 1),
(3, 'Danh mục', 'Danh mục', NULL, NULL, NULL, 'frontend.cms.taxonomy', 'danh-muc', '{\"og_image\":null,\"template\":\"post.default\",\"block_content\":[\"94\"]}', 2, 'active', 1, 1, '2022-06-02 11:20:50', '2022-12-07 02:02:15', 0),
(4, 'Chi tiết nội dung', NULL, NULL, NULL, NULL, 'frontend.cms.detail', 'chi-tiet-bai-viet', '{\"og_image\":null,\"template\":\"post.detail\",\"block_content\":[\"112\",\"94\",\"93\"]}', 3, 'active', 1, 1, '2022-06-03 02:52:10', '2022-11-06 09:18:33', 0),
(13, 'Liên hệ', 'Liên hệ với chúng tôi', NULL, NULL, NULL, 'frontend.contact', 'lien-he', '{\"og_image\":null,\"template\":\"contact.default\",\"block_content\":[\"94\"]}', 9, 'active', 1, 1, '2022-06-07 07:35:49', '2023-01-07 04:33:59', 1),
(19, 'Tìm kiếm', NULL, NULL, NULL, NULL, 'frontend.search', 'tim-kiem', '{\"og_image\":null,\"template\":\"search.default\",\"block_content\":[\"94\"]}', 10, 'active', 1, 1, '2022-07-18 08:36:34', '2023-01-07 04:33:47', 1),
(30, 'Đại lý', 'Danh sách đại lý', NULL, NULL, NULL, 'frontend.branch', 'dai-ly', '{\"og_image\":null,\"template\":\"branch.default\",\"block_content\":[\"94\"]}', NULL, 'deactive', 1, 1, '2022-12-05 09:09:28', '2023-01-07 04:34:16', 1),
(31, 'Giới thiệu', 'Giới thiệu', NULL, NULL, '<p><strong>Thành lập từ những năm 2000, Công ty Cổ phần Cung ứng nhân lực và thương mại Vietcom luôn tự hào là một trong những doanh nghiệp tiên phong trong lĩnh vực đào tạo và xuất khẩu lao động. Số lượng thực tập sinh được phái cử sang nước ngoài lên đến hơn 5000 lượt người.</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp;&nbsp;Với&nbsp;&nbsp;đội ngũ&nbsp;giáo viên giảng dạy giàu kinh nghiệm, năng động, sáng tạo và tận tâm, Công ty cam kết&nbsp;cung ứng nguồn lao động có chất lượng tốt cho đối tác và chủ sử dụng lao động. Đồng thời, đảm bảo mức thu nhập, quyền và lợi ích hợp pháp cho người tham gia chương trình&nbsp;xuất khẩu lao động Nhật Bản. Người lao động luôn được quan tâm, tạo điều kiện tối ưu từ quá trình tuyển dụng cho đến khi làm việc ở nước ngoài.</strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp;Lấy chữ tín là kim chỉ nam và sự phục vụ tận tâm là nền tảng họat động, Công ty luôn khai thác những đơn hàng đảm bảo nhất với chi phí hợp lý. Chúng tôi luôn nỗ lực phấn đấu để trở thành cầu nối đáp ứng mọi nhu cầu về việc làm cho người lao động.Từ đó, khẳng định sự phát triển bền vững, nâng tầm thương hiệu Công ty.&nbsp;&nbsp;</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><img border=\"0\" height=\"335\" src=\"http://nhatbanxkld.vn/sites/default/files/gp3.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>&nbsp;</strong></h3>\r\n\r\n<p>Trong suốt quá trình hoạt động, công ty đã đưa hàng nghìn người lao động nước ngoài với mức chi phí thấp, công việc và mức lương đảm bảo, giúp nhiều người đi lao động nước ngoài về có số tiền lớn cải thiện kinh tế đời sống. Thị trường chủ yếu của công ty là Nhật bản, thế mạnh của công ty là đơn hàng rất nhiều, đa dạng ngành nghề, phù hợp với mọi nhu cầu người lao động.</p>\r\n\r\n<p><img border=\"0\" height=\"429\" src=\"http://nhatbanxkld.vn/sites/default/files/gp2.jpg\" width=\"700\" /></p>\r\n\r\n<p><strong>Công ty Cổ phần Cung ứng nhân lực và thương mại Vietcom&nbsp;</strong>&nbsp;hoạt động theo phương châm là đặt quyền lợi người lao động lên trước. Tất cả các đơn hàng của công ty đều được kiểm tra nghiêm ngặt và thông tin đầy đủ chính xác về nội dung công việc, mức lương, chủ lao động, địa điểm làm việc cho người lao động, mục đích là để an toàn đảm bảo và giảm rủi ro cho người lao động khi sang làm việc. Nếu người lao động có vấn đề gì xảy ra, công ty luôn đồng hành cùng người lao động để giải quyết vấn đề sao cho có lợi nhất đối với người lao động. Luôn luôn song hành cùng người lao động là lời hứa của chúng tôi!:</p>\r\n\r\n<p>&nbsp;</p>', 'frontend.page', 'gioi-thieu', '{\"og_image\":null,\"template\":\"page.default\",\"block_content\":[\"94\"]}', 4, 'active', 1, 1, '2023-01-07 04:36:02', '2023-01-07 16:28:31', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_popups`
--

CREATE TABLE `tb_popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_popups`
--

INSERT INTO `tb_popups` (`id`, `title`, `content`, `image`, `json_params`, `start_time`, `end_time`, `duration`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Home Popup', '<p>Nullam mollis ultrices est. Nulla in justo lacinia, scelerisque purus et, semper tortor. Donec bibendum leo vitae commodo porttitor. Proin tempus sollicitudin odio in feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ultrices vitae nisl tristique commodo. Phasellus porttitor metus at mattis ultricies. In imperdiet nec nunc in tincidunt.</p>\r\n\r\n<p>Curabitur faucibus dolor at dui lobortis, eget dictum nisi mattis. Fusce risus dui, fringilla non elit sit amet, lobortis interdum eros. Donec mattis lectus quis elit fermentum lacinia. Nullam at ligula semper ante mollis pretium. Nam euismod velit ut quam accumsan vestibulum. Etiam diam augue, dapibus ac placerat nec, accumsan eget nibh. Cras sodales, leo ut volutpat laoreet, velit enim pharetra magna, at dapibus lacus elit vel mi. Nullam a massa ac ligula scelerisque maximus. Quisque dictum quis lorem ut sodales. Duis at semper odio. Morbi in sapien vel lacus posuere mattis ac eget ante. Etiam viverra accumsan rhoncus. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', '/data/cms-image/banner/no-banner.jpg', '{\"page\":[\"1\",\"3\",\"4\"]}', '2022-06-27 00:00:00', '2022-06-28 00:00:00', 5, 'active', 1, 1, '2022-06-27 15:22:00', '2022-06-27 18:01:38'),
(2, 'Thông báo bảo trì hệ thống', NULL, '/data/cms-image/banner/1.jpg', '{\"page\":[\"1\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"13\",\"14\",\"15\",\"16\"]}', '2022-06-28 00:00:00', '2022-06-28 00:00:00', NULL, 'deactive', 1, 1, '2022-06-27 15:42:38', '2022-06-27 18:10:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_roles`
--

CREATE TABLE `tb_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `json_access` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_access`)),
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_roles`
--

INSERT INTO `tb_roles` (`id`, `name`, `description`, `json_access`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Quyền quản trị nội dung', 'Dành cho nhân viên thiết kế và cập nhật nội dung', '{\"menu_id\":[\"72\",\"62\",\"59\",\"51\",\"52\",\"53\",\"80\",\"74\",\"13\",\"70\",\"46\",\"45\",\"44\",\"71\",\"58\",\"42\",\"41\",\"17\"],\"function_code\":[\"call_request.index\",\"call_request.show\",\"call_request.update\",\"contacts.index\",\"contacts.create\",\"contacts.store\",\"contacts.edit\",\"contacts.update\",\"cms_taxonomys.index\",\"cms_taxonomys.create\",\"cms_taxonomys.store\",\"cms_taxonomys.edit\",\"cms_taxonomys.update\",\"cms_posts.index\",\"cms_posts.create\",\"cms_posts.store\",\"cms_posts.edit\",\"cms_posts.update\",\"cms_services.index\",\"cms_services.create\",\"cms_services.store\",\"cms_services.edit\",\"cms_services.update\",\"cms_resources.index\",\"cms_resources.create\",\"cms_resources.store\",\"cms_resources.edit\",\"cms_resources.update\",\"web.social\",\"web.social.update\",\"web.information\",\"web.information.update\",\"web.image\",\"web.image.update\",\"web.source\",\"web.source.update\",\"menus.index\",\"menus.create\",\"menus.store\",\"menus.edit\",\"menus.update\",\"pages.index\",\"pages.create\",\"pages.store\",\"pages.edit\",\"pages.update\",\"block_contents.index\",\"block_contents.create\",\"block_contents.store\",\"block_contents.edit\",\"block_contents.update\"]}', 1, 'active', 1, 1, '2021-10-02 10:59:48', '2023-01-11 02:15:26'),
(2, 'Quản trị hệ thống', 'Quyền dành cho người quản trị hệ thống', '{\"menu_id\":[\"72\",\"62\",\"59\",\"51\",\"52\",\"53\",\"80\",\"74\",\"13\",\"70\",\"46\",\"45\",\"44\",\"71\",\"58\",\"42\",\"41\",\"17\",\"10\",\"3\",\"5\",\"6\"],\"function_code\":[\"call_request.index\",\"call_request.show\",\"call_request.update\",\"call_request.destroy\",\"contacts.index\",\"contacts.create\",\"contacts.store\",\"contacts.edit\",\"contacts.update\",\"contacts.destroy\",\"cms_taxonomys.index\",\"cms_taxonomys.create\",\"cms_taxonomys.store\",\"cms_taxonomys.edit\",\"cms_taxonomys.update\",\"cms_taxonomys.destroy\",\"cms_posts.index\",\"cms_posts.create\",\"cms_posts.store\",\"cms_posts.edit\",\"cms_posts.update\",\"cms_posts.destroy\",\"cms_services.index\",\"cms_services.create\",\"cms_services.store\",\"cms_services.edit\",\"cms_services.update\",\"cms_services.destroy\",\"cms_resources.index\",\"cms_resources.create\",\"cms_resources.store\",\"cms_resources.edit\",\"cms_resources.update\",\"cms_resources.destroy\",\"web.social\",\"web.social.update\",\"web.information\",\"web.information.update\",\"web.image\",\"web.image.update\",\"web.source\",\"web.source.update\",\"menus.index\",\"menus.create\",\"menus.store\",\"menus.edit\",\"menus.update\",\"menus.destroy\",\"pages.index\",\"pages.create\",\"pages.store\",\"pages.edit\",\"pages.update\",\"pages.destroy\",\"block_contents.index\",\"block_contents.create\",\"block_contents.store\",\"block_contents.edit\",\"block_contents.update\",\"block_contents.destroy\",\"admins.index\",\"admins.create\",\"admins.store\",\"admins.edit\",\"admins.update\",\"admins.destroy\",\"roles.index\",\"roles.create\",\"roles.store\",\"roles.edit\",\"roles.update\",\"roles.destroy\",\"admin_menus.index\",\"admin_menus.create\",\"admin_menus.store\",\"admin_menus.edit\",\"admin_menus.update\",\"admin_menus.destroy\"]}', 2, 'active', 1, 1, '2021-10-02 11:28:09', '2023-01-11 02:14:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_widgets`
--

CREATE TABLE `tb_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_code` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `brief` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `image` varchar(255) DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_widgets`
--

INSERT INTO `tb_widgets` (`id`, `widget_code`, `title`, `brief`, `json_params`, `image`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'header', 'Header Style 1', 'Header 1 brief content', '{\"layout\":null,\"style\":null,\"component\":[\"1\",\"2\"]}', NULL, 10, 'active', 1, 1, '2022-05-04 14:59:07', '2022-05-10 07:29:20'),
(2, 'footer', 'Footer Style 1', NULL, '{\"layout\":null,\"style\":null,\"component\":[\"2\",\"1\"]}', NULL, 20, 'active', 1, 1, '2022-05-10 07:29:03', '2022-05-10 07:29:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_widget_configs`
--

CREATE TABLE `tb_widget_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `widget_code` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `is_config` tinyint(1) NOT NULL DEFAULT 1,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_widget_configs`
--

INSERT INTO `tb_widget_configs` (`id`, `name`, `description`, `widget_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Header', NULL, 'header', NULL, 1, 1, 'active', 1, 1, '2022-04-26 09:40:39', '2022-04-26 09:40:39'),
(2, 'Footer', NULL, 'footer', NULL, 1, 2, 'active', 1, 1, '2022-04-26 09:42:09', '2022-04-26 09:42:09'),
(3, 'Left Sidebar', NULL, 'left_sidebar', NULL, 1, 3, 'active', 1, 1, '2022-04-26 09:42:46', '2022-04-26 09:42:46'),
(4, 'Right Sidebar', NULL, 'right_sidebar', NULL, 1, 4, 'active', 1, 1, '2022-04-26 09:43:02', '2022-04-26 09:43:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `affiliate_id` int(11) DEFAULT NULL,
  `affiliate_code` varchar(255) DEFAULT NULL,
  `total_score` double NOT NULL DEFAULT 0,
  `total_money` double NOT NULL DEFAULT 0,
  `total_payment` double NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verification_code` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `is_super_user` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `count_view_info` int(11) NOT NULL DEFAULT 0,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `json_profiles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_profiles`)),
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `affiliate_id`, `affiliate_code`, `total_score`, `total_money`, `total_payment`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_type`, `email_verified`, `email_verification_code`, `status`, `is_super_user`, `avatar`, `birthday`, `sex`, `phone`, `count_view_info`, `country_id`, `city_id`, `district_id`, `json_params`, `json_profiles`, `admin_updated_id`) VALUES
(2, NULL, '2', 105091500, 105091500, 0, 'Thắng Nguyễn', 'meta_thangnh', NULL, '$2y$10$V78sbM3Ny/Tvd/bWOLjCLeDDSgLmwlds8tWQh/nhXWCcQheYbtcQy', NULL, '2022-07-11 02:33:03', '2022-07-14 04:28:17', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '098 226 9600', 0, NULL, NULL, NULL, NULL, NULL, 1),
(3, 2, 'mRpdEly6Bx3', 79243750, 79243750, 25850000, 'Thắng Nguyễn EDU', 'huuthangb2k50@gmail.com', NULL, '$2y$10$FLuZlM/WTtFZPKJW4PyC0efVJeTFeWSzichj1d/55v7Qe0aoEKVJu', NULL, '2022-07-11 03:04:45', '2022-07-14 04:28:17', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '096 220 92 11', 0, NULL, NULL, NULL, NULL, NULL, 1),
(4, 3, 'qBmtRsfkwH4', 0, 0, 0, 'Thắng Nguyễn 2', 'meta_test', NULL, '$2y$10$SGOy7paQ82Pt8lbIg1Z0nuAhCR04yxYTIhXbqbK.3HoSSO/FIrumy', NULL, '2022-07-11 03:20:37', '2022-07-11 03:20:37', NULL, 0, NULL, 'active', 0, NULL, NULL, 'female', '1900 1570', 0, NULL, NULL, NULL, NULL, NULL, 1),
(5, 4, 'U7fj3GtOb95', 0, 0, 0, 'Nguyễn Hữu Thắng', 'meta_thangnguyen', NULL, '$2y$10$qb4Y74yT4dQhwk3ER8Cyq.qZBbif//5SLb3JK7PWysraIQ43Gnu/y', NULL, '2022-07-11 03:53:11', '2022-07-11 03:53:11', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '0936.267.568', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 'lM2Z3vEmFM6', 0, 0, 0, 'Bắc Hà AFL', 'meta_bacha', NULL, '$2y$10$36l5V8DsEp7rWar78gGaZe2XvrtKfg6qD/XvB/n/DFj7cg8iwF18y', NULL, '2022-07-11 18:08:34', '2022-07-11 18:08:34', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0936.267.568', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 'ajXYJMQwtg7', 0, 0, 0, 'Lịch sử Apply', 'test_lai', NULL, '$2y$10$GpNMSXWwC4fHsRciLRCabOIZFakxt1KUh.HkD/mAAaBQYw.C03nd.', NULL, '2022-07-11 18:11:04', '2022-07-11 18:11:04', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0912 568 999', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, '1mQVhkwtR38', 0, 0, 0, 'Đặt lại mật khẩu', 'huuthangb2k250@gmail.com', NULL, '$2y$10$h2VUcj4EumZJHqG/ERzGDex59lR0qff6gkqD/9G4k8NlgE0ASaBEC', NULL, '2022-07-11 18:13:20', '2022-07-11 18:13:20', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '098 226 9600', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 4, 'mLu1qHUYPF9', 0, 0, 0, 'Tags', 'test2@gmail.com', NULL, '$2y$10$g5hcIFbN9zr37wiikne1CuEmLMUC9JMUDfjvyu1URsUGCTLV5h5FK', NULL, '2022-07-11 18:25:50', '2022-07-11 18:30:37', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '1900 1570', 0, NULL, NULL, NULL, NULL, NULL, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `admins_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_admin_menus_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_admin_menus_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_affiliate_historys_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_affiliate_historys_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_affiliate_payments_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_affiliate_payments_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_blocks`
--
ALTER TABLE `tb_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_blocks_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_blocks_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_block_contents_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_block_contents_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_bookings`
--
ALTER TABLE `tb_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_bookings_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_bookings_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_branchs`
--
ALTER TABLE `tb_branchs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_branchs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_branchs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_cms_posts_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_cms_posts_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_cms_taxonomys_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_cms_taxonomys_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_components`
--
ALTER TABLE `tb_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_components_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_components_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_component_configs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_component_configs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_contacts_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_contacts_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_logs`
--
ALTER TABLE `tb_logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_menus`
--
ALTER TABLE `tb_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_menus_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_menus_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_modules`
--
ALTER TABLE `tb_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_modules_module_code_unique` (`module_code`),
  ADD KEY `tb_modules_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_modules_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_module_functions_function_code_unique` (`function_code`),
  ADD KEY `tb_module_functions_module_id_foreign` (`module_id`),
  ADD KEY `tb_module_functions_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_module_functions_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_options_option_name_unique` (`option_name`),
  ADD KEY `tb_options_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_options_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_orders_customer_id_foreign` (`customer_id`),
  ADD KEY `tb_orders_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_orders_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_order_details_order_id_foreign` (`order_id`),
  ADD KEY `tb_order_details_item_id_foreign` (`item_id`),
  ADD KEY `tb_order_details_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_order_details_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_pages`
--
ALTER TABLE `tb_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_pages_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_pages_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_popups`
--
ALTER TABLE `tb_popups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_popups_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_popups_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_roles_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_roles_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_widgets`
--
ALTER TABLE `tb_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_widgets_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_widgets_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_widget_configs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_widget_configs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_admin_updated_id_foreign` (`admin_updated_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tb_blocks`
--
ALTER TABLE `tb_blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT cho bảng `tb_bookings`
--
ALTER TABLE `tb_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_branchs`
--
ALTER TABLE `tb_branchs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `tb_components`
--
ALTER TABLE `tb_components`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `tb_logs`
--
ALTER TABLE `tb_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_menus`
--
ALTER TABLE `tb_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `tb_modules`
--
ALTER TABLE `tb_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT cho bảng `tb_options`
--
ALTER TABLE `tb_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_pages`
--
ALTER TABLE `tb_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `tb_popups`
--
ALTER TABLE `tb_popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_roles`
--
ALTER TABLE `tb_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tb_widgets`
--
ALTER TABLE `tb_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `admins_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  ADD CONSTRAINT `tb_admin_menus_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_admin_menus_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  ADD CONSTRAINT `tb_affiliate_historys_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_affiliate_historys_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  ADD CONSTRAINT `tb_affiliate_payments_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_affiliate_payments_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_blocks`
--
ALTER TABLE `tb_blocks`
  ADD CONSTRAINT `tb_blocks_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_blocks_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  ADD CONSTRAINT `tb_block_contents_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_block_contents_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_bookings`
--
ALTER TABLE `tb_bookings`
  ADD CONSTRAINT `tb_bookings_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_bookings_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_branchs`
--
ALTER TABLE `tb_branchs`
  ADD CONSTRAINT `tb_branchs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_branchs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  ADD CONSTRAINT `tb_cms_posts_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_cms_posts_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  ADD CONSTRAINT `tb_cms_taxonomys_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_cms_taxonomys_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_components`
--
ALTER TABLE `tb_components`
  ADD CONSTRAINT `tb_components_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_components_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  ADD CONSTRAINT `tb_component_configs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_component_configs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  ADD CONSTRAINT `tb_contacts_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_contacts_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_menus`
--
ALTER TABLE `tb_menus`
  ADD CONSTRAINT `tb_menus_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_menus_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_modules`
--
ALTER TABLE `tb_modules`
  ADD CONSTRAINT `tb_modules_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_modules_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  ADD CONSTRAINT `tb_module_functions_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_module_functions_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_options`
--
ALTER TABLE `tb_options`
  ADD CONSTRAINT `tb_options_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_options_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD CONSTRAINT `tb_orders_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_orders_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  ADD CONSTRAINT `tb_order_details_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_order_details_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_pages`
--
ALTER TABLE `tb_pages`
  ADD CONSTRAINT `tb_pages_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_pages_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_popups`
--
ALTER TABLE `tb_popups`
  ADD CONSTRAINT `tb_popups_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_popups_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD CONSTRAINT `tb_roles_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_roles_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_widgets`
--
ALTER TABLE `tb_widgets`
  ADD CONSTRAINT `tb_widgets_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_widgets_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  ADD CONSTRAINT `tb_widget_configs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_widget_configs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
