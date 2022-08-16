-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2022 at 01:01 PM
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
-- Database: `my_payroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `egrade`
--

CREATE TABLE `egrade` (
  `eid` int(3) NOT NULL,
  `grade` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `egrade`
--

INSERT INTO `egrade` (`eid`, `grade`) VALUES
(1, 'Grade A'),
(4, 'Grade B'),
(12, 'Grade A'),
(1234, 'Grade A');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `eid` int(4) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `department` varchar(256) NOT NULL,
  `yoe` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`fname`, `lname`, `gender`, `eid`, `email`, `phone`, `department`, `yoe`) VALUES
('aaa', '', 'Male', 1, 'a', '2147483647', 'Developer', 'More than 5years'),
('amir', '', '', 4, '', '9929762061', '', ''),
('', '', '', 12, '', '123456789', 'Sustenance', 'More than 10years'),
('a', 'a', 'a', 123, 'a', '9929762061', 'a', 'a'),
('', '', '', 1234, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `grade` varchar(10) NOT NULL,
  `salary` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `egrade`
--
ALTER TABLE `egrade`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`grade`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
