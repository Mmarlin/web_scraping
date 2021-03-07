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
-- Table structure for table `zastava`
--

CREATE TABLE `zastava` (
  `id` int(11) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `dealer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zastava`
--

INSERT INTO `zastava` (`id`, `model`, `type`, `product_name`, `product_id`, `price`, `dealer`) VALUES
(1, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', 'P 23 096', '13,79 €', 'BREMBO'),
(2, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', 'P 23 160', '14,08 €', 'BREMBO'),
(3, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', 'P 23 060', '15,17 €', 'BREMBO'),
(4, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', '8DB 355 019-161', '22,89 €', 'HELLA PAGID'),
(5, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', '8DB 355 019-151', '23,65 €', 'HELLA PAGID'),
(6, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', '2143602', '18,85 €', 'TEXTAR'),
(7, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', '2143603', '23,63 €', 'TEXTAR'),
(8, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', '1170044', '14,85 €', 'METZGER'),
(9, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', '1170147', '18,90 €', 'METZGER'),
(10, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', '6375', '19,36 €', 'MAPCO'),
(11, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', '1563602710', '14,41 €', 'JP GROUP'),
(12, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', '822-159-1', '12,86 €', 'CIFAM'),
(13, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', 'PD04.502', '19,03 €', 'FRIGAIR'),
(14, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', '363916060220', '17,23 €', 'MAGNETI MARELLI'),
(15, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', '363916060219', '19,38 €', 'MAGNETI MARELLI'),
(16, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', '363916060454', '23,49 €', 'MAGNETI MARELLI'),
(17, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', '363700423160', '30,32 €', 'MAGNETI MARELLI'),
(18, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', '363700423060', '34,98 €', 'MAGNETI MARELLI'),
(19, '10 (188), ab 10/05', '1.2 60, 60 PS, 44 kW, ab 10/05', 'brake_pads', '363700423096', '34,98 €', 'MAGNETI MARELLI'),
(20, '101 (1100), 06/72 bis 12/93', '1.1, 56 PS, 41 kW, 05/75 bis 12/93', 'brake_pads', 'P 23 003', '14,18 €', 'BREMBO'),
(21, '101 (1100), 06/72 bis 12/93', '1.1, 56 PS, 41 kW, 05/75 bis 12/93', 'brake_pads', 'GDB106', '16,90 €', 'TRW'),
(22, '101 (1100), 06/72 bis 12/93', '1.1, 56 PS, 41 kW, 05/75 bis 12/93', 'brake_pads', '2007306', '17,33 €', 'TEXTAR'),
(23, '101 (1100), 06/72 bis 12/93', '1.1, 56 PS, 41 kW, 05/75 bis 12/93', 'brake_pads', 'BL2253A1', '20,05 €', 'FTE'),
(24, '101 (1100), 06/72 bis 12/93', '1.1, 56 PS, 41 kW, 05/75 bis 12/93', 'brake_pads', '0022.00', '15,11 €', 'REMSA'),
(25, '101 (1100), 06/72 bis 12/93', '1.1, 56 PS, 41 kW, 05/75 bis 12/93', 'brake_pads', '001130', '27,21 €', 'REMSA'),
(26, '101 (1100), 06/72 bis 12/93', '1.1, 56 PS, 41 kW, 05/75 bis 12/93', 'brake_pads', '05P003', '10,93 €', 'LPR'),
(27, '101 (1100), 06/72 bis 12/93', '1.1, 55 PS, 40 kW, 06/73 bis 01/90', 'brake_pads', 'P 23 003', '14,18 €', 'BREMBO'),
(28, '101 (1100), 06/72 bis 12/93', '1.1, 55 PS, 40 kW, 06/73 bis 01/90', 'brake_pads', 'FDB29', '15,11 €', 'FERODO'),
(29, '101 (1100), 06/72 bis 12/93', '1.1, 55 PS, 40 kW, 06/73 bis 01/90', 'brake_pads', '571463CH', '48,31 €', 'CHAMPION'),
(30, '101 (1100), 06/72 bis 12/93', '1.1, 55 PS, 40 kW, 06/73 bis 01/90', 'brake_pads', '2007306', '17,33 €', 'TEXTAR'),
(31, '101 (1100), 06/72 bis 12/93', '1.1, 55 PS, 40 kW, 06/73 bis 01/90', 'brake_pads', 'BL2253A1', '20,05 €', 'FTE'),
(32, '101 (1100), 06/72 bis 12/93', '1.1, 55 PS, 40 kW, 06/73 bis 01/90', 'brake_pads', '0022.00', '15,11 €', 'REMSA'),
(33, '101 (1100), 06/72 bis 12/93', '1.1, 55 PS, 40 kW, 06/73 bis 01/90', 'brake_pads', '001130', '27,21 €', 'REMSA'),
(34, '101 (1100), 06/72 bis 12/93', '1.1, 55 PS, 40 kW, 06/73 bis 01/90', 'brake_pads', '50-00-0249', '16,64 €', 'ASHIKA'),
(35, '101 (1100), 06/72 bis 12/93', '1.1, 50 PS, 37 kW, 12/75 bis 01/80', 'brake_pads', 'P 23 003', '14,18 €', 'BREMBO'),
(36, '101 (1100), 06/72 bis 12/93', '1.1, 50 PS, 37 kW, 12/75 bis 01/80', 'brake_pads', 'FDB29', '15,11 €', 'FERODO'),
(37, '101 (1100), 06/72 bis 12/93', '1.1, 50 PS, 37 kW, 12/75 bis 01/80', 'brake_pads', '571463CH', '48,31 €', 'CHAMPION'),
(38, '101 (1100), 06/72 bis 12/93', '1.1, 50 PS, 37 kW, 12/75 bis 01/80', 'brake_pads', '2007306', '17,33 €', 'TEXTAR'),
(39, '101 (1100), 06/72 bis 12/93', '1.1, 50 PS, 37 kW, 12/75 bis 01/80', 'brake_pads', 'BL2253A1', '20,05 €', 'FTE'),
(40, '101 (1100), 06/72 bis 12/93', '1.1, 50 PS, 37 kW, 12/75 bis 01/80', 'brake_pads', '0022.00', '15,11 €', 'REMSA'),
(41, '101 (1100), 06/72 bis 12/93', '1.1, 50 PS, 37 kW, 12/75 bis 01/80', 'brake_pads', '001130', '27,21 €', 'REMSA'),
(42, '101 (1100), 06/72 bis 12/93', '1.1, 50 PS, 37 kW, 12/75 bis 01/80', 'brake_pads', '50-00-0249', '16,64 €', 'ASHIKA'),
(43, '101 (1100), 06/72 bis 12/93', '1.1 Super, 64 PS, 47 kW, 07/79 bis 09/81', 'brake_pads', 'P 23 003', '14,18 €', 'BREMBO'),
(44, '101 (1100), 06/72 bis 12/93', '1.1 Super, 64 PS, 47 kW, 07/79 bis 09/81', 'brake_pads', 'FDB29', '15,11 €', 'FERODO'),
(45, '101 (1100), 06/72 bis 12/93', '1.1 Super, 64 PS, 47 kW, 07/79 bis 09/81', 'brake_pads', '571463CH', '48,31 €', 'CHAMPION'),
(46, '101 (1100), 06/72 bis 12/93', '1.1 Super, 64 PS, 47 kW, 07/79 bis 09/81', 'brake_pads', '2007306', '17,33 €', 'TEXTAR'),
(47, '101 (1100), 06/72 bis 12/93', '1.1 Super, 64 PS, 47 kW, 07/79 bis 09/81', 'brake_pads', 'BL2253A1', '20,05 €', 'FTE'),
(48, '101 (1100), 06/72 bis 12/93', '1.1 Super, 64 PS, 47 kW, 07/79 bis 09/81', 'brake_pads', '0022.00', '15,11 €', 'REMSA'),
(49, '101 (1100), 06/72 bis 12/93', '1.1 Super, 64 PS, 47 kW, 07/79 bis 09/81', 'brake_pads', '001130', '27,21 €', 'REMSA'),
(50, '101 (1100), 06/72 bis 12/93', '1.1 Super, 64 PS, 47 kW, 07/79 bis 09/81', 'brake_pads', '50-00-0249', '16,64 €', 'ASHIKA'),
(51, 'YUGO, 04/80 bis 06/95', '60 EFI (145 A), 60 PS, 44 kW, 08/91 bis 06/95', 'brake_pads', 'P 23 044', '22,32 €', 'BREMBO'),
(52, 'YUGO, 04/80 bis 06/95', '60 EFI (145 A), 60 PS, 44 kW, 08/91 bis 06/95', 'brake_pads', 'GDB106', '16,90 €', 'TRW'),
(53, 'YUGO, 04/80 bis 06/95', '60 EFI (145 A), 60 PS, 44 kW, 08/91 bis 06/95', 'brake_pads', '2110005', '28,56 €', 'TEXTAR'),
(54, 'YUGO, 04/80 bis 06/95', '60 EFI (145 A), 60 PS, 44 kW, 08/91 bis 06/95', 'brake_pads', '0264.12', '27,76 €', 'REMSA'),
(55, 'YUGO, 04/80 bis 06/95', '60 EFI (145 A), 60 PS, 44 kW, 08/91 bis 06/95', 'brake_pads', '822-001-0', '11,35 €', 'CIFAM'),
(56, 'YUGO, 04/80 bis 06/95', '60 EFI (145 A), 60 PS, 44 kW, 08/91 bis 06/95', 'brake_pads', '8DB 355 006-191', '35,06 €', 'HELLA PAGID'),
(57, 'YUGO, 04/80 bis 06/95', '60 EFI (145 A), 60 PS, 44 kW, 08/91 bis 06/95', 'brake_pads', '363700423044', '40,53 €', 'MAGNETI MARELLI'),
(58, 'YUGO, 04/80 bis 06/95', '60 EFI (145 A), 60 PS, 44 kW, 08/91 bis 06/95', 'brake_pads', '001130', '27,21 €', 'REMSA'),
(59, 'YUGO, 04/80 bis 06/95', '65 EFI (145 A), 65 PS, 48 kW, 07/81 bis 06/95', 'brake_pads', 'P 23 044', '22,32 €', 'BREMBO'),
(60, 'YUGO, 04/80 bis 06/95', '65 EFI (145 A), 65 PS, 48 kW, 07/81 bis 06/95', 'brake_pads', 'GDB106', '16,90 €', 'TRW'),
(61, 'YUGO, 04/80 bis 06/95', '65 EFI (145 A), 65 PS, 48 kW, 07/81 bis 06/95', 'brake_pads', '2110005', '28,56 €', 'TEXTAR'),
(62, 'YUGO, 04/80 bis 06/95', '65 EFI (145 A), 65 PS, 48 kW, 07/81 bis 06/95', 'brake_pads', 'LP30', '15,02 €', 'DELPHI'),
(63, 'YUGO, 04/80 bis 06/95', '65 EFI (145 A), 65 PS, 48 kW, 07/81 bis 06/95', 'brake_pads', '0264.12', '27,76 €', 'REMSA'),
(64, 'YUGO, 04/80 bis 06/95', '65 EFI (145 A), 65 PS, 48 kW, 07/81 bis 06/95', 'brake_pads', '8DB 355 006-191', '35,06 €', 'HELLA PAGID'),
(65, 'YUGO, 04/80 bis 06/95', '65 EFI (145 A), 65 PS, 48 kW, 07/81 bis 06/95', 'brake_pads', '363700423044', '40,53 €', 'MAGNETI MARELLI'),
(66, 'YUGO, 04/80 bis 06/95', '65 EFI (145 A), 65 PS, 48 kW, 07/81 bis 06/95', 'brake_pads', 'BL2253A1', '20,05 €', 'FTE'),
(67, 'YUGO, 04/80 bis 06/95', '65 EFI (145 A), 65 PS, 48 kW, 07/81 bis 06/95', 'brake_pads', '001130', '27,21 €', 'REMSA'),
(68, 'YUGO, 04/80 bis 06/95', '65 EFI (145 A), 65 PS, 48 kW, 07/81 bis 06/95', 'brake_pads', '05P003', '10,93 €', 'LPR'),
(69, 'YUGO, 04/80 bis 06/95', '65 EFI (145 A), 65 PS, 48 kW, 07/81 bis 06/95', 'brake_pads', '822-059-1', '29,54 €', 'CIFAM'),
(70, 'YUGO FLORIDA, 10/88 bis 11/08', '1.3 (103 A), 68 PS, 50 kW, 03/91 bis 11/08', 'brake_pads', 'P 23 044', '22,32 €', 'BREMBO'),
(71, 'YUGO FLORIDA, 10/88 bis 11/08', '1.3 (103 A), 68 PS, 50 kW, 03/91 bis 11/08', 'brake_pads', '2110005', '28,56 €', 'TEXTAR'),
(72, 'YUGO FLORIDA, 10/88 bis 11/08', '1.3 (103 A), 68 PS, 50 kW, 03/91 bis 11/08', 'brake_pads', '0264.12', '27,76 €', 'REMSA'),
(73, 'YUGO FLORIDA, 10/88 bis 11/08', '1.3 (103 A), 68 PS, 50 kW, 03/91 bis 11/08', 'brake_pads', '8DB 355 006-191', '35,06 €', 'HELLA PAGID'),
(74, 'YUGO FLORIDA, 10/88 bis 11/08', '1.3 (103 A), 68 PS, 50 kW, 03/91 bis 11/08', 'brake_pads', '363700423044', '40,53 €', 'MAGNETI MARELLI'),
(75, 'YUGO FLORIDA, 10/88 bis 11/08', '1.3 (103 A), 68 PS, 50 kW, 03/91 bis 11/08', 'brake_pads', '001130', '27,21 €', 'REMSA'),
(76, 'YUGO FLORIDA, 10/88 bis 11/08', '1.3 (103 A), 68 PS, 50 kW, 03/91 bis 11/08', 'brake_pads', '05P468', '23,42 €', 'LPR'),
(77, 'YUGO FLORIDA, 10/88 bis 11/08', '1.3 (103 A), 68 PS, 50 kW, 03/91 bis 11/08', 'brake_pads', '822-059-1', '29,54 €', 'CIFAM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `zastava`
--
ALTER TABLE `zastava`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `zastava`
--
ALTER TABLE `zastava`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
