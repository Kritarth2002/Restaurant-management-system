-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2021 at 05:16 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurent`
--

-- --------------------------------------------------------

--
-- Table structure for table `rb_cart`
--

CREATE TABLE `rb_cart` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `total` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rb_checkout`
--

CREATE TABLE `rb_checkout` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `total` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rb_contacts`
--

CREATE TABLE `rb_contacts` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phoneNo` varchar(10) NOT NULL,
  `cusine` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rb_contacts`
--

INSERT INTO `rb_contacts` (`name`, `email`, `phoneNo`, `cusine`) VALUES
('vansh', 'vanshbansal@gmail.co', '7055167558', 'italian');

-- --------------------------------------------------------

--
-- Table structure for table `rb_food`
--

CREATE TABLE `rb_food` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rate` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_food`
--

INSERT INTO `rb_food` (`id`, `name`, `rate`) VALUES
(1, 'Aloo Pakora', 80),
(2, 'Cheese Pakora', 90),
(3, 'Chinese Fried Rice', 120),
(4, 'Palak Pulao', 100),
(5, 'Paneer Pakora', 100),
(6, 'Roti', 10),
(7, 'Veg Crispy', 100),
(8, 'Tandoori Roti', 15),
(9, 'Veg Fried Rice', 100);

-- --------------------------------------------------------

--
-- Table structure for table `rb_users`
--

CREATE TABLE `rb_users` (
  `id` int(255) NOT NULL,
  `name` varchar(144) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_users`
--

INSERT INTO `rb_users` (`id`, `name`, `password`, `email`) VALUES
(2, 'vansh bansal', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'vanshjewar@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rb_cart`
--
ALTER TABLE `rb_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rb_checkout`
--
ALTER TABLE `rb_checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rb_food`
--
ALTER TABLE `rb_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rb_users`
--
ALTER TABLE `rb_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rb_cart`
--
ALTER TABLE `rb_cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rb_checkout`
--
ALTER TABLE `rb_checkout`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rb_food`
--
ALTER TABLE `rb_food`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rb_users`
--
ALTER TABLE `rb_users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
