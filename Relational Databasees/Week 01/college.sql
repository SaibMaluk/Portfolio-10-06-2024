-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2024 at 12:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` varchar(50) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `lecturer_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrolment`
--

CREATE TABLE `enrolment` (
  `enrolmentID` varchar(10) NOT NULL,
  `studentID` varchar(20) NOT NULL,
  `moduleID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrolment`
--

INSERT INTO `enrolment` (`enrolmentID`, `studentID`, `moduleID`) VALUES
('18', 'ec1304184', 'EC0006'),
('5', 'ec1702958', 'EC0002'),
('12', 'ec1715553', 'EC0004'),
('7', 'ec1718024', 'EC0002'),
('1', 'ec1719990', 'EC0001'),
('29', 'ec1822859', 'EC0011'),
('9', 'ec1825661', 'EC0003'),
('27', 'ec1829437', 'EC0010'),
('2', 'ec1831770', 'EC0001'),
('6', 'ec1834959', 'EC0002'),
('25', 'ec1839440', 'EC0009'),
('20', 'ec1839670', 'EC0007'),
('15', 'ec1840146', 'EC0005'),
('3', 'ec1840377', 'EC0001'),
('28', 'ec1843066', 'EC0010'),
('11', 'ec1843427', 'EC0003'),
('22', 'ec1848862', 'EC0007'),
('16', 'ec1851770', 'EC0005'),
('30', 'ec1853157', 'EC0011'),
('26', 'ec1858501', 'EC0009'),
('17', 'ec1859661', 'EC0005'),
('4', 'ec1861972', 'EC0001'),
('19', 'ec1864413', 'EC0006'),
('14', 'ec1864542', 'EC0004'),
('21', 'ec1927333', 'EC0007'),
('8', 'ec1928372', 'EC0002'),
('13', 'ec1928704', 'EC0004'),
('10', 'ec1929265', 'EC0003'),
('23', 'ec1929485', 'EC0008'),
('24', 'ec1930414', 'EC0008');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `lecturer_id` varchar(80) NOT NULL,
  `lecturer_surname` varchar(50) NOT NULL,
  `lecturer_firstname` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lecturer_module`
--

CREATE TABLE `lecturer_module` (
  `id` varchar(50) NOT NULL,
  `module_id` varchar(50) NOT NULL,
  `lecturer_id` varchar(50) NOT NULL,
  `year_of_delivery` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `moduleID` varchar(20) NOT NULL,
  `moduledescription` varchar(100) NOT NULL,
  `credit` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`moduleID`, `moduledescription`, `credit`) VALUES
('EC0001', 'Java', 6),
('EC0002', 'Python', 6),
('EC0003', 'Networking', 6),
('EC0004', 'Database', 6),
('EC0005', 'SQL', 6),
('EC0006', 'Web', 6),
('EC0007', 'Hardware', 6),
('EC0008', 'Security', 6),
('EC0009', 'Cybertech', 6),
('EC0010', 'Mobile', 6),
('EC0011', 'php', 6);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` varchar(20) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `fullname`, `email`) VALUES
('ec1304184', 'Joshua Gupta', 'ec1304184@edinburghcollege.ac.uk'),
('ec1702958', 'Theodore Dinh', 'ec1702958@edinburghcollege.ac.uk'),
('ec1715553', 'Penelope Jordan', 'ec1715553@edinburghcollege.ac.uk'),
('ec1718024', 'Adam Dang', 'ec1718024@edinburghcollege.ac.uk'),
('ec1719990', 'Emily Davis', 'ec1719990@edinburghcollege.ac.uk'),
('ec1822859', 'Savannah Ali', 'ec1822859@edinburghcollege.ac.uk'),
('ec1825661', 'Luna Sanders', 'ec1825661@edinburghcollege.ac.uk'),
('ec1829437', 'Madeline Walker', 'ec1829437@edinburghcollege.ac.uk'),
('ec1831770', 'Camila Rogers', 'ec1831770@edinburghcollege.ac.uk'),
('ec1834959', 'Eli Jones', 'ec1834959@edinburghcollege.ac.uk'),
('ec1839440', 'Easton Bailey', 'ec1839440@edinburghcollege.ac.uk'),
('ec1839670', 'Ruby Barnes', 'ec1839670@edinburghcollege.ac.uk'),
('ec1840146', 'Austin Vo', 'ec1840146@edinburghcollege.ac.uk'),
('ec1840377', 'David Barnes', 'ec1840377@edinburghcollege.ac.uk'),
('ec1843066', 'Abigail Mejia', 'ec1843066@edinburghcollege.ac.uk'),
('ec1843427', 'Elias Alvarado', 'ec1843427@edinburghcollege.ac.uk'),
('ec1848862', 'Leonardo Dixon', 'ec1848862@edinburghcollege.ac.uk'),
('ec1851770', 'Isabella Xi', 'ec1851770@edinburghcollege.ac.uk'),
('ec1853157', 'Wyatt Chin', 'ec1853157@edinburghcollege.ac.uk'),
('ec1858501', 'Jose Henderson', 'ec1858501@edinburghcollege.ac.uk'),
('ec1859661', 'Logan Rivera', 'ec1859661@edinburghcollege.ac.uk'),
('ec1861972', 'Carson Lu', 'ec1861972@edinburghcollege.ac.uk'),
('ec1864413', 'Bella Powell', 'ec1864413@edinburghcollege.ac.uk'),
('ec1864542', 'Eva Rivera', 'ec1864542@edinburghcollege.ac.uk'),
('ec1927333', 'Camila Silva', 'ec1927333@edinburghcollege.ac.uk'),
('ec1928372', 'Dylan Choi', 'ec1928372@edinburghcollege.ac.uk'),
('ec1928704', 'Robert Yang', 'ec1928704@edinburghcollege.ac.uk'),
('ec1929265', 'Everleigh Ng', 'ec1929265@edinburghcollege.ac.uk'),
('ec1929485', 'Luke Martin', 'ec1929485@edinburghcollege.ac.uk'),
('ec1930414', 'Mateo Her', 'ec1930414@edinburghcollege.ac.uk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `enrolment`
--
ALTER TABLE `enrolment`
  ADD PRIMARY KEY (`enrolmentID`),
  ADD KEY `studentID` (`studentID`,`moduleID`),
  ADD KEY `moduleID` (`moduleID`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`lecturer_id`);

--
-- Indexes for table `lecturer_module`
--
ALTER TABLE `lecturer_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`moduleID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrolment`
--
ALTER TABLE `enrolment`
  ADD CONSTRAINT `enrolment_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enrolment_ibfk_2` FOREIGN KEY (`moduleID`) REFERENCES `module` (`moduleID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
