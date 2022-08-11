-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2022 at 06:18 AM
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
(123, 'Grade A'),
(124, 'Grade B'),
(143, 'Grade A'),
(145, 'Grade A'),
(222, ''),
(398, 'Grade C'),
(420, 'Grade C');

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
  `phone` int(10) NOT NULL,
  `department` varchar(256) NOT NULL,
  `yoe` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`fname`, `lname`, `gender`, `eid`, `email`, `phone`, `department`, `yoe`) VALUES
('ankit', 'madharchod', 'Male', 143, 'amit@gmail.com', 123456789, 'Developer', 'More than 10years'),
('ajay', 'singh', 'Male', 145, 'amit@gmail.com', 123456789, 'Developer', 'More than 5years'),
('amit', 'amit', 'Male', 222, 'amit@gmail.com', 123456789, 'Developer', 'More than 10years'),
('amit', 'chaudhary', 'Male', 398, 'raazanand0211@', 2147483647, 'Developer', 'More than 10years'),
('ameen', 'singh', 'Female', 420, 'ameen@gmail.com', 1229996969, 'Testing', '0 years');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('amit', 'amit123');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `grade` varchar(10) NOT NULL,
  `salary` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`grade`, `salary`) VALUES
('Grade A', 90000),
('Grade B', 70000),
('Grade C', 50000);

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
