-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2020 at 12:22 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM'),
(3, 'Rhugved', 'Rhugved3@333', ''),
(4, 'Suraj', 'Suraj@123', '');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `speakerSpecialization` varchar(255) DEFAULT NULL,
  `speakerId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `speakerStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `speakerSpecialization`, `speakerId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `speakerStatus`, `updationDate`) VALUES
(7, 'Homeopath', 10, 11, 3000, '2020-06-24', '4:00 PM', '2020-06-17 17:06:13', 1, 0, '2020-06-17 17:48:44'),
(8, 'History', 11, 13, 3500, '2020-06-24', '3:15 PM', '2020-06-21 09:41:57', 1, 1, NULL),
(9, 'History', 11, 14, 3500, '2020-06-24', '4:00 PM', '2020-06-21 10:28:33', 1, 0, '2020-06-21 10:30:47'),
(10, 'History', 11, 14, 3500, '2020-06-25', '4:15 PM', '2020-06-21 10:35:59', 0, 1, '2020-06-24 13:59:09'),
(11, 'History', 11, 15, 3500, '2020-06-25', '4:00 PM', '2020-06-22 10:30:11', 1, 1, NULL),
(12, 'Mythology', 12, 14, 3500, '2020-06-30', '7:30 PM', '2020-06-24 13:59:27', 1, 1, NULL),
(13, 'Entertainment', 13, 14, 3500, '2020-06-26', '8:15 PM', '2020-06-24 14:33:11', 1, 1, NULL),
(14, 'Science and technology', 14, 17, 2000, '2020-06-24', '8:45 PM', '2020-06-26 15:06:51', 1, 1, NULL),
(15, 'Indian Litrature ', 15, 17, 1000, '2020-06-25', '3:45 PM', '2020-06-28 10:07:13', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `speaker`
--

CREATE TABLE `speaker` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `speakerName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `speFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `speEmail` varchar(255) DEFAULT NULL,
  `speImage` varchar(150) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speaker`
--

