-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2021 at 07:36 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `media-database`
--
CREATE DATABASE IF NOT EXISTS `media-database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `media-database`;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `image`, `created_at`, `updated_at`) VALUES
(11, 'images/1616055948939.png', '2021-03-18 08:25:48', '2021-03-18 08:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20210314062408-create-table-media.js');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `nomads`
--
CREATE DATABASE IF NOT EXISTS `nomads` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nomads`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/gallery/1Yiip4uKtEo8WnQYDvjH0N58fTyln4hlre6SLoZl.jpeg', '2021-03-07 19:39:48', '2021-03-07 19:39:18', '2021-03-07 19:39:48'),
(2, 1, 'assets/gallery/IidCzLMwYOXqXPsTnR71LjFC9baaC35m9VMlL4q1.jpeg', NULL, '2021-03-07 19:39:56', '2021-03-07 19:39:56'),
(3, 2, 'assets/gallery/MpffJlpMjgbO45rF5r3yNdffRdjMyomVktk3ZAaC.jpeg', NULL, '2021-03-09 00:58:21', '2021-03-09 00:58:21'),
(4, 2, 'assets/gallery/c9NlXUAueGA2jNglLP2MWXwcDSGwuheyvXg33CUC.jpeg', NULL, '2021-03-09 00:58:31', '2021-03-09 00:58:31'),
(5, 3, 'assets/gallery/H4Az6apX2ThHzry0Pl2jeyx2ScQJLa5481neeAAQ.jpeg', NULL, '2021-03-09 00:59:13', '2021-03-09 00:59:13'),
(6, 4, 'assets/gallery/Dg3WfwxZuifsKnEnK7gmNyyZ80QUMz0OXGjElUUf.jpeg', NULL, '2021-03-09 00:59:43', '2021-03-09 00:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_09_015931_create_travel_packages_table', 1),
(5, '2020_11_09_021327_create_galleries_table', 1),
(6, '2020_11_09_021946_create_transactions_table', 1),
(7, '2020_11_09_022803_create_transactions_detail_table', 1),
(8, '2020_11_09_032009_add_roles_field_to_users_table', 1),
(9, '2020_11_10_053906_add_username_field_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `user_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, 200, 'IN_CART', NULL, '2021-03-07 20:00:04', '2021-03-07 20:00:04'),
(2, 1, NULL, 0, 200, 'IN_CART', NULL, '2021-03-07 20:02:50', '2021-03-07 20:02:50'),
(3, 1, NULL, 190, 590, 'PENDING', NULL, '2021-03-07 20:06:12', '2021-03-07 20:06:26'),
(4, 3, NULL, 0, 200, 'PENDING', NULL, '2021-03-09 01:23:08', '2021-03-09 01:24:20'),
(5, 3, NULL, 0, 200, 'PENDING', NULL, '2021-03-09 06:03:32', '2021-03-09 06:04:42'),
(6, 2, NULL, 0, 200, 'PENDING', NULL, '2021-03-09 06:08:37', '2021-03-09 06:09:29');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 'admin', 'ID', 0, '2026-03-08', NULL, '2021-03-07 20:06:12', '2021-03-07 20:06:12'),
(2, 3, 'hari', 'CN', 1, '2021-02-09', NULL, '2021-03-07 20:06:24', '2021-03-07 20:06:24'),
(3, 4, 'admin', 'ID', 0, '2026-03-09', NULL, '2021-03-09 01:23:08', '2021-03-09 01:23:08'),
(4, 4, 'hari', 'CN', 1, '2021-02-09', '2021-03-09 01:23:57', '2021-03-09 01:23:44', '2021-03-09 01:23:57'),
(5, 5, 'admin', 'ID', 0, '2026-03-09', NULL, '2021-03-09 06:03:32', '2021-03-09 06:03:32'),
(6, 5, 'hari', 'CN', 1, '2021-02-09', '2021-03-09 06:04:08', '2021-03-09 06:03:54', '2021-03-09 06:04:08'),
(7, 6, 'admin', 'ID', 0, '2026-03-09', NULL, '2021-03-09 06:08:37', '2021-03-09 06:08:37'),
(8, 6, 'hari', 'CN', 1, '2021-02-09', '2021-03-09 06:09:09', '2021-03-09 06:08:58', '2021-03-09 06:09:09');

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `food` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `food`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Liburan Santai', 'liburan-santai', 'Dubai', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam turpis at enim laoreet consequat. Curabitur vehicula elit nec convallis hendrerit. Suspendisse potenti. Vivamus eleifend porta lorem id lobortis. Ut accumsan dolor porta ullamcorper hendrerit. Praesent tincidunt magna a laoreet porttitor. Nulla commodo hendrerit metus, ut mollis mi laoreet ut. Ut pharetra varius dictum. Nulla faucibus tellus turpis, non rutrum lacus porta non. In vulputate justo id elit fringilla porttitor. Vestibulum vitae fermentum nunc. In feugiat pretium elit cursus euismod.', 'Dance', 'Indonesia', 'Kebab', '2021-03-11', '2D', 'Open Trip', 200, NULL, '2021-03-07 19:31:43', '2021-03-07 19:31:43'),
(2, 'Umroh', 'umroh', 'Arab Saudi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam commodo magna purus, sit amet ullamcorper quam imperdiet a. Nunc varius ante et viverra sodales. Aenean sit amet justo in lectus gravida pharetra. Aliquam elementum semper pulvinar. Proin tincidunt aliquet nulla eu ullamcorper. Etiam nibh orci, varius sit amet quam vitae, efficitur dapibus ipsum. Duis tincidunt mi sit amet pretium vehicula. Donec sed condimentum lacus, imperdiet ultrices tellus. Sed iaculis et tortor ac ornare. Aliquam posuere consectetur orci, in malesuada metus congue luctus. Sed feugiat blandit ligula et aliquam. Vivamus lectus arcu, efficitur a pulvinar ac, semper eget augue.', 'Pray', 'English', 'Kebab', '2021-03-11', '40D', 'Open Trip', 200, NULL, '2021-03-09 00:55:47', '2021-03-09 00:55:47'),
(3, 'GH universal', 'gh-universal', 'Nusapenida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam commodo magna purus, sit amet ullamcorper quam imperdiet a. Nunc varius ante et viverra sodales. Aenean sit amet justo in lectus gravida pharetra. Aliquam elementum semper pulvinar. Proin tincidunt aliquet nulla eu ullamcorper. Etiam nibh orci, varius sit amet quam vitae, efficitur dapibus ipsum. Duis tincidunt mi sit amet pretium vehicula. Donec sed condimentum lacus, imperdiet ultrices tellus. Sed iaculis et tortor ac ornare. Aliquam posuere consectetur orci, in malesuada metus congue luctus. Sed feugiat blandit ligula et aliquam. Vivamus lectus arcu, efficitur a pulvinar ac, semper eget augue.', 'Dance', 'Indonesia', 'seblak', '2021-03-26', '2D', 'Open Trip', 200, NULL, '2021-03-09 00:56:38', '2021-03-09 00:56:38'),
(4, 'Liburan asik', 'liburan-asik', 'Jakarta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam commodo magna purus, sit amet ullamcorper quam imperdiet a. Nunc varius ante et viverra sodales. Aenean sit amet justo in lectus gravida pharetra. Aliquam elementum semper pulvinar. Proin tincidunt aliquet nulla eu ullamcorper. Etiam nibh orci, varius sit amet quam vitae, efficitur dapibus ipsum. Duis tincidunt mi sit amet pretium vehicula. Donec sed condimentum lacus, imperdiet ultrices tellus. Sed iaculis et tortor ac ornare. Aliquam posuere consectetur orci, in malesuada metus congue luctus. Sed feugiat blandit ligula et aliquam. Vivamus lectus arcu, efficitur a pulvinar ac, semper eget augue.', 'Singing', 'Indonesia', 'Kebab', '2021-03-31', '5D', 'Open Trip', 200, NULL, '2021-03-09 00:57:56', '2021-03-09 00:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'hari', 'hdarmawan472@gmail.com', NULL, '$2y$10$IwHcOw5OlF2TcpqaBwOfJOv6fFqLGWjIA6ire8Da5d0XqQYwnMUh6', NULL, '2021-03-07 19:26:40', '2021-03-07 19:26:40', 'ADMIN', 'hari'),
(2, 'hari', 'hdarmawan471@gmail.com', NULL, '$2y$10$l/mp8PgI8iR9AsqvrS8CWuOufIDcA9lHUs/6Blng6yHkfi9hs2hiK', NULL, '2021-03-07 19:28:59', '2021-03-07 19:28:59', 'USER', 'hari'),
(3, 'hari', '123@gmail.com', NULL, '$2y$10$0/y5CwpXC4JNRn72HL35eOJGtEjpxBYHl7QgeS9v9aEZA8wnIjITO', NULL, '2021-03-07 19:48:10', '2021-03-07 19:48:10', 'USER', '123'),
(4, 'hari', '1234@gmail.com', NULL, '$2y$10$YAIQwXalWty7dkZjwnMexOXGGB82BA00WUNEpPnETbw47o.BKonLm', NULL, '2021-03-07 19:49:53', '2021-03-07 19:49:53', 'USER', '123'),
(5, 'hari', '12345@gmail.com', NULL, '$2y$10$7iFvtslekAY1InOqBmjqjuXbacOcok2QncbmLsgv1EXYu7Wu8PnI2', NULL, '2021-03-07 19:52:09', '2021-03-07 19:52:09', 'USER', '123'),
(6, 'hari', 'catal@gmail.com', NULL, '$2y$10$d0OfUTkIZ/DZXDyZCiOVYufCLQEm7WcVR7gvH.XhzNP8Fuu98dlQK', NULL, '2021-03-07 19:54:20', '2021-03-07 19:54:20', 'USER', 'catal'),
(7, 'admin', 'admin@gmail.com', '2021-03-07 19:59:57', '$2y$10$ZWH13isqabGk7WQHNA2PlezBOmC.zmBA1uEFiuePuXh2S//rjFRMu', NULL, '2021-03-07 19:59:38', '2021-03-07 19:59:57', 'ADMIN', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"tugas1pi\",\"table\":\"pendaftaran\"},{\"db\":\"worldlib\",\"table\":\"types\"},{\"db\":\"user-database\",\"table\":\"users\"},{\"db\":\"user-database\",\"table\":\"refresh_tokens\"},{\"db\":\"user-database\",\"table\":\"sequelizemeta\"},{\"db\":\"media-database\",\"table\":\"media\"},{\"db\":\"media-database\",\"table\":\"sequelizemeta\"},{\"db\":\"nomads\",\"table\":\"users\"},{\"db\":\"nomads\",\"table\":\"travel_packages\"},{\"db\":\"nomads\",\"table\":\"transactions\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('worldlib', 'articles', 'name'),
('worldlib', 'items', 'nama'),
('worldlib', 'museums', 'name');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-03-31 05:35:55', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `tugas1pi`
--
CREATE DATABASE IF NOT EXISTS `tugas1pi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tugas1pi`;

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `jeniskelamin` enum('lakilaki','perempuan','others','') NOT NULL,
  `agama` enum('islam','kristenKatolik','kristenProtestan','budha','hindu','khonghuchu','lainnya') NOT NULL,
  `alamat` text NOT NULL,
  `nick` varchar(255) NOT NULL,
  `hastag` varchar(10) NOT NULL,
  `hero` varchar(255) NOT NULL,
  `server` enum('na','latam','eu','kr','ap','br') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`id`, `nama`, `email`, `jeniskelamin`, `agama`, `alamat`, `nick`, `hastag`, `hero`, `server`) VALUES
(6, 'hari1', 'hari1', '', 'islam', 'Jl H.Ulakma Sinaga Perum  graha Harmoni', 'Levi', 'rii2', 'Jet', 'latam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `user-database`
--
CREATE DATABASE IF NOT EXISTS `user-database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `user-database`;

-- --------------------------------------------------------

--
-- Table structure for table `refresh_tokens`
--

CREATE TABLE `refresh_tokens` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `refresh_tokens`
--

INSERT INTO `refresh_tokens` (`id`, `token`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'adjasohfdohsohohajasdon', 1, '2021-03-21 15:23:40', '2021-03-21 15:23:40'),
(4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkIjoxLCJuYW1lIjoiZmFyaGFuMTIzMiIsImVtYWlsIjoiZmFyaGFuMUBnbWFpbC5jb20iLCJyb2xlIjoiYWRtaW4iLCJhdmF0YXIiOm51bGwsInByb2Zlc3Npb24iOiJXZWIgRGV2ZWxvcGVyIn0sImlhdCI6MTYxNjUyMTQ0MywiZXhwIjoxNjE2NjA3ODQzfQ.WKhSmwR_4rvdMMxW6HI_p2n_2wP17XLWxes-Ha_OC4Q', 1, '2021-03-23 17:44:03', '2021-03-23 17:44:03'),
(5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkIjoxLCJuYW1lIjoiZmFyaGFuMTIzMiIsImVtYWlsIjoiZmFyaGFuMUBnbWFpbC5jb20iLCJyb2xlIjoiYWRtaW4iLCJhdmF0YXIiOm51bGwsInByb2Zlc3Npb24iOiJXZWIgRGV2ZWxvcGVyIn0sImlhdCI6MTYxNjUyMjE2NywiZXhwIjoxNjE2NjA4NTY3fQ.xn8ArqaflOI_qIGCMGmL_Xv1vq7GS5isvqRFeNr-OWc', 1, '2021-03-23 17:56:07', '2021-03-23 17:56:07'),
(6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkIjoxLCJuYW1lIjoiZmFyaGFuMTIzMiIsImVtYWlsIjoiZmFyaGFuMUBnbWFpbC5jb20iLCJyb2xlIjoiYWRtaW4iLCJhdmF0YXIiOm51bGwsInByb2Zlc3Npb24iOiJXZWIgRGV2ZWxvcGVyIn0sImlhdCI6MTYxNjUyNTM0MCwiZXhwIjoxNjE2NjExNzQwfQ.I7Uf5OTgTfuYIp7t5UPlg8QIOgOdark5GvTYpgV9AeA', 1, '2021-03-23 18:49:00', '2021-03-23 18:49:00'),
(7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkIjoxLCJuYW1lIjoiZmFyaGFuMTIzMiIsImVtYWlsIjoiZmFyaGFuMUBnbWFpbC5jb20iLCJyb2xlIjoiYWRtaW4iLCJhdmF0YXIiOm51bGwsInByb2Zlc3Npb24iOiJXZWIgRGV2ZWxvcGVyIn0sImlhdCI6MTYxNjY5NTgzMywiZXhwIjoxNjE2NzgyMjMzfQ.79PGyg9BfSLoJZBl9DxYVLekAz-F-txbOnZqlJ-K57A', 1, '2021-03-25 18:10:33', '2021-03-25 18:10:33'),
(8, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkIjoxLCJuYW1lIjoiZmFyaGFuMTIzMiIsImVtYWlsIjoiZmFyaGFuMUBnbWFpbC5jb20iLCJyb2xlIjoiYWRtaW4iLCJhdmF0YXIiOm51bGwsInByb2Zlc3Npb24iOiJXZWIgRGV2ZWxvcGVyIn0sImlhdCI6MTYxNjY5NTk5MSwiZXhwIjoxNjE2NzgyMzkxfQ.M6elJDmjvk8SZJAItZCkkYN-o-fwaeJ7ZnYBLGUE17I', 1, '2021-03-25 18:13:11', '2021-03-25 18:13:11'),
(9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkIjoyLCJuYW1lIjoiZmFyaGFuIiwiZW1haWwiOiJmYXJoYW5AZ21haWwuY29tIiwicm9sZSI6InN0dWRlbnQiLCJhdmF0YXIiOm51bGwsInByb2Zlc3Npb24iOiJiYWNrZW5kIERldmVsb3BlciJ9LCJpYXQiOjE2MTY2OTYyMzUsImV4cCI6MTYxNjc4MjYzNX0.roH4hghN9d0WpZbS7UVM6gW9VdzcfrvzDcloBYtBLiA', 2, '2021-03-25 18:17:15', '2021-03-25 18:17:15'),
(10, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkIjoyLCJuYW1lIjoiZmFyaGFuIiwiZW1haWwiOiJmYXJoYW5AZ21haWwuY29tIiwicm9sZSI6InN0dWRlbnQiLCJhdmF0YXIiOm51bGwsInByb2Zlc3Npb24iOiJiYWNrZW5kIERldmVsb3BlciJ9LCJpYXQiOjE2MTY2OTY4MDUsImV4cCI6MTYxNjc4MzIwNX0.Iobzn8QymY3dg79-BdR0chqf7Xi2F-vUVA01rvUgfMo', 2, '2021-03-25 18:26:45', '2021-03-25 18:26:45'),
(11, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkIjoyLCJuYW1lIjoiZmFyaGFuIiwiZW1haWwiOiJmYXJoYW5AZ21haWwuY29tIiwicm9sZSI6InN0dWRlbnQiLCJhdmF0YXIiOm51bGwsInByb2Zlc3Npb24iOiJiYWNrZW5kIERldmVsb3BlciJ9LCJpYXQiOjE2MTY2OTY4NjgsImV4cCI6MTYxNjc4MzI2OH0.pvqeBAvDIsPZWE3ccQ9acLA64uk0d9WvopBgcPCvALA', 2, '2021-03-25 18:27:48', '2021-03-25 18:27:48'),
(12, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkIjoyLCJuYW1lIjoiaGFyaSIsImVtYWlsIjoiZmFyaGFuQGdtYWlsLmNvbSIsInJvbGUiOiJzdHVkZW50IiwiYXZhdGFyIjpudWxsLCJwcm9mZXNzaW9uIjoiYWkgZGV2ZWxvcGVyIn0sImlhdCI6MTYxNjY5NzM0NywiZXhwIjoxNjE2NzgzNzQ3fQ.BNlq1MHwTkbLupDRuP_2ClKh5GELfRy3axwNSvmX8_Q', 2, '2021-03-25 18:35:47', '2021-03-25 18:35:47');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20210318141847-create-table-users.js'),
('20210318141927-create-table-refresh-token.js');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `avatar` int(11) DEFAULT NULL,
  `role` enum('admin','student') NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `profession`, `avatar`, `role`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'farhan1232', 'Web Developer', NULL, 'admin', 'farhan1@gmail.com', '$2b$10$WnUVHQOjSZh7Goz8WeHjI.F3/s4y3AXVWquyDD5A5Z8usU1Ql9I8q', '2021-03-18 15:18:31', '2021-03-21 06:55:10'),
(2, 'hari', 'ai developer', NULL, 'student', 'farhan@gmail.com', '$2b$10$gclenLPI0RD1JQi8vgeTseLDHQQJ4STwv1.AdjrMOLA3MLfo3VQd.', '2021-03-18 15:18:31', '2021-03-25 18:31:23'),
(3, 'farhan', 'webdev', NULL, 'student', 'hdarmawan471@gmail.com', '$2b$10$FoAxbbabmP0kXmmEjK0JDumYFgvyX.zU2azO2jMVC.Eugo8j3uTFG', '2021-03-18 17:04:13', '2021-03-18 17:04:13'),
(4, 'gendu', NULL, NULL, 'student', 'hdarmawan473@gmail.com', '$2b$10$ki5DpOUbWGUydmOxtrTD6e6pJr/rHbF2JiXDqN5/rdt1crH8HfpAi', '2021-03-18 17:05:12', '2021-03-18 17:05:12'),
(5, 'alya', NULL, NULL, 'student', '1@gmail.com', '$2b$10$uCfGTmzgelfK1d4HaCvSDuheKRzHNJa//5B2VpF7O1NqI/apkn/p2', '2021-03-23 17:16:51', '2021-03-23 17:16:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `REFRESH_TOKEN_USER_ID` (`user_id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE_USERS_EMAIL` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  ADD CONSTRAINT `REFRESH_TOKEN_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Database: `worldlib`
--
CREATE DATABASE IF NOT EXISTS `worldlib` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `worldlib`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `museum_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `name`, `description`, `created_at`, `updated_at`, `museum_id`) VALUES
(1, 'KOLEKSI WALTER SPIESss', 'Walter Spies (1895 - 1942) adalah seniman Jerman kelahiran Moskow yang menetap di Hindia Belanda sejak 1923. Ia mempengaruhi arahan seni Bali melalui Pita Maha, koperasi seniman yang ia dirikan bersama seniman Belanda Rudolf Bonnet untuk membimbing pelukis setempat, membantu mengembangkan keterampilan melukis dan membangun pasar untuk karya seni mereka. Spies mati muda saat kapal yang mengangkutnya ke Ceylon bersama orang-orang yang dideportasi Belanda lainnya karam dibom oleh Jepang.', '2021-01-05 00:34:40', '2021-01-05 21:41:36', 5),
(2, 'OPEN THE DOOR', 'For two weeks in the spring of 2013, twelve professional artists from France and Texas each turned one side of a door into a work of art.\r\n\r\nThey are part of a groundbreaking public art project called OPEN THE DOOR, originated by the Texan-French Alliance for the Arts and the Paris art collective, 9eme Concept. With these collaborative works of art and other events, we seek to break down social barriers and cultural stereotypes while focusing on intercultural understanding.\r\n\r\n60 doors were created and are being installed in 19 locations around Houston . Since the beginning of 2013, around sixty unique doors were produced and are being installed in nineteen locations around the city of Houston. The locations are highlighted on a map that serves as a « Cultural Trail » and guide the public to all the OPEN THE DOOR events pointing to the doors as well as the diverse cultural local neighborhoods around Houston. French and American musicians, dancers, storytellers, etc. will perform at each location. Opening receptions for the installations will feature speakers who will expand upon the ideals and goals of OPEN THE DOOR.', '2021-01-05 00:44:59', '2021-01-05 00:44:59', 7),
(3, 'Sophie Taeuber-Arpp', 'Sophie Taeuber-Arp was a central figure in many of the most important avant-garde movements of the first half of the twentieth-century  \r\nUniting her uniquely interdisciplinary output was a strong visual language of abstraction, which she investigated across mediums in her multifaceted practice as a painter, sculptor, dancer, teacher, writer, and designer of textiles, fashion accessories, stage sets, marionettes, and interiors. Born in Davos, Switzerland, Taeuber-Arp studied art and design in Germany before eventually moving to Zurich, where she taught textile design at the School of Applied Arts and where, in 1915, she met the Alsatian artist and poet Jean (Hans) Arp, who would become her husband and frequent collaborator.', '2021-01-05 21:02:19', '2021-01-05 22:21:12', 8),
(4, 'Fashioning a Nation', 'The Index of American Design is an extraordinary collection of more than 18,000 watercolor renderings of American decorative art objects from the colonial period through the 19th Century. Produced between 1936 and 1942, this visual archive reflects the expanding interest in American material culture that began to emerge at that time.\r\n\r\nThis exhibition provides a brief survey of American fashions from 1740 to 1895. Most of the costumes represented are formal or \"fine\" garments of the kind that were preserved and handed down in families from one generation to the next. As fashion is influenced by social and political circumstances and by changes in technology, these costumes provide some insight into the character and quality of American life from colonial times into the period of the industrial revolution.', '2021-01-05 22:27:05', '2021-01-05 22:27:05', 9),
(5, 'Tezuka Osamu the Dawn of TV animation', 'With the arrival of Astro Boy flying beyond the sky, the time shifted from cartoon theatrical films to TV animation.\r\nWelcome! \r\n\r\nHere we introduce you an aspect of Tezuka Osamu as an animator, who revolutionized the history of Japanese Manga and created a lot of great masterpieces through his life.', '2021-01-05 22:49:38', '2021-01-05 22:52:23', 16);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_time` date DEFAULT NULL,
  `dead_time` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `description`, `birth_time`, `dead_time`, `created_at`, `updated_at`) VALUES
(1, 'Anonymous', NULL, NULL, NULL, '2021-01-05 00:05:13', '2021-01-05 22:17:43'),
(2, 'Walter Spies', 'Walter Spies merupakan pelukis, perupa, dan juga pemusik. Ia adalah tokoh di belakang modernisasi seni di Jawa dan Bali.\r\nSpies lahir sebagai anak seorang peniaga kaya Jerman yang telah lama menetap di Moskwa. Semenjak muda ia telah menggemari seni musik, seni lukis, dan seni rupa. Ia mengenal Rachmaninoff dan mengagumi Gauguin.\r\nSelepas Perang Dunia I, Spies sempat tinggal beberapa lama di Jerman dan berteman dengan sutradara ternama masa itu, Friedrich Murnau. Kelak, Murnau-lah yang banyak membantu Spies secara finansial di perantauan. Di Jerman ia sudah cukup ternama karena lukisan-lukisannya, namun ia merasa tidak kerasan karena sebagai homoseksual ia selalu dicari-cari polisi.\r\nPada tahun 1923 ia datang ke Jawa dan menetap pertama kali di Yogyakarta. Dia dipekerjakan oleh sultan Yogya sebagai pianis istana dan diminta membantu kegiatan seni keraton. Spies-lah yang pertama kali memperkenalkan notasi angka bagi gamelan di keraton Yogyakarta. Notasi ini kemudian dikembangkan di kraton-kraton lain dan digunakan hingga sekarang.\r\nSetelah kontraknya selesai, ia lalu pindah ke Ubud, Bali, pada tahun 1927. Di sinilah ia menemukan tempat impiannya dan menetap hingga menjelang kematiannya.', '1895-07-15', '1942-01-19', '2021-01-05 00:08:17', '2021-01-05 00:08:17'),
(3, 'Sophie Taeuber-Arp', 'Sophie Henriette Gertrud Taeuber-Arp was a Swiss artist, painter, sculptor, textile designer, furniture and interior designer, architect and dancer. She is considered one of the most important artists of concrete art and geometric abstraction of the 20th century.', '1889-01-19', '1943-01-13', '2021-01-05 20:58:03', '2021-01-05 20:58:03'),
(4, 'Henri Rousseau', 'Henri Julien Félix Rousseau adalah pelukis asal Prancis pada masa Post-Impresionis. Ia dikenal dengan sebutan Le Douanier. Selama masa hidupnya, ia terkenal dengan karya artistik bernilai tinggi yang ia pelajari secara otodidak.', '1844-05-21', '1910-09-02', '2021-01-05 20:58:54', '2021-01-05 20:58:54'),
(5, 'Paul Gauguin', 'Eugène Henri Paul Gauguin adalah pelukis pasca-Impresionis Prancis yang tidak dihargai sampai setelah kematiannya. Gauguin sekarang diakui sebagai pelukis eksperimental dan Synthetist dari warna yang ia gunakan. Gaya yang jelas berbeda dari Impresionisme. Menjelang akhir hidupnya ia menghabiskan sepuluh tahun di Polinesia, dan sebagian besar lukisan terakhirnya menggambarkan masyarakat dan pemandangan dari wilayah itu.\r\nKaryanya ini memengaruhi gerakan avant-garde Prancis dan juga seniman-seniman modern, seperti Pablo Picasso dan Matisse. Gauguin populer setelah kematian-nya berkat upaya dari kolektor Ambroise Vollard, yang mengorganisir pameran karyanya setelah kematiannya dan menyelenggarakan dua pameran penghargaan di Paris. Gauguin adalah seorang tokoh penting di gerakan Simbolis sebagai pelukis, pematung, seniman cetak, seniman keramik, dan penulis. Ekspresi yang melekat dari subyek dalam lukisannya terpengaruh gaya cloisonnist, dan pelopor untuk gaya Primitivisme dan kembali ke pastoral. Dia juga berpengaruh pendukung dari ukiran kayu dan ukiran kayu sebagai bentuk seni.', '1848-06-07', '1903-05-08', '2021-01-05 21:01:33', '2021-01-05 21:01:33'),
(6, 'Nic Aluf', NULL, '1884-01-01', NULL, '2021-01-05 21:06:24', '2021-01-05 21:06:24'),
(7, 'Vincent van Gogh', 'Eugène Henri Paul Gauguin adalah pelukis pasca-Impresionis Prancis yang tidak dihargai sampai setelah kematiannya. Gauguin sekarang diakui sebagai pelukis eksperimental dan Synthetist dari warna yang ia gunakan. Gaya yang jelas berbeda dari Impresionisme. Menjelang akhir hidupnya ia menghabiskan sepuluh tahun di Polinesia, dan sebagian besar lukisan terakhirnya menggambarkan masyarakat dan pemandangan dari wilayah itu.\r\nKaryanya ini memengaruhi gerakan avant-garde Prancis dan juga seniman-seniman modern, seperti Pablo Picasso dan Matisse. Gauguin populer setelah kematian-nya berkat upaya dari kolektor Ambroise Vollard, yang mengorganisir pameran karyanya setelah kematiannya dan menyelenggarakan dua pameran penghargaan di Paris. Gauguin adalah seorang tokoh penting di gerakan Simbolis sebagai pelukis, pematung, seniman cetak, seniman keramik, dan penulis. Ekspresi yang melekat dari subyek dalam lukisannya terpengaruh gaya cloisonnist, dan pelopor untuk gaya Primitivisme dan kembali ke pastoral. Dia juga berpengaruh pendukung dari ukiran kayu dan ukiran kayu sebagai bentuk seni.', '1853-03-30', '1890-06-29', '2021-01-05 21:22:56', '2021-01-05 22:17:59'),
(8, 'Lillian Causey', NULL, NULL, NULL, '2021-01-05 22:27:37', '2021-01-05 22:27:37'),
(9, 'Melita Hofmann', NULL, NULL, NULL, '2021-01-05 22:36:34', '2021-01-05 22:36:34'),
(10, 'Johannes Vermeer', 'Johannes, Jan atau Johan Vermeer adalah seorang pelukis Belanda yang terutama melukis pemandangan dalam ruang di rumah kediaman kelas menengah. Semasa hidupnya, Vermeer adalah seorang pelukis genre art tingkat provinsi yang kesuksesannya sedang-sedang saja. Dia tampaknya tidak pernah menjadi kaya, dia mati meninggalkan utang untuk istri dan anak-anaknya, kemungkinan karena lukisan yang dihasilkannya relatif sedikit.\r\nVermeer bekerja perlahan-lahan dan dengan sangat teliti, menggunakan warna-warni cerah dan kadang-kadang pigmen berharga mahal, terutama memakai warna kesenangannya, yakni cornflower biru dan kuning. Dia sangat terkenal untuk ketelitian pencahayaan dalam lukisannya.\r\nLukisan Vermeer sebagian besar adalah pemandangan interior dalam rumah. \"Hampir semua lukisan tampaknya berlokasi di dalam dua kamar agak kecil di rumahnya di Delft. Lukisan-lukisannya menunjukkan perabot dan dekorasi dalam berbagai susunan, dan sering menggambarkan orang yang sama, sebagian besar wanita\".\r\nMeskipun telah diakui sebagai pelukis semasa hidupnya di Delft dan Den Haag, kepopulerannya yang hanya sedang-sedang saja membuat Vermeer sempat terlupakan orang setelah ia meninggal dunia.', '1632-10-01', '1675-12-01', '2021-01-05 22:39:36', '2021-01-05 22:39:36'),
(11, 'Osamu Tezuka', 'Dr. Osamu Tezuka adalah seorang mangaka dan animator Jepang yang dilahirkan di Prefektur Osaka, Jepang. Dia paling terkenal sebagai pencipta tokoh Atom Boy.\r\nTezuka sering disebut sebagai \"bapak manga\" berkat karyanya yang sangat banyak. Dia dianggap sebagai seorang pionir dalam teknik dan genre-genre manga. Gaya \"mata besar\" yang sering ditemukan dalam tokoh-tokoh manga adalah hasil ciptaan Tezuka, yang mendasarkannya pada kartun-kartun pada masa itu, seperti Betty Boop dan Miki Tikus.\r\nMengawali karier sebagai seorang dokter, Tezuka kemudian beralih menggambar manga. Sepanjang kariernya, Tezuka telah menghasilkan lebih dari 700 manga dalam sekitar 170.000 halaman.\r\nTezuka juga mendirikan studio animasi Mushi Pro, yang merupakan pionir animasi TV di Jepang.', '1928-11-03', '1989-02-09', '2021-01-05 22:48:58', '2021-01-05 22:48:58');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `country_description`, `country_image`, `created_at`, `updated_at`) VALUES
(10, 'Indonesia', 'Indonesia disebut juga dengan Republik Indonesia atau Negara Kesatuan Republik Indonesia, adalah negara di Asia Tenggara yang dilintasi garis khatulistiwa dan berada di antara daratan benua Asia dan Australia, serta antara Samudra Pasifik dan Samudra Hindia. Indonesia adalah negara kepulauan terbesar di dunia yang terdiri dari 17.504 pulau. Nama alternatif yang biasa dipakai adalah Nusantara. Dengan populasi Hampir 270.054.853 jiwa pada tahun 2018, Indonesia adalah negara berpenduduk terbesar keempat di dunia dan negara yang berpenduduk Muslim terbesar di dunia, dengan lebih dari 230 juta jiwa.\r\nBentuk negara Indonesia adalah negara kesatuan dan bentuk pemerintahan Indonesia adalah republik, dengan Dewan Perwakilan Rakyat, Dewan Perwakilan Daerah dan Presiden yang dipilih secara langsung.\r\nIbu kota negara Indonesia adalah Jakarta. Indonesia berbatasan darat dengan Malaysia di Pulau Kalimantan, dengan Papua Nugini di Pulau Papua dan dengan Timor Leste di Pulau Timor. Negara tetangga lainnya adalah Singapura, Filipina, Australia, dan wilayah persatuan Kepulauan Andaman dan Nikobar di India.\r\nSejarah Indonesia banyak dipengaruhi oleh bangsa lainnya.', 'assets/gallery/3y5qHTJXTmNtx1ljUGhHrbvzzccK7LaIf5JKMtjT.jpg', '2021-01-04 23:04:13', '2021-01-05 23:14:43'),
(11, 'Amerika Serikat', 'Amerika Serikat, disingkat dengan AS, atau secara umum dikenal dengan Amerika saja, adalah sebuah negara republik konstitusional federal yang terdiri dari lima puluh negara bagian dan sebuah distrik federal. Negara ini terletak di bagian tengah Amerika Utara, yang menjadi lokasi dari empat puluh delapan negara bagian yang saling bersebelahan, beserta distrik ibu kota Washington, D.C.. Amerika Serikat diapit oleh Samudra Pasifik dan Atlantik di sebelah barat dan timur, berbatasan dengan Kanada di sebelah utara, dan Meksiko di sebelah selatan. Dua negara bagian lainnya, yaitu Alaska dan Hawaii, terletak terpisah dari dataran utama Amerika Serikat. Negara bagian Alaska terletak di sebelah ujung barat laut Amerika Utara, berbatasan dengan Kanada di sebelah timur dan Rusia di sebelah barat, yang dipisahkan oleh Selat Bering. Sedangkan negara bagian Hawaii adalah sebuah kepulauan yang berlokasi di Samudra Pasifik. Amerika Serikat juga memiliki beberapa teritori di Pasifik dan Karibia. Dengan luas wilayah 3,79 juta mil persegi dan jumlah penduduk sebanyak 315 juta jiwa, Amerika Serikat merupakan negara terluas ketiga atau keempat di dunia, dan terbesar ketiga menurut jumlah penduduk.', 'assets/gallery/ozFHSpjl8LyQM7nkKmoaz8VUcHiWLn2MC7gk8FTz.jpg', '2021-01-04 23:27:07', '2021-01-05 23:14:24'),
(12, 'Prancis', 'Republik Prancis atau Prancis adalah sebuah negara yang teritori metropolitannya terletak di Eropa Barat dan juga memiliki berbagai pulau dan teritori seberang laut yang terletak di benua lain. Prancis Metropolitan memanjang dari Laut Mediterania hingga Selat Inggris dan Laut Utara, dan dari Rhine ke Samudera Atlantik. Orang Prancis sering menyebut Prancis Metropolitan sebagai \"L\'Hexagone\" karena bentuk geometris teritorinya. Prancis adalah sebuah republik kesatuan semi-presidensial. Ideologi utamanya tercantum dalam Deklarasi Hak Asasi Manusia dan Warga Negara.\r\nPrancis berbatasan dengan Belgia, Luksemburg, Jerman, Swiss, Italia, Monako, Andorra, dan Spanyol. Karena memiliki departemen seberang laut, Prancis juga berbagi perbatasan tanah dengan Brasil dan Suriname, dan Sint Maarten. Prancis juga terhubung dengan Britania Raya oleh Terowongan Channel, yang berada di bawah Selat Inggris.\r\nPrancis telah menjadi salah satu kekuatan terbesar dunia sejak pertengahan abad ke-17. Pada abad ke-18 dan 19, Prancis membuat salah satu imperium kolonial terbesar saat itu, membentang sepanjang Afrika Barat dan Asia Tenggara, memengaruhi budaya dan politik daerah.', 'assets/gallery/13aCZFPBTvD7nwHWBDMWVwzofbqCCwRKvYXjB5b1.jpg', '2021-01-04 23:28:38', '2021-01-04 23:28:38'),
(13, 'Jerman', 'PrancisRepublik Federal Jerman adalah negara berbentuk federasi di Eropa Barat. Negara ini memiliki posisi ekonomi dan politik yang sangat penting di Eropa maupun di dunia. Dengan luas 357.021 kilometer persegi dan penduduk sekitar 82 juta jiwa, negara dengan 16 negara bagian ini menjadi anggota kunci organisasi Uni Eropa, penghubung transportasi barang dan jasa antarnegara sekawasan, serta menjadi negara dengan penduduk imigran ketiga terbesar di dunia.\r\nMeskipun negara-bangsa Jerman modern baru terbentuk pada tahun 1871 seusai Perang Prancis-Prusia, satuan-satuan politik di wilayah ini telah lama memainkan posisi penting dalam era monarki di Eropa sejak penguasaan oleh Kekaisaran Romawi menjelang era modern hingga berakhirnya Perang Napoleon. Penyatuan wilayah Eropa Tengah pada masa Karl Yang Agung, pemimpin Kerajaan Franka, pada abad ke-8 menjadi rintisan terbentuknya suatu imperium konfederatif berusia hampir 1000 tahun yang dikenal sebagai Imperium Romawi Suci. Imperium ini sangat mewarnai budaya feodal di seluruh Eropa serta menjadi pusat Reformasi gereja kristen pada abad ke-16 yang melahirkan Protestantisme.', 'assets/gallery/SeTQ7bsYgBEVjSBCyzhEB9uCOnwyrNZBTG9PANXV.jpg', '2021-01-04 23:30:04', '2021-01-04 23:30:04'),
(14, 'Korea Selatan', 'Republik Korea atau biasa dikenal sebagai Korea Selatan atau Korsel adalah sebuah negara di Asia Timur yang meliputi bagian selatan Semenanjung Korea. Di sebelah utara, Republik Korea berbataskan Korea Utara, di mana keduanya bersatu sebagai sebuah negara hingga tahun 1948. Laut Kuning di sebelah barat, Jepang berada di seberang Laut Jepang dan Selat Korea berada di bagian tenggara. Negara ini dikenal dengan nama Hanguk. oleh penduduk Korea Selatan dan disebut Namchosŏn di Korea Utara. Ibu kota Korea Selatan adalah Seoul.\r\nPenemuan arkeologis menunjukkan bahwa Semenanjung Korea telah didiami sejak Zaman Paleolitikum Awal. Sejarah Korea dimulai dari pembentukan Gojoseon pada 2333 SM. oleh Dan-gun. Setelah unifikasi Tiga Kerajaan Korea di bawah Silla pada 668 M, Korea menjadi satu di bawah Dinasti Goryeo dan Dinasti Joseon hingga akhir Kekaisaran Han Raya pada 1910 karena dianeksasi oleh Jepang. Setelah liberalisasi dan pendudukan oleh Uni Soviet dan Amerika Serikat pada akhir Perang Dunia II, Wilayah Korea akhirnya dibagi menjadi Korea Utara dan Korea Selatan.', 'assets/gallery/gihLj2FtHAK3oadtAaqA1hMCOvUuEfvgrsHdtcdV.jpg', '2021-01-04 23:31:17', '2021-01-04 23:31:17'),
(15, 'Jepang', 'Jepang adalah sebuah negara kepulauan di Asia Timur. Letaknya di ujung barat Samudra Pasifik, di sebelah timur Laut Jepang, dan bertetangga dengan Republik Rakyat Tiongkok, Korea, dan Rusia. Pulau-pulau paling utara berada di Laut Okhotsk, dan wilayah paling selatan berupa kelompok pulau-pulau kecil di Laut Tiongkok Timur, tepatnya di sebelah selatan Okinawa yang bertetangga dengan Taiwan.\r\nJepang terdiri dari 6.852 pulau dan menjadikannya sebagai negara kepulauan. Pulau-pulau utama dari utara ke selatan adalah Hokkaido, Honshu, Shikoku, dan Kyushu. Sekitar 97% wilayah daratan Jepang berada di keempat pulau terbesarnya. Sebagian besar pulau di Jepang bergunung-gunung, dan sebagian di antaranya merupakan gunung berapi. Gunung tertinggi di Jepang adalah Gunung Fuji yang merupakan sebuah gunung berapi. Penduduk Jepang berjumlah 128 juta orang, dan berada di peringkat ke-10 negara berpenduduk terbanyak di dunia. Tokyo secara de facto adalah ibu kota Jepang, dan berkedudukan sebagai sebuah prefektur. Tokyo Raya adalah sebutan untuk Tokyo dan beberapa kota yang berada di prefektur sekelilingnya.', 'assets/gallery/nwkIZkPE3tg7q9YdKn64vZVBrNollGH5OkcfOqES.jpg', '2021-01-04 23:31:50', '2021-01-04 23:31:50'),
(16, 'Spanyol', 'Spanyol, secara resmi dikenal dengan sebutan Kerajaan Spanyol adalah sebuah negara di Eropa barat daya yang, bersama Portugal, terdapat di Semenanjung Iberia. Batas darat Spanyol dengan Eropa adalah Pegunungan Pirenia dengan Prancis dan Andorra. Wilayahnya terdiri dari kota Ceuta dan Melilla di Afrika Utara, Kepulauan Canary di Samudra Atlantik, dan berbagai pulau di Laut Tengah.\r\nWilayah Spanyol juga termasuk Kepulauan Balearic di Mediterania, Kepulauan Canary di Samudera Atlantik lepas pantai Afrika, dan dua kota otonom di Afrika Utara, Ceuta dan Melilla, yang berbatasan Maroko, ditambah Alboran, Kepulauan Chafarinas, Alhucemas, Vélez de la Gomera dan pulau kecil lainnya termasuk Perejil. Selain itu, kota Llívia adalah eksklave Spanyol terletak di dalam wilayah Prancis. Dengan luas 505.992 kilometer persegi, Spanyol adalah negara terbesar kedua di Eropa Barat dan Uni Eropa dan negara terbesar kelima di Eropa.\r\nManusia modern pertama kali tiba di Semenanjung Iberia sekitar 35.000 tahun yang lalu. Ini berada di bawah kekuasaan Romawi sekitar 200 SM, setelah wilayah itu bernama Hispania.', 'assets/gallery/pHlPwlNhmr4TZX6WYVfQh7kE3Ocd8twcca3186F0.jpg', '2021-01-04 23:33:09', '2021-01-04 23:33:09'),
(17, 'Meksiko', 'Negara Meksiko Serikat atau Meksiko adalah sebuah negara yang terletak di Amerika Utara berbatasan dengan Amerika Serikat, Guatemala dan Belize di sebelah tenggara, Samudra Pasifik di barat dan Teluk Meksiko dan Laut Karibia di sebelah timur. Ia merupakan negara terbesar ketiga di Amerika Latin dan juga negara yang paling banyak berbahasa Spanyol. Nama negara ini diambil dari nama ibu kotanya yang berasal dari nama ibu kota kuno Aztec yaitu Mexico-Tenochtitlan. Mexi ialah sebagian nama Mexitli, yaitu nama dewa perang sedangkan co bermakna \'tempat\' dan ca berarti \'orang\'.', 'assets/gallery/veC25iMijmJLobSkJqfqTKaNBbZev45wZfpxqLGE.jpg', '2021-01-04 23:34:26', '2021-01-04 23:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `museum_id` bigint(20) UNSIGNED DEFAULT NULL,
  `artist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `article_id` bigint(20) UNSIGNED DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `nama`, `description`, `date_created`, `photo`, `created_at`, `updated_at`, `museum_id`, `artist_id`, `type_id`, `article_id`, `country_id`) VALUES
(1, 'Arjuna bertapa', 'Diadopsi dari cerita Arjuna Wiwaha, yang melukiskan Arjuna sedang bertapa di Gunung Indrakila, tidak tergoda pada tipu muslihat bidadari yang dikirim untuk menggodanya.', '1996-01-01', 'assets/gallery/berRsl3qVjrt6gBYJK4KFcbAviWR3wIY9uJNXnPk.jpg', '2021-01-05 00:06:39', '2021-01-05 00:35:19', 5, 1, 1, 1, 10),
(2, 'pemandangan dari atas', 'Menggambarkan kehidupan desa di pulau tropis. Langit terlukis di atas sawah selama musim berangin. Sebagai latar belakang adalah Gunung Agung, gunung berapi sakral', '1943-01-01', 'assets/gallery/rahaRn8EKcnlrNElT3GkvSOLGzRRxjy1YZLsYYqH.jpg', '2021-01-05 00:11:31', '2021-01-05 22:11:13', 5, 2, 1, 1, 10),
(3, 'Jalanan Desa', '-', '1929-01-01', 'assets/gallery/t3j4Z3YHKZ5z3V8gx45tpJvWuwwkPwzzHofkXeBm.jpg', '2021-01-05 00:14:42', '2021-01-05 00:37:26', 5, 2, 1, 1, 10),
(4, 'Pemandangan dengan Bayangan Sapi', '-', '1939-01-01', 'assets/gallery/7B9GvgwF4tNRgOW4ZZNNsXuthVDTKb6OSEBSL2rc.jpg', '2021-01-05 00:17:13', '2021-01-05 00:21:37', 5, 2, 1, NULL, 10),
(5, 'Perpisahan', '-', '1921-01-01', 'assets/gallery/H8C9d51gzMhzMIMe4iGNqg5p6ntb7xexIuShqVLX.jpg', '2021-01-05 00:32:46', '2021-01-05 00:32:46', 5, 2, 1, NULL, 10),
(6, 'Composition of Circles and Overlapping Angles', '-', '1930-01-01', 'assets/gallery/fpr42XVmzxVSZf9sioFkRRme3BsDRW7eZ7Bx3XhU.jpg', '2021-01-05 21:04:15', '2021-01-05 21:04:15', 8, 3, 1, 3, 11),
(7, 'Sophie Taeuber-Arp with Dada Head', 'Portrait of the Swiss artist Sophie Taeuber-Art shown with one of her Dadaist sculptures.', '1920-01-01', 'assets/gallery/hqdoEIZTcr1x1qcgIghoEIInFIrvRrtwaSvFzPmh.jpg', '2021-01-05 21:07:52', '2021-01-05 21:07:52', 8, 6, NULL, 3, 11),
(8, 'Sophie Taeuber-Arp dancing', 'Marionette designed by Sophie Taeuber-Arp for a performance of the German opera König Hirsch [The Stag King].', '1917-01-01', 'assets/gallery/y43qKm9HQD839X5wI3BAJLKUw0KKroBmv1QS0HYM.jpg', '2021-01-05 21:11:42', '2021-01-05 21:11:42', 8, 1, NULL, 3, 11),
(9, 'installation view of \"Dada,', NULL, '2006-01-01', 'assets/gallery/aareyjd4jsXiQW8zuXqTO1zvoclpAvZZJvQMSZq9.jpg', '2021-01-05 21:14:13', '2021-01-05 21:14:13', 8, 1, NULL, 3, 11),
(10, 'Dada Head', NULL, '1920-01-01', 'assets/gallery/7yQitr0Q7ndZqmP4knpRkibCPDMbNusVBGMSOUt4.jpg', '2021-01-05 21:16:33', '2021-01-05 21:59:21', 8, 3, 4, 3, 11),
(11, 'The Dream,Le Rêve', 'Although Rousseau completed more than twenty-five jungle paintings in his career, he never traveled outside France. He instead drew on images of the exotic as it was presented to the urban dweller through popular literature, colonial expositions, and the Paris Zoo. The lush jungle, wild animals, and mysterious horn player featured in this work were inspired by Rousseau\'s visits to the city\'s natural history museum and Jardin des plantes (a combined zoo and botanical garden). Of his visits the artist said, \"When I am in these hothouses and see the strange plants from exotic lands, it seems to me that I am entering a dream.\" The nude model in this painting reclines on a sofa, mixing the domestic and the exotic.', '1910-01-01', 'assets/gallery/RvITJoSF5jbfwBC8fvcY1PZa0xGBT6GtzJkVKFny.jpg', '2021-01-05 21:19:30', '2021-01-05 21:19:30', 8, 4, 1, NULL, 11),
(13, 'assd', 'sadasdasda', '9222-01-02', 'assets/gallery/gGlWhtA3i5fnJ5JwGp873ev0L3pyXOY3ldsz8f8l.jpg', '2021-01-05 22:00:12', '2021-01-05 22:00:12', 8, 7, 1, 3, 11),
(14, 'The Olive Trees', NULL, '1889-01-01', 'assets/gallery/GV5hI2CZ4juaSGASdvyXzwZPjvduOcRoWCXdM5Fc.jpg', '2021-01-05 22:19:27', '2021-01-05 22:19:27', 8, 7, 1, NULL, 11),
(15, 'Gown', NULL, '1840-01-01', 'assets/gallery/YJdVyBTANVFtydkkMrucbqY5ddvGD29Q2tPubsVM.jpg', '2021-01-05 22:29:53', '2021-01-05 22:29:53', 9, 8, 1, 4, 11),
(16, 'Dress', NULL, '1935-01-01', 'assets/gallery/Or5ZUwi634t540WxweGUY9E5uFaYYHspIRakl0Gy.jpg', '2021-01-05 22:32:57', '2021-01-05 22:32:57', 9, 8, 5, 4, 11),
(17, 'Dress', NULL, '1935-01-01', 'assets/gallery/VTvXqp7UL8CcQtWBJsU56Jdrebc2Fdg1F9qJaz7D.jpg', '2021-01-05 22:38:12', '2021-01-05 22:38:12', 8, 9, 6, 4, 11),
(18, 'Woman Holding a Balance', 'A woman dressed in a blue jacket with fur trim stands alone before a table in a corner of a room. She holds a balance in her right hand and with lowered eyes waits for it to come to rest. Behind her, on the back wall of the room, is a large painting of The Last Judgment framed in black. On the side wall is a mirror. A blue cloth, some open boxes, two strands of pearls, and a gold chain lie on the table. A soft light, which passes through a window and its orange–yellow curtain, illuminates the scene. While the woman is psychologically removed from us, her graceful figure and serene face suggest an inner peace that one often experiences at unexpected and fleeting moments in one\'s life.\r\n\r\nWoman Holding a Balance is an allegorical scene that urges us to conduct our lives with temperance and moderation. The painting within the painting offers an important clue in that Christ\'s Last Judgment is echoed by the woman\'s own actions. Before her are earthly treasures; behind her is the symbol of the eternal consequences of her actions here on earth. In waiting for the balance to rest at equilibrium she acknowledges the importance of judgment in weighing her own actions in anticipation of the life to come.', '1664-01-01', 'assets/gallery/yHX11LrHt0WuuuiSv8OSRHk379pSlUhkjfiVssaN.jpg', '2021-01-05 22:41:08', '2021-01-05 22:41:08', 9, 10, 1, NULL, 11),
(19, 'Tezuka Osamu', '並木ハウスにて耳男と', '1954-01-01', 'assets/gallery/TF0QiDhFIaP2xZczMcTHUxFIywAr7nwf5x62u3wJ.jpg', '2021-01-05 22:51:12', '2021-01-05 22:51:12', 16, 11, NULL, 5, 15),
(20, 'The studio in Mushi Production', NULL, NULL, 'assets/gallery/7ymMmRMMrLMgQhALqwgusz4ORjAWQzVbFRTBOK4T.jpg', '2021-01-05 22:55:09', '2021-01-05 22:55:09', 16, 11, NULL, 5, 15);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_23_163224_create_countries_table', 1),
(5, '2020_12_24_052124_create_museums_table', 1),
(6, '2020_12_24_054821_create_artists_table', 1),
(7, '2020_12_24_063209_create_articles_table', 1),
(8, '2020_12_24_120230_add_museumid_to_articles_table', 1),
(9, '2020_12_24_121316_create_items_table', 1),
(10, '2020_12_24_122017_create_types_table', 1),
(11, '2020_12_24_122207_add_foreign_to_items_table', 1),
(12, '2020_12_25_152709_add_deadtimenull_to_artists_table', 1),
(13, '2020_12_29_083823_add_articleid_to_items_table', 1),
(14, '2020_12_29_085608_add_name_to_articles_table', 1),
(15, '2021_01_02_141012_add_fkcountry_to_items_table', 1),
(17, '2021_01_05_065018_add_cascade_to_items_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `museums`
--

CREATE TABLE `museums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `museums`
--

INSERT INTO `museums` (`id`, `country_id`, `name`, `description`, `city`, `logo`, `created_at`, `updated_at`) VALUES
(2, 10, 'Galeri Batik YBI1', 'Batik yang mengandung unsur seni, merupakan kerajinan tangan yang dikerjakan oleh para wanita sejak dahulu menggunakan alat yang sederhana, canting dan pewarna alami dari tumbuhan. Kegiatan industri berkembang pesat, kemudian Batik secara massal dihasilkan melalui proses pembatikan dengan menggunakan cap, pewarnaan pengaruh dari negara maju, tanpa meninggalkan nilai timur yang tinggi dan masih tampak pada unsur pengerjaan tangan secara terampil menonjolkan kehalusan karya seninya.', 'Tiongkok', 'assets/gallery/QEwxpzBke5axApLJ1UYmzWRNZspif445e3Vs1xUo.jpg', '2021-01-04 23:42:47', '2021-01-05 21:38:47'),
(3, 10, 'Monumen Nasional', 'Guna mengenang dan mengabadikan kebesaran perjuangan kemerdekaan Bangsa Indonesia yang dikenal dengan Revolusi 17 Agustus 1945 dan untuk membangkitkan semangat patriotisme generasi sekarang dan akan datang, maka dibangunlah suatu tanda peringatan yang berbentuk tugu, yang kemudian diberi nama Monumen Nasional.\r\nTugu Monumen Nasional mempunyai ciri tersendiri. Arsitektur dan dimensinya melambangkan khas dan kekhususan Indonesia. Bentuk yang paling menonjol adalah tugu yang menjulang tinggi dan pelataran cawan yang luas mendatar. Di puncak tugu, api menyala tiada kunjung padam, melambangkan tekad dan semangat bangsa Indonesia yang tak pernah surut berjuang sepanjang masa. Angka-angka keramat bangsa Indonesia 17 – 8 – ’45 diabadikan pada Monumen Nasional ini.\r\nBentuk dan tata letak Monumen Nasional ini sangat menarik. Dengan berdiri di plasa utama Taman Medan Merdeka, orang dapat menikmati pemandangan indah dan sejuk yang mempesona, berupa taman dan kolam air mancur. Di bagian Utara tampak megah patung Pangeran Diponegoro. Di sini orang dapat memasuki terowongan yang berada tiga meter di bawah Jalan Silang Monas menuju halaman Tugu Monumen Nasional yang berpagar ‘Bambu Runcing’ mengingatkan pada model senjata bangsa Indonesia dalam merebut dan mempertahankan kemerdekaan.\r\nJakarta dipilih sebagai tempat yang paling layak untuk pembangunan Tugu Monumen Nasional, karena kota Jakarta sebagai Ibukota Republik. Di Jakartalah Bung Karno dan Bung Hatta memproklamirkan Kemerdekaan Negara Kesatuan Republik Indonesia tanggal 17 Agustus 1945.\r\nArea Lapangan Merdeka Jakarta disepakati pada saat itu sebagai lokasi dibangunnya Tugu Monumen Nasional. Mengingat luas arealnya cukup ideal, juga memiliki nilai sejarah, di mana pada tanggal 19 September 1945 ratusan ribu rakyat Indonesia dengan sangkur terhunus tanpa gentar menghadapi ancaman senjata serta kendaraan lapis baja serdadu Jepang, menunjukkan kepada dunia untuk tetap merdeka dan hanya mengakui pemerintah Republik Indonesia.', NULL, 'assets/gallery/lDr0HjNdI0WUeNRTBLpauWAa3VdOYHZiGmYxNVhC.jpg', '2021-01-04 23:44:27', '2021-01-04 23:44:27'),
(4, 10, 'Unit Pengelola Museum Seni', 'Unit Pengelola Museum Seni merupakan unit manajemen yang mengelola 3 (tiga) museum bawah Dinas Pariwisata dan Kebudayaan Provinsi DKI Jakarta, yakni Museum Tekstil, Museum Seni Rupa dan Keramik serta Museum Wayang yang yang memiliki tugas tidak hanya untuk menjaga dan melestarikan seni dan budaya tetapi juga memperkenalkan seni dan budaya Indonesia kepada dunia.', NULL, 'assets/gallery/wvV6MnwOPQbmcNx438uaH9HS6v1Vv5ijwtBRbsAu.png', '2021-01-04 23:46:01', '2021-01-04 23:46:01'),
(5, 10, 'ARMA Museum', 'Agung Rai Museum of Art (ARMA) dibuka secara resmi pada tanggal 9 Juni 1996, oleh Prof. Dr. Ing Wardiman Djojonegoro Menteri Pendidikan dan Kebudayaan Indonesia pada saat itu. Pemilik ARMA adalah Bapak Agung Rai. Museum ini terdaftar atas nama ARMA Foundation pada 13 Mei 1996.\r\n\r\nTujuan utama dari ARMA museum adalah untuk melestarikan karya seni, mengembangkan dan melestarikan lukisan, patung, tarian, musik traditional,dan berbagai macam jenis seni yang lain serta untuk menyediakan cara dan infrastruktur untuk masyarakat lokal untuk belajar mengenai seni dan budaya.\r\n\r\nKarya-karya lukisan yang dipamerkan secara permanen adalah lukisan-lukisan Bali, Indonesia, dan karya pelukis luar negeri termasuk koleksi dari ARMA Foundation dan koleksi pribadi dari Bapak dan Ibu Agung Rai.\r\nKoleksi lukisan yang dimiliki ARMA sangat beragam, dari gaya lukisan tradisional sampai gaya lukisan kontemporer. Termasuk gaya lukisan tradisional Kamasan yang menggunakan media kulit pohon. Hasil karya masterpiece Batuan tahun 1930an dan 1940an. Hasil karya pelukis-pelukis terkenal abad 19 seperti Raden saleh, Syarief Bustaman dan pelukis German Walter Spies.', NULL, 'assets/gallery/gyYQQBIQMVmfGaDANVXriSPiHpFrIZEVzYSeZbSM.jpg', '2021-01-04 23:47:23', '2021-01-04 23:47:23'),
(6, 11, 'Peoria Historical Society', 'The roots of the Peoria Historical Society can be traced as far back as 1839. Incorporated in 1934 as the Peoria Historical Society, the purpose of the Society is to enhance the quality of life in the Peoria area by: collecting, preserving and displaying items relating to our history; encouraging and supporting historical research and education; and promoting and sustaining public interest in the history and contributions of our people and organizations.\r\n\r\nThe focus of our work has changed and evolved through the years, but our commitment to preservation remains strong. We offer programs for both local residents and out-of-town visitors. We seek to entertain the eye and stimulate the mind. We support historical scholarship and collaborate with other preservation organizations.\r\n\r\nWe look to the future . . . with a vision to be the community resource and advocate for historical preservation and research on the Peoria area, its organizations and its people. As a collaborative partner of the Peoria Riverfront Museum, we are pleased to have the opportunity to display some of the Society\'s artifacts and present the history of the Peoria area in the museum.\r\n\r\nMission\r\n\r\nTo preserve, share and celebrate the stories of the Peoria area.', 'Peoria', 'assets/gallery/iOSSntXMbTrKGytS8FqLUuTavWqFzppsijnek2an.jpg', '2021-01-05 00:41:42', '2021-01-05 00:41:42'),
(7, 12, '9eme Concept', 'The 9th Concept is a collective of artists based in Montreuil.\r\n\r\nThe association has developed a creative process that combines graphics, painting, collage, music, street art, happenings ...\r\n\r\nFounded in 1990 by Stéphane Carricondo, Ned and Jerk 45, the group has expanded as and when the years. The 9th Concept account in 2013 15 painters, designers, tattoo artists, illustrators, artists.', 'paris', 'assets/gallery/Kq5gOYBgaU3pm4t8EY4yrE1GNXGZfNswXAuFcUeM.jpg', '2021-01-05 00:43:44', '2021-01-05 00:43:44'),
(8, 11, 'MoMA The Museum of Modern Art', 'Founded in 1929, The Museum of Modern Art (MoMA) in midtown Manhattan was the first museum devoted to the modern era. Today MoMA’s rich and varied collection offers a panoramic overview of modern and contemporary art, from the innovative European painting and sculpture of the 1880s to today\'s film, design, and performance art. From an initial gift of eight prints and one drawing, the collection has grown to include over 150,000 paintings, sculptures, drawings, prints, photographs, architectural models and drawings, and design objects; approximately 22,000 films and four million film stills; and, in its Library and Archives, over 300,000 books, artist books, and periodicals, and extensive individual files on more than 70,000 artists. Collection highlights include Claude Monet’s Water Lilies, Vincent van Gogh’s The Starry Night, and Pablo Picasso’s Les Demoiselles d\'Avignon, along with more recent works by Andy Warhol, Elizabeth Murray, Cindy Sherman, and many others.\r\n\r\nThe Museum presents an active schedule of modern and contemporary art exhibitions, over 1,000 film screenings a year, and a wide range of educational programming, from artist talks to family workshops. Architect Yoshio Taniguchi\'s new MoMA building opened in 2004, nearly doubling the space for the Museum\'s exhibitions and programs, and enlarging the beloved Abby Aldrich Rockefeller Sculpture Garden. Today, the Museum welcomes approximately 3 million visitors every year and has more than 130,000 members.\r\n\r\nThe Museum is affiliated with MoMA PS1, one of the oldest and largest nonprofit contemporary art centers in the U.S. Located in Queens, NY, MoMA PS1 presents over 50 exhibitions each year, including artists’ retrospectives and site-specific installations, and a full schedule of music and performance programming.', 'New York', 'assets/gallery/h5fE6qDeD0b4Rij5P6m4ta4WnnKrs85nkdpQ3CpP.jpg', '2021-01-05 20:46:26', '2021-01-05 20:46:26'),
(9, 11, 'National Gallery of Art', 'The National Gallery of Art – the nation\'s museum – preserves, collects, exhibits, and fosters an understanding of works of art.', 'Washington', 'assets/gallery/WyEgmqXuJSsdo65sViLz4ph0G57H1MMJdPyJ13WT.jpg', '2021-01-05 20:47:27', '2021-01-05 20:47:27'),
(10, 11, 'The Metropolitan Museum of Art', 'The Met presents over 5,000 years of art from around the world for everyone to experience and enjoy. The Museum lives in three iconic sites in New York City—The Met Fifth Avenue, The Met Breuer, and The Met Cloisters. Millions of people also take part in The Met experience online.\r\n\r\nSince it was founded in 1870, The Met has always aspired to be more than a treasury of rare and beautiful objects. Every day, art comes alive in the Museum\'s galleries and through its exhibitions and events, revealing both new ideas and unexpected connections across time and across cultures.', 'New York', 'assets/gallery/OonH1rcOouXOwXLCJTfcmV6xkbGtDCNJOI8CjHSK.jpg', '2021-01-05 20:48:48', '2021-01-05 20:48:48'),
(11, 12, 'Musée d’Orsay', 'The history of the museum, of its building is quite unusual. In the centre of Paris on the banks of the Seine, opposite the Tuileries Gardens, the museum was installed in the former Orsay railway station, built for the Universal Exhibition of 1900. So the building itself could be seen as the first \"work of art\" in the Musee d\'Orsay, which displays collections of art from the period 1848 to 1914.', 'Paris', 'assets/gallery/sNDKF2APaZhgfwnl6jdhWsxErDSZpQeS27Ml1MXi.jpg', '2021-01-05 20:51:09', '2021-01-05 20:51:09'),
(12, 12, 'Palace of Versailles', 'Listed for the past 30 years as a UNESCO World Heritage Site, the Palace of Versailles constitutes one of the finest achievements of French art of the 17th century. The former hunting lodge of Louis XIII was transformed and extended by his son Louis XIV who installed here the Court and the government of France in 1682. Up until the French Revolution, a line of kings succeeded each other, each taking his turn to embellish the Palace.The Hall of Mirrors, the King\'s Grand Apartments, the gardens… The Palace of Versailles is one of the most visited cultural sites in the world today.', 'Versailles', 'assets/gallery/egoiRLafifE3Pbno5h13ubEfJoPfdMXxSYkcjUkK.jpg', '2021-01-05 20:54:04', '2021-01-05 20:54:04'),
(13, 12, 'Rmn-Grand Palais', 'We admit that it’s a bit hard to remember our name. We are the “Réunion des musées nationaux – Grand Palais”, or “Rmn-GP” for short. The name might seem complicated but, to put it simply, we are a new public cultural establishment that reports to the Minister for Culture and Communication. The Rmn-GP was set up in 2011 following the merger between the Réunion des musées nationaux and the Grand Palais, hence our name.\r\nSo now that we have introduced ourselves, we will explain what we do.', 'paris', 'assets/gallery/s7FEmF9W1UorwVgBEaKeTV6RUFBt7MouYVKkmZ4I.jpg', '2021-01-05 20:55:55', '2021-01-05 20:55:55'),
(15, 15, 'Ohara Museum of Art', 'In 1930, to commemorate Kojima Torajiro, a Western-style painter who died the previous year, Kurashiki entrepreneur, Ohara Magosaburo, founded the Ohara Museum of Art. This private museum, featuring Western art, is the oldest in Japan. Magosaburo, well-known as a collector of Japanese art, highly respected Torajiro\'s talent and his humble attitude towords art, and sent Torajiro to Europe three times. Torajiro studied art in Europe and, at the same time, with Magosaburo\'s superb European artwork, choosing pieces through the sense of beauty that he possessed as a Japanese artist. Torajiro, who had a spirit typical of Meiji Era, felt there was a struggle between the highlights of Western art and his Japanese aesthetic sense, when he carefully chose artwork. He prudently chose masterpieces by El Greco, Gauguin, Monet, Matisse and other artists and brought them to Kurashiki, which are now the main features of the Ohara Museum of Art. His collection of Chinese and Egyptian art reveals the conflict of beauty between Western and Oriental art that he faced, where he tried to seek the essence of art. The Ohara Museum of Art plays an active role in Kurashiki, expanding the collection to include both modern and contemporary art from the West and Japan, as well as pieces by artists who served Mingei Movement (Japanese Folk Art Movement). Now the museum is well known to the world as a private museum with its own character, reflecting Japanese culture. The Ohara Museum of Art, in addintion to opening the eyes of children and adults on site, soends time and energy on distance learning programs. As an art museum that will actively live through the 21st century, it also serves for broad activities cultivating the frontier of art. Art Lectures are held every summer, and Gallery Concerts, inviting world-class musecians, are part of its activities.', 'Kurashiki', 'assets/gallery/riMXhz2TvpTcsiuHR7HZxaLgb50XPOqOVMqhLUzG.jpg', '2021-01-05 22:45:50', '2021-01-05 22:45:50'),
(16, 15, 'Tezuka Productions', 'Tezuka Osamu was born the eldest son of three children on November 3rd, 1928, in Toyonaka City, Osaka. An extremely witty and imaginative boy, he grew up in a liberal family exposed to manga and animation.\r\n\r\nAs a boy he also had a love for insects reminiscent of Fabre, and, reflecting the level of his interest in the insect world, later incorporated the ideogram for \"insect\" into his pen name.\r\n\r\nHaving developed an intense understanding of the preciousness of life from his wartime experience, Tezuka Osamu aimed to become a physician and later earned his license, but ultimately chose the profession he loved best: manga artist and animated film writer.\r\n\r\nTezuka Osamu\'s manga and animated films had a tremendous impact on the shaping of the psychology of Japan\'s postwar youth. His work changed the concept of the Japanese cartoon, transforming it into an irresistible art form and incorporating a variety of new styles in creating the \"story cartoon.\" Changing the face of literature and movies, his work also influenced a range of other genres.\r\n\r\nHis impact on animated film was equal to that which he had on the manga world. The lovable characters appearing in works such as Japan\'s first animated TV series \"ASTRO BOY,\" the color animated TV series \"Jungle Emperor Leo\", and the two-hour animated special \"Bander Book,\" captured the hearts of the Japanese through the medium of television, propelling the animated film to tremendous popularity in Japanese general society.\r\n\r\nTezuka Osamu\'s work was exported to the U.S., Europe, and other Asian countries, becoming the stuff of dreams for children around the world. He also ventured into the world of full-length adult animation, exploring all possibilities of the field of animation.\r\n\r\nIn addition to his record of achievement in TV and commercial animation, he also received international acclaim for his work in experimental animation in his later years.\r\n\r\nHis enduring theme that of the preciousness of life, formed the crux of all of Tezuka Osamu\'s works. Tezuka Osamu, creator of a great cultural asset and gifted with an unbeatable pioneering spirit combined with an enduring passion for his work and a consistent view to the future, lived out his entire life tirelessly pursuing his efforts, passing away at the age of 60 on February 8th, 1989.', 'Tokyo', 'assets/gallery/VhY0MtCenpBh4b7oLsEuvYP86gtAMmtIb5whYKtv.jpg', '2021-01-05 22:47:41', '2021-01-05 22:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'paint', '2021-01-05 00:12:08', '2021-01-05 00:12:08'),
(3, 'design interior', '2021-01-05 21:05:47', '2021-01-05 21:05:47'),
(4, 'Sculpture', '2021-01-05 21:21:12', '2021-01-05 21:21:12'),
(5, 'Photography', '2021-01-05 21:21:32', '2021-01-05 21:21:32'),
(6, 'Drawing', '2021-01-05 22:36:56', '2021-01-05 22:36:56'),
(7, 'Seni Kontemporers', '2021-01-05 23:35:38', '2021-01-05 23:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hari', 'hdarmawan472@gmail.com', NULL, '$2y$10$1YV8sW.1lAy4A4P3Et5oJejNAme5b4JK5/uf..Un0lpIchMVhNare', NULL, '2021-01-04 22:22:37', '2021-01-04 22:22:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_museum_id_foreign` (`museum_id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_country_id_foreign` (`country_id`),
  ADD KEY `items_museum_id_foreign` (`museum_id`),
  ADD KEY `item_artist_id_foreign` (`artist_id`),
  ADD KEY `items_type_id_foreign` (`type_id`),
  ADD KEY `items_article_id_foreign` (`article_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `museums`
--
ALTER TABLE `museums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `museums_country_id_foreign` (`country_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `museums`
--
ALTER TABLE `museums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_museum_id_foreign` FOREIGN KEY (`museum_id`) REFERENCES `museums` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `item_artist_id_foreign` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `items_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_museum_id_foreign` FOREIGN KEY (`museum_id`) REFERENCES `museums` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `museums`
--
ALTER TABLE `museums`
  ADD CONSTRAINT `museums_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
