-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2023 at 06:02 PM
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
-- Database: `establishment_section`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `fullname`, `email`, `updationDate`) VALUES
(1, 'admin', 'd00f5d5217896fb7fd601412cb890830', 'Liam Moore', 'admin@mail.com', '2022-02-09 15:15:46'),
(2, 'bruno', '5f4dcc3b5aa765d61d8327deb882cf99', 'Bruno Den', 'itsbruno@mail.com', '2022-02-09 15:15:50'),
(3, 'greenwood', '5f4dcc3b5aa765d61d8327deb882cf99', 'Johnny Greenwood', 'greenwood@mail.com', '2022-02-09 15:15:54');

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

CREATE TABLE `hod` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hod`
--

INSERT INTO `hod` (`id`, `UserName`, `Password`, `fullname`, `email`, `updationDate`) VALUES
(0, 'hod', 'd00f5d5217896fb7fd601412cb890830', 'ram', 'ram@gmail.com', '2023-10-27 13:17:30'),
(1234567890, 'ram', 'd00f5d5217896fb7fd601412cb890830', 'ram Sharma', 'ram@gmail.com', '2023-10-27 13:17:30'),
(2147483647, 'prem', '202cb962ac59075b964b07152d234b70', 'prem shinde', 'prem@gmail.com', '2023-10-27 14:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `principal`
--

CREATE TABLE `principal` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `principal`
--

INSERT INTO `principal` (`id`, `UserName`, `Password`, `fullname`, `email`, `updationDate`) VALUES
(1236564, 'sham', 'd00f5d5217896fb7fd601412cb890830', 'Sham kadam', 'sham@gmail.com', '2023-10-27 13:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `DepartmentName` varchar(255) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `caste` varchar(255) NOT NULL,
  `subcaste` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_nos` int(10) NOT NULL,
  `aadhar_nos` int(13) NOT NULL,
  `pan_nos` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(10, 'Civil', 'c', '1234', '2023-10-26 16:51:31'),
(11, 'Mechanical', 'Mc', '2345', '2023-10-26 16:51:50'),
(12, 'computer science', 'Cs', '23456', '2023-10-26 16:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `caste` varchar(255) NOT NULL,
  `subcaste` varchar(255) NOT NULL,
  `aadhar` varchar(255) NOT NULL,
  `pan` varchar(255) NOT NULL,
  `ssc` varchar(25) NOT NULL,
  `hsc` varchar(255) NOT NULL,
  `grad` varchar(255) NOT NULL,
  `phd` varchar(255) NOT NULL,
  `publish` varchar(255) NOT NULL,
  `journal` varchar(255) NOT NULL,
  `patent` varchar(255) NOT NULL,
  `award` varchar(255) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `Phonenumber`, `religion`, `caste`, `subcaste`, `aadhar`, `pan`, `ssc`, `hsc`, `grad`, `phd`, `publish`, `journal`, `patent`, `award`, `Status`, `RegDate`) VALUES
