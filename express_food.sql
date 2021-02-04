-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2018 at 10:34 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `name`, `address`, `client_id`) VALUES
(1, 'Home', 'Manchester Road 12a', 1),
(2, 'Home', 'Kings Street 1', 7),
(3, 'Office', 'Queen Street 1', 7),
(4, 'Home', 'Belgrade Street 23', 6),
(5, 'Home 2', 'Niski circle 2', 6),
(8, 'Home', 'Pickadilly Road 33 ', 2),
(9, 'Office', 'Kostolacka 60', 3),
(10, 'Home', 'Rainbow Fields 1a', 4),
(11, 'Office', 'Cross circle 2', 5);

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `client_id`, `number`) VALUES
(1, 7, '230-3494458-29394394-12'),
(2, 6, '242-3498858-33394394-07'),
(3, 3, '343-342348-24594394-02'),
(4, 1, '12-77758-3155394-11'),
(5, 5, '13-5498858-11394394-11'),
(6, 4, '022-3498858-34584394-44'),
(7, 2, '4587-3548758-124394-237'),
(8, 6, '245-54876-52225-85');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `email`, `phone`) VALUES
(1, 'John', 'Dow', 'dow@fjejwe.com', '2939489'),
(2, 'Sara', 'End', 'end@fjejwe.com', '290989'),
(3, 'Ogi', 'Dow', 'do2w@fjejwe.com', '2927374489'),
(4, 'Harish', 'Theman', 'harypoter@somthing.com', '5489666554'),
(5, 'Kirk', 'Douglas', 'oldkirk@movie.com', '14758226'),
(6, 'Arnold', 'Schwartzeneger', 'terminator@movie.com', '5285222214'),
(7, 'Kristiano', 'Ronaldo', 'neverbeas@messi.com', '98754221457');

-- --------------------------------------------------------

--
-- Table structure for table `deliverers`
--

CREATE TABLE `deliverers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliverers`
--

INSERT INTO `deliverers` (`id`, `first_name`, `last_name`, `available`, `phone`) VALUES
(1, 'Adam', 'Dow', 'yes', 5478541),
(2, 'Erick', 'Boldwin', 'no', 12345678),
(3, 'Calvin', 'Klein', 'yes', 987456321),
(4, 'Rowan', 'Atkinson', 'no', 54785465);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `price`, `stock`, `type`, `date`) VALUES
(1, 'pasta', 5, 100, 'main', '2018-08-27'),
(2, 'stew', 5, 200, 'main', '2018-08-27'),
(3, 'icecream', 3, 100, 'desert', '2018-08-27'),
(4, 'pudding', 3, 100, 'desert', '2018-08-27'),
(5, 'pizza', 5, 100, 'main', '2018-08-28'),
(6, 'pasta', 5, 100, 'main', '2018-08-28'),
(7, 'stew', 5, 200, 'main', '2018-08-28'),
(8, 'ice_cream', 3, 100, 'desert', '2018-08-28'),
(9, 'pudding', 3, 100, 'desert', '2018-08-28'),
(10, 'grilled_chicken', 6, 100, 'main', '2018-08-29'),
(11, 'smocked_salmon', 8, 100, 'main', '2018-08-29'),
(12, 'chocolate_cake', 4, 200, 'desert', '2018-08-29'),
(13, 'pancake', 3, 100, 'desert', '2018-08-29'),
(14, 'lasagne', 3, 150, 'main', '2018-08-30'),
(15, 'gulas', 3, 100, 'main', '2018-08-30'),
(16, 'milk_shake', 2, 200, 'desert', '2018-08-30'),
(17, 'panacota', 4, 100, 'desert', '2018-08-30'),
(18, 'dim_sam', 3, 100, 'main', '2018-08-31'),
(19, 'beef_steak', 4, 100, 'main', '2018-08-31'),
(20, 'tiramisu', 5, 150, 'desert', '2018-08-31'),
(21, 'ice_cream', 3, 150, 'desert', '2018-08-31'),
(22, 'fish_stew', 4, 100, 'main', '2018-09-01'),
(23, 'hamburger', 3, 100, 'main', '2018-09-01'),
(24, 'chocolate_muss', 3, 150, 'desert', '2018-09-01'),
(25, 'frozen_joghurt', 3, 150, 'desert', '2018-09-01'),
(26, 'lamb_medallions', 6, 100, 'main', '2018-09-02'),
(27, 'pork_pie', 3, 150, 'main', '2018-09-02'),
(28, 'apple_pie', 3, 100, 'desert', '2018-09-02'),
(29, 'profiterole', 3, 100, 'main', '2018-09-02');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `deliverer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `pay_method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `deliverer_id`, `date`, `time`, `pay_method`) VALUES
(1, 6, 1, '2018-08-27', '10:02:00', 'card'),
(2, 7, 1, '2018-08-27', '10:10:00', 'card'),
(3, 5, 2, '2018-08-27', '11:15:00', 'cash'),
(4, 4, 1, '2018-08-27', '12:30:00', 'card'),
(5, 1, 4, '2018-08-27', '17:20:00', 'cash'),
(6, 2, 3, '2018-08-28', '13:37:00', 'cash'),
(7, 6, 3, '2018-08-28', '13:39:00', 'cash'),
(8, 5, 3, '2018-08-29', '18:37:00', 'card'),
(9, 7, 1, '2018-08-29', '10:10:00', 'card'),
(10, 5, 2, '2018-08-30', '11:15:00', 'cash'),
(11, 4, 1, '2018-08-30', '12:30:00', 'card'),
(12, 1, 4, '2018-08-31', '17:20:00', 'cash'),
(13, 2, 3, '2018-09-01', '13:37:00', 'cash'),
(14, 6, 3, '2018-09-02', '13:39:00', 'cash'),
(15, 5, 3, '2018-09-02', '18:37:00', 'card');

