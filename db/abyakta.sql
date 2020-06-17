-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 16 Jun 2020 pada 08.45
-- Versi server: 5.7.24
-- Versi PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abyakta`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_03_09_094606_create_users_table', 1),
(2, '2020_03_09_112415_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `slug`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'quia-nam-aspernatur-nulla-perspiciatis-tempore-ut-incidunt', 'Quia nam aspernatur nulla perspiciatis tempore ut incidunt.', 'Odio reprehenderit ipsam in molestiae. Qui labore quasi quia aut. Cumque impedit labore facilis dolorem. Dignissimos illo quibusdam dicta et maxime in consequatur. Atque soluta ut et error.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(2, 18, 'atque-doloribus-rerum-totam-aperiam', 'Atque doloribus rerum totam aperiam.', 'Est omnis cumque nihil ducimus. Ipsa corporis vitae ea itaque aliquam. Quas ut commodi dolorem odio omnis. Minus numquam quae voluptatem quis accusantium eveniet.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(3, 16, 'quia-dolores-voluptates-sit-aut-libero-sit', 'Quia dolores voluptates sit aut libero sit.', 'Perspiciatis et quo ipsum reprehenderit qui ea eligendi. Quia cupiditate at voluptatem quisquam eaque. Voluptatum est velit occaecati nesciunt aliquam dolores qui.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(4, 6, 'nisi-odit-sequi-similique-sit-deserunt-et', 'Nisi odit sequi similique sit deserunt et.', 'Animi illo et eligendi quidem vitae qui inventore. Quas fuga enim nobis consequatur rem aliquam eius. Soluta ipsum eum voluptas pariatur dolores ut perspiciatis.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(5, 8, 'magnam-occaecati-nisi-et-ut-aut', 'Magnam occaecati nisi et ut aut.', 'Fuga doloribus quia quia quisquam eum ut. Ea autem ut velit dolorem. Minus qui doloribus molestias et eum libero. Ratione est inventore soluta minima nostrum.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(6, 2, 'quisquam-odit-et-recusandae-sit-quidem-cum', 'Quisquam odit et recusandae sit quidem cum.', 'Qui quidem sint omnis odit molestiae sapiente ut autem. Earum qui eligendi expedita nesciunt accusantium distinctio. Magnam et recusandae eos sapiente voluptate accusamus.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(7, 8, 'quia-ea-autem-doloremque', 'Quia ea autem doloremque.', 'Maxime exercitationem accusantium accusamus cumque praesentium consequatur. Qui ex autem consequuntur aliquid.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(8, 19, 'quia-maxime-mollitia-illum-et-ad', 'Quia maxime mollitia illum et ad.', 'Numquam excepturi et non. Non commodi suscipit provident nesciunt. Qui facere ut debitis ex.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(9, 1, 'molestiae-fugiat-nulla-veritatis-ut-soluta-voluptate-sint', 'Molestiae fugiat nulla veritatis ut soluta voluptate sint.', 'Aperiam labore cumque consequatur. Laborum et quo autem sed. Vel totam sunt nemo molestias aperiam laudantium.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(10, 11, 'qui-error-rerum-sit-molestiae-qui', 'Qui error rerum sit molestiae qui.', 'Provident sunt repellat sed quos. Et non nostrum quis porro.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(11, 1, 'asperiores-similique-corrupti-odio-dolorum-ea-blanditiis', 'Asperiores similique corrupti odio dolorum ea blanditiis.', 'Ut quo facilis dicta fugit ut. Vitae iusto saepe nemo veniam. Ducimus provident vero vero consequatur voluptates dicta. In sint omnis culpa fugiat error voluptatum.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(12, 20, 'unde-veritatis-repellat-reprehenderit-sit-reiciendis-sint-aut', 'Unde veritatis repellat reprehenderit sit reiciendis sint aut.', 'Neque qui explicabo voluptas ipsam delectus optio ut. Saepe est necessitatibus veniam architecto aliquid sequi. Ex est molestias est ullam amet.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(13, 8, 'ab-impedit-a-quasi-voluptatem-est', 'Ab impedit a quasi voluptatem est.', 'Qui fugiat magnam laborum quia nostrum. Perspiciatis ut aut ut doloribus nostrum nobis. Aut natus quas nam reprehenderit.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(14, 10, 'voluptate-mollitia-eligendi-fugiat-totam-sit', 'Voluptate mollitia eligendi fugiat totam sit.', 'Non consequatur at excepturi. Culpa sequi dolorem placeat sit. Alias voluptas velit quae sit eligendi explicabo laudantium. Suscipit est voluptatem eum harum amet quia corporis.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(15, 8, 'ut-quia-qui-commodi-delectus-aut-voluptas-atque', 'Ut quia qui commodi delectus aut voluptas atque.', 'Assumenda laboriosam provident voluptatem sed id aut. Delectus eum qui officiis porro quae occaecati.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(16, 8, 'in-consequuntur-fugiat-distinctio-quam', 'In consequuntur fugiat distinctio quam.', 'Cumque impedit nam est cupiditate sed. Cumque quae quod architecto quos quia numquam veritatis.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(17, 4, 'quod-reiciendis-autem-officiis-soluta-ut-et-harum', 'Quod reiciendis autem officiis soluta ut et harum.', 'Non voluptatibus minus sunt alias. Rerum culpa et totam enim voluptas perspiciatis. Architecto dolor minus et ab. Et voluptatem doloribus velit quibusdam.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(18, 2, 'repellat-nam-veniam-quidem', 'Repellat nam veniam quidem.', 'Et et voluptatem unde quo sit. Debitis eum eum aut et eligendi dolores ex fugiat. Quia et distinctio nihil qui aperiam velit aut.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(19, 10, 'debitis-qui-et-et-libero', 'Debitis qui et et libero.', 'Enim nesciunt perferendis unde repudiandae. Qui totam explicabo alias iusto. Dolores nisi sunt placeat sapiente soluta veniam.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(20, 15, 'vitae-totam-rerum-modi-repudiandae-omnis', 'Vitae totam rerum modi repudiandae omnis.', 'Et ex voluptatibus eum rerum odio repellat velit. Sed aliquid dolores aut repudiandae et. Nam eaque earum esse numquam.', '2020-03-09 11:41:39', '2020-03-09 11:41:39'),
(22, 21, 'laravel-atau-codeigniter', 'Laravel atau Codeigniter', 'Jika kalian disuruh memilih, apa yang akan kalian gunakan untuk mengerjakan project?', '2020-03-09 14:45:53', '2020-03-09 14:45:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'Rhoda Schmeler', 'kaylee.lynch@metz.com', '$2y$10$sQKkjQzjSO2jPf20tc5dcO4xYyEDmHQfUD5l765.UdiNf8Wgj/p56', NULL, '2020-03-09 10:27:43', '2020-03-09 10:27:43'),
(2, 'Fred Abbott', 'loma80@bashirian.com', '$2y$10$PI2ibc3qJGUWSoZcy3pnEO9brQWzCHx8.x6qj0SHlqlRJbe1N9CHG', NULL, '2020-03-09 10:27:43', '2020-03-09 10:27:43'),
(3, 'Makayla Aufderhar II', 'gebert@gmail.com', '$2y$10$ibHAI6hZZ59POS75g52A6uMajRr.exqTHg4M6u3FEvJgkOGtoIbOS', NULL, '2020-03-09 10:27:43', '2020-03-09 10:27:43'),
(4, 'Dr. Buster Moore', 'natasha29@hotmail.com', '$2y$10$1ePteOmgJpzNXRR63BbZtOHMcZdYOBR.FuJbfnSH1P5ZPHn4jgIhK', NULL, '2020-03-09 10:27:43', '2020-03-09 10:27:43'),
(5, 'Mrs. Frida Larson', 'ucole@zemlak.com', '$2y$10$7nueGqIr9SHrkJ7ZZq5UROOWk.BJku07Gqhx0HlAGllIpj1GE8ujG', NULL, '2020-03-09 10:27:43', '2020-03-09 10:27:43'),
(6, 'Ms. Carolyn Goyette III', 'hdeckow@hotmail.com', '$2y$10$8LfxCzOq6njmxoMMh7cJjOLgkTPQOZLTTr7/0Uyw.l48dTZ2U8S8.', NULL, '2020-03-09 10:27:43', '2020-03-09 10:27:43'),
(7, 'Mckayla Hartmann', 'donnelly.blaze@yahoo.com', '$2y$10$YRSO1b57mj/Afpz8Ey/v0.OLt/6BLPe3Al6jmUl1G6rNpzmbxBe1W', NULL, '2020-03-09 10:27:43', '2020-03-09 10:27:43'),
(8, 'Mandy Price', 'raegan58@hotmail.com', '$2y$10$EzDKlGIK3K9.SP4i8RJ5LOrX02smg3kxiNKbNCwEOj32rJPhpp1aC', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(9, 'Yvonne Balistreri', 'ndare@hotmail.com', '$2y$10$DeQxGYyRE0zZfcaVc2u00eeml2fJgaM2DF2uw4PHPb79yL0NtIWMm', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(10, 'Stuart Berge', 'berry18@hotmail.com', '$2y$10$bS3EBsntINfZVcE.8LohcutyMyBPojMYZws3QmoJd51M3S.p0ecY.', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(11, 'Lindsay Dach', 'rahul.ebert@gmail.com', '$2y$10$kdQq4F/82SAWebYoxlEP0OQpR.HSryvIr9ICpdRWSTeWI92nlhFRO', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(12, 'Chyna Senger', 'mmorar@gmail.com', '$2y$10$5Vpxg8V/k6vkPwiiqelK5e8IWuUlqj.M8Ko5SRTA/IkagLzjkcgE.', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(13, 'Paxton Barrows', 'fatima.hamill@mueller.biz', '$2y$10$Z7zNtmRjcTnCEoBAtFgf0.MhsHTji0bnfvDyQ1d6DlmAqu1Y5Fa8e', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(14, 'Jany Schmitt', 'lucious29@bins.biz', '$2y$10$EpaATQu1qaJOfV6eKXFu3.PyTXDMxXLLHj9WXHeJ7MLlnSaUbdPzC', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(15, 'Kristy Wiegand', 'mkeebler@lowe.com', '$2y$10$RxGRItstWMc1o5iKl8YORePuDzNGXwIe94SDfDnv9C9y0A5.U31.W', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(16, 'Dr. Gunner Goodwin', 'maye99@weissnat.com', '$2y$10$v7i.Vm9HYyWuH4PdfGszzun3TJlal1nNkUrJ13UdXEXcpWfEMiNg6', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(17, 'Mr. Sven Haley', 'aspinka@jenkins.net', '$2y$10$uEjxEMREcdaVIx4Db.IjHeP4/qCvhaS3sF9rnTvBzyEH8l4L5/OPi', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(18, 'Chasity Cremin', 'jhowell@yahoo.com', '$2y$10$H0We9w3ydkdLuUTcH7bm4.uyuHqjVt7g.6QqdK4ov8xCHe3m/67Dq', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(19, 'Dr. Vivien Deckow IV', 'yvonrueden@medhurst.com', '$2y$10$YtxnjnpLVkImi5U0rk9D3.XyWXhmjxSaamh7YCPwNrNQ60cytXD2e', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(20, 'Dr. Claude Beatty IV', 'kadin.kuhic@bradtke.org', '$2y$10$KuDoGuyNVPyAYPGQofOCkuGi8sqA6nTGjd2JCn4O808O3IEOcHtTu', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(21, 'Victor Von', 'dubuque.mekhi@heathcote.info', '$2y$10$rIXEx28waietfWMH3dJz9ejj4ZNQxE/RTNp2w6wGkhbFNBxjFdsp2', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(22, 'Corbin Gaylord', 'lpfeffer@homenick.biz', '$2y$10$.Nhw6ez5ZXa.5wYskfAog.Ux61FLwOQ.aqsG52Hoq2PUxwPm9vG72', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(23, 'Prof. Ida Klocko II', 'idamore@gmail.com', '$2y$10$8VXoHESa23QVPf0jXrZ.U.Sv8474bf15nATw82l1a5Eau/sPf5Qra', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(24, 'Mrs. Meghan Jenkins I', 'zjerde@turcotte.com', '$2y$10$7zTaJKsTSiwHLlbP6v28dOwLSGjkG4eh9IuhlW9MOA.9bzybQjsxi', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(25, 'Ciara Kiehn Sr.', 'hassie.koepp@gmail.com', '$2y$10$xibrcDwovWpaYOWmkyiMDOP7U/RSAR11VNY7aVQ.Nd6ne/15pnNBm', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(26, 'Prof. Richard Rolfson', 'goodwin.myrtice@gmail.com', '$2y$10$eb4w7HvpF48eWgt4Elki0uabllLwHG1cF5W89r/CaIBsQRsVl2QjC', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(27, 'Ernestine Schumm PhD', 'pouros.isaiah@lakin.com', '$2y$10$KiYbVZX8aJG1D1ucd1jYpu.GUIY.vbOz2wXQkFqRzyOKhl9xNfiMW', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(28, 'Loraine Lubowitz DVM', 'orin30@gmail.com', '$2y$10$xjLD/I12M.wF8suoSH1dROOGqNE9WdU/u5OOT33N73FYUmVqxD55G', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(29, 'Kiera Medhurst DDS', 'wilkinson.helga@hotmail.com', '$2y$10$DnFK2cZyCn9VviRn/ooibuFkszPftIc6RKDSU0VIs/idtMmCUPl.e', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(30, 'Dr. Louvenia Dickens Jr.', 'dane16@yahoo.com', '$2y$10$gKFRes4qGxuJMT.EQk2X/.YhU/R2dXF9OFMSXeFGoKHuTbQhrhCnC', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(31, 'Howell Gutmann MD', 'heather60@schuppe.org', '$2y$10$grbpEJ65d4B4gY.hmfq71exFdFFKEFjZUk.7pL1oEPIq00j6grp5u', NULL, '2020-03-09 10:27:44', '2020-03-09 10:27:44'),
(32, 'Dr. Karine Jerde III', 'dhirthe@gmail.com', '$2y$10$yzPnrq8pnMdxyWBLy0VAoOlzuachlBNaKBhcwrFtr.l1ukO4xYo1y', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(33, 'Dr. Gaston Gorczany MD', 'hintz.zachariah@graham.com', '$2y$10$lRzXT.rHKKxGYujUVTpqt.etl0qvrTcle.nFLsEnIxO4C2G7rd1fS', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(34, 'Mrs. Lavada Harber', 'nigel.kautzer@beahan.com', '$2y$10$Y69UXvBEL8gEICgyZQy/U.IHulQdVbi8LCljWDyP3Ke2hbCbXVBHW', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(35, 'Robin Kihn', 'heidi.cummerata@jacobi.com', '$2y$10$ApHeXhu4MxAxMeaH.tZZqOG1sE3dNCO98X75lg649uPXQARYwVBP2', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(36, 'Dr. Cornelius Auer', 'alene45@mckenzie.net', '$2y$10$j/TY49bMc0zyzu2cLUL.B.Ig/xWafMXG3zzuHk0M05cFNO.Mjaec6', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(37, 'Gus Heaney', 'gilberto19@gmail.com', '$2y$10$5C6WZ8Ko6StLMBpeozvTAuLnRQrlykrzym0RLTjoAxPA1.qyO9Bfi', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(38, 'Benedict Hyatt', 'orobel@quitzon.com', '$2y$10$AAw5lycuOqNBULZhEamGeeP31OZ3dh.E/lTOQ1imiZk/O5u3tcUO6', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(39, 'Prof. Liam Robel II', 'nrowe@gmail.com', '$2y$10$MpGkbJLXny/E6o8unr1UWOEsSBwAScOQncgjQoVvw15o691MLmE/W', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(40, 'Miss Hertha Gutmann', 'tomas91@brown.com', '$2y$10$QmtEAVjDFqW6WZgF9PFSueL3zqah45WAQQyIzWFnQy77FQj9vMtDa', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(41, 'Prof. Grayson Swift', 'brippin@yahoo.com', '$2y$10$QrXS3d3qsnAIRaV7nXmnbO5I0.l6FOKRKN8p2b10tWd0u859hLPFW', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(42, 'Ellsworth Goldner', 'rickie96@gmail.com', '$2y$10$9QrkciPPglV9HdLI.7PVmeUhKFyuLQc9tvs.DQ2hW2v2CKB9yJ/92', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(43, 'Angel Eichmann', 'celine57@hotmail.com', '$2y$10$.T66/WOo9mJygo706qAtiO0cv9kBmoNny0kcjV5f5DU.ykYKetO8W', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(44, 'Nella Graham', 'nader.meta@yahoo.com', '$2y$10$0QApR/frueudCEXePYKWruxqASrTA5j0OXF/im6dRkZF8DnewICRi', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(45, 'Mr. Carson Langworth', 'arno55@dietrich.info', '$2y$10$m2QU9R.bzuyibPqg.xU1QOZO4Y2ETTzKGmPLyTKut8oT64vJiQ8yu', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(46, 'Rosalyn Ferry DDS', 'friesen.elmira@gmail.com', '$2y$10$gL.QuZTNQi42N599LXsihuDMWTz9NpdsyhkGYOEaCXNsgm3dwvYwu', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(47, 'Dr. Saige Parisian Jr.', 'jaiden26@osinski.org', '$2y$10$3uVZnFZphFtElgUoZN3rLutCrl1uLNzHVkRi2/JEnLJojm3IvveBK', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(48, 'Allene Macejkovic Jr.', 'brenda.marvin@yahoo.com', '$2y$10$NEd5hd4.k.oPP1Kg/AM1D.XA6XxEM9zu6VVUTmr7tvxO7B9/frxOu', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(49, 'Jairo Murazik', 'leanne.rempel@gmail.com', '$2y$10$lUiDDhl9wAt8ZcHWzGbiv.TeM7GivtnIOL6UKBXuDOOVOelOHhprq', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(50, 'Amelie Johns', 'aboehm@mraz.org', '$2y$10$kI9hS1zNmT6FTS5lagyuk.K82zAC5XCbYNg22oBcNW8AjZV7fcR/6', NULL, '2020-03-09 10:27:45', '2020-03-09 10:27:45'),
(51, 'Slacker Kid', 'slackerKid@gmail.com', '$2y$10$2TZ.T5b5lubH6HiE3hM6tO/39blsJBGcai86d6jFrwbCZY98e/oXq', 'azZHS3lJNGJCQVVjMDFjSA==', '2020-03-10 02:09:57', '2020-03-10 04:34:10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
