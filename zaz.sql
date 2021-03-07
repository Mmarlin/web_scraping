-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2021 at 12:59 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scraper`
--

-- --------------------------------------------------------

--
-- Table structure for table `zaz`
--

CREATE TABLE `zaz` (
  `id` int(11) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `dealer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zaz`
--

INSERT INTO `zaz` (`id`, `model`, `type`, `product_name`, `product_id`, `price`, `dealer`) VALUES
(1, 'TAVRIA (1102), 01/87 bis 12/07', '1.1, 50 PS, 37 kW, 01/89 bis 12/07', 'brake_pads', 'P 41 003', '25,64 €', 'BREMBO'),
(2, 'TAVRIA (1102), 01/87 bis 12/07', '1.1, 50 PS, 37 kW, 01/89 bis 12/07', 'brake_pads', 'P 41 003X', '32,97 €', 'BREMBO'),
(3, 'TAVRIA (1102), 01/87 bis 12/07', '1.1, 50 PS, 37 kW, 01/89 bis 12/07', 'brake_pads', '0 986 491 700', '25,19 €', 'BOSCH'),
(4, 'TAVRIA (1102), 01/87 bis 12/07', '1.1, 50 PS, 37 kW, 01/89 bis 12/07', 'brake_pads', 'GDB469', '23,67 €', 'TRW'),
(5, 'TAVRIA (1102), 01/87 bis 12/07', '1.1, 50 PS, 37 kW, 01/89 bis 12/07', 'brake_pads', 'FDB527', '20,72 €', 'FERODO'),
(6, 'TAVRIA (1102), 01/87 bis 12/07', '1.1, 50 PS, 37 kW, 01/89 bis 12/07', 'brake_pads', 'J3601075', '16,19 €', 'HERTH+BUSS JAKOPARTS'),
(7, 'TAVRIA (1102), 01/87 bis 12/07', '1.1, 50 PS, 37 kW, 01/89 bis 12/07', 'brake_pads', '2117002', '31,18 €', 'TEXTAR'),
(8, 'TAVRIA (1102), 01/87 bis 12/07', '1.1, 50 PS, 37 kW, 01/89 bis 12/07', 'brake_pads', '571346CH', '60,73 €', 'CHAMPION'),
(9, 'TAVRIA (1102), 01/87 bis 12/07', '1.1, 50 PS, 37 kW, 01/89 bis 12/07', 'brake_pads', '301406', '13,56 €', 'VALEO'),
(10, 'TAVRIA (1102), 01/87 bis 12/07', '1.1, 50 PS, 37 kW, 01/89 bis 12/07', 'brake_pads', '363700441003', '35,03 €', 'MAGNETI MARELLI'),
(11, 'TAVRIA (1102), 01/87 bis 12/07', '1.1, 50 PS, 37 kW, 01/89 bis 12/07', 'brake_pads', 'BL1254B1', '25,56 €', 'FTE'),
(12, 'TAVRIA (1102), 01/87 bis 12/07', '1.1, 50 PS, 37 kW, 01/89 bis 12/07', 'brake_pads', '0221.00', '24,82 €', 'REMSA'),
(13, 'TAVRIA (1102), 01/87 bis 12/07', '1.1, 50 PS, 37 kW, 01/89 bis 12/07', 'brake_pads', '001130', '27,21 €', 'REMSA'),
(14, 'TAVRIA (1102), 01/87 bis 12/07', '1.1, 50 PS, 37 kW, 01/89 bis 12/07', 'brake_pads', '05P288', '14,71 €', 'LPR'),
(15, 'TAVRIA (1102), 01/87 bis 12/07', '1.2, 58 PS, 43 kW, 02/87 bis 12/07', 'brake_pads', 'P 41 003', '25,64 €', 'BREMBO'),
(16, 'TAVRIA (1102), 01/87 bis 12/07', '1.2, 58 PS, 43 kW, 02/87 bis 12/07', 'brake_pads', 'P 41 003X', '32,97 €', 'BREMBO'),
(17, 'TAVRIA (1102), 01/87 bis 12/07', '1.2, 58 PS, 43 kW, 02/87 bis 12/07', 'brake_pads', 'GDB1446', '19,63 €', 'TRW'),
(18, 'TAVRIA (1102), 01/87 bis 12/07', '1.2, 58 PS, 43 kW, 02/87 bis 12/07', 'brake_pads', 'GDB469', '23,67 €', 'TRW'),
(19, 'TAVRIA (1102), 01/87 bis 12/07', '1.2, 58 PS, 43 kW, 02/87 bis 12/07', 'brake_pads', 'J3601075', '16,19 €', 'HERTH+BUSS JAKOPARTS'),
(20, 'TAVRIA (1102), 01/87 bis 12/07', '1.2, 58 PS, 43 kW, 02/87 bis 12/07', 'brake_pads', '2117002', '31,18 €', 'TEXTAR'),
(21, 'TAVRIA (1102), 01/87 bis 12/07', '1.2, 58 PS, 43 kW, 02/87 bis 12/07', 'brake_pads', '301406', '13,56 €', 'VALEO'),
(22, 'TAVRIA (1102), 01/87 bis 12/07', '1.2, 58 PS, 43 kW, 02/87 bis 12/07', 'brake_pads', '363700441003', '35,03 €', 'MAGNETI MARELLI'),
(23, 'TAVRIA (1102), 01/87 bis 12/07', '1.3, 60 PS, 44 kW, 01/89 bis 12/07', 'brake_pads', 'P 41 003', '25,64 €', 'BREMBO'),
(24, 'TAVRIA (1102), 01/87 bis 12/07', '1.3, 60 PS, 44 kW, 01/89 bis 12/07', 'brake_pads', 'P 41 003X', '32,97 €', 'BREMBO'),
(25, 'TAVRIA (1102), 01/87 bis 12/07', '1.3, 60 PS, 44 kW, 01/89 bis 12/07', 'brake_pads', 'GDB469', '23,67 €', 'TRW'),
(26, 'TAVRIA (1102), 01/87 bis 12/07', '1.3, 60 PS, 44 kW, 01/89 bis 12/07', 'brake_pads', 'FDB527', '20,72 €', 'FERODO'),
(27, 'TAVRIA (1102), 01/87 bis 12/07', '1.3, 60 PS, 44 kW, 01/89 bis 12/07', 'brake_pads', 'J3601075', '16,19 €', 'HERTH+BUSS JAKOPARTS'),
(28, 'TAVRIA (1102), 01/87 bis 12/07', '1.3, 60 PS, 44 kW, 01/89 bis 12/07', 'brake_pads', '2117002', '31,18 €', 'TEXTAR'),
(29, 'TAVRIA (1102), 01/87 bis 12/07', '1.3, 60 PS, 44 kW, 01/89 bis 12/07', 'brake_pads', '571346CH', '60,73 €', 'CHAMPION'),
(30, 'TAVRIA (1102), 01/87 bis 12/07', '1.3, 60 PS, 44 kW, 01/89 bis 12/07', 'brake_pads', '301406', '13,56 €', 'VALEO'),
(31, 'TAVRIA (1102), 01/87 bis 12/07', '1.3, 60 PS, 44 kW, 01/89 bis 12/07', 'brake_pads', '363700441003', '35,03 €', 'MAGNETI MARELLI'),
(32, 'TAVRIA (1102), 01/87 bis 12/07', '1.3, 60 PS, 44 kW, 01/89 bis 12/07', 'brake_pads', '363916060530', '64,92 €', 'MAGNETI MARELLI'),
(33, 'TAVRIA (1102), 01/87 bis 12/07', '1.3, 60 PS, 44 kW, 01/89 bis 12/07', 'brake_pads', '363700506025', '81,35 €', 'MAGNETI MARELLI'),
(34, 'TAVRIA (1102), 01/87 bis 12/07', '1.3, 60 PS, 44 kW, 01/89 bis 12/07', 'brake_pads', 'BL1254B1', '25,56 €', 'FTE'),
(35, 'TAVRIA (1102), 01/87 bis 12/07', '1.3, 60 PS, 44 kW, 01/89 bis 12/07', 'brake_pads', '0221.00', '24,82 €', 'REMSA'),
(36, 'TAVRIA (1102), 01/87 bis 12/07', '1.3, 60 PS, 44 kW, 01/89 bis 12/07', 'brake_pads', '001130', '27,21 €', 'REMSA'),
(37, 'TAVRIA (1102), 01/87 bis 12/07', '1.3, 60 PS, 44 kW, 01/89 bis 12/07', 'brake_pads', '05P288', '14,71 €', 'LPR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `zaz`
--
ALTER TABLE `zaz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `zaz`
--
ALTER TABLE `zaz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
