-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 02:47 PM
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
-- Database: `hmsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `userid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userid`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custid` int(3) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `mobno` varchar(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `idprooftype` varchar(30) NOT NULL,
  `idproofnum` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custid`, `fname`, `mname`, `lname`, `mobno`, `address`, `email`, `idprooftype`, `idproofnum`) VALUES
(1, 'Dhananjay', 'Pradip', 'Naphade', '1234567890', 'At Post Talni Tq. Motala Dist Buldhana', 'dhananjay@gmail.com', 'Adhar Card', '123456789013'),
(2, 'D', 'Pradip', 'Naphade', '1234567890', 'At Post Talni', 'dnapade@gmail.com', 'Voter ID', '1234567'),
(3, 'S', 'S', 'Naphade', '1334567890', 'At Post. Talni Tq Motala Dist Buldhana', 'ssnaphade@gmail.com', 'PAN Card', 'ABCD1234D'),
(4, 'P', 'N', 'Naphade', '1234667892', 'Talni Motala Buldhana', 'pnnaphade@gmail.com', 'PassPort ID', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `rid` int(3) NOT NULL,
  `rnum` varchar(5) NOT NULL,
  `rtype` varchar(25) NOT NULL,
  `rstatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`rid`, `rnum`, `rtype`, `rstatus`) VALUES
(1, '101', '1Bed Non-AC', 'Reserved'),
(2, '102', '1Bed AC-Room', 'Reserved'),
(3, '103', '2Bed Non-AC', 'Reserved'),
(4, '104', '2Bed AC-Room', 'Reserved'),
(5, '105', '1Bed AC-Room', 'Reserved'),
(6, '106', '1Bed AC-Room', 'Reserved'),
(7, '107', '1Bed Non-AC', 'Available'),
(8, '108', '2Bed AC-Room', 'Available'),
(9, '109', '4Bed Non-AC', 'Available'),
(10, '110', '4Bed AC Room', 'Available'),
(11, '111', '1Bed Non-AC', 'Available'),
(12, '112', '1Bed AC-Room', 'Available'),
(13, '113', '4Bed Non-AC', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `roombook`
--

CREATE TABLE `roombook` (
  `reservid` int(5) NOT NULL,
  `cid` varchar(5) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `mname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `mobno` varchar(11) NOT NULL,
  `rid` varchar(5) NOT NULL,
  `rnum` varchar(5) NOT NULL,
  `rtype` varchar(20) NOT NULL,
  `fromdate` varchar(20) NOT NULL,
  `todate` varchar(20) NOT NULL,
  `rcharges` varchar(15) NOT NULL,
  `ebed` varchar(5) NOT NULL,
  `ebcharges` varchar(5) NOT NULL,
  `tcharges` varchar(5) NOT NULL,
  `rstatus` varchar(20) NOT NULL,
  `bdate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roombook`
--

INSERT INTO `roombook` (`reservid`, `cid`, `fname`, `mname`, `lname`, `mobno`, `rid`, `rnum`, `rtype`, `fromdate`, `todate`, `rcharges`, `ebed`, `ebcharges`, `tcharges`, `rstatus`, `bdate`) VALUES
(1, '1', 'Dhananjay', 'Pradip', 'Naphade', '1234567890', '2', '102', '1Bed AC-Room', '23 Apr, 2022', '23 Apr, 2022', '400', '0', '0', '400.0', 'Reserved', '12/12/2022'),
(2, '1', 'Dhananjay', 'Pradip', 'Naphade', '1234567890', '5', '105', '1Bed AC-Room', '24 Apr, 2022', '24 Apr, 2022', '500', '0', '0', '500.0', 'Reserved', '12/12/2022'),
(3, '2', 'D', 'Pradip', 'Naphade', '1234567890', '6', '106', '1Bed AC-Room', '25 Apr, 2022', '25 Apr, 2022', '500', '0', '0', '500.0', 'Reserved', '26 Apr, 2022'),
(4, '1', 'Dhananjay', 'Pradip', 'Naphade', '1234567890', '1', '101', '1Bed Non-AC', '21 Apr, 2022', '21 Apr, 2022', '400', '1', '50', '450.0', 'Reserved', '12/12/2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `roombook`
--
ALTER TABLE `roombook`
  ADD PRIMARY KEY (`reservid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
