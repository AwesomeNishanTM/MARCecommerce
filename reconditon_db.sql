-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2022 at 11:57 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reconditon_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `queriesNo` int(255) NOT NULL,
  `name` char(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`queriesNo`, `name`, `email`, `number`) VALUES
(1, 'abcd', 'abcd@gmail.com', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `validation`
--

CREATE TABLE `validation` (
  `SN` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `validation`
--

INSERT INTO `validation` (`SN`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `vehicleinfo`
--

CREATE TABLE `vehicleinfo` (
  `vehicleSN` int(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `bikename` varchar(255) NOT NULL,
  `model` date NOT NULL,
  `price` int(255) NOT NULL,
  `bike_number` varchar(255) NOT NULL,
  `owner_no` int(255) NOT NULL,
  `images` text NOT NULL,
  `descriptions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicleinfo`
--

INSERT INTO `vehicleinfo` (`vehicleSN`, `company`, `bikename`, `model`, `price`, `bike_number`, `owner_no`, `images`, `descriptions`) VALUES
(2, 'Honda', 'Splender', '2009-02-18', 50000, 'Ba 45 Pa 2000', 5, 'img/splender.jpg', 'Comfortable bike');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`queriesNo`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `validation`
--
ALTER TABLE `validation`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `vehicleinfo`
--
ALTER TABLE `vehicleinfo`
  ADD PRIMARY KEY (`vehicleSN`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `queriesNo` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `validation`
--
ALTER TABLE `validation`
  MODIFY `SN` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicleinfo`
--
ALTER TABLE `vehicleinfo`
  MODIFY `vehicleSN` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
