-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2020 at 10:13 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larashop`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `weight` double(8,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stock` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `status` enum('PUBLISH','DRAFT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PUBLISH',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `slug`, `description`, `author`, `publisher`, `cover`, `price`, `weight`, `views`, `stock`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Nostrum veniam ut voluptates', 'nostrum-veniam-ut-voluptates', 'Aut cum excepturi odio quis placeat. Aliquid voluptatem et reprehenderit omnis velit. Sint omnis est velit debitis et impedit minima. Consectetur consequuntur velit molestiae quasi laboriosam.', 'Jadyn Donnelly PhD', 'Marks, Gutmann and Tromp', '\\bc5f27861f5ca60f0af30e4158166284.jpg', 100000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:53:44', NULL, NULL, NULL, NULL, NULL),
(2, 'Voluptas eum nihil non nesciunt enim cum officiis odit', 'voluptas-eum-nihil-non-nesciunt-enim-cum-officiis-odit', 'Ut repellat vel provident dolor eum beatae. Molestiae et cumque laudantium molestiae in quibusdam. Ullam culpa esse neque sit. Possimus quidem officia reprehenderit libero non accusantium consequatur pariatur. Ab qui quas architecto.', 'Ellsworth Murphy', 'Hansen and Sons', '\\4427acf5d5cd242b80d90cec179f2915.jpg', 400000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:53:45', NULL, NULL, NULL, NULL, NULL),
(3, 'Non possimus ipsam ab nostrum quia officiis omnis', 'non-possimus-ipsam-ab-nostrum-quia-officiis-omnis', 'Aut sit nesciunt nihil ut expedita quos est. Quod eius occaecati eveniet excepturi vitae molestias consequuntur voluptas. Sit minima eveniet ea voluptatem ut. Vero eos accusamus neque voluptas repellat consequuntur sed.', 'Dr. Bennie Hickle Sr.', 'Pacocha, Doyle and Goyette', '\\5c7d07103e2dc195f5a3341e3f3749bf.jpg', 100000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:53:47', NULL, NULL, NULL, NULL, NULL),
(4, 'Ut libero at', 'ut-libero-at', 'Qui sed vel praesentium esse facere occaecati libero. Occaecati repellat iure molestiae in. Assumenda voluptatem maiores quo nostrum expedita fuga. Minus odio et qui laboriosam.', 'Carter Heathcote', 'Barrows-Wiegand', '\\26ff2656dbb479b27c221629f1a0c388.jpg', 250000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:53:48', NULL, NULL, NULL, NULL, NULL),
(5, 'Qui aliquam dolorum incidunt qui alias dolorem ut', 'qui-aliquam-dolorum-incidunt-qui-alias-dolorem-ut', 'Reprehenderit necessitatibus nostrum aut est. Nulla aperiam occaecati quia corporis nesciunt corrupti fugiat. Quisquam odit nulla alias nam quibusdam voluptas. Ducimus velit culpa officiis ipsum.', 'Mr. Rodolfo Huel', 'Witting Group', '\\4e3dc436e0d88f8666fdf31e158afc47.jpg', 100000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:53:49', NULL, NULL, NULL, NULL, NULL),
(6, 'Inventore repellendus vel necessitatibus et provident cumque at', 'inventore-repellendus-vel-necessitatibus-et-provident-cumque-at', 'Dolorem voluptas sed officia voluptatibus ut laudantium. Aspernatur ullam alias tempora soluta officiis. Labore possimus deserunt temporibus exercitationem rem qui sed. Quos sint incidunt est voluptates minus.', 'Lon Gerlach', 'Cummerata-Mraz', '\\a78d5d44f60941cd7eab721396c7587c.jpg', 450000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:53:50', NULL, NULL, NULL, NULL, NULL),
(7, 'Eos officiis quo ex voluptatem et', 'eos-officiis-quo-ex-voluptatem-et', 'Tempore quasi consequatur deserunt est mollitia modi. Pariatur itaque rerum laboriosam tenetur harum. Delectus exercitationem sint totam delectus deserunt vel.', 'Joannie Keeling', 'Dach Inc', '\\bb614c39b78a8aaa169e582ea1cfde42.jpg', 200000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:53:51', NULL, NULL, NULL, NULL, NULL),
(8, 'Laborum culpa exercitationem et perspiciatis reprehenderit nemo', 'laborum-culpa-exercitationem-et-perspiciatis-reprehenderit-nemo', 'Reprehenderit accusamus qui dicta commodi. Fugiat quia aut eius optio odio vel. Vel vel aspernatur necessitatibus est. Iure officiis magni voluptates ut tempora illo deserunt. Eligendi ipsam ut consectetur non. Quia eaque voluptatum occaecati voluptas.', 'Kenny Swift', 'Klein PLC', '\\e0056f0000f2f01ac1440ffadaf3fcea.jpg', 350000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:53:53', NULL, NULL, NULL, NULL, NULL),
(9, 'Laborum est sunt', 'laborum-est-sunt', 'Assumenda deserunt explicabo cupiditate quas provident et quaerat id. Ea eum nulla perspiciatis molestiae qui dicta tempore. Sapiente quibusdam velit tenetur est autem qui quasi error. Sint et rem quos autem sit.', 'Lambert Emmerich', 'King, Kshlerin and Bednar', '\\b27833a2ff03eca0a80971da3b810e02.jpg', 50000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:53:54', NULL, NULL, NULL, NULL, NULL),
(10, 'Culpa rerum vero provident nihil', 'culpa-rerum-vero-provident-nihil', 'Est dolores veritatis assumenda rerum qui. Voluptatem harum ea ut qui voluptatem enim. Natus deleniti optio et autem voluptatem quia distinctio.', 'Dominic Luettgen', 'Murazik Ltd', '\\e1f86bb4d1df0d456b64ba5db9f49cb5.jpg', 50000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:53:55', NULL, NULL, NULL, NULL, NULL),
(11, 'Quos consectetur ea ut vel voluptatem', 'quos-consectetur-ea-ut-vel-voluptatem', 'Labore voluptas expedita nihil qui aspernatur ipsum. Ipsum voluptas et et cumque nesciunt. Nemo odit a distinctio ut quia. Inventore architecto quod velit accusamus ut est nobis. Vel quos itaque aliquam ea.', 'Mr. Oliver Wilderman DVM', 'Witting LLC', '\\cffd4b20edb7db0189399ebe5169a6a1.jpg', 150000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:53:56', NULL, NULL, NULL, NULL, NULL),
(12, 'Voluptatem voluptas qui ullam', 'voluptatem-voluptas-qui-ullam', 'Impedit adipisci odit et consequuntur. Magni possimus et similique voluptatem eum impedit. Rerum omnis consequatur totam qui ut.', 'Mr. Tom Cole DDS', 'Miller, Walker and Feest', '\\e924465222e159b298f52fecf02437f6.jpg', 450000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:53:58', NULL, NULL, NULL, NULL, NULL),
(13, 'Officia dolorum molestias', 'officia-dolorum-molestias', 'Quam amet accusamus molestiae ea omnis numquam voluptatem. Sequi suscipit non cum dolor provident iure. Itaque nisi blanditiis non odit ullam et.', 'Dr. Agnes Weissnat', 'Jast LLC', '\\6aaae1c65e93d9a7a5366b4d34ab54b6.jpg', 100000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:53:59', NULL, NULL, NULL, NULL, NULL),
(14, 'Vel quisquam officiis cupiditate', 'vel-quisquam-officiis-cupiditate', 'Nam omnis est modi praesentium sit. Esse dolores maxime ut expedita. Dignissimos rerum ipsum qui.', 'Roxane Bechtelar', 'Schamberger PLC', '\\dd3df35e9f50e046aa702261915ada86.jpg', 200000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:54:00', NULL, NULL, NULL, NULL, NULL),
(15, 'Tempore beatae quia repellendus quam omnis repudiandae', 'tempore-beatae-quia-repellendus-quam-omnis-repudiandae', 'Eveniet amet magni atque in fugiat itaque. Molestias et velit nihil est quaerat. Quod cum itaque assumenda quia incidunt. Fugit earum veritatis magnam voluptas.', 'Ms. Marisol Cummerata DVM', 'Olson PLC', '\\b840384a267f7ffc5af643fd75f9ac72.jpg', 150000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:54:01', NULL, NULL, NULL, NULL, NULL),
(16, 'Tempora aperiam exercitationem distinctio', 'tempora-aperiam-exercitationem-distinctio', 'Magnam quia consequatur sequi velit nam recusandae. Neque ea id voluptatem culpa quidem deleniti quo. Ipsa quo occaecati ut reprehenderit ut maiores alias rerum.', 'Ryann Hauck', 'Olson Ltd', '\\7ff746181ae2706401100f56745efc8e.jpg', 500000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:54:02', NULL, NULL, NULL, NULL, NULL),
(17, 'Et iste voluptas voluptatem', 'et-iste-voluptas-voluptatem', 'Recusandae rem est aperiam voluptatem molestiae. Dolorem et distinctio exercitationem et et enim. Impedit nulla totam tenetur vel iusto.', 'Orrin Wolf', 'Roberts and Sons', '\\9db695c1f57128f9479974cb7a4c8d72.jpg', 250000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:54:04', NULL, NULL, NULL, NULL, NULL),
(18, 'Harum voluptatum iusto', 'harum-voluptatum-iusto', 'Sed ut possimus aspernatur fugiat aperiam. Et ipsum porro provident dicta esse sunt ut. Illo fugiat numquam tenetur odio nihil.', 'Nia Cormier', 'Hermann-Orn', '\\146ca2757cb01bea833a5f8e843a473b.jpg', 100000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:54:05', NULL, NULL, NULL, NULL, NULL),
(19, 'Quisquam qui distinctio cum', 'quisquam-qui-distinctio-cum', 'Debitis aut dicta placeat eos non voluptatem unde. Quia est et tempore qui. Aliquid mollitia provident praesentium. Ea deleniti sequi ut enim reiciendis non.', 'Dr. Vicky Hoeger Sr.', 'Pfannerstill, Dietrich and Brakus', '\\1431ecc14c5075b0e9602e096a0d82a0.jpg', 50000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:54:06', NULL, NULL, NULL, NULL, NULL),
(20, 'Optio eaque quis atque', 'optio-eaque-quis-atque', 'Reiciendis laudantium et dolor iure. Vel est eaque recusandae placeat similique. Ad non voluptates exercitationem officiis dolor expedita. Molestiae qui voluptates sit reiciendis nobis corporis incidunt.', 'Orville Anderson', 'Parker and Sons', '\\c99c29eb7226cda35a223247aacd28fa.jpg', 500000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:54:07', NULL, NULL, NULL, NULL, NULL),
(21, 'Quae magnam', 'quae-magnam', 'Ut blanditiis minima impedit ut. Officiis nihil cupiditate deserunt dolor quod. Nesciunt dolorem eaque dolores.', 'Cristobal Price', 'Lakin, Predovic and Fadel', '\\de75df0f72954a07ae2bce802a6be414.jpg', 50000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:54:08', NULL, NULL, NULL, NULL, NULL),
(22, 'Nulla sed cum dolor veritatis sed', 'nulla-sed-cum-dolor-veritatis-sed', 'Voluptas ut aut et consequatur sit occaecati quo. Ea numquam consequatur esse voluptatum aut. Illo soluta consequatur alias et aspernatur.', 'Sterling Daugherty', 'Weimann, Becker and Hermiston', '\\dc4c41c3514156ae86c3674e11923ee6.jpg', 150000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:54:10', NULL, NULL, NULL, NULL, NULL),
(23, 'Expedita voluptatem ea sit tempora', 'expedita-voluptatem-ea-sit-tempora', 'Expedita ut quaerat inventore repellat sunt dolor. Aliquam et cum vel quas veniam. Vitae et ex esse id iure labore.', 'Antwon Lesch', 'Klein-Marquardt', '\\de7aa599122209f9b337a5a6860f1dfc.jpg', 350000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:54:11', NULL, NULL, NULL, NULL, NULL),
(24, 'Ad nisi rerum officia qui est harum', 'ad-nisi-rerum-officia-qui-est-harum', 'Debitis deleniti sit rerum. Repudiandae et dolores dolores omnis nisi eum ut. Odit impedit dicta qui nulla laborum. Et sit enim nihil blanditiis.', 'Gracie Predovic', 'Russel-West', '\\d49bdcd9b9ec7958b4c4d1dc9d1d89d2.jpg', 300000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:54:13', NULL, NULL, NULL, NULL, NULL),
(25, 'Non ut assumenda et hic dolores', 'non-ut-assumenda-et-hic-dolores', 'Repudiandae velit delectus explicabo dignissimos eveniet. Cum esse adipisci labore et laboriosam beatae omnis.', 'Fanny Durgan', 'Hettinger, Heathcote and Larson', '\\76b29974fcea510abcd55d84b3b2d48e.jpg', 400000.00, 0.50, 0, 1, 'PUBLISH', '2020-07-11 01:54:14', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_order`
--

CREATE TABLE `book_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISH','DRAFT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PUBLISH',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'eos', 'eos', '\\cecb9783b2ef10ebd7ab6aa0cf144766.jpg', 'PUBLISH', '2020-07-11 01:54:16', NULL, NULL, NULL, NULL, NULL),
(2, 'voluptas', 'voluptas', '\\380b45246c3dcc7bf63cae68ec1ad50a.jpg', 'PUBLISH', '2020-07-11 01:54:17', NULL, NULL, NULL, NULL, NULL),
(3, 'ipsam', 'ipsam', '\\a020a815d8703ca24bb0af532edfbd1d.jpg', 'PUBLISH', '2020-07-11 01:54:18', NULL, NULL, NULL, NULL, NULL),
(4, 'vel', 'vel', '\\33c51ea0be3aa5d6f26611e098642263.jpg', 'PUBLISH', '2020-07-11 01:54:19', NULL, NULL, NULL, NULL, NULL),
(5, 'praesentium', 'praesentium', '\\3d324749821ca9c6c5705583a9d51763.jpg', 'PUBLISH', '2020-07-11 01:54:21', NULL, NULL, NULL, NULL, NULL),
(6, 'accusamus', 'accusamus', '\\80877a8f4daf86be6f76abc57b5b85c3.jpg', 'PUBLISH', '2020-07-11 01:54:22', NULL, NULL, NULL, NULL, NULL),
(7, 'qui', 'qui', '\\c6d9cd4c34f0d3a582a182cef1121ffd.jpg', 'PUBLISH', '2020-07-11 01:54:23', NULL, NULL, NULL, NULL, NULL),
(8, 'modi', 'modi', '\\f64209cc5365981be7b2644a5ed868c6.jpg', 'PUBLISH', '2020-07-11 01:54:24', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `province_id` int(11) NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `province_id`, `city_name`, `type`, `postal_code`) VALUES
(1, 21, 'Aceh Barat', 'Kabupaten', '23681'),
(2, 21, 'Aceh Barat Daya', 'Kabupaten', '23764'),
(3, 21, 'Aceh Besar', 'Kabupaten', '23951'),
(4, 21, 'Aceh Jaya', 'Kabupaten', '23654'),
(5, 21, 'Aceh Selatan', 'Kabupaten', '23719'),
(6, 21, 'Aceh Singkil', 'Kabupaten', '24785'),
(7, 21, 'Aceh Tamiang', 'Kabupaten', '24476'),
(8, 21, 'Aceh Tengah', 'Kabupaten', '24511'),
(9, 21, 'Aceh Tenggara', 'Kabupaten', '24611'),
(10, 21, 'Aceh Timur', 'Kabupaten', '24454'),
(11, 21, 'Aceh Utara', 'Kabupaten', '24382'),
(12, 32, 'Agam', 'Kabupaten', '26411'),
(13, 23, 'Alor', 'Kabupaten', '85811'),
(14, 19, 'Ambon', 'Kota', '97222'),
(15, 34, 'Asahan', 'Kabupaten', '21214'),
(16, 24, 'Asmat', 'Kabupaten', '99777'),
(17, 1, 'Badung', 'Kabupaten', '80351'),
(18, 13, 'Balangan', 'Kabupaten', '71611'),
(19, 15, 'Balikpapan', 'Kota', '76111'),
(20, 21, 'Banda Aceh', 'Kota', '23238'),
(21, 18, 'Bandar Lampung', 'Kota', '35139'),
(22, 9, 'Bandung', 'Kabupaten', '40311'),
(23, 9, 'Bandung', 'Kota', '40111'),
(24, 9, 'Bandung Barat', 'Kabupaten', '40721'),
(25, 29, 'Banggai', 'Kabupaten', '94711'),
(26, 29, 'Banggai Kepulauan', 'Kabupaten', '94881'),
(27, 2, 'Bangka', 'Kabupaten', '33212'),
(28, 2, 'Bangka Barat', 'Kabupaten', '33315'),
(29, 2, 'Bangka Selatan', 'Kabupaten', '33719'),
(30, 2, 'Bangka Tengah', 'Kabupaten', '33613'),
(31, 11, 'Bangkalan', 'Kabupaten', '69118'),
(32, 1, 'Bangli', 'Kabupaten', '80619'),
(33, 13, 'Banjar', 'Kabupaten', '70619'),
(34, 9, 'Banjar', 'Kota', '46311'),
(35, 13, 'Banjarbaru', 'Kota', '70712'),
(36, 13, 'Banjarmasin', 'Kota', '70117'),
(37, 10, 'Banjarnegara', 'Kabupaten', '53419'),
(38, 28, 'Bantaeng', 'Kabupaten', '92411'),
(39, 5, 'Bantul', 'Kabupaten', '55715'),
(40, 33, 'Banyuasin', 'Kabupaten', '30911'),
(41, 10, 'Banyumas', 'Kabupaten', '53114'),
(42, 11, 'Banyuwangi', 'Kabupaten', '68416'),
(43, 13, 'Barito Kuala', 'Kabupaten', '70511'),
(44, 14, 'Barito Selatan', 'Kabupaten', '73711'),
(45, 14, 'Barito Timur', 'Kabupaten', '73671'),
(46, 14, 'Barito Utara', 'Kabupaten', '73881'),
(47, 28, 'Barru', 'Kabupaten', '90719'),
(48, 17, 'Batam', 'Kota', '29413'),
(49, 10, 'Batang', 'Kabupaten', '51211'),
(50, 8, 'Batang Hari', 'Kabupaten', '36613'),
(51, 11, 'Batu', 'Kota', '65311'),
(52, 34, 'Batu Bara', 'Kabupaten', '21655'),
(53, 30, 'Bau-Bau', 'Kota', '93719'),
(54, 9, 'Bekasi', 'Kabupaten', '17837'),
(55, 9, 'Bekasi', 'Kota', '17121'),
(56, 2, 'Belitung', 'Kabupaten', '33419'),
(57, 2, 'Belitung Timur', 'Kabupaten', '33519'),
(58, 23, 'Belu', 'Kabupaten', '85711'),
(59, 21, 'Bener Meriah', 'Kabupaten', '24581'),
(60, 26, 'Bengkalis', 'Kabupaten', '28719'),
(61, 12, 'Bengkayang', 'Kabupaten', '79213'),
(62, 4, 'Bengkulu', 'Kota', '38229'),
(63, 4, 'Bengkulu Selatan', 'Kabupaten', '38519'),
(64, 4, 'Bengkulu Tengah', 'Kabupaten', '38319'),
(65, 4, 'Bengkulu Utara', 'Kabupaten', '38619'),
(66, 15, 'Berau', 'Kabupaten', '77311'),
(67, 24, 'Biak Numfor', 'Kabupaten', '98119'),
(68, 22, 'Bima', 'Kabupaten', '84171'),
(69, 22, 'Bima', 'Kota', '84139'),
(70, 34, 'Binjai', 'Kota', '20712'),
(71, 17, 'Bintan', 'Kabupaten', '29135'),
(72, 21, 'Bireuen', 'Kabupaten', '24219'),
(73, 31, 'Bitung', 'Kota', '95512'),
(74, 11, 'Blitar', 'Kabupaten', '66171'),
(75, 11, 'Blitar', 'Kota', '66124'),
(76, 10, 'Blora', 'Kabupaten', '58219'),
(77, 7, 'Boalemo', 'Kabupaten', '96319'),
(78, 9, 'Bogor', 'Kabupaten', '16911'),
(79, 9, 'Bogor', 'Kota', '16119'),
(80, 11, 'Bojonegoro', 'Kabupaten', '62119'),
(81, 31, 'Bolaang Mongondow (Bolmong)', 'Kabupaten', '95755'),
(82, 31, 'Bolaang Mongondow Selatan', 'Kabupaten', '95774'),
(83, 31, 'Bolaang Mongondow Timur', 'Kabupaten', '95783'),
(84, 31, 'Bolaang Mongondow Utara', 'Kabupaten', '95765'),
(85, 30, 'Bombana', 'Kabupaten', '93771'),
(86, 11, 'Bondowoso', 'Kabupaten', '68219'),
(87, 28, 'Bone', 'Kabupaten', '92713'),
(88, 7, 'Bone Bolango', 'Kabupaten', '96511'),
(89, 15, 'Bontang', 'Kota', '75313'),
(90, 24, 'Boven Digoel', 'Kabupaten', '99662'),
(91, 10, 'Boyolali', 'Kabupaten', '57312'),
(92, 10, 'Brebes', 'Kabupaten', '52212'),
(93, 32, 'Bukittinggi', 'Kota', '26115'),
(94, 1, 'Buleleng', 'Kabupaten', '81111'),
(95, 28, 'Bulukumba', 'Kabupaten', '92511'),
(96, 16, 'Bulungan (Bulongan)', 'Kabupaten', '77211'),
(97, 8, 'Bungo', 'Kabupaten', '37216'),
(98, 29, 'Buol', 'Kabupaten', '94564'),
(99, 19, 'Buru', 'Kabupaten', '97371'),
(100, 19, 'Buru Selatan', 'Kabupaten', '97351'),
(101, 30, 'Buton', 'Kabupaten', '93754'),
(102, 30, 'Buton Utara', 'Kabupaten', '93745'),
(103, 9, 'Ciamis', 'Kabupaten', '46211'),
(104, 9, 'Cianjur', 'Kabupaten', '43217'),
(105, 10, 'Cilacap', 'Kabupaten', '53211'),
(106, 3, 'Cilegon', 'Kota', '42417'),
(107, 9, 'Cimahi', 'Kota', '40512'),
(108, 9, 'Cirebon', 'Kabupaten', '45611'),
(109, 9, 'Cirebon', 'Kota', '45116'),
(110, 34, 'Dairi', 'Kabupaten', '22211'),
(111, 24, 'Deiyai (Deliyai)', 'Kabupaten', '98784'),
(112, 34, 'Deli Serdang', 'Kabupaten', '20511'),
(113, 10, 'Demak', 'Kabupaten', '59519'),
(114, 1, 'Denpasar', 'Kota', '80227'),
(115, 9, 'Depok', 'Kota', '16416'),
(116, 32, 'Dharmasraya', 'Kabupaten', '27612'),
(117, 24, 'Dogiyai', 'Kabupaten', '98866'),
(118, 22, 'Dompu', 'Kabupaten', '84217'),
(119, 29, 'Donggala', 'Kabupaten', '94341'),
(120, 26, 'Dumai', 'Kota', '28811'),
(121, 33, 'Empat Lawang', 'Kabupaten', '31811'),
(122, 23, 'Ende', 'Kabupaten', '86351'),
(123, 28, 'Enrekang', 'Kabupaten', '91719'),
(124, 25, 'Fakfak', 'Kabupaten', '98651'),
(125, 23, 'Flores Timur', 'Kabupaten', '86213'),
(126, 9, 'Garut', 'Kabupaten', '44126'),
(127, 21, 'Gayo Lues', 'Kabupaten', '24653'),
(128, 1, 'Gianyar', 'Kabupaten', '80519'),
(129, 7, 'Gorontalo', 'Kabupaten', '96218'),
(130, 7, 'Gorontalo', 'Kota', '96115'),
(131, 7, 'Gorontalo Utara', 'Kabupaten', '96611'),
(132, 28, 'Gowa', 'Kabupaten', '92111'),
(133, 11, 'Gresik', 'Kabupaten', '61115'),
(134, 10, 'Grobogan', 'Kabupaten', '58111'),
(135, 5, 'Gunung Kidul', 'Kabupaten', '55812'),
(136, 14, 'Gunung Mas', 'Kabupaten', '74511'),
(137, 34, 'Gunungsitoli', 'Kota', '22813'),
(138, 20, 'Halmahera Barat', 'Kabupaten', '97757'),
(139, 20, 'Halmahera Selatan', 'Kabupaten', '97911'),
(140, 20, 'Halmahera Tengah', 'Kabupaten', '97853'),
(141, 20, 'Halmahera Timur', 'Kabupaten', '97862'),
(142, 20, 'Halmahera Utara', 'Kabupaten', '97762'),
(143, 13, 'Hulu Sungai Selatan', 'Kabupaten', '71212'),
(144, 13, 'Hulu Sungai Tengah', 'Kabupaten', '71313'),
(145, 13, 'Hulu Sungai Utara', 'Kabupaten', '71419'),
(146, 34, 'Humbang Hasundutan', 'Kabupaten', '22457'),
(147, 26, 'Indragiri Hilir', 'Kabupaten', '29212'),
(148, 26, 'Indragiri Hulu', 'Kabupaten', '29319'),
(149, 9, 'Indramayu', 'Kabupaten', '45214'),
(150, 24, 'Intan Jaya', 'Kabupaten', '98771'),
(151, 6, 'Jakarta Barat', 'Kota', '11220'),
(152, 6, 'Jakarta Pusat', 'Kota', '10540'),
(153, 6, 'Jakarta Selatan', 'Kota', '12230'),
(154, 6, 'Jakarta Timur', 'Kota', '13330'),
(155, 6, 'Jakarta Utara', 'Kota', '14140'),
(156, 8, 'Jambi', 'Kota', '36111'),
(157, 24, 'Jayapura', 'Kabupaten', '99352'),
(158, 24, 'Jayapura', 'Kota', '99114'),
(159, 24, 'Jayawijaya', 'Kabupaten', '99511'),
(160, 11, 'Jember', 'Kabupaten', '68113'),
(161, 1, 'Jembrana', 'Kabupaten', '82251'),
(162, 28, 'Jeneponto', 'Kabupaten', '92319'),
(163, 10, 'Jepara', 'Kabupaten', '59419'),
(164, 11, 'Jombang', 'Kabupaten', '61415'),
(165, 25, 'Kaimana', 'Kabupaten', '98671'),
(166, 26, 'Kampar', 'Kabupaten', '28411'),
(167, 14, 'Kapuas', 'Kabupaten', '73583'),
(168, 12, 'Kapuas Hulu', 'Kabupaten', '78719'),
(169, 10, 'Karanganyar', 'Kabupaten', '57718'),
(170, 1, 'Karangasem', 'Kabupaten', '80819'),
(171, 9, 'Karawang', 'Kabupaten', '41311'),
(172, 17, 'Karimun', 'Kabupaten', '29611'),
(173, 34, 'Karo', 'Kabupaten', '22119'),
(174, 14, 'Katingan', 'Kabupaten', '74411'),
(175, 4, 'Kaur', 'Kabupaten', '38911'),
(176, 12, 'Kayong Utara', 'Kabupaten', '78852'),
(177, 10, 'Kebumen', 'Kabupaten', '54319'),
(178, 11, 'Kediri', 'Kabupaten', '64184'),
(179, 11, 'Kediri', 'Kota', '64125'),
(180, 24, 'Keerom', 'Kabupaten', '99461'),
(181, 10, 'Kendal', 'Kabupaten', '51314'),
(182, 30, 'Kendari', 'Kota', '93126'),
(183, 4, 'Kepahiang', 'Kabupaten', '39319'),
(184, 17, 'Kepulauan Anambas', 'Kabupaten', '29991'),
(185, 19, 'Kepulauan Aru', 'Kabupaten', '97681'),
(186, 32, 'Kepulauan Mentawai', 'Kabupaten', '25771'),
(187, 26, 'Kepulauan Meranti', 'Kabupaten', '28791'),
(188, 31, 'Kepulauan Sangihe', 'Kabupaten', '95819'),
(189, 6, 'Kepulauan Seribu', 'Kabupaten', '14550'),
(190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)', 'Kabupaten', '95862'),
(191, 20, 'Kepulauan Sula', 'Kabupaten', '97995'),
(192, 31, 'Kepulauan Talaud', 'Kabupaten', '95885'),
(193, 24, 'Kepulauan Yapen (Yapen Waropen)', 'Kabupaten', '98211'),
(194, 8, 'Kerinci', 'Kabupaten', '37167'),
(195, 12, 'Ketapang', 'Kabupaten', '78874'),
(196, 10, 'Klaten', 'Kabupaten', '57411'),
(197, 1, 'Klungkung', 'Kabupaten', '80719'),
(198, 30, 'Kolaka', 'Kabupaten', '93511'),
(199, 30, 'Kolaka Utara', 'Kabupaten', '93911'),
(200, 30, 'Konawe', 'Kabupaten', '93411'),
(201, 30, 'Konawe Selatan', 'Kabupaten', '93811'),
(202, 30, 'Konawe Utara', 'Kabupaten', '93311'),
(203, 13, 'Kotabaru', 'Kabupaten', '72119'),
(204, 31, 'Kotamobagu', 'Kota', '95711'),
(205, 14, 'Kotawaringin Barat', 'Kabupaten', '74119'),
(206, 14, 'Kotawaringin Timur', 'Kabupaten', '74364'),
(207, 26, 'Kuantan Singingi', 'Kabupaten', '29519'),
(208, 12, 'Kubu Raya', 'Kabupaten', '78311'),
(209, 10, 'Kudus', 'Kabupaten', '59311'),
(210, 5, 'Kulon Progo', 'Kabupaten', '55611'),
(211, 9, 'Kuningan', 'Kabupaten', '45511'),
(212, 23, 'Kupang', 'Kabupaten', '85362'),
(213, 23, 'Kupang', 'Kota', '85119'),
(214, 15, 'Kutai Barat', 'Kabupaten', '75711'),
(215, 15, 'Kutai Kartanegara', 'Kabupaten', '75511'),
(216, 15, 'Kutai Timur', 'Kabupaten', '75611'),
(217, 34, 'Labuhan Batu', 'Kabupaten', '21412'),
(218, 34, 'Labuhan Batu Selatan', 'Kabupaten', '21511'),
(219, 34, 'Labuhan Batu Utara', 'Kabupaten', '21711'),
(220, 33, 'Lahat', 'Kabupaten', '31419'),
(221, 14, 'Lamandau', 'Kabupaten', '74611'),
(222, 11, 'Lamongan', 'Kabupaten', '64125'),
(223, 18, 'Lampung Barat', 'Kabupaten', '34814'),
(224, 18, 'Lampung Selatan', 'Kabupaten', '35511'),
(225, 18, 'Lampung Tengah', 'Kabupaten', '34212'),
(226, 18, 'Lampung Timur', 'Kabupaten', '34319'),
(227, 18, 'Lampung Utara', 'Kabupaten', '34516'),
(228, 12, 'Landak', 'Kabupaten', '78319'),
(229, 34, 'Langkat', 'Kabupaten', '20811'),
(230, 21, 'Langsa', 'Kota', '24412'),
(231, 24, 'Lanny Jaya', 'Kabupaten', '99531'),
(232, 3, 'Lebak', 'Kabupaten', '42319'),
(233, 4, 'Lebong', 'Kabupaten', '39264'),
(234, 23, 'Lembata', 'Kabupaten', '86611'),
(235, 21, 'Lhokseumawe', 'Kota', '24352'),
(236, 32, 'Lima Puluh Koto/Kota', 'Kabupaten', '26671'),
(237, 17, 'Lingga', 'Kabupaten', '29811'),
(238, 22, 'Lombok Barat', 'Kabupaten', '83311'),
(239, 22, 'Lombok Tengah', 'Kabupaten', '83511'),
(240, 22, 'Lombok Timur', 'Kabupaten', '83612'),
(241, 22, 'Lombok Utara', 'Kabupaten', '83711'),
(242, 33, 'Lubuk Linggau', 'Kota', '31614'),
(243, 11, 'Lumajang', 'Kabupaten', '67319'),
(244, 28, 'Luwu', 'Kabupaten', '91994'),
(245, 28, 'Luwu Timur', 'Kabupaten', '92981'),
(246, 28, 'Luwu Utara', 'Kabupaten', '92911'),
(247, 11, 'Madiun', 'Kabupaten', '63153'),
(248, 11, 'Madiun', 'Kota', '63122'),
(249, 10, 'Magelang', 'Kabupaten', '56519'),
(250, 10, 'Magelang', 'Kota', '56133'),
(251, 11, 'Magetan', 'Kabupaten', '63314'),
(252, 9, 'Majalengka', 'Kabupaten', '45412'),
(253, 27, 'Majene', 'Kabupaten', '91411'),
(254, 28, 'Makassar', 'Kota', '90111'),
(255, 11, 'Malang', 'Kabupaten', '65163'),
(256, 11, 'Malang', 'Kota', '65112'),
(257, 16, 'Malinau', 'Kabupaten', '77511'),
(258, 19, 'Maluku Barat Daya', 'Kabupaten', '97451'),
(259, 19, 'Maluku Tengah', 'Kabupaten', '97513'),
(260, 19, 'Maluku Tenggara', 'Kabupaten', '97651'),
(261, 19, 'Maluku Tenggara Barat', 'Kabupaten', '97465'),
(262, 27, 'Mamasa', 'Kabupaten', '91362'),
(263, 24, 'Mamberamo Raya', 'Kabupaten', '99381'),
(264, 24, 'Mamberamo Tengah', 'Kabupaten', '99553'),
(265, 27, 'Mamuju', 'Kabupaten', '91519'),
(266, 27, 'Mamuju Utara', 'Kabupaten', '91571'),
(267, 31, 'Manado', 'Kota', '95247'),
(268, 34, 'Mandailing Natal', 'Kabupaten', '22916'),
(269, 23, 'Manggarai', 'Kabupaten', '86551'),
(270, 23, 'Manggarai Barat', 'Kabupaten', '86711'),
(271, 23, 'Manggarai Timur', 'Kabupaten', '86811'),
(272, 25, 'Manokwari', 'Kabupaten', '98311'),
(273, 25, 'Manokwari Selatan', 'Kabupaten', '98355'),
(274, 24, 'Mappi', 'Kabupaten', '99853'),
(275, 28, 'Maros', 'Kabupaten', '90511'),
(276, 22, 'Mataram', 'Kota', '83131'),
(277, 25, 'Maybrat', 'Kabupaten', '98051'),
(278, 34, 'Medan', 'Kota', '20228'),
(279, 12, 'Melawi', 'Kabupaten', '78619'),
(280, 8, 'Merangin', 'Kabupaten', '37319'),
(281, 24, 'Merauke', 'Kabupaten', '99613'),
(282, 18, 'Mesuji', 'Kabupaten', '34911'),
(283, 18, 'Metro', 'Kota', '34111'),
(284, 24, 'Mimika', 'Kabupaten', '99962'),
(285, 31, 'Minahasa', 'Kabupaten', '95614'),
(286, 31, 'Minahasa Selatan', 'Kabupaten', '95914'),
(287, 31, 'Minahasa Tenggara', 'Kabupaten', '95995'),
(288, 31, 'Minahasa Utara', 'Kabupaten', '95316'),
(289, 11, 'Mojokerto', 'Kabupaten', '61382'),
(290, 11, 'Mojokerto', 'Kota', '61316'),
(291, 29, 'Morowali', 'Kabupaten', '94911'),
(292, 33, 'Muara Enim', 'Kabupaten', '31315'),
(293, 8, 'Muaro Jambi', 'Kabupaten', '36311'),
(294, 4, 'Muko Muko', 'Kabupaten', '38715'),
(295, 30, 'Muna', 'Kabupaten', '93611'),
(296, 14, 'Murung Raya', 'Kabupaten', '73911'),
(297, 33, 'Musi Banyuasin', 'Kabupaten', '30719'),
(298, 33, 'Musi Rawas', 'Kabupaten', '31661'),
(299, 24, 'Nabire', 'Kabupaten', '98816'),
(300, 21, 'Nagan Raya', 'Kabupaten', '23674'),
(301, 23, 'Nagekeo', 'Kabupaten', '86911'),
(302, 17, 'Natuna', 'Kabupaten', '29711'),
(303, 24, 'Nduga', 'Kabupaten', '99541'),
(304, 23, 'Ngada', 'Kabupaten', '86413'),
(305, 11, 'Nganjuk', 'Kabupaten', '64414'),
(306, 11, 'Ngawi', 'Kabupaten', '63219'),
(307, 34, 'Nias', 'Kabupaten', '22876'),
(308, 34, 'Nias Barat', 'Kabupaten', '22895'),
(309, 34, 'Nias Selatan', 'Kabupaten', '22865'),
(310, 34, 'Nias Utara', 'Kabupaten', '22856'),
(311, 16, 'Nunukan', 'Kabupaten', '77421'),
(312, 33, 'Ogan Ilir', 'Kabupaten', '30811'),
(313, 33, 'Ogan Komering Ilir', 'Kabupaten', '30618'),
(314, 33, 'Ogan Komering Ulu', 'Kabupaten', '32112'),
(315, 33, 'Ogan Komering Ulu Selatan', 'Kabupaten', '32211'),
(316, 33, 'Ogan Komering Ulu Timur', 'Kabupaten', '32312'),
(317, 11, 'Pacitan', 'Kabupaten', '63512'),
(318, 32, 'Padang', 'Kota', '25112'),
(319, 34, 'Padang Lawas', 'Kabupaten', '22763'),
(320, 34, 'Padang Lawas Utara', 'Kabupaten', '22753'),
(321, 32, 'Padang Panjang', 'Kota', '27122'),
(322, 32, 'Padang Pariaman', 'Kabupaten', '25583'),
(323, 34, 'Padang Sidempuan', 'Kota', '22727'),
(324, 33, 'Pagar Alam', 'Kota', '31512'),
(325, 34, 'Pakpak Bharat', 'Kabupaten', '22272'),
(326, 14, 'Palangka Raya', 'Kota', '73112'),
(327, 33, 'Palembang', 'Kota', '30111'),
(328, 28, 'Palopo', 'Kota', '91911'),
(329, 29, 'Palu', 'Kota', '94111'),
(330, 11, 'Pamekasan', 'Kabupaten', '69319'),
(331, 3, 'Pandeglang', 'Kabupaten', '42212'),
(332, 9, 'Pangandaran', 'Kabupaten', '46511'),
(333, 28, 'Pangkajene Kepulauan', 'Kabupaten', '90611'),
(334, 2, 'Pangkal Pinang', 'Kota', '33115'),
(335, 24, 'Paniai', 'Kabupaten', '98765'),
(336, 28, 'Parepare', 'Kota', '91123'),
(337, 32, 'Pariaman', 'Kota', '25511'),
(338, 29, 'Parigi Moutong', 'Kabupaten', '94411'),
(339, 32, 'Pasaman', 'Kabupaten', '26318'),
(340, 32, 'Pasaman Barat', 'Kabupaten', '26511'),
(341, 15, 'Paser', 'Kabupaten', '76211'),
(342, 11, 'Pasuruan', 'Kabupaten', '67153'),
(343, 11, 'Pasuruan', 'Kota', '67118'),
(344, 10, 'Pati', 'Kabupaten', '59114'),
(345, 32, 'Payakumbuh', 'Kota', '26213'),
(346, 25, 'Pegunungan Arfak', 'Kabupaten', '98354'),
(347, 24, 'Pegunungan Bintang', 'Kabupaten', '99573'),
(348, 10, 'Pekalongan', 'Kabupaten', '51161'),
(349, 10, 'Pekalongan', 'Kota', '51122'),
(350, 26, 'Pekanbaru', 'Kota', '28112'),
(351, 26, 'Pelalawan', 'Kabupaten', '28311'),
(352, 10, 'Pemalang', 'Kabupaten', '52319'),
(353, 34, 'Pematang Siantar', 'Kota', '21126'),
(354, 15, 'Penajam Paser Utara', 'Kabupaten', '76311'),
(355, 18, 'Pesawaran', 'Kabupaten', '35312'),
(356, 18, 'Pesisir Barat', 'Kabupaten', '35974'),
(357, 32, 'Pesisir Selatan', 'Kabupaten', '25611'),
(358, 21, 'Pidie', 'Kabupaten', '24116'),
(359, 21, 'Pidie Jaya', 'Kabupaten', '24186'),
(360, 28, 'Pinrang', 'Kabupaten', '91251'),
(361, 7, 'Pohuwato', 'Kabupaten', '96419'),
(362, 27, 'Polewali Mandar', 'Kabupaten', '91311'),
(363, 11, 'Ponorogo', 'Kabupaten', '63411'),
(364, 12, 'Pontianak', 'Kabupaten', '78971'),
(365, 12, 'Pontianak', 'Kota', '78112'),
(366, 29, 'Poso', 'Kabupaten', '94615'),
(367, 33, 'Prabumulih', 'Kota', '31121'),
(368, 18, 'Pringsewu', 'Kabupaten', '35719'),
(369, 11, 'Probolinggo', 'Kabupaten', '67282'),
(370, 11, 'Probolinggo', 'Kota', '67215'),
(371, 14, 'Pulang Pisau', 'Kabupaten', '74811'),
(372, 20, 'Pulau Morotai', 'Kabupaten', '97771'),
(373, 24, 'Puncak', 'Kabupaten', '98981'),
(374, 24, 'Puncak Jaya', 'Kabupaten', '98979'),
(375, 10, 'Purbalingga', 'Kabupaten', '53312'),
(376, 9, 'Purwakarta', 'Kabupaten', '41119'),
(377, 10, 'Purworejo', 'Kabupaten', '54111'),
(378, 25, 'Raja Ampat', 'Kabupaten', '98489'),
(379, 4, 'Rejang Lebong', 'Kabupaten', '39112'),
(380, 10, 'Rembang', 'Kabupaten', '59219'),
(381, 26, 'Rokan Hilir', 'Kabupaten', '28992'),
(382, 26, 'Rokan Hulu', 'Kabupaten', '28511'),
(383, 23, 'Rote Ndao', 'Kabupaten', '85982'),
(384, 21, 'Sabang', 'Kota', '23512'),
(385, 23, 'Sabu Raijua', 'Kabupaten', '85391'),
(386, 10, 'Salatiga', 'Kota', '50711'),
(387, 15, 'Samarinda', 'Kota', '75133'),
(388, 12, 'Sambas', 'Kabupaten', '79453'),
(389, 34, 'Samosir', 'Kabupaten', '22392'),
(390, 11, 'Sampang', 'Kabupaten', '69219'),
(391, 12, 'Sanggau', 'Kabupaten', '78557'),
(392, 24, 'Sarmi', 'Kabupaten', '99373'),
(393, 8, 'Sarolangun', 'Kabupaten', '37419'),
(394, 32, 'Sawah Lunto', 'Kota', '27416'),
(395, 12, 'Sekadau', 'Kabupaten', '79583'),
(396, 28, 'Selayar (Kepulauan Selayar)', 'Kabupaten', '92812'),
(397, 4, 'Seluma', 'Kabupaten', '38811'),
(398, 10, 'Semarang', 'Kabupaten', '50511'),
(399, 10, 'Semarang', 'Kota', '50135'),
(400, 19, 'Seram Bagian Barat', 'Kabupaten', '97561'),
(401, 19, 'Seram Bagian Timur', 'Kabupaten', '97581'),
(402, 3, 'Serang', 'Kabupaten', '42182'),
(403, 3, 'Serang', 'Kota', '42111'),
(404, 34, 'Serdang Bedagai', 'Kabupaten', '20915'),
(405, 14, 'Seruyan', 'Kabupaten', '74211'),
(406, 26, 'Siak', 'Kabupaten', '28623'),
(407, 34, 'Sibolga', 'Kota', '22522'),
(408, 28, 'Sidenreng Rappang/Rapang', 'Kabupaten', '91613'),
(409, 11, 'Sidoarjo', 'Kabupaten', '61219'),
(410, 29, 'Sigi', 'Kabupaten', '94364'),
(411, 32, 'Sijunjung (Sawah Lunto Sijunjung)', 'Kabupaten', '27511'),
(412, 23, 'Sikka', 'Kabupaten', '86121'),
(413, 34, 'Simalungun', 'Kabupaten', '21162'),
(414, 21, 'Simeulue', 'Kabupaten', '23891'),
(415, 12, 'Singkawang', 'Kota', '79117'),
(416, 28, 'Sinjai', 'Kabupaten', '92615'),
(417, 12, 'Sintang', 'Kabupaten', '78619'),
(418, 11, 'Situbondo', 'Kabupaten', '68316'),
(419, 5, 'Sleman', 'Kabupaten', '55513'),
(420, 32, 'Solok', 'Kabupaten', '27365'),
(421, 32, 'Solok', 'Kota', '27315'),
(422, 32, 'Solok Selatan', 'Kabupaten', '27779'),
(423, 28, 'Soppeng', 'Kabupaten', '90812'),
(424, 25, 'Sorong', 'Kabupaten', '98431'),
(425, 25, 'Sorong', 'Kota', '98411'),
(426, 25, 'Sorong Selatan', 'Kabupaten', '98454'),
(427, 10, 'Sragen', 'Kabupaten', '57211'),
(428, 9, 'Subang', 'Kabupaten', '41215'),
(429, 21, 'Subulussalam', 'Kota', '24882'),
(430, 9, 'Sukabumi', 'Kabupaten', '43311'),
(431, 9, 'Sukabumi', 'Kota', '43114'),
(432, 14, 'Sukamara', 'Kabupaten', '74712'),
(433, 10, 'Sukoharjo', 'Kabupaten', '57514'),
(434, 23, 'Sumba Barat', 'Kabupaten', '87219'),
(435, 23, 'Sumba Barat Daya', 'Kabupaten', '87453'),
(436, 23, 'Sumba Tengah', 'Kabupaten', '87358'),
(437, 23, 'Sumba Timur', 'Kabupaten', '87112'),
(438, 22, 'Sumbawa', 'Kabupaten', '84315'),
(439, 22, 'Sumbawa Barat', 'Kabupaten', '84419'),
(440, 9, 'Sumedang', 'Kabupaten', '45326'),
(441, 11, 'Sumenep', 'Kabupaten', '69413'),
(442, 8, 'Sungaipenuh', 'Kota', '37113'),
(443, 24, 'Supiori', 'Kabupaten', '98164'),
(444, 11, 'Surabaya', 'Kota', '60119'),
(445, 10, 'Surakarta (Solo)', 'Kota', '57113'),
(446, 13, 'Tabalong', 'Kabupaten', '71513'),
(447, 1, 'Tabanan', 'Kabupaten', '82119'),
(448, 28, 'Takalar', 'Kabupaten', '92212'),
(449, 25, 'Tambrauw', 'Kabupaten', '98475'),
(450, 16, 'Tana Tidung', 'Kabupaten', '77611'),
(451, 28, 'Tana Toraja', 'Kabupaten', '91819'),
(452, 13, 'Tanah Bumbu', 'Kabupaten', '72211'),
(453, 32, 'Tanah Datar', 'Kabupaten', '27211'),
(454, 13, 'Tanah Laut', 'Kabupaten', '70811'),
(455, 3, 'Tangerang', 'Kabupaten', '15914'),
(456, 3, 'Tangerang', 'Kota', '15111'),
(457, 3, 'Tangerang Selatan', 'Kota', '15332'),
(458, 18, 'Tanggamus', 'Kabupaten', '35619'),
(459, 34, 'Tanjung Balai', 'Kota', '21321'),
(460, 8, 'Tanjung Jabung Barat', 'Kabupaten', '36513'),
(461, 8, 'Tanjung Jabung Timur', 'Kabupaten', '36719'),
(462, 17, 'Tanjung Pinang', 'Kota', '29111'),
(463, 34, 'Tapanuli Selatan', 'Kabupaten', '22742'),
(464, 34, 'Tapanuli Tengah', 'Kabupaten', '22611'),
(465, 34, 'Tapanuli Utara', 'Kabupaten', '22414'),
(466, 13, 'Tapin', 'Kabupaten', '71119'),
(467, 16, 'Tarakan', 'Kota', '77114'),
(468, 9, 'Tasikmalaya', 'Kabupaten', '46411'),
(469, 9, 'Tasikmalaya', 'Kota', '46116'),
(470, 34, 'Tebing Tinggi', 'Kota', '20632'),
(471, 8, 'Tebo', 'Kabupaten', '37519'),
(472, 10, 'Tegal', 'Kabupaten', '52419'),
(473, 10, 'Tegal', 'Kota', '52114'),
(474, 25, 'Teluk Bintuni', 'Kabupaten', '98551'),
(475, 25, 'Teluk Wondama', 'Kabupaten', '98591'),
(476, 10, 'Temanggung', 'Kabupaten', '56212'),
(477, 20, 'Ternate', 'Kota', '97714'),
(478, 20, 'Tidore Kepulauan', 'Kota', '97815'),
(479, 23, 'Timor Tengah Selatan', 'Kabupaten', '85562'),
(480, 23, 'Timor Tengah Utara', 'Kabupaten', '85612'),
(481, 34, 'Toba Samosir', 'Kabupaten', '22316'),
(482, 29, 'Tojo Una-Una', 'Kabupaten', '94683'),
(483, 29, 'Toli-Toli', 'Kabupaten', '94542'),
(484, 24, 'Tolikara', 'Kabupaten', '99411'),
(485, 31, 'Tomohon', 'Kota', '95416'),
(486, 28, 'Toraja Utara', 'Kabupaten', '91831'),
(487, 11, 'Trenggalek', 'Kabupaten', '66312'),
(488, 19, 'Tual', 'Kota', '97612'),
(489, 11, 'Tuban', 'Kabupaten', '62319'),
(490, 18, 'Tulang Bawang', 'Kabupaten', '34613'),
(491, 18, 'Tulang Bawang Barat', 'Kabupaten', '34419'),
(492, 11, 'Tulungagung', 'Kabupaten', '66212'),
(493, 28, 'Wajo', 'Kabupaten', '90911'),
(494, 30, 'Wakatobi', 'Kabupaten', '93791'),
(495, 24, 'Waropen', 'Kabupaten', '98269'),
(496, 18, 'Way Kanan', 'Kabupaten', '34711'),
(497, 10, 'Wonogiri', 'Kabupaten', '57619'),
(498, 10, 'Wonosobo', 'Kabupaten', '56311'),
(499, 24, 'Yahukimo', 'Kabupaten', '99041'),
(500, 24, 'Yalimo', 'Kabupaten', '99481'),
(501, 5, 'Yogyakarta', 'Kota', '55111');

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
(3, '2018_08_05_033123_create_books_table', 1),
(4, '2018_08_05_050155_alter_users_table', 1),
(5, '2018_08_06_205410_create_categories_table', 1),
(6, '2018_08_06_212931_create_orders_table', 1),
(7, '2018_08_06_213012_create_book_category_table', 1),
(8, '2018_08_06_213037_create_book_order_table', 1),
(9, '2018_08_06_213134_create_provinces_table', 1),
(10, '2018_08_06_213147_create_cities_table', 1),
(11, '2018_08_18_211244_adds_api_token_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_bill` double(8,2) NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courier_service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('SUBMIT','PROCESS','FINISH','CANCEL') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SUBMIT',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `province`) VALUES
(1, 'Bali'),
(2, 'Bangka Belitung'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nanggroe Aceh Darussalam (NAD)'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `address`, `city_id`, `province_id`, `phone`, `avatar`, `status`, `api_token`) VALUES
(1, 'Caleigh O\'Reilly', 'hirthe.cordia@example.net', NULL, '$2y$10$a0C4AvpHzAQovORSkw7wB.YxLQjLgeRlMQfoTn91q7FQzvS0MgWAy', NULL, '2020-07-11 01:53:38', '2020-07-11 18:40:41', '[\"CUSTOMER\"]', NULL, NULL, NULL, NULL, '\\b5ff0ee0b49aecf7a525a6885528bdb3.jpg', 'ACTIVE', NULL),
(2, 'Marlee Beahan', 'hillary.fritsch@example.com', NULL, '$2y$10$dgMM5F8dmCqCbI8EOBqV8.ZLZD1F5avyRrYqe0stYup20cv/VPUF6', NULL, '2020-07-11 01:53:39', NULL, '[\"CUSTOMER\"]', NULL, NULL, NULL, NULL, '\\6988e7780a3a4b55a91c9610b97255d6.jpg', 'ACTIVE', NULL),
(3, 'Christophe Raynor', 'cbatz@example.com', NULL, '$2y$10$vFPLd2UjweOLplyoOP1rROdOy4H7J24qeTnCf87YO2KZNBcDb6K4C', NULL, '2020-07-11 01:53:40', NULL, '[\"CUSTOMER\"]', NULL, NULL, NULL, NULL, '\\79256534e67fffd1549d50916ff25a2a.jpg', 'ACTIVE', NULL),
(4, 'Miss Thelma Jacobs', 'nitzsche.rose@example.com', NULL, '$2y$10$Vd7Qnp/Nth926VluxmvJwu7e4gTpEKa8ZLiVtFvjbd1gLMHn9Y11a', NULL, '2020-07-11 01:53:41', NULL, '[\"CUSTOMER\"]', NULL, NULL, NULL, NULL, '\\91adb6eabf5882ea95072b1c994d83c1.jpg', 'ACTIVE', NULL),
(5, 'Dr. Ken Stanton DDS', 'upagac@example.com', NULL, '$2y$10$qGE3Vvz6hbFyVo./Gxa0F.Gx//siEUOEh2TQ.eYazAiizJGeQjTU2', NULL, '2020-07-11 01:53:42', NULL, '[\"CUSTOMER\"]', NULL, NULL, NULL, NULL, '\\9214ba23fc04ae3ea4c5caeae3bb4ad5.jpg', 'ACTIVE', NULL),
(6, 'L Yuda Rahmani Karnaen', 'yuda.karnaen11@gmail.com', NULL, '$2y$10$Vorkvl1SmuLGzLqn12SA8OZD78nQtB1G2pzxAIZ4Y6iunJ7HSitCi', NULL, '2020-07-11 18:43:51', '2020-07-11 20:10:46', '[\"CUSTOMER\"]', 'Dusun Ketangga, Rt 007, Desa Setanggor Selatan, Kecamatan Sukamulia', 114, 1, '+6281999912423', NULL, 'ACTIVE', 'b4yUEL1XzpHxnBOQN8GiZNAYezIttpxxJTbUt11XxIg0sT9mkVbitmnMqkD0'),
(7, 'L Yuda Rahmani Karnaen', 'lisa@gmail.com', NULL, '$2y$10$is/H9lBR.v88KggD9f4tkurGeQmoDHUR9VSGAPF6F.LtsupQ1/wYS', NULL, '2020-07-11 18:52:20', '2020-07-11 22:45:43', '[\"CUSTOMER\"]', 'Dusun Ketangga, Rt 007, Desa Setanggor Selatan, Kecamatan Sukamulia', 114, 1, '+6281999912423', NULL, 'ACTIVE', NULL),
(8, 'Azam', 'azam@gmail.com', NULL, '$2y$10$eSuYs/RC0YyX4U4Lu02AVuR7Qq3J0epKyiX0WEiS1GcdnvqfrhyE2', NULL, '2020-07-11 18:56:16', '2020-07-11 18:56:16', '[\"CUSTOMER\"]', NULL, NULL, NULL, NULL, NULL, 'ACTIVE', NULL),
(9, 'L Yuda Rahmani Karnaen', 'yudakarnaen@gmail.com', NULL, '$2y$10$//CyfMdZ7.PXsdmkUq6WTuKx8cusi3UrJEwtsk7b/webICdR0rSVy', NULL, '2020-07-11 19:00:42', '2020-07-11 22:30:37', '[\"CUSTOMER\"]', 'Dusun Ketangga, Rt 007, Desa Setanggor Selatan, Kecamatan Sukamulia', 240, 22, '+6281999912423', NULL, 'ACTIVE', 'XrVzxuhrNaCmtn5hQ43sviwawQh3WBIuZpSrtz5nfwTLAifCuXraHsqm0xIU'),
(10, 'L Yuda Rahmani Karnaen', 'yuda.karnaen@gmail.com', NULL, '$2y$10$Nh5eqva5qMeE/cqLqYkcGeiehU.cUv/jloRbBfXXFyIPKxHvxr8f2', NULL, '2020-07-11 19:02:45', '2020-07-11 19:02:45', '[\"CUSTOMER\"]', NULL, NULL, NULL, NULL, NULL, 'ACTIVE', 'HGGLS77E8aOTpEF3Twox3J3COWqefGyR8WMVFchypAaX4pypQlIWqyxg41Se');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_slug_unique` (`slug`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_order`
--
ALTER TABLE `book_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_order`
--
ALTER TABLE `book_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
