-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2023 at 06:56 PM
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
-- Database: `presentseek`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajp_lecture`
--

CREATE TABLE `ajp_lecture` (
  `RollNO` bigint(255) DEFAULT NULL,
  `Names` varchar(300) DEFAULT NULL,
  `Sem` int(11) DEFAULT NULL,
  `Present` int(11) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ajp_lecture`
--

INSERT INTO `ajp_lecture` (`RollNO`, `Names`, `Sem`, `Present`, `Total`) VALUES
(206160307033, 'jay', 6, 1, 1),
(206160307034, 'maaz', 6, 1, 1),
(206160307035, 'abhishek', 6, 1, 1),
(206160307041, 'ayan saiyad', 6, 1, 1),
(206160307045, 'tejas gowswami', 6, 1, 1),
(206160307042, 'dhvanil patel', 6, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `SName` varchar(255) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `RollNO` bigint(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`SName`, `class_name`, `date`, `status`, `RollNO`) VALUES
('maaz', 'Mcad_lecture', '2023-06-03', 'P', 206160307034),
('abhishek', 'Mcad_lecture', '2023-06-03', 'P', 206160307035),
('ayan saiyad', 'Mcad_lecture', '2023-06-03', 'P', 206160307041),
('dhvanil patel', 'Mcad_lecture', '2023-06-03', 'P', 206160307042),
('tejas gowswami', 'Mcad_lecture', '2023-06-03', 'P', 206160307045),
('maaz', 'NMA_lecture', '2023-06-03', 'P', 206160307034),
('abhishek', 'NMA_lecture', '2023-06-03', 'P', 206160307035),
('ayan saiyad', 'NMA_lecture', '2023-06-03', 'P', 206160307041),
('dhvanil patel', 'NMA_lecture', '2023-06-03', 'P', 206160307042),
('tejas gowswami', 'NMA_lecture', '2023-06-03', 'P', 206160307045),
('maaz', 'AJP_lecture', '2023-06-03', 'P', 206160307034),
('abhishek', 'AJP_lecture', '2023-06-03', 'P', 206160307035),
('ayan saiyad', 'AJP_lecture', '2023-06-03', 'P', 206160307041),
('tejas gowswami', 'AJP_lecture', '2023-06-03', 'P', 206160307045),
('maaz', 'PPDBMS_lecture', '2023-06-03', 'P', 206160307034),
('abhishek', 'PPDBMS_lecture', '2023-06-03', 'P', 206160307035),
('ayan saiyad', 'PPDBMS_lecture', '2023-06-03', 'P', 206160307041);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch`) VALUES
('COMPUTER'),
('Civil'),
('Mechanical');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_name` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `semester` int(1) NOT NULL,
  `term_start` date NOT NULL,
  `term_end` date NOT NULL,
  `num_lectures` bigint(255) NOT NULL,
  `section` varchar(10) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `user` bigint(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_name`, `course`, `branch`, `semester`, `term_start`, `term_end`, `num_lectures`, `section`, `subject`, `user`) VALUES
('Mcad_lecture', 'diploma', 'COMPUTER', 6, '2023-06-03', '2023-08-03', 4, 'B', 'MCAD', 101),
('NMA_lecture', 'diploma', 'COMPUTER', 6, '2023-06-03', '2023-08-03', 5, 'B', 'NMA', 101),
('AJP_lecture', 'diploma', 'COMPUTER', 6, '2023-06-03', '2023-08-03', 6, 'B', 'AJP', 101),
('PPDBMS_lecture', 'diploma', 'COMPUTER', 6, '2023-06-03', '2023-08-03', 3, 'B', 'PPDBMS', 101);

-- --------------------------------------------------------

--
-- Table structure for table `loginformadmin`
--

CREATE TABLE `loginformadmin` (
  `user` bigint(255) DEFAULT NULL,
  `pass` text NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` bigint(255) DEFAULT NULL,
  `experience` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loginformadmin`
--

INSERT INTO `loginformadmin` (`user`, `pass`, `Name`, `email`, `phone`, `experience`) VALUES
(786, 'ayan', 'Mr. AYAN SAIYAD', 'ayan9923@gmail.com', 7802877782, '5 Years');

-- --------------------------------------------------------

--
-- Table structure for table `loginformstudent`
--

CREATE TABLE `loginformstudent` (
  `user` bigint(255) DEFAULT NULL,
  `pass` varchar(300) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` bigint(255) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `section` varchar(5) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `sem` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loginformstudent`
--

INSERT INTO `loginformstudent` (`user`, `pass`, `Name`, `email`, `phone`, `branch`, `section`, `course`, `sem`) VALUES
(206160307041, '206160307041', 'ayan saiyad', 'ayansaiyad5@gmail.com', 7802877782, 'COMPUTER', 'B', 'diploma', 6),
(206160307042, '206160307042', 'dhvanil patel', 'dhvanil@gmail.com', 1234567890, 'COMPUTER', 'B', 'diploma', 6),
(206160307045, '206160307045', 'tejas gowswami', 'tejas@gmail.com', 1234567890, 'COMPUTER', 'B', 'diploma', 6),
(206160307035, '206160307035', 'abhishek', 'abhi@gmail.com', 1234567890, 'COMPUTER', 'B', 'diploma', 6),
(206160307034, '206160307034', 'maaz', 'maaz@gmail.com', 1234567890, 'COMPUTER', 'B', 'diploma', 6),
(206160307033, '206160307033', 'jay', 'jay@gmail.com', 1234567890, 'COMPUTER', 'B', 'diploma', 6);

-- --------------------------------------------------------

--
-- Table structure for table `loginformteacher`
--

CREATE TABLE `loginformteacher` (
  `user` bigint(255) DEFAULT NULL,
  `pass` varchar(300) NOT NULL,
  `position` varchar(30) DEFAULT NULL,
  `experience` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `area_of_expertise` varchar(100) DEFAULT NULL,
  `phone` bigint(255) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loginformteacher`
--

INSERT INTO `loginformteacher` (`user`, `pass`, `position`, `experience`, `email`, `area_of_expertise`, `phone`, `name`) VALUES
(102, '102', 'HOD', '7 Years', 'xyz@gmail.com', 'Compiler Design,Computer Architecture,Web Development', 9087897687, 'JIGNESH SIR'),
(101, '101', 'propesor', '7 Years', 'pradipsir@gmail.com', 'Java,C++', 9999897687, 'PRADIP SIR');

-- --------------------------------------------------------

--
-- Table structure for table `mcad_lecture`
--

CREATE TABLE `mcad_lecture` (
  `RollNO` bigint(255) DEFAULT NULL,
  `Names` varchar(300) DEFAULT NULL,
  `Sem` int(11) DEFAULT NULL,
  `Present` int(11) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mcad_lecture`
--

INSERT INTO `mcad_lecture` (`RollNO`, `Names`, `Sem`, `Present`, `Total`) VALUES
(206160307041, 'ayan saiyad', 6, 1, 1),
(206160307034, 'maaz', 6, 1, 1),
(206160307035, 'abhishek', 6, 1, 1),
(206160307042, 'dhvanil patel', 6, 1, 1),
(206160307045, 'tejas gowswami', 6, 1, 1),
(206160307033, 'jay', 6, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nma_lecture`
--

CREATE TABLE `nma_lecture` (
  `RollNO` bigint(255) DEFAULT NULL,
  `Names` varchar(300) DEFAULT NULL,
  `Sem` int(11) DEFAULT NULL,
  `Present` int(11) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nma_lecture`
--

INSERT INTO `nma_lecture` (`RollNO`, `Names`, `Sem`, `Present`, `Total`) VALUES
(206160307033, 'jay', 6, 1, 1),
(206160307034, 'maaz', 6, 1, 1),
(206160307035, 'abhishek', 6, 1, 1),
(206160307041, 'ayan saiyad', 6, 1, 1),
(206160307042, 'dhvanil patel', 6, 1, 1),
(206160307045, 'tejas gowswami', 6, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pointer`
--

CREATE TABLE `pointer` (
  `pointers` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pointer`
--

INSERT INTO `pointer` (`pointers`) VALUES
('fygc4yrt6fv4try6f23wtr4yw63');

-- --------------------------------------------------------

--
-- Table structure for table `ppdbms_lecture`
--

CREATE TABLE `ppdbms_lecture` (
  `RollNO` bigint(255) DEFAULT NULL,
  `Names` varchar(300) DEFAULT NULL,
  `Sem` int(11) DEFAULT NULL,
  `Present` int(11) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ppdbms_lecture`
--

INSERT INTO `ppdbms_lecture` (`RollNO`, `Names`, `Sem`, `Present`, `Total`) VALUES
(206160307033, 'jay', 6, 1, 1),
(206160307034, 'maaz', 6, 1, 1),
(206160307035, 'abhishek', 6, 1, 1),
(206160307041, 'ayan saiyad', 6, 1, 1),
(206160307042, 'dhvanil patel', 6, 0, 1),
(206160307045, 'tejas gowswami', 6, 0, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
