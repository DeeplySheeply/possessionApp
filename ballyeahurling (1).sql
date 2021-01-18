-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2021 at 03:11 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ballyeahurling`
--

-- --------------------------------------------------------

--
-- Table structure for table `matchdb`
--

CREATE TABLE `matchdb` (
  `id` int(11) NOT NULL,
  `possession` int(11) NOT NULL,
  `defence` int(11) NOT NULL,
  `player` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matchdb`
--

INSERT INTO `matchdb` (`id`, `possession`, `defence`, `player`) VALUES
(2, 98, 0, 'OJ'),
(3, 35, 0, 'BrianCarrig'),
(4, 21, 0, 'PeterCasey'),
(5, 21, 0, 'PaulFlanagan'),
(6, 92, 0, 'GusKeane');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matchdb`
--
ALTER TABLE `matchdb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matchdb`
--
ALTER TABLE `matchdb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
