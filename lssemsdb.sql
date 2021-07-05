-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2019 at 06:24 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lssemsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(50) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555556, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-11-29 12:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `Category`, `CreationDate`) VALUES
(1, 'Maid', '2019-11-29 00:42:22'),
(2, 'Driver', '2019-11-30 05:43:18'),
(3, 'Cook', '2019-11-30 05:43:27'),
(4, 'Milkman', '2019-11-30 05:43:36'),
(5, 'Paperboy', '2019-11-30 05:43:46'),
(6, 'Car Cleaner', '2019-11-30 05:43:58'),
(7, 'Nanny', '2019-11-30 05:44:05'),
(8, 'Tuition Teacher', '2019-11-30 05:44:18'),
(9, 'Gym Instructor', '2019-11-30 05:44:29'),
(10, 'Plumber', '2019-11-30 05:44:39'),
(11, 'Basketball Instructor', '2019-11-30 05:44:56'),
(12, 'Electrician', '2019-11-30 05:45:30'),
(13, 'Fitting', '2019-11-30 05:45:42'),
(14, 'Carpenter', '2019-11-30 05:45:52'),
(15, 'House Cleaning', '2019-11-30 05:46:05'),
(16, 'Painter', '2019-11-30 05:46:14'),
(17, 'Grocery Shop', '2019-11-30 05:46:24'),
(18, 'Doctor', '2019-11-30 05:46:37'),
(19, 'Physiotherapist', '2019-11-30 05:47:02'),
(20, 'Nurse', '2019-11-30 05:47:12'),
(21, 'Laundry', '2019-11-30 05:47:29'),
(22, 'Gardener', '2019-11-30 05:47:41'),
(23, 'Flower Delivery', '2019-11-30 05:47:55'),
(24, 'Tailor', '2019-11-30 05:48:10'),
(25, 'Other', '2019-11-30 05:48:22'),
(26, 'Test category', '2019-12-10 16:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(50) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif; font-size: 14px;\">Local</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif; font-size: 14px;\">&nbsp;search is the use of specialized Internet&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif; font-size: 14px;\">search engines</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif; font-size: 14px;\">&nbsp;that allow users to submit geographically constrained searches against a structured database of&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif; font-size: 14px;\">local business.</span><div><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif; font-size: 14px;\">This is for testing.</span></div>', NULL, NULL, '2019-12-10 16:58:33'),
(2, 'contactus', 'Contact Us', 'D-204, Hole Town South West,Delhi-110096,India', 'test@gmail.com', 8529631478, '2019-12-10 16:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblperson`
--

CREATE TABLE `tblperson` (
  `ID` int(10) NOT NULL,
  `Category` varchar(200) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Picture` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `City` varchar(200) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblperson`
--

INSERT INTO `tblperson` (`ID`, `Category`, `Name`, `Picture`, `MobileNumber`, `Address`, `City`, `RegDate`) VALUES
(1, 'Maid', 'Kanta Aggrawal', '7fdc1a630c238af0815181f9faa190f51575097313.jpg', 4654654654, 'H-0988997, Harikesnaga Noida', 'Noida', '2019-11-30 07:01:53'),
(2, 'Maid', 'John', '1e6ae4ada992769567b71815f124fac51575261441.jpg', 6464564654, 'Vasnat Kunj J&K-2345 New Delhi', 'New Delhi', '2019-12-02 04:37:21'),
(3, 'Maid', 'Klaesh', 'efc1a80c391be252d7d777a437f868701575261539.jpg', 6464654654, 'p-186, Kasal Plaza New Delhi', 'New Delhi', '2019-12-02 04:38:59'),
(4, 'Driver', 'Joesph Rana', '1e6ae4ada992769567b71815f124fac51575261598.jpg', 4646546546, 'K-908, Laxmi Nagar New Delhi', 'New Delhi', '2019-12-02 04:39:58'),
(5, 'Driver', 'Joginder Das', '55ccf27d26d7b23839986b6ae2e447ab1575261706.jpg', 8787446464, 'J&K-789 Laxmi Nagar New Delhi', 'New Delhi', '2019-12-02 04:41:46'),
(6, 'Driver', 'Harish Singh', '7fdc1a630c238af0815181f9faa190f51575261743.jpg', 6543486465, 'H-890808,XYX', 'Noida', '2019-12-02 04:42:23'),
(7, 'Cook', 'Mayanka Nolpoi', 'efc1a80c391be252d7d777a437f868701575261793.jpg', 4654489748, 'lklkl-80898, Noda Secto-10', 'Noida', '2019-12-02 04:43:13'),
(8, 'Cook', 'Kusum', 'efc1a80c391be252d7d777a437f868701575261837.jpg', 3136546546, 'KL=89/89 Harikesh Nagar  New Delhi', 'New Delhi', '2019-12-02 04:43:57'),
(9, 'Milkman', 'Maaynak Chandra', '1e6ae4ada992769567b71815f124fac51575261908.jpg', 4547897654, 'o-909, ko colony gulagao', 'Ghaziabad', '2019-12-02 04:45:08'),
(10, 'Milkman', 'Raju', '1e6ae4ada992769567b71815f124fac51575274951.jpg', 5454421214, 'Nagloi Pindgari H.No :J-7989', 'Ghaziabad', '2019-12-02 04:46:01'),
(11, 'Paperboy', 'Lasen Mahlotra', '7fdc1a630c238af0815181f9faa190f51575262022.jpg', 6897979798, 'K-889, Janki Das coloiny New Delhi', 'New Delhi', '2019-12-02 04:47:02'),
(12, 'Car Cleaner', 'Himmesh', '55ccf27d26d7b23839986b6ae2e447ab1575262079.jpg', 5656565656, 'J-898, peergari, Near Reliance frsh New Delhi', 'New Delhi', '2019-12-02 04:47:59'),
(13, 'Nanny', 'Jasmin', 'efc1a80c391be252d7d777a437f868701575262135.jpg', 4658346873, 'Kasunagar H.No:457 Manikana road New delhi', 'New Delhi', '2019-12-02 04:48:55'),
(14, 'Tuition Teacher', 'Jawala Sing', 'efc1a80c391be252d7d777a437f868701575262207.jpg', 6715486742, 'H.N0-90/468 Gurugovindsingh road manav vihar New Delhi', 'New Delhi', '2019-12-02 04:50:07'),
(15, 'Tuition Teacher', 'Kailash Kher', '7fdc1a630c238af0815181f9faa190f51575262248.jpg', 5655646878, 'u-908 gyujhgiuewfjdsiuraewr', 'Merrut', '2019-12-02 04:50:48'),
(16, 'Tuition Teacher', 'Malika Dora', 'efc1a80c391be252d7d777a437f868701575262299.jpg', 9798765498, 'h-90890 kausal nagar jankidas park new delhi', 'New Delhi', '2019-12-02 04:51:39'),
(17, 'Tuition Teacher', 'Kusum Launa', 'efc1a80c391be252d7d777a437f868701575262345.jpg', 3465464654, 'g-9887979, nEwli.jjkvkuhf', 'Ghaziabad', '2019-12-02 04:52:25'),
(18, 'Gym Instructor', 'Jogy Rana', '1e6ae4ada992769567b71815f124fac51575262395.jpg', 6898744574, 'Jahangirpuri B-26687 B-block New Delhi', 'New Delhi', '2019-12-02 04:53:15'),
(19, 'Gym Instructor', 'Luanas', '55ccf27d26d7b23839986b6ae2e447ab1575262429.jpg', 5489732687, 'k-8808, Jhhnmsdauyed', 'Noida', '2019-12-02 04:53:49'),
(20, 'Plumber', 'Guar Shri', '1e6ae4ada992769567b71815f124fac51575262482.jpg', 6723867278, 'Byan Gao jahngirpuri kausjhgjhmkljiujfurhkgetj', 'New Delhi', '2019-12-02 04:54:42'),
(21, 'Plumber', 'Govind', '7fdc1a630c238af0815181f9faa190f51575621536.jpg', 8989865496, 'tuytugjhgugyviyhiu', 'Noida', '2019-12-06 08:38:56'),
(22, 'Test category', 'Anuj kumar', '3de6c2fdd28f94768b423d0c95ae91bc1575997039.png', 9354778033, 'New Delhi India', 'New Delhi', '2019-12-10 16:57:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Category` (`Category`),
  ADD KEY `CreationDate` (`CreationDate`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblperson`
--
ALTER TABLE `tblperson`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Category` (`Category`),
  ADD KEY `Category_2` (`Category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblperson`
--
ALTER TABLE `tblperson`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
