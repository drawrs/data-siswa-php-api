-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2018 at 12:59 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_wisatapedia_beta`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `remember_token`, `name`, `about`, `created_at`, `updated_at`) VALUES
(3, NULL, 'rizal2@gmail.com', '$2y$10$t3xZVKKzAEs0gdvzd5mC7ei4q908.NqmOaVaT5SGgfbwhWCtzOgc2', 'AoQKvMOPHja79PxGb7pWpsaAlVV6bpfDjOorGNMKgyU1mNlNLansJdsYdROD', 'Rizal Hilman', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s stand dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.', '2018-02-12 07:01:19', '2018-02-12 07:01:19'),
(4, NULL, 'admin@gmail.com', '$2y$10$vyWV.DJgTh2x7AI9bgpoZ.kRbOjxQUoKLJzQ03kXReiWMz6OVqkwm', 'hschPNB3aHXhkUIaIadJNtLfK44QepAgI5GJI6Nql8WZT6FWDZ4cs8B3nOb5', 'Admin', NULL, '2018-02-20 17:39:35', '2018-02-20 17:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_detail`
--

CREATE TABLE `buyer_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_card` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date DEFAULT '0000-00-00',
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('M','F') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no_pic.png',
  `street_address` text COLLATE utf8mb4_unicode_ci,
  `zip_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buyer_detail`
--

