-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2020 at 07:27 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
--

CREATE TABLE `advertise` (
  `ID` int(11) NOT NULL,
  `restaurant_name` varchar(30) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `food_name` varchar(20) NOT NULL,
  `price` int(15) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advertise`
--

INSERT INTO `advertise` (`ID`, `restaurant_name`, `Address`, `Email`, `food_name`, `price`, `time`, `image`) VALUES
(1, 'red chili', 'lal khan bazer,chittagong', 'shahana018249@gmail.', 'biryani', 100, '2020-07-28 15:56:01', NULL),
(3, '7dayez', 'lal khan bazer,chittagong', 'apu.shakil@yahoo.com', 'dom biryani', 150, '2020-07-28 16:20:33', NULL),
(4, 'red chili', 'nasirabad,chittagong', 'jannatul@gmail.com', 'biryani', 100, '2020-07-28 16:41:21', 0x435353335f6c6f676f5f616e645f776f72646d61726b2e7376672e706e67),
(5, 'handi', 'kazirdawri, chittagong', 'nipa@gmail.com', 'dom biryani', 200, '2020-07-29 04:24:50', 0x423631325f32303139313131375f3136303533305f3534342e6a7067),
(6, '7dayez', 'lal khan bazer,chittagong', 'shahana@gmail.com', 'biryani', 500, '2020-07-29 06:33:44', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Password` varchar(8) NOT NULL,
  `Time` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `Name`, `Email`, `Password`, `Time`) VALUES
(5, 'shahana', 'shahana@gmail.com', '12345', '2020-07-29 03:08:09.449506'),
(6, 'nipa', 'nila@gmail.com', '12345678', '2020-07-29 03:10:43.634120'),
(11, 'jannatul', 'jannatul@gmail.com', 'jannat', '2020-07-29 03:16:28.622823'),
(15, 'shahana', 'shahana018249@gmail.', '1456', '2020-07-29 03:18:04.166378'),
(17, 'nipa', 'nila@gmail.com', '12341', '2020-07-29 03:23:13.260875'),
(18, 'shahana', 'shahana@gmail.com', '12345678', '2020-07-29 03:24:30.065420'),
(19, 'shahana', 'shahana018249@gmail.', 'nipa', '2020-07-29 03:26:24.742569'),
(20, 'prome', 'prome@gmail.com', '12345', '2020-07-29 04:56:39.599199'),
(21, 'prome', 'jannatul@gmail.com', '123', '2020-07-29 06:10:41.719965'),
(47, 'nila', 'nila@gmail.com', 'nipa', '2020-07-29 09:16:54.193296'),
(50, 'shahana', 'shakil@gmail.com', '12345', '2020-07-29 09:27:18.078747'),
(54, 'shahana', 'shakil@gmail.com', '12345', '2020-07-29 09:33:51.396088'),
(55, 'shahana', 'shakil@gmail.com', '12345', '2020-07-29 09:34:21.891914'),
(56, 'shahana', 'nipa@gmail.com', 'nipa', '2020-07-29 09:42:25.412104'),
(57, 'shahana', 'jannatul@gmail.com', '123456', '2020-07-29 09:54:06.405752'),
(58, 'prome', 'prome@gmail.com', 'prm123', '2020-07-29 10:03:56.558095');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Message` varchar(100) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`ID`, `Name`, `Email`, `Message`, `Time`) VALUES
(6, 'shahana', 'shahana@gmail.com', 'Hi', '2020-07-29 11:40:49'),
(7, 'shahana', 'shahana@gmail.com', 'Hello', '2020-07-29 11:45:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertise`
--
ALTER TABLE `advertise`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertise`
--
ALTER TABLE `advertise`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