INSERT INTO `speaker` (`id`, `specilization`, `speakerName`, `address`, `speFees`, `contactno`, `speEmail`, `speImage`, `password`, `creationDate`, `updationDate`) VALUES
(14, 'Science and technology', 'Suraj Tamboli', 'Karad', '2000', 7894561330, 'suraj@gmail.com', '', 'df27f12901ecfb3e3a9614e93eec3712', '2020-06-26 15:00:58', '2020-06-26 15:02:32'),
(15, 'History', 'Sushant Sharma', 'Mumbai', '1000', 7894561230, 'shushant@gmail.com', '', '962ec71c638b74e8687f3ab0cf90e4aa', '2020-06-27 11:04:36', '2020-06-28 10:13:44'),
(16, 'Food', 'Dr. Dilip Malkhede', 'Pune', '3000', 7894561330, 'dilip@gmail.com', '', '97d99084b4acacaefef60d39f82b8be1', '2020-06-27 12:02:40', '2020-06-27 12:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `speakerappointment`
--

CREATE TABLE `speakerappointment` (
  `speid` int(10) NOT NULL,
  `SpeakerName` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `SpeakerContNo` bigint(10) DEFAULT NULL,
  `SpeakerEmail` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `SpeakerGender` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `SpeakerAdd` mediumtext CHARACTER SET latin1 DEFAULT NULL,
  `SpeakerAge` int(10) DEFAULT NULL,
  `SpeakerFees` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `speakerlog`
--

CREATE TABLE `speakerlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speakerlog`
--

INSERT INTO `speakerlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(23, 10, 'suraj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-17 17:31:07', NULL, 1),
(24, 10, 'suraj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-17 17:46:39', '17-06-2020 11:18:49 PM', 1),
(25, NULL, 'Rhugved Satardekar', 0x3a3a3100000000000000000000000000, '2020-06-21 05:34:34', NULL, 0),
(26, 11, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 05:36:36', '21-06-2020 11:09:40 AM', 1),
(27, 11, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 09:32:37', '21-06-2020 03:11:00 PM', 1),
(28, 11, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 09:47:31', '21-06-2020 03:19:37 PM', 1),
(29, 11, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 10:21:05', '21-06-2020 03:56:02 PM', 1),
(30, NULL, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 10:30:05', NULL, 0),
(31, 11, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 10:30:37', '21-06-2020 04:00:51 PM', 1),
(32, 11, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 10:31:17', '22-06-2020 04:03:41 PM', 1),
(33, 11, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 10:44:24', '22-06-2020 05:44:28 PM', 1),
(34, NULL, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-23 16:26:25', NULL, 0),
(35, 11, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-23 16:26:36', '23-06-2020 09:57:42 PM', 1),
(36, 11, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-23 17:39:37', '23-06-2020 11:11:30 PM', 1),
(37, 11, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-24 13:57:49', '24-06-2020 07:27:54 PM', 1),
(38, 11, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-24 14:00:00', '24-06-2020 07:30:42 PM', 1),
(39, 11, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-24 14:01:28', '24-06-2020 07:32:00 PM', 1),
(40, 11, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-24 14:33:38', '24-06-2020 08:04:30 PM', 1),
(41, 11, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-25 11:53:40', NULL, 1),
(42, 11, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-25 12:10:00', NULL, 1),
(43, 11, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-25 13:33:03', '26-06-2020 08:25:54 PM', 1),
(44, 14, 'suraj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-26 15:02:13', '26-06-2020 08:33:59 PM', 1),
(45, 14, 'suraj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-26 15:07:43', '26-06-2020 08:39:47 PM', 1),
(46, NULL, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-27 10:13:47', NULL, 0),
(47, NULL, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-27 10:13:56', NULL, 0),
(48, NULL, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-27 10:14:13', NULL, 0),
(49, 14, 'suraj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-27 10:14:51', '27-06-2020 04:09:21 PM', 1),
(50, 16, 'dilip@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-27 12:05:20', '27-06-2020 05:36:44 PM', 1),
(51, 16, 'dilip@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-28 09:58:10', '28-06-2020 03:28:14 PM', 1),
(52, 15, 'shushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-28 10:08:15', '28-06-2020 04:21:44 PM', 1),
(53, NULL, 'suraj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-03 09:29:34', NULL, 0),
(54, NULL, 'rhugvedsatardekar39@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-03 09:29:47', NULL, 0),
(55, 16, 'dilip@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-03 09:29:57', '03-07-2020 03:00:23 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `speakerspecilization`
--

CREATE TABLE `speakerspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speakerspecilization`
--

INSERT INTO `speakerspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(15, 'Entertainment', '2020-06-21 05:18:28', NULL),
(16, 'Motivation', '2020-06-21 05:25:16', NULL),
(17, 'Education', '2020-06-21 05:27:29', NULL),
(18, 'History', '2020-06-21 05:27:39', NULL),
(19, 'Mythology', '2020-06-21 05:27:44', NULL),
(20, 'Science and technology', '2020-06-21 05:27:57', NULL),
(21, 'Arts', '2020-06-21 05:28:11', NULL),
(22, 'Indian Litrature ', '2020-06-21 05:28:17', '2020-06-27 10:59:01'),
(23, 'Medical', '2020-06-21 05:28:30', NULL),
(24, 'Socio-Policics', '2020-06-21 05:28:55', NULL),
(25, 'Law', '2020-06-21 05:29:13', NULL),
(26, 'Music', '2020-06-21 05:29:19', NULL),
(27, 'Culture', '2020-06-21 05:29:28', NULL),
(28, 'Philosophy', '2020-06-26 14:58:52', NULL),
(29, 'Food', '2020-06-27 11:51:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblappointmenthistory`
--

CREATE TABLE `tblappointmenthistory` (
  `ID` int(10) NOT NULL,
  `ClientID` int(10) DEFAULT NULL,
  `ApplicationDomain` varchar(200) DEFAULT NULL,
  `Topic` varchar(200) NOT NULL,
  `Note` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblappointmenthistory`
--

INSERT INTO `tblappointmenthistory` (`ID`, `ClientID`, `ApplicationDomain`, `Topic`, `Note`, `CreationDate`) VALUES
(9, 8, 'History', 'Indian History', 'None', '2020-06-21 09:49:26'),
(10, 9, 'History', 'Gandhi', 'nothing special', '2020-06-22 10:33:25'),
(11, 10, 'History', 'Indian History', 'Yes', '2020-06-27 10:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblclient`
--

CREATE TABLE `tblclient` (
  `ID` int(10) NOT NULL,
  `Speid` int(10) DEFAULT NULL,
  `ClientName` varchar(200) DEFAULT NULL,
  `ClientContno` bigint(10) DEFAULT NULL,
  `ClientEmail` varchar(200) DEFAULT NULL,
  `ClientGender` varchar(50) DEFAULT NULL,
  `ClientAdd` mediumtext DEFAULT NULL,
  `ClientAge` int(10) DEFAULT NULL,
  `Clientapphis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclient`
--

INSERT INTO `tblclient` (`ID`, `Speid`, `ClientName`, `ClientContno`, `ClientEmail`, `ClientGender`, `ClientAdd`, `ClientAge`, `Clientapphis`, `CreationDate`, `UpdationDate`) VALUES
(8, 11, 'Chinmay', 7894561230, 'c@gmail.com', '', 'karad', 20, '', '2020-06-21 09:48:16', NULL),
(9, 11, 'Karan', 7894456123, 'k@gmail.com', 'male', 'kop', 20, '', '2020-06-22 10:32:24', NULL),
(10, 14, 'Rhucha', 7894456123, 'rhucha26@gmail.com', 'female', 'kop', 20, '', '2020-06-26 15:08:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(7, 'Karan Gavali', 'karang@gmail.com', 7894561230, ' karangavali', '2020-06-28 11:04:25', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, NULL, 'Rhucha Satardekar', 0x3a3a3100000000000000000000000000, '2020-06-16 14:05:08', NULL, 0),
(25, NULL, 'Rhucha Sanjay Satardekar', 0x3a3a3100000000000000000000000000, '2020-06-16 14:05:46', NULL, 0),
(26, NULL, 'Karan', 0x3a3a3100000000000000000000000000, '2020-06-16 14:08:36', NULL, 0),
(27, 10, 'karang@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-16 14:09:10', '16-06-2020 07:54:46 PM', 1),
(28, NULL, 'karang@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-17 14:27:31', NULL, 0),
(29, 11, 'pallavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-17 14:35:14', NULL, 1),
(30, NULL, 'pallavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-17 16:52:19', NULL, 0),
(31, 11, 'pallavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-17 16:52:39', '17-06-2020 10:32:15 PM', 1),
(32, 11, 'pallavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-17 17:05:37', '17-06-2020 10:36:28 PM', 1),
(33, 11, 'pallavi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-17 17:49:14', '17-06-2020 11:22:26 PM', 1),
(34, 13, 'c@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 05:03:58', '21-06-2020 10:44:50 AM', 1),
(35, 13, 'c@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 09:41:17', '21-06-2020 03:17:02 PM', 1),
(36, 13, 'c@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 09:49:53', '21-06-2020 03:28:32 PM', 1),
(37, 13, 'c@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 10:05:01', '21-06-2020 03:35:16 PM', 1),
(38, NULL, 'c@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 10:26:22', NULL, 0),
(39, NULL, 'c@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 10:26:46', NULL, 0),
(40, 14, 'rhugvedsatardekar39@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 10:28:11', '21-06-2020 03:59:09 PM', 1),
(41, 14, 'rhugvedsatardekar39@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 10:31:09', '21-06-2020 04:01:28 PM', 1),
(42, NULL, 'c@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 10:35:07', NULL, 0),
(43, 14, 'rhugvedsatardekar39@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 10:35:36', '21-06-2020 04:06:04 PM', 1),
(44, 14, 'rhugvedsatardekar39@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 12:07:17', '22-06-2020 03:53:29 PM', 1),
(45, NULL, 'k@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 10:27:14', NULL, 0),
(46, 15, 'k@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 10:28:31', '22-06-2020 04:00:53 PM', 1),
(47, 15, 'k@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 10:33:56', '22-06-2020 04:04:28 PM', 1),
(48, NULL, 'c@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-23 16:22:22', NULL, 0),
(49, NULL, 'rhugvedsatardekar39@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-23 16:22:49', NULL, 0),
(50, 16, 'suraj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-23 16:25:14', '23-06-2020 09:56:04 PM', 1),
(51, 14, 'rhugvedsatardekar39@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-23 17:51:03', '23-06-2020 11:22:30 PM', 1),
(52, 14, 'rhugvedsatardekar39@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-24 03:41:56', '24-06-2020 09:22:55 AM', 1),
(53, 14, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-24 03:53:10', '24-06-2020 07:13:22 PM', 1),
(54, NULL, 'rhugvedsatardekar39@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-24 13:58:08', NULL, 0),
(55, 14, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-24 13:58:23', '24-06-2020 07:29:47 PM', 1),
(56, 14, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-24 14:32:47', '24-06-2020 08:03:16 PM', 1),
(57, 14, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-25 11:08:18', '25-06-2020 05:23:16 PM', 1),
(58, 14, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-25 12:24:26', NULL, 1),
(59, 14, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-26 14:56:12', '26-06-2020 08:27:32 PM', 1),
(60, 17, 'rhucha26@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-26 15:05:54', '26-06-2020 08:37:29 PM', 1),
(61, 17, 'rhucha26@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-26 15:10:00', NULL, 1),
(62, NULL, 'suraj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-27 12:08:08', NULL, 0),
(63, NULL, 'suraj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-27 12:08:19', NULL, 0),
(64, 14, 'rss@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-27 12:08:37', NULL, 1),
(65, 17, 'rhucha26@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-28 09:56:22', '28-06-2020 03:26:28 PM', 1),
(66, 17, 'rhucha26@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-28 10:05:13', '28-06-2020 03:37:50 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(9, 'Rhucha Sanjay Satardekar', 'kop', 'kop', '', 'rhucha.satardekar@gmail.com', 'e1c170abe1291b86b290ff9d8e9e1b97', '2020-06-16 14:04:36', NULL),
(10, 'Karan', 'kop', 'kop', '', 'karang@gmail.com', '887f42cd85c28a96f1af4d22fe6e4556', '2020-06-16 14:07:39', NULL),
(11, 'Pallavi Bharti', 'pune', 'pune', 'female', 'pallavi@gmail.com', 'a4e8544b33af05b26ba8668a16ac04ff', '2020-06-17 14:34:53', NULL),
(12, 'Rhucha', 'kop', 'kop', '', 'rhucha@gmail.com', 'b134c5890db65894227b807280edb441', '2020-06-21 05:00:55', NULL),
(14, 'Sanjay Yashwant Satardekar', 'Mahadwar road', 'kop', 'male', 'rss@gmail.com', '0d2616237a7f0ce9ae9e1c5d9b55fa21', '2020-06-21 10:27:21', '2020-06-24 13:58:43'),
(15, 'karan', 'kop', 'mah', 'male', 'k@gmail.com', 'c08ac56ae1145566f2ce54cbbea35fa3', '2020-06-22 10:26:41', '2020-06-22 10:28:09'),
(16, 'Suraj TAmboli', 'Karad', 'Karad', 'male', 'suraj@gmail.com', '9dfcce905562c5770662f3320674e72f', '2020-06-23 16:24:53', NULL),
(17, 'Rhucha', 'kop', 'kop', 'female', 'rhucha26@gmail.com', '38402514f4cc954730ef33dc1494ab55', '2020-06-26 15:05:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speaker`
--
ALTER TABLE `speaker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speakerappointment`
--
ALTER TABLE `speakerappointment`
  ADD PRIMARY KEY (`speid`);

--
-- Indexes for table `speakerlog`
--
ALTER TABLE `speakerlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speakerspecilization`
--
ALTER TABLE `speakerspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblappointmenthistory`
--
ALTER TABLE `tblappointmenthistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclient`
--
ALTER TABLE `tblclient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `speaker`
--
ALTER TABLE `speaker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `speakerappointment`
--
ALTER TABLE `speakerappointment`
  MODIFY `speid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `speakerlog`
--
ALTER TABLE `speakerlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `speakerspecilization`
--
ALTER TABLE `speakerspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblappointmenthistory`
--
ALTER TABLE `tblappointmenthistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblclient`
--
ALTER TABLE `tblclient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
