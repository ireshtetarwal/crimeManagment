-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2022 at 01:58 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crime_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `c_id` int(11) NOT NULL,
  `a_no` bigint(12) NOT NULL,
  `location` varchar(50) NOT NULL,
  `type_crime` varchar(50) NOT NULL,
  `d_o_c` date NOT NULL,
  `description` varchar(7000) NOT NULL,
  `inc_status` varchar(50) DEFAULT 'Unassigned',
  `pol_status` varchar(50) DEFAULT 'null',
  `p_id` varchar(50) DEFAULT 'Null'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`c_id`, `a_no`, `location`, `type_crime`, `d_o_c`, `description`, `inc_status`, `pol_status`, `p_id`) VALUES
(1, 123214521452, 'Tollygunge', 'Robbery', '2018-12-06', 'My Home has been Robbed.', 'Assigned', 'ChargeSheet Filed', 't101'),
(2, 123423453456, 'Anandapur', 'Theft', '2022-09-06', 'purse got by someone', 'Unassigned', 'null', 'Null'),
(3, 123423453456, 'Jhunjhunu', 'Molestation', '2022-08-30', 'lag gye', 'Unassigned', 'null', 'Null');

-- --------------------------------------------------------

--
-- Table structure for table `head`
--

CREATE TABLE `head` (
  `h_id` varchar(50) NOT NULL,
  `h_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `head`
--

INSERT INTO `head` (`h_id`, `h_pass`) VALUES
('head@kp', 'head');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `p_name` varchar(50) NOT NULL,
  `p_id` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `p_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`p_name`, `p_id`, `spec`, `location`, `p_pass`) VALUES
('Iresh', '111', 'Murder', 'rajasthan', 'iresh'),
('Anil Mishra', '222', 'All', 'Bihar', 'anil'),
('Suvendu Ghosh', 't101', 'Robbery', 'Tollygunge', 'suvendu');

-- --------------------------------------------------------

--
-- Table structure for table `police_station`
--

CREATE TABLE `police_station` (
  `i_id` varchar(50) NOT NULL,
  `i_name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `i_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police_station`
--

INSERT INTO `police_station` (`i_id`, `i_name`, `location`, `i_pass`) VALUES
('anil@mishra', 'Anil Mishra', 'Bihar', 'anil'),
('iresh@tetarwal', 'Iresh', 'Jhunjhunu', 'iresh');

-- --------------------------------------------------------

--
-- Table structure for table `update_case`
--

CREATE TABLE `update_case` (
  `c_id` int(11) NOT NULL,
  `d_o_u` timestamp NOT NULL DEFAULT current_timestamp(),
  `case_update` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `update_case`
--

INSERT INTO `update_case` (`c_id`, `d_o_u`, `case_update`) VALUES
(1, '2018-12-17 10:32:06', 'Criminal Verified'),
(1, '2018-12-17 10:32:12', 'Criminal Caught'),
(1, '2018-12-17 10:32:15', 'Criminal Interrogated'),
(1, '2018-12-17 10:32:21', 'Criminal Accepted the Crime'),
(1, '2018-12-17 10:32:26', 'Criminal Charged'),
(1, '2018-12-17 10:32:51', 'The case has been moved to Court.'),
(1, '2018-12-17 10:32:59', 'Criminal Verified');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_name` varchar(50) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `u_pass` varchar(50) NOT NULL,
  `u_addr` varchar(100) NOT NULL,
  `a_no` bigint(12) NOT NULL,
  `gen` varchar(15) NOT NULL,
  `mob` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_name`, `u_id`, `u_pass`, `u_addr`, `a_no`, `gen`, `mob`) VALUES
('Satyansh Kumar', 'satyansh123@gmail.com', 'satyansh', 'Ranchi', 123214521452, 'Male', 9854123654),
('Iresh Tetarwal', 'ireshtetarwal1234@gmail.com', '123456', 'banglore', 123423453456, 'Male', 8905646839);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `police_station`
--
ALTER TABLE `police_station`
  ADD PRIMARY KEY (`i_id`),
  ADD UNIQUE KEY `location` (`location`);

--
-- Indexes for table `update_case`
--
ALTER TABLE `update_case`
  ADD UNIQUE KEY `d_o_u` (`d_o_u`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`a_no`),
  ADD UNIQUE KEY `u_id` (`u_id`),
  ADD UNIQUE KEY `mob` (`mob`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
