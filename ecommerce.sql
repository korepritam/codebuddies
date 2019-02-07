-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 07, 2019 at 12:09 PM
-- Server version: 5.7.25-0ubuntu0.16.04.2
-- PHP Version: 7.2.13-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `affiliated_client`
--

CREATE TABLE `affiliated_client` (
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_key` varchar(11) NOT NULL,
  `client_key` varchar(11) NOT NULL,
  `website_url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `affiliated_client`
--

INSERT INTO `affiliated_client` (`client_id`, `user_id`, `product_key`, `client_key`, `website_url`) VALUES
(1, 1, '12345678', 'absddh1234', 'www.google.com');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `product_id`, `status`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1),
(4, 1, 1, 1),
(5, 1, 1, 1),
(6, 1, 1, 1),
(7, 1, 1, 1),
(8, 1, 1, 1),
(9, 1, 1, 1),
(10, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `interaction`
--

CREATE TABLE `interaction` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `action` varchar(100) DEFAULT NULL,
  `device` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interaction`
--

INSERT INTO `interaction` (`user_id`, `product_id`, `action`, `device`) VALUES
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop'),
(1, 1, 'logged in', 'desktop');

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
(3, '2019_02_06_115419_prepare_users_table_for_social_authentication', 1),
(4, '2019_02_06_115702_create_linked_social_accounts_table', 1),
(5, '2014_10_12_000000_create_users_table', 2),
(6, '2014_10_12_100000_create_password_resets_table', 2),
(7, '2019_02_06_182733_add_new_colunm_users_table', 2);

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
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `title`, `description`, `price`) VALUES
(1, 'shoe', 'sjsjlsklskdlskdd9jdnbjdbc', 500),
(2, 'shirt', 'kdjejmdsmksnksmsmns', 300),
(3, 't-shirt', ',clkclxm, xsnxknknkxnklnks', 150),
(4, 'goggles', 'kspojsos, cksdbcoiusdbcdcmd', 250),
(5, 'paints', 'lkndnm cmsdncdhc', 350),
(6, 'watch', 'kjweoikwnnoieh', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `search_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `search_str` varchar(100) NOT NULL,
  `country` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`search_id`, `user_id`, `search_str`, `country`, `region`, `city`) VALUES
(1, 1, 'shoe', 'IN', 'Maharashtra', 'Mumbai'),
(2, 1, 'goggles', 'IN', 'Maharashtra', 'Mumbai'),
(3, 1, 'jk', 'IN', 'Maharashtra', 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `age` int(2) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `address`, `age`, `password`, `email`) VALUES
(1, 'pradyumn', '', 0, '', ''),
(2, 'prad', 'addr', 20, '123', 'prad@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `visits_from`
--

CREATE TABLE `visits_from` (
  `v_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `client_id` int(20) NOT NULL,
  `frequency` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visits_from`
--

INSERT INTO `visits_from` (`v_id`, `user_id`, `product_id`, `client_id`, `frequency`) VALUES
(1, 1, 4, 1, 0),
(2, 1, 6, 1, 0),
(3, 1, 6, 1, 0),
(4, 1, 6, 1, 0),
(5, 1, 6, 1, 0),
(6, 1, 6, 1, 0),
(7, 1, 6, 1, 0),
(8, 1, 6, 1, 0),
(9, 1, 6, 1, 0),
(10, 1, 6, 1, 0),
(11, 1, 6, 1, 0),
(12, 1, 6, 1, 0),
(13, 1, 6, 1, 0),
(14, 1, 6, 1, 0),
(15, 1, 6, 1, 0),
(16, 1, 6, 1, 0),
(17, 1, 6, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affiliated_client`
--
ALTER TABLE `affiliated_client`
  ADD PRIMARY KEY (`client_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `interaction`
--
ALTER TABLE `interaction`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

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
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`search_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `visits_from`
--
ALTER TABLE `visits_from`
  ADD PRIMARY KEY (`v_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `affiliated_client`
--
ALTER TABLE `affiliated_client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `search`
--
ALTER TABLE `search`
  MODIFY `search_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `visits_from`
--
ALTER TABLE `visits_from`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `affiliated_client`
--
ALTER TABLE `affiliated_client`
  ADD CONSTRAINT `affiliated_client_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `interaction`
--
ALTER TABLE `interaction`
  ADD CONSTRAINT `interaction_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `interaction_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `search`
--
ALTER TABLE `search`
  ADD CONSTRAINT `search_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `visits_from`
--
ALTER TABLE `visits_from`
  ADD CONSTRAINT `visits_from_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `affiliated_client` (`client_id`),
  ADD CONSTRAINT `visits_from_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `visits_from_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
