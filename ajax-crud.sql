-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 25, 2019 at 07:49 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax-crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `email`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Sohan Ahmed', '01874636209', 'sopnilsohan03@gmail.com', 'Dhaka', '2019-12-24 17:29:11', '2019-12-24 17:29:24'),
(2, 'Ottis Shanahan', '973-615-0096 x03537', 'vokuneva@example.org', 'New Terranceland', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(3, 'Piper Erdman', '461.714.5625 x9099', 'milan.robel@example.org', 'Adamsbury', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(4, 'Celine O\'Reilly', '541-967-0661', 'botsford.destin@example.org', 'Lake Pete', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(5, 'Samanta Deckow', '(880) 332-5675', 'rau.bell@example.org', 'Lake Maynard', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(6, 'Gia Shields', '+1-525-425-2140', 'dare.tracey@example.org', 'Dachton', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(7, 'Dr. Lewis Ruecker DVM', '1-378-275-9034 x411', 'fritsch.jace@example.com', 'Rutherfordview', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(8, 'Cordelia Sauer', '(957) 634-4850', 'merl.hickle@example.org', 'North Chesterton', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(9, 'Maiya Bailey', '980.703.9109 x735', 'assunta35@example.com', 'Herminioborough', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(10, 'Selena Kling', '714-262-9754 x657', 'larkin.adolfo@example.org', 'North Terrence', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(11, 'Mrs. Marlee Durgan Jr.', '+18328928320', 'erau@example.net', 'West Harrison', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(12, 'Mafalda Stanton', '753.973.2736', 'wmclaughlin@example.com', 'Darenmouth', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(13, 'Dr. Jamaal Schuppe', '+1-390-354-4320', 'fidel.hartmann@example.com', 'West Elouisehaven', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(14, 'Flavie Jaskolski', '419-529-5776 x8037', 'ledner.brittany@example.org', 'Lake Kayceehaven', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(15, 'Kristina Hessel Sr.', '364.360.2898 x269', 'pfeffer.clifton@example.net', 'South Ellentown', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(16, 'Jeanne Hammes', '1-307-615-8476 x94923', 'douglas.forrest@example.net', 'Schuylerhaven', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(17, 'Gwen Grady III', '(474) 926-3820 x8150', 'ferry.pearline@example.net', 'Ortizland', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(18, 'Dr. Quinten Gutmann', '(623) 621-9375', 'luettgen.vada@example.com', 'Port Francoshire', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(19, 'Dr. Frank Gottlieb DVM', '1-218-556-7212', 'crystal.friesen@example.net', 'Maidaview', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(20, 'Frida Hodkiewicz', '1-606-533-2097', 'adriel91@example.net', 'North Delfinashire', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(21, 'Samir Block DVM', '702-292-7210', 'towne.kelly@example.net', 'Lefflerfurt', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(22, 'Antonia Funk', '+1-516-329-1908', 'bruce64@example.org', 'Purdyport', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(23, 'Leilani Keebler', '646.296.5410', 'block.gilberto@example.org', 'Travisberg', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(24, 'Marcia Beier MD', '(824) 777-7796 x49157', 'kaylah18@example.net', 'East Brennafort', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(25, 'Jeanette Kertzmann II', '560.841.8546', 'clang@example.net', 'Kieranberg', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(26, 'Elisabeth Kreiger', '560.406.5383 x555', 'kailey.bins@example.com', 'Vellaport', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(27, 'Nadia Hagenes', '+19358844935', 'zbarton@example.org', 'Emardburgh', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(28, 'Sammie Harvey', '(767) 765-5880 x30165', 'renee97@example.net', 'Kassulkeberg', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(29, 'Prof. Jerrold Crooks', '+1-997-393-0885', 'cklocko@example.com', 'Nicolasshire', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(30, 'Candace Ziemann', '+1-428-939-5536', 'estell92@example.com', 'Lake Trevor', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(31, 'Prof. Woodrow Flatley IV', '561-209-4971', 'nswaniawski@example.net', 'New Emieport', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(32, 'Mr. Tyler Streich', '704-827-1423', 'mavis59@example.com', 'Luisamouth', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(33, 'Verner Jones', '569-485-1647 x02829', 'marquardt.ned@example.net', 'Sporerburgh', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(34, 'Gerry Kuhn', '(594) 483-7050', 'bergnaum.candelario@example.com', 'West Sanfordside', '2019-12-24 17:29:27', '2019-12-24 17:29:27'),
(35, 'Otto Emard', '904-719-1062 x5595', 'ashly09@example.com', 'New Tess', '2019-12-24 17:29:27', '2019-12-24 17:29:28'),
(36, 'Annie Stokes', '(320) 658-4309', 'melvina27@example.org', 'Alfredland', '2019-12-24 17:29:27', '2019-12-24 17:29:28'),
(37, 'Marcellus Mitchell', '+1-442-519-1856', 'beau.bode@example.org', 'Issacberg', '2019-12-24 17:29:27', '2019-12-24 17:29:28'),
(38, 'Bertha Lemke', '785.931.9738 x0840', 'alisa25@example.com', 'Easterland', '2019-12-24 17:29:27', '2019-12-24 17:29:28'),
(39, 'Larry Lockman', '897-535-8900 x73550', 'brock.brown@example.com', 'Rogahnfurt', '2019-12-24 17:29:27', '2019-12-24 17:29:28'),
(40, 'Mona Kihn', '1-597-567-0499', 'umurphy@example.org', 'Port Juana', '2019-12-24 17:29:27', '2019-12-24 17:29:28'),
(41, 'Miss Nannie White', '331.998.8330 x28856', 'cruickshank.jermey@example.net', 'Lake Lavernemouth', '2019-12-24 17:29:27', '2019-12-24 17:29:28'),
(42, 'April Padberg', '1-524-665-8185 x20011', 'mckenzie.renee@example.org', 'Port Lexusfurt', '2019-12-24 17:29:27', '2019-12-24 17:29:28'),
(43, 'Shanon O\'Conner', '(368) 306-6884', 'ollie.gibson@example.net', 'West Lanehaven', '2019-12-24 17:29:27', '2019-12-24 17:29:28'),
(44, 'Mrs. Alberta Hyatt', '795-915-7837 x05300', 'simonis.linwood@example.net', 'Franciscaside', '2019-12-24 17:29:27', '2019-12-24 17:29:28'),
(45, 'Ethelyn Kautzer', '451.690.6002', 'milford.hodkiewicz@example.net', 'North Corinebury', '2019-12-24 17:29:27', '2019-12-24 17:29:28'),
(46, 'Prof. Walter Bergstrom II', '1-601-663-8291 x421', 'xstanton@example.net', 'East Randi', '2019-12-24 17:29:27', '2019-12-24 17:29:28'),
(47, 'Mrs. Cassidy Lueilwitz', '(465) 210-1488', 'ryder20@example.net', 'Lake Winona', '2019-12-24 17:29:27', '2019-12-24 17:29:28'),
(48, 'Brenna Nikolaus', '1-571-228-7525 x8892', 'jacky.prohaska@example.org', 'Borerhaven', '2019-12-24 17:29:27', '2019-12-24 17:29:28'),
(49, 'Arnaldo Boyer', '+1 (552) 397-0806', 'donny77@example.org', 'Wiegandmouth', '2019-12-24 17:29:27', '2019-12-24 17:29:28'),
(50, 'Prof. Jaclyn Monahan', '+1-906-787-6914', 'lance84@example.net', 'South Julianne', '2019-12-24 17:29:27', '2019-12-24 17:29:28'),
(51, 'Lilyan Barton I', '+17695379654', 'alexane80@example.net', 'Port Christop', '2019-12-24 17:29:27', '2019-12-24 17:29:28');

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
(3, '2019_12_21_153836_create_customers_table', 2);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
