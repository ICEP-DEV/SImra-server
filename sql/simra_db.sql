-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2023 at 05:58 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simra_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `coordinate`
--

CREATE TABLE `coordinate` (
  `coorniadteId` int(11) NOT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `samplingId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coordinate`
--

INSERT INTO `coordinate` (`coorniadteId`, `longitude`, `latitude`, `samplingId`) VALUES
(2, '-10.3565545', '-20.3656125', 7),
(3, '-10.3565545', '-20.3656125', 7),
(6, '28.2292712', '-25.7478676', 21),
(7, '28.2292712', '-25.7478676', 22),
(8, '28.2292712', '-25.7478676', 23),
(9, '28.2292712', '-25.7478676', 24),
(10, '28.2292712', '-25.7478676', 25);

-- --------------------------------------------------------

--
-- Table structure for table `hydrogensulfide`
--

CREATE TABLE `hydrogensulfide` (
  `id` int(11) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `samplingId` int(11) DEFAULT NULL,
  `risk_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hydrogensulfide`
--

INSERT INTO `hydrogensulfide` (`id`, `status`, `samplingId`, `risk_type`) VALUES
(5, '0', 7, 'negative(No Risk)'),
(6, '1', 16, 'positive (Risk)'),
(7, '0', 17, 'Negative (No Risk)'),
(8, '1', 18, 'positive (Risk)'),
(9, '0', 19, 'Negative (No Risk)'),
(10, '1', 20, 'positive (Risk)');

-- --------------------------------------------------------

--
-- Table structure for table `microbial`
--

CREATE TABLE `microbial` (
  `microbialId` int(11) NOT NULL,
  `samplingId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `municipality`
--

CREATE TABLE `municipality` (
  `muni_id` int(11) NOT NULL,
  `muni_name` varchar(100) DEFAULT NULL,
  `province_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------
-- Dumping data for table `municipality`
/*INSERT INTO `municipality` (`muni_id`, `muni_name`, `province_id`) VALUES 
('1', 'eThekwini Metropolitan', '1');*/
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `province_id` varchar(10) NOT NULL,
  `province_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------
-- Dumping data for table `province`
INSERT INTO `province` (`province_id`, `province_name`) VALUES
(1, 'Kwazulu-Natal'),
(2, 'Gauteng'),
(3, 'Free State'),
(4, 'Limpopo'),
(5, 'Mpumalanga'),
(6, 'North west'),
(7, 'Western cape'),
(8, 'Estern cape'),
(9, 'Northen cape');

--
-- Table structure for table `samplingdata`
--

CREATE TABLE `samplingdata` (
  `samplingId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `weatherCondition` varchar(100) DEFAULT NULL,
  `sampling_date_created` datetime NOT NULL,
  `muni_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `samplingdata`
--

INSERT INTO `samplingdata` (`samplingId`, `userId`, `weatherCondition`, `sampling_date_created`, `muni_id`) VALUES
(3, 1, 'sunny', '2023-09-13 13:18:28', NULL),
(4, 1, 'sunny', '2023-09-13 13:52:29', NULL),
(5, 1, 'Wet', '2023-09-13 21:26:08', NULL),
(6, 1, 'Wet', '2023-09-13 21:28:17', NULL),
(7, 1, 'Wet', '2023-09-13 21:29:05', NULL),
(8, 1, 'Windy', '2023-09-13 22:48:25', NULL),
(9, 1, 'Windy', '2023-09-13 22:55:19', NULL),
(10, 1, 'Windy', '2023-09-13 22:57:58', NULL),
(11, 1, 'Windy', '2023-09-13 22:59:17', NULL),
(12, 1, 'Windy', '2023-09-13 23:12:04', NULL),
(13, 1, 'Windy', '2023-09-13 23:41:18', NULL),
(14, 1, 'Thunder and Lightning', '2023-09-13 23:45:19', NULL),
(15, 1, 'cloudy', '2023-09-14 07:10:42', NULL),
(16, 1, 'cloudy', '2023-09-14 07:12:37', NULL),
(17, 1, 'cloudy', '2023-09-14 07:14:39', NULL),
(18, 1, 'cloudy', '2023-09-14 07:16:12', NULL),
(19, 1, 'cloudy', '2023-09-14 07:17:07', NULL),
(20, 1, 'cloudy', '2023-09-14 07:29:08', NULL),
(21, 1, 'cloudy', '2023-09-14 07:29:31', NULL),
(22, 1, 'Windy', '2023-09-17 21:38:27', NULL),
(23, 1, 'Windy', '2023-09-17 21:38:56', NULL),
(24, 1, 'Windy', '2023-09-17 21:53:07', NULL),
(25, 1, 'Windy', '2023-09-17 21:53:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sanitaryinpectionquestion`
--

CREATE TABLE `sanitaryinpectionquestion` (
  `id` int(11) NOT NULL,
  `pitLatrine` tinyint(1) DEFAULT NULL,
  `domesticAnimal` tinyint(1) DEFAULT NULL,
  `diaperDisposal` tinyint(1) DEFAULT NULL,
  `wasteWaterRelease` tinyint(1) DEFAULT NULL,
  `openDefaction` tinyint(1) DEFAULT NULL,
  `unprotectedWaterSource` tinyint(1) DEFAULT NULL,
  `agriculturalActivity` tinyint(1) DEFAULT NULL,
  `observerLaundryActivity` tinyint(1) DEFAULT NULL,
  `samplingId` int(11) DEFAULT NULL,
  `risk_type` varchar(100) DEFAULT NULL,
  `total_avarage` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanitaryinpectionquestion`
--

INSERT INTO `sanitaryinpectionquestion` (`id`, `pitLatrine`, `domesticAnimal`, `diaperDisposal`, `wasteWaterRelease`, `openDefaction`, `unprotectedWaterSource`, `agriculturalActivity`, `observerLaundryActivity`, `samplingId`, `risk_type`, `total_avarage`) VALUES
(3, 0, 1, 1, 1, 1, 0, 1, 1, 7, 'high risk', 75),
(4, 0, 1, 1, 1, 1, 0, 1, 1, 7, 'high risk', 75),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 9, 'low risk', 0),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 10, 'low risk', 0),
(9, 1, 0, 1, 0, 1, 0, 1, 0, 12, 'medium risk', 50),
(10, 1, 1, 1, 0, 0, 1, 1, 1, 13, 'high risk', 75),
(12, 1, 0, 1, 0, 1, 0, 1, 0, 21, 'medium risk', 50),
(13, 1, 0, 1, 1, 0, 0, 0, 1, 22, 'medium risk', 50),
(14, 0, 0, 0, 0, 0, 0, 0, 0, 23, 'low risk', 0),
(15, 0, 1, 0, 1, 1, 0, 0, 1, 24, 'medium risk', 50),
(16, 1, 1, 1, 1, 1, 1, 1, 1, 25, 'very high risk', 100);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `mobileNo` varchar(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `level` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `mobileNo`, `password`, `firstname`, `lastname`, `level`) VALUES
(1, '0123456789', '123zxc', 'Gift', 'Mukwevho', 1);

-- --------------------------------------------------------

--
-- Table structure for table `watersource`
--

CREATE TABLE `watersource` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `waterAccessability` varchar(255) DEFAULT NULL,
  `samplingId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `watersource`
--

INSERT INTO `watersource` (`id`, `type`, `waterAccessability`, `samplingId`) VALUES
(1, 'River', 'hard', 3),
(4, 'Household Tap Water', 'Hard', NULL),
(5, 'Household Tap Water', 'Easy', NULL),
(6, 'Household Tap Water', 'Easy', NULL),
(7, 'Household Tap Water', 'Easy', NULL),
(8, 'Household Tap Water', 'Easy', NULL);

--
-- Table structure for table `reference pathogen`
--

CREATE TABLE `referencepathogen` (
  `pathogenid` int(11) NOT NULL,
  `pathogenName` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reference pathogen`
--
INSERT INTO `referencepathogen` (`pathogenid`, `pathogenName`, `model`) VALUES
(1, 'Cryptosporidium parvum', 'exponential'),
(2, ' E. coli O157:H7', 'beta-poisson'),
(3, 'Campylobacter jejuni', 'beta-poisson'),
(4, 'Salmonella typhi', 'beta-poisson'),
(5, 'S. Flexneri', 'beta-poisson'),
(6, 'Vibrio cholera', 'beta-poisson'),
(7, 'Giardia lambia', 'beta-poisson'),
(8, 'Entamoeba col', 'beta-poisson');

--
-- Table structure for table `parameters`
--

CREATE TABLE `parameters` (
  `parameterid` int(11) NOT NULL,
  `parameter_num` varchar(255) DEFAULT NULL
  `pathogenid` varchar(255) DEFAULT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parameters`
--
INSERT INTO `parameters` (`parameterid`, `parameter_num`, `pathogenid`) VALUES
(2, 'r= 0.059', 1),
(4, ' a= 0.4 and b=54.9 ', 2),
(6, 'a= 0.145 and b= 7.58 ', 3),
(8, 'a = 0.21 and b =49.78', 4),
(10, 'a = 0.256 and b = 1480', 5),
(12, 'a = 0.169 and b = 2305', 6),
(14, 'K = 0.0199', 7),
(16, 'a = 1.01E-01 N50 = 3.41E+02', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coordinate`
--
ALTER TABLE `coordinate`
  ADD PRIMARY KEY (`coorniadteId`),
  ADD KEY `samplingId` (`samplingId`);

--
-- Indexes for table `hydrogensulfide`
--
ALTER TABLE `hydrogensulfide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `samplingId` (`samplingId`);

--
-- Indexes for table `microbial`
--
ALTER TABLE `microbial`
  ADD PRIMARY KEY (`microbialId`),
  ADD KEY `samplingId` (`samplingId`);

--
-- Indexes for table `municipality`
--
ALTER TABLE `municipality`
  ADD PRIMARY KEY (`muni_id`),
  ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `samplingdata`
--
ALTER TABLE `samplingdata`
  ADD PRIMARY KEY (`samplingId`),
  ADD KEY `userId` (`userId`),
  ADD KEY `muni_id` (`muni_id`);

--
-- Indexes for table `sanitaryinpectionquestion`
--
ALTER TABLE `sanitaryinpectionquestion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sam_san` (`samplingId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `watersource`
--
ALTER TABLE `watersource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `samplingId` (`samplingId`);
--
-- Indexes for table `referencepathogen`
--
ALTER TABLE `referencepathogen`
  ADD PRIMARY KEY (`pathogenid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coordinate`
--
ALTER TABLE `coordinate`
  MODIFY `coorniadteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hydrogensulfide`
--
ALTER TABLE `hydrogensulfide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `microbial`
--
ALTER TABLE `microbial`
  MODIFY `microbialId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `municipality`
--
ALTER TABLE `municipality`
  MODIFY `muni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `samplingdata`
--
ALTER TABLE `samplingdata`
  MODIFY `samplingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sanitaryinpectionquestion`
--
ALTER TABLE `sanitaryinpectionquestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `watersource`
--
ALTER TABLE `watersource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

-- AUTO_INCREMENT for table `referencepathogen`
--
ALTER TABLE `referencepathogen`
  MODIFY `pathogenid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coordinate`
--
ALTER TABLE `coordinate`
  ADD CONSTRAINT `coordinate_ibfk_1` FOREIGN KEY (`samplingId`) REFERENCES `samplingdata` (`samplingId`);

--
-- Constraints for table `hydrogensulfide`
--
ALTER TABLE `hydrogensulfide`
  ADD CONSTRAINT `hydrogensulfide_ibfk_1` FOREIGN KEY (`samplingId`) REFERENCES `samplingdata` (`samplingId`);

--
-- Constraints for table `microbial`
--
ALTER TABLE `microbial`
  ADD CONSTRAINT `microbial_ibfk_1` FOREIGN KEY (`samplingId`) REFERENCES `samplingdata` (`samplingId`);

--
-- Constraints for table `municipality`
--
ALTER TABLE `municipality`
  ADD CONSTRAINT `municipality_ibfk_1` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`);

--
-- Constraints for table `samplingdata`
--
ALTER TABLE `samplingdata`
  ADD CONSTRAINT `samplingdata_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  ADD CONSTRAINT `samplingdata_ibfk_2` FOREIGN KEY (`muni_id`) REFERENCES `municipality` (`muni_id`);

--
-- Constraints for table `sanitaryinpectionquestion`
--
ALTER TABLE `sanitaryinpectionquestion`
  ADD CONSTRAINT `sam_san` FOREIGN KEY (`samplingId`) REFERENCES `samplingdata` (`samplingId`);

--
-- Constraints for table `watersource`
--
ALTER TABLE `watersource`
  ADD CONSTRAINT `watersource_ibfk_1` FOREIGN KEY (`samplingId`) REFERENCES `samplingdata` (`samplingId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