(1, 'ASTR001245', 'Johnny', 'Scott', 'johnny@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Male', '1996-06-12', 'Information Technology', '49 Arron Smith Drive', '7854785477', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2020-11-10 11:29:59'),
(2, 'ASTR001369', 'Milton', 'Doe', 'milt@mail.com', 'f925916e2754e5e03f75dd58a5733251', 'Male', '1990-02-02', 'Operations', '15 Kincheloe Road', '8587944255', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2020-11-10 13:40:02'),
(3, 'ASTR004699', 'Shawn', 'Den', 'Shawnden@mail.com', '3b87c97d15e8eb11e51aa25e9a5770e9', 'Male', '1995-03-22', 'Human Resource', '239 Desert Court', '7458887169', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2021-03-03 07:24:17'),
(4, 'ASTR002996', 'Carol', 'Reed', 'carol@mail.com', '723e1489a45d2cbaefec82eee410abd5', 'Female', '1989-03-23', 'Volunteer', 'Demo Address', '7854448550', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2021-03-03 10:44:13'),
(5, 'ASTR001439', 'Danny', 'Wood', 'danny@mail.com', 'b7bee6b36bd35b773132d4e3a74c2bb5', 'Male', '1986-03-12', 'Research', '11 Rardin Drive', '4587777744', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2021-03-04 17:14:48'),
(6, 'ASTR006946', 'Shawn', 'Martin', 'shawn@mail.com', 'a3cceba83235dc95f750108d22c14731', 'Male', '1992-08-28', 'Finance', '3259 Ray Court', '8520259670', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2021-03-04 17:46:02'),
(7, 'ASTR000084', 'Jennifer', 'Foltz', 'jennifer@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Female', '1992-12-11', 'Marketing', '977 Smithfield Avenue', '7401256696', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-02-09 15:29:00'),
(8, 'ASTR012447', 'Will', 'Williams', 'williams@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Male', '1992-02-15', 'Research', '366 Cemetery Street', '7854000065', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-02-10 15:52:32'),
(9, '43265472472', 'aakash', 'kolhapure', 'aakash@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '2023-09-28', 'computer science', 'satara', '8945561230', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2023-10-26 15:31:55'),
(10, '1234567890', 'aaditya', 'kolhapure', 'aaditya@gmail.com', 'afab3e9707435d6b0888b566d7ad3ff8', 'Male', '2023-10-06', 'computer science', 'satara', '2323232323', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2023-10-26 16:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(7, 'Casual Leave', '30/11/2020', '29/10/2020', 'Test Test Demo Test Test Demo Test Test Demo', '2020-11-19 13:11:21', 'A demo Admin Remarks for Testing!', '2020-12-02 23:26:27 ', 2, 1, 1),
(8, 'Medical Leave', '21/10/2020', '25/10/2020', 'Test Test Demo Test Test Demo Test Test Demo Test Test Demo', '2020-11-20 11:14:14', 'A demo Admin Remarks for Testing!', '2020-12-02 23:24:39 ', 1, 1, 1),
(9, 'Medical Leave', '08/12/2020', '12/12/2020', 'This is a demo description for testing purpose', '2020-12-02 18:26:01', 'All good make your time and hope you\'ll be fine and get back to work asap! Best Regards, Admin.', '2021-03-03 11:19:29 ', 1, 1, 2),
(10, 'Restricted Holiday', '25/12/2020', '25/12/2020', 'This is a demo description for testing purpose', '2020-12-03 08:29:07', 'A demo Admin Remarks for Testing!', '2020-12-03 14:06:12 ', 1, 1, 1),
(11, 'Medical Leave', '02/12/2020', '06/12/2020', 'This is a demo description for testing purpose', '2020-04-29 15:01:14', 'A demo Admin Remarks for Testing!', '2020-04-29 20:33:21 ', 1, 1, 1),
(12, 'Casual Leave', '02/02/2020', '03/03/2020', 'This is a demo description for testing purpose', '2020-07-03 08:11:11', 'A demo Admin Remarks for Testing!', '2020-07-03 13:42:05 ', 1, 1, 1),
(14, 'Medical Leave', '2020-03-05', '2020-06-05', 'This is a demo description for testing purpose', '2021-03-02 09:31:01', NULL, NULL, 0, 1, 2),
(15, 'Casual Leave', '2021-03-15', '2021-03-05', 'None, Testing', '2021-03-02 09:32:42', 'casual leave not allowed for a week, the company\'s gotta huge project which should be completed within this week.', '2021-03-03 11:47:33 ', 2, 1, 1),
(17, 'Paternity Leave', '2021-03-03', '2021-03-10', 'Being a father i\'ve got to look after my new borns and spend some time with my families too!', '2021-03-03 10:58:18', NULL, NULL, 0, 1, 3),
(18, 'Medical Leave', '2021-03-04', '2021-03-05', 'i\'ve to go for my body checkup. got an appointment for tommorow', '2021-03-03 12:09:44', 'No comments on it.', '2021-03-04 22:56:24 ', 1, 1, 4),
(19, 'Compensatory Leave', '2021-03-05', '2021-03-06', 'been working over time since last night, so i\'d like a day off', '2021-03-03 12:24:15', NULL, NULL, 0, 1, 1),
(20, 'Casual Leave', '2022-02-09', '2022-02-12', 'None, Test Mode', '2022-02-09 15:31:15', 'hvkfhgkhf', '2023-10-26 20:38:55 ', 1, 1, 7),
(21, 'Self-Quarantine Leave', '2022-02-11', '2022-02-18', 'This is just a demo condition for testing purpose!!', '2022-02-10 16:05:30', 'No comments!!', '2022-02-10 21:37:15 ', 1, 1, 8),
(22, 'Medical Leave', '2023-10-27', '2023-10-29', 'hggudfgdfgfrhoio', '2023-10-27 14:57:05', 'kjdlh', '2023-10-27 20:38:17 ', 1, 1, 10),
(23, 'Medical Leave', '2023-10-28', '2023-10-31', 'i was having  feaver.', '2023-10-27 15:29:00', 'do not take leave again', '2023-10-27 20:59:59 ', 1, 1, 9),
(24, 'Medical Leave', '2020-03-29', '2020-03-30', 'kfghkfh', '2023-10-28 07:15:20', 'itouopf', '2023-10-28 12:47:05 ', 1, 1, 10),
(25, 'Paternity Leave', '2020-03-05', '2020-03-05', 'fhgifi', '2023-10-28 07:27:29', 'n ', '2023-10-31 14:56:35 ', 1, 1, 9),
(26, 'Religious Holidays', '2023-10-28', '2020-04-01', 'hsgfuyguir', '2023-10-28 08:49:00', 'gfjkhdkgd', '2023-10-28 14:20:38 ', 2, 1, 10),
(27, 'Compensatory Leave', '2023-10-28', '2023-11-01', 'fjdgfgh', '2023-10-28 08:49:27', 'gsdfjfhs', '2023-10-28 14:20:25 ', 1, 1, 10),
(28, 'Maternity Leave', '2023-10-28', '2023-11-11', 'jjsjk', '2023-10-28 09:06:36', 'kjsls', '2023-10-28 14:38:10 ', 1, 1, 10),
(29, 'Restricted Holiday', '2023-10-31', '2023-11-09', 'gfhgihiohj', '2023-10-31 07:36:51', 'hdksg', '2023-10-31 13:09:18 ', 1, 1, 10),
(30, 'Medical Leave', '2023-11-08', '2023-11-10', 'ghfdfjgf', '2023-10-31 09:27:27', 'dgd', '2023-10-31 14:58:09 ', 1, 1, 10),
(31, 'Casual Leave', '2020-03-05', '2020-03-05', 'kjscchs;cija/c\r\n', '2023-10-31 09:36:02', 'swarup\r\n', '2023-10-31 15:07:07 ', 1, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'Casual Leave', 'Provided for urgent or unforeseen matters to the employees.', '2020-11-01 12:07:56'),
(2, 'Medical Leave', 'Related to Health Problems of Employee', '2020-11-06 13:16:09'),
(3, 'Restricted Holiday', 'Holiday that is optional', '2020-11-06 13:16:38'),
(5, 'Paternity Leave', 'To take care of newborns', '2021-03-03 10:46:31'),
(6, 'Bereavement Leave', 'Grieve their loss of losing loved ones', '2021-03-03 10:47:48'),
(7, 'Compensatory Leave', 'For Overtime workers', '2021-03-03 10:48:37'),
(8, 'Maternity Leave', 'Taking care of newborn ,recoveries', '2021-03-03 10:50:17'),
(9, 'Religious Holidays', 'Based on employee\'s followed religion', '2021-03-03 10:51:26'),
(10, 'Adverse Weather Leave', 'In terms of extreme weather conditions', '2021-03-03 13:18:26'),
(11, 'Voting Leave', 'For official election day', '2021-03-03 13:19:06'),
(12, 'Self-Quarantine Leave', 'Related to COVID-19 issues', '2021-03-03 13:19:48'),
(13, 'Personal Time Off', 'To manage some private matters', '2021-03-03 13:21:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hod`
--
ALTER TABLE `hod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `principal`
--
ALTER TABLE `principal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `aadhar_nos` (`aadhar_nos`),
  ADD UNIQUE KEY `pan_nos` (`pan_nos`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
