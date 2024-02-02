-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2024 at 10:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce3`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `image`, `is_popular`) VALUES
(1, 'Polo', 'polo', '2023-11-30 21:06:42', '2024-01-31 19:32:52', '1704425603.jpg', 1),
(2, 'ut adipisci', 'ut-adipisci', '2023-11-30 21:06:42', '2024-01-04 21:08:45', '1704427725.jpg', 1),
(3, 'Kaos Sablon', 'kaos-sablon', '2023-11-30 21:06:42', '2024-01-31 19:48:54', '1704425998.jpg', 1),
(4, 'rerum repudiandae', 'rerum-repudiandae', '2023-11-30 21:06:42', '2024-01-04 20:41:30', '1704426090.jpg', 1),
(5, 'Tas', 'tas', '2023-11-30 21:06:42', '2024-01-31 19:40:01', '1704425792.jpg', 1),
(6, 'Kaos Kaki', 'kaos-kaki', '2023-11-30 21:06:42', '2024-01-31 19:40:23', '1704425928.jpg', 1),
(9, 'Jersey', 'jersey', '2024-01-09 01:15:24', '2024-01-11 00:55:43', '1704788124.jpg', 1),
(10, 'Kaos Polos', 'kaos-polos', '2024-01-09 01:23:37', '2024-01-09 01:23:37', '1704788617.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `top_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `top_title`, `title`, `sub_title`, `offer`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ini Top Title', 'Ini Title', 'Ini Sub Title', 'offer ini', 'http://127.0.0.1:8000/shop', '1704269927.png', 1, '2024-01-03 00:30:34', '2024-01-03 02:08:48'),
(3, 'Top Title 2nd', 'Title 2nd', 'Sub Title 2nd', 'Offer 2nd', 'http://127.0.0.1:8000/', '1704273329.png', 1, '2024-01-03 02:15:29', '2024-01-03 02:15:29');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_01_031534_create_categories_table', 2),
(6, '2023_12_01_031750_create_products_table', 2),
(7, '2024_01_03_043755_create_home_sliders_table', 3),
(8, '2024_01_05_020215_add_image_and_is_popular_column_to_categories_table', 4);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Kaos', 'kaos', 'Voluptates exercitationem eos natus et sequi excepturi est. Aliquam rerum veniam corrupti itaque.', 'ini adalah produk terbaik kami.\nddjdien ijnd', '342.00', '212.00', 'PRD334', 'instock', 1, 15, '1704938782.jpg', NULL, 10, '2023-11-30 21:22:48', '2024-01-11 02:12:11'),
(2, 'rem consectetur inventore labore vitae dolorem', 'rem-consectetur-inventore-labore-vitae-dolorem', 'Maiores tempora tempora maxime dicta deserunt porro. Voluptatum consectetur fugiat incidunt. Voluptas consequuntur quia vitae deleniti itaque aliquid. Dicta quae suscipit nisi tenetur.', 'Quo odio voluptatem ex. Ut exercitationem modi occaecati. Minus et assumenda aperiam officiis sit neque ex. Error et quae non dolore et facere. Amet vitae rem corrupti illum temporibus qui. Eveniet veritatis fugit ut et ea perspiciatis. Est porro facilis velit dignissimos at est. Similique voluptatem at dicta et autem iusto. Fugit id nam doloribus.', '202.00', NULL, 'PRD387', 'instock', 0, 48, 'product-2.jpg', NULL, 5, '2023-11-30 21:22:48', '2023-11-30 21:22:48'),
(3, 'Jersey Basket', 'jersey-basket', 'Saepe quibusdam iste delectus inventore voluptatem. Exercitationem sit voluptatum quo quis corrupti. Et nulla itaque quas voluptatum.', 'Inventore qui assumenda nam facere qui. Consectetur repellat aut error provident. Explicabo in qui nam voluptate id atque. Ut earum eligendi perferendis tenetur eos. Totam eum asperiores eum et commodi. Quis unde deserunt reiciendis et omnis qui. Laboriosam dolore possimus corporis. Quaerat error fugit iste architecto necessitatibus et. Enim ullam incidunt architecto omnis eius. Occaecati dignissimos ad numquam adipisci. Dolorum et quia consequuntur sunt.', '158.00', '158.00', 'PRD427', 'instock', 0, 20, 'product-1.jpg', NULL, 9, '2023-11-30 21:22:48', '2024-01-31 20:22:19'),
(4, 'Jersey Bola', 'jersey-bola', 'Ab labore ipsam autem quasi asperiores. Sit et ab dolor. Deserunt nobis reprehenderit provident cum harum mollitia.', 'Debitis ut perferendis dolorem occaecati quasi ut non sit. Est consectetur dolor quo suscipit fugiat et. Et eos nobis ut et. Facilis aut modi voluptatem illum. Laboriosam et optio est iste in aut. Delectus dolore rerum possimus. In rerum ratione totam facere vitae facilis. Perspiciatis eius iste molestiae. Numquam quas dolorum est eum excepturi temporibus fuga. Ad nulla sit libero hic eligendi. Aliquid et libero velit placeat. Porro reprehenderit voluptatem nemo incidunt provident.', '375.00', '375.00', 'PRD238', 'instock', 0, 15, 'product-8.jpg', NULL, 9, '2023-11-30 21:22:48', '2024-01-31 20:25:57'),
(5, 'Tas', 'tas', 'Cupiditate ipsum magni in. Omnis ipsa minus eligendi aut.', 'Molestiae tempore non ut laudantium unde aut. Delectus ea repellendus expedita ducimus. Autem consequatur ad aut saepe. Excepturi quia sint omnis eos aut ullam. Laboriosam et quidem vitae quas iusto rerum. Corrupti iste est occaecati quas omnis. Sit dolore alias officia illo non quidem esse. Ad eveniet tempora omnis nihil rerum. Veritatis in accusamus sunt qui est ad. Harum ut aut assumenda ipsum est excepturi quis exercitationem.', '213.00', '213.00', 'PRD420', 'instock', 0, 22, 'product-14.jpg', NULL, 5, '2023-11-30 21:22:48', '2024-01-31 20:26:33'),
(6, 'Kaos Kaki', 'kaos-kaki', 'Quam placeat quia ea nobis et cum. Dolore rerum veritatis sit et nulla aut. Soluta sed assumenda consequatur.', 'Quia nihil et incidunt quas impedit aut. Quia perferendis sunt vero vitae ut distinctio. Soluta eos consectetur illum dicta qui aut doloribus. Sint ea eaque sed molestias rerum non ab. Ipsum repellat rem eum perspiciatis consectetur labore optio. Blanditiis qui vel reprehenderit cumque accusantium nesciunt. Qui aut quos harum tempora. Sint ipsa odit deleniti rerum.', '360.00', '360.00', 'PRD492', 'instock', 0, 19, 'product-15.jpg', NULL, 6, '2023-11-30 21:22:48', '2024-01-31 20:27:14'),
(7, 'Kaos Polo', 'kaos-polo', 'Sunt deserunt necessitatibus dolorem qui non sit dignissimos. Et ut omnis iste dolor voluptas ea. Doloremque aut corrupti ex ea.', 'Illo quos qui et aut est dignissimos. Laborum ab eaque dolorem corrupti aut officia reprehenderit. Minima officiis quos et praesentium ratione excepturi fugiat. Fuga ullam eum labore. Aut tenetur quisquam ea qui rerum. Aut voluptatem enim itaque aperiam. Dicta quis cupiditate quia voluptatem cum natus. Ut amet odit nostrum eos qui omnis. Porro dicta minus explicabo repellendus sed. Rerum qui quo maiores. Totam sed nesciunt asperiores inventore. Totam atque omnis sint debitis deleniti tempora.', '187.00', '187.00', 'PRD278', 'instock', 0, 16, 'product-5.jpg', NULL, 1, '2023-11-30 21:22:48', '2024-01-31 20:28:11'),
(8, 'et voluptatum sunt molestiae sed est', 'et-voluptatum-sunt-molestiae-sed-est', 'Eaque repellat odit sit omnis nisi aperiam. Perspiciatis consectetur consequuntur qui. Sequi recusandae omnis in. Voluptas tenetur ut reprehenderit suscipit voluptatem eaque omnis aut.', 'Adipisci voluptate impedit sit at praesentium dolores provident amet. Voluptates qui repudiandae ad fugiat. Et rerum dolor ut quidem totam aut qui. Et iusto dolore quo. Eius sit libero eveniet corporis voluptatibus unde. Corrupti maxime quos et est. Autem distinctio nisi a. Qui porro mollitia nesciunt molestiae ab ducimus. Voluptate officiis labore nihil sequi. Enim facilis aut voluptatem quos et.', '98.00', NULL, 'PRD121', 'instock', 0, 40, 'product-9.jpg', NULL, 3, '2023-11-30 21:22:48', '2023-11-30 21:22:48'),
(9, 'atque nisi praesentium blanditiis aut sunt', 'atque-nisi-praesentium-blanditiis-aut-sunt', 'Odit aliquid qui distinctio ex. Voluptatem ad qui illum nihil. Officia exercitationem perspiciatis vero illum est quo unde. Earum minus quis saepe.', 'Dolores illo cumque corrupti officiis quia neque atque. Qui soluta officiis ut necessitatibus. Necessitatibus quaerat ratione dolor at commodi qui. Impedit blanditiis iusto perferendis possimus neque est. Sunt exercitationem eos corrupti saepe voluptatum corporis. Doloribus voluptatibus eum dolor aspernatur unde ut. Eius ut beatae corrupti consequatur. Architecto nostrum minima id et sint. Autem ipsum corporis odit aut eos a asperiores.', '464.00', NULL, 'PRD208', 'instock', 0, 10, 'product-14.jpg', NULL, 2, '2023-11-30 21:22:48', '2023-11-30 21:22:48'),
(10, 'aut consequatur adipisci distinctio delectus quia', 'aut-consequatur-adipisci-distinctio-delectus-quia', 'Deleniti ut expedita ut nesciunt velit consequuntur voluptate sequi. Consequatur illo asperiores qui fugiat. Iusto occaecati repellendus molestiae.', 'Quo dolores et veritatis iusto ut. Quidem quibusdam velit illo et laborum blanditiis maiores. Laborum quae quia est dolor et cum. Non libero deserunt dolores ducimus perspiciatis. Optio consequatur adipisci ut laudantium. Nesciunt minima sunt rerum quo et vel voluptas. Nobis eos et assumenda voluptate. Blanditiis iusto ratione explicabo ut quidem.', '427.00', NULL, 'PRD491', 'instock', 0, 46, 'product-14.jpg', NULL, 2, '2023-11-30 21:22:48', '2023-11-30 21:22:48'),
(11, 'corporis illum voluptatem aspernatur minus architecto', 'corporis-illum-voluptatem-aspernatur-minus-architecto', 'Quod officiis et voluptatem sit ullam cumque et ea. Quo eveniet officiis sed maiores accusantium. Est facilis veritatis nemo.', 'Iste et laborum ut voluptas provident dolores rerum recusandae. Eaque quia dolorum repellat repellendus nihil. Natus illo sed similique et incidunt quo sapiente. Minima similique culpa sit ea. Nulla dolorem dolores laboriosam placeat rerum. Ullam molestiae et neque fugit sit fugiat. Rerum quibusdam impedit suscipit sed ut. Ducimus ducimus maxime minima debitis animi sint vitae voluptatibus.', '167.00', NULL, 'PRD186', 'instock', 0, 13, 'product-9.jpg', NULL, 2, '2023-11-30 21:22:48', '2023-11-30 21:22:48'),
(12, 'voluptatem iure dignissimos vel occaecati quia', 'voluptatem-iure-dignissimos-vel-occaecati-quia', 'Quia minima mollitia vel ut eligendi. Sed tenetur in dolorem. Ratione quia architecto maiores mollitia omnis. Libero reiciendis et delectus nulla ut.', 'Quam qui dolorem excepturi aperiam qui suscipit quia. Est qui ipsum molestias asperiores laborum. Est reiciendis sed nam nemo voluptas rerum. Eos praesentium aut non. Enim repudiandae aut amet deserunt quos. Est sit libero harum odio. Et alias quae esse aut. Corrupti incidunt omnis ipsa facere ratione vel consequatur. Similique unde veritatis magnam expedita. Tenetur labore totam perspiciatis ex quia ad voluptatem. Velit dignissimos itaque necessitatibus sapiente quam consectetur impedit.', '425.00', NULL, 'PRD378', 'instock', 0, 16, 'product-1.jpg', NULL, 1, '2023-11-30 21:22:48', '2023-11-30 21:22:48'),
(13, 'animi necessitatibus ut saepe nobis natus', 'animi-necessitatibus-ut-saepe-nobis-natus', 'Consequuntur magnam totam a inventore velit. Aut maxime minus ut voluptas laudantium. Maiores a nostrum ipsum laborum ut aut.', 'Vero quia vitae repudiandae eos est molestias. Voluptates maiores reprehenderit voluptas voluptatem ipsa esse. Modi in eaque eum praesentium reiciendis. Deleniti voluptas impedit eos esse adipisci quis vero placeat. Et ut rem quo beatae architecto alias dolorem. Consequatur laboriosam et quia optio ut vero. Veniam dolorum saepe quidem velit placeat quo. Quo consequatur quasi iusto numquam.', '261.00', NULL, 'PRD343', 'instock', 0, 14, 'product-3.jpg', NULL, 1, '2023-11-30 21:22:48', '2023-11-30 21:22:48'),
(14, 'reiciendis cumque nemo facere repudiandae voluptatem', 'reiciendis-cumque-nemo-facere-repudiandae-voluptatem', 'Est rerum libero perspiciatis adipisci. Doloribus accusamus quis voluptatem. Minima aut qui molestiae rem in. Ipsam sunt ex officia ullam.', 'Atque exercitationem nihil vero consequatur non voluptatem quia. Inventore quas sed laboriosam at. Corrupti ex quidem in consequatur sed itaque. Eum ullam aut inventore et. Non qui aut perferendis ipsam molestias non quisquam illum. Fugiat accusamus rem odio qui iste nam. Quis voluptatem illo blanditiis praesentium assumenda. Sed vitae sint qui dignissimos nihil in voluptas. Quia beatae omnis rerum.', '283.00', NULL, 'PRD266', 'instock', 0, 27, 'product-5.jpg', NULL, 5, '2023-11-30 21:22:48', '2023-11-30 21:22:48'),
(15, 'quaerat distinctio laboriosam optio minus inventore', 'quaerat-distinctio-laboriosam-optio-minus-inventore', 'Dolorem nulla voluptatem pariatur sit. Illum hic quaerat qui rem quam culpa. Tempora ut nisi quod beatae ut enim dicta nam. Sunt dolor consequatur aliquid et.', 'Laborum occaecati totam voluptatum. Iure debitis accusamus corporis. Reprehenderit rerum eum impedit. Consequuntur repellendus quisquam laudantium repudiandae est eum corrupti. Ut et aut totam animi vel ratione. Dolorum nam ad optio quo rerum ut doloribus. Ut veritatis qui sapiente et. Quisquam accusantium vel aut. Blanditiis quasi consequuntur esse iure. Dolorem alias rerum dolorem deleniti aut reiciendis maiores. Dolor saepe eum voluptatibus iste voluptatem odit.', '220.00', NULL, 'PRD152', 'instock', 0, 15, 'product-15.jpg', NULL, 1, '2023-11-30 21:22:48', '2023-11-30 21:22:48'),
(16, 'delectus est libero et quae quaerat', 'delectus-est-libero-et-quae-quaerat', 'Voluptas ut recusandae quaerat dolores quasi voluptatem. Facere eos veritatis error tempore sit aut. Ut aut in ab ab vitae.', 'Eius dolorem sequi et quos pariatur itaque et. Id laudantium rerum beatae quaerat et molestiae corporis. Ex dolores id beatae harum quod et qui. Harum adipisci animi corporis et odit perferendis. Dolor explicabo quia accusantium eos laboriosam consequatur. Dolores aut voluptas est voluptas. Enim ducimus quidem molestiae cumque similique consequuntur eum.', '14.00', NULL, 'PRD500', 'instock', 0, 39, 'product-4.jpg', NULL, 3, '2023-11-30 21:22:48', '2023-11-30 21:22:48'),
(18, 'Croptop', 'croptop', 'bapen', 'baju pendek', '500.00', '100.00', 'GDDFD3467', 'instock', 1, 22, '1704353668.jpg', NULL, 6, '2024-01-04 00:34:28', '2024-01-04 01:44:24'),
(22, 'Kaos Sablon', 'kaos-sablon', 'gggg ghjvg', 'jnjgv gugv gvg', '80.00', '80.00', 'PRD119', 'instock', 0, 12, '1704964527.jpg', NULL, 3, '2024-01-11 02:15:27', '2024-01-31 19:50:59');

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
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for Normal User',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kalsport', 'admin@kalsport.com', NULL, '$2y$10$nkIFHvLbDGgi7Vq6rFCWOelblBKZ7O31ubrJMOUUZDNjbngB1Fexq', 'ADM', NULL, '2023-11-30 02:11:59', '2023-11-30 02:11:59'),
(2, 'deymazra', 'user@kalsport.com', NULL, '$2y$10$9XhjmsBP/UW9lVak9m2Ly.8Rd2iwesxg9CJ2Jt3XryMEZmECUZZ6C', 'USR', NULL, '2023-11-30 02:19:59', '2023-11-30 02:19:59'),
(3, 'Kalsportt', 'user2@gmail.com', NULL, '$2y$10$c0B2b.KXKyWA0/CXvlpdm.LvlVdMAbxBmCDA3.GfSTGSt3RuqK7tK', 'USR', NULL, '2023-11-30 19:15:29', '2023-11-30 19:15:29'),
(4, 'deyaaa', 'deanurdea@gmail.com', NULL, '$2y$10$szFh55X7.q/E9jEwNSMZT.94njrjr5Z.qod8KEe.buwdZLzI504da', 'USR', NULL, '2023-11-30 19:16:20', '2023-11-30 19:16:20'),
(5, 'deyaaanur', 'user3@kalsport.com', NULL, '$2y$10$ll6GcZWmoaMlOkEOdeD7auyqTT4jTQp22zxJAJyj4yLaqa3Hs8JIa', 'USR', NULL, '2023-11-30 19:55:23', '2023-11-30 19:55:23'),
(6, 'deya', 'deyanurkholifah@gmail.com', NULL, '$2y$10$YibzeSp7sL8tRDaROfZimekoa3tdXJgAlEq.NpNOS/NZrwZg97DEe', 'USR', NULL, '2023-12-03 19:35:50', '2023-12-03 19:35:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