INSERT INTO `buyer_detail` (`id`, `user_id`, `id_card`, `full_name`, `birth_date`, `phone_number`, `gender`, `photo`, `street_address`, `zip_code`, `city_id`, `province_id`, `created_at`, `updated_at`) VALUES
(1, 7, '311002939102003002', 'Albert William 2', '1998-03-11', '0839399293933', 'M', '2018-03-19 15:14:36_WhatsApp Image 2018-03-18 at 2.17.55 AM.jpeg', 'Capkappoqwoeo', '31231', '6503', '65', '2018-02-19 07:17:00', '2018-03-22 18:24:59'),
(2, 10, 'Rahma', 'Nina', '1968-11-30', '0838247081929', 'F', '2018-05-02 14:22:42_BGb2m66O_400x400.jpg', 'Jalan Cendrawasih, Palmerah, jakarta', '0090999', '3502', '35', NULL, '2018-05-02 07:22:42'),
(7, 12, '120000102001202', 'Dewi Ayunda', '1998-06-15', '+62838247084398', 'F', '2018-04-30 18:39:58_IMG_20180429_152347.jpg', 'Gambir, Central Jakarta City, Jakarta', '4121', '3171', '31', NULL, '2018-04-30 11:47:11'),
(8, 17, NULL, 'mastahero', '0000-00-00', NULL, NULL, 'no_pic.png', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 21, NULL, 'mastahero', '0000-00-00', NULL, NULL, 'no_pic.png', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 21, '20010203012', 'mastahero', '1998-03-11', '019293991293', 'M', '/Applications/MAMP/tmp/php/phpmaC6OA', 'Jl aceh kidul', NULL, '31231', '65', '2018-05-04 16:12:09', '2018-05-04 16:12:09'),
(12, 23, NULL, 'kskadskadskads', '0000-00-00', NULL, NULL, 'no_pic.png', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 23, '112120120201201', 'kskadskadskads', '1968-01-01', '0292912012', 'M', '2018-05-08 14:57:47_posterkelaslaravel.png', 'asdnasdjasdnasd asdpadlasd adalalasd asdlalasd', NULL, '3602', NULL, '2018-05-08 07:57:47', '2018-05-08 07:57:47'),
(15, 24, '112120120201201', 'Buyer Tiga', '1968-01-01', '0292912012', 'M', '2018-05-08 14:59:39_posterkelaslaravel.png', 'Buyer tiga home', NULL, '7503', NULL, '2018-05-08 07:59:39', '2018-05-08 07:59:39'),
(18, 26, '121203000123', 'Buyer Lima', '1968-01-01', '082831231', 'M', '2018-05-08 23:51:21_posterkelaslaravel.png', 'Jl. Ki agen 1', '43412', '3101', '31', '2018-05-08 16:51:21', '2018-05-08 16:52:25'),
(19, 28, '101201010011', 'Buyer Enam', '1968-01-01', '0819191929', 'M', '2018-05-09 00:25:25_Foto Resmi Terbaru - Maulana Rizal Hilman.JPG', 'Jl. Buyer enam', '12881', '1703', '17', '2018-05-08 17:25:25', '2018-05-08 17:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `captcha_id` bigint(13) NOT NULL,
  `captcha_time` int(10) NOT NULL,
  `ip_address` varchar(16) NOT NULL,
  `word` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_in_navbar` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `photo`, `show_in_navbar`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Travel Jepang', 'jepang', '2018-03-12 02:44:59-Jepang.jpg', '1', 'lorem', '2018-02-15 17:00:00', '2018-04-15 21:41:35', NULL),
(3, 'Sewa Mobil', '370x220.png', '370x220.png', '0', 'lorem', '2018-02-15 17:00:00', '2018-05-06 04:15:52', '2018-05-06 04:15:52'),
(5, 'Paket Perjalanan', 'paket-perjalanan', '2018-03-12 02:44:35-indonesia.jpg', '0', 'lorem', '2018-02-15 17:00:00', '2018-04-16 09:18:10', NULL),
(6, 'Korea Selatan', 'korea-selatan', '2018-03-12 02:45:11-koreaselatan.jpg', '0', 'lorem', '2018-02-20 17:00:00', '2018-03-18 17:23:13', NULL),
(8, 'Singapore', 'singapore', '2018-03-12 02:46:03-singapore.jpeg', '0', 'lorem', '2018-03-02 15:50:20', '2018-04-15 17:11:16', NULL),
(9, 'Thailand', 'new-category-right', '2018-03-12 02:46:20-thailand.jpeg', '0', 'lorem', '2018-03-02 15:56:30', '2018-04-15 16:28:47', NULL),
(10, 'Saudi Arabia', 'saudi-arabia', '2018-03-12 02:45:32-saudi.jpeg', '0', 'lorem', '2018-03-04 07:12:10', '2018-05-06 04:15:45', '2018-05-06 04:15:45'),
(11, 'Test new Yaa', 'test-new-yaa', 'no_pic.png', '0', 'sdfsdfsdfsd', '2018-04-15 19:28:00', '2018-04-16 09:13:04', '2018-04-16 09:13:04'),
(12, 'Wisata keluarga di Jepang', 'wisata-keluarga-di-jepang', 'no_pic.png', '0', 'Wisata keluarga di Jepang', '2018-04-15 20:12:46', '2018-04-16 09:13:32', '2018-04-16 09:13:32'),
(13, 'woys', 'woys', 'no_pic.png', '0', 'asas', '2018-04-15 20:13:03', '2018-04-15 20:16:27', '2018-04-15 20:16:27'),
(14, 'New Kategori', 'new-kategori', 'no_pic.png', '0', 'Deksrpsi', '2018-05-06 03:14:55', '2018-05-06 03:14:55', NULL),
(15, 'Internasional', 'internasional', 'no_pic.png', '0', 'deskripsi', '2018-05-06 04:09:00', '2018-05-06 04:09:00', NULL),
(16, 'new Category', 'new-category', 'no_pic.png', '0', 'Deskripsi', '2018-05-06 04:14:48', '2018-05-06 04:14:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_sub`
--

CREATE TABLE `category_sub` (
  `id` int(10) NOT NULL,
  `category_root_id` int(10) NOT NULL DEFAULT '2',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_sub`
--

INSERT INTO `category_sub` (`id`, `category_root_id`, `name`, `slug`, `photo`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 5, 'Bandung', 'bandung', 'image', 'Paket perjalanan ke bandung', NULL, '2018-04-16 09:18:36', NULL),
(12, 5, 'Jakarta', 'jakarta', 'hhahha', 'Ter edit lah', NULL, '2018-04-16 09:28:59', NULL),
(13, 2, 'Tokyo', 'tokyo', 'Tokyo chann', 'Achan achaann', NULL, '2018-04-15 21:39:43', NULL),
(15, 2, 'Ichinomiya', 'ichinomiya', 'no_pic.png', 'Ichinomiya', '2018-04-15 22:59:40', '2018-04-16 15:57:43', NULL),
(16, 2, 'Seto', 'seto', 'no_pic.png', 'Seto', '2018-04-15 22:59:47', '2018-04-16 15:58:01', NULL),
(17, 5, 'Semarang', 'semarang', 'no_pic.png', 'asdajsdasd', '2018-04-15 23:06:10', '2018-04-16 09:19:05', NULL),
(18, 2, 'Handa', 'handa', 'no_pic.png', 'Handa', '2018-04-15 23:07:11', '2018-04-16 15:58:13', NULL),
(20, 2, 'Kasugai', 'kasugai', 'no_pic.png', 'Kasugai', '2018-04-15 23:08:14', '2018-04-16 15:58:25', NULL),
(21, 2, 'Toyokawa', 'toyokawa', 'no_pic.png', 'Toyokawa', '2018-04-15 23:08:22', '2018-04-16 15:58:38', NULL),
(22, 2, 'Tsushima, Aichi', 'tsushima-aichi', 'no_pic.png', 'Tsushima, Aichi', '2018-04-15 23:09:08', '2018-04-16 15:58:52', NULL),
(23, 2, 'Nagoya', 'nagoya', 'no_pic.png', 'Nagoya', '2018-04-16 15:56:40', '2018-04-16 15:56:40', NULL),
(24, 2, 'Toyohashi', 'toyohashi', 'no_pic.png', 'Toyohashi', '2018-04-16 15:56:56', '2018-04-16 15:56:56', NULL),
(25, 2, 'Okazaki', 'okazaki', 'no_pic.png', 'Okazaki', '2018-04-16 15:57:28', '2018-04-16 15:57:28', NULL),
(26, 2, 'Hekinan', 'hekinan', 'no_pic.png', 'Hekinan', '2018-04-16 15:59:06', '2018-04-16 15:59:06', NULL),
(27, 2, 'Kariya', 'kariya', 'no_pic.png', 'Kariya', '2018-04-16 15:59:20', '2018-04-16 15:59:20', NULL),
(28, 2, 'Toyota', 'toyota', 'no_pic.png', 'Toyota', '2018-04-16 15:59:31', '2018-04-16 15:59:31', NULL),
(29, 2, 'Anjō', 'anjo', 'no_pic.png', NULL, '2018-04-16 16:00:54', '2018-04-16 16:00:54', NULL),
(30, 2, 'Nishio', 'nishio', 'no_pic.png', 'Nishio', '2018-04-16 16:01:27', '2018-04-16 16:01:27', NULL),
(31, 2, 'Gamagōri', 'gamagori', 'no_pic.png', 'Gamagōri', '2018-04-16 16:01:48', '2018-05-06 03:15:54', '2018-05-06 03:15:54'),
(32, 2, 'New Sub categori', 'new-sub-categori', 'no_pic.png', 'deskripti', '2018-05-06 03:15:19', '2018-05-06 03:15:19', NULL),
(33, 2, 'tes', 'tes', 'no_pic.png', 'deskripsi', '2018-05-06 03:15:39', '2018-05-06 03:15:39', NULL),
(34, 2, 'Jepang', 'jepang', 'no_pic.png', 'deskripsi', '2018-05-06 04:09:34', '2018-05-06 04:09:34', NULL),
(35, 2, 'New Sub categori 2', 'new-sub-categori-2', 'no_pic.png', 'aa', '2018-05-06 04:15:14', '2018-05-06 04:16:00', '2018-05-06 04:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(10) NOT NULL,
  `prov_id` char(2) NOT NULL,
  `name` tinytext NOT NULL,
  `id_jenis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `prov_id`, `name`, `id_jenis`) VALUES
(1101, '11', 'KAB. ACEH SELATAN', 1),
(1102, '11', 'KAB. ACEH TENGGARA', 1),
(1103, '11', 'KAB. ACEH TIMUR', 1),
(1104, '11', 'KAB. ACEH TENGAH', 1),
(1105, '11', 'KAB. ACEH BARAT', 1),
(1106, '11', 'KAB. ACEH BESAR', 1),
(1107, '11', 'KAB. PIDIE', 1),
(1108, '11', 'KAB. ACEH UTARA', 1),
(1109, '11', 'KAB. SIMEULUE', 1),
(1110, '11', 'KAB. ACEH SINGKIL', 1),
(1111, '11', 'KAB. BIREUEN', 1),
(1112, '11', 'KAB. ACEH BARAT DAYA', 1),
(1113, '11', 'KAB. GAYO LUES', 1),
(1114, '11', 'KAB. ACEH JAYA', 1),
(1115, '11', 'KAB. NAGAN RAYA', 1),
(1116, '11', 'KAB. ACEH TAMIANG', 1),
(1117, '11', 'KAB. BENER MERIAH', 1),
(1118, '11', 'KAB. PIDIE JAYA', 1),
(1171, '11', 'KOTA BANDA ACEH', 2),
(1172, '11', 'KOTA SABANG', 2),
(1173, '11', 'KOTA LHOKSEUMAWE', 2),
(1174, '11', 'KOTA LANGSA', 2),
(1175, '11', 'KOTA SUBULUSSALAM', 2),
(1201, '12', 'KAB. TAPANULI TENGAH', 1),
(1202, '12', 'KAB. TAPANULI UTARA', 1),
(1203, '12', 'KAB. TAPANULI SELATAN', 1),
(1204, '12', 'KAB. NIAS', 1),
(1205, '12', 'KAB. LANGKAT', 1),
(1206, '12', 'KAB. KARO', 1),
(1207, '12', 'KAB. DELI SERDANG', 1),
(1208, '12', 'KAB. SIMALUNGUN', 1),
(1209, '12', 'KAB. ASAHAN', 1),
(1210, '12', 'KAB. LABUHANBATU', 1),
(1211, '12', 'KAB. DAIRI', 1),
(1212, '12', 'KAB. TOBA SAMOSIR', 1),
(1213, '12', 'KAB. MANDAILING NATAL', 1),
(1214, '12', 'KAB. NIAS SELATAN', 1),
(1215, '12', 'KAB. PAKPAK BHARAT', 1),
(1216, '12', 'KAB. HUMBANG HASUNDUTAN', 1),
(1217, '12', 'KAB. SAMOSIR', 1),
(1218, '12', 'KAB. SERDANG BEDAGAI', 1),
(1219, '12', 'KAB. BATU BARA', 1),
(1220, '12', 'KAB. PADANG LAWAS UTARA', 1),
(1221, '12', 'KAB. PADANG LAWAS', 1),
(1222, '12', 'KAB. LABUHANBATU SELATAN', 1),
(1223, '12', 'KAB. LABUHANBATU UTARA', 1),
(1224, '12', 'KAB. NIAS UTARA', 1),
(1225, '12', 'KAB. NIAS BARAT', 1),
(1271, '12', 'KOTA MEDAN', 2),
(1272, '12', 'KOTA PEMATANG SIANTAR', 2),
(1273, '12', 'KOTA SIBOLGA', 2),
(1274, '12', 'KOTA TANJUNG BALAI', 2),
(1275, '12', 'KOTA BINJAI', 2),
(1276, '12', 'KOTA TEBING TINGGI', 2),
(1277, '12', 'KOTA PADANGSIDIMPUAN', 2),
(1278, '12', 'KOTA GUNUNGSITOLI', 2),
(1301, '13', 'KAB. PESISIR SELATAN', 1),
(1302, '13', 'KAB. SOLOK', 1),
(1303, '13', 'KAB. SIJUNJUNG', 1),
(1304, '13', 'KAB. TANAH DATAR', 1),
(1305, '13', 'KAB. PADANG PARIAMAN', 1),
(1306, '13', 'KAB. AGAM', 1),
(1307, '13', 'KAB. LIMA PULUH KOTA', 1),
(1308, '13', 'KAB. PASAMAN', 1),
(1309, '13', 'KAB. KEPULAUAN MENTAWAI', 1),
(1310, '13', 'KAB. DHARMASRAYA', 1),
(1311, '13', 'KAB. SOLOK SELATAN', 1),
(1312, '13', 'KAB. PASAMAN BARAT', 1),
(1371, '13', 'KOTA PADANG', 2),
(1372, '13', 'KOTA SOLOK', 2),
(1373, '13', 'KOTA SAWAHLUNTO', 2),
(1374, '13', 'KOTA PADANG PANJANG', 2),
(1375, '13', 'KOTA BUKITTINGGI', 2),
(1376, '13', 'KOTA PAYAKUMBUH', 2),
(1377, '13', 'KOTA PARIAMAN', 2),
(1401, '14', 'KAB. KAMPAR', 1),
(1402, '14', 'KAB. INDRAGIRI HULU', 1),
(1403, '14', 'KAB. BENGKALIS', 1),
(1404, '14', 'KAB. INDRAGIRI HILIR', 1),
(1405, '14', 'KAB. PELALAWAN', 1),
(1406, '14', 'KAB. ROKAN HULU', 1),
(1407, '14', 'KAB. ROKAN HILIR', 1),
(1408, '14', 'KAB. SIAK', 1),
(1409, '14', 'KAB. KUANTAN SINGINGI', 1),
(1410, '14', 'KAB. KEPULAUAN MERANTI', 1),
(1471, '14', 'KOTA PEKANBARU', 2),
(1472, '14', 'KOTA DUMAI', 2),
(1501, '15', 'KAB. KERINCI', 1),
(1502, '15', 'KAB. MERANGIN', 1),
(1503, '15', 'KAB. SAROLANGUN', 1),
(1504, '15', 'KAB. BATANGHARI', 1),
(1505, '15', 'KAB. MUARO JAMBI', 1),
(1506, '15', 'KAB. TANJUNG JABUNG BARAT', 1),
(1507, '15', 'KAB. TANJUNG JABUNG TIMUR', 1),
(1508, '15', 'KAB. BUNGO', 1),
(1509, '15', 'KAB. TEBO', 1),
(1571, '15', 'KOTA JAMBI', 2),
(1572, '15', 'KOTA SUNGAI PENUH', 2),
(1601, '16', 'KAB. OGAN KOMERING ULU', 1),
(1602, '16', 'KAB. OGAN KOMERING ILIR', 1),
(1603, '16', 'KAB. MUARA ENIM', 1),
(1604, '16', 'KAB. LAHAT', 1),
(1605, '16', 'KAB. MUSI RAWAS', 1),
(1606, '16', 'KAB. MUSI BANYUASIN', 1),
(1607, '16', 'KAB. BANYUASIN', 1),
(1608, '16', 'KAB. OGAN KOMERING ULU TIMUR', 1),
(1609, '16', 'KAB. OGAN KOMERING ULU SELATAN', 1),
(1610, '16', 'KAB. OGAN ILIR', 1),
(1611, '16', 'KAB. EMPAT LAWANG', 1),
(1612, '16', 'KAB. PENUKAL ABAB LEMATANG ILIR', 1),
(1613, '16', 'KAB. MUSI RAWAS UTARA', 1),
(1671, '16', 'KOTA PALEMBANG', 2),
(1672, '16', 'KOTA PAGAR ALAM', 2),
(1673, '16', 'KOTA LUBUK LINGGAU', 2),
(1674, '16', 'KOTA PRABUMULIH', 2),
(1701, '17', 'KAB. BENGKULU SELATAN', 1),
(1702, '17', 'KAB. REJANG LEBONG', 1),
(1703, '17', 'KAB. BENGKULU UTARA', 1),
(1704, '17', 'KAB. KAUR', 1),
(1705, '17', 'KAB. SELUMA', 1),
(1706, '17', 'KAB. MUKO MUKO', 1),
(1707, '17', 'KAB. LEBONG', 1),
(1708, '17', 'KAB. KEPAHIANG', 1),
(1709, '17', 'KAB. BENGKULU TENGAH', 1),
(1771, '17', 'KOTA BENGKULU', 2),
(1801, '18', 'KAB. LAMPUNG SELATAN', 1),
(1802, '18', 'KAB. LAMPUNG TENGAH', 1),
(1803, '18', 'KAB. LAMPUNG UTARA', 1),
(1804, '18', 'KAB. LAMPUNG BARAT', 1),
(1805, '18', 'KAB. TULANG BAWANG', 1),
(1806, '18', 'KAB. TANGGAMUS', 1),
(1807, '18', 'KAB. LAMPUNG TIMUR', 1),
(1808, '18', 'KAB. WAY KANAN', 1),
(1809, '18', 'KAB. PESAWARAN', 1),
(1810, '18', 'KAB. PRINGSEWU', 1),
(1811, '18', 'KAB. MESUJI', 1),
(1812, '18', 'KAB. TULANG BAWANG BARAT', 1),
(1813, '18', 'KAB. PESISIR BARAT', 1),
(1871, '18', 'KOTA BANDAR LAMPUNG', 2),
(1872, '18', 'KOTA METRO', 2),
(1901, '19', 'KAB. BANGKA', 1),
(1902, '19', 'KAB. BELITUNG', 1),
(1903, '19', 'KAB. BANGKA SELATAN', 1),
(1904, '19', 'KAB. BANGKA TENGAH', 1),
(1905, '19', 'KAB. BANGKA BARAT', 1),
(1906, '19', 'KAB. BELITUNG TIMUR', 1),
(1971, '19', 'KOTA PANGKAL PINANG', 2),
(2101, '21', 'KAB. BINTAN', 1),
(2102, '21', 'KAB. KARIMUN', 1),
(2103, '21', 'KAB. NATUNA', 1),
(2104, '21', 'KAB. LINGGA', 1),
(2105, '21', 'KAB. KEPULAUAN ANAMBAS', 1),
(2171, '21', 'KOTA BATAM', 2),
(2172, '21', 'KOTA TANJUNG PINANG', 2),
(3101, '31', 'KAB. ADM. KEP. SERIBU', 1),
(3171, '31', 'KOTA ADM. JAKARTA PUSAT', 2),
(3172, '31', 'KOTA ADM. JAKARTA UTARA', 2),
(3173, '31', 'KOTA ADM. JAKARTA BARAT', 2),
(3174, '31', 'KOTA ADM. JAKARTA SELATAN', 2),
(3175, '31', 'KOTA ADM. JAKARTA TIMUR', 2),
(3201, '32', 'KAB. BOGOR', 1),
(3202, '32', 'KAB. SUKABUMI', 1),
(3203, '32', 'KAB. CIANJUR', 1),
(3204, '32', 'KAB. BANDUNG', 1),
(3205, '32', 'KAB. GARUT', 1),
(3206, '32', 'KAB. TASIKMALAYA', 1),
(3207, '32', 'KAB. CIAMIS', 1),
(3208, '32', 'KAB. KUNINGAN', 1),
(3209, '32', 'KAB. CIREBON', 1),
(3210, '32', 'KAB. MAJALENGKA', 1),
(3211, '32', 'KAB. SUMEDANG', 1),
(3212, '32', 'KAB. INDRAMAYU', 1),
(3213, '32', 'KAB. SUBANG', 1),
(3214, '32', 'KAB. PURWAKARTA', 1),
(3215, '32', 'KAB. KARAWANG', 1),
(3216, '32', 'KAB. BEKASI', 1),
(3217, '32', 'KAB. BANDUNG BARAT', 1),
(3218, '32', 'KAB. PANGANDARAN', 1),
(3271, '32', 'KOTA BOGOR', 2),
(3272, '32', 'KOTA SUKABUMI', 2),
(3273, '32', 'KOTA BANDUNG', 2),
(3274, '32', 'KOTA CIREBON', 2),
(3275, '32', 'KOTA BEKASI', 2),
(3276, '32', 'KOTA DEPOK', 2),
(3277, '32', 'KOTA CIMAHI', 2),
(3278, '32', 'KOTA TASIKMALAYA', 2),
(3279, '32', 'KOTA BANJAR', 2),
(3301, '33', 'KAB. CILACAP', 1),
(3302, '33', 'KAB. BANYUMAS', 1),
(3303, '33', 'KAB. PURBALINGGA', 1),
(3304, '33', 'KAB. BANJARNEGARA', 1),
(3305, '33', 'KAB. KEBUMEN', 1),
(3306, '33', 'KAB. PURWOREJO', 1),
(3307, '33', 'KAB. WONOSOBO', 1),
(3308, '33', 'KAB. MAGELANG', 1),
(3309, '33', 'KAB. BOYOLALI', 1),
(3310, '33', 'KAB. KLATEN', 1),
(3311, '33', 'KAB. SUKOHARJO', 1),
(3312, '33', 'KAB. WONOGIRI', 1),
(3313, '33', 'KAB. KARANGANYAR', 1),
(3314, '33', 'KAB. SRAGEN', 1),
(3315, '33', 'KAB. GROBOGAN', 1),
(3316, '33', 'KAB. BLORA', 1),
(3317, '33', 'KAB. REMBANG', 1),
(3318, '33', 'KAB. PATI', 1),
(3319, '33', 'KAB. KUDUS', 1),
(3320, '33', 'KAB. JEPARA', 1),
(3321, '33', 'KAB. DEMAK', 1),
(3322, '33', 'KAB. SEMARANG', 1),
(3323, '33', 'KAB. TEMANGGUNG', 1),
(3324, '33', 'KAB. KENDAL', 1),
(3325, '33', 'KAB. BATANG', 1),
(3326, '33', 'KAB. PEKALONGAN', 1),
(3327, '33', 'KAB. PEMALANG', 1),
(3328, '33', 'KAB. TEGAL', 1),
(3329, '33', 'KAB. BREBES', 1),
(3371, '33', 'KOTA MAGELANG', 2),
(3372, '33', 'KOTA SURAKARTA', 2),
(3373, '33', 'KOTA SALATIGA', 2),
(3374, '33', 'KOTA SEMARANG', 2),
(3375, '33', 'KOTA PEKALONGAN', 2),
(3376, '33', 'KOTA TEGAL', 2),
(3401, '34', 'KAB. KULON PROGO', 1),
(3402, '34', 'KAB. BANTUL', 1),
(3403, '34', 'KAB. GUNUNG KIDUL', 1),
(3404, '34', 'KAB. SLEMAN', 1),
(3471, '34', 'KOTA YOGYAKARTA', 2),
(3501, '35', 'KAB. PACITAN', 1),
(3502, '35', 'KAB. PONOROGO', 1),
(3503, '35', 'KAB. TRENGGALEK', 1),
(3504, '35', 'KAB. TULUNGAGUNG', 1),
(3505, '35', 'KAB. BLITAR', 1),
(3506, '35', 'KAB. KEDIRI', 1),
(3507, '35', 'KAB. MALANG', 1),
(3508, '35', 'KAB. LUMAJANG', 1),
(3509, '35', 'KAB. JEMBER', 1),
(3510, '35', 'KAB. BANYUWANGI', 1),
(3511, '35', 'KAB. BONDOWOSO', 1),
(3512, '35', 'KAB. SITUBONDO', 1),
(3513, '35', 'KAB. PROBOLINGGO', 1),
(3514, '35', 'KAB. PASURUAN', 1),
(3515, '35', 'KAB. SIDOARJO', 1),
(3516, '35', 'KAB. MOJOKERTO', 1),
(3517, '35', 'KAB. JOMBANG', 1),
(3518, '35', 'KAB. NGANJUK', 1),
(3519, '35', 'KAB. MADIUN', 1),
(3520, '35', 'KAB. MAGETAN', 1),
(3521, '35', 'KAB. NGAWI', 1),
(3522, '35', 'KAB. BOJONEGORO', 1),
(3523, '35', 'KAB. TUBAN', 1),
(3524, '35', 'KAB. LAMONGAN', 1),
(3525, '35', 'KAB. GRESIK', 1),
(3526, '35', 'KAB. BANGKALAN', 1),
(3527, '35', 'KAB. SAMPANG', 1),
(3528, '35', 'KAB. PAMEKASAN', 1),
(3529, '35', 'KAB. SUMENEP', 1),
(3571, '35', 'KOTA KEDIRI', 2),
(3572, '35', 'KOTA BLITAR', 2),
(3573, '35', 'KOTA MALANG', 2),
(3574, '35', 'KOTA PROBOLINGGO', 2),
(3575, '35', 'KOTA PASURUAN', 2),
(3576, '35', 'KOTA MOJOKERTO', 2),
(3577, '35', 'KOTA MADIUN', 2),
(3578, '35', 'KOTA SURABAYA', 2),
(3579, '35', 'KOTA BATU', 2),
(3601, '36', 'KAB. PANDEGLANG', 1),
(3602, '36', 'KAB. LEBAK', 1),
(3603, '36', 'KAB. TANGERANG', 1),
(3604, '36', 'KAB. SERANG', 1),
(3671, '36', 'KOTA TANGERANG', 2),
(3672, '36', 'KOTA CILEGON', 2),
(3673, '36', 'KOTA SERANG', 2),
(3674, '36', 'KOTA TANGERANG SELATAN', 2),
(5101, '51', 'KAB. JEMBRANA', 1),
(5102, '51', 'KAB. TABANAN', 1),
(5103, '51', 'KAB. BADUNG', 1),
(5104, '51', 'KAB. GIANYAR', 1),
(5105, '51', 'KAB. KLUNGKUNG', 1),
(5106, '51', 'KAB. BANGLI', 1),
(5107, '51', 'KAB. KARANGASEM', 1),
(5108, '51', 'KAB. BULELENG', 1),
(5171, '51', 'KOTA DENPASAR', 2),
(5201, '52', 'KAB. LOMBOK BARAT', 1),
(5202, '52', 'KAB. LOMBOK TENGAH', 1),
(5203, '52', 'KAB. LOMBOK TIMUR', 1),
(5204, '52', 'KAB. SUMBAWA', 1),
(5205, '52', 'KAB. DOMPU', 1),
(5206, '52', 'KAB. BIMA', 1),
(5207, '52', 'KAB. SUMBAWA BARAT', 1),
(5208, '52', 'KAB. LOMBOK UTARA', 1),
(5271, '52', 'KOTA MATARAM', 2),
(5272, '52', 'KOTA BIMA', 2),
(5301, '53', 'KAB. KUPANG', 1),
(5302, '53', 'KAB TIMOR TENGAH SELATAN', 1),
(5303, '53', 'KAB. TIMOR TENGAH UTARA', 1),
(5304, '53', 'KAB. BELU', 1),
(5305, '53', 'KAB. ALOR', 1),
(5306, '53', 'KAB. FLORES TIMUR', 1),
(5307, '53', 'KAB. SIKKA', 1),
(5308, '53', 'KAB. ENDE', 1),
(5309, '53', 'KAB. NGADA', 1),
(5310, '53', 'KAB. MANGGARAI', 1),
(5311, '53', 'KAB. SUMBA TIMUR', 1),
(5312, '53', 'KAB. SUMBA BARAT', 1),
(5313, '53', 'KAB. LEMBATA', 1),
(5314, '53', 'KAB. ROTE NDAO', 1),
(5315, '53', 'KAB. MANGGARAI BARAT', 1),
(5316, '53', 'KAB. NAGEKEO', 1),
(5317, '53', 'KAB. SUMBA TENGAH', 1),
(5318, '53', 'KAB. SUMBA BARAT DAYA', 1),
(5319, '53', 'KAB. MANGGARAI TIMUR', 1),
(5320, '53', 'KAB. SABU RAIJUA', 1),
(5321, '53', 'KAB. MALAKA', 1),
(5371, '53', 'KOTA KUPANG', 2),
(6101, '61', 'KAB. SAMBAS', 1),
(6102, '61', 'KAB. MEMPAWAH', 1),
(6103, '61', 'KAB. SANGGAU', 1),
(6104, '61', 'KAB. KETAPANG', 1),
(6105, '61', 'KAB. SINTANG', 1),
(6106, '61', 'KAB. KAPUAS HULU', 1),
(6107, '61', 'KAB. BENGKAYANG', 1),
(6108, '61', 'KAB. LANDAK', 1),
(6109, '61', 'KAB. SEKADAU', 1),
(6110, '61', 'KAB. MELAWI', 1),
(6111, '61', 'KAB. KAYONG UTARA', 1),
(6112, '61', 'KAB. KUBU RAYA', 1),
(6171, '61', 'KOTA PONTIANAK', 2),
(6172, '61', 'KOTA SINGKAWANG', 2),
(6201, '62', 'KAB. KOTAWARINGIN BARAT', 1),
(6202, '62', 'KAB. KOTAWARINGIN TIMUR', 1),
(6203, '62', 'KAB. KAPUAS', 1),
(6204, '62', 'KAB. BARITO SELATAN', 1),
(6205, '62', 'KAB. BARITO UTARA', 1),
(6206, '62', 'KAB. KATINGAN', 1),
(6207, '62', 'KAB. SERUYAN', 1),
(6208, '62', 'KAB. SUKAMARA', 1),
(6209, '62', 'KAB. LAMANDAU', 1),
(6210, '62', 'KAB. GUNUNG MAS', 1),
(6211, '62', 'KAB. PULANG PISAU', 1),
(6212, '62', 'KAB. MURUNG RAYA', 1),
(6213, '62', 'KAB. BARITO TIMUR', 1),
(6271, '62', 'KOTA PALANGKARAYA', 2),
(6301, '63', 'KAB. TANAH LAUT', 1),
(6302, '63', 'KAB. KOTABARU', 1),
(6303, '63', 'KAB. BANJAR', 1),
(6304, '63', 'KAB. BARITO KUALA', 1),
(6305, '63', 'KAB. TAPIN', 1),
(6306, '63', 'KAB. HULU SUNGAI SELATAN', 1),
(6307, '63', 'KAB. HULU SUNGAI TENGAH', 1),
(6308, '63', 'KAB. HULU SUNGAI UTARA', 1),
(6309, '63', 'KAB. TABALONG', 1),
(6310, '63', 'KAB. TANAH BUMBU', 1),
(6311, '63', 'KAB. BALANGAN', 1),
(6371, '63', 'KOTA BANJARMASIN', 2),
(6372, '63', 'KOTA BANJARBARU', 2),
(6401, '64', 'KAB. PASER', 1),
(6402, '64', 'KAB. KUTAI KARTANEGARA', 1),
(6403, '64', 'KAB. BERAU', 1),
(6407, '64', 'KAB. KUTAI BARAT', 1),
(6408, '64', 'KAB. KUTAI TIMUR', 1),
(6409, '64', 'KAB. PENAJAM PASER UTARA', 1),
(6411, '64', 'KAB. MAHAKAM ULU', 1),
(6471, '64', 'KOTA BALIKPAPAN', 2),
(6472, '64', 'KOTA SAMARINDA', 2),
(6474, '64', 'KOTA BONTANG', 2),
(6501, '65', 'KAB. BULUNGAN', 1),
(6502, '65', 'KAB. MALINAU', 1),
(6503, '65', 'KAB. NUNUKAN', 1),
(6504, '65', 'KAB. TANA TIDUNG', 1),
(6571, '65', 'KOTA TARAKAN', 2),
(7101, '71', 'KAB. BOLAANG MONGONDOW', 1),
(7102, '71', 'KAB. MINAHASA', 1),
(7103, '71', 'KAB. KEPULAUAN SANGIHE', 1),
(7104, '71', 'KAB. KEPULAUAN TALAUD', 1),
(7105, '71', 'KAB. MINAHASA SELATAN', 1),
(7106, '71', 'KAB. MINAHASA UTARA', 1),
(7107, '71', 'KAB. MINAHASA TENGGARA', 1),
(7108, '71', 'KAB. BOLAANG MONGONDOW UTARA', 1),
(7109, '71', 'KAB. KEP. SIAU TAGULANDANG BIARO', 1),
(7110, '71', 'KAB. BOLAANG MONGONDOW TIMUR', 1),
(7111, '71', 'KAB. BOLAANG MONGONDOW SELATAN', 1),
(7171, '71', 'KOTA MANADO', 2),
(7172, '71', 'KOTA BITUNG', 2),
(7173, '71', 'KOTA TOMOHON', 2),
(7174, '71', 'KOTA KOTAMOBAGU', 2),
(7201, '72', 'KAB. BANGGAI', 1),
(7202, '72', 'KAB. POSO', 1),
(7203, '72', 'KAB. DONGGALA', 1),
(7204, '72', 'KAB. TOLI TOLI', 1),
(7205, '72', 'KAB. BUOL', 1),
(7206, '72', 'KAB. MOROWALI', 1),
(7207, '72', 'KAB. BANGGAI KEPULAUAN', 1),
(7208, '72', 'KAB. PARIGI MOUTONG', 1),
(7209, '72', 'KAB. TOJO UNA UNA', 1),
(7210, '72', 'KAB. SIGI', 1),
(7211, '72', 'KAB. BANGGAI LAUT', 1),
(7212, '72', 'KAB. MOROWALI UTARA', 1),
(7271, '72', 'KOTA PALU', 2),
(7301, '73', 'KAB. KEPULAUAN SELAYAR', 1),
(7302, '73', 'KAB. BULUKUMBA', 1),
(7303, '73', 'KAB. BANTAENG', 1),
(7304, '73', 'KAB. JENEPONTO', 1),
(7305, '73', 'KAB. TAKALAR', 1),
(7306, '73', 'KAB. GOWA', 1),
(7307, '73', 'KAB. SINJAI', 1),
(7308, '73', 'KAB. BONE', 1),
(7309, '73', 'KAB. MAROS', 1),
(7310, '73', 'KAB. PANGKAJENE KEPULAUAN', 1),
(7311, '73', 'KAB. BARRU', 1),
(7312, '73', 'KAB. SOPPENG', 1),
(7313, '73', 'KAB. WAJO', 1),
(7314, '73', 'KAB. SIDENRENG RAPPANG', 1),
(7315, '73', 'KAB. PINRANG', 1),
(7316, '73', 'KAB. ENREKANG', 1),
(7317, '73', 'KAB. LUWU', 1),
(7318, '73', 'KAB. TANA TORAJA', 1),
(7322, '73', 'KAB. LUWU UTARA', 1),
(7324, '73', 'KAB. LUWU TIMUR', 1),
(7326, '73', 'KAB. TORAJA UTARA', 1),
(7371, '73', 'KOTA MAKASSAR', 2),
(7372, '73', 'KOTA PARE PARE', 2),
(7373, '73', 'KOTA PALOPO', 2),
(7401, '74', 'KAB. KOLAKA', 1),
(7402, '74', 'KAB. KONAWE', 1),
(7403, '74', 'KAB. MUNA', 1),
(7404, '74', 'KAB. BUTON', 1),
(7405, '74', 'KAB. KONAWE SELATAN', 1),
(7406, '74', 'KAB. BOMBANA', 1),
(7407, '74', 'KAB. WAKATOBI', 1),
(7408, '74', 'KAB. KOLAKA UTARA', 1),
(7409, '74', 'KAB. KONAWE UTARA', 1),
(7410, '74', 'KAB. BUTON UTARA', 1),
(7411, '74', 'KAB. KOLAKA TIMUR', 1),
(7412, '74', 'KAB. KONAWE KEPULAUAN', 1),
(7413, '74', 'KAB. MUNA BARAT', 1),
(7414, '74', 'KAB. BUTON TENGAH', 1),
(7415, '74', 'KAB. BUTON SELATAN', 1),
(7471, '74', 'KOTA KENDARI', 2),
(7472, '74', 'KOTA BAU BAU', 2),
(7501, '75', 'KAB. GORONTALO', 1),
(7502, '75', 'KAB. BOALEMO', 1),
(7503, '75', 'KAB. BONE BOLANGO', 1),
(7504, '75', 'KAB. PAHUWATO', 1),
(7505, '75', 'KAB. GORONTALO UTARA', 1),
(7571, '75', 'KOTA GORONTALO', 2),
(7601, '76', 'KAB. MAMUJU UTARA', 1),
(7602, '76', 'KAB. MAMUJU', 1),
(7603, '76', 'KAB. MAMASA', 1),
(7604, '76', 'KAB. POLEWALI MANDAR', 1),
(7605, '76', 'KAB. MAJENE', 1),
(7606, '76', 'KAB. MAMUJU TENGAH', 1),
(8101, '81', 'KAB. MALUKU TENGAH', 1),
(8102, '81', 'KAB. MALUKU TENGGARA', 1),
(8103, '81', 'KAB MALUKU TENGGARA BARAT', 1),
(8104, '81', 'KAB. BURU', 1),
(8105, '81', 'KAB. SERAM BAGIAN TIMUR', 1),
(8106, '81', 'KAB. SERAM BAGIAN BARAT', 1),
(8107, '81', 'KAB. KEPULAUAN ARU', 1),
(8108, '81', 'KAB. MALUKU BARAT DAYA', 1),
(8109, '81', 'KAB. BURU SELATAN', 1),
(8171, '81', 'KOTA AMBON', 2),
(8172, '81', 'KOTA TUAL', 2),
(8201, '82', 'KAB. HALMAHERA BARAT', 1),
(8202, '82', 'KAB. HALMAHERA TENGAH', 1),
(8203, '82', 'KAB. HALMAHERA UTARA', 1),
(8204, '82', 'KAB. HALMAHERA SELATAN', 1),
(8205, '82', 'KAB. KEPULAUAN SULA', 1),
(8206, '82', 'KAB. HALMAHERA TIMUR', 1),
(8207, '82', 'KAB. PULAU MOROTAI', 1),
(8208, '82', 'KAB. PULAU TALIABU', 1),
(8271, '82', 'KOTA TERNATE', 2),
(8272, '82', 'KOTA TIDORE KEPULAUAN', 2),
(9101, '91', 'KAB. MERAUKE', 1),
(9102, '91', 'KAB. JAYAWIJAYA', 1),
(9103, '91', 'KAB. JAYAPURA', 1),
(9104, '91', 'KAB. NABIRE', 1),
(9105, '91', 'KAB. KEPULAUAN YAPEN', 1),
(9106, '91', 'KAB. BIAK NUMFOR', 1),
(9107, '91', 'KAB. PUNCAK JAYA', 1),
(9108, '91', 'KAB. PANIAI', 1),
(9109, '91', 'KAB. MIMIKA', 1),
(9110, '91', 'KAB. SARMI', 1),
(9111, '91', 'KAB. KEEROM', 1),
(9112, '91', 'KAB PEGUNUNGAN BINTANG', 1),
(9113, '91', 'KAB. YAHUKIMO', 1),
(9114, '91', 'KAB. TOLIKARA', 1),
(9115, '91', 'KAB. WAROPEN', 1),
(9116, '91', 'KAB. BOVEN DIGOEL', 1),
(9117, '91', 'KAB. MAPPI', 1),
(9118, '91', 'KAB. ASMAT', 1),
(9119, '91', 'KAB. SUPIORI', 1),
(9120, '91', 'KAB. MAMBERAMO RAYA', 1),
(9121, '91', 'KAB. MAMBERAMO TENGAH', 1),
(9122, '91', 'KAB. YALIMO', 1),
(9123, '91', 'KAB. LANNY JAYA', 1),
(9124, '91', 'KAB. NDUGA', 1),
(9125, '91', 'KAB. PUNCAK', 1),
(9126, '91', 'KAB. DOGIYAI', 1),
(9127, '91', 'KAB. INTAN JAYA', 1),
(9128, '91', 'KAB. DEIYAI', 1),
(9171, '91', 'KOTA JAYAPURA', 2),
(9201, '92', 'KAB. SORONG', 1),
(9202, '92', 'KAB. MANOKWARI', 1),
(9203, '92', 'KAB. FAK FAK', 1),
(9204, '92', 'KAB. SORONG SELATAN', 1),
(9205, '92', 'KAB. RAJA AMPAT', 1),
(9206, '92', 'KAB. TELUK BINTUNI', 1),
(9207, '92', 'KAB. TELUK WONDAMA', 1),
(9208, '92', 'KAB. KAIMANA', 1),
(9209, '92', 'KAB. TAMBRAUW', 1),
(9210, '92', 'KAB. MAYBRAT', 1),
(9211, '92', 'KAB. MANOKWARI SELATAN', 1),
(9212, '92', 'KAB. PEGUNUNGAN ARFAK', 1),
(9271, '92', 'KOTA SORONG', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) NOT NULL,
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('2171ad125ed0212094f45f185a99b3da', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6', 1519983859, ''),
('bc3989772bed1c52f1e0b2a06471d41a', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.3', 1522126236, ''),
('5c291d56b594254295f2cbb07261a8c3', '192.168.100.5', 'okhttp/3.8.1', 1522164654, ''),
('0452c9de9e7e1c79ed89db051af98d7f', '192.168.100.5', 'okhttp/3.8.1', 1522164883, ''),
('61ed130d2ff89c9b3339f84d7aa04bc3', '192.168.100.5', 'okhttp/3.8.1', 1522164990, ''),
('9a846ee052110e288ec725ac837fc53c', '192.168.100.5', 'okhttp/3.8.1', 1522165066, ''),
('8afeb569556382e53fde3366d79a855b', '192.168.100.5', 'okhttp/3.8.1', 1522166007, ''),
('ace8653578097f3170c344254f3074f7', '103.47.135.184', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.3', 1522249365, ''),
('74f646df8aa6e8503a6d330c9059be89', '103.47.135.184', 'okhttp/3.8.1', 1522249437, ''),
('94106c22cc98b75adee933f4d5d28106', '103.47.135.184', 'okhttp/3.8.1', 1522249437, ''),
('3d576d02aff966bf079e4a40ddb276b8', '103.47.135.184', 'okhttp/3.8.1', 1522249466, ''),
('da1bf3c95fe2167a64f95a63f8f41e79', '103.47.135.184', 'okhttp/3.8.1', 1522249474, ''),
('a19ba40c7f55c56466b0d57e096db0d6', '103.47.135.184', 'okhttp/3.8.1', 1522249480, ''),
('c337822b2b812d31d6e890f1cf87cef1', '103.47.135.184', 'okhttp/3.8.1', 1522249487, ''),
('d20d1e4cea3769b6d0df03f905bf38d2', '103.47.135.184', 'okhttp/3.8.1', 1522249743, ''),
('df94f4f3231267f4fd16763771b7409b', '103.47.135.184', 'okhttp/3.8.1', 1522249746, ''),
('d17e183daed164475831d5e815c4fc82', '103.47.135.184', 'okhttp/3.8.1', 1522249822, ''),
('b9bc84b99327c41e055ad2fccd76c954', '103.47.135.184', 'okhttp/3.8.1', 1522249826, ''),
('38dfbf1cfb08816cf006c02728e31b80', '103.47.135.184', 'okhttp/3.8.1', 1522249990, ''),
('e11c82d9f31d96cc0964e1ffa5fb15b5', '103.47.135.184', 'okhttp/3.8.1', 1522249990, ''),
('d508385abedff9dcd72850532dfb6ced', '103.47.135.160', 'okhttp/3.8.1', 1522280653, ''),
('622ba5cbda2da3d627746b08a2929633', '103.47.135.160', 'okhttp/3.8.1', 1522280653, ''),
('dc3012af6a1759dcc538c1bfc1ac6b0e', '103.47.135.184', 'okhttp/3.8.1', 1522539514, ''),
('6ddbcb3caca33a59b58a38e9310e9cf9', '103.47.135.184', 'okhttp/3.8.1', 1522539514, ''),
('2983e8bb0f83989ada928ed96b221156', '103.47.135.184', 'okhttp/3.8.1', 1522541370, ''),
('400d0371fef2fef3f6a9992176b8b23c', '103.47.135.184', 'okhttp/3.8.1', 1522541382, ''),
('244c1b453a50fc0c2295492a46662bb4', '103.47.135.184', 'okhttp/3.8.1', 1522541927, ''),
('cc19620580b3ebf32fa3043dfa8f1c1b', '103.47.135.184', 'okhttp/3.8.1', 1522541927, ''),
('ba999c9092f332cbf812315e4208673e', '103.47.135.184', 'okhttp/3.8.1', 1522541939, ''),
('b5e7fbeb0589c62c5e0b9982725db75d', '103.47.135.184', 'okhttp/3.8.1', 1522543251, ''),
('e2d368c98917e98a8723ea8da0518a69', '103.47.135.184', 'okhttp/3.8.1', 1522543251, ''),
('5f6e171e02465c11e4e8d0dedd83561e', '103.47.135.184', 'okhttp/3.8.1', 1522543393, ''),
('c85ee6138f1866fa93dcdc023cd90710', '103.47.135.184', 'okhttp/3.8.1', 1522543816, ''),
('42120a563dbd827e1a714de5fea6fe67', '103.47.135.184', 'okhttp/3.8.1', 1522543816, ''),
('8769071383edbb25d78751de3beb0ddc', '103.47.135.184', 'okhttp/3.8.1', 1522543859, ''),
('ca8cddf9cb77400d665ba7693d1a2e48', '103.47.135.184', 'okhttp/3.8.1', 1522545791, ''),
('e5c04b5772ce313ea30ee3965eb32c25', '103.47.135.184', 'okhttp/3.8.1', 1522545791, ''),
('2009ee16d397bf74b9454716f72a4ceb', '103.47.135.184', 'okhttp/3.8.1', 1522545795, ''),
('83b16b263e89e9024e78744dc7d2c5cc', '103.47.135.184', 'okhttp/3.8.1', 1522545867, ''),
('145ef147062cabab3abb15820a61ab2e', '103.47.135.184', 'okhttp/3.8.1', 1522545867, '');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) NOT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_displayed` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `is_displayed`, `created_at`, `updated_at`) VALUES
(0, 'none', 'none', '0', NULL, NULL),
(2, 'AF', 'Afghanistan', '1', NULL, NULL),
(3, 'AL', 'Albania', '1', NULL, NULL),
(4, 'DZ', 'Algeria', '1', NULL, NULL),
(5, 'DS', 'American Samoa', '1', NULL, NULL),
(6, 'AD', 'Andorra', '1', NULL, NULL),
(7, 'AO', 'Angola', '1', NULL, NULL),
(8, 'AI', 'Anguilla', '1', NULL, NULL),
(9, 'AQ', 'Antarctica', '1', NULL, NULL),
(10, 'AG', 'Antigua and Barbuda', '1', NULL, NULL),
(11, 'AR', 'Argentina', '1', NULL, NULL),
(12, 'AM', 'Armenia', '1', NULL, NULL),
(13, 'AW', 'Aruba', '1', NULL, NULL),
(14, 'AU', 'Australia', '1', NULL, NULL),
(15, 'AT', 'Austria', '1', NULL, NULL),
(16, 'AZ', 'Azerbaijan', '1', NULL, NULL),
(17, 'BS', 'Bahamas', '1', NULL, NULL),
(18, 'BH', 'Bahrain', '1', NULL, NULL),
(19, 'BD', 'Bangladesh', '1', NULL, NULL),
(20, 'BB', 'Barbados', '1', NULL, NULL),
(21, 'BY', 'Belarus', '1', NULL, NULL),
(22, 'BE', 'Belgium', '1', NULL, NULL),
(23, 'BZ', 'Belize', '1', NULL, NULL),
(24, 'BJ', 'Benin', '1', NULL, NULL),
(25, 'BM', 'Bermuda', '1', NULL, NULL),
(26, 'BT', 'Bhutan', '1', NULL, NULL),
(27, 'BO', 'Bolivia', '1', NULL, NULL),
(28, 'BA', 'Bosnia and Herzegovina', '1', NULL, NULL),
(29, 'BW', 'Botswana', '1', NULL, NULL),
(30, 'BV', 'Bouvet Island', '1', NULL, NULL),
(31, 'BR', 'Brazil', '0', NULL, NULL),
(32, 'IO', 'British Indian Ocean Territory', '0', NULL, NULL),
(33, 'BN', 'Brunei Darussalam', '0', NULL, NULL),
(34, 'BG', 'Bulgaria', '0', NULL, NULL),
(35, 'BF', 'Burkina Faso', '0', NULL, NULL),
(36, 'BI', 'Burundi', '0', NULL, NULL),
(37, 'KH', 'Cambodia', '0', NULL, NULL),
(38, 'CM', 'Cameroon', '0', NULL, NULL),
(39, 'CA', 'Canada', '0', NULL, NULL),
(40, 'CV', 'Cape Verde', '0', NULL, NULL),
(41, 'KY', 'Cayman Islands', '0', NULL, NULL),
(42, 'CF', 'Central African Republic', '0', NULL, NULL),
(43, 'TD', 'Chad', '0', NULL, NULL),
(44, 'CL', 'Chile', '0', NULL, NULL),
(45, 'CN', 'China', '0', NULL, NULL),
(46, 'CX', 'Christmas Island', '0', NULL, NULL),
(47, 'CC', 'Cocos (Keeling) Islands', '0', NULL, NULL),
(48, 'CO', 'Colombia', '0', NULL, NULL),
(49, 'KM', 'Comoros', '0', NULL, NULL),
(50, 'CG', 'Congo', '0', NULL, NULL),
(51, 'CK', 'Cook Islands', '0', NULL, NULL),
(52, 'CR', 'Costa Rica', '0', NULL, NULL),
(53, 'HR', 'Croatia (Hrvatska)', '0', NULL, NULL),
(54, 'CU', 'Cuba', '0', NULL, NULL),
(55, 'CY', 'Cyprus', '0', NULL, NULL),
(56, 'CZ', 'Czech Republic', '0', NULL, NULL),
(57, 'DK', 'Denmark', '0', NULL, NULL),
(58, 'DJ', 'Djibouti', '0', NULL, NULL),
(59, 'DM', 'Dominica', '0', NULL, NULL),
(60, 'DO', 'Dominican Republic', '0', NULL, NULL),
(61, 'TP', 'East Timor', '0', NULL, NULL),
(62, 'EC', 'Ecuador', '0', NULL, NULL),
(63, 'EG', 'Egypt', '0', NULL, NULL),
(64, 'SV', 'El Salvador', '0', NULL, NULL),
(65, 'GQ', 'Equatorial Guinea', '0', NULL, NULL),
(66, 'ER', 'Eritrea', '0', NULL, NULL),
(67, 'EE', 'Estonia', '0', NULL, NULL),
(68, 'ET', 'Ethiopia', '0', NULL, NULL),
(69, 'FK', 'Falkland Islands (Malvinas)', '0', NULL, NULL),
(70, 'FO', 'Faroe Islands', '0', NULL, NULL),
(71, 'FJ', 'Fiji', '0', NULL, NULL),
(72, 'FI', 'Finland', '0', NULL, NULL),
(73, 'FR', 'France', '0', NULL, NULL),
(74, 'FX', 'France, Metropolitan', '0', NULL, NULL),
(75, 'GF', 'French Guiana', '0', NULL, NULL),
(76, 'PF', 'French Polynesia', '0', NULL, NULL),
(77, 'TF', 'French Southern Territories', '0', NULL, NULL),
(78, 'GA', 'Gabon', '0', NULL, NULL),
(79, 'GM', 'Gambia', '0', NULL, NULL),
(80, 'GE', 'Georgia', '0', NULL, NULL),
(81, 'DE', 'Germany', '0', NULL, NULL),
(82, 'GH', 'Ghana', '0', NULL, NULL),
(83, 'GI', 'Gibraltar', '0', NULL, NULL),
(84, 'GK', 'Guernsey', '0', NULL, NULL),
(85, 'GR', 'Greece', '0', NULL, NULL),
(86, 'GL', 'Greenland', '0', NULL, NULL),
(87, 'GD', 'Grenada', '0', NULL, NULL),
(88, 'GP', 'Guadeloupe', '0', NULL, NULL),
(89, 'GU', 'Guam', '0', NULL, NULL),
(90, 'GT', 'Guatemala', '0', NULL, NULL),
(91, 'GN', 'Guinea', '0', NULL, NULL),
(92, 'GW', 'Guinea-Bissau', '0', NULL, NULL),
(93, 'GY', 'Guyana', '0', NULL, NULL),
(94, 'HT', 'Haiti', '0', NULL, NULL),
(95, 'HM', 'Heard and Mc Donald Islands', '0', NULL, NULL),
(96, 'HN', 'Honduras', '0', NULL, NULL),
(97, 'HK', 'Hong Kong', '0', NULL, NULL),
(98, 'HU', 'Hungary', '0', NULL, NULL),
(99, 'IS', 'Iceland', '0', NULL, NULL),
(100, 'IN', 'India', '0', NULL, NULL),
(101, 'IM', 'Isle of Man', '0', NULL, NULL),
(102, 'ID', 'Indonesia', '1', NULL, NULL),
(103, 'IR', 'Iran (Islamic Republic of)', '0', NULL, NULL),
(104, 'IQ', 'Iraq', '0', NULL, NULL),
(105, 'IE', 'Ireland', '0', NULL, NULL),
(106, 'IL', 'Israel', '0', NULL, NULL),
(107, 'IT', 'Italy', '0', NULL, NULL),
(108, 'CI', 'Ivory Coast', '0', NULL, NULL),
(109, 'JE', 'Jersey', '0', NULL, NULL),
(110, 'JM', 'Jamaica', '0', NULL, NULL),
(111, 'JP', 'Japan', '1', NULL, NULL),
(112, 'JO', 'Jordan', '0', NULL, NULL),
(113, 'KZ', 'Kazakhstan', '0', NULL, NULL),
(114, 'KE', 'Kenya', '0', NULL, NULL),
(115, 'KI', 'Kiribati', '1', NULL, NULL),
(116, 'KP', 'Korea, Democratic People\'s Republic of', '0', NULL, NULL),
(117, 'KR', 'Korea, Republic of', '0', NULL, NULL),
(118, 'XK', 'Kosovo', '0', NULL, NULL),
(119, 'KW', 'Kuwait', '0', NULL, NULL),
(120, 'KG', 'Kyrgyzstan', '0', NULL, NULL),
(121, 'LA', 'Lao People\'s Democratic Republic', '0', NULL, NULL),
(122, 'LV', 'Latvia', '0', NULL, NULL),
(123, 'LB', 'Lebanon', '0', NULL, NULL),
(124, 'LS', 'Lesotho', '0', NULL, NULL),
(125, 'LR', 'Liberia', '0', NULL, NULL),
(126, 'LY', 'Libyan Arab Jamahiriya', '0', NULL, NULL),
(127, 'LI', 'Liechtenstein', '0', NULL, NULL),
(128, 'LT', 'Lithuania', '0', NULL, NULL),
(129, 'LU', 'Luxembourg', '0', NULL, NULL),
(130, 'MO', 'Macau', '0', NULL, NULL),
(131, 'MK', 'Macedonia', '0', NULL, NULL),
(132, 'MG', 'Madagascar', '0', NULL, NULL),
(133, 'MW', 'Malawi', '0', NULL, NULL),
(134, 'MY', 'Malaysia', '0', NULL, NULL),
(135, 'MV', 'Maldives', '0', NULL, NULL),
(136, 'ML', 'Mali', '0', NULL, NULL),
(137, 'MT', 'Malta', '0', NULL, NULL),
(138, 'MH', 'Marshall Islands', '0', NULL, NULL),
(139, 'MQ', 'Martinique', '0', NULL, NULL),
(140, 'MR', 'Mauritania', '0', NULL, NULL),
(141, 'MU', 'Mauritius', '0', NULL, NULL),
(142, 'TY', 'Mayotte', '0', NULL, NULL),
(143, 'MX', 'Mexico', '0', NULL, NULL),
(144, 'FM', 'Micronesia, Federated States of', '0', NULL, NULL),
(145, 'MD', 'Moldova, Republic of', '0', NULL, NULL),
(146, 'MC', 'Monaco', '0', NULL, NULL),
(147, 'MN', 'Mongolia', '0', NULL, NULL),
(148, 'ME', 'Montenegro', '0', NULL, NULL),
(149, 'MS', 'Montserrat', '0', NULL, NULL),
(150, 'MA', 'Morocco', '0', NULL, NULL),
(151, 'MZ', 'Mozambique', '0', NULL, NULL),
(152, 'MM', 'Myanmar', '0', NULL, NULL),
(153, 'NA', 'Namibia', '0', NULL, NULL),
(154, 'NR', 'Nauru', '0', NULL, NULL),
(155, 'NP', 'Nepal', '0', NULL, NULL),
(156, 'NL', 'Netherlands', '0', NULL, NULL),
(157, 'AN', 'Netherlands Antilles', '0', NULL, NULL),
(158, 'NC', 'New Caledonia', '0', NULL, NULL),
(159, 'NZ', 'New Zealand', '0', NULL, NULL),
(160, 'NI', 'Nicaragua', '0', NULL, NULL),
(161, 'NE', 'Niger', '0', NULL, NULL),
(162, 'NG', 'Nigeria', '0', NULL, NULL),
(163, 'NU', 'Niue', '0', NULL, NULL),
(164, 'NF', 'Norfolk Island', '0', NULL, NULL),
(165, 'MP', 'Northern Mariana Islands', '0', NULL, NULL),
(166, 'NO', 'Norway', '0', NULL, NULL),
(167, 'OM', 'Oman', '0', NULL, NULL),
(168, 'PK', 'Pakistan', '0', NULL, NULL),
(169, 'PW', 'Palau', '0', NULL, NULL),
(170, 'PS', 'Palestine', '0', NULL, NULL),
(171, 'PA', 'Panama', '0', NULL, NULL),
(172, 'PG', 'Papua New Guinea', '0', NULL, NULL),
(173, 'PY', 'Paraguay', '0', NULL, NULL),
(174, 'PE', 'Peru', '0', NULL, NULL),
(175, 'PH', 'Philippines', '0', NULL, NULL),
(176, 'PN', 'Pitcairn', '0', NULL, NULL),
(177, 'PL', 'Poland', '0', NULL, NULL),
(178, 'PT', 'Portugal', '0', NULL, NULL),
(179, 'PR', 'Puerto Rico', '0', NULL, NULL),
(180, 'QA', 'Qatar', '0', NULL, NULL),
(181, 'RE', 'Reunion', '0', NULL, NULL),
(182, 'RO', 'Romania', '0', NULL, NULL),
(183, 'RU', 'Russian Federation', '0', NULL, NULL),
(184, 'RW', 'Rwanda', '0', NULL, NULL),
(185, 'KN', 'Saint Kitts and Nevis', '0', NULL, NULL),
(186, 'LC', 'Saint Lucia', '0', NULL, NULL),
(187, 'VC', 'Saint Vincent and the Grenadines', '0', NULL, NULL),
(188, 'WS', 'Samoa', '0', NULL, NULL),
(189, 'SM', 'San Marino', '0', NULL, NULL),
(190, 'ST', 'Sao Tome and Principe', '0', NULL, NULL),
(191, 'SA', 'Saudi Arabia', '0', NULL, NULL),
(192, 'SN', 'Senegal', '0', NULL, NULL),
(193, 'RS', 'Serbia', '0', NULL, NULL),
(194, 'SC', 'Seychelles', '0', NULL, NULL),
(195, 'SL', 'Sierra Leone', '0', NULL, NULL),
(196, 'SG', 'Singapore', '0', NULL, NULL),
(197, 'SK', 'Slovakia', '0', NULL, NULL),
(198, 'SI', 'Slovenia', '0', NULL, NULL),
(199, 'SB', 'Solomon Islands', '0', NULL, NULL),
(200, 'SO', 'Somalia', '0', NULL, NULL),
(201, 'ZA', 'South Africa', '0', NULL, NULL),
(202, 'GS', 'South Georgia South Sandwich Islands', '0', NULL, NULL),
(203, 'ES', 'Spain', '0', NULL, NULL),
(204, 'LK', 'Sri Lanka', '0', NULL, NULL),
(205, 'SH', 'St. Helena', '0', NULL, NULL),
(206, 'PM', 'St. Pierre and Miquelon', '0', NULL, NULL),
(207, 'SD', 'Sudan', '0', NULL, NULL),
(208, 'SR', 'Suriname', '0', NULL, NULL),
(209, 'SJ', 'Svalbard and Jan Mayen Islands', '0', NULL, NULL),
(210, 'SZ', 'Swaziland', '0', NULL, NULL),
(211, 'SE', 'Sweden', '0', NULL, NULL),
(212, 'CH', 'Switzerland', '0', NULL, NULL),
(213, 'SY', 'Syrian Arab Republic', '0', NULL, NULL),
(214, 'TW', 'Taiwan', '0', NULL, NULL),
(215, 'TJ', 'Tajikistan', '0', NULL, NULL),
(216, 'TZ', 'Tanzania, United Republic of', '0', NULL, NULL),
(217, 'TH', 'Thailand', '0', NULL, NULL),
(218, 'TG', 'Togo', '0', NULL, NULL),
(219, 'TK', 'Tokelau', '0', NULL, NULL),
(220, 'TO', 'Tonga', '0', NULL, NULL),
(221, 'TT', 'Trinidad and Tobago', '0', NULL, NULL),
(222, 'TN', 'Tunisia', '0', NULL, NULL),
(223, 'TR', 'Turkey', '0', NULL, NULL),
(224, 'TM', 'Turkmenistan', '0', NULL, NULL),
(225, 'TC', 'Turks and Caicos Islands', '0', NULL, NULL),
(226, 'TV', 'Tuvalu', '0', NULL, NULL),
(227, 'UG', 'Uganda', '0', NULL, NULL),
(228, 'UA', 'Ukraine', '0', NULL, NULL),
(229, 'AE', 'United Arab Emirates', '0', NULL, NULL),
(230, 'GB', 'United Kingdom', '0', NULL, NULL),
(231, 'US', 'United States', '0', NULL, NULL),
(232, 'UM', 'United States minor outlying islands', '0', NULL, NULL),
(233, 'UY', 'Uruguay', '0', NULL, NULL),
(234, 'UZ', 'Uzbekistan', '0', NULL, NULL),
(235, 'VU', 'Vanuatu', '0', NULL, NULL),
(236, 'VA', 'Vatican City State', '0', NULL, NULL),
(237, 'VE', 'Venezuela', '0', NULL, NULL),
(238, 'VN', 'Vietnam', '0', NULL, NULL),
(239, 'VG', 'Virgin Islands (British)', '0', NULL, NULL),
(240, 'VI', 'Virgin Islands (U.S.)', '0', NULL, NULL),
(241, 'WF', 'Wallis and Futuna Islands', '0', NULL, NULL),
(242, 'EH', 'Western Sahara', '0', NULL, NULL),
(243, 'YE', 'Yemen', '0', NULL, NULL),
(244, 'ZR', 'Zaire', '0', NULL, NULL),
(245, 'ZM', 'Zambia', '0', NULL, NULL),
(246, 'ZW', 'Zimbabwe', '0', NULL, NULL),
(247, 'AF', 'Afghanistan', '0', NULL, NULL),
(248, 'AL', 'Albania', '0', NULL, NULL),
(249, 'DZ', 'Algeria', '0', NULL, NULL),
(250, 'DS', 'American Samoa', '0', NULL, NULL),
(251, 'AD', 'Andorra', '0', NULL, NULL),
(252, 'AO', 'Angola', '0', NULL, NULL),
(253, 'AI', 'Anguilla', '0', NULL, NULL),
(254, 'AQ', 'Antarctica', '0', NULL, NULL),
(255, 'AG', 'Antigua and Barbuda', '0', NULL, NULL),
(256, 'AR', 'Argentina', '0', NULL, NULL),
(257, 'AM', 'Armenia', '0', NULL, NULL),
(258, 'AW', 'Aruba', '0', NULL, NULL),
(259, 'AU', 'Australia', '0', NULL, NULL),
(260, 'AT', 'Austria', '0', NULL, NULL),
(261, 'AZ', 'Azerbaijan', '0', NULL, NULL),
(262, 'BS', 'Bahamas', '0', NULL, NULL),
(263, 'BH', 'Bahrain', '0', NULL, NULL),
(264, 'BD', 'Bangladesh', '0', NULL, NULL),
(265, 'BB', 'Barbados', '0', NULL, NULL),
(266, 'BY', 'Belarus', '0', NULL, NULL),
(267, 'BE', 'Belgium', '0', NULL, NULL),
(268, 'BZ', 'Belize', '0', NULL, NULL),
(269, 'BJ', 'Benin', '0', NULL, NULL),
(270, 'BM', 'Bermuda', '0', NULL, NULL),
(271, 'BT', 'Bhutan', '0', NULL, NULL),
(272, 'BO', 'Bolivia', '0', NULL, NULL),
(273, 'BA', 'Bosnia and Herzegovina', '0', NULL, NULL),
(274, 'BW', 'Botswana', '0', NULL, NULL),
(275, 'BV', 'Bouvet Island', '0', NULL, NULL),
(276, 'BR', 'Brazil', '0', NULL, NULL),
(277, 'IO', 'British Indian Ocean Territory', '0', NULL, NULL),
(278, 'BN', 'Brunei Darussalam', '0', NULL, NULL),
(279, 'BG', 'Bulgaria', '0', NULL, NULL),
(280, 'BF', 'Burkina Faso', '0', NULL, NULL),
(281, 'BI', 'Burundi', '0', NULL, NULL),
(282, 'KH', 'Cambodia', '0', NULL, NULL),
(283, 'CM', 'Cameroon', '0', NULL, NULL),
(284, 'CA', 'Canada', '0', NULL, NULL),
(285, 'CV', 'Cape Verde', '0', NULL, NULL),
(286, 'KY', 'Cayman Islands', '0', NULL, NULL),
(287, 'CF', 'Central African Republic', '0', NULL, NULL),
(288, 'TD', 'Chad', '0', NULL, NULL),
(289, 'CL', 'Chile', '0', NULL, NULL),
(290, 'CN', 'China', '0', NULL, NULL),
(291, 'CX', 'Christmas Island', '0', NULL, NULL),
(292, 'CC', 'Cocos (Keeling) Islands', '0', NULL, NULL),
(293, 'CO', 'Colombia', '0', NULL, NULL),
(294, 'KM', 'Comoros', '0', NULL, NULL),
(295, 'CG', 'Congo', '0', NULL, NULL),
(296, 'CK', 'Cook Islands', '0', NULL, NULL),
(297, 'CR', 'Costa Rica', '0', NULL, NULL),
(298, 'HR', 'Croatia (Hrvatska)', '0', NULL, NULL),
(299, 'CU', 'Cuba', '0', NULL, NULL),
(300, 'CY', 'Cyprus', '0', NULL, NULL),
(301, 'CZ', 'Czech Republic', '0', NULL, NULL),
(302, 'DK', 'Denmark', '0', NULL, NULL),
(303, 'DJ', 'Djibouti', '0', NULL, NULL),
(304, 'DM', 'Dominica', '0', NULL, NULL),
(305, 'DO', 'Dominican Republic', '0', NULL, NULL),
(306, 'TP', 'East Timor', '0', NULL, NULL),
(307, 'EC', 'Ecuador', '0', NULL, NULL),
(308, 'EG', 'Egypt', '0', NULL, NULL),
(309, 'SV', 'El Salvador', '0', NULL, NULL),
(310, 'GQ', 'Equatorial Guinea', '0', NULL, NULL),
(311, 'ER', 'Eritrea', '0', NULL, NULL),
(312, 'EE', 'Estonia', '0', NULL, NULL),
(313, 'ET', 'Ethiopia', '0', NULL, NULL),
(314, 'FK', 'Falkland Islands (Malvinas)', '0', NULL, NULL),
(315, 'FO', 'Faroe Islands', '0', NULL, NULL),
(316, 'FJ', 'Fiji', '0', NULL, NULL),
(317, 'FI', 'Finland', '0', NULL, NULL),
(318, 'FR', 'France', '0', NULL, NULL),
(319, 'FX', 'France, Metropolitan', '0', NULL, NULL),
(320, 'GF', 'French Guiana', '0', NULL, NULL),
(321, 'PF', 'French Polynesia', '0', NULL, NULL),
(322, 'TF', 'French Southern Territories', '0', NULL, NULL),
(323, 'GA', 'Gabon', '0', NULL, NULL),
(324, 'GM', 'Gambia', '0', NULL, NULL),
(325, 'GE', 'Georgia', '0', NULL, NULL),
(326, 'DE', 'Germany', '0', NULL, NULL),
(327, 'GH', 'Ghana', '0', NULL, NULL),
(328, 'GI', 'Gibraltar', '0', NULL, NULL),
(329, 'GK', 'Guernsey', '0', NULL, NULL),
(330, 'GR', 'Greece', '0', NULL, NULL),
(331, 'GL', 'Greenland', '0', NULL, NULL),
(332, 'GD', 'Grenada', '0', NULL, NULL),
(333, 'GP', 'Guadeloupe', '0', NULL, NULL),
(334, 'GU', 'Guam', '0', NULL, NULL),
(335, 'GT', 'Guatemala', '0', NULL, NULL),
(336, 'GN', 'Guinea', '0', NULL, NULL),
(337, 'GW', 'Guinea-Bissau', '0', NULL, NULL),
(338, 'GY', 'Guyana', '0', NULL, NULL),
(339, 'HT', 'Haiti', '0', NULL, NULL),
(340, 'HM', 'Heard and Mc Donald Islands', '0', NULL, NULL),
(341, 'HN', 'Honduras', '0', NULL, NULL),
(342, 'HK', 'Hong Kong', '0', NULL, NULL),
(343, 'HU', 'Hungary', '0', NULL, NULL),
(344, 'IS', 'Iceland', '0', NULL, NULL),
(345, 'IN', 'India', '0', NULL, NULL),
(346, 'IM', 'Isle of Man', '0', NULL, NULL),
(347, 'ID', 'Indonesia', '0', NULL, NULL),
(348, 'IR', 'Iran (Islamic Republic of)', '0', NULL, NULL),
(349, 'IQ', 'Iraq', '0', NULL, NULL),
(350, 'IE', 'Ireland', '0', NULL, NULL),
(351, 'IL', 'Israel', '0', NULL, NULL),
(352, 'IT', 'Italy', '0', NULL, NULL),
(353, 'CI', 'Ivory Coast', '0', NULL, NULL),
(354, 'JE', 'Jersey', '0', NULL, NULL),
(355, 'JM', 'Jamaica', '0', NULL, NULL),
(356, 'JP', 'Japan', '0', NULL, NULL),
(357, 'JO', 'Jordan', '0', NULL, NULL),
(358, 'KZ', 'Kazakhstan', '0', NULL, NULL),
(359, 'KE', 'Kenya', '0', NULL, NULL),
(360, 'KI', 'Kiribati', '0', NULL, NULL),
(361, 'KP', 'Korea, Democratic People\'s Republic of', '0', NULL, NULL),
(362, 'KR', 'Korea, Republic of', '0', NULL, NULL),
(363, 'XK', 'Kosovo', '0', NULL, NULL),
(364, 'KW', 'Kuwait', '0', NULL, NULL),
(365, 'KG', 'Kyrgyzstan', '0', NULL, NULL),
(366, 'LA', 'Lao People\'s Democratic Republic', '0', NULL, NULL),
(367, 'LV', 'Latvia', '0', NULL, NULL),
(368, 'LB', 'Lebanon', '0', NULL, NULL),
(369, 'LS', 'Lesotho', '0', NULL, NULL),
(370, 'LR', 'Liberia', '0', NULL, NULL),
(371, 'LY', 'Libyan Arab Jamahiriya', '0', NULL, NULL),
(372, 'LI', 'Liechtenstein', '0', NULL, NULL),
(373, 'LT', 'Lithuania', '0', NULL, NULL),
(374, 'LU', 'Luxembourg', '0', NULL, NULL),
(375, 'MO', 'Macau', '0', NULL, NULL),
(376, 'MK', 'Macedonia', '0', NULL, NULL),
(377, 'MG', 'Madagascar', '0', NULL, NULL),
(378, 'MW', 'Malawi', '0', NULL, NULL),
(379, 'MY', 'Malaysia', '0', NULL, NULL),
(380, 'MV', 'Maldives', '0', NULL, NULL),
(381, 'ML', 'Mali', '0', NULL, NULL),
(382, 'MT', 'Malta', '0', NULL, NULL),
(383, 'MH', 'Marshall Islands', '0', NULL, NULL),
(384, 'MQ', 'Martinique', '0', NULL, NULL),
(385, 'MR', 'Mauritania', '0', NULL, NULL),
(386, 'MU', 'Mauritius', '0', NULL, NULL),
(387, 'TY', 'Mayotte', '0', NULL, NULL),
(388, 'MX', 'Mexico', '0', NULL, NULL),
(389, 'FM', 'Micronesia, Federated States of', '0', NULL, NULL),
(390, 'MD', 'Moldova, Republic of', '0', NULL, NULL),
(391, 'MC', 'Monaco', '0', NULL, NULL),
(392, 'MN', 'Mongolia', '0', NULL, NULL),
(393, 'ME', 'Montenegro', '0', NULL, NULL),
(394, 'MS', 'Montserrat', '0', NULL, NULL),
(395, 'MA', 'Morocco', '0', NULL, NULL),
(396, 'MZ', 'Mozambique', '0', NULL, NULL),
(397, 'MM', 'Myanmar', '0', NULL, NULL),
(398, 'NA', 'Namibia', '0', NULL, NULL),
(399, 'NR', 'Nauru', '0', NULL, NULL),
(400, 'NP', 'Nepal', '0', NULL, NULL),
(401, 'NL', 'Netherlands', '0', NULL, NULL),
(402, 'AN', 'Netherlands Antilles', '0', NULL, NULL),
(403, 'NC', 'New Caledonia', '0', NULL, NULL),
(404, 'NZ', 'New Zealand', '0', NULL, NULL),
(405, 'NI', 'Nicaragua', '0', NULL, NULL),
(406, 'NE', 'Niger', '0', NULL, NULL),
(407, 'NG', 'Nigeria', '0', NULL, NULL),
(408, 'NU', 'Niue', '0', NULL, NULL),
(409, 'NF', 'Norfolk Island', '0', NULL, NULL),
(410, 'MP', 'Northern Mariana Islands', '0', NULL, NULL),
(411, 'NO', 'Norway', '0', NULL, NULL),
(412, 'OM', 'Oman', '0', NULL, NULL),
(413, 'PK', 'Pakistan', '0', NULL, NULL),
(414, 'PW', 'Palau', '0', NULL, NULL),
(415, 'PS', 'Palestine', '0', NULL, NULL),
(416, 'PA', 'Panama', '0', NULL, NULL),
(417, 'PG', 'Papua New Guinea', '0', NULL, NULL),
(418, 'PY', 'Paraguay', '0', NULL, NULL),
(419, 'PE', 'Peru', '0', NULL, NULL),
(420, 'PH', 'Philippines', '0', NULL, NULL),
(421, 'PN', 'Pitcairn', '0', NULL, NULL),
(422, 'PL', 'Poland', '0', NULL, NULL),
(423, 'PT', 'Portugal', '0', NULL, NULL),
(424, 'PR', 'Puerto Rico', '0', NULL, NULL),
(425, 'QA', 'Qatar', '0', NULL, NULL),
(426, 'RE', 'Reunion', '0', NULL, NULL),
(427, 'RO', 'Romania', '0', NULL, NULL),
(428, 'RU', 'Russian Federation', '0', NULL, NULL),
(429, 'RW', 'Rwanda', '0', NULL, NULL),
(430, 'KN', 'Saint Kitts and Nevis', '0', NULL, NULL),
(431, 'LC', 'Saint Lucia', '0', NULL, NULL),
(432, 'VC', 'Saint Vincent and the Grenadines', '0', NULL, NULL),
(433, 'WS', 'Samoa', '0', NULL, NULL),
(434, 'SM', 'San Marino', '0', NULL, NULL),
(435, 'ST', 'Sao Tome and Principe', '0', NULL, NULL),
(436, 'SA', 'Saudi Arabia', '0', NULL, NULL),
(437, 'SN', 'Senegal', '0', NULL, NULL),
(438, 'RS', 'Serbia', '0', NULL, NULL),
(439, 'SC', 'Seychelles', '0', NULL, NULL),
(440, 'SL', 'Sierra Leone', '0', NULL, NULL),
(441, 'SG', 'Singapore', '0', NULL, NULL),
(442, 'SK', 'Slovakia', '0', NULL, NULL),
(443, 'SI', 'Slovenia', '0', NULL, NULL),
(444, 'SB', 'Solomon Islands', '0', NULL, NULL),
(445, 'SO', 'Somalia', '0', NULL, NULL),
(446, 'ZA', 'South Africa', '0', NULL, NULL),
(447, 'GS', 'South Georgia South Sandwich Islands', '0', NULL, NULL),
(448, 'ES', 'Spain', '0', NULL, NULL),
(449, 'LK', 'Sri Lanka', '0', NULL, NULL),
(450, 'SH', 'St. Helena', '0', NULL, NULL),
(451, 'PM', 'St. Pierre and Miquelon', '0', NULL, NULL),
(452, 'SD', 'Sudan', '0', NULL, NULL),
(453, 'SR', 'Suriname', '0', NULL, NULL),
(454, 'SJ', 'Svalbard and Jan Mayen Islands', '0', NULL, NULL),
(455, 'SZ', 'Swaziland', '0', NULL, NULL),
(456, 'SE', 'Sweden', '0', NULL, NULL),
(457, 'CH', 'Switzerland', '0', NULL, NULL),
(458, 'SY', 'Syrian Arab Republic', '0', NULL, NULL),
(459, 'TW', 'Taiwan', '0', NULL, NULL),
(460, 'TJ', 'Tajikistan', '0', NULL, NULL),
(461, 'TZ', 'Tanzania, United Republic of', '0', NULL, NULL),
(462, 'TH', 'Thailand', '0', NULL, NULL),
(463, 'TG', 'Togo', '0', NULL, NULL),
(464, 'TK', 'Tokelau', '0', NULL, NULL),
(465, 'TO', 'Tonga', '0', NULL, NULL),
(466, 'TT', 'Trinidad and Tobago', '0', NULL, NULL),
(467, 'TN', 'Tunisia', '0', NULL, NULL),
(468, 'TR', 'Turkey', '0', NULL, NULL),
(469, 'TM', 'Turkmenistan', '0', NULL, NULL),
(470, 'TC', 'Turks and Caicos Islands', '0', NULL, NULL),
(471, 'TV', 'Tuvalu', '0', NULL, NULL),
(472, 'UG', 'Uganda', '0', NULL, NULL),
(473, 'UA', 'Ukraine', '0', NULL, NULL),
(474, 'AE', 'United Arab Emirates', '0', NULL, NULL),
(475, 'GB', 'United Kingdom', '0', NULL, NULL),
(476, 'US', 'United States', '0', NULL, NULL),
(477, 'UM', 'United States minor outlying islands', '0', NULL, NULL),
(478, 'UY', 'Uruguay', '0', NULL, NULL),
(479, 'UZ', 'Uzbekistan', '0', NULL, NULL),
(480, 'VU', 'Vanuatu', '0', NULL, NULL),
(481, 'VA', 'Vatican City State', '0', NULL, NULL),
(482, 'VE', 'Venezuela', '0', NULL, NULL),
(483, 'VN', 'Vietnam', '0', NULL, NULL),
(484, 'VG', 'Virgin Islands (British)', '0', NULL, NULL),
(485, 'VI', 'Virgin Islands (U.S.)', '0', NULL, NULL),
(486, 'WF', 'Wallis and Futuna Islands', '0', NULL, NULL),
(487, 'EH', 'Western Sahara', '0', NULL, NULL),
(488, 'YE', 'Yemen', '0', NULL, NULL),
(489, 'ZR', 'Zaire', '0', NULL, NULL),
(490, 'ZM', 'Zambia', '0', NULL, NULL),
(491, 'ZW', 'Zimbabwe', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries2`
--

CREATE TABLE `countries2` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries2`
--

INSERT INTO `countries2` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe'),
(246, 'AF', 'Afghanistan'),
(247, 'AL', 'Albania'),
(248, 'DZ', 'Algeria'),
(249, 'DS', 'American Samoa'),
(250, 'AD', 'Andorra'),
(251, 'AO', 'Angola'),
(252, 'AI', 'Anguilla'),
(253, 'AQ', 'Antarctica'),
(254, 'AG', 'Antigua and Barbuda'),
(255, 'AR', 'Argentina'),
(256, 'AM', 'Armenia'),
(257, 'AW', 'Aruba'),
(258, 'AU', 'Australia'),
(259, 'AT', 'Austria'),
(260, 'AZ', 'Azerbaijan'),
(261, 'BS', 'Bahamas'),
(262, 'BH', 'Bahrain'),
(263, 'BD', 'Bangladesh'),
(264, 'BB', 'Barbados'),
(265, 'BY', 'Belarus'),
(266, 'BE', 'Belgium'),
(267, 'BZ', 'Belize'),
(268, 'BJ', 'Benin'),
(269, 'BM', 'Bermuda'),
(270, 'BT', 'Bhutan'),
(271, 'BO', 'Bolivia'),
(272, 'BA', 'Bosnia and Herzegovina'),
(273, 'BW', 'Botswana'),
(274, 'BV', 'Bouvet Island'),
(275, 'BR', 'Brazil'),
(276, 'IO', 'British Indian Ocean Territory'),
(277, 'BN', 'Brunei Darussalam'),
(278, 'BG', 'Bulgaria'),
(279, 'BF', 'Burkina Faso'),
(280, 'BI', 'Burundi'),
(281, 'KH', 'Cambodia'),
(282, 'CM', 'Cameroon'),
(283, 'CA', 'Canada'),
(284, 'CV', 'Cape Verde'),
(285, 'KY', 'Cayman Islands'),
(286, 'CF', 'Central African Republic'),
(287, 'TD', 'Chad'),
(288, 'CL', 'Chile'),
(289, 'CN', 'China'),
(290, 'CX', 'Christmas Island'),
(291, 'CC', 'Cocos (Keeling) Islands'),
(292, 'CO', 'Colombia'),
(293, 'KM', 'Comoros'),
(294, 'CG', 'Congo'),
(295, 'CK', 'Cook Islands'),
(296, 'CR', 'Costa Rica'),
(297, 'HR', 'Croatia (Hrvatska)'),
(298, 'CU', 'Cuba'),
(299, 'CY', 'Cyprus'),
(300, 'CZ', 'Czech Republic'),
(301, 'DK', 'Denmark'),
(302, 'DJ', 'Djibouti'),
(303, 'DM', 'Dominica'),
(304, 'DO', 'Dominican Republic'),
(305, 'TP', 'East Timor'),
(306, 'EC', 'Ecuador'),
(307, 'EG', 'Egypt'),
(308, 'SV', 'El Salvador'),
(309, 'GQ', 'Equatorial Guinea'),
(310, 'ER', 'Eritrea'),
(311, 'EE', 'Estonia'),
(312, 'ET', 'Ethiopia'),
(313, 'FK', 'Falkland Islands (Malvinas)'),
(314, 'FO', 'Faroe Islands'),
(315, 'FJ', 'Fiji'),
(316, 'FI', 'Finland');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `filename`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pantai Kalimantan', '2018-05-01-024519-kartikajpg.jpg', 'Terletak di kalimantan Indonesia', '1', NULL, '2018-04-30 19:45:19'),
(4, 'asd', '2018-05-01-024535-padijpg.jpg', 'eeee', '0', '2018-04-25 21:52:39', '2018-04-30 19:45:35'),
(5, 'Pantai', '2018-04-26-050631-bali-39229790-1482324218-imagegallerylightboxlargejpg.jpg', 'Pantai kidul', '0', '2018-04-25 22:06:31', '2018-04-25 22:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `id` int(10) UNSIGNED NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `inbox_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `seen_seller` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `seen_buyer` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inbox_messages`
--

CREATE TABLE `inbox_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `inbox_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `user_type` enum('BUYER','SELLER') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` int(10) NOT NULL,
  `id_prov` char(2) NOT NULL,
  `name` tinytext NOT NULL,
  `id_jenis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `id_prov`, `name`, `id_jenis`) VALUES
(1101, '11', 'KAB. ACEH SELATAN', 1),
(1102, '11', 'KAB. ACEH TENGGARA', 1),
(1103, '11', 'KAB. ACEH TIMUR', 1),
(1104, '11', 'KAB. ACEH TENGAH', 1),
(1105, '11', 'KAB. ACEH BARAT', 1),
(1106, '11', 'KAB. ACEH BESAR', 1),
(1107, '11', 'KAB. PIDIE', 1),
(1108, '11', 'KAB. ACEH UTARA', 1),
(1109, '11', 'KAB. SIMEULUE', 1),
(1110, '11', 'KAB. ACEH SINGKIL', 1),
(1111, '11', 'KAB. BIREUEN', 1),
(1112, '11', 'KAB. ACEH BARAT DAYA', 1),
(1113, '11', 'KAB. GAYO LUES', 1),
(1114, '11', 'KAB. ACEH JAYA', 1),
(1115, '11', 'KAB. NAGAN RAYA', 1),
(1116, '11', 'KAB. ACEH TAMIANG', 1),
(1117, '11', 'KAB. BENER MERIAH', 1),
(1118, '11', 'KAB. PIDIE JAYA', 1),
(1171, '11', 'KOTA BANDA ACEH', 2),
(1172, '11', 'KOTA SABANG', 2),
(1173, '11', 'KOTA LHOKSEUMAWE', 2),
(1174, '11', 'KOTA LANGSA', 2),
(1175, '11', 'KOTA SUBULUSSALAM', 2),
(1201, '12', 'KAB. TAPANULI TENGAH', 1),
(1202, '12', 'KAB. TAPANULI UTARA', 1),
(1203, '12', 'KAB. TAPANULI SELATAN', 1),
(1204, '12', 'KAB. NIAS', 1),
(1205, '12', 'KAB. LANGKAT', 1),
(1206, '12', 'KAB. KARO', 1),
(1207, '12', 'KAB. DELI SERDANG', 1),
(1208, '12', 'KAB. SIMALUNGUN', 1),
(1209, '12', 'KAB. ASAHAN', 1),
(1210, '12', 'KAB. LABUHANBATU', 1),
(1211, '12', 'KAB. DAIRI', 1),
(1212, '12', 'KAB. TOBA SAMOSIR', 1),
(1213, '12', 'KAB. MANDAILING NATAL', 1),
(1214, '12', 'KAB. NIAS SELATAN', 1),
(1215, '12', 'KAB. PAKPAK BHARAT', 1),
(1216, '12', 'KAB. HUMBANG HASUNDUTAN', 1),
(1217, '12', 'KAB. SAMOSIR', 1),
(1218, '12', 'KAB. SERDANG BEDAGAI', 1),
(1219, '12', 'KAB. BATU BARA', 1),
(1220, '12', 'KAB. PADANG LAWAS UTARA', 1),
(1221, '12', 'KAB. PADANG LAWAS', 1),
(1222, '12', 'KAB. LABUHANBATU SELATAN', 1),
(1223, '12', 'KAB. LABUHANBATU UTARA', 1),
(1224, '12', 'KAB. NIAS UTARA', 1),
(1225, '12', 'KAB. NIAS BARAT', 1),
(1271, '12', 'KOTA MEDAN', 2),
(1272, '12', 'KOTA PEMATANG SIANTAR', 2),
(1273, '12', 'KOTA SIBOLGA', 2),
(1274, '12', 'KOTA TANJUNG BALAI', 2),
(1275, '12', 'KOTA BINJAI', 2),
(1276, '12', 'KOTA TEBING TINGGI', 2),
(1277, '12', 'KOTA PADANGSIDIMPUAN', 2),
(1278, '12', 'KOTA GUNUNGSITOLI', 2),
(1301, '13', 'KAB. PESISIR SELATAN', 1),
(1302, '13', 'KAB. SOLOK', 1),
(1303, '13', 'KAB. SIJUNJUNG', 1),
(1304, '13', 'KAB. TANAH DATAR', 1),
(1305, '13', 'KAB. PADANG PARIAMAN', 1),
(1306, '13', 'KAB. AGAM', 1),
(1307, '13', 'KAB. LIMA PULUH KOTA', 1),
(1308, '13', 'KAB. PASAMAN', 1),
(1309, '13', 'KAB. KEPULAUAN MENTAWAI', 1),
(1310, '13', 'KAB. DHARMASRAYA', 1),
(1311, '13', 'KAB. SOLOK SELATAN', 1),
(1312, '13', 'KAB. PASAMAN BARAT', 1),
(1371, '13', 'KOTA PADANG', 2),
(1372, '13', 'KOTA SOLOK', 2),
(1373, '13', 'KOTA SAWAHLUNTO', 2),
(1374, '13', 'KOTA PADANG PANJANG', 2),
(1375, '13', 'KOTA BUKITTINGGI', 2),
(1376, '13', 'KOTA PAYAKUMBUH', 2),
(1377, '13', 'KOTA PARIAMAN', 2),
(1401, '14', 'KAB. KAMPAR', 1),
(1402, '14', 'KAB. INDRAGIRI HULU', 1),
(1403, '14', 'KAB. BENGKALIS', 1),
(1404, '14', 'KAB. INDRAGIRI HILIR', 1),
(1405, '14', 'KAB. PELALAWAN', 1),
(1406, '14', 'KAB. ROKAN HULU', 1),
(1407, '14', 'KAB. ROKAN HILIR', 1),
(1408, '14', 'KAB. SIAK', 1),
(1409, '14', 'KAB. KUANTAN SINGINGI', 1),
(1410, '14', 'KAB. KEPULAUAN MERANTI', 1),
(1471, '14', 'KOTA PEKANBARU', 2),
(1472, '14', 'KOTA DUMAI', 2),
(1501, '15', 'KAB. KERINCI', 1),
(1502, '15', 'KAB. MERANGIN', 1),
(1503, '15', 'KAB. SAROLANGUN', 1),
(1504, '15', 'KAB. BATANGHARI', 1),
(1505, '15', 'KAB. MUARO JAMBI', 1),
(1506, '15', 'KAB. TANJUNG JABUNG BARAT', 1),
(1507, '15', 'KAB. TANJUNG JABUNG TIMUR', 1),
(1508, '15', 'KAB. BUNGO', 1),
(1509, '15', 'KAB. TEBO', 1),
(1571, '15', 'KOTA JAMBI', 2),
(1572, '15', 'KOTA SUNGAI PENUH', 2),
(1601, '16', 'KAB. OGAN KOMERING ULU', 1),
(1602, '16', 'KAB. OGAN KOMERING ILIR', 1),
(1603, '16', 'KAB. MUARA ENIM', 1),
(1604, '16', 'KAB. LAHAT', 1),
(1605, '16', 'KAB. MUSI RAWAS', 1),
(1606, '16', 'KAB. MUSI BANYUASIN', 1),
(1607, '16', 'KAB. BANYUASIN', 1),
(1608, '16', 'KAB. OGAN KOMERING ULU TIMUR', 1),
(1609, '16', 'KAB. OGAN KOMERING ULU SELATAN', 1),
(1610, '16', 'KAB. OGAN ILIR', 1),
(1611, '16', 'KAB. EMPAT LAWANG', 1),
(1612, '16', 'KAB. PENUKAL ABAB LEMATANG ILIR', 1),
(1613, '16', 'KAB. MUSI RAWAS UTARA', 1),
(1671, '16', 'KOTA PALEMBANG', 2),
(1672, '16', 'KOTA PAGAR ALAM', 2),
(1673, '16', 'KOTA LUBUK LINGGAU', 2),
(1674, '16', 'KOTA PRABUMULIH', 2),
(1701, '17', 'KAB. BENGKULU SELATAN', 1),
(1702, '17', 'KAB. REJANG LEBONG', 1),
(1703, '17', 'KAB. BENGKULU UTARA', 1),
(1704, '17', 'KAB. KAUR', 1),
(1705, '17', 'KAB. SELUMA', 1),
(1706, '17', 'KAB. MUKO MUKO', 1),
(1707, '17', 'KAB. LEBONG', 1),
(1708, '17', 'KAB. KEPAHIANG', 1),
(1709, '17', 'KAB. BENGKULU TENGAH', 1),
(1771, '17', 'KOTA BENGKULU', 2),
(1801, '18', 'KAB. LAMPUNG SELATAN', 1),
(1802, '18', 'KAB. LAMPUNG TENGAH', 1),
(1803, '18', 'KAB. LAMPUNG UTARA', 1),
(1804, '18', 'KAB. LAMPUNG BARAT', 1),
(1805, '18', 'KAB. TULANG BAWANG', 1),
(1806, '18', 'KAB. TANGGAMUS', 1),
(1807, '18', 'KAB. LAMPUNG TIMUR', 1),
(1808, '18', 'KAB. WAY KANAN', 1),
(1809, '18', 'KAB. PESAWARAN', 1),
(1810, '18', 'KAB. PRINGSEWU', 1),
(1811, '18', 'KAB. MESUJI', 1),
(1812, '18', 'KAB. TULANG BAWANG BARAT', 1),
(1813, '18', 'KAB. PESISIR BARAT', 1),
(1871, '18', 'KOTA BANDAR LAMPUNG', 2),
(1872, '18', 'KOTA METRO', 2),
(1901, '19', 'KAB. BANGKA', 1),
(1902, '19', 'KAB. BELITUNG', 1),
(1903, '19', 'KAB. BANGKA SELATAN', 1),
(1904, '19', 'KAB. BANGKA TENGAH', 1),
(1905, '19', 'KAB. BANGKA BARAT', 1),
(1906, '19', 'KAB. BELITUNG TIMUR', 1),
(1971, '19', 'KOTA PANGKAL PINANG', 2),
(2101, '21', 'KAB. BINTAN', 1),
(2102, '21', 'KAB. KARIMUN', 1),
(2103, '21', 'KAB. NATUNA', 1),
(2104, '21', 'KAB. LINGGA', 1),
(2105, '21', 'KAB. KEPULAUAN ANAMBAS', 1),
(2171, '21', 'KOTA BATAM', 2),
(2172, '21', 'KOTA TANJUNG PINANG', 2),
(3101, '31', 'KAB. ADM. KEP. SERIBU', 1),
(3171, '31', 'KOTA ADM. JAKARTA PUSAT', 2),
(3172, '31', 'KOTA ADM. JAKARTA UTARA', 2),
(3173, '31', 'KOTA ADM. JAKARTA BARAT', 2),
(3174, '31', 'KOTA ADM. JAKARTA SELATAN', 2),
(3175, '31', 'KOTA ADM. JAKARTA TIMUR', 2),
(3201, '32', 'KAB. BOGOR', 1),
(3202, '32', 'KAB. SUKABUMI', 1),
(3203, '32', 'KAB. CIANJUR', 1),
(3204, '32', 'KAB. BANDUNG', 1),
(3205, '32', 'KAB. GARUT', 1),
(3206, '32', 'KAB. TASIKMALAYA', 1),
(3207, '32', 'KAB. CIAMIS', 1),
(3208, '32', 'KAB. KUNINGAN', 1),
(3209, '32', 'KAB. CIREBON', 1),
(3210, '32', 'KAB. MAJALENGKA', 1),
(3211, '32', 'KAB. SUMEDANG', 1),
(3212, '32', 'KAB. INDRAMAYU', 1),
(3213, '32', 'KAB. SUBANG', 1),
(3214, '32', 'KAB. PURWAKARTA', 1),
(3215, '32', 'KAB. KARAWANG', 1),
(3216, '32', 'KAB. BEKASI', 1),
(3217, '32', 'KAB. BANDUNG BARAT', 1),
(3218, '32', 'KAB. PANGANDARAN', 1),
(3271, '32', 'KOTA BOGOR', 2),
(3272, '32', 'KOTA SUKABUMI', 2),
(3273, '32', 'KOTA BANDUNG', 2),
(3274, '32', 'KOTA CIREBON', 2),
(3275, '32', 'KOTA BEKASI', 2),
(3276, '32', 'KOTA DEPOK', 2),
(3277, '32', 'KOTA CIMAHI', 2),
(3278, '32', 'KOTA TASIKMALAYA', 2),
(3279, '32', 'KOTA BANJAR', 2),
(3301, '33', 'KAB. CILACAP', 1),
(3302, '33', 'KAB. BANYUMAS', 1),
(3303, '33', 'KAB. PURBALINGGA', 1),
(3304, '33', 'KAB. BANJARNEGARA', 1),
(3305, '33', 'KAB. KEBUMEN', 1),
(3306, '33', 'KAB. PURWOREJO', 1),
(3307, '33', 'KAB. WONOSOBO', 1),
(3308, '33', 'KAB. MAGELANG', 1),
(3309, '33', 'KAB. BOYOLALI', 1),
(3310, '33', 'KAB. KLATEN', 1),
(3311, '33', 'KAB. SUKOHARJO', 1),
(3312, '33', 'KAB. WONOGIRI', 1),
(3313, '33', 'KAB. KARANGANYAR', 1),
(3314, '33', 'KAB. SRAGEN', 1),
(3315, '33', 'KAB. GROBOGAN', 1),
(3316, '33', 'KAB. BLORA', 1),
(3317, '33', 'KAB. REMBANG', 1),
(3318, '33', 'KAB. PATI', 1),
(3319, '33', 'KAB. KUDUS', 1),
(3320, '33', 'KAB. JEPARA', 1),
(3321, '33', 'KAB. DEMAK', 1),
(3322, '33', 'KAB. SEMARANG', 1),
(3323, '33', 'KAB. TEMANGGUNG', 1),
(3324, '33', 'KAB. KENDAL', 1),
(3325, '33', 'KAB. BATANG', 1),
(3326, '33', 'KAB. PEKALONGAN', 1),
(3327, '33', 'KAB. PEMALANG', 1),
(3328, '33', 'KAB. TEGAL', 1),
(3329, '33', 'KAB. BREBES', 1),
(3371, '33', 'KOTA MAGELANG', 2),
(3372, '33', 'KOTA SURAKARTA', 2),
(3373, '33', 'KOTA SALATIGA', 2),
(3374, '33', 'KOTA SEMARANG', 2),
(3375, '33', 'KOTA PEKALONGAN', 2),
(3376, '33', 'KOTA TEGAL', 2),
(3401, '34', 'KAB. KULON PROGO', 1),
(3402, '34', 'KAB. BANTUL', 1),
(3403, '34', 'KAB. GUNUNG KIDUL', 1),
(3404, '34', 'KAB. SLEMAN', 1),
(3471, '34', 'KOTA YOGYAKARTA', 2),
(3501, '35', 'KAB. PACITAN', 1),
(3502, '35', 'KAB. PONOROGO', 1),
(3503, '35', 'KAB. TRENGGALEK', 1),
(3504, '35', 'KAB. TULUNGAGUNG', 1),
(3505, '35', 'KAB. BLITAR', 1),
(3506, '35', 'KAB. KEDIRI', 1),
(3507, '35', 'KAB. MALANG', 1),
(3508, '35', 'KAB. LUMAJANG', 1),
(3509, '35', 'KAB. JEMBER', 1),
(3510, '35', 'KAB. BANYUWANGI', 1),
(3511, '35', 'KAB. BONDOWOSO', 1),
(3512, '35', 'KAB. SITUBONDO', 1),
(3513, '35', 'KAB. PROBOLINGGO', 1),
(3514, '35', 'KAB. PASURUAN', 1),
(3515, '35', 'KAB. SIDOARJO', 1),
(3516, '35', 'KAB. MOJOKERTO', 1),
(3517, '35', 'KAB. JOMBANG', 1),
(3518, '35', 'KAB. NGANJUK', 1),
(3519, '35', 'KAB. MADIUN', 1),
(3520, '35', 'KAB. MAGETAN', 1),
(3521, '35', 'KAB. NGAWI', 1),
(3522, '35', 'KAB. BOJONEGORO', 1),
(3523, '35', 'KAB. TUBAN', 1),
(3524, '35', 'KAB. LAMONGAN', 1),
(3525, '35', 'KAB. GRESIK', 1),
(3526, '35', 'KAB. BANGKALAN', 1),
(3527, '35', 'KAB. SAMPANG', 1),
(3528, '35', 'KAB. PAMEKASAN', 1),
(3529, '35', 'KAB. SUMENEP', 1),
(3571, '35', 'KOTA KEDIRI', 2),
(3572, '35', 'KOTA BLITAR', 2),
(3573, '35', 'KOTA MALANG', 2),
(3574, '35', 'KOTA PROBOLINGGO', 2),
(3575, '35', 'KOTA PASURUAN', 2),
(3576, '35', 'KOTA MOJOKERTO', 2),
(3577, '35', 'KOTA MADIUN', 2),
(3578, '35', 'KOTA SURABAYA', 2),
(3579, '35', 'KOTA BATU', 2),
(3601, '36', 'KAB. PANDEGLANG', 1),
(3602, '36', 'KAB. LEBAK', 1),
(3603, '36', 'KAB. TANGERANG', 1),
(3604, '36', 'KAB. SERANG', 1),
(3671, '36', 'KOTA TANGERANG', 2),
(3672, '36', 'KOTA CILEGON', 2),
(3673, '36', 'KOTA SERANG', 2),
(3674, '36', 'KOTA TANGERANG SELATAN', 2),
(5101, '51', 'KAB. JEMBRANA', 1),
(5102, '51', 'KAB. TABANAN', 1),
(5103, '51', 'KAB. BADUNG', 1),
(5104, '51', 'KAB. GIANYAR', 1),
(5105, '51', 'KAB. KLUNGKUNG', 1),
(5106, '51', 'KAB. BANGLI', 1),
(5107, '51', 'KAB. KARANGASEM', 1),
(5108, '51', 'KAB. BULELENG', 1),
(5171, '51', 'KOTA DENPASAR', 2),
(5201, '52', 'KAB. LOMBOK BARAT', 1),
(5202, '52', 'KAB. LOMBOK TENGAH', 1),
(5203, '52', 'KAB. LOMBOK TIMUR', 1),
(5204, '52', 'KAB. SUMBAWA', 1),
(5205, '52', 'KAB. DOMPU', 1),
(5206, '52', 'KAB. BIMA', 1),
(5207, '52', 'KAB. SUMBAWA BARAT', 1),
(5208, '52', 'KAB. LOMBOK UTARA', 1),
(5271, '52', 'KOTA MATARAM', 2),
(5272, '52', 'KOTA BIMA', 2),
(5301, '53', 'KAB. KUPANG', 1),
(5302, '53', 'KAB TIMOR TENGAH SELATAN', 1),
(5303, '53', 'KAB. TIMOR TENGAH UTARA', 1),
(5304, '53', 'KAB. BELU', 1),
(5305, '53', 'KAB. ALOR', 1),
(5306, '53', 'KAB. FLORES TIMUR', 1),
(5307, '53', 'KAB. SIKKA', 1),
(5308, '53', 'KAB. ENDE', 1),
(5309, '53', 'KAB. NGADA', 1),
(5310, '53', 'KAB. MANGGARAI', 1),
(5311, '53', 'KAB. SUMBA TIMUR', 1),
(5312, '53', 'KAB. SUMBA BARAT', 1),
(5313, '53', 'KAB. LEMBATA', 1),
(5314, '53', 'KAB. ROTE NDAO', 1),
(5315, '53', 'KAB. MANGGARAI BARAT', 1),
(5316, '53', 'KAB. NAGEKEO', 1),
(5317, '53', 'KAB. SUMBA TENGAH', 1),
(5318, '53', 'KAB. SUMBA BARAT DAYA', 1),
(5319, '53', 'KAB. MANGGARAI TIMUR', 1),
(5320, '53', 'KAB. SABU RAIJUA', 1),
(5321, '53', 'KAB. MALAKA', 1),
(5371, '53', 'KOTA KUPANG', 2),
(6101, '61', 'KAB. SAMBAS', 1),
(6102, '61', 'KAB. MEMPAWAH', 1),
(6103, '61', 'KAB. SANGGAU', 1),
(6104, '61', 'KAB. KETAPANG', 1),
(6105, '61', 'KAB. SINTANG', 1),
(6106, '61', 'KAB. KAPUAS HULU', 1),
(6107, '61', 'KAB. BENGKAYANG', 1),
(6108, '61', 'KAB. LANDAK', 1),
(6109, '61', 'KAB. SEKADAU', 1),
(6110, '61', 'KAB. MELAWI', 1),
(6111, '61', 'KAB. KAYONG UTARA', 1),
(6112, '61', 'KAB. KUBU RAYA', 1),
(6171, '61', 'KOTA PONTIANAK', 2),
(6172, '61', 'KOTA SINGKAWANG', 2),
(6201, '62', 'KAB. KOTAWARINGIN BARAT', 1),
(6202, '62', 'KAB. KOTAWARINGIN TIMUR', 1),
(6203, '62', 'KAB. KAPUAS', 1),
(6204, '62', 'KAB. BARITO SELATAN', 1),
(6205, '62', 'KAB. BARITO UTARA', 1),
(6206, '62', 'KAB. KATINGAN', 1),
(6207, '62', 'KAB. SERUYAN', 1),
(6208, '62', 'KAB. SUKAMARA', 1),
(6209, '62', 'KAB. LAMANDAU', 1),
(6210, '62', 'KAB. GUNUNG MAS', 1),
(6211, '62', 'KAB. PULANG PISAU', 1),
(6212, '62', 'KAB. MURUNG RAYA', 1),
(6213, '62', 'KAB. BARITO TIMUR', 1),
(6271, '62', 'KOTA PALANGKARAYA', 2),
(6301, '63', 'KAB. TANAH LAUT', 1),
(6302, '63', 'KAB. KOTABARU', 1),
(6303, '63', 'KAB. BANJAR', 1),
(6304, '63', 'KAB. BARITO KUALA', 1),
(6305, '63', 'KAB. TAPIN', 1),
(6306, '63', 'KAB. HULU SUNGAI SELATAN', 1),
(6307, '63', 'KAB. HULU SUNGAI TENGAH', 1),
(6308, '63', 'KAB. HULU SUNGAI UTARA', 1),
(6309, '63', 'KAB. TABALONG', 1),
(6310, '63', 'KAB. TANAH BUMBU', 1),
(6311, '63', 'KAB. BALANGAN', 1),
(6371, '63', 'KOTA BANJARMASIN', 2),
(6372, '63', 'KOTA BANJARBARU', 2),
(6401, '64', 'KAB. PASER', 1),
(6402, '64', 'KAB. KUTAI KARTANEGARA', 1),
(6403, '64', 'KAB. BERAU', 1),
(6407, '64', 'KAB. KUTAI BARAT', 1),
(6408, '64', 'KAB. KUTAI TIMUR', 1),
(6409, '64', 'KAB. PENAJAM PASER UTARA', 1),
(6411, '64', 'KAB. MAHAKAM ULU', 1),
(6471, '64', 'KOTA BALIKPAPAN', 2),
(6472, '64', 'KOTA SAMARINDA', 2),
(6474, '64', 'KOTA BONTANG', 2),
(6501, '65', 'KAB. BULUNGAN', 1),
(6502, '65', 'KAB. MALINAU', 1),
(6503, '65', 'KAB. NUNUKAN', 1),
(6504, '65', 'KAB. TANA TIDUNG', 1),
(6571, '65', 'KOTA TARAKAN', 2),
(7101, '71', 'KAB. BOLAANG MONGONDOW', 1),
(7102, '71', 'KAB. MINAHASA', 1),
(7103, '71', 'KAB. KEPULAUAN SANGIHE', 1),
(7104, '71', 'KAB. KEPULAUAN TALAUD', 1),
(7105, '71', 'KAB. MINAHASA SELATAN', 1),
(7106, '71', 'KAB. MINAHASA UTARA', 1),
(7107, '71', 'KAB. MINAHASA TENGGARA', 1),
(7108, '71', 'KAB. BOLAANG MONGONDOW UTARA', 1),
(7109, '71', 'KAB. KEP. SIAU TAGULANDANG BIARO', 1),
(7110, '71', 'KAB. BOLAANG MONGONDOW TIMUR', 1),
(7111, '71', 'KAB. BOLAANG MONGONDOW SELATAN', 1),
(7171, '71', 'KOTA MANADO', 2),
(7172, '71', 'KOTA BITUNG', 2),
(7173, '71', 'KOTA TOMOHON', 2),
(7174, '71', 'KOTA KOTAMOBAGU', 2),
(7201, '72', 'KAB. BANGGAI', 1),
(7202, '72', 'KAB. POSO', 1),
(7203, '72', 'KAB. DONGGALA', 1),
(7204, '72', 'KAB. TOLI TOLI', 1),
(7205, '72', 'KAB. BUOL', 1),
(7206, '72', 'KAB. MOROWALI', 1),
(7207, '72', 'KAB. BANGGAI KEPULAUAN', 1),
(7208, '72', 'KAB. PARIGI MOUTONG', 1),
(7209, '72', 'KAB. TOJO UNA UNA', 1),
(7210, '72', 'KAB. SIGI', 1),
(7211, '72', 'KAB. BANGGAI LAUT', 1),
(7212, '72', 'KAB. MOROWALI UTARA', 1),
(7271, '72', 'KOTA PALU', 2),
(7301, '73', 'KAB. KEPULAUAN SELAYAR', 1),
(7302, '73', 'KAB. BULUKUMBA', 1),
(7303, '73', 'KAB. BANTAENG', 1),
(7304, '73', 'KAB. JENEPONTO', 1),
(7305, '73', 'KAB. TAKALAR', 1),
(7306, '73', 'KAB. GOWA', 1),
(7307, '73', 'KAB. SINJAI', 1),
(7308, '73', 'KAB. BONE', 1),
(7309, '73', 'KAB. MAROS', 1),
(7310, '73', 'KAB. PANGKAJENE KEPULAUAN', 1),
(7311, '73', 'KAB. BARRU', 1),
(7312, '73', 'KAB. SOPPENG', 1),
(7313, '73', 'KAB. WAJO', 1),
(7314, '73', 'KAB. SIDENRENG RAPPANG', 1),
(7315, '73', 'KAB. PINRANG', 1),
(7316, '73', 'KAB. ENREKANG', 1),
(7317, '73', 'KAB. LUWU', 1),
(7318, '73', 'KAB. TANA TORAJA', 1),
(7322, '73', 'KAB. LUWU UTARA', 1),
(7324, '73', 'KAB. LUWU TIMUR', 1),
(7326, '73', 'KAB. TORAJA UTARA', 1),
(7371, '73', 'KOTA MAKASSAR', 2),
(7372, '73', 'KOTA PARE PARE', 2),
(7373, '73', 'KOTA PALOPO', 2),
(7401, '74', 'KAB. KOLAKA', 1),
(7402, '74', 'KAB. KONAWE', 1),
(7403, '74', 'KAB. MUNA', 1),
(7404, '74', 'KAB. BUTON', 1),
(7405, '74', 'KAB. KONAWE SELATAN', 1),
(7406, '74', 'KAB. BOMBANA', 1),
(7407, '74', 'KAB. WAKATOBI', 1),
(7408, '74', 'KAB. KOLAKA UTARA', 1),
(7409, '74', 'KAB. KONAWE UTARA', 1),
(7410, '74', 'KAB. BUTON UTARA', 1),
(7411, '74', 'KAB. KOLAKA TIMUR', 1),
(7412, '74', 'KAB. KONAWE KEPULAUAN', 1),
(7413, '74', 'KAB. MUNA BARAT', 1),
(7414, '74', 'KAB. BUTON TENGAH', 1),
(7415, '74', 'KAB. BUTON SELATAN', 1),
(7471, '74', 'KOTA KENDARI', 2),
(7472, '74', 'KOTA BAU BAU', 2),
(7501, '75', 'KAB. GORONTALO', 1),
(7502, '75', 'KAB. BOALEMO', 1),
(7503, '75', 'KAB. BONE BOLANGO', 1),
(7504, '75', 'KAB. PAHUWATO', 1),
(7505, '75', 'KAB. GORONTALO UTARA', 1),
(7571, '75', 'KOTA GORONTALO', 2),
(7601, '76', 'KAB. MAMUJU UTARA', 1),
(7602, '76', 'KAB. MAMUJU', 1),
(7603, '76', 'KAB. MAMASA', 1),
(7604, '76', 'KAB. POLEWALI MANDAR', 1),
(7605, '76', 'KAB. MAJENE', 1),
(7606, '76', 'KAB. MAMUJU TENGAH', 1),
(8101, '81', 'KAB. MALUKU TENGAH', 1),
(8102, '81', 'KAB. MALUKU TENGGARA', 1),
(8103, '81', 'KAB MALUKU TENGGARA BARAT', 1),
(8104, '81', 'KAB. BURU', 1),
(8105, '81', 'KAB. SERAM BAGIAN TIMUR', 1),
(8106, '81', 'KAB. SERAM BAGIAN BARAT', 1),
(8107, '81', 'KAB. KEPULAUAN ARU', 1),
(8108, '81', 'KAB. MALUKU BARAT DAYA', 1),
(8109, '81', 'KAB. BURU SELATAN', 1),
(8171, '81', 'KOTA AMBON', 2),
(8172, '81', 'KOTA TUAL', 2),
(8201, '82', 'KAB. HALMAHERA BARAT', 1),
(8202, '82', 'KAB. HALMAHERA TENGAH', 1),
(8203, '82', 'KAB. HALMAHERA UTARA', 1),
(8204, '82', 'KAB. HALMAHERA SELATAN', 1),
(8205, '82', 'KAB. KEPULAUAN SULA', 1),
(8206, '82', 'KAB. HALMAHERA TIMUR', 1),
(8207, '82', 'KAB. PULAU MOROTAI', 1),
(8208, '82', 'KAB. PULAU TALIABU', 1),
(8271, '82', 'KOTA TERNATE', 2),
(8272, '82', 'KOTA TIDORE KEPULAUAN', 2),
(9101, '91', 'KAB. MERAUKE', 1),
(9102, '91', 'KAB. JAYAWIJAYA', 1),
(9103, '91', 'KAB. JAYAPURA', 1),
(9104, '91', 'KAB. NABIRE', 1),
(9105, '91', 'KAB. KEPULAUAN YAPEN', 1),
(9106, '91', 'KAB. BIAK NUMFOR', 1),
(9107, '91', 'KAB. PUNCAK JAYA', 1),
(9108, '91', 'KAB. PANIAI', 1),
(9109, '91', 'KAB. MIMIKA', 1),
(9110, '91', 'KAB. SARMI', 1),
(9111, '91', 'KAB. KEEROM', 1),
(9112, '91', 'KAB PEGUNUNGAN BINTANG', 1),
(9113, '91', 'KAB. YAHUKIMO', 1),
(9114, '91', 'KAB. TOLIKARA', 1),
(9115, '91', 'KAB. WAROPEN', 1),
(9116, '91', 'KAB. BOVEN DIGOEL', 1),
(9117, '91', 'KAB. MAPPI', 1),
(9118, '91', 'KAB. ASMAT', 1),
(9119, '91', 'KAB. SUPIORI', 1),
(9120, '91', 'KAB. MAMBERAMO RAYA', 1),
(9121, '91', 'KAB. MAMBERAMO TENGAH', 1),
(9122, '91', 'KAB. YALIMO', 1),
(9123, '91', 'KAB. LANNY JAYA', 1),
(9124, '91', 'KAB. NDUGA', 1),
(9125, '91', 'KAB. PUNCAK', 1),
(9126, '91', 'KAB. DOGIYAI', 1),
(9127, '91', 'KAB. INTAN JAYA', 1),
(9128, '91', 'KAB. DEIYAI', 1),
(9171, '91', 'KOTA JAYAPURA', 2),
(9201, '92', 'KAB. SORONG', 1),
(9202, '92', 'KAB. MANOKWARI', 1),
(9203, '92', 'KAB. FAK FAK', 1),
(9204, '92', 'KAB. SORONG SELATAN', 1),
(9205, '92', 'KAB. RAJA AMPAT', 1),
(9206, '92', 'KAB. TELUK BINTUNI', 1),
(9207, '92', 'KAB. TELUK WONDAMA', 1),
(9208, '92', 'KAB. KAIMANA', 1),
(9209, '92', 'KAB. TAMBRAUW', 1),
(9210, '92', 'KAB. MAYBRAT', 1),
(9211, '92', 'KAB. MANOKWARI SELATAN', 1),
(9212, '92', 'KAB. PEGUNUNGAN ARFAK', 1),
(9271, '92', 'KOTA SORONG', 2);

-- --------------------------------------------------------

--
-- Table structure for table `market_settings`
--

CREATE TABLE `market_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `parameter_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parameter_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `market_settings`
--

INSERT INTO `market_settings` (`id`, `parameter_key`, `parameter_value`, `description`, `created_at`, `updated_at`) VALUES
(1, 'default_phone', '62 8382-4708 398', 'Nomor utama perusahaan', NULL, NULL),
(2, 'default_email', 'help@wisatapedia.id', 'Email default kalau ada masalah', NULL, NULL),
(3, 'site_title', 'WISATAPEDIA.ID', 'Nama dari web wisata pedia', NULL, NULL),
(4, 'author_position', 'CEO', 'Gelar pemilik', '2018-05-05 23:42:23', '2018-05-05 23:42:23'),
(5, 'author_name', 'Rizal Hilman K', 'nama pemilik', '2018-05-05 23:42:41', '2018-05-06 05:14:33'),
(6, 'author_email', 'hilman@wisatapedia.id', 'Email pemilik', '2018-05-05 23:43:43', '2018-05-05 23:43:43'),
(7, 'bank_name', 'BCA', 'Nama bank', '2018-05-05 23:46:15', '2018-05-05 23:46:15'),
(8, 'bank_account_number', '100120020203', 'Nomor rekening', '2018-05-05 23:47:05', '2018-05-05 23:47:05'),
(9, 'bank_account_name', 'MAULANA RIZAL HILMAN', 'nama pemilik bank', '2018-05-05 23:48:13', '2018-05-05 23:48:13'),
(10, 'company_name', 'WisataPedia.ID', 'Nama perusaahaan', '2018-05-05 23:51:15', '2018-05-05 23:55:02'),
(11, 'company_address', '41102 Slipi', 'Alamat company', '2018-05-05 23:51:51', '2018-05-05 23:51:51'),
(13, 'company_province', 'DKI Jakarta, Indonesia', 'Provinsi Perusahaan', '2018-05-05 23:56:02', '2018-05-05 23:56:02');

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
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2018_02_06_150856_create_table_buyer_detail', 1),
(20, '2018_02_06_151355_create_table_category', 1),
(21, '2018_02_06_151429_create_table_seller_detail', 1),
(22, '2018_02_06_151500_create_table_inbox', 1),
(23, '2018_02_06_151622_create_table_inbox_messages', 1),
(24, '2018_02_06_151647_create_table_invoices', 1),
(25, '2018_02_06_151734_create_table_posts', 1),
(26, '2018_02_06_151821_create_table_products', 1),
(27, '2018_02_06_151947_create_table_shopping_cart', 1),
(28, '2018_02_06_152035_create_table_user_confirmation', 1),
(29, '2018_02_07_010429_create_table_order', 1),
(30, '2018_02_07_011104_create_table_product_orders', 1),
(31, '2018_02_07_105023_create_post_category_table', 1),
(32, '2018_02_07_105523_create_table_market_setting', 1),
(33, '2018_02_07_135512_create_table_admin', 2),
(34, '2018_02_18_090256_create_table_product_photos', 3),
(35, '2018_03_18_233901_create_slides_migration', 4),
(36, '2018_04_03_213703_create_table_seller_documents', 5),
(37, '2018_04_10_045123_create_gallery_table', 6),
(38, '2018_04_16_171051_create_countries_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `seller_id` int(10) NOT NULL DEFAULT '0',
  `order_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` enum('0','1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_proof` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `buyer_id`, `seller_id`, `order_code`, `order_status`, `payment_proof`, `created_at`, `updated_at`) VALUES
(1, 7, 8, 'TDQ-00001', '0', NULL, '2018-04-08 17:07:44', '2018-04-08 17:07:44'),
(2, 7, 8, 'IWL-00002', '0', NULL, '2018-04-08 17:18:00', '2018-04-08 17:18:00'),
(3, 7, 8, 'KKI-00003', '0', NULL, '2018-04-08 17:19:11', '2018-04-08 17:19:11'),
(4, 7, 8, 'NYN-00004', '0', NULL, '2018-04-08 17:21:26', '2018-04-08 17:22:04'),
(5, 7, 8, 'GAI-00005', '1', '2018-04-10 03:08:53_1_O-_3txayaENGB-iP4gKKgA.jpeg', '2018-04-08 17:22:04', '2018-04-09 20:08:54'),
(6, 12, 8, 'GJB-00006', '3', '2018-05-01 01:55:58_IMG_20180429_133444.jpg', '2018-04-30 11:54:09', '2018-05-02 07:23:28'),
(7, 10, 16, 'IBP-00007', '1', '2018-05-02 23:56:19_aw.pdf', '2018-05-02 07:23:28', '2018-05-02 16:56:19'),
(8, 10, 16, 'SIN-00008', '0', NULL, '2018-05-02 16:36:17', '2018-05-02 16:59:23'),
(9, 10, 0, 'JRJ-00009', '0', NULL, '2018-05-02 16:59:23', '2018-05-02 16:59:23'),
(10, 10, 0, 'STJ-00010', '0', NULL, '2018-05-02 17:08:11', '2018-05-02 17:08:11'),
(11, 10, 0, 'RLL-00011', '0', NULL, '2018-05-02 17:12:18', '2018-05-02 17:12:18'),
(12, 10, 0, 'XUY-00012', '0', NULL, '2018-05-02 17:12:23', '2018-05-02 17:12:23'),
(13, 10, 16, 'OKD-00013', '0', NULL, '2018-05-02 17:14:00', '2018-05-02 17:14:20'),
(14, 10, 16, 'RER-00014', '0', NULL, '2018-05-02 17:14:20', '2018-05-02 17:14:53'),
(15, 10, 16, 'JIF-00015', '0', NULL, '2018-05-02 17:14:53', '2018-05-02 17:15:18'),
(16, 10, 16, 'XKQ-00016', '0', NULL, '2018-05-02 17:15:18', '2018-05-02 17:16:27'),
(17, 10, 16, 'VQP-00017', '0', NULL, '2018-05-02 17:16:27', '2018-05-02 17:17:31'),
(18, 10, 16, 'PRB-00018', '0', NULL, '2018-05-02 17:17:31', '2018-05-02 17:17:40'),
(19, 10, 16, 'BQI-00019', '0', NULL, '2018-05-02 17:17:40', '2018-05-02 17:21:28'),
(20, 10, 16, 'ELP-00020', '0', NULL, '2018-05-02 17:21:28', '2018-05-02 17:21:42'),
(21, 10, 16, 'LVE-00021', '0', NULL, '2018-05-02 17:21:42', '2018-05-02 17:21:52'),
(23, 10, 16, 'LTI-00023', '1', '2018-05-03 10:05:41_aw.pdf', '2018-05-03 03:02:16', '2018-05-03 06:11:06'),
(24, 10, 9, 'WKR-00024', '2', '2018-05-06 02:08:54_Screen Shot 2018-05-04 at 07.01.41.png', '2018-05-05 17:43:53', '2018-05-05 21:52:49'),
(25, 10, 9, 'FSX-00025', '3', '2018-05-06 04:58:35_Screen Shot 2018-05-01 at 14.42.23.png', '2018-05-05 21:54:42', '2018-05-05 23:24:37'),
(26, 10, 9, 'AXL-00026', '0', NULL, '2018-05-06 04:22:45', '2018-05-06 04:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int(100) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_category_id`, `admin_id`, `user_id`, `title`, `slug`, `featured_image`, `tag`, `post_body`, `view`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 4, 3, 9, 'Usahakan kamu sampai ke kota tujuanmu di siang hari Update', 'ulelele', '2018-04-24-015940-img-20180211-101417jpg', NULL, '<p>Update Dengan sampai di saat hari terang, kerepotan-kerepotan yang kadang gak diperlukan bisa dihindari. Misalnya, kamu gak repot cari angkutan umum untuk menuju tempat kamu menginap. Resepsionis penginapan juga pasti buka, jadi kamu gak perlu terpaksa tidur di stasiun atau terminal. Atau, jika kamu dijemput dan numpang di tempat orang, setidaknya kamu bisa menghindari rasa gak enak seperti bila kamu sampai larut malam atau dini hari.</p>\r\n\r\n<p>Selain itu, kamu juga bisa mengakali penginapan dengan tidur selama perjalanan di malam hari dan sampai esok harinya. Kota asing yang baru pertama kali kamu singgahi juga terlihat lebih aman di siang hari.</p>', 18, '2018-02-09 07:18:08', '2018-05-06 03:07:02', '2018-05-06 03:07:02'),
(9, 5, 3, 9, 'Mumpung sendirian, saatnya mencoba traveling ala Couchsurfing', 'eqweqw', '2018-03-18 23:29:29_traveling-jobs.jpg', 'qweqw', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum</p>', 7, '2018-02-16 21:00:00', '2018-05-03 07:18:54', NULL),
(13, 5, 3, 9, 'Belajar cara packing seringan mungkin', 'asdasd', '2018-03-18 23:28:42_Travel-Packing-Tips_4.jpg', NULL, '<p>Namanya panduan, tentu gak wajib kamu jalani seratus persen. Asyik juga bukan jika kamu menemukan hal seru yang gak terduga selama di jalan, atau diajak orang lokal berkunjung ke rumahnya? Tapi setidaknya, jika sudah punya panduan mau ke mana hari itu, kamu akan selalu punya pilihan mau&nbsp;melangkahkan kaki ke mana setelah satu destinasi wisata habis kamu jelajahi.</p>', 5, '2018-02-16 03:36:02', '2018-04-10 21:42:09', NULL),
(14, 5, 3, 9, 'Wajib hukumnya meriset harga tiket', 'wajib-hukumnya-meriset-harga-tiket', '2018-03-18 23:25:34_ticketflight.jpg', NULL, '<p>Lakukan riset terlebih dulu tentang semuanya: harga tiket menuju ke tempat tujuanmu, akomodasi, tarif dan jam operasional transportasi umum di sana, rute dan harga tiket masuk tempat wisata&mdash;pokoknya semuanya.&nbsp;Berterimakasihlah pada teknologi internet, karena menelusuri blog-blog traveler untuk menemukan acuan jadi lebih mudah.</p>\r\n\r\n<p>Kamu juga bisa melemparkan pertanyaan ke forum yang relevan, misalnya ke forum backpacker. Atau, jika kamu punya teman yang pernah mengunjungi destinasi liburanmu, jangan ragu buat bertanya pada mereka.</p>', 18, '2018-02-16 03:39:38', '2018-05-06 04:00:20', NULL),
(15, 5, 3, 8, 'Buatlah anggaran serta rencana perjalanan selengkap mungkin', 'buatlah-anggaran-serta-rencana-perjalanan-selengkap-mungkin', '2018-03-18 23:21:47_anggaran-Kemensos.png', NULL, '<p>Anggaran dan rencana&nbsp;perjalanan adalah panduanmu&nbsp;selama perjalanan berlangsung. Ingat, lho, kamu sendirian, jadi gak mungkin kamu tanya, &ldquo;Habis ini kita ke mana, ya?&rdquo;</p>\r\n\r\n<p>Dalam panduanmu itu, pastikan kamu sudah mendetilkan rencana perjalanan dari awal bangun pagi hingga kembali lagi ke penginapan. Rencanakan, mau naik apa untuk pindah dari destinasi wisata yang satu ke destinasi yang lainnya? Berapa uang yang harus disisihkan untuk makan?</p>', 10, '2018-02-16 03:40:26', '2018-04-22 01:51:49', '2018-04-22 01:51:49'),
(20, 3, NULL, 9, 'Ketchup Sandwiches and Other Things Stupid Poor People Eat 2', 'ketchup-sandwiches-and-other-things-stupid-poor-people-eat', '2018-03-29 02:56:47_1_O-_3txayaENGB-iP4gKKgA.jpeg', NULL, '<p>AAAAAAAAImet this woman named Mae. She&rsquo;s a van driver for a production company. She works 14-hour days but says she doesn&rsquo;t mind, says she keeps one eye on the road and the other on the prize &mdash; a paycheck that has to last through the dead months.</p>\r\n\r\n<p>We&rsquo;re driving through a poor stretch of Atlanta. Dirty streets. Old houses. Plastic toys upturned in front yards, no kids though. The neighborhood is quiet. I live in L.A., land of nannies and gardeners where the hills are alive with the sound of toddlers and leaf blowers. I prefer Atlanta. You can find parking at the grocery store in the middle of the day. In L.A. it doesn&rsquo;t matter what time it is, the Trader Joe&rsquo;s is packed with SAHs and WAHs (stay-at-homes and work-at-homes).</p>\r\n\r\n<p>We pass a decades-old Buick Skylark. I point it out.</p>\r\n\r\n<p>&ldquo;You into cars?&rdquo; Mae asks.</p>\r\n\r\n<p>I&rsquo;m not into cars, but my dad and I once abandoned one of those Buicks on the side of a Florida highway when I was a teenager. That&rsquo;s how my family did cars &mdash; we bought them on their last leg and left them where they died. I tell her how I&rsquo;d come home from high school and there&rsquo;d be nothing in the fridge but a bottle of red wine vinegar and a head of lettuce. On the counter, there&rsquo;d be a bag of potatoes and a bottle of olive oil from the Dollar Store. That was dinner, potatoes and lettuce.</p>\r\n\r\n<p>&ldquo;I hear you,&rdquo; she says. &ldquo;We had ketchup sandwiches all the time growing up. We didn&rsquo;t complain. We ate them.&rdquo;</p>\r\n\r\n<p>Mae&rsquo;s voice is rich, melodic, it&rsquo;s Maya Angelou meets Gladys Knight. I tell her about the time I borrowed red stirrup pants. (Remember stirrup pants from the 80s?) I borrowed them from my friend Marla. Her two older brothers drove Corvettes, one each. Marla drove a more sensible car for a 16-year-old, an Oldsmobile Cutlass Supreme. But it was new. And it was hers. She let me borrow the pants for a party in her neighborhood. (God knows I couldn&rsquo;t go in my own shit clothes.) Long and short of it, the pants ripped in the calf. My mother wept like death had come, struggling with red thread, looking at me like I&rsquo;d done the worst thing ever. Marla wanted $17 to replace them.</p>\r\n\r\n<p>Mae invites me to sit up front with her. The traffic to my hotel is bad, we&rsquo;re in for a haul. I switch out at the next red light.</p>', 16, '2018-03-28 19:56:47', '2018-04-22 01:52:20', '2018-04-22 01:52:20'),
(21, 5, NULL, 9, '20 BEST TRAVEL TIPS AFTER 20 YEARS OF TRAVELING', '20-best-travel-tips-after-20-years-of-traveling', '2018-04-09 22:45:53_Family-Travel-Waikiki-Beach-Hawaii-1.jpg', NULL, '<p>Over the past 20 years, Caz and I have&nbsp;been fortunate to have visited over 50 countries and lived in 5, and today we&rsquo;d like to share with you our 20 best travel tips!</p>\r\n\r\n<p><img alt=\"Walk the Brooklyn Bridge - one of the best things to do in NYC with kids\" src=\"https://ytravelblog-nabbqugz.netdna-ssl.com/wp-content/uploads/2018/01/walk-the-brooklyn-bridge-1.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Whilst our style of travel has evolved from solo travel to traveling as a couple and to now traveling as a&nbsp;<a href=\"https://www.ytravelblog.com/about-us/\">family of four</a>, there are some core travel habits that have served us well, and we continue to follow them to this day.</p>\r\n\r\n<p>For us, travel is not just about checking places off our list.</p>\r\n\r\n<p>Our motto has always been&nbsp;<em>&ldquo;accumulate memories and moments, not just possessions&rdquo;</em>, and we like to do that through travel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>From our travel experiences and 7 years of&nbsp;<a href=\"https://www.ytravelblog.com/blogging-tips-resources/\">travel blogging</a>&nbsp;we&rsquo;ve accumulated our fair share of top&nbsp;<a href=\"https://www.ytravelblog.com/category/travel-planning/travel-tips/\">travel tips</a>&nbsp;along the way and it was difficult to limit this to just twenty!</p>\r\n\r\n<p>We hope this list of our best travel tips will inspire and help you to travel, and travel more often!</p>\r\n\r\n<h2>OUR 20 BEST TRAVEL TIPS</h2>\r\n\r\n<h3>1. Make Travel a Priority</h3>\r\n\r\n<p>If you want to travel more, you&rsquo;ve got to make it a priority!</p>\r\n\r\n<p>Seriously, if you&nbsp;<a href=\"https://www.ytravelblog.com/saving-money-travel/\">don&rsquo;t have enough money</a>&nbsp;for travel yet you have a wardrobe full of designer clothes that you never wear, or a garage full of expensive toys collecting dust, then you&rsquo;re not clear on your priorities and purpose.</p>\r\n\r\n<p>We&rsquo;ve been able to travel overseas consistently over the past 20 years because we made travel one of our top priorities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We channeled most of our energy, focus, and finances towards travel.</p>\r\n\r\n<p>Currently we don&rsquo;t own a lot of stuff, but we sure have a lot of memories.</p>', 5, '2018-04-09 15:45:53', '2018-04-22 01:48:08', NULL),
(23, 5, 4, 15, '7 Tips Sebelum Liburan', '7-tips-sebelum-liburan', '2018-04-24-021503-img-20180318-150101jpg', NULL, '<p>Sebentar lagi kita akan memasuki bulan Juni. Biasanya, pada pertengahan tahun ini, saatnya orang-orang memiliki waktu luang untuk berlibur bersama keluarga tercinta. Tak heran banyak orang yang menanti-nantikan momen ini. Agar liburan semakin menyenangkan, kebanyakan orang merasa bahwa mereka harus menghabiskan uang yang banyak. Istilah &lsquo;ada harga, ada barang&rsquo; biasanya menjadi pokok pemikiran ketika akan berlibur. Namun tidak selamanya pikiran itu benar. Liburan juga bisa dilakukan secara&nbsp;<a href=\"https://www.cermati.com/artikel/keuangan-sehat-dan-manfaat-hidup-hemat-lainnya\" target=\"_blank\">hemat&nbsp;</a>dan tetap menyenangkan.</p>\r\n\r\n<p>Liburan yang menyenangkan tidak harus pergi ke luar negeri. Lokasi berlibur di Indonesia&nbsp;sangat luas dan ada sangat banyak tempat-tempat indah disini yang pastinya akan membuat liburan kamu semakin hemat, menyenangkan, dan pastinya semakin dekat dengan keluargamu. Jadi, buat kamu yang ingin liburan hemat dan menyenangkan, ayo baca tips berikut ini.</p>\r\n\r\n<h1><strong>1. Lakukan Survei Lokasi Liburan</strong></h1>\r\n\r\n<p><img alt=\"\" src=\"https://image.cermati.com/q_70/v1432533394/guyaehthetpuw1a6uvxb.jpg\" style=\"height:505px; width:900px\" /></p>\r\n\r\n<p>Sebelum pergi berlibur, kamu pasti harus menentukan kemana kamu akan pergi. Untuk memastikan bahwa tempat yang kamu ingin datangi itu cocok dengan ekspektasi kamu tentang liburan atau tidak. Survei bisa dilakukan melalui internet, buku-buku wisata, atau brosur dari agen travel.</p>\r\n\r\n<p>Selain itu, dengan melakukan survei kamu bisa mulai menghitung kisaran uang yang kamu butuhkan untuk berlibur ke tempat yang kamu tuju, dan juga kamu bisa mengetahui jika ada promosi atau diskon sehingga kemauan kamu untuk berhemat menjadi lebih mudah.</p>\r\n\r\n<h1><strong>2. Lakukan Pemesanan dari Jauh Hari</strong></h1>\r\n\r\n<p><img alt=\"\" src=\"https://image.cermati.com/q_70/v1432533609/gminobih1ilcz3rqgxa6.jpg\" style=\"height:608px; width:901px\" /></p>\r\n\r\n<p>Setelah melakukan survei dan sudah menentukan tempat tujuan kamu, sekarang kamu harus mulai memesan tiket transportasi, tempat penginapan, atau bahkan jika ada, tiket tempat wisata di lokasi. Biasanya jika pemesanan dilakukan dari lama sebelum hari H, kamu akan mendapatkan harga spesial yang lebih murah atau kamu bisa mendapatkan penawaran-penawaran menarik lainnya selama kamu berlibur.</p>\r\n\r\n<h1><strong>3. Usahakan Pergi Bukan di Musim Liburan</strong></h1>\r\n\r\n<p><img alt=\"\" src=\"https://image.cermati.com/q_70/v1432533713/et08ioo6qvzlbkjmgldx.jpg\" style=\"height:599px; width:899px\" /></p>\r\n\r\n<p>Di kebanyakan tempat wisata, harga pada saat musim liburan atau high season akan lebih mahal daripada ketika di musim biasa atau low season. Oleh karena itu, kamu akan bisa lebih berhemat jika pergi sebelum atau setelah musim liburan. Selain itu, kamu dapat lebih leluasa jika pergi bukan di musim liburan, karena biasanya lebih sepi, jadi kamu bisa lebih menikmati liburan kamu.</p>\r\n\r\n<p>Baca Juga:&nbsp;<a href=\"https://www.cermati.com/artikel/7-tips-mengembalikan-semangat-kerja-setelah-liburan\" target=\"_blank\">7 Tips Mengembalikan Semangat Kerja Setelah Liburan</a></p>\r\n\r\n<h1><strong>4. Utamakan Kenyamanan daripada Kemewahan</strong></h1>\r\n\r\n<p><strong><img alt=\"\" src=\"https://image.cermati.com/q_70/v1432536100/itagpjtpnfdn5mokkqfj.jpg\" style=\"height:594px; width:902px\" /></strong></p>\r\n\r\n<p>Lupakan tentang liburan mewah jika kamu mau berhemat. Namun jangan sampai karena kamu sangat berhemat, liburan menjadi tidak nyaman. Utamakan kenyamanan kamu, baik dalam memilih transportasi, tempat tinggal, atau pemandu liburan. Asalkan nyaman, semua pasti akan senang. Dan pastinya akan lebih menyenangkan lagi jika kamu bisa liburan dengan nyaman, mewah, tapi murah. Mungkin sih, namun jarang.</p>\r\n\r\n<h1><strong>5. Bawa Uang Tunai</strong></h1>\r\n\r\n<p><strong><img alt=\"\" src=\"https://image.cermati.com/q_70/v1432536428/rf9xjxuz2mpgy8jbg9fb.jpg\" style=\"height:627px; width:901px\" /></strong></p>\r\n\r\n<p>Selalu bawa uang tunai selama kamu berlibur. Tentu saja bukan untuk dipakai berfoya-foya, tapi dengan membawa uang tunai, kamu akan lebih bisa mengatur pengeluaranmu selama liburan. Dengan membawa uang tunai, kamu bisa melihat langsung berapa uang yang tersisa, sehingga dapat berpikir lebih dalam sebelum mengeluarkan uang. Jika kamu takut kecurian, bawalah uang secukupnya saja, namun tetap bawa debit dan kartu kredit&nbsp;<a href=\"https://www.cermati.com/artikel/perbedaan-kartu-kredit-visa-dan-mastercard\" target=\"_blank\">Visa atau MasterCard</a>. Hal ini untuk membantu kamu saat membutuhkan uang mendadak.</p>\r\n\r\n<p>Baca Juga:&nbsp;<a href=\"https://www.cermati.com/artikel/kesalahan-finansial-yang-harus-kamu-hindari-saat-liburan\" target=\"_blank\">Kesalahan Finansial Yang Harus Kamu Hindari Saat Liburan</a></p>\r\n\r\n<h1><strong>6. Catatlah Pengeluaran Selama Liburan</strong></h1>\r\n\r\n<p><strong><img alt=\"\" src=\"https://image.cermati.com/q_70/v1432536793/yonnvdsd6qdrniyloyai.jpg\" style=\"height:487px; width:902px\" /></strong></p>\r\n\r\n<p>Jangan lupa untuk selalu catat setiap pengeluaran yang kamu lakukan walaupun itu sekecil apapun. Hal ini akan membantu kamu mengatur dan mengetahui kemana saja uang kamu mengalir. Dengan mengetahui itu semua, kita bisa menekan kemungkinan kita untuk boros dan berfoya-foya yang membuat liburan menjadi mahal.</p>\r\n\r\n<h1><strong>7. Berbelanja!</strong></h1>\r\n\r\n<p><strong><img alt=\"\" src=\"https://image.cermati.com/q_70/v1432537225/ud3ywjbeunlceaiz9b0e.jpg\" style=\"height:796px; width:901px\" /></strong></p>\r\n\r\n<p>Hal ini harus menjadi pokok pikiran kamu yang terakhir, karena ini seringkali menjadi sumber pengeluaran terbesar kamu saat liburan. Saat pergi ke tempat berlibur, tentu membeli oleh-oleh dan beberapa barang sangat dianjurkan supaya kamu dapat mengenang momen-momen liburan kamu, tetapi jangan jadikan belanja sebagai prioritas utama kamu jika kamu tidak ingin kehabisan uang di hari-hari liburan selanjutnya.</p>\r\n\r\n<p>Selain itu, carilah tempat berbelanja yang murah tapi bagus. Biasanya berbelanja di pasar tradisional akan lebih murah dan beragam daripada toko cinderamata.</p>', 0, '2018-04-23 19:15:03', '2018-04-23 19:15:03', NULL),
(24, 2, NULL, 15, 'Hei new Article', 'hei-new-article', '2018-04-25-022249-strand-blaalagunemalta-gettyjpg', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p>\r\n\r\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p>\r\n\r\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p>\r\n\r\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p>\r\n\r\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 0, '2018-04-24 19:22:49', '2018-04-24 19:22:49', NULL),
(25, 4, NULL, 14, 'heheheh', 'heheheh', '2018-04-25-022500-strand-blaalagunemalta-gettyjpg', NULL, '<p>hehehhehee</p>', 0, '2018-04-24 19:25:00', '2018-04-24 19:25:00', NULL),
(26, 1, NULL, 9, 'Ini Judul Artikel', 'asdas', '2018-04-25-022554-strand-blaalagunemalta-gettyjpg', NULL, '<p>asdasd</p>', 14, '2018-04-24 19:25:54', '2018-05-06 03:56:16', NULL),
(27, 4, NULL, 9, 'Bersungguh sungguh adalah kuncinya!', 'hehhehehehe', '2018-04-25-024417-strand-blaalagunemalta-gettyjpg', NULL, '<p>The memorial was built by John Tinline of Bury, a local stonemason. It consists of a single tall, tapering obelisk in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Portland_stone\">Portland stone</a>&nbsp;(similar to the pair on Lutyens&#39;&nbsp;<a href=\"https://en.wikipedia.org/wiki/Northampton_War_Memorial\">Northampton War Memorial</a>) standing on a square base with a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cornice\">cornice</a>&nbsp;where the two parts meet. Below the base is a carved&nbsp;<a href=\"https://en.wikipedia.org/wiki/Frieze\">frieze</a>&nbsp;which sits on a pedestal of two rectangular blocks. The whole structure rests on a rectangular plinth and at the very bottom are two shallow circular steps. On the front and rear of the obelisk are carvings of the Lancashire Fusiliers&#39;&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cap_badge\">cap badge</a>&nbsp;and the inscription &quot;XX&quot; (referring to the 20th Regiment of Foot, from which the Lancashire Fusiliers evolved) in gilded lettering, surrounded by a carved laurel wreath. On the front, below the wreath, the regiment&#39;s motto,&nbsp;<em><small>OMNIA AUDAX</small></em>&nbsp;(&quot;daring in all things&quot;, awarded for the fusiliers&#39; service in the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Second_Boer_War\">Second Boer War</a>), is inscribed. To either side are carved, painted flags: the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Military_colours,_standards_and_guidons#United_Kingdom\">King&#39;s Colour</a>&nbsp;to the north (left when the memorial is viewed from the front) and the colour of 1st Battalion, the Lancashire Fusiliers to the south (right). The obelisk itself is 4 metres (13&nbsp;ft) tall and the whole memorial is 6.9 metres (23&nbsp;ft) tall.<a href=\"https://en.wikipedia.org/wiki/Lancashire_Fusiliers_War_Memorial#cite_note-NHLE-1\">[1]</a><a href=\"https://en.wikipedia.org/wiki/Lancashire_Fusiliers_War_Memorial#cite_note-16\">[16]</a><a href=\"https://en.wikipedia.org/wiki/Lancashire_Fusiliers_War_Memorial#cite_note-Wyke-17\">[17]</a><a href=\"https://en.wikipedia.org/wiki/Lancashire_Fusiliers_War_Memorial#cite_note-18\">[18]</a><a href=\"https://en.wikipedia.org/wiki/Lancashire_Fusiliers_War_Memorial#cite_note-19\">[19]</a></p>\r\n\r\n<p>The remaining inscriptions are all to the lower part of the structure. The dates of the First World War are carved just below the obelisk, and the dedication&nbsp;<small>TO THE LANCASHIRE FUSILIERS THEIR DEEDS AND SACRIFICES FOR KING AND COUNTRY</small>&nbsp;on the upper part of the pedestal. Below those, on the lower part of the pedestal and on the plinth, are later inscriptions: the dates of the Second World War and the further dedication&nbsp;<small>AND ALL FUSILIERS WHO DIED IN SUBSEQUENT CAMPAIGNS</small>&nbsp;(the latter added after the Lancashire Fusiliers&#39; amalgamation in the 1960s).<a href=\"https://en.wikipedia.org/wiki/Lancashire_Fusiliers_War_Memorial#cite_note-NHLE-1\">[1]</a>&nbsp;The architectural historian&nbsp;<a href=\"https://en.wikipedia.org/wiki/Nikolaus_Pevsner\">Nikolaus Pevsner</a>&nbsp;opined that the memorial is one of the few beautiful public artefacts in an otherwise &quot;drab&quot; group of towns,<a href=\"https://en.wikipedia.org/wiki/Lancashire_Fusiliers_War_Memorial#cite_note-Pevsner-2\">[2]</a><a href=\"https://en.wikipedia.org/wiki/Lancashire_Fusiliers_War_Memorial#cite_note-Wyke-17\">[17]</a><a href=\"https://en.wikipedia.org/wiki/Lancashire_Fusiliers_War_Memorial#cite_note-20\">[20]</a>&nbsp;and &quot;more moving in its modesty&quot; compared to some of Lutyens&#39; grander designs for municipal war memorials.<a href=\"https://en.wikipedia.org/wiki/Lancashire_Fusiliers_War_Memorial#cite_note-21\">[21]</a></p>', 2, '2018-04-24 19:44:17', '2018-05-03 09:01:06', NULL),
(28, 3, NULL, 9, 'New Post', 'new-post', '2018-04-25-070921-strand-blaalagunemalta-gettyjpg', NULL, '<p>this is new postttt</p>', 0, '2018-04-25 00:09:21', '2018-04-25 05:43:21', '2018-04-25 05:43:21'),
(29, 3, NULL, 9, 'New Post', 'new-post', '2018-04-25-070946-strand-blaalagunemalta-gettyjpg', NULL, '<p>this is new postttt</p>', 0, '2018-04-25 00:09:46', '2018-04-25 05:43:18', '2018-04-25 05:43:18'),
(30, 1, NULL, 9, 'heheh', 'heheh', '2018-04-25-074620-strand-blaalagunemalta-gettyjpg', NULL, '<p>sdasd</p>', 0, '2018-04-25 00:46:20', '2018-04-25 05:43:13', '2018-04-25 05:43:13'),
(31, 1, NULL, 9, 'asdasd', 'asdasd', '2018-04-25-074722-strand-blaalagunemalta-gettyjpg', NULL, '<p>asdasdasd</p>', 0, '2018-04-25 00:47:22', '2018-04-25 05:43:10', '2018-04-25 05:43:10'),
(32, 5, NULL, 9, 'Wajib Hukumnya Meriset Harga Tiket 2', 'wajib-hukumnya-meriset-harga-tiket', '2018-05-06-105838-whatsapp-image-2018-05-04-at-081213jpeg', NULL, '<p>Lakukan riset terlebih dulu tentang semuanya: harga tiket menuju ke tempat tujuanmu, akomodasi, tarif dan jam operasional transportasi umum di sana, rute dan harga tiket masuk tempat wisata&mdash;pokoknya semuanya.&nbsp;Berterimakasihlah pada teknologi internet, karena menelusuri blog-blog traveler untuk menemukan acuan jadi lebih mudah.</p>\r\n\r\n<h3>Big Title</h3>\r\n\r\n<p>Kamu juga bisa melemparkan pertanyaan ke forum yang relevan, misalnya ke forum backpacker. Atau, jika kamu punya teman yang pernah mengunjungi destinasi liburanmu, jangan ragu buat bertanya pada mereka.</p>\r\n\r\n<p>&nbsp;</p>', 0, '2018-05-06 03:58:38', '2018-05-06 04:01:06', '2018-05-06 04:01:06'),
(33, 5, NULL, 9, 'New Judul', 'new-judul', '2018-05-06-110051-jepang-20180412-152110jpg', NULL, '<p>Lakukan riset terlebih dulu tentang semuanya: harga tiket menuju ke tempat tujuanmu, akomodasi, tarif dan jam operasional transportasi umum di sana, rute dan harga tiket masuk tempat wisata&mdash;pokoknya semuanya.&nbsp;Berterimakasihlah pada teknologi internet, karena menelusuri blog-blog traveler untuk menemukan acuan jadi lebih mudah.</p>\r\n\r\n<h1>Big</h1>\r\n\r\n<p>Kamu juga bisa melemparkan pertanyaan ke forum yang relevan, misalnya ke forum backpacker. Atau, jika kamu punya teman yang pernah mengunjungi destinasi liburanmu, jangan ragu buat bertanya pada mereka.</p>', 6, '2018-05-06 04:00:51', '2018-05-06 05:07:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` int(10) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_on_home` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_news` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `name`, `slug`, `show_on_home`, `show_on_news`, `created_at`, `updated_at`) VALUES
(1, 'News', 'news', 0, '1', NULL, NULL),
(2, 'Promo', 'promo', 0, '0', NULL, NULL),
(3, 'Event', 'event', 0, '0', NULL, NULL),
(4, 'Info', 'info', 0, '0', NULL, NULL),
(5, 'Travel Guide and Tips', 'hehe', 1, '0', '2018-02-09 02:36:31', '2018-02-09 02:36:31'),
(17, 'Just New Category', 'just-new-category', 0, '0', '2018-04-23 18:55:20', '2018-04-23 18:55:20'),
(21, 'New Category', 'new-category', 0, '0', '2018-04-30 19:27:10', '2018-04-30 19:27:10'),
(22, 'Jepang Diary', 'jepang-diary', 0, '0', '2018-04-30 19:28:25', '2018-04-30 19:28:25'),
(23, 'Tips Travel', 'tips-travel', 0, '0', '2018-05-06 05:05:22', '2018-05-06 05:05:22');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `category_sub_id` int(10) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `product_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no_pic.png',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` text COLLATE utf8mb4_unicode_ci,
  `view` int(10) DEFAULT '0',
  `is_draft` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `promotion_level` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_sub_id`, `seller_id`, `country_id`, `product_code`, `title`, `price`, `photo`, `description`, `features`, `view`, `is_draft`, `promotion_level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(22, 18, 8, 2, 'TOUR-000001', 'Paket Standart Jepang', 20000000, '2018-05-03-144839-jepang-20170721-153307jpg', '<h2>General Information About Rome</h2>\r\n\r\n<p>Sed aliquam nunc eget velit imperdiet, in rutrum mauris malesuada. Quisque ullamcorper vulputate nisi, et fringilla ante convallis quis. Nullam vel tellus non elit suscipit volutpat. Integer id felis et nibh rutrum dignissim ut non risus. In tincidunt urna quis sem luctus, sed accumsan magna pellentesque. Donec et iaculis tellus. Vestibulum ut iaculis justo, auctor sodales lectus. Donec et tellus tempus, dignissim maurornare, consequat lacus. Integer dui neque, scelerisque nec sollicitudin sit amet, sodales a erat. Duis vitae condimentum ligula. Integer eu mi nisl. Donec massa dui, commodo id arcu quis, venenatis scelerisque velit.</p>\r\n\r\n<h2>Day 01</h2>\r\n\r\n<p>Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec velit non odio aliquam suscipit. Sed non neque faucibus, condimentum lectus at, accumsan enim. Fusce pretium egestas cursus. Etiam consectetur, orci vel rutrum volutpat, odio odio pretium nisiodo tellus libero et urna. Sed commodo ipsum ligula, id volutpat risus vehicula in. Pellentesque non massa eu nibh posuere bibendum non sed enim. Maecenas lobortis nulla sem, vel egestas dui ullamcorper ac.</p>\r\n\r\n<h2>Day 02</h2>\r\n\r\n<p>Sed scelerisque lectus sit amet faucibus sodales. Proin ut risus tortor. Etiam fermentum tellus auctor, fringilla sapien et, congue quam. In a luctus tortor. Suspendisse eget tempor libero, ut sollicitudin ligula. Nulla vulputate tincidunt est non congue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus at est imperdiet, dapibus ipsum vel, lacinia nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus id interdum lectus, ut elementum elit. Nullam a molestie magna. Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra.</p>\r\n\r\n<h2>Day 03</h2>\r\n\r\n<p>Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec velit non odio aliquam suscipit. Sed non neque faucibus, condimentum lectus at, accumsan enim. Fusce pretium egestas cursus. Etiam consectetur, orci vel rutrum volutpat, odio odio pretium nisiodo tellus libero et urna. Sed commodo ipsum ligula, id volutpat risus vehicula in. Pellentesque non massa eu nibh posuere bibendum non sed enim. Maecenas lobortis nulla</p>', '#Free Wifi\r\n#Free Snack\r\n#Free Roller Coaster', 35, '0', 2, '2018-04-03 17:00:00', '2018-05-06 04:11:37', NULL),
(23, 12, 8, 102, 'TOUR-000002', 'Paket Premium', 3500000, '2018-03-12 02:53:47-japan4.jpg', '<h2>General Information About Japan</h2>\r\n\r\n<p>Sed aliquam nunc eget velit imperdiet, in rutrum mauris malesuada. Quisque ullamcorper vulputate nisi, et fringilla ante convallis quis. Nullam vel tellus non elit suscipit volutpat. Integer id felis et nibh rutrum dignissim ut non risus. In tincidunt urna quis sem luctus, sed accumsan magna pellentesque. Donec et iaculis tellus. Vestibulum ut iaculis justo, auctor sodales lectus. Donec et tellus tempus, dignissim maurornare, consequat lacus. Integer dui neque, scelerisque nec sollicitudin sit amet, sodales a erat. Duis vitae condimentum ligula. Integer eu mi nisl. Donec massa dui, commodo id arcu quis, venenatis scelerisque velit.</p>\r\n\r\n<h2>Day 01</h2>\r\n\r\n<p>Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec velit non odio aliquam suscipit. Sed non neque faucibus, condimentum lectus at, accumsan enim. Fusce pretium egestas cursus. Etiam consectetur, orci vel rutrum volutpat, odio odio pretium nisiodo tellus libero et urna. Sed commodo ipsum ligula, id volutpat risus vehicula in. Pellentesque non massa eu nibh posuere bibendum non sed enim. Maecenas lobortis nulla sem, vel egestas dui ullamcorper ac.</p>\r\n\r\n<h2>Day 02</h2>\r\n\r\n<p>Sed scelerisque lectus sit amet faucibus sodales. Proin ut risus tortor. Etiam fermentum tellus auctor, fringilla sapien et, congue quam. In a luctus tortor. Suspendisse eget tempor libero, ut sollicitudin ligula. Nulla vulputate tincidunt est non congue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus at est imperdiet, dapibus ipsum vel, lacinia nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus id interdum lectus, ut elementum elit. Nullam a molestie magna. Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra.</p>\r\n\r\n<h2>Day 03</h2>\r\n\r\n<p>Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec velit non odio aliquam suscipit. Sed non neque faucibus, condimentum lectus at, accumsan enim. Fusce pretium egestas cursus. Etiam consectetur, orci vel rutrum volutpat, odio odio pretium nisiodo tellus libero et urna. Sed commodo ipsum ligula, id volutpat risus vehicula in. Pellentesque non massa eu nibh posuere bibendum non sed enim. Maecenas lobortis nulla</p>', '#Backpacker Banget\r\n#Cocok Buat Liburan\r\n#Free Ride\r\n#Massage Therapi', 42, '0', 7, '2018-04-03 17:00:00', '2018-04-30 11:52:40', NULL),
(24, 11, 8, 2, 'TOUR-0000023', 'Paket NEW Year', 1200000, '2018-05-03-144619-10-tips-belajar-bahasa-jepang-agar-cepat-mahirjpg', '<h2>General Information About Japan</h2>\r\n\r\n<p>Sed aliquam nunc eget velit imperdiet, in rutrum mauris malesuada. Quisque ullamcorper vulputate nisi, et fringilla ante convallis quis. Nullam vel tellus non elit suscipit volutpat. Integer id felis et nibh rutrum dignissim ut non risus. In tincidunt urna quis sem luctus, sed accumsan magna pellentesque. Donec et iaculis tellus. Vestibulum ut iaculis justo, auctor sodales lectus. Donec et tellus tempus, dignissim maurornare, consequat lacus. Integer dui neque, scelerisque nec sollicitudin sit amet, sodales a erat. Duis vitae condimentum ligula. Integer eu mi nisl. Donec massa dui, commodo id arcu quis, venenatis scelerisque velit.</p>\r\n\r\n<h2>Day 01</h2>\r\n\r\n<p>Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec velit non odio aliquam suscipit. Sed non neque faucibus, condimentum lectus at, accumsan enim. Fusce pretium egestas cursus. Etiam consectetur, orci vel rutrum volutpat, odio odio pretium nisiodo tellus libero et urna. Sed commodo ipsum ligula, id volutpat risus vehicula in. Pellentesque non massa eu nibh posuere bibendum non sed enim. Maecenas lobortis nulla sem, vel egestas dui ullamcorper ac.</p>\r\n\r\n<h2>Day 02</h2>\r\n\r\n<p>Sed scelerisque lectus sit amet faucibus sodales. Proin ut risus tortor. Etiam fermentum tellus auctor, fringilla sapien et, congue quam. In a luctus tortor. Suspendisse eget tempor libero, ut sollicitudin ligula. Nulla vulputate tincidunt est non congue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus at est imperdiet, dapibus ipsum vel, lacinia nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus id interdum lectus, ut elementum elit. Nullam a molestie magna. Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra.</p>\r\n\r\n<h2>Day 03</h2>\r\n\r\n<p>Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec velit non odio aliquam suscipit. Sed non neque faucibus, condimentum lectus at, accumsan enim. Fusce pretium egestas cursus. Etiam consectetur, orci vel rutrum volutpat, odio odio pretium nisiodo tellus libero et urna. Sed commodo ipsum ligula, id volutpat risus vehicula in. Pellentesque non massa eu nibh posuere bibendum non sed enim. Maecenas lobortis nulla</p>', '#Backpacker Banget\r\n#Cocok Buat Liburan\r\n#Free Ride\r\n#Massage Therapi', 24, '0', 3, '2018-04-03 17:00:00', '2018-05-03 07:46:19', NULL),
(25, 13, 9, 111, 'TOUR-000025', 'Tour ke Tokyo yuk 7 Hari !', 25000000, '2018-04-18-130657-koreaselatanjpg', '<h1><a href=\"https://www.japan-guide.com/e/e3016.html\">Tokyo Disney Resort</a></h1>\r\n\r\n<p>Just 15 minutes from Tokyo Station,&nbsp;<a href=\"https://www.japan-guide.com/e/e3016.html\">Tokyo Disney Resort</a>&nbsp;is made up of two separate parks:&nbsp;<a href=\"https://www.japan-guide.com/e/e3016_land.html\">Tokyo Disneyland</a>&nbsp;and&nbsp;<a href=\"https://www.japan-guide.com/e/e3016_sea.html\">Tokyo DisneySea</a>. The former is a version of the original Disneyland in Los Angeles, while Tokyo DisneySea is a unique, water themed park exclusive to Japan.</p>', '#Tokyo\r\n#Jepang\r\n#Free Snack', 12, '0', NULL, '2018-04-18 06:06:57', '2018-05-06 03:13:32', NULL),
(26, 13, 9, 2, 'TOUR-000026', 'Tour ke Tokyo yuk 7 Hari !', 25000000, '2018-04-18-130712-koreaselatanjpg', '<h1><a href=\"https://www.japan-guide.com/e/e3016.html\">Tokyo Disney Resort</a></h1>\r\n\r\n<p>Just 15 minutes from Tokyo Station,&nbsp;<a href=\"https://www.japan-guide.com/e/e3016.html\">Tokyo Disney Resort</a>&nbsp;is made up of two separate parks:&nbsp;<a href=\"https://www.japan-guide.com/e/e3016_land.html\">Tokyo Disneyland</a>&nbsp;and&nbsp;<a href=\"https://www.japan-guide.com/e/e3016_sea.html\">Tokyo DisneySea</a>. The former is a version of the original Disneyland in Los Angeles, while Tokyo DisneySea is a unique, water themed park exclusive to Japan.</p>', '#Tokyo\r\n#Jepang\r\n#Free Snack', 7, '0', 19, '2018-04-18 06:07:12', '2018-05-06 04:22:24', NULL),
(27, 12, 9, 102, 'TOUR-000025', 'Paket liburan pulau Dewata', 25000000, '2018-04-25-130046-bali-39229790-1482324218-imagegallerylightboxlargejpg', '<p>Sed aliquam nunc eget velit imperdiet, in rutrum mauris malesuada. Quisque ullamcorper vulputate nisi, et fringilla ante convallis quis. Nullam vel tellus non elit suscipit volutpat. Integer id felis et nibh rutrum dignissim ut non risus. In tincidunt urna quis sem luctus, sed accumsan magna pellentesque. Donec et iaculis tellus. Vestibulum ut iaculis justo, auctor sodales lectus. Donec et tellus tempus, dignissim maurornare, consequat lacus. Integer dui neque, scelerisque nec sollicitudin sit amet, sodales a erat. Duis vitae condimentum ligula. Integer eu mi nisl. Donec massa dui, commodo id arcu quis, venenatis scelerisque velit.</p>\r\n\r\n<h2>Day 01</h2>\r\n\r\n<p>Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec velit non odio aliquam suscipit. Sed non neque faucibus, condimentum lectus at, accumsan enim. Fusce pretium egestas cursus. Etiam consectetur, orci vel rutrum volutpat, odio odio pretium nisiodo tellus libero et urna. Sed commodo ipsum ligula, id volutpat risus vehicula in. Pellentesque non massa eu nibh posuere bibendum non sed enim. Maecenas lobortis nulla sem, vel egestas dui ullamcorper ac.</p>\r\n\r\n<h2>Day 02</h2>\r\n\r\n<p>Sed scelerisque lectus sit amet faucibus sodales. Proin ut risus tortor. Etiam fermentum tellus auctor, fringilla sapien et, congue quam. In a luctus tortor. Suspendisse eget tempor libero, ut sollicitudin ligula. Nulla vulputate tincidunt est non congue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus at est imperdiet, dapibus ipsum vel, lacinia nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus id interdum lectus, ut elementum elit. Nullam a molestie magna. Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra.</p>\r\n\r\n<h2>Day 03</h2>\r\n\r\n<p>Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec velit non odio aliquam suscipit. Sed non neque faucibus, condimentum lectus at, accumsan enim. Fusce pretium egestas cursus. Etiam consectetur, orci vel rutrum volutpat, odio odio pretium nisiodo tellus libero et urna. Sed commodo ipsum ligula, id volutpat risus vehicula in. Pellentesque non massa eu nibh posuere bibendum non sed enim. Maecenas lobortis nulla</p>', '#Liburan Ke Bali\r\n#Free Wifi\r\n#Gratis  Transportasi\r\n#Gratis Penginapan\r\n#Gratis Makan Siang', 3, '0', NULL, '2018-04-25 06:00:46', '2018-04-25 06:10:34', NULL),
(28, 18, NULL, 2, 'TOUR-000028', 'rwerwe', 23423432, '2018-04-25-135701-strand-blaalagunemalta-gettyjpg', '<p>asdasdasdasda</p>', '#sdfsdfsdfsdf', 0, '0', NULL, '2018-04-25 06:57:01', '2018-04-25 06:57:01', NULL),
(30, 16, NULL, 102, 'TOUR-000029', 'fddfgdfg', 3345345, 'no_pic.png', '<p>asdasda</p>', '#asasdasd\r\n#asda', 0, '0', NULL, '2018-04-25 07:01:39', '2018-04-25 18:46:56', '2018-04-25 18:46:56'),
(31, 18, NULL, 102, 'TOUR-000029', 'sdpjfjsldfjlsj', 23423, '2018-04-25-141125-10best-beach-hotel-balijpg', '<p>SDFSDFSDFS</p>', '#laksk\r\n#sdmsmd', 0, '0', NULL, '2018-04-25 07:11:25', '2018-04-25 07:11:25', NULL),
(32, 12, 16, 13, 'TOUR-000032', 'Turkey Traveling', 10201020, '2018-05-02-222756-bali-39229790-1482324218-imagegallerylightboxlargejpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '#Travle\r\n#Coffee', 11, '0', NULL, '2018-05-02 15:27:56', '2018-05-06 04:18:28', NULL),
(33, 12, 16, 13, 'TOUR-000033', 'Turkey Traveling', 10201020, '2018-05-02-222836-bali-39229790-1482324218-imagegallerylightboxlargejpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '#Travle\r\n#Coffee', 0, '0', NULL, '2018-05-02 15:28:36', '2018-05-02 15:35:05', '2018-05-02 15:35:05'),
(34, 17, 9, 2, 'TOUR-000033', 'Gunung Prahu', 250000, '2018-05-06-073103-foto-cropjpg', '<h2 style=\"font-style:italic\">Gunung Prau, View Matahari Terbit Terbaik di Asia Tenggara</h2>\r\n\r\n<p><strong>Tabloidwisata.com</strong>&nbsp;&ndash;&nbsp;<a href=\"http://www.tabloidwisata.com/gunung-prau-dieng-pendakian-puncak/\">Gunung Prau Dieng</a>&nbsp;menjadi destinasi favorit para pendaki sejak tahun 2014. Gunung Prau memiliki ketinggian 2.565 MDPL, dan titik awal pendakian berada pada ketinggian 1.700 MDPL. Gunung Prau&nbsp;juga di klaim sebagai Gunung di Asia Tenggara yang memiliki&nbsp;<em>view</em>&nbsp;terbaik untuk melihat&nbsp;<em>sunrise</em>. Tidak heran jika setiap musim kemarau datang, para Traveller dari pelosok negeri selalu berdatangan. Dan tidak sedikit dari mereka yang memilih untuk nge-<em>camp</em>, karena penasaran dengan keindahan&nbsp;<em>sunrise</em>&nbsp;yang dihadirkan.</p>\r\n\r\n<p><img alt=\"Gunung Prau, View Matahari Terbit Terbaik di Asia Tenggara  \" src=\"http://www.tabloidwisata.com/wp-content/uploads/2016/03/Sunrise-Gunung-Prau-dieng.jpg\" style=\"height:388px; width:598px\" /></p>\r\n\r\n<p>Gunung Prau</p>\r\n\r\n<p>Selain keindahan pesona&nbsp;<em>sunrise</em>, para pendaki juga dapat menikmati pemandangan lain yang juga tidak kalah mempesona seperti hamparan dataran tinggi Dieng, Padang bunga Daisy, Telaga Warna, Perkebunan, hutan, dan juga pucuk pucuk pegunungan yang ada di pulau Jawa seperti gunung Merapi, Slamet, Sumbing, Sindoro, Merbabu dll.</p>\r\n\r\n<blockquote>\r\n<p>Gunung Prau ini sangat cocok untuk para pendaki pemula, karena medan pendakian tidak terlalu sulit.</p>\r\n</blockquote>\r\n\r\n<h2>Jalur Pendakian Gunung Prau Dieng</h2>\r\n\r\n<p>Saat yang paling tepat untuk mengunjungi Gunung Prau Dieng adalah pada saat musim kemarau. Dan sebaiknya apabila berencana ingin mendaki pada saat hujan, lebih baik di urungkan terlebih dahulu. Pada saat hujan, Jalur pendakian menuju puncak sangatlah becek. Dan hal ini selain membuat suasana pendakian tidak nyaman juga dapat membahayakan keselamatan.</p>\r\n\r\n<p>Apabila datang pada saat cuaca berawan /mendung, view yang dapat dilihat pun juga akan tidak maksimal, karena panorama hamparan pegunungan yang luas tertutup oleh awan yang tebal.</p>\r\n\r\n<p>Untuk menuju puncak Gunung Prau Dieng, ada 2 jalur alternatif yang dapat ditempuh. Yaitu melalui jalur utara dan jalur selatan.</p>\r\n\r\n<p>Jalur Selatan: Jalur selatan adalah jalur yang melintasi Dataran tinggi Dieng (Desa Patak Banteng). Jalur ini sangat direkomendasikan apabila pendaki yang tidak ingin menghabiskan banyak waktu, karena jarak tempuh melalui jalur selatan hanyalah 2 hingga 3 jam perjalanan.</p>\r\n\r\n<p>Jalur Utara: Jalur utara ditempuh melalui Kab. Kendal. Bisa berangkat dari Desa Genting Gunung, Desa Kenjuran, maupun Desa Balong yang berada di Kec. Sukoreja. Jarak tempuh Jalur utara ini lebih lama, kurang lebih memakan waktu 6 jam perjalanan.</p>\r\n\r\n<p>Jika ingin menikmati&nbsp;<em>sunrise</em>, sebaiknya berangkat sekitar pada pukul 01.00 WIB dan sampai dipuncak Gunung Prau sekitar pukul 04.00 WIB.</p>\r\n\r\n<p>Jika ingin menikmati<em>&nbsp;sunset</em>, sebaiknya berangkat sekitar pada pukul 14.00 WIB dan sampai di puncak Gunung Prau sekitar pukul 17.00 WIB.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tips: Gunakan jaket yang tebal ketika melakukan pendakian, karena suhu di puncak sangatlah dingin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Baca juga:&nbsp;<a href=\"http://www.tabloidwisata.com/wisata-bukit-senyum-batam-malam-hari/\" target=\"_blank\">Bukit Senyum, Melihat Gemerlap Singapura dari Batam</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Bukit Teletubies</h3>\r\n\r\n<p><img alt=\"Gunung Prau, View Matahari Terbit Terbaik di Asia Tenggara  Gunung Prau, View Matahari Terbit Terbaik di Asia Tenggara  \" src=\"https://2.bp.blogspot.com/-Oc5dQMGGPUM/Vv-xCJv4tWI/AAAAAAAAAUo/3vIB4uxh51MlzzgGrGWUefD9pX_ZRdsww/s1600/Bukit%2BTeletubbies%2BDieng.jpg\" style=\"height:387px; width:583px\" /></p>\r\n\r\n<p>Bukit Teletubbies</p>\r\n\r\n<p>Masih di area yang sama, di Gunung Prau, terdapat sebuah bukit yang imut mirip bukit pada film Teletubies. Dan karena memang sangat mirip, maka bukit itupun diberi nama bukit Teletubies. Rerumputan hijau dan dataran bukit yang timbul tenggelam, membuat para&nbsp;<em>travellers</em>&nbsp;seakan enggan berhenti untuk melakukan&nbsp;<em>selfie</em>&nbsp;atu&nbsp;<em>wefie</em>.</p>', '#Free Snack #Free Wifi #Free Hiking #Kouta Terbatas', 2, '0', NULL, '2018-05-06 00:31:03', '2018-05-06 00:34:45', NULL),
(35, 17, 9, 2, 'TOUR-000035', 'Coba produk', 12312, '2018-05-06-073646-jepang-hesti-handayani-20170804-203224jpg', '<h2>Gunung Prau, View Matahari Terbit Terbaik di Asia Tenggara</h2>\r\n\r\n<p><strong>Tabloidwisata.com</strong>&nbsp;&ndash;&nbsp;<a href=\"http://www.tabloidwisata.com/gunung-prau-dieng-pendakian-puncak/\">Gunung Prau Dieng</a>&nbsp;menjadi destinasi favorit para pendaki sejak tahun 2014. Gunung Prau memiliki ketinggian 2.565 MDPL, dan titik awal pendakian berada pada ketinggian 1.700 MDPL. Gunung Prau&nbsp;juga di klaim sebagai Gunung di Asia Tenggara yang memiliki&nbsp;<em>view</em>&nbsp;terbaik untuk melihat&nbsp;<em>sunrise</em>. Tidak heran jika setiap musim kemarau datang, para Traveller dari pelosok negeri selalu berdatangan. Dan tidak sedikit dari mereka yang memilih untuk nge-<em>camp</em>, karena penasaran dengan keindahan&nbsp;<em>sunrise</em>&nbsp;yang dihadirkan.</p>\r\n\r\n<p><img alt=\"Gunung Prau, View Matahari Terbit Terbaik di Asia Tenggara  \" src=\"http://www.tabloidwisata.com/wp-content/uploads/2016/03/Sunrise-Gunung-Prau-dieng.jpg\" /></p>\r\n\r\n<p>Gunung Prau</p>\r\n\r\n<p>Selain keindahan pesona&nbsp;<em>sunrise</em>, para pendaki juga dapat menikmati pemandangan lain yang juga tidak kalah mempesona seperti hamparan dataran tinggi Dieng, Padang bunga Daisy, Telaga Warna, Perkebunan, hutan, dan juga pucuk pucuk pegunungan yang ada di pulau Jawa seperti gunung Merapi, Slamet, Sumbing, Sindoro, Merbabu dll.</p>\r\n\r\n<blockquote>\r\n<p>Gunung Prau ini sangat cocok untuk para pendaki pemula, karena medan pendakian tidak terlalu sulit.</p>\r\n</blockquote>\r\n\r\n<h2>Jalur Pendakian Gunung Prau Dieng</h2>\r\n\r\n<p>Saat yang paling tepat untuk mengunjungi Gunung Prau Dieng adalah pada saat musim kemarau. Dan sebaiknya apabila berencana ingin mendaki pada saat hujan, lebih baik di urungkan terlebih dahulu. Pada saat hujan, Jalur pendakian menuju puncak sangatlah becek. Dan hal ini selain membuat suasana pendakian tidak nyaman juga dapat membahayakan keselamatan.</p>\r\n\r\n<p>Apabila datang pada saat cuaca berawan /mendung, view yang dapat dilihat pun juga akan tidak maksimal, karena panorama hamparan pegunungan yang luas tertutup oleh awan yang tebal.</p>\r\n\r\n<p>Untuk menuju puncak Gunung Prau Dieng, ada 2 jalur alternatif yang dapat ditempuh. Yaitu melalui jalur utara dan jalur selatan.</p>\r\n\r\n<p>Jalur Selatan: Jalur selatan adalah jalur yang melintasi Dataran tinggi Dieng (Desa Patak Banteng). Jalur ini sangat direkomendasikan apabila pendaki yang tidak ingin menghabiskan banyak waktu, karena jarak tempuh melalui jalur selatan hanyalah 2 hingga 3 jam perjalanan.</p>\r\n\r\n<p>Jalur Utara: Jalur utara ditempuh melalui Kab. Kendal. Bisa berangkat dari Desa Genting Gunung, Desa Kenjuran, maupun Desa Balong yang berada di Kec. Sukoreja. Jarak tempuh Jalur utara ini lebih lama, kurang lebih memakan waktu 6 jam perjalanan.</p>\r\n\r\n<p>Jika ingin menikmati&nbsp;<em>sunrise</em>, sebaiknya berangkat sekitar pada pukul 01.00 WIB dan sampai dipuncak Gunung Prau sekitar pukul 04.00 WIB.</p>\r\n\r\n<p>Jika ingin menikmati<em>&nbsp;sunset</em>, sebaiknya berangkat sekitar pada pukul 14.00 WIB dan sampai di puncak Gunung Prau sekitar pukul 17.00 WIB.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tips: Gunakan jaket yang tebal ketika melakukan pendakian, karena suhu di puncak sangatlah dingin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Baca juga:&nbsp;<a href=\"http://www.tabloidwisata.com/wisata-bukit-senyum-batam-malam-hari/\" target=\"_blank\">Bukit Senyum, Melihat Gemerlap Singapura dari Batam</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Bukit Teletubies</h3>\r\n\r\n<p><img alt=\"Gunung Prau, View Matahari Terbit Terbaik di Asia Tenggara  Gunung Prau, View Matahari Terbit Terbaik di Asia Tenggara  \" src=\"https://2.bp.blogspot.com/-Oc5dQMGGPUM/Vv-xCJv4tWI/AAAAAAAAAUo/3vIB4uxh51MlzzgGrGWUefD9pX_ZRdsww/s1600/Bukit%2BTeletubbies%2BDieng.jpg\" /></p>\r\n\r\n<p>Bukit Teletubbies</p>\r\n\r\n<p>Masih di area yang sama, di Gunung Prau, terdapat sebuah bukit yang imut mirip bukit pada film Teletubies. Dan karena memang sangat mirip, maka bukit itupun diberi nama bukit Teletubies. Rerumputan hijau dan dataran bukit yang timbul tenggelam, membuat para&nbsp;<em>travellers</em>&nbsp;seakan enggan berhenti untuk melakukan&nbsp;<em>selfie</em>&nbsp;atu&nbsp;<em>wefie</em>.</p>', '#as', 0, '0', NULL, '2018-05-06 00:36:46', '2018-05-06 04:13:59', '2018-05-06 04:13:59'),
(36, 16, 9, 3, 'TOUR-000036', 'New produk', 1010000, '2018-05-06-104359-foto-cropjpg', '<p>Deskription</p>', '#lalal #akak', 0, '0', NULL, '2018-05-06 03:43:59', '2018-05-06 03:43:59', NULL),
(37, 15, NULL, 102, 'TOUR-000037', 'New Produk Title', 20000000, '2018-05-06-111045-10-tips-belajar-bahasa-jepang-agar-cepat-mahirjpg', '<p>Lakukan riset terlebih dulu tentang semuanya: harga tiket menuju ke tempat tujuanmu, akomodasi, tarif dan jam operasional transportasi umum di sana, rute dan harga tiket masuk tempat wisata&mdash;pokoknya semuanya.&nbsp;Berterimakasihlah pada teknologi internet, karena menelusuri blog-blog traveler untuk menemukan acuan jadi lebih mudah.</p>\r\n\r\n<p>Kamu juga bisa melemparkan pertanyaan ke forum yang relevan, misalnya ke forum backpacker. Atau, jika kamu punya teman yang pernah mengunjungi destinasi liburanmu, jangan ragu buat bertanya pada mereka.</p>', '#test1\r\n#test2', 2, '0', NULL, '2018-05-06 04:10:45', '2018-05-06 04:13:54', '2018-05-06 04:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `category_sub_id` int(11) NOT NULL,
  `buyer_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `product_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_orders`
--

INSERT INTO `product_orders` (`id`, `order_id`, `category_sub_id`, `buyer_id`, `seller_id`, `product_code`, `title`, `price`, `photo`, `description`, `qty`, `created_at`, `updated_at`) VALUES
(1, 5, 12, 7, 8, 'TOUR-000002', 'Paket Premium', 3500000, '2018-03-12 02:53:47-japan4.jpg', '<h2>General Information About Japan</h2>\r\n\r\n<p>Sed aliquam nunc eget velit imperdiet, in rutrum mauris malesuada. Quisque ullamcorper vulputate nisi, et fringilla ante convallis quis. Nullam vel tellus non elit suscipit volutpat. Integer id felis et nibh rutrum dignissim ut non risus. In tincidunt urna quis sem luctus, sed accumsan magna pellentesque. Donec et iaculis tellus. Vestibulum ut iaculis justo, auctor sodales lectus. Donec et tellus tempus, dignissim maurornare, consequat lacus. Integer dui neque, scelerisque nec sollicitudin sit amet, sodales a erat. Duis vitae condimentum ligula. Integer eu mi nisl. Donec massa dui, commodo id arcu quis, venenatis scelerisque velit.</p>\r\n\r\n<h2>Day 01</h2>\r\n\r\n<p>Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec velit non odio aliquam suscipit. Sed non neque faucibus, condimentum lectus at, accumsan enim. Fusce pretium egestas cursus. Etiam consectetur, orci vel rutrum volutpat, odio odio pretium nisiodo tellus libero et urna. Sed commodo ipsum ligula, id volutpat risus vehicula in. Pellentesque non massa eu nibh posuere bibendum non sed enim. Maecenas lobortis nulla sem, vel egestas dui ullamcorper ac.</p>\r\n\r\n<h2>Day 02</h2>\r\n\r\n<p>Sed scelerisque lectus sit amet faucibus sodales. Proin ut risus tortor. Etiam fermentum tellus auctor, fringilla sapien et, congue quam. In a luctus tortor. Suspendisse eget tempor libero, ut sollicitudin ligula. Nulla vulputate tincidunt est non congue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus at est imperdiet, dapibus ipsum vel, lacinia nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus id interdum lectus, ut elementum elit. Nullam a molestie magna. Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra.</p>\r\n\r\n<h2>Day 03</h2>\r\n\r\n<p>Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec velit non odio aliquam suscipit. Sed non neque faucibus, condimentum lectus at, accumsan enim. Fusce pretium egestas cursus. Etiam consectetur, orci vel rutrum volutpat, odio odio pretium nisiodo tellus libero et urna. Sed commodo ipsum ligula, id volutpat risus vehicula in. Pellentesque non massa eu nibh posuere bibendum non sed enim. Maecenas lobortis nulla</p>', 3, '2018-04-08 17:22:04', '2018-04-08 17:22:04'),
(2, 6, 11, 12, 8, 'TOUR-0000023', 'Paket NEW Year', 1200000, '2018-03-12 02:53:47-japan4.jpg', '<h2>General Information About Japan</h2>\r\n\r\n<p>Sed aliquam nunc eget velit imperdiet, in rutrum mauris malesuada. Quisque ullamcorper vulputate nisi, et fringilla ante convallis quis. Nullam vel tellus non elit suscipit volutpat. Integer id felis et nibh rutrum dignissim ut non risus. In tincidunt urna quis sem luctus, sed accumsan magna pellentesque. Donec et iaculis tellus. Vestibulum ut iaculis justo, auctor sodales lectus. Donec et tellus tempus, dignissim maurornare, consequat lacus. Integer dui neque, scelerisque nec sollicitudin sit amet, sodales a erat. Duis vitae condimentum ligula. Integer eu mi nisl. Donec massa dui, commodo id arcu quis, venenatis scelerisque velit.</p>\r\n\r\n<h2>Day 01</h2>\r\n\r\n<p>Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec velit non odio aliquam suscipit. Sed non neque faucibus, condimentum lectus at, accumsan enim. Fusce pretium egestas cursus. Etiam consectetur, orci vel rutrum volutpat, odio odio pretium nisiodo tellus libero et urna. Sed commodo ipsum ligula, id volutpat risus vehicula in. Pellentesque non massa eu nibh posuere bibendum non sed enim. Maecenas lobortis nulla sem, vel egestas dui ullamcorper ac.</p>\r\n\r\n<h2>Day 02</h2>\r\n\r\n<p>Sed scelerisque lectus sit amet faucibus sodales. Proin ut risus tortor. Etiam fermentum tellus auctor, fringilla sapien et, congue quam. In a luctus tortor. Suspendisse eget tempor libero, ut sollicitudin ligula. Nulla vulputate tincidunt est non congue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus at est imperdiet, dapibus ipsum vel, lacinia nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus id interdum lectus, ut elementum elit. Nullam a molestie magna. Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra.</p>\r\n\r\n<h2>Day 03</h2>\r\n\r\n<p>Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec velit non odio aliquam suscipit. Sed non neque faucibus, condimentum lectus at, accumsan enim. Fusce pretium egestas cursus. Etiam consectetur, orci vel rutrum volutpat, odio odio pretium nisiodo tellus libero et urna. Sed commodo ipsum ligula, id volutpat risus vehicula in. Pellentesque non massa eu nibh posuere bibendum non sed enim. Maecenas lobortis nulla</p>', 3, '2018-04-30 11:54:09', '2018-04-30 11:54:09'),
(3, 6, 12, 12, 8, 'TOUR-000002', 'Paket Premium', 3500000, '2018-03-12 02:53:47-japan4.jpg', '<h2>General Information About Japan</h2>\r\n\r\n<p>Sed aliquam nunc eget velit imperdiet, in rutrum mauris malesuada. Quisque ullamcorper vulputate nisi, et fringilla ante convallis quis. Nullam vel tellus non elit suscipit volutpat. Integer id felis et nibh rutrum dignissim ut non risus. In tincidunt urna quis sem luctus, sed accumsan magna pellentesque. Donec et iaculis tellus. Vestibulum ut iaculis justo, auctor sodales lectus. Donec et tellus tempus, dignissim maurornare, consequat lacus. Integer dui neque, scelerisque nec sollicitudin sit amet, sodales a erat. Duis vitae condimentum ligula. Integer eu mi nisl. Donec massa dui, commodo id arcu quis, venenatis scelerisque velit.</p>\r\n\r\n<h2>Day 01</h2>\r\n\r\n<p>Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec velit non odio aliquam suscipit. Sed non neque faucibus, condimentum lectus at, accumsan enim. Fusce pretium egestas cursus. Etiam consectetur, orci vel rutrum volutpat, odio odio pretium nisiodo tellus libero et urna. Sed commodo ipsum ligula, id volutpat risus vehicula in. Pellentesque non massa eu nibh posuere bibendum non sed enim. Maecenas lobortis nulla sem, vel egestas dui ullamcorper ac.</p>\r\n\r\n<h2>Day 02</h2>\r\n\r\n<p>Sed scelerisque lectus sit amet faucibus sodales. Proin ut risus tortor. Etiam fermentum tellus auctor, fringilla sapien et, congue quam. In a luctus tortor. Suspendisse eget tempor libero, ut sollicitudin ligula. Nulla vulputate tincidunt est non congue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus at est imperdiet, dapibus ipsum vel, lacinia nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus id interdum lectus, ut elementum elit. Nullam a molestie magna. Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra.</p>\r\n\r\n<h2>Day 03</h2>\r\n\r\n<p>Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec velit non odio aliquam suscipit. Sed non neque faucibus, condimentum lectus at, accumsan enim. Fusce pretium egestas cursus. Etiam consectetur, orci vel rutrum volutpat, odio odio pretium nisiodo tellus libero et urna. Sed commodo ipsum ligula, id volutpat risus vehicula in. Pellentesque non massa eu nibh posuere bibendum non sed enim. Maecenas lobortis nulla</p>', 1, '2018-04-30 11:54:09', '2018-04-30 11:54:09'),
(4, 7, 18, 10, 8, 'TOUR-000001', 'Paket Standart Jepang', 20000000, '2018-03-12 02:55:20-japan2.jpg', '<h2>General Information About Rome</h2>\r\n\r\n<p>Sed aliquam nunc eget velit imperdiet, in rutrum mauris malesuada. Quisque ullamcorper vulputate nisi, et fringilla ante convallis quis. Nullam vel tellus non elit suscipit volutpat. Integer id felis et nibh rutrum dignissim ut non risus. In tincidunt urna quis sem luctus, sed accumsan magna pellentesque. Donec et iaculis tellus. Vestibulum ut iaculis justo, auctor sodales lectus. Donec et tellus tempus, dignissim maurornare, consequat lacus. Integer dui neque, scelerisque nec sollicitudin sit amet, sodales a erat. Duis vitae condimentum ligula. Integer eu mi nisl. Donec massa dui, commodo id arcu quis, venenatis scelerisque velit.</p>\r\n\r\n<h2>Day 01</h2>\r\n\r\n<p>Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec velit non odio aliquam suscipit. Sed non neque faucibus, condimentum lectus at, accumsan enim. Fusce pretium egestas cursus. Etiam consectetur, orci vel rutrum volutpat, odio odio pretium nisiodo tellus libero et urna. Sed commodo ipsum ligula, id volutpat risus vehicula in. Pellentesque non massa eu nibh posuere bibendum non sed enim. Maecenas lobortis nulla sem, vel egestas dui ullamcorper ac.</p>\r\n\r\n<h2>Day 02</h2>\r\n\r\n<p>Sed scelerisque lectus sit amet faucibus sodales. Proin ut risus tortor. Etiam fermentum tellus auctor, fringilla sapien et, congue quam. In a luctus tortor. Suspendisse eget tempor libero, ut sollicitudin ligula. Nulla vulputate tincidunt est non congue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus at est imperdiet, dapibus ipsum vel, lacinia nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus id interdum lectus, ut elementum elit. Nullam a molestie magna. Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra.</p>\r\n\r\n<h2>Day 03</h2>\r\n\r\n<p>Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec velit non odio aliquam suscipit. Sed non neque faucibus, condimentum lectus at, accumsan enim. Fusce pretium egestas cursus. Etiam consectetur, orci vel rutrum volutpat, odio odio pretium nisiodo tellus libero et urna. Sed commodo ipsum ligula, id volutpat risus vehicula in. Pellentesque non massa eu nibh posuere bibendum non sed enim. Maecenas lobortis nulla</p>', 3, '2018-05-02 07:23:28', '2018-05-02 07:23:28'),
(5, 7, 11, 10, 8, 'TOUR-0000023', 'Paket NEW Year', 1200000, '2018-03-12 02:53:47-japan4.jpg', '<h2>General Information About Japan</h2>\r\n\r\n<p>Sed aliquam nunc eget velit imperdiet, in rutrum mauris malesuada. Quisque ullamcorper vulputate nisi, et fringilla ante convallis quis. Nullam vel tellus non elit suscipit volutpat. Integer id felis et nibh rutrum dignissim ut non risus. In tincidunt urna quis sem luctus, sed accumsan magna pellentesque. Donec et iaculis tellus. Vestibulum ut iaculis justo, auctor sodales lectus. Donec et tellus tempus, dignissim maurornare, consequat lacus. Integer dui neque, scelerisque nec sollicitudin sit amet, sodales a erat. Duis vitae condimentum ligula. Integer eu mi nisl. Donec massa dui, commodo id arcu quis, venenatis scelerisque velit.</p>\r\n\r\n<h2>Day 01</h2>\r\n\r\n<p>Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec velit non odio aliquam suscipit. Sed non neque faucibus, condimentum lectus at, accumsan enim. Fusce pretium egestas cursus. Etiam consectetur, orci vel rutrum volutpat, odio odio pretium nisiodo tellus libero et urna. Sed commodo ipsum ligula, id volutpat risus vehicula in. Pellentesque non massa eu nibh posuere bibendum non sed enim. Maecenas lobortis nulla sem, vel egestas dui ullamcorper ac.</p>\r\n\r\n<h2>Day 02</h2>\r\n\r\n<p>Sed scelerisque lectus sit amet faucibus sodales. Proin ut risus tortor. Etiam fermentum tellus auctor, fringilla sapien et, congue quam. In a luctus tortor. Suspendisse eget tempor libero, ut sollicitudin ligula. Nulla vulputate tincidunt est non congue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus at est imperdiet, dapibus ipsum vel, lacinia nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus id interdum lectus, ut elementum elit. Nullam a molestie magna. Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra.</p>\r\n\r\n<h2>Day 03</h2>\r\n\r\n<p>Praesent eros turpis, commodo vel justo at, pulvinar mollis eros. Mauris aliquet eu quam id ornare. Morbi ac quam enim. Cras vitae nulla condimentum, semper dolor non, faucibus dolor. Vivamus adipiscing eros quis orci fringilla, sed pretium lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec velit non odio aliquam suscipit. Sed non neque faucibus, condimentum lectus at, accumsan enim. Fusce pretium egestas cursus. Etiam consectetur, orci vel rutrum volutpat, odio odio pretium nisiodo tellus libero et urna. Sed commodo ipsum ligula, id volutpat risus vehicula in. Pellentesque non massa eu nibh posuere bibendum non sed enim. Maecenas lobortis nulla</p>', 1, '2018-05-02 07:23:28', '2018-05-02 07:23:28'),
(6, 8, 12, 10, 16, 'TOUR-000032', 'Turkey Traveling', 10201020, '2018-05-02-222756-bali-39229790-1482324218-imagegallerylightboxlargejpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 3, '2018-05-02 16:36:17', '2018-05-02 16:36:17'),
(7, 9, 12, 10, 16, 'TOUR-000032', 'Turkey Traveling', 10201020, '2018-05-02-222756-bali-39229790-1482324218-imagegallerylightboxlargejpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, '2018-05-02 16:59:23', '2018-05-02 16:59:23'),
(8, 23, 12, 10, 16, 'TOUR-000032', 'Turkey Traveling', 10201020, '2018-05-02-222756-bali-39229790-1482324218-imagegallerylightboxlargejpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, '2018-05-03 03:02:16', '2018-05-03 03:02:16'),
(9, 24, 13, 10, 9, 'TOUR-000025', 'Tour ke Tokyo yuk 7 Hari !', 25000000, '2018-04-18-130657-koreaselatanjpg', '<h1><a href=\"https://www.japan-guide.com/e/e3016.html\">Tokyo Disney Resort</a></h1>\r\n\r\n<p>Just 15 minutes from Tokyo Station,&nbsp;<a href=\"https://www.japan-guide.com/e/e3016.html\">Tokyo Disney Resort</a>&nbsp;is made up of two separate parks:&nbsp;<a href=\"https://www.japan-guide.com/e/e3016_land.html\">Tokyo Disneyland</a>&nbsp;and&nbsp;<a href=\"https://www.japan-guide.com/e/e3016_sea.html\">Tokyo DisneySea</a>. The former is a version of the original Disneyland in Los Angeles, while Tokyo DisneySea is a unique, water themed park exclusive to Japan.</p>', 1, '2018-05-05 17:43:53', '2018-05-05 17:43:53'),
(10, 25, 13, 10, 9, 'TOUR-000026', 'Tour ke Tokyo yuk 7 Hari !', 25000000, '2018-04-18-130712-koreaselatanjpg', '<h1><a href=\"https://www.japan-guide.com/e/e3016.html\">Tokyo Disney Resort</a></h1>\r\n\r\n<p>Just 15 minutes from Tokyo Station,&nbsp;<a href=\"https://www.japan-guide.com/e/e3016.html\">Tokyo Disney Resort</a>&nbsp;is made up of two separate parks:&nbsp;<a href=\"https://www.japan-guide.com/e/e3016_land.html\">Tokyo Disneyland</a>&nbsp;and&nbsp;<a href=\"https://www.japan-guide.com/e/e3016_sea.html\">Tokyo DisneySea</a>. The former is a version of the original Disneyland in Los Angeles, while Tokyo DisneySea is a unique, water themed park exclusive to Japan.</p>', 5, '2018-05-05 21:54:42', '2018-05-05 21:54:42'),
(11, 26, 13, 10, 9, 'TOUR-000026', 'Tour ke Tokyo yuk 7 Hari !', 25000000, '2018-04-18-130712-koreaselatanjpg', '<h1><a href=\"https://www.japan-guide.com/e/e3016.html\">Tokyo Disney Resort</a></h1>\r\n\r\n<p>Just 15 minutes from Tokyo Station,&nbsp;<a href=\"https://www.japan-guide.com/e/e3016.html\">Tokyo Disney Resort</a>&nbsp;is made up of two separate parks:&nbsp;<a href=\"https://www.japan-guide.com/e/e3016_land.html\">Tokyo Disneyland</a>&nbsp;and&nbsp;<a href=\"https://www.japan-guide.com/e/e3016_sea.html\">Tokyo DisneySea</a>. The former is a version of the original Disneyland in Los Angeles, while Tokyo DisneySea is a unique, water themed park exclusive to Japan.</p>', 1, '2018-05-06 04:22:45', '2018-05-06 04:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `product_photos`
--

CREATE TABLE `product_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `is_cover` tinyint(1) NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_photos`
--

INSERT INTO `product_photos` (`id`, `product_id`, `is_cover`, `file_name`, `created_at`, `updated_at`) VALUES
(1, 6, 0, '870x442.png', '2018-02-21 03:21:07', '2018-02-21 03:21:07'),
(2, 6, 0, '870x442.png', '2018-02-21 03:21:07', '2018-02-21 03:21:07'),
(3, 6, 0, '870x442.png', '2018-02-21 03:21:07', '2018-02-21 03:21:07'),
(4, 6, 0, '870x442.png', '2018-02-21 03:21:07', '2018-02-21 03:21:07'),
(5, 6, 0, '870x442.png', '2018-02-21 03:21:07', '2018-02-21 03:21:07'),
(6, 7, 0, '870x442.png', '2018-02-21 05:24:53', '2018-02-21 05:24:53'),
(7, 7, 1, '870x442.png', '2018-02-21 05:24:53', '2018-02-21 05:24:53'),
(8, 7, 0, '870x442.png', '2018-02-21 05:24:53', '2018-02-21 05:24:53'),
(9, 7, 0, '870x442.png', '2018-02-21 05:24:53', '2018-02-21 05:24:53'),
(10, 7, 0, '870x442.png', '2018-02-21 05:24:53', '2018-02-21 05:24:53'),
(11, 7, 0, '870x442.png', '2018-02-21 05:24:53', '2018-02-21 05:24:53'),
(12, 7, 0, '870x442.png', '2018-02-21 05:24:53', '2018-02-21 05:24:53'),
(13, 8, 1, '870x442.png', '2018-02-21 07:37:22', '2018-02-21 07:37:22'),
(14, 8, 0, '870x442.png', '2018-02-21 07:37:22', '2018-02-21 07:37:22'),
(15, 8, 0, '870x442.png', '2018-02-21 07:37:23', '2018-02-21 07:37:23'),
(16, 8, 0, '870x442.png', '2018-02-21 07:37:23', '2018-02-21 07:37:23'),
(17, 8, 0, '870x442.png', '2018-02-21 07:37:23', '2018-02-21 07:37:23'),
(18, 9, 0, '870x442.png', '2018-02-21 07:37:55', '2018-02-21 07:37:55'),
(19, 9, 0, '870x442.png', '2018-02-21 07:37:56', '2018-02-21 07:37:56'),
(20, 9, 0, '870x442.png', '2018-02-21 07:37:56', '2018-02-21 07:37:56'),
(21, 9, 0, '870x442.png', '2018-02-21 07:37:56', '2018-02-21 07:37:56'),
(22, 9, 0, '870x442.png', '2018-02-21 07:37:56', '2018-02-21 07:37:56'),
(42, 3, 0, '870x442.png', '2018-03-11 19:53:46', '2018-03-11 19:53:46'),
(43, 3, 0, '870x442.png', '2018-03-11 19:53:46', '2018-03-11 19:53:46'),
(44, 3, 0, '870x442.png', '2018-03-11 19:53:47', '2018-03-11 19:53:47'),
(45, 3, 1, '870x442.png', '2018-03-11 19:53:47', '2018-03-11 19:53:47'),
(46, 3, 0, '870x442.png', '2018-03-11 19:53:47', '2018-03-11 19:53:47'),
(47, 3, 0, '870x442.png', '2018-03-11 19:53:47', '2018-03-11 19:53:47'),
(48, 2, 0, '870x442.png', '2018-03-11 19:54:39', '2018-03-11 19:54:39'),
(49, 2, 0, '870x442.png', '2018-03-11 19:54:39', '2018-03-11 19:54:39'),
(50, 2, 0, '870x442.png', '2018-03-11 19:54:39', '2018-03-11 19:54:39'),
(51, 2, 0, '870x442.png', '2018-03-11 19:54:39', '2018-03-11 19:54:39'),
(52, 2, 1, '870x442.png', '2018-03-11 19:54:39', '2018-03-11 19:54:39'),
(53, 2, 0, '870x442.png', '2018-03-11 19:54:39', '2018-03-11 19:54:39'),
(54, 1, 1, '870x442.png', '2018-03-11 19:55:20', '2018-03-31 16:12:09'),
(55, 1, 1, '870x442.png', '2018-03-11 19:55:20', '2018-03-11 19:55:20'),
(56, 1, 0, '870x442.png', '2018-03-11 19:55:20', '2018-03-11 19:55:20'),
(57, 1, 0, '870x442.png', '2018-03-11 19:55:20', '2018-03-11 19:55:20'),
(58, 1, 0, '870x442.png', '2018-03-11 19:55:20', '2018-03-11 19:55:20'),
(59, 7, 0, '870x442.png', '2018-03-31 18:01:29', '2018-03-31 18:01:29'),
(60, 7, 0, '870x442.png', '2018-03-31 18:01:29', '2018-03-31 18:01:29'),
(61, 7, 0, '870x442.png', '2018-03-31 18:01:29', '2018-03-31 18:01:29'),
(62, 7, 1, '870x442.png', '2018-03-31 18:01:29', '2018-03-31 18:01:29'),
(63, 7, 0, '870x442.png', '2018-03-31 18:01:29', '2018-03-31 18:01:29'),
(64, 7, 0, '870x442.png', '2018-03-31 18:01:29', '2018-03-31 18:01:29'),
(65, 25, 0, '2018-04-18-130657-singaporejpeg', '2018-04-18 06:06:57', '2018-04-18 06:06:57'),
(66, 25, 1, '2018-04-18-130657-koreaselatanjpg', '2018-04-18 06:06:57', '2018-04-18 06:06:57'),
(67, 25, 0, '2018-04-18-130657-jepangjpg', '2018-04-18 06:06:57', '2018-04-18 06:06:57'),
(68, 26, 0, '2018-04-18-130712-singaporejpeg', '2018-04-18 06:07:12', '2018-04-18 06:07:12'),
(69, 26, 1, '2018-04-18-130712-koreaselatanjpg', '2018-04-18 06:07:12', '2018-05-06 04:13:18'),
(71, 27, 0, '2018-04-25-130046-10best-beach-hotel-balijpg', '2018-04-25 06:00:46', '2018-04-25 06:00:46'),
(72, 27, 1, '2018-04-25-130046-bali-39229790-1482324218-imagegallerylightboxlargejpg', '2018-04-25 06:00:46', '2018-04-25 06:00:46'),
(73, 27, 0, '2018-04-25-130046-best-resorts-balijpg', '2018-04-25 06:00:46', '2018-04-25 06:00:46'),
(74, 28, 1, '2018-04-25-135701-strand-blaalagunemalta-gettyjpg', '2018-04-25 06:57:01', '2018-04-25 06:57:01'),
(75, 30, 0, '2018-04-25-140139-10best-beach-hotel-balijpg', '2018-04-25 07:01:39', '2018-04-25 07:01:39'),
(76, 31, 1, '2018-04-25-141125-10best-beach-hotel-balijpg', '2018-04-25 07:11:25', '2018-04-25 07:11:25'),
(77, 32, 1, '2018-05-02-222756-bali-39229790-1482324218-imagegallerylightboxlargejpg', '2018-05-02 15:27:56', '2018-05-02 15:27:56'),
(78, 32, 0, '2018-05-02-222756-best-resorts-balijpg', '2018-05-02 15:27:56', '2018-05-02 15:27:56'),
(79, 33, 1, '2018-05-02-222836-bali-39229790-1482324218-imagegallerylightboxlargejpg', '2018-05-02 15:28:36', '2018-05-02 15:28:36'),
(80, 33, 0, '2018-05-02-222836-best-resorts-balijpg', '2018-05-02 15:28:36', '2018-05-02 15:28:36'),
(81, 24, 0, '2018-05-03-144619-jepang-hesti-handayani-20170804-203224jpg', '2018-05-03 07:46:19', '2018-05-03 07:46:19'),
(83, 24, 0, '2018-05-03-144619-image-1517923750-5a79ada6ec0a1jpg', '2018-05-03 07:46:19', '2018-05-03 07:46:19'),
(84, 24, 1, '2018-05-03-144619-10-tips-belajar-bahasa-jepang-agar-cepat-mahirjpg', '2018-05-03 07:46:19', '2018-05-03 07:46:19'),
(85, 24, 0, '2018-05-03-144619-jepang-20180412-152110jpg', '2018-05-03 07:46:19', '2018-05-03 07:46:19'),
(86, 22, 1, '2018-05-03-144839-jepang-20170721-153307jpg', '2018-05-03 07:48:39', '2018-05-03 07:48:39'),
(87, 22, 0, '2018-05-03-144839-image-1517923750-5a79ada6ec0a1jpg', '2018-05-03 07:48:39', '2018-05-03 07:48:39'),
(88, 22, 0, '2018-05-03-144839-10-tips-belajar-bahasa-jepang-agar-cepat-mahirjpg', '2018-05-03 07:48:39', '2018-05-03 07:48:39'),
(89, 34, 1, '2018-05-06-073103-foto-cropjpg', '2018-05-06 00:31:03', '2018-05-06 00:31:03'),
(90, 34, 0, '2018-05-06-073103-28058883-1702354166497544-4250385739854920447-njpg', '2018-05-06 00:31:03', '2018-05-06 00:31:03'),
(91, 34, 0, '2018-05-06-073103-27458968-1689347831131511-5533949605315172705-njpg', '2018-05-06 00:31:03', '2018-05-06 00:31:03'),
(93, 35, 0, '2018-05-06-073646-whatsapp-image-2018-05-03-at-230342jpeg', '2018-05-06 00:36:46', '2018-05-06 00:36:46'),
(94, 35, 1, '2018-05-06-073646-jepang-hesti-handayani-20170804-203224jpg', '2018-05-06 00:36:46', '2018-05-06 00:36:46'),
(95, 35, 0, '2018-05-06-073646-jepang-20170721-153307jpg', '2018-05-06 00:36:46', '2018-05-06 00:36:46'),
(96, 36, 0, '2018-05-06-104359-29342495-1736800936386200-2915377144295063552-njpg', '2018-05-06 03:43:59', '2018-05-06 03:43:59'),
(97, 36, 1, '2018-05-06-104359-foto-cropjpg', '2018-05-06 03:43:59', '2018-05-06 03:43:59'),
(98, 36, 0, '2018-05-06-104359-28058883-1702354166497544-4250385739854920447-njpg', '2018-05-06 03:43:59', '2018-05-06 03:43:59'),
(99, 36, 0, '2018-05-06-104359-27458968-1689347831131511-5533949605315172705-njpg', '2018-05-06 03:43:59', '2018-05-06 03:43:59'),
(100, 37, 0, '2018-05-06-111045-jepang-hesti-handayani-20170804-203224jpg', '2018-05-06 04:10:45', '2018-05-06 04:10:45'),
(101, 37, 0, '2018-05-06-111045-jepang-20170721-153307jpg', '2018-05-06 04:10:45', '2018-05-06 04:10:45'),
(102, 37, 0, '2018-05-06-111045-image-1517923750-5a79ada6ec0a1jpg', '2018-05-06 04:10:45', '2018-05-06 04:10:45'),
(103, 37, 1, '2018-05-06-111045-10-tips-belajar-bahasa-jepang-agar-cepat-mahirjpg', '2018-05-06 04:10:45', '2018-05-06 04:10:45'),
(104, 37, 0, '2018-05-06-111045-jepang-20180412-152110jpg', '2018-05-06 04:10:45', '2018-05-06 04:10:45'),
(105, 26, 0, '2018-05-06-111234-jepang-20170721-153307jpg', '2018-05-06 04:12:34', '2018-05-06 04:12:34'),
(106, 26, 1, '2018-05-06-111234-image-1517923750-5a79ada6ec0a1jpg', '2018-05-06 04:12:34', '2018-05-06 04:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(10) NOT NULL,
  `name` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `name`) VALUES
(11, 'Aceh'),
(12, 'Sumatera Utara'),
(13, 'Sumatera Barat'),
(14, 'Riau'),
(15, 'Jambi'),
(16, 'Sumatera Selatan'),
(17, 'Bengkulu'),
(18, 'Lampung'),
(19, 'Kepulauan Bangka Belitung'),
(21, 'Kepulauan Riau'),
(31, 'DKI Jakarta'),
(32, 'Jawa Barat'),
(33, 'Jawa Tengah'),
(34, 'DI Yogyakarta'),
(35, 'Jawa Timur'),
(36, 'Banten'),
(51, 'Bali'),
(52, 'Nusa Tenggara Barat'),
(53, 'Nusa Tenggara Timur'),
(61, 'Kalimantan Barat'),
(62, 'Kalimantan Tengah'),
(63, 'Kalimantan Selatan'),
(64, 'Kalimantan Timur'),
(65, 'Kalimantan Utara'),
(71, 'Sulawesi Utara'),
(72, 'Sulawesi Tengah'),
(73, 'Sulawesi Selatan'),
(74, 'Sulawesi Tenggara'),
(75, 'Gorontalo'),
(76, 'Sulawesi Barat'),
(81, 'Maluku'),
(82, 'Maluku Utara'),
(91, 'Papua Barat'),
(92, 'Papua');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id_prov` int(10) NOT NULL,
  `nama` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_prov`, `nama`) VALUES
(11, 'Aceh'),
(12, 'Sumatera Utara'),
(13, 'Sumatera Barat'),
(14, 'Riau'),
(15, 'Jambi'),
(16, 'Sumatera Selatan'),
(17, 'Bengkulu'),
(18, 'Lampung'),
(19, 'Kepulauan Bangka Belitung'),
(21, 'Kepulauan Riau'),
(31, 'DKI Jakarta'),
(32, 'Jawa Barat'),
(33, 'Jawa Tengah'),
(34, 'DI Yogyakarta'),
(35, 'Jawa Timur'),
(36, 'Banten'),
(51, 'Bali'),
(52, 'Nusa Tenggara Barat'),
(53, 'Nusa Tenggara Timur'),
(61, 'Kalimantan Barat'),
(62, 'Kalimantan Tengah'),
(63, 'Kalimantan Selatan'),
(64, 'Kalimantan Timur'),
(65, 'Kalimantan Utara'),
(71, 'Sulawesi Utara'),
(72, 'Sulawesi Tengah'),
(73, 'Sulawesi Selatan'),
(74, 'Sulawesi Tenggara'),
(75, 'Gorontalo'),
(76, 'Sulawesi Barat'),
(81, 'Maluku'),
(82, 'Maluku Utara'),
(91, 'Papua Barat'),
(92, 'Papua');

-- --------------------------------------------------------

--
-- Table structure for table `seller_detail`
--

CREATE TABLE `seller_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_card` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('M','F') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_address` text COLLATE utf8mb4_unicode_ci,
  `zip_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no_pic.png',
  `province_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trusted_level` enum('0','1','2') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `doc_1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_3` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_4` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_5` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_detail`
--

INSERT INTO `seller_detail` (`id`, `user_id`, `id_card`, `full_name`, `birth_date`, `phone_number`, `gender`, `street_address`, `zip_code`, `city_id`, `photo`, `province_id`, `company_name`, `company_phone`, `company_description`, `trusted_level`, `created_at`, `updated_at`, `doc_1`, `doc_2`, `doc_3`, `doc_4`, `doc_5`) VALUES
(1, 8, '20002002001023', 'Seller Pertama', '2018-02-09', '232312223', 'M', 'Jakarta barat', '20203129', '1506', '2018-03-19 15:14:36_WhatsApp Image 2018-03-18 at 2.17.55 AM.jpeg', '15', 'SepurTravel', '023123123', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet voluptatibus reiciendis.', '0', NULL, '2018-03-31 22:55:16', NULL, NULL, NULL, NULL, NULL),
(2, 9, '0000000000', 'Wisatapedia', '2018-05-03', '0000000000', 'M', 'Wisatapedia.id', '471771', '1507', '2018-05-03 15:33:02_28058883_1702354166497544_4250385739854920447_n.jpg', '15', 'WisataPedia.ID', '0000000000000', 'Perginya kemana ingat Wisatapedia !', '0', '2018-04-18 17:08:59', '2018-05-05 17:19:27', NULL, NULL, NULL, NULL, NULL),
(4, 13, '111002030101', 'Ridho Eriawan w', '2018-05-01', '+623812839192', 'M', 'Jl. Taman Wijaya Kusuma, Ps. Baru, Sawah Besar, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10710', NULL, '3173', '2018-05-01 13:01:36_vietnam-travel-tips.png', '31', 'Cahaya Travel', '+62391923919923', 'Good traveling good travel cahaya!', NULL, '2018-05-01 05:30:26', '2018-05-01 06:01:36', NULL, NULL, NULL, NULL, NULL),
(5, 15, '1102003000101020', 'Djoko Susilo', '1998-06-01', '+623812839192', 'M', 'Jl. Taman Wijaya Kusuma, Ps. Baru, Sawah Besar, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10710', NULL, '3209', '2018-05-01 13:18:28_vietnam-travel-tips.png', '32', 'Mentari Travel', '021231', 'this is my company', NULL, '2018-05-01 06:18:28', '2018-05-01 06:19:21', NULL, NULL, NULL, NULL, NULL),
(6, 16, '100120100201', 'Test Travel', '1998-01-01', '082838182', 'M', 'Jl. Garuda Putih, Jakarta Barat 11201', NULL, '3172', '2018-05-01 13:27:04_vietnam-travel-tips.png', '31', 'Garuda Travel', '092818281', 'Teralallalal', NULL, '2018-05-01 06:27:04', '2018-05-01 06:27:04', NULL, NULL, NULL, NULL, NULL),
(8, 27, '110100101010', 'Seller Lima', '1968-01-01', '08939199239', 'M', 'Jl. Lima seller', '45127', '5102', '2018-05-09 00:22:36_logo_crb_dev.png', '51', 'Seller Lima Travel', '012122301', 'Seller lima travel bring our to the future', NULL, '2018-05-08 17:22:36', '2018-05-08 17:22:36', NULL, NULL, NULL, NULL, NULL),
(9, 30, '100101001001', 'Selelr Enam', '1968-01-01', '028292929', 'M', 'Jl. jonggol', '2131', '1104', '2018-05-10 01:28:24_WhatsApp Image 2018-05-04 at 08.12.13.jpeg', '11', 'Seller Enam', '018191991', 'Seller enam travel', NULL, '2018-05-09 18:28:24', '2018-05-09 18:28:24', NULL, NULL, NULL, NULL, NULL),
(10, 31, '101001001010', 'Seller Tujuh', '1968-01-03', '01002003010', 'M', 'Jl Seller Tujuh', '1929', '1702', '2018-05-10-013326-whatsapp-image-2018-05-03-at-230342jpeg', '17', 'Seller Tujuh', '08838181', 'Seller Tujuh Travel', NULL, '2018-05-09 18:33:26', '2018-05-09 18:33:26', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seller_documents`
--

CREATE TABLE `seller_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `seller_id` int(11) NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_valid` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sesi`
--

CREATE TABLE `sesi` (
  `id_sesi` int(11) NOT NULL,
  `sesi_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sesi_key` varchar(64) DEFAULT NULL,
  `sesi_device` varchar(64) DEFAULT NULL,
  `id_pegawai` int(11) DEFAULT NULL,
  `sesi_logout` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sesi_status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `total_price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`id`, `user_id`, `product_id`, `qty`, `total_price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, NULL, 3, 60000000, '2018-04-07 13:40:33', '2018-04-07 13:48:26', '2018-04-07 13:48:26'),
(2, 7, NULL, 3, 10500000, '2018-04-08 16:40:13', '2018-04-08 17:22:04', '2018-04-08 17:22:04'),
(3, 12, 24, 3, 3600000, '2018-04-30 11:52:28', '2018-04-30 11:54:09', '2018-04-30 11:54:09'),
(4, 12, 23, 1, 3500000, '2018-04-30 11:52:42', '2018-04-30 11:54:09', '2018-04-30 11:54:09'),
(5, 12, 25, 4, 100000000, '2018-04-30 11:53:09', '2018-04-30 11:53:43', '2018-04-30 11:53:43'),
(6, 12, 22, 1, 20000000, '2018-04-30 11:54:42', '2018-04-30 11:55:40', '2018-04-30 11:55:40'),
(7, 12, 25, 3, 75000000, '2018-04-30 11:55:24', '2018-04-30 11:55:48', '2018-04-30 11:55:48'),
(8, 12, 26, 1, 25000000, '2018-04-30 11:55:34', '2018-04-30 11:55:48', '2018-04-30 11:55:48'),
(9, 10, 22, 3, 60000000, '2018-05-02 07:23:00', '2018-05-02 07:23:28', '2018-05-02 07:23:28'),
(10, 10, 24, 1, 1200000, '2018-05-02 07:23:13', '2018-05-02 07:23:28', '2018-05-02 07:23:28'),
(11, 10, 32, 3, 30603060, '2018-05-02 16:35:10', '2018-05-02 16:36:17', '2018-05-02 16:36:17'),
(12, 10, 32, 1, 10201020, '2018-05-02 16:58:56', '2018-05-02 16:59:23', '2018-05-02 16:59:23'),
(13, 10, 32, 1, 10201020, '2018-05-02 17:08:06', '2018-05-03 03:02:16', '2018-05-03 03:02:16'),
(14, 10, 22, 1, 20000000, '2018-05-03 03:01:52', '2018-05-03 03:02:06', '2018-05-03 03:02:06'),
(15, 10, 25, 1, 25000000, '2018-05-05 17:43:47', '2018-05-05 17:43:53', '2018-05-05 17:43:53'),
(16, 10, 26, 5, 125000000, '2018-05-05 21:54:21', '2018-05-05 21:54:42', '2018-05-05 21:54:42'),
(17, 10, 26, 1, 25000000, '2018-05-06 04:22:29', '2018-05-06 04:22:45', '2018-05-06 04:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No title',
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_view` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `title`, `filename`, `is_view`, `created_at`, `updated_at`) VALUES
(2, 'Paket Promo September', '2018-05-06-112041-whatsapp-image-2018-05-04-at-081213jpeg.jpeg', '1', NULL, '2018-05-06 04:20:41'),
(5, 'Diskon Tour Ke Jepang Lagi', '2018-04-13-040828-traveling-jobsjpg', '1', '2018-04-12 20:28:09', '2018-04-12 21:08:28'),
(6, 'Diskon Tour Ke New York akhir Desember', '2018-04-13-040841-ticketflightjpg', '1', '2018-04-12 20:28:51', '2018-04-12 21:08:41'),
(7, 'Promo Akhir Bulan Gaes !', '2018-04-13-040856-anggaran-kemensospng', '1', '2018-04-12 20:55:55', '2018-04-12 21:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sesi`
--

CREATE TABLE `tb_sesi` (
  `id_sesi` int(4) NOT NULL,
  `sesi_key` varchar(64) NOT NULL,
  `sesi_device` varchar(64) NOT NULL,
  `sesi_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_user` int(16) NOT NULL,
  `sesi_logout` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sesi_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('BUYER','SELLER','ADMIN') COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `level`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'Albert', 'albert', 'albert@gmail.com', '$2y$10$1nbnHnQiFlY2EgfS8qiT2ueU96kKpC4krn2Tw5p0IqF6JJRLd/QQm', 'BUYER', '0', 'znm3Bni4VRaEHWUEV8UNFztxcojO0BSoUx8QdngAvSOMjvY1VLwMgpy2JnMi', '2018-02-19 07:17:00', '2018-02-19 07:17:00'),
(8, 'First Seller', 'seller', 'seller@gmail.com', '$2y$10$gnkYBDzCwmij/DECgVvPr.LrkX52KZa9vUwwl8L7a2cyXqbHKPmBu', 'SELLER', '1', 'LYwgS8QxnaRGvNin4ZuUl3yHNNcJuRFV7xoCDArcaDViGuhnp8PTzavmJylF', '2018-02-25 08:36:00', NULL),
(9, 'Wisatapedia', 'wisatapedia', 'admin@wisatapedia.id', '$2y$10$H3GMmF49CykBRv0jpwWmt.rlvZSu0MGAhDyZYIBREhyDdbIgZ3.Qm', 'ADMIN', '0', 'PeXhUTiOvLXxSXnAjn7CAFx076uF5Ngtb8Tj1Y2qUPIVeegB1MZkRfrAOcGg', '2018-04-18 17:08:59', '2018-04-18 17:08:59'),
(10, 'Nina Rahma', 'nina.rahma', 'nina.rahma@gmail.com', '$2y$10$jkW9rgMtkNLD2p6O9Sseeu8NAlQkOrki1cqiOG7ZiVUpeRINEmZ3e', 'BUYER', '0', 'z136BybPNs0qg7x9SoKvCKaM7OtzbnfXxAvXNZKhQy0lW2oimYKvipm6A3oL', '2018-04-29 21:50:12', '2018-04-29 21:50:12'),
(12, 'Dewi Ayunda', 'dewi.a', 'dewi.ayunda@gmail.com', '$2y$10$WIV6inzQ7zT2q/.f2bbzdO5TYAsxKqJpM5VhYSmMPxw5vnMMdsL5S', 'BUYER', '0', NULL, '2018-04-30 11:36:41', '2018-04-30 11:36:41'),
(13, 'Ridho Eriawan', 'cahayatravel', 'cahaya.travel@gmail.com', '$2y$10$KQns4/5QyXJkIpucAmg8oORHm1ahG7AAK5uFx.iHmE/Rm.esLgoPO', 'SELLER', '0', 'Sr9JJqiD2oihtWstXxI5xUMwFKXVH5eohVtmettx6Uzyjxw9PjcYNRHaZBRL', '2018-05-01 05:30:26', '2018-05-01 05:30:26'),
(14, 'Djoko Susilo', 'mentaritravel', 'mentari.sinar@gmail.com', '$2y$10$wDBhrsolf3I6IAOi65QXE.UEpZgoHxp9KhqmxYT1XT7KajZa68URi', 'SELLER', '0', NULL, '2018-05-01 06:15:55', '2018-05-01 06:15:55'),
(15, 'Djoko Susilo', 'mentaritravel2', 'mentari.travel@gmail.com', '$2y$10$Lx8Z1m70vET0lMNHWoI3QekDUfotemiCPG4IB.cQruC5CdeUydf3W', 'SELLER', '0', 'sBCRo8S4X5FCUEMRzfkvMKjprAYJIW7Upgd1hMFOBWcrHjtYqmRYMlBphMaX', '2018-05-01 06:18:28', '2018-05-01 06:18:28'),
(16, 'Test Travel', 'testtravel', 'test.travel@gmail.com', '$2y$10$vVkQ9eInR9m3O8pvdstlqO9LxPPADZmg//kvjPT3GGABIyCqnC5tO', 'SELLER', '0', '8jwaHCafEqOzC4pmwPoEmQthSVjnzAnWRWz5THWkTRMwNGS6arlrCIUEg5sg', '2018-05-01 06:27:04', '2018-05-01 06:27:04'),
(17, 'mastahero', 'darkod', 'ra@aska.as', '$2y$10$4ksf3h/CQk2/2E0Y/AJqyObG2gOxn9PhYHt.RSVRYF5KcJNHSM8yO', 'BUYER', '0', NULL, '2018-05-04 16:11:01', '2018-05-04 16:11:01'),
(21, 'mastahero', 'darkod', 'ra@aska.asqa', '$2y$10$bBcb2y0wqTwEs6mmgd742eAuL2sM3EV2C1EKkTtREfL7E80p2vNKK', 'BUYER', '0', NULL, '2018-05-04 16:12:09', '2018-05-04 16:12:09'),
(23, 'kskadskadskads', 'asasdadsdas', 'djoko@fkakaka..as', '$2y$10$Sbw6H1CEu5YyK/1dJTZbk.1csllls0F9oSW.6D35YQVO6R/lDUpUS', 'BUYER', '0', NULL, '2018-05-08 07:57:47', '2018-05-08 07:57:47'),
(24, 'Buyer Tiga', 'buyer3', 'buyer3@gmail.com', '$2y$10$6vm8BzrTeORHX0cpzZiS7.2/gA3oLI3tiRropBU84WZD8o.xMVBYq', 'BUYER', '0', 'wCVqRnR15dMiuUlVpafGCHWwa0BoTeQ4ZRHa597pGryZmoPjdSDzVoFcr5NP', '2018-05-08 07:59:39', '2018-05-08 07:59:39'),
(26, 'Buyer Lima', 'buyerlima', 'buyer5@gmail.com', '$2y$10$5k3axQQ9C9tGEkdu40u.SepJuNMBuQrJWCijhNK0dA/OnmHBPQuxG', 'BUYER', '0', 'BwwiEyh2LXFt2WF0lVlWnEKIDf3ijy8X6hHWbPzx7rLt8TZHbSes79cNmJCp', '2018-05-08 16:51:21', '2018-05-08 16:51:21'),
(27, 'Seller Lima', 'seller5', 'seller5@gmail.com', '$2y$10$It03hlDKVv44Bnheg9VEsORqzXGKhSqSNzaThoIAndtU8qEHvrRVi', 'SELLER', '0', 'kx8cjMCIrQJwBfjfRneD2BwFNkFLgGx2MnDmAViZASa2yDJdcBR28KRp5NPQ', '2018-05-08 17:22:36', '2018-05-08 17:22:36'),
(28, 'Buyer Enam', 'buyer6', 'buyer6@gmail.com', '$2y$10$KD9j6ssdGyvjy0ro7Bbwi.1JvBEcp5.88BBH3Vq4ZgOP/KyqUAHQa', 'BUYER', '0', 'KcBm8CyG33SmtgDe41tUbH5byBZjEUedIZfQuRc7LZd3V6UJGgZaAOciCjQm', '2018-05-08 17:25:25', '2018-05-08 17:25:25'),
(30, 'Selelr Enam', 'seller6', 'seller6@gmail.com', '$2y$10$q46CeYx7d023IYCP0NDPtu7w0rJU8xMc/Ao90o.cCaqy1igaCteKO', 'SELLER', '0', NULL, '2018-05-09 18:28:24', '2018-05-09 18:28:24'),
(31, 'Seller Tujuh', 'seller7', 'seller7@gmail.com', '$2y$10$dxcVykgxz6W0RFl1Vf49Fumv9eIs4wC4CuiSFrGM8qTEN12quFuuC', 'SELLER', '0', NULL, '2018-05-09 18:33:26', '2018-05-09 18:33:26');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `drop_detail_seller_or_buyer_after_user_deleted` BEFORE DELETE ON `users` FOR EACH ROW IF (OLD.level = "BUYER") THEN
    DELETE FROM buyer_detail WHERE buyer_detail.user_id = OLD.id;
ELSE
    DELETE FROM seller_detail WHERE seller_detail.user_id = OLD.id;
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_confirmation`
--

CREATE TABLE `user_confirmation` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyer_detail`
--
ALTER TABLE `buyer_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_sub`
--
ALTER TABLE `category_sub`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_root_id` (`category_root_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries2`
--
ALTER TABLE `countries2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buyer_id` (`buyer_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `inbox_messages`
--
ALTER TABLE `inbox_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `market_settings`
--
ALTER TABLE `market_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`buyer_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`post_category_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_sub_id`),
  ADD KEY `user_id` (`seller_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `category_id` (`category_sub_id`);

--
-- Indexes for table `product_photos`
--
ALTER TABLE `product_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_photos_product_id_index` (`product_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_prov`);

--
-- Indexes for table `seller_detail`
--
ALTER TABLE `seller_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `seller_documents`
--
ALTER TABLE `seller_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seller_documents_seller_id_index` (`seller_id`);

--
-- Indexes for table `sesi`
--
ALTER TABLE `sesi`
  ADD PRIMARY KEY (`id_sesi`) USING BTREE,
  ADD KEY `fk_sesi_user1_idx` (`id_pegawai`) USING BTREE;

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_sesi`
--
ALTER TABLE `tb_sesi`
  ADD PRIMARY KEY (`id_sesi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_confirmation`
--
ALTER TABLE `user_confirmation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `buyer_detail`
--
ALTER TABLE `buyer_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category_sub`
--
ALTER TABLE `category_sub`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9272;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=492;

--
-- AUTO_INCREMENT for table `countries2`
--
ALTER TABLE `countries2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inbox_messages`
--
ALTER TABLE `inbox_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9272;

--
-- AUTO_INCREMENT for table `market_settings`
--
ALTER TABLE `market_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_photos`
--
ALTER TABLE `product_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id_prov` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `seller_detail`
--
ALTER TABLE `seller_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `seller_documents`
--
ALTER TABLE `seller_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sesi`
--
ALTER TABLE `sesi`
  MODIFY `id_sesi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_sesi`
--
ALTER TABLE `tb_sesi`
  MODIFY `id_sesi` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_confirmation`
--
ALTER TABLE `user_confirmation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buyer_detail`
--
ALTER TABLE `buyer_detail`
  ADD CONSTRAINT `buyer_detail_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `category_sub`
--
ALTER TABLE `category_sub`
  ADD CONSTRAINT `category_and_sub_category` FOREIGN KEY (`category_root_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inbox`
--
ALTER TABLE `inbox`
  ADD CONSTRAINT `inbox_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inbox_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inbox_messages`
--
ALTER TABLE `inbox_messages`
  ADD CONSTRAINT `inbox_messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `product_and_sub_cat` FOREIGN KEY (`category_sub_id`) REFERENCES `category_sub` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD CONSTRAINT `product_orders_ibfk_2` FOREIGN KEY (`category_sub_id`) REFERENCES `category_sub` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_orders_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `seller_detail`
--
ALTER TABLE `seller_detail`
  ADD CONSTRAINT `seller_detail_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD CONSTRAINT `shopping_cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `shopping_cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `user_confirmation`
--
ALTER TABLE `user_confirmation`
  ADD CONSTRAINT `user_confirmation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
