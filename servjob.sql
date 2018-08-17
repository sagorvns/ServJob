-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2018 at 07:39 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `servjob`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `discription` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `cname`, `address`, `discription`) VALUES
(1, 'sdv', 'idnfvd', ''),
(2, 'erfgfgd', 'hbdgd', ''),
(3, '', '', 'sdc'),
(4, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE IF NOT EXISTS `job` (
  `id` int(11) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `company_id` varchar(50) NOT NULL,
  `job_location` varchar(50) NOT NULL,
  `job_salary` bigint(50) NOT NULL,
  `skill` varchar(50) NOT NULL,
  `eligibility` varchar(50) NOT NULL,
  `discription` varchar(100) NOT NULL,
  `status` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `job_title`, `company_id`, `job_location`, `job_salary`, `skill`, `eligibility`, `discription`, `status`) VALUES
(13, 'Web Devloper', 'PVC Private Limt.', 'Noida,Delhi,Mumbai', 10000, 'Java,Oracale,Html,Css,Php,\r\nMySql,C++\r\n', 'MCA,Btech', 'Experience of 2 Year and\r\ngood managment skill', 1),
(14, 'JAVA devloper', 'oracal pvt. limt.', 'delhi', 100, 'codind,testing', 'bca', 'high speed typing', 1),
(15, 'Manager', 'ABC company', 'kolkata,shimla', 10000, 'Go communication skill', 'MBA', 'markating,HR quality', NULL),
(17, 'aaa', 'aaa', 'a', 12, 'sa', 'as', 'sa', NULL),
(18, 'web', 'abc', 'noida', 12212, '12 pass', 'java', '2 yaer', NULL),
(19, 'teacher', 'skdjvb', 'jvbsd', 544545, 'svjb', 'klfb', 'lkdvs', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_req`
--

CREATE TABLE IF NOT EXISTS `job_req` (
  `id` int(10) NOT NULL,
  `job_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_req`
--

INSERT INTO `job_req` (`id`, `job_id`, `user_id`, `status`) VALUES
(42, 13, 13, 2),
(43, 14, 13, 1),
(44, 15, 13, 2),
(45, 13, 12, 3),
(46, 14, 12, 2),
(47, 18, 1, 2),
(48, 18, 1, 3),
(49, 18, 1, 2),
(50, 14, 1, 2),
(51, 15, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `resume` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `full_name`, `email`, `password`, `resume`) VALUES
(1, 'sagor', 'sagor@gmail.com', '1234', 'upsee.pdf'),
(2, 'shubham', 'shubham@gmail.com', '123456', 'sagorcv.pdf'),
(4, 'aaa', 'sumesh@gmail.com', 'as', 'whyme.txt'),
(5, 'wenvf', 's@gmail.com', 'aaa', 'sagorcv.pdf'),
(12, 'rv', 'rv@gmail.com', 'rv', '111.txt'),
(13, 'abhi', 'abhi@gmail.com', 'abhi', 'sagorcv.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_req`
--
ALTER TABLE `job_req`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `job_req`
--
ALTER TABLE `job_req`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