-- --------------------------------------------------------

--
-- Table structure for table `quantities`
--

CREATE TABLE `quantities` (
  `order_id` int(20) NOT NULL,
  `dish_id` int(20) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quantities`
--

INSERT INTO `quantities` (`order_id`, `dish_id`, `quantity`) VALUES
(1, 1, 3),
(1, 2, 3),
(1, 3, 3),
(1, 4, 3),
(2, 2, 8),
(2, 3, 8),
(3, 1, 2),
(3, 2, 1),
(3, 3, 1),
(3, 4, 5),
(4, 1, 12),
(4, 2, 5),
(4, 3, 9),
(4, 4, 8),
(5, 3, 12),
(6, 5, 4),
(6, 6, 2),
(6, 7, 4),
(6, 8, 2),
(7, 6, 5),
(7, 7, 5),
(8, 10, 7),
(8, 11, 4),
(8, 12, 7),
(8, 13, 4),
(9, 11, 6),
(9, 10, 5),
(9, 12, 4),
(10, 14, 3),
(10, 15, 3),
(11, 14, 1),
(12, 18, 4),
(12, 19, 4),
(12, 20, 7),
(13, 22, 5),
(13, 23, 5),
(13, 24, 5),
(13, 25, 5),
(14, 26, 1),
(15, 26, 5),
(13, 27, 2),
(13, 28, 2),
(13, 29, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliverers`
--
ALTER TABLE `deliverers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `deliverer_id` (`deliverer_id`);

--
-- Indexes for table `quantities`
--
ALTER TABLE `quantities`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `quantities_ibfk_2` (`dish_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `deliverers`
--
ALTER TABLE `deliverers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

--
-- Constraints for table `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`deliverer_id`) REFERENCES `deliverers` (`id`);

--
-- Constraints for table `quantities`
--
ALTER TABLE `quantities`
  ADD CONSTRAINT `quantities_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `quantities_ibfk_2` FOREIGN KEY (`dish_id`) REFERENCES `menu` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
