-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 30, 2024 at 03:28 PM
-- Server version: 10.6.18-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quranapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `server_set`
--

CREATE TABLE `server_set` (
  `id` int(11) NOT NULL,
  `server_ip` varchar(15) NOT NULL,
  `port` int(11) NOT NULL,
  `surah_path` varchar(20) NOT NULL,
  `logo_path` varchar(20) NOT NULL,
  `logosvg_path` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `server_set`
--

INSERT INTO `server_set` (`id`, `server_ip`, `port`, `surah_path`, `logo_path`, `logosvg_path`) VALUES
(1, '41.224.12.230', 8080, '?surah=', '?logo=', '?logosvg=');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `server_set`
--
ALTER TABLE `server_set`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `server_set`
--
ALTER TABLE `server_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
