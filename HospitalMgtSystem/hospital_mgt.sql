-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2017 at 10:42 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_mgt`
--
CREATE DATABASE IF NOT EXISTS `hospital_mgt` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hospital_mgt`;

-- --------------------------------------------------------

--
-- Table structure for table `chennel`
--

CREATE TABLE `chennel` (
  `chennel_pname` varchar(25) NOT NULL,
  `chennel_dname` varchar(25) NOT NULL,
  `chennel_ptp` int(11) NOT NULL,
  `chennel_date` date NOT NULL,
  `chennel_time` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chennel`
--

INSERT INTO `chennel` (`chennel_pname`, `chennel_dname`, `chennel_ptp`, `chennel_date`, `chennel_time`) VALUES
('dfsdf', 'sdfsg', 778954785, '2017-10-13', '8:30');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `d_id` int(11) NOT NULL,
  `dname` varchar(20) NOT NULL,
  `dnic` varchar(10) NOT NULL,
  `dspecialty` varchar(15) NOT NULL,
  `daddress` varchar(25) NOT NULL,
  `dphone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`d_id`, `dname`, `dnic`, `dspecialty`, `daddress`, `dphone`) VALUES
(1, 'sdfsg', '958957744v', 'qweq', 'qweqweq', 775896547);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(25) NOT NULL,
  `emp_address` varchar(25) NOT NULL,
  `emp_nic` varchar(11) NOT NULL,
  `emp_dob` date NOT NULL,
  `emp_status` varchar(10) NOT NULL,
  `emp_tp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_address`, `emp_nic`, `emp_dob`, `emp_status`, `emp_tp`) VALUES
(1, 'vfd', 'sfeefkhjuigu', '654875522v', '2017-10-01', 'safsdfsf', 745896547),
(2, 'vfd', 'sfeefkhjuigu', '654875522v', '2017-10-01', 'safsdfsf', 745896547),
(3, 'vfd', 'sfeefkhjuigu', '654875522v', '2017-10-01', 'safsdfsf', 745896547);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(20) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(25) NOT NULL,
  `date_admitted` date NOT NULL,
  `date_discharged` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_name`, `sex`, `age`, `address`, `date_admitted`, `date_discharged`) VALUES
(1, 'Sunil', 'F', 35, 'Colombo', '2017-10-02', '2017-07-01'),
(2, 'erefwer', 'M', 35, 'Colombo', '2017-10-06', '2017-07-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
