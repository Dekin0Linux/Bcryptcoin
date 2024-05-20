-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2024 at 01:22 PM
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
-- Database: `bcoin`
--
CREATE DATABASE IF NOT EXISTS `bcoin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bcoin`;

-- --------------------------------------------------------

--
-- Table structure for table `activites`
--

CREATE TABLE `activites` (
  `id` int(11) NOT NULL,
  `server_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activites`
--

INSERT INTO `activites` (`id`, `server_id`, `date`, `type`, `status`, `detail`, `amount`) VALUES
(23, '121212', '03-06-2023', 'Transfer to Wallet', 'Completed', '$ 400,000.00', '$ 400,000.00');

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE `alert` (
  `id` int(11) NOT NULL,
  `server_id` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dash`
--

CREATE TABLE `dash` (
  `id` int(11) NOT NULL,
  `server_id` varchar(255) NOT NULL,
  `running` varchar(255) NOT NULL DEFAULT 'Low Capacity',
  `status` varchar(255) NOT NULL DEFAULT 'Offline',
  `hashrate` varchar(255) NOT NULL DEFAULT '0 Gh/s',
  `mining_bal` decimal(19,2) NOT NULL DEFAULT 0.00,
  `available_bal` decimal(19,2) NOT NULL DEFAULT 0.00,
  `earning` decimal(19,2) NOT NULL DEFAULT 0.00,
  `ledger_balance` decimal(19,2) NOT NULL DEFAULT 0.00,
  `mining_bal2` decimal(19,2) NOT NULL DEFAULT 0.00,
  `available_btc` int(255) NOT NULL DEFAULT 0,
  `earning_btc` int(255) NOT NULL DEFAULT 0,
  `ledger_btc` int(255) NOT NULL DEFAULT 0,
  `price` decimal(18,2) NOT NULL DEFAULT 24343.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dash`
--

INSERT INTO `dash` (`id`, `server_id`, `running`, `status`, `hashrate`, `mining_bal`, `available_bal`, `earning`, `ledger_balance`, `mining_bal2`, `available_btc`, `earning_btc`, `ledger_btc`, `price`) VALUES
(2, '1608202020', 'Low Capacity', 'Offline', '85 Gh/s', '242479550.00', '399995000.00', '399997000.00', '731441010.00', '84454000.00', 0, 0, 0, '19109.55'),
(14, '121212', 'Low Capacity', 'Offline', '10Gh/s', '100000000.00', '200000000.00', '500000.00', '0.00', '0.00', 0, 0, 0, '162000.90');

-- --------------------------------------------------------

--
-- Table structure for table `linkedacc`
--

CREATE TABLE `linkedacc` (
  `id` int(11) NOT NULL,
  `server_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `balance` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `card_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `btcRate` double(19,2) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `server_id` varchar(255) NOT NULL,
  `login_id` varchar(255) NOT NULL DEFAULT 'xxxxxxxxx'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `email`, `username`, `password`, `server_id`, `login_id`) VALUES
(11, 'pvsdevro@gmail.com', 'Deen Os', '$2y$12$29cUzarBae7XsGpF.YiM9ul2LNYD7GXW/WQi7QqIxHTRxJ1gf3/.y', '1608202020', '161600'),
(34, 'phaisalsaif@gmail.com', 'dekin', '$2y$12$Lb/fWVsuvu80aojxBLo68./OdNH2fsALibiBPbNjPWb36WMepQQ.6', '121212', '331100'),
(35, 'test@gmail.com', 'test', '$2y$12$kpJe6gcwU1lfDvwRlxdN/.A8uA/1Ta5Fb26kMCRu43LNFdgySGVu.', '111111', '111111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activites`
--
ALTER TABLE `activites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `server_id` (`server_id`);

--
-- Indexes for table `alert`
--
ALTER TABLE `alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dash`
--
ALTER TABLE `dash`
  ADD PRIMARY KEY (`id`),
  ADD KEY `server_id` (`server_id`);

--
-- Indexes for table `linkedacc`
--
ALTER TABLE `linkedacc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `server_id` (`server_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`,`server_id`),
  ADD UNIQUE KEY `server_id` (`server_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activites`
--
ALTER TABLE `activites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `alert`
--
ALTER TABLE `alert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dash`
--
ALTER TABLE `dash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `linkedacc`
--
ALTER TABLE `linkedacc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activites`
--
ALTER TABLE `activites`
  ADD CONSTRAINT `activites_ibfk_1` FOREIGN KEY (`server_id`) REFERENCES `signup` (`server_id`);

--
-- Constraints for table `dash`
--
ALTER TABLE `dash`
  ADD CONSTRAINT `dash_ibfk_1` FOREIGN KEY (`server_id`) REFERENCES `signup` (`server_id`);

--
-- Constraints for table `linkedacc`
--
ALTER TABLE `linkedacc`
  ADD CONSTRAINT `linkedacc_ibfk_1` FOREIGN KEY (`server_id`) REFERENCES `signup` (`server_id`);
--
-- Database: `chat_app_db`
--
CREATE DATABASE IF NOT EXISTS `chat_app_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `chat_app_db`;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `chat_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`chat_id`, `from_id`, `to_id`, `message`, `opened`, `created_at`) VALUES
(1, 2, 1, 'hello bro\n', 1, '2022-11-22 23:08:30'),
(2, 2, 1, 'how are u man', 1, '2022-11-22 23:09:44'),
(3, 2, 2, 'hy', 1, '2022-11-22 23:10:58'),
(4, 1, 1, 'hy Musa', 1, '2022-11-22 23:13:15'),
(5, 2, 2, 'hy Dekin', 1, '2022-11-22 23:14:45'),
(6, 2, 1, 'hy dekin', 1, '2022-11-22 23:14:59'),
(7, 2, 2, 'hy', 1, '2022-11-23 16:47:39'),
(8, 2, 1, 'hey musa', 1, '2022-11-23 16:47:53'),
(9, 1, 1, 'hy', 1, '2022-11-24 13:13:12'),
(10, 1, 1, 'hy', 1, '2022-11-25 10:15:59'),
(11, 1, 2, 'hy bro', 0, '2022-11-25 10:16:16'),
(12, 1, 1, 'come home', 1, '2022-11-25 10:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `conversation_id` int(11) NOT NULL,
  `user_1` int(11) NOT NULL,
  `user_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`conversation_id`, `user_1`, `user_2`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `p_p` varchar(255) DEFAULT 'user-default.png',
  `last_seen` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `username`, `password`, `p_p`, `last_seen`) VALUES
(1, 'dekin', 'dk11', '$2y$10$ecmhjfcJ5FCA7LiyFHtH8.LRyG2hE87FVs/XlLlVAVWBcqj0...sS', 'user-default.png', '2022-11-25 10:17:06'),
(2, 'musa', 'musa', '$2y$10$q2ndtwW3Kn952LeF/jjwi.FFW/T1zbJPuhm9EtG/R6voxUmKtrGpS', 'user-default.png', '2022-11-23 16:48:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`conversation_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `conversation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `fxbcrypt_fxb`
--
CREATE DATABASE IF NOT EXISTS `fxbcrypt_fxb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `fxbcrypt_fxb`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `serverID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `cpassword`, `phone`, `username`, `serverID`) VALUES
(1, 'pvsdevro@gmail.com', 'liverpool@1919@', 'liverpool@1919@', '-', 'Deen OS', '1608211509');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `cpu` varchar(255) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `bandwidth` varchar(255) NOT NULL,
  `tm1` varchar(255) NOT NULL,
  `tm2` varchar(255) NOT NULL,
  `tm3` varchar(255) NOT NULL,
  `available_b` varchar(255) NOT NULL,
  `acc_name` varchar(255) NOT NULL,
  `card_no` varchar(255) NOT NULL,
  `amt` varchar(255) NOT NULL,
  `amt_in_btc` varchar(255) NOT NULL,
  `card_name` varchar(255) NOT NULL,
  `ram` varchar(255) NOT NULL,
  `acc_name2` varchar(255) NOT NULL,
  `card_no2` varchar(255) NOT NULL,
  `amt2` varchar(255) NOT NULL,
  `amt_in_btc2` varchar(255) NOT NULL,
  `card_name2` varchar(255) NOT NULL,
  `acc_name3` varchar(255) NOT NULL,
  `card_no3` varchar(255) NOT NULL,
  `amt3` varchar(255) NOT NULL,
  `amt_in_btc3` varchar(255) NOT NULL,
  `card_name3` varchar(255) NOT NULL,
  `ledger` varchar(255) NOT NULL,
  `serverId` varchar(255) NOT NULL,
  `hasrate` varchar(255) NOT NULL,
  `earning` varchar(255) NOT NULL,
  `balance` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `userid`, `cpu`, `storage`, `bandwidth`, `tm1`, `tm2`, `tm3`, `available_b`, `acc_name`, `card_no`, `amt`, `amt_in_btc`, `card_name`, `ram`, `acc_name2`, `card_no2`, `amt2`, `amt_in_btc2`, `card_name2`, `acc_name3`, `card_no3`, `amt3`, `amt_in_btc3`, `card_name3`, `ledger`, `serverId`, `hasrate`, `earning`, `balance`) VALUES
(2, 1, 'Intel', '9TB', '7Gbs', '€ 242,479,550 +', '€ 312,788,009.00 ', '€ 84,454,000.00 +', '$ 25,019.00', 'PROMOCION Y OPERACION S.A', '4347 983.....', '€ 84,454,000.00 +', '4313.86', 'ENRIQUE RAMIREZ RUIZ', '2TB', 'BANCO INTERAME....', '4985 0310....', '€ 242,479,550', '12484.57', ' FRANTZ H. JOSEPH', 'VSP EM NEGOCIOS LTDA', '935791', '€ 312,788,009.00', '15957.60', 'Swift Code: ITAUBRSPRJO', '€ 326,934,000', '1608211509', '86 GH/s', '€ 326,934,000', '$ 25,019.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `userdata`
--
ALTER TABLE `userdata`
  ADD CONSTRAINT `userdata_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `login` (`id`);
--
-- Database: `kruca`
--
CREATE DATABASE IF NOT EXISTS `kruca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kruca`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(11, 'Cynthia', 'vx@df.vom', '$2y$10$0bPlgVjd6KYW1KUmxVOm/.zCyHyYir5zp0U/qYiijuEBUy3xhtVO6'),
(13, 'dekin', 'dekin@gmail.com', '$2y$10$e1DaqrHfcqWvxcKxeldRcOHcr0D5DSS2LlDWwKN5WjXJssUCJ76nm'),
(14, 'test', 'test@gmail.com', '$2y$10$mJxQyt7EIl55ub6og9v2/.YA6y7QpkQfK.RMffRiUF9E153go9AmW');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `txtFrom` varchar(50) NOT NULL,
  `txt_to` varchar(50) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `txtFrom`, `txt_to`, `message`, `time`) VALUES
(116, '21', 'admin', 'hy', '2022-12-11 17:38:23'),
(117, 'admin', '21', 'How can we help you', '2022-12-12 20:47:31'),
(118, 'admin', '21', 'Hello Jona', '2022-12-13 12:39:32'),
(120, '26', 'admin', 'Hello', '2023-07-12 15:44:16'),
(121, '26', 'admin', 'how are you doing', '2023-07-12 15:44:22'),
(122, '26', 'admin', 'its been a longtime ', '2023-07-12 15:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `model_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `fullName`, `phone`, `model_id`) VALUES
(16, 'James Miller', '123456', 46),
(17, 'Mavis Beacon', '303030', 46),
(18, 'King Moses', '024888', 38),
(19, 'moses', '2334565', 46),
(20, 'Malik Brown', '002211', 47),
(21, 'Jona Beans', '334455', 38),
(22, 'clove', '8654', 38),
(23, 'danny', '1212', 38),
(24, 'danny', '1212', 38),
(25, 'dan', '123', 46),
(26, 'salif', '2336555223', 38),
(27, 'salif', '2336555223', 38);

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `id` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `interest` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `service` varchar(100) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `bodyType` varchar(100) NOT NULL,
  `MatchName` varchar(100) NOT NULL,
  `MatchNumber` varchar(50) NOT NULL,
  `amount` decimal(19,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`id`, `fullName`, `mobile`, `interest`, `description`, `service`, `age`, `gender`, `image`, `image2`, `bodyType`, `MatchName`, `MatchNumber`, `amount`) VALUES
(38, 'Cynthia Morgan', '02619888456', 'Dancing', 'i like cooking', 'Regular', '28', 'Female', '0b1d2adb029d20f0eb19fe50cc243178.jpg', '39165bf2832ef4988cb56ccc9fc39720.jpg', 'Slim', 'salif', '2336555223', '50.00'),
(46, 'Sandras Banks Mira', '2336555223', 'hiking,dancing,Singing', 'good', 'Regular', '30', 'Female', 'darren-lawrence.jpg', 'jeferson-gomes.jpg', 'Thick,Slender', 'dan', '123', '500.00'),
(47, 'Kelly Brown', '030556985', 'Football', 'i like cooking', 'Regular', '24', 'Female', 'carlos-augusto.jpg', 'pexels-pixabay.jpg', 'Thick', 'Malik Brown', '002211', '500.00'),
(49, 'test', '0558628473', 'Adventure, Swimming', 'very hard working and good ', 'Regular', '28', 'Female', 'home-enterprise-2.png', 'home-entreprenour-2.png', 'Slender, Tech', '', '', '5000.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
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
('root', '{\"snap_to_grid\":\"off\",\"relation_lines\":\"true\",\"angular_direct\":\"direct\"}');

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

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'sawyer', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"activites\",\"alert\",\"bank_detail\",\"card_detail\",\"dashboard\",\"signup\"],\"table_structure[]\":[\"activites\",\"alert\",\"bank_detail\",\"card_detail\",\"dashboard\",\"signup\"],\"table_data[]\":[\"activites\",\"alert\",\"bank_detail\",\"card_detail\",\"dashboard\",\"signup\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

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
('root', '[{\"db\":\"bcoin\",\"table\":\"signup\"},{\"db\":\"kruca\",\"table\":\"admin\"},{\"db\":\"kruca\",\"table\":\"client\"},{\"db\":\"sawyer\",\"table\":\"alert\"},{\"db\":\"sawyer\",\"table\":\"signup\"},{\"db\":\"sawyer\",\"table\":\"bank_detail\"},{\"db\":\"sawyer\",\"table\":\"card_detail\"},{\"db\":\"sawyer\",\"table\":\"activites\"},{\"db\":\"sawyer\",\"table\":\"dashboard\"},{\"db\":\"kruca\",\"table\":\"model\"}]');

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

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'qruca', 'user', '{\"CREATE_TIME\":\"2022-11-12 22:17:33\",\"col_order\":[0,1,2,3,4,5,10,6,7,8,9],\"col_visib\":[1,1,1,1,1,1,1,1,1,1,1]}', '2022-11-13 16:52:18');

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
('root', '2024-05-20 11:21:34', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":177,\"ThemeDefault\":\"pmahomme\"}');

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
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Database: `qruca`
--
CREATE DATABASE IF NOT EXISTS `qruca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `qruca`;

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `username`, `password`) VALUES
(1, 'mark005', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_name`, `upload_date`) VALUES
(4, 'WhatsApp Image 2022-11-15 at 12.56.07.jpg', '2022-11-18 00:31:41'),
(8, 'WhatsApp Image 2022-11-15 at 12.56.07.jpg', '2022-11-18 00:33:46'),
(9, 'WhatsApp Image 2022-11-15 at 12.38.20k.jpg', '2022-11-18 00:33:46'),
(10, 'WhatsApp Image 2022-11-15 at 12.38.19..jpg', '2022-11-18 00:33:46'),
(11, 'WhatsApp Image 2022-11-15 at 12.3.jpg', '2022-11-18 01:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `age` int(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `service` varchar(100) NOT NULL,
  `match_name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `body_type` varchar(200) NOT NULL,
  `interest` varchar(255) NOT NULL,
  `match_no` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `amount` int(200) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `age`, `gender`, `service`, `match_name`, `phone`, `image2`, `body_type`, `interest`, `match_no`, `image`, `amount`, `description`) VALUES
(48, 'Cynthia Marvin', 25, 'female', 'regular', '', '0261965074', 'WhatsApp Image 2022-11-15 at 12.38.19..jpg', 'Thick', '', '', 'WhatsApp Image 2022-11-15 at 12.38.20k.jpg', 250, ''),
(49, 'Jane Doe', 25, 'female', 'regular', 'Matha Brown', '0261965074', 'WhatsApp Image 2022-11-15 at 12.38..jpg', 'Thick', 'Adventure, Swimming', '0245555555', 'WhatsApp Image 2022-11-15 at 12.3.jpg', 200, ''),
(50, 'Emy white', 25, 'female', 'regular', '', '0261965074', 'WhatsApp Image 2022-11-15 at 12.38.20k.jpg', 'Thick', 'Movies', '', 'WhatsApp Image 2022-11-15 at 12.56.07.jpg', 350, ''),
(51, 'Pat Mary', 20, 'female', 'regular', '', '0261965074', 'gfd.jpg', 'Thick', '', '', 'WhatsApp Image 2022-11-15 at 12.38.20.jpg', 50, ''),
(52, 'Angela Yu', 23, 'female', 'regular', 'Mavin Gray', '0245555555', 'WhatsApp Image 2022-11-15 at 12.3.jpg', 'Slim', '', '0558628473', 'WhatsApp Image 2022-11-15 at 12.38.19..jpg', 200, ''),
(53, 'Matha Brown', 20, 'female', 'regular', '', '123', 'WhatsApp Image 2022-12-01 at 09.22.56.jpg', 'Slim', 'Adventure, Swimming', '', 'IMG-20221206-WA0004.jpg', 2000, 'good ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- Database: `sawyer`
--
CREATE DATABASE IF NOT EXISTS `sawyer` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sawyer`;

-- --------------------------------------------------------

--
-- Table structure for table `activites`
--

CREATE TABLE `activites` (
  `id` int(11) NOT NULL,
  `accessCode` varchar(100) NOT NULL,
  `type` text NOT NULL,
  `amount` varchar(255) NOT NULL,
  `t_id` varchar(100) NOT NULL,
  `fromAcc` varchar(100) NOT NULL,
  `toAcc` varchar(100) NOT NULL,
  `fee` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activites`
--

INSERT INTO `activites` (`id`, `accessCode`, `type`, `amount`, `t_id`, `fromAcc`, `toAcc`, `fee`, `status`, `date`, `email`) VALUES
(1, '210020', 'Withdrawal', '$ 300,500,000.02', 'DH0122SDKHFHSDH7', 'Savings', 'Credit Card', '$ 220', 'Success', '15/02/2023', 'dekin@gmail.com'),
(2, '210020', 'Deposit', '$50,000.00', 'CHGH126GGF', 'Credit card', 'Bank Account', '$0', 'Success', '17/03/2023', ''),
(3, '', 'Transfer to Wallet', '$ 3,000', '5698569', 'Credit Card', 'Bank Account', '$15', 'Processing', '20/03/2023', 'dekin@gmail.com'),
(4, '', 'Transfer to Wallet', '$ 5000', '5698569', 'Credit Card', 'Bank Account', '$15', 'Completed', '16/09/2022', 'aloghana@gmail.com'),
(5, '', 'Wire Transfer', '$ 20,000,010.00', 'ACRAF23DB3C4', 'Benari Jewelers', 'Account', '$ 0', 'Completed', '10/04/2023', 'Dd2224166@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE `alert` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL,
  `color` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alert`
--

INSERT INTO `alert` (`id`, `email`, `title`, `message`, `color`, `time`) VALUES
(1, 'dekin@gmail.com', 'Account Suspended', 'This account is temporarily suspended due to suspicious activities', 'bg-danger', '5 minutes ago');

-- --------------------------------------------------------

--
-- Table structure for table `bank_detail`
--

CREATE TABLE `bank_detail` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ssn` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bankName` varchar(100) NOT NULL,
  `amount` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank_detail`
--

INSERT INTO `bank_detail` (`id`, `username`, `password`, `ssn`, `email`, `bankName`, `amount`) VALUES
(46, '0000000001', '12345678', '', 'phaisalsalif@gmail.com', 'Capital one', '500.00'),
(47, '0000000001', '12345678', '', 'salifusamira202030@icloud.com', 'Citi bank', '500.00');

-- --------------------------------------------------------

--
-- Table structure for table `card_detail`
--

CREATE TABLE `card_detail` (
  `userAccName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE `dashboard` (
  `id` int(11) NOT NULL,
  `accessCode` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `accNumber` varchar(100) NOT NULL,
  `accName` varchar(100) NOT NULL,
  `internalRef` varchar(100) NOT NULL,
  `accType` varchar(100) NOT NULL,
  `balance` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `received` varchar(100) NOT NULL,
  `loan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard`
--

INSERT INTO `dashboard` (`id`, `accessCode`, `email`, `accNumber`, `accName`, `internalRef`, `accType`, `balance`, `status`, `received`, `loan`) VALUES
(1, '331100', 'dekin@gmail.com', '425562656', 'Dekin Banks', 'CT4005GH', 'Checking', '$ 5000', 'Active', '$ 2,000,450.00', '$0'),
(4, '6040', 'aloghana@gmail.com', '605445585665', 'Dekin Banks', 'CT4005GH', 'Checking', '$ 5000', 'Active', '20,000,000.00', '$ 8,000'),
(5, '331100', 'dekin@gmail.com', '425562656', 'Dekin Banks', 'CT4005GH', 'Checking', '$ 5000', 'Active', '$ 2,000,450.00', '$0'),
(6, '331100', 'dekin@gmail.com', '425562656', 'Dekin Banks', 'CT4005GH', 'Checking', '$ 5000', 'Active', '$ 2,000,450.00', '$0'),
(7, '442211', 'stanelyreese202030@gmail.com', '4366185678903450', 'Stanley Reese', 'CT57777', 'Checking', '$200,000,000.00', 'Active', '$ 200,000,000.00', '$0'),
(8, '065548', 'Dd2224166@gmail.com', '3500567980', 'Diana Daniels', 'TXN-4567-8901-23', 'checking', '$ 20,000,010.00', 'Active', '$ 20,000,010.00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `accessCode` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `username`, `email`, `accessCode`, `password`) VALUES
(12, 'dekin_dev', 'dekin@gmail.com', '331100', 'dekin11'),
(13, 'Stan202030', 'stanelyreese202030@gmail.com', '442211', 'Alkaline30'),
(14, 'Diana_Daniels04', 'Dd2224166@gmail.com', '065548', 'callmediana003');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activites`
--
ALTER TABLE `activites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alert`
--
ALTER TABLE `alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_detail`
--
ALTER TABLE `bank_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard`
--
ALTER TABLE `dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activites`
--
ALTER TABLE `activites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `alert`
--
ALTER TABLE `alert`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_detail`
--
ALTER TABLE `bank_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `dashboard`
--
ALTER TABLE `dashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `testdb`
--
CREATE DATABASE IF NOT EXISTS `testdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `testdb`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
