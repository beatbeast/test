-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 24, 2022 at 01:12 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tayo`
--

-- --------------------------------------------------------

--
-- Table structure for table `pin`
--

CREATE TABLE `pin` (
  `id` int(255) NOT NULL,
  `pin` varchar(256) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pin`
--

INSERT INTO `pin` (`id`, `pin`, `timestamp`) VALUES
(3, '788976452', '2022-05-12 13:11:09.199165'),
(4, '632940', '2022-05-24 07:49:22.809696'),
(5, '776835', '2022-05-24 08:11:12.699720'),
(6, '403421', '2022-05-24 12:21:27.493400'),
(7, '097058', '2022-05-24 12:24:28.009259'),
(8, '906157', '2022-05-24 12:25:49.799671'),
(9, '550634', '2022-05-24 12:26:29.011538'),
(10, '951182', '2022-05-24 12:26:32.382012'),
(11, '101576', '2022-05-24 12:26:50.145580'),
(12, '956450', '2022-05-24 12:26:52.114617'),
(13, '688096', '2022-05-24 12:27:25.213406'),
(14, '658642', '2022-05-24 12:27:53.562095'),
(15, '692355', '2022-05-24 12:28:28.211236'),
(16, '309719', '2022-05-24 12:29:13.850908'),
(17, '660879', '2022-05-24 12:34:33.717852'),
(18, '881909', '2022-05-24 12:36:13.441391'),
(19, '564961', '2022-05-24 12:36:30.912958'),
(20, '648114', '2022-05-24 12:36:40.247091'),
(21, '799348', '2022-05-24 12:36:52.596369'),
(22, '757639', '2022-05-24 12:37:37.607397'),
(23, '712045', '2022-05-24 12:38:30.093012'),
(24, '887908', '2022-05-24 12:38:45.798438'),
(25, '515247', '2022-05-24 12:38:48.551099'),
(26, '598239', '2022-05-24 12:38:53.899534'),
(27, '609683', '2022-05-24 12:40:06.255531'),
(28, '917249', '2022-05-24 12:48:01.832672'),
(29, '421450', '2022-05-24 12:48:26.191553'),
(30, '334560', '2022-05-24 12:48:30.872944'),
(31, '997969', '2022-05-24 12:48:58.442969'),
(32, '174092', '2022-05-24 12:50:12.841243'),
(33, '164308', '2022-05-24 12:50:40.269535'),
(34, '395593', '2022-05-24 12:51:20.443362'),
(35, '620167', '2022-05-24 12:51:31.733192'),
(36, '848201', '2022-05-24 12:52:01.055986'),
(37, '491351', '2022-05-24 12:52:22.554031'),
(38, '338398', '2022-05-24 12:53:22.312528'),
(39, '624232', '2022-05-24 12:54:00.564041'),
(40, '969468', '2022-05-24 12:54:23.786959'),
(41, '486672', '2022-05-24 12:54:41.960174'),
(42, '355947', '2022-05-24 12:59:16.510939'),
(43, '183690', '2022-05-24 12:59:47.402043'),
(44, '788168', '2022-05-24 13:02:27.033521'),
(45, '087106', '2022-05-24 13:03:30.247191'),
(46, '187837', '2022-05-24 13:03:40.007680'),
(47, '096516', '2022-05-24 13:04:07.572844'),
(48, '064611', '2022-05-24 13:04:21.881036'),
(49, '621597', '2022-05-24 13:04:40.566068'),
(50, '126798', '2022-05-24 13:05:09.172451'),
(51, '611796', '2022-05-24 13:05:19.018337'),
(52, '084645', '2022-05-24 13:05:26.444373'),
(53, '706491', '2022-05-24 13:05:32.750401'),
(54, '582674', '2022-05-24 13:05:48.427247'),
(55, '069165', '2022-05-24 13:05:59.079171'),
(56, '096286', '2022-05-24 13:06:13.625242'),
(57, '250411', '2022-05-24 13:06:19.999639'),
(58, '974848', '2022-05-24 13:08:20.845321'),
(59, '840825', '2022-05-24 13:08:52.621789'),
(60, '102720', '2022-05-24 13:09:07.394230'),
(61, '411997', '2022-05-24 13:09:28.005820'),
(62, '714182', '2022-05-24 13:10:14.401367'),
(63, '484846', '2022-05-24 13:10:27.431991'),
(64, '310340', '2022-05-24 13:10:47.245344'),
(65, '612398', '2022-05-24 13:11:42.406466'),
(66, '752290', '2022-05-24 13:11:53.960668');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(255) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `status` int(255) NOT NULL,
  `lastlogin` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `name`, `username`, `email`, `password`, `create_datetime`) VALUES
(1, '', 'tayo', 'tayo@tayo.com', 'a24ff766a2c94c73e138ee98478f7f84', '2022-03-31 06:11:49'),
(2, '', 'tayo', 'tayo@tayo.com', 'a24ff766a2c94c73e138ee98478f7f84', '2022-03-31 06:12:19'),
(3, '', 'tayo', 'tayo@tayo.com', 'a24ff766a2c94c73e138ee98478f7f84', '2022-03-31 06:13:32'),
(4, '', 'test', 'test@test.com', '098f6bcd4621d373cade4e832627b4f6', '2022-03-31 06:23:29'),
(5, '', 'tayo', 'akinstemi123@gmail.com', 'a24ff766a2c94c73e138ee98478f7f84', '2022-03-31 13:23:25'),
(6, '', 'temitayo', 'akinstemi123@gmail.com', 'ec17429fb0b1189483a2dee5b1b8e4e0', '2022-03-31 13:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'ayomide', '$2y$10$irmXmroQ60lB333tK04UvOht.M8wmNL6Lf0UeMPYsSeCfrtrnWfPq', '2022-05-23 14:49:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pin`
--
ALTER TABLE `pin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pin`
--
ALTER TABLE `pin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
