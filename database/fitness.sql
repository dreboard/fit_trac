-- phpMyAdmin SQL Dump
-- version 3.5.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 10, 2013 at 03:14 AM
-- Server version: 5.5.32-31.0-log
-- PHP Version: 5.3.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tru33338_fitness`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `albumID` int(10) NOT NULL AUTO_INCREMENT,
  `albumName` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'None',
  `userID` int(10) NOT NULL,
  `clubID` int(10) NOT NULL DEFAULT '0',
  `groupID` int(10) NOT NULL DEFAULT '0',
  `imgCategory` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'None',
  `albumDescription` text COLLATE latin1_general_ci,
  PRIMARY KEY (`albumID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `albumpics`
--

CREATE TABLE IF NOT EXISTS `albumpics` (
  `albumpicID` int(10) NOT NULL AUTO_INCREMENT,
  `albumID` int(100) NOT NULL,
  `imgTitle` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `imgDescription` text COLLATE latin1_general_ci,
  `imgDate` datetime NOT NULL,
  `imgURL` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `imgName` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `userID` int(10) NOT NULL,
  `clubID` int(10) NOT NULL DEFAULT '0',
  `imgCategory` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'None',
  PRIMARY KEY (`albumpicID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `articleID` int(10) NOT NULL AUTO_INCREMENT,
  `articleTitle` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `article` text COLLATE latin1_general_ci NOT NULL,
  `articleDate` datetime NOT NULL,
  PRIMARY KEY (`articleID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `barLoad`
--

CREATE TABLE IF NOT EXISTS `barLoad` (
  `barLoadID` int(10) NOT NULL AUTO_INCREMENT,
  `weight` int(10) NOT NULL,
  `plates` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`barLoadID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=145 ;

--
-- Dumping data for table `barLoad`
--

INSERT INTO `barLoad` (`barLoadID`, `weight`, `plates`) VALUES
(1, 185, '45x2, 25x2'),
(2, 190, '45x2, 25x2, 2.5x2'),
(3, 195, '45x2, 25x2, 5x2'),
(4, 200, '45x2, 25x2, 2.5x2'),
(5, 205, '45x2, 25x2, 2.5x2'),
(6, 210, '45x2, 25x2, 10x2, 2.5x2'),
(7, 215, '45x2, 25x2, 10x2, 5x2'),
(8, 220, '45x2, 25x2, 10x2, .5x2, 2.5x2'),
(9, 225, '45x4'),
(10, 230, '45x4, 2.5x2'),
(11, 235, '45x4, 5x2'),
(12, 240, '45x4, 5x2, 2.5x2'),
(13, 245, '45x4, 10x2'),
(14, 250, '45x4, 10x2, 2.5x2'),
(15, 255, '45x4, 10x2, 5x2'),
(16, 260, '45x4, 10x2, 5x2, 2.5x2'),
(17, 270, '45x4, 10x4, 2.5x2'),
(18, 275, '45x4, 25x2'),
(19, 280, '45x4, 25x2, 2.5x2'),
(20, 285, '45x4, 25x2, 5x2'),
(21, 290, '45x4, 25x2, 5x2, 2.5x2'),
(22, 295, '45x4, 25x2, 10x2'),
(23, 300, '45x4, 25x2, 10x2, 2.5x2'),
(24, 305, '45x4, 25x2, 10x2, 5x2'),
(25, 310, '45x4, 25x2, 5x2, 5x2, 2.5x2'),
(26, 315, '45x6'),
(27, 320, '45x6, 2.5x2'),
(28, 325, '45x6, 5x2'),
(29, 330, '45x6, 5x2, 2.5x2'),
(30, 335, '45x6, 10x2'),
(31, 265, '45x4, 10x4'),
(32, 340, '45x6, 10x2, 2.5x2'),
(33, 345, '45x6, 10x2, 5x2'),
(34, 350, '45x6, 10x2, 5x2, 2.5x2'),
(35, 355, '45x6, 10x4'),
(36, 360, '45x6, 10x4, 2.5x2'),
(37, 365, '45x6, 25x2'),
(38, 370, '45x6, 25x2, 2.5x2'),
(39, 375, '45x6, 25x2, 5x2'),
(40, 380, '45x6, 25x2, 5x2, 2.5x2'),
(41, 385, '45x6, 25x2, 10x2'),
(42, 390, '45x6, 25x2, 10x2, 2.5x2'),
(43, 395, '45x6, 25x2, 10x2, 5x2'),
(44, 400, '45x6, 25x2, 10x2, 5x2, 2.5x2'),
(45, 405, '45x8'),
(46, 410, '45x8, 2.5x2'),
(47, 415, '45x8, 5x2'),
(48, 420, '45x8, 5x2, 2.5x2'),
(49, 425, '45x8, 10x2'),
(50, 430, '45x8, 10x2, 2.5x2'),
(51, 435, '45x8, 10x2, 5x2'),
(52, 440, '45x8, 10x2, 5x2, 2.5x2'),
(53, 445, '45x8, 10x4'),
(54, 450, '45x8, 10x4, 2.5x2'),
(55, 455, '45x8, 25x2'),
(56, 460, '45x8, 25x2, 2.5x2'),
(57, 465, '45x8, 25x2, 5x2'),
(58, 470, '45x8, 25x2, 5x2, 2.5x2'),
(59, 475, '45x8, 25x2, 10x2'),
(60, 480, '45x8, 25x2, 10x2, 2.5x2'),
(61, 485, '45x8, 25x2, 10x2, 5x2'),
(62, 490, '45x8, 25x2, 10x2, 5x2, 2.5x2'),
(63, 495, '45x10'),
(64, 500, '45x10, 2.5x2'),
(65, 505, '45x10, 5x2'),
(66, 510, '45x10, 5x2, 2.5x2'),
(67, 515, '45x10, 10x2'),
(68, 520, '45x10, 10x2, 2.5x2'),
(69, 525, '45x10, 10x2, 5x2'),
(70, 530, '45x10, 10x2, 5x2, 2.5x2'),
(71, 535, '45x10, 10x4'),
(72, 540, '45x10, 10x4, 2.5x2 '),
(73, 545, '45x10, 25x2'),
(74, 550, '45x10, 25x2, 2.5x2 '),
(75, 555, '45x10, 25x2, 5x2 '),
(76, 560, '45x10, 25x2, 5x2, 2.5x2 '),
(77, 565, '45x10, 25x2, 10x2'),
(78, 570, '45x10, 25x2, 10x2, 2.5x2 '),
(79, 575, '45x10, 25x2, 10x2, 5x2'),
(80, 580, '45x10, 25x2, 10x2, 5x2, 2.5x2 '),
(81, 585, '45x12'),
(82, 590, '45x12, 2.5x2 '),
(83, 595, '45x12, 5x2 '),
(84, 600, '45x12, 5x2, 2.5x2 '),
(85, 605, '45x12, 10x2'),
(86, 610, '45x12, 10x2, 2.5x2 '),
(87, 615, '45x12, 10x2, 5x2'),
(88, 620, '45x12, 10x2, 5x2, 2.5x2 '),
(89, 625, '45x12, 10x4'),
(90, 630, '45x12, 10x4, 2.5x2 '),
(91, 635, '45x12, 25x2'),
(92, 640, '45x12, 25x2, 2.5x2'),
(93, 645, '45x12, 25x2, 5x2'),
(94, 650, '45x12, 25x2, 5x2, 2.5x2'),
(95, 655, '45x12, 25x2, 10x2'),
(96, 660, '45x12, 25x2, 10x2, 2.5x2'),
(97, 665, '45x12, 25x2, 10x2, 5x2'),
(98, 670, '45x12, 25x2, 10x2, 5x2, 2.5x2'),
(99, 675, '45x14'),
(100, 680, '45x14, 2.5x2'),
(101, 685, '45x14, 5x2'),
(102, 690, '45x14, 5x2, 2.5x2'),
(103, 695, '45x14, 10x2'),
(104, 700, '45x14, 10x2, 2.5x2'),
(105, 705, '45x14, 10x2, 5x2'),
(106, 710, '45x14, 10x2, 5x2, 2.5x2'),
(107, 715, '45x14, 10x4'),
(108, 720, '45x14, 10x4, 2.5x2'),
(109, 725, '45x14, 25x2'),
(110, 730, '45x14, 25x2, 2.5x2'),
(111, 735, '45x14, 25x2, 5x2'),
(112, 740, '45x14, 25x2, 5x2, 2.5x2'),
(113, 745, '45x14, 25x2, 10x2'),
(114, 750, '45x14, 25x2, 10x2, 2.5x2'),
(115, 755, '45x14, 25x2, 10x2, 5x2'),
(116, 760, '45x14, 25x2, 10x2, 5x2, 2.5x2'),
(117, 765, '45x16'),
(118, 770, '45x16, 2.5x2'),
(119, 775, '45x16, 5x2'),
(120, 780, '45x16, 5x2, 2.5x2'),
(121, 785, '45x16, 10x2'),
(122, 790, '45x16, 10x2, 2.5x2'),
(123, 795, '45x16, 10x2, 5x2'),
(124, 800, '45x16, 10x2, 5x2, 2.5x2'),
(125, 805, '45x16, 10x4'),
(126, 810, '45x16, 10x4, 2.5x2'),
(127, 815, '45x16, 25x2'),
(128, 820, '45x16, 25x2, 2.5x2'),
(129, 825, '45x16, 25x2, 5x2'),
(130, 830, '45x16, 25x2, 5x2, 2.5x2'),
(131, 835, '45x16, 25x2, 10x2'),
(132, 840, '45x16, 25x2, 10x2, 2.5x2'),
(133, 845, '45x16, 25x2, 10x2, 5x2'),
(134, 850, '45x16, 25x2, 10x2, 5x2, 2.5x2'),
(135, 855, '45x16, 25x2, 10x4'),
(136, 860, '45x16, 25x2, 10x4, 2.5x2'),
(137, 865, '45x16, 25x4'),
(138, 870, '45x16, 25x4, 2.5x2'),
(139, 875, '45x16, 25x4, 5x2'),
(140, 880, '45x16, 25x4, 5x2, 2.5x2'),
(141, 885, '45x16, 25x4, 10x2'),
(142, 890, '45x16, 25x4, 10x2, 2.5x2'),
(143, 895, '45x16, 25x4, 10x2, 5x2'),
(144, 900, '45x16, 25x4, 10x2, 5x2, 2.5x2');

-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--

CREATE TABLE IF NOT EXISTS `blacklist` (
  `blacklistID` int(10) NOT NULL AUTO_INCREMENT,
  `blacklistIP` int(10) unsigned NOT NULL,
  `blacklistDate` datetime NOT NULL,
  PRIMARY KEY (`blacklistID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cardio`
--

CREATE TABLE IF NOT EXISTS `cardio` (
  `cardioID` int(100) NOT NULL AUTO_INCREMENT,
  `cardioName` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`cardioID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `cardio`
--

INSERT INTO `cardio` (`cardioID`, `cardioName`, `unit`, `type`) VALUES
(1, 'Running', 'Miles', 'Treadmill'),
(2, 'Cycling', 'Miles', 'Stationary'),
(3, 'Elliptical', 'Miles', 'Stationary'),
(4, 'Walking', 'Miles', 'Treadmill'),
(5, 'Stairs', 'Stairs', 'Stair Stepper'),
(6, 'Swimming', 'Laps', 'Pool'),
(7, 'Running', 'Miles', 'Road'),
(8, 'Stairs', 'Stairs', 'Stairs');

-- --------------------------------------------------------

--
-- Table structure for table `cardiotrac`
--

CREATE TABLE IF NOT EXISTS `cardiotrac` (
  `cardiotracID` int(10) NOT NULL AUTO_INCREMENT,
  `cardioID` int(10) NOT NULL,
  `duration` decimal(7,2) NOT NULL DEFAULT '0.00',
  `unit` varchar(100) DEFAULT NULL,
  `distance` decimal(7,3) NOT NULL DEFAULT '0.000',
  `laps` int(10) NOT NULL DEFAULT '0',
  `userID` int(10) NOT NULL,
  `workDay` date NOT NULL,
  PRIMARY KEY (`cardiotracID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `cardiotrac`
--

INSERT INTO `cardiotrac` (`cardiotracID`, `cardioID`, `duration`, `unit`, `distance`, `laps`, `userID`, `workDay`) VALUES
(1, 1, 0.18, 'Miles', 1.100, 0, 1, '2012-10-18'),
(2, 1, 0.18, 'Miles', 1.000, 0, 1, '2012-10-15'),
(8, 1, 0.18, 'Miles', 1.000, 0, 1, '2012-10-12'),
(9, 1, 0.20, 'Miles', 1.000, 0, 1, '2012-10-10'),
(11, 1, 0.22, 'Miles', 1.000, 0, 1, '2012-10-08'),
(22, 5, 1.00, 'Steps', 1000.000, 0, 1, '2012-10-18'),
(23, 1, 0.00, 'Miles', 1.000, 0, 1, '0000-00-00'),
(24, 1, 0.00, 'Miles', 1.000, 0, 1, '0000-00-00'),
(25, 1, 0.17, 'Miles', 1.000, 0, 1, '0000-00-00'),
(26, 2, 0.18, 'Miles', 6.000, 0, 1, '2012-10-19'),
(27, 2, 1.90, 'Miles', 1.300, 100, 1, '2012-10-19'),
(28, 7, 1.00, 'Miles', 1.200, 100, 1, '2012-10-19'),
(29, 0, 0.00, '', 2.000, 0, 1, '2012-10-29'),
(30, 0, 1.43, '', 4.000, 0, 1, '2012-10-29'),
(31, 1, 0.00, 'Miles', 4.000, 0, 1, '2012-10-29'),
(32, 1, 1.00, 'Miles', 3.800, 0, 1, '2012-10-29'),
(33, 1, 1.00, 'Miles', 5.500, 0, 1, '2012-10-29'),
(34, 1, 1.00, 'Miles', 5.500, 0, 1, '2012-10-29'),
(35, 0, 1.00, '', 3.000, 0, 1, '2012-10-30'),
(36, 6, 1.00, 'Laps', 0.000, 5, 1, '2012-10-30'),
(37, 1, 0.75, 'Miles', 2.300, 0, 1, '2012-10-30'),
(38, 1, 0.30, 'Miles', 2.000, 0, 1, '2012-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE IF NOT EXISTS `club` (
  `clubID` int(10) NOT NULL AUTO_INCREMENT,
  `clubName` varchar(255) NOT NULL,
  `clubType` varchar(100) DEFAULT NULL,
  `clubAddress` varchar(255) DEFAULT NULL,
  `clubCity` varchar(100) DEFAULT NULL,
  `clubState` varchar(22) DEFAULT NULL,
  `clubZip` varchar(15) DEFAULT NULL,
  `clubPhone` varchar(22) DEFAULT NULL,
  `clubEmail` varchar(100) NOT NULL,
  `clubWebsite` varchar(255) DEFAULT NULL,
  `clubDescription` text,
  `enterDate` datetime NOT NULL,
  `userID` int(10) NOT NULL,
  `clubLevel` varchar(20) NOT NULL DEFAULT 'Private',
  `approval` int(1) NOT NULL DEFAULT '0',
  `youtube` varchar(255) NOT NULL DEFAULT 'None',
  `facebook` varchar(255) NOT NULL DEFAULT 'None',
  PRIMARY KEY (`clubID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`clubID`, `clubName`, `clubType`, `clubAddress`, `clubCity`, `clubState`, `clubZip`, `clubPhone`, `clubEmail`, `clubWebsite`, `clubDescription`, `enterDate`, `userID`, `clubLevel`, `approval`, `youtube`, `facebook`) VALUES
(1, 'The Penny Club', 'Small Cents', NULL, NULL, NULL, NULL, NULL, 'admin@mycoinorganizer.com', 'pennyclub.site11.com', NULL, '2012-07-26 21:15:39', 1, 'Private', 1, 'None', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `clubmembers`
--

CREATE TABLE IF NOT EXISTS `clubmembers` (
  `clubmemberID` int(10) NOT NULL AUTO_INCREMENT,
  `clubID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `clubPosition` varchar(100) NOT NULL,
  `joinDate` datetime NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`clubmemberID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `clubmembers`
--

INSERT INTO `clubmembers` (`clubmemberID`, `clubID`, `userID`, `clubPosition`, `joinDate`, `status`) VALUES
(1, 1, 15, 'Manager', '2012-07-26 21:16:35', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `eventID` int(10) NOT NULL AUTO_INCREMENT,
  `userID` int(10) NOT NULL,
  `clubID` int(10) NOT NULL DEFAULT '0',
  `eventStartDate` date NOT NULL,
  `eventTitle` varchar(255) NOT NULL,
  `eventDescription` text NOT NULL,
  `eventEndDate` date DEFAULT NULL,
  `eventStartTime` time NOT NULL DEFAULT '00:00:00',
  `eventEndTime` time NOT NULL DEFAULT '00:00:00',
  `eventType` varchar(50) NOT NULL DEFAULT 'General',
  `seats` int(3) NOT NULL DEFAULT '999',
  `eventAddedBy` int(10) NOT NULL DEFAULT '0',
  `status` varchar(10) NOT NULL DEFAULT 'Active',
  `contact` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT '590 Longbow Drive',
  `city` varchar(50) NOT NULL DEFAULT 'Maumee',
  `state` varchar(20) NOT NULL DEFAULT 'Ohio',
  `zip` varchar(12) NOT NULL DEFAULT '43537',
  `email` varchar(100) NOT NULL DEFAULT 'None',
  `phone` varchar(20) NOT NULL DEFAULT '419-535-3222',
  `addedDate` datetime NOT NULL,
  `multiDay` int(10) NOT NULL DEFAULT '0',
  `frequency` varchar(30) NOT NULL DEFAULT 'None',
  `recurrence` varchar(50) NOT NULL DEFAULT 'None',
  `multiDayNum` int(10) NOT NULL DEFAULT '0',
  `cost` varchar(10) NOT NULL DEFAULT 'Free',
  PRIMARY KEY (`eventID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventID`, `userID`, `clubID`, `eventStartDate`, `eventTitle`, `eventDescription`, `eventEndDate`, `eventStartTime`, `eventEndTime`, `eventType`, `seats`, `eventAddedBy`, `status`, `contact`, `address`, `city`, `state`, `zip`, `email`, `phone`, `addedDate`, `multiDay`, `frequency`, `recurrence`, `multiDayNum`, `cost`) VALUES
(22, 0, 0, '2012-12-07', 'Monthly Meeting', '', '2012-12-07', '10:00:00', '10:00:00', 'General', 99, 1, 'Active', NULL, '999 street', 'Maumee', 'Ohio', '43537', 'None', '419-535-3222', '2012-12-03 11:04:13', 0, 'None', 'None', 0, '9.99');

-- --------------------------------------------------------

--
-- Table structure for table `eventday`
--

CREATE TABLE IF NOT EXISTS `eventday` (
  `eventDayID` int(10) NOT NULL AUTO_INCREMENT,
  `eventID` int(10) NOT NULL,
  `eventDay` date NOT NULL,
  `eventStartTime` time DEFAULT NULL,
  `eventEndTime` time DEFAULT NULL,
  `dayNumber` int(10) NOT NULL,
  PRIMARY KEY (`eventDayID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `eventday`
--

INSERT INTO `eventday` (`eventDayID`, `eventID`, `eventDay`, `eventStartTime`, `eventEndTime`, `dayNumber`) VALUES
(21, 23, '2012-12-07', '10:00:00', '10:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

CREATE TABLE IF NOT EXISTS `exercises` (
  `exerciseID` int(100) NOT NULL AUTO_INCREMENT,
  `muscleID` int(10) NOT NULL,
  `exersize` varchar(255) NOT NULL,
  `bodyPart` enum('Abdominals','Arms','Back','Biceps','Calves','Chest','Forearms','Glutes','Hamstrings','Lats','Legs','Neck','Quadriceps','Shoulders','Traps','Triceps') NOT NULL DEFAULT 'Quadriceps',
  `bodyPart2` enum('Abdominals','Arms','Back','Biceps','Calves','Chest','Forearms','Glutes','Hamstrings','Lats','Legs','Neck','Quadriceps','Shoulders','Traps','Triceps') DEFAULT NULL,
  `equipment` enum('Dumbbell','Barbell','EZ Curl Bar','Cable','Machine','Body','Kettlebell','Band') NOT NULL DEFAULT 'Dumbbell',
  `description` text,
  `type` enum('Compound','Isolation') NOT NULL DEFAULT 'Isolation',
  `video` text,
  `imageURL` varchar(255) NOT NULL DEFAULT 'blank.jpg',
  PRIMARY KEY (`exerciseID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=136 ;

--
-- Dumping data for table `exercises`
--

INSERT INTO `exercises` (`exerciseID`, `muscleID`, `exersize`, `bodyPart`, `bodyPart2`, `equipment`, `description`, `type`, `video`, `imageURL`) VALUES
(1, 1, 'Bench Press', 'Chest', 'Abdominals', 'Dumbbell', 'The dumbbell bench press is a great alternative to the standard bench press.\r\nYou can do the dumbbell bench press without relying on a spotter. It\\''s also good to alternate between the standard bench press and the dumbbell bench press so your muscles don\\''t get too used to either.\r\nSteps\r\n\r\nPick up your dumbbells and hold them at your sides. Then sit on the edge of your flat bench. Sit back as you use your thighs to lush the weights up to their starting position.\r\n\r\nStart with your arms holding dumbbells about an inch higher than your chest. The dumbbells should be in line with the middle of your chest so that your arms are comfortably out to the sides.\r\n\r\nSlowly push the dumbbells up. Focus on using your chest and triceps to push most of the weight. Stop when your arms are straight and the dumbbells are directly above your chest. Don\\''t clank the dumbbells together or spin them around when you get to the top.\r\n\r\nNext, slowly lower the dumbbells. Don\\''t let gravity do the work. You should be resisting gravity all the way down. The rep ends when the dumbbells are back to 1 inch above your chest.', 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(2, 1, 'Fly', 'Chest', 'Abdominals', 'Dumbbell', 'The dumbbell fly targets your pectorals with far more focus than the standard dumbbell bench press.\r\nYou\\''re keeping your arms relatively straight throughout the exercise so you wont use your triceps as much. It also focuses more on the inner part of your pecs.\r\nSteps\r\n\r\nLie on a flat bench with your arms out to your sides. Your elbows should be pointing down to the ground and your palms up to the ceiling. You should hold the dumbbells at roughly the height of your shoulders.\r\n\r\nFocus on using your chest to bring your arms up until the dumbbells are directly above your chest. Your biceps and triceps should just be stabilizing your arms. You shouldn\\''t be using them for any of the lifting.\r\n\r\nIn the top position your elbows should be facing outwards and your palms facing inwards towards each other.\r\n\r\nHold the dumbbells briefly at the top then slowly lower them. Again, focus on using your chest to control the downwards motion.\r\nTips\r\n\r\nThis is a very focused and targeted exercise. Concentrate on using your chest to drive the majority of the dumbbell fly.', 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(3, 1, 'Fly', 'Chest', 'Abdominals', 'Machine', 'Sit on the machine with your back flat. Adjust the height of the seat so that the pads of the machine are at your chest height. put your forearms against the pads.\r\n\r\nPush the pads together as you squeeze your chest. Push until the pads meet in the middle. Hold this position for a moment then return to the starting position.\r\nTips\r\n\r\nFocus on using your chest for this exercise. You should be squeezing from the inner part of your chest, not pushing with your biceps or shoulders.', 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(4, 1, 'Around the Worlds', 'Chest', 'Abdominals', 'Dumbbell', '<ol>\r\n<li>Start off laying flat down on a bench holding a dumbbell in each hand next to your thighs with palms facing up.</li>\r\n<li>Take the dumbbells and create a semi-circle by rotating them up over your head with the motion staying parallel.</li>\r\n<li>Return back to the starting position.</li>\r\n</ol>', 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', '4.jpg'),
(5, 1, 'Cable Cross Over', 'Chest', 'Abdominals', 'Cable', '<p>Attach handles to the higher pulleys of both cable machines. Stand between the two machines with your legs and waist slightly bent. Grip the handles of the pulleys with your palms facing down and your arms out to your sides.</p>\r\n\r\n<p>Slowly pull the handles down towards the floor until they touch or cross over in front of you. When your arms are in front of you, contract your pectorals. Hold this position for a few moments then return to the starting position.</p>\r\n', 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', '5.jpg'),
(6, 1, 'Wide Grip Decline Pullover', 'Chest', 'Abdominals', 'Barbell', '<p>\r\nTargets muscles of the chest, shoulders and works the core muscles</p>\r\n\r\n<ol>\r\n<li>Lie on a decline bench with your feet higher than your head</li>\r\n<li>Grasp the barbell with an extra wide grip (your hands near the plates) and starting at youre your upper thighs raise the barbell in an arc over your head towards the floor.</li>\r\n<li> Slowly return the barbell to starting position on your thighs.</li>\r\n</ol>\r\n', 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', '6.jpg'),
(7, 1, 'Decline Bench Press', 'Chest', 'Abdominals', 'Dumbbell', '<p>The dumbbell incline bench press targets your lower chest. It incorporates your stability muscles more than the standard incline bench press.</p>\r\n\r\n<ol class=\\''exersizeList\\''>\r\n<li>Lie on a decline bench so that your head is lower than your feet. Grip a pair of dumbbells with an overhand grip, your palms facing towards your feet. Hold the dumbbells directly above your chest so that their inner edges are touching.</li>\r\n<li>Slowly lower the dumbbells all the way until they are inline with the top of your chest. Then, raise them straight up to the starting position.</li>\r\n</ol>', 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', '8.jpg'),
(8, 1, 'Alternating Floor Press', 'Chest', 'Abdominals', 'Kettlebell', '', 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(9, 1, 'Extended Range One-Arm Kettlebell Floor Press', 'Chest', 'Abdominals', 'Kettlebell', '', 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(10, 1, 'Leg-Over Floor Press', 'Chest', 'Abdominals', 'Kettlebell', '<ol>\r\n<li>Lie on the floor with one kettlebell in place on your chest, holding it by the handle. Extend leg on working side over leg on non-working side.Your free arm can be extended out to your side for support.</li>\r\n<li>Press the kettlebll into a locked out position.</li>\r\n<li>Lower the weight until the elbow touches the ground, keeping the kettlebell above the elbow. Repeat for the desired number of repetitions.</li>\r\n</ol>\r\n\r\n\r\n\r\n\r\n', 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(11, 1, 'One-Arm Kettlebell Floor Press', 'Chest', 'Abdominals', 'Kettlebell', '<ol>\r\n<li>Lie on the floor holding a kettlebell with one hand, with your upper arm supported by the floor. The palm should be facing in.</li>\r\n<li>Press the kettlebell straight up toward the ceiling, rotating your wrist.</li>\r\n<li>Lower the kettlebell back to the starting position and repeat.</li>\r\n</ol>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(12, 1, 'Plyo Kettlebell Pushups', 'Chest', 'Abdominals', 'Kettlebell', '<ol>\r\n<li>Place a kettlebell on the floor. Place yourself in a pushup position, on your toes with one hand on the ground and one hand holding the kettlebell, with your elbows extended. This will be your starting position.</li>\r\n<li>Begin by lowering yourself as low as you can, keeping your back straight.</li>\r\n<li>Quickly and forcefully reverse direction, pushing yourself up to the other side of the kettlebell, switching hands as you do so. Continue the movement by descending and repeating the movement back and forth.</li>\r\n</ol>\r\n\r\n\r\n\r\n', 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(13, 1, 'Bench Press', 'Chest', 'Abdominals', 'Band', '<ol>\r\n<li>Using a flat bench secure a band under the leg of the bench that is nearest to your head.\r\nOnce the band is secure, grab it by both handles and lie down on the bench.</li>\r\n<li>Extend your arms so that you are holding the band handles in front of you at shoulder width.</li>\r\n<li>Once at shoulder width, rotate your wrists forward so that the palms of your hands are facing away from you. This will be your starting position.</li>\r\n<li>Bring down the handles slowly until your elbow forms a 90 degree angle. Keep full control at all times.</li>\r\n<li>As you breathe out, bring the handles up using your pectoral muscles. Lock your arms in the contracted position, squeeze your chest, hold for a second and then start coming down slowly.</li>\r\n\r\n</ol>\r\n', 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(14, 1, '', 'Chest', '', 'Barbell', '', '', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(15, 1, 'Bench Press - Medium Grip', 'Chest', '', 'Barbell', '', 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(16, 1, 'Incline Bench Press - Medium Grip', 'Chest', '', 'Barbell', '', 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(17, 1, 'Decline Bench Press', 'Chest', NULL, 'Barbell', '', 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(18, 1, 'Front Raise And Pullover', 'Chest', NULL, 'Barbell', '', 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(19, 1, 'Neck Press', 'Chest', NULL, 'Barbell', '', 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(20, 1, 'Wide-Grip Bench Press', 'Chest', NULL, 'Barbell', '', 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(21, 1, 'Wide-Grip Decline Bench Press', 'Chest', NULL, 'Barbell', '', 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(22, 1, 'Wide-Grip Decline Pullover', 'Chest', NULL, 'Barbell', '', 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(23, 10, 'Alternating Deltoid Raise', 'Shoulders', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(24, 10, 'Arnold Dumbbell Press', 'Shoulders', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(25, 10, 'Barbell Incline Shoulder Raise', 'Shoulders', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(26, 10, 'Barbell Rear Delt Row', 'Shoulders', NULL, 'Dumbbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(27, 10, 'Barbell Shoulder Press', 'Shoulders', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(28, 10, 'Bent Over Dumbbell Rear Delt Raise With Head On Bench', 'Shoulders', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(29, 10, 'Bent Over Low-Pulley Side Lateral', 'Shoulders', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(30, 10, 'Bradford/Rocky Presses', 'Shoulders', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(31, 10, 'Cable Internal Rotation', 'Shoulders', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(32, 10, 'Cable Rope Rear-Delt Rows', 'Shoulders', NULL, 'Cable', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(33, 10, 'Cable Shoulder Press', 'Shoulders', NULL, 'Cable', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(34, 10, 'Clean and Jerk', 'Shoulders', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(35, 10, 'Clean and Press', 'Shoulders', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(36, 10, 'Crucifix', 'Shoulders', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(37, 10, 'Cuban Press', 'Shoulders', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(38, 10, 'Dumbbell Incline Shoulder Raise', 'Shoulders', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(39, 10, 'Dumbbell Lying Rear Lateral Raise', 'Shoulders', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(40, 10, 'Dumbbell One-Arm Shoulder Press', 'Shoulders', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(41, 10, 'Dumbbell One-Arm Upright Row', 'Shoulders', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(42, 10, 'Dumbbell Raise', 'Shoulders', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(43, 10, 'Dumbbell Shoulder Press', 'Shoulders', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(44, 10, 'External Rotation', 'Shoulders', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(45, 10, 'Face Pull', 'Shoulders', NULL, 'Cable', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(46, 10, 'Front Raise', 'Shoulders', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(47, 10, 'Front Raise', 'Shoulders', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(48, 10, 'Front Raise', 'Shoulders', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(49, 10, 'Standing Palms-In Press', 'Shoulders', NULL, 'Dumbbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(50, 10, 'Iron Cross', 'Shoulders', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(51, 10, 'Low Pulley Row To Neck', 'Shoulders', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(52, 10, 'Lying One-Arm Lateral Raise', 'Shoulders', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(53, 10, 'One-Arm Incline Lateral Raise', 'Shoulders', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(54, 10, 'Reverse Flyes', 'Shoulders', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(55, 10, 'Reverse Flyes', 'Shoulders', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(56, 10, 'Reverse Flyes', 'Shoulders', NULL, 'Machine', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(57, 10, 'Upright Row', 'Shoulders', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(58, 10, 'Upright Row', 'Shoulders', NULL, 'Dumbbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(59, 10, 'Upright Row', 'Shoulders', NULL, 'Cable', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(60, 13, 'Bench Dips', 'Triceps', NULL, 'Body', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(61, 13, 'Close-Grip Bench Press', 'Triceps', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(62, 13, 'Decline Close-Grip Bench To Skull Crusher', 'Triceps', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(63, 13, 'Decline Triceps Extension', 'Triceps', NULL, 'EZ Curl Bar', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(64, 13, 'Decline Triceps Extension', 'Triceps', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(65, 13, 'Floor Press', 'Triceps', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(66, 13, 'Floor Press', 'Triceps', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(67, 13, 'Incline Barbell Triceps Extension', 'Triceps', NULL, 'Barbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(68, 13, 'Lying Close-Grip Barbell Triceps Extension Behind The Head', 'Triceps', NULL, 'Barbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(69, 13, 'Reverse Triceps Bench Press', 'Triceps', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(70, 13, 'Standing Overhead Barbell Triceps Extension', 'Triceps', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(71, 13, 'Cable Incline Triceps Extension', 'Triceps', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(72, 13, 'Cable Standing Tricep Extension', 'Triceps', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(73, 13, 'Triceps Pushdown', 'Triceps', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(74, 13, 'Reverse Grip Pushdown', 'Triceps', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(75, 13, 'Lying Dumbbell Tricep Extension', 'Triceps', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(76, 13, 'Seated Bent-Over Dumbbell Triceps Extension', 'Triceps', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(77, 13, 'Seated Dumbbell Triceps Press', 'Triceps', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(78, 13, 'Tate Press', 'Triceps', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(79, 13, 'Tricep Dumbbell Kickback', 'Triceps', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(80, 0, 'Barbell Deadlift', 'Back', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(81, 0, 'Bent Over Barbell Row', 'Back', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(82, 0, 'Incline Bench Pull', 'Back', NULL, 'Barbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(83, 0, 'Lying Cambered Barbell Row', 'Back', NULL, 'Barbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(84, 0, 'Reverse Grip Bent-Over Rows', 'Back', NULL, 'Barbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(85, 0, 'Seated Good Mornings', 'Back', NULL, 'Barbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(86, 0, 'Stiff Leg Barbell Good Morning', 'Back', NULL, 'Barbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(87, 0, 'Seated Cable Rows', 'Back', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(88, 0, 'Middle Back Shrug', 'Back', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(89, 0, 'One-Arm Dumbbell Row', 'Back', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(90, 7, 'Barbell Curl', 'Biceps', NULL, 'Barbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(91, 7, 'Incline Barbell Curl', 'Biceps', NULL, 'Barbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(92, 7, 'Drag Curl', 'Biceps', NULL, 'Barbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(93, 7, 'Preacher Curl', 'Biceps', NULL, 'Barbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(94, 7, 'Reverse Barbell Curl', 'Biceps', NULL, 'Barbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(95, 7, 'Concentration Barbell Curl', 'Biceps', NULL, 'Barbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(96, 7, 'Hammer Curl', 'Biceps', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(97, 7, 'Cross Body Hammer Curl', 'Biceps', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(98, 7, 'Lying Supine Dumbbell Curl', 'Biceps', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(99, 7, 'Inner Biceps Curl', 'Biceps', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(100, 7, 'Zottman Curl', 'Biceps', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(101, 7, 'Rope Hammer Curls', 'Biceps', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(102, 7, 'High Cable Curls', 'Biceps', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(103, 7, 'Lying Cable Curl', 'Biceps', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(104, 7, 'Overhead Cable Curl', 'Biceps', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(105, 7, 'Reverse Cable Curl', 'Biceps', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(106, 0, 'Bent-Arm Barbell Pullover', 'Lats', NULL, 'Barbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(107, 0, 'Cable Incline Pushdown', 'Lats', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(108, 0, 'Lat Pulldown', 'Lats', NULL, 'Cable', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(109, 0, 'Full Range Lat Pulldown', 'Lats', NULL, 'Cable', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(110, 0, 'Straight-Arm Pulldown', 'Lats', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(111, 0, 'Wide-Grip Lat Pulldown', 'Lats', NULL, 'Dumbbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(112, 0, 'Pullups', 'Lats', NULL, 'Body', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(113, 0, 'Wide Grip Rear Pull-Up', 'Lats', NULL, 'Body', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(114, 1, 'Barbell Side Bend', 'Abdominals', NULL, 'Barbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(115, 1, 'Cable Crunch', 'Abdominals', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(116, 1, 'Cable Reverse Crunch', 'Abdominals', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(117, 1, 'Cable Seated Crunch', 'Abdominals', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(118, 1, 'Dumbbell Side Bend', 'Abdominals', NULL, 'Dumbbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(119, 1, 'One-Arm High-Pulley Cable Side Bends', 'Abdominals', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(120, 1, 'Decline Press Sit-Up', 'Abdominals', NULL, 'Barbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(121, 1, 'Standing Cable Lift', 'Abdominals', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(122, 15, 'Barbell Full Squat', 'Quadriceps', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(123, 15, 'Barbell Hack Squat', 'Quadriceps', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(124, 15, 'Barbell Lunge', 'Quadriceps', NULL, 'Dumbbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(125, 15, 'Barbell Side Split Squat', 'Quadriceps', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(127, 15, 'Barbell Step Ups', 'Quadriceps', NULL, 'Barbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(128, 15, 'Box Squat', 'Quadriceps', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(129, 15, 'Cable Deadlifts', 'Quadriceps', NULL, 'Cable', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(130, 15, 'Cable Hip Adduction', 'Quadriceps', NULL, 'Cable', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(131, 15, 'Elevated Back Lunge', 'Quadriceps', NULL, 'Barbell', NULL, 'Isolation', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(132, 15, 'Frankenstein Squat', 'Quadriceps', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(133, 15, 'Front Barbell Squat', 'Quadriceps', NULL, 'Barbell', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(134, 15, 'Hack Squat', 'Quadriceps', NULL, 'Machine', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg'),
(135, 13, 'Dips', 'Triceps', 'Chest', 'Body', NULL, 'Compound', '<iframe width="560" height="315" src="//www.youtube.com/embed/Qjxrp9Hwv_Q?list=PLLXmeIOBkPXTycnYGwKiPSw4UWkJnn9He" frameborder="0" allowfullscreen></iframe>', 'blank.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `extreme`
--

CREATE TABLE IF NOT EXISTS `extreme` (
  `extremeID` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'P90X',
  `workout` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `disc` int(10) NOT NULL,
  `workDay` date DEFAULT NULL,
  `exercises` text COLLATE latin1_general_ci,
  PRIMARY KEY (`extremeID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `extreme`
--

INSERT INTO `extreme` (`extremeID`, `type`, `workout`, `disc`, `workDay`, `exercises`) VALUES
(16, 'P90X', 'Core Synergistics', 8, NULL, NULL),
(15, 'P90X', 'Stretch', 7, NULL, NULL),
(14, 'P90X', 'Kenpo X', 6, NULL, NULL),
(11, 'P90X', 'Shoulders & Arms', 3, NULL, NULL),
(12, 'P90X', 'Yoga X', 4, NULL, NULL),
(13, 'P90X', 'Legs & Back', 5, NULL, NULL),
(10, 'P90X', 'Plyometrics', 2, NULL, NULL),
(9, 'P90X', 'Chest & Back', 1, NULL, 'Standard Push up,Wide Front Pull up,Military Push up,Reverse Grip Chin up,Wide Fly Push Up,Closed Grip Overhand Pull up,Decline Push up,Heavy Pants, Diamond Push up,Lawnmower,Dive Bomber Push up,Back Flyes'),
(17, 'P90X', 'Chest, Shoulders & Triceps', 9, NULL, NULL),
(18, 'P90X', 'Back & Biceps', 10, NULL, NULL),
(19, 'P90X', 'Cardio X', 11, NULL, NULL),
(20, 'P90X', 'Ab Ripper X', 12, NULL, 'In and Outs,Forward Seated Bicycle,Reverse Seated Bicycle,Seated Crunchy Frog,Wide Leg Sit-ups,Fifer Scissors,Hip Rock n Raise,Pulse Ups,V up Roll up,Oblique V up,Leg Climbs,Mason Twist');

-- --------------------------------------------------------

--
-- Table structure for table `extremetrac`
--

CREATE TABLE IF NOT EXISTS `extremetrac` (
  `extremeID` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'P90X',
  `workout` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `userID` int(10) NOT NULL,
  `workDay` date NOT NULL,
  `length` time NOT NULL,
  PRIMARY KEY (`extremeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `forum_answer`
--

CREATE TABLE IF NOT EXISTS `forum_answer` (
  `a_id` int(10) NOT NULL AUTO_INCREMENT,
  `question_id` int(10) NOT NULL DEFAULT '0',
  `userID` int(100) NOT NULL DEFAULT '0',
  `a_answer` longtext NOT NULL,
  `a_datetime` datetime NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `forum_answer`
--

INSERT INTO `forum_answer` (`a_id`, `question_id`, `userID`, `a_answer`, `a_datetime`) VALUES
(1, 1, 1, 'Hes right.', '2012-08-01 15:00:04'),
(2, 1, 1, 'I agree', '2012-08-01 17:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `forum_question`
--

CREATE TABLE IF NOT EXISTS `forum_question` (
  `questionID` int(10) NOT NULL AUTO_INCREMENT,
  `topic` varchar(255) NOT NULL,
  `detail` longtext NOT NULL,
  `userID` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `view` int(4) NOT NULL DEFAULT '0',
  `reply` int(4) NOT NULL DEFAULT '0',
  `coinCategory` varchar(100) NOT NULL DEFAULT 'None',
  `imageURL` varchar(255) NOT NULL DEFAULT 'None',
  PRIMARY KEY (`questionID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `forum_question`
--

INSERT INTO `forum_question` (`questionID`, `topic`, `detail`, `userID`, `datetime`, `view`, `reply`, `coinCategory`, `imageURL`) VALUES
(1, 'The differences between 1960 large and small date cents.', 'The inner loop of the 9 is much smaller on the small date.  The upper part of the 6 digit is straight up and down vertically with the outside of the loop on the large date. On the small date, the upper part of the 6 cuts short of being vertically even with the lower loop.\r\nThe zero is much smaller on the small date.\r\nThe top of the 1 and 9 digits are horizontally level on the small date. The 9 is taller than the 1 on large date coins.', '1', '2001-08-12 12:57:48', 64, 3, 'Small Cent', 'None'),
(3, 'The differences between 1960 large and small date cents', 'Does anyone know how to tell the difference', '6', '2012-08-01 18:33:27', 3, 0, 'Small Cent', 'None'),
(4, 'The differences between 1960 large and small date cents', 'Does anyone know how to tell the difference', '6', '2012-08-01 18:35:04', 3, 0, 'Small Cent', ''),
(5, 'The differences between 1960 large and small date cents', 'Does anyone know how to tell the difference', '6', '2012-08-01 18:37:00', 6, 0, 'Small Cent', 'forumImg/Lincoln_Brown.jpg'),
(6, 'What are the full bands on dimes', 'I''ve seen full bands listed and dont''t know what they are.  can somone explain', '6', '2012-08-01 19:04:13', 4, 0, 'Dime', 'None'),
(7, 'Early commemoratives', 'What year did they start', '6', '2012-08-01 19:23:51', 2, 0, 'Commemorative', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `galleryID` int(10) NOT NULL AUTO_INCREMENT,
  `eventID` int(100) NOT NULL,
  `albumName` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'None',
  `imgTitle` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `imgDescription` text COLLATE latin1_general_ci,
  `imgDate` datetime NOT NULL,
  `imgURL` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `imgName` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `userID` int(10) NOT NULL,
  `clubID` int(10) NOT NULL DEFAULT '0',
  `imgCategory` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'None',
  PRIMARY KEY (`galleryID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE IF NOT EXISTS `goals` (
  `goalID` int(100) NOT NULL AUTO_INCREMENT,
  `goalName` varchar(255) NOT NULL,
  `weight` int(10) NOT NULL,
  `goalDate` date NOT NULL,
  `userID` int(10) NOT NULL,
  PRIMARY KEY (`goalID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`goalID`, `goalName`, `weight`, `goalDate`, `userID`) VALUES
(19, 'Squat', 800, '2013-10-28', 1),
(11, 'Bench', 450, '2012-10-30', 1),
(10, 'Press', 250, '2012-10-22', 1),
(9, 'Deadlift', 405, '2012-10-22', 1),
(8, 'Squat', 500, '2012-10-22', 1),
(7, 'Bench', 495, '2012-10-22', 1),
(13, 'Press', 250, '2012-10-31', 1),
(14, 'Press', 270, '2012-10-31', 1),
(15, 'Press', 270, '2012-10-31', 1),
(16, 'Bench', 420, '2012-12-24', 1),
(18, 'Bench', 450, '2013-10-18', 1),
(20, 'Weight', 250, '2013-05-18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `groupID` int(10) NOT NULL AUTO_INCREMENT,
  `groupName` varchar(255) NOT NULL,
  `groupType` varchar(100) DEFAULT NULL,
  `groupAddress` varchar(255) DEFAULT NULL,
  `groupCity` varchar(100) DEFAULT NULL,
  `groupState` varchar(22) DEFAULT NULL,
  `groupZip` varchar(15) DEFAULT NULL,
  `groupPhone` varchar(22) DEFAULT NULL,
  `groupEmail` varchar(100) NOT NULL,
  `groupWebsite` varchar(255) DEFAULT NULL,
  `groupDescription` text,
  `enterDate` datetime NOT NULL,
  `userID` int(10) NOT NULL,
  `groupLevel` varchar(20) NOT NULL DEFAULT 'Private',
  `approval` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`groupID`, `groupName`, `groupType`, `groupAddress`, `groupCity`, `groupState`, `groupZip`, `groupPhone`, `groupEmail`, `groupWebsite`, `groupDescription`, `enterDate`, `userID`, `groupLevel`, `approval`) VALUES
(1, 'The Penny Club', 'Small Cents', NULL, NULL, NULL, NULL, NULL, 'admin@mycoinorganizer.com', 'pennyclub.site11.com', NULL, '2012-07-26 21:15:39', 1, 'Private', 1);

-- --------------------------------------------------------

--
-- Table structure for table `groupClass`
--

CREATE TABLE IF NOT EXISTS `groupClass` (
  `groupClassID` int(255) NOT NULL AUTO_INCREMENT,
  `className` varchar(25) NOT NULL,
  `instructor` int(5) NOT NULL,
  `classtype` varchar(20) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `classDesc` text NOT NULL,
  `classSize` int(3) NOT NULL,
  `classCost` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`groupClassID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `groupmembers`
--

CREATE TABLE IF NOT EXISTS `groupmembers` (
  `groupmemberID` int(10) NOT NULL AUTO_INCREMENT,
  `groupID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `groupPosition` varchar(100) NOT NULL,
  `joinDate` datetime NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`groupmemberID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `groupmembers`
--

INSERT INTO `groupmembers` (`groupmemberID`, `groupID`, `userID`, `groupPosition`, `joinDate`, `status`) VALUES
(1, 1, 15, 'Manager', '2012-07-26 21:16:35', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `initialmeasure`
--

CREATE TABLE IF NOT EXISTS `initialmeasure` (
  `initialID` int(100) NOT NULL AUTO_INCREMENT,
  `userID` int(100) NOT NULL,
  `initialDate` date NOT NULL,
  `initialNum` int(100) NOT NULL,
  `Neck` decimal(7,3) NOT NULL DEFAULT '0.000',
  `Shoulder` decimal(7,3) NOT NULL DEFAULT '0.000',
  `Chest` decimal(7,3) NOT NULL DEFAULT '0.000',
  `Waist` decimal(7,3) NOT NULL DEFAULT '0.000',
  `Hips` decimal(7,3) NOT NULL DEFAULT '0.000',
  `Left_Wrist` decimal(7,3) NOT NULL DEFAULT '0.000',
  `Right_Wrist` decimal(7,3) NOT NULL DEFAULT '0.000',
  `Left_Bicep` decimal(7,3) NOT NULL DEFAULT '0.000',
  `Right_Bicep` decimal(7,3) NOT NULL DEFAULT '0.000',
  `Left_Thigh` decimal(7,3) NOT NULL DEFAULT '0.000',
  `Right_Thigh` decimal(7,3) NOT NULL DEFAULT '0.000',
  `Left_Calf` decimal(7,3) NOT NULL DEFAULT '0.000',
  `Right_Calf` decimal(7,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`initialID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `initialmeasure`
--

INSERT INTO `initialmeasure` (`initialID`, `userID`, `initialDate`, `initialNum`, `Neck`, `Shoulder`, `Chest`, `Waist`, `Hips`, `Left_Wrist`, `Right_Wrist`, `Left_Bicep`, `Right_Bicep`, `Left_Thigh`, `Right_Thigh`, `Left_Calf`, `Right_Calf`) VALUES
(1, 1, '2013-11-13', 1, 17.000, 17.000, 17.000, 40.750, 42.250, 7.250, 7.250, 19.250, 19.250, 23.000, 23.000, 16.250, 16.250);

-- --------------------------------------------------------

--
-- Table structure for table `logintrac`
--

CREATE TABLE IF NOT EXISTS `logintrac` (
  `loginID` int(10) NOT NULL AUTO_INCREMENT,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `loginIP` int(10) unsigned NOT NULL,
  `userID` int(10) NOT NULL,
  PRIMARY KEY (`loginID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=205 ;

--
-- Dumping data for table `logintrac`
--

INSERT INTO `logintrac` (`loginID`, `logintime`, `loginIP`, `userID`) VALUES
(1, '2011-08-04 06:50:40', 0, 1),
(2, '2011-08-04 06:51:44', 0, 1),
(3, '2011-08-04 06:54:47', 2130706433, 2),
(4, '2011-08-04 06:55:44', 2130706433, 1),
(5, '2011-08-05 06:50:41', 2130706433, 3),
(6, '2011-08-05 07:32:21', 2130706433, 1),
(7, '2012-10-16 08:45:42', 2130706433, 1),
(8, '2012-10-18 02:46:24', 2130706433, 1),
(9, '2012-10-19 02:11:17', 2130706433, 1),
(10, '2012-10-21 23:45:56', 1223796963, 1),
(11, '2012-10-22 13:11:09', 1223806265, 1),
(12, '2012-10-22 14:54:02', 1223806265, 1),
(13, '2012-10-22 20:41:24', 1223806265, 1),
(14, '2012-10-23 04:13:08', 1223796963, 1),
(15, '2012-10-23 23:19:58', 1223796963, 1),
(16, '2012-10-24 01:14:41', 1223796963, 1),
(17, '2012-10-24 13:03:40', 1223806265, 1),
(18, '2012-10-24 15:10:45', 1223806265, 1),
(19, '2012-10-24 20:37:09', 1223806265, 1),
(20, '2012-10-24 23:29:01', 1223796963, 1),
(21, '2012-10-25 00:53:11', 1223796963, 23),
(22, '2012-10-25 04:02:19', 1223796963, 1),
(23, '2012-10-25 05:23:30', 1223796963, 1),
(24, '2012-10-26 02:23:00', 1223796963, 1),
(25, '2012-10-26 06:23:40', 1223796963, 1),
(26, '2012-10-26 08:38:44', 1223796963, 1),
(27, '2012-10-26 13:08:23', 1223806265, 1),
(28, '2012-10-26 16:46:19', 1223806265, 1),
(29, '2012-10-26 16:47:34', 1223806265, 1),
(30, '2012-10-26 16:47:55', 1223806265, 1),
(31, '2012-10-26 18:08:19', 1223806265, 1),
(32, '2012-10-26 18:08:43', 1223806265, 1),
(33, '2012-10-27 01:18:06', 1223796963, 1),
(34, '2012-10-27 01:42:31', 1223796963, 1),
(35, '2012-10-27 07:40:56', 1223796963, 1),
(36, '2012-10-28 06:04:30', 1187473913, 1),
(37, '2012-10-28 06:51:41', 1187473913, 1),
(38, '2012-10-28 06:55:35', 1187473913, 1),
(39, '2012-10-28 07:18:21', 1187473913, 1),
(40, '2012-10-28 07:28:41', 1223796963, 1),
(41, '2012-10-28 07:31:56', 1187473913, 1),
(42, '2012-10-28 07:35:45', 1187473913, 1),
(43, '2012-10-28 07:35:57', 1187473913, 1),
(44, '2012-10-28 07:36:37', 1187473913, 1),
(45, '2012-10-28 07:38:58', 1187473913, 1),
(46, '2012-10-28 07:44:25', 1187473913, 1),
(47, '2012-10-28 08:12:35', 1223796963, 1),
(48, '2012-10-28 08:13:06', 1223796963, 1),
(49, '2012-10-28 08:13:13', 1223796963, 1),
(50, '2012-10-28 08:14:32', 1223796963, 1),
(51, '2012-10-28 21:17:03', 1223796963, 1),
(52, '2012-10-29 18:41:33', 1223806265, 1),
(53, '2012-10-30 04:48:39', 1223796963, 1),
(54, '2012-10-31 04:14:00', 1223796963, 1),
(55, '2012-10-31 14:16:52', 1223806265, 1),
(56, '2012-10-31 17:57:02', 1223806265, 1),
(57, '2012-11-01 07:13:53', 1223796963, 1),
(58, '2012-11-02 02:20:48', 1223796963, 1),
(59, '2012-11-02 05:32:28', 1223796963, 1),
(60, '2012-11-02 15:21:00', 1223806265, 1),
(61, '2012-11-03 03:07:18', 1223796963, 1),
(62, '2012-11-03 07:20:20', 1223796963, 1),
(63, '2012-11-03 22:31:46', 1223796963, 1),
(64, '2012-11-04 03:58:22', 1223796963, 1),
(65, '2012-11-04 09:59:38', 1223796963, 1),
(66, '2012-11-05 09:05:09', 1223796963, 1),
(67, '2012-11-05 17:53:08', 1223806265, 1),
(68, '2012-11-05 18:36:42', 1223806265, 1),
(69, '2012-11-05 20:15:52', 1223806265, 1),
(70, '2012-11-05 23:32:06', 1223796963, 1),
(71, '2012-11-06 08:15:34', 1223796963, 1),
(72, '2012-11-06 21:10:26', 1223796963, 1),
(73, '2012-11-08 17:30:50', 1223806265, 1),
(74, '2012-11-10 05:28:21', 1223796963, 1),
(75, '2012-11-14 08:26:59', 1223796963, 1),
(76, '2012-11-15 04:21:02', 1223796963, 1),
(77, '2012-11-15 15:57:53', 1223806265, 1),
(78, '2012-11-17 06:55:35', 1223796963, 1),
(79, '2012-11-25 07:58:32', 1223796963, 1),
(80, '2012-11-26 19:15:30', 1223806265, 1),
(81, '2012-12-15 01:55:14', 1223796963, 1),
(82, '2012-12-17 01:03:00', 1223796963, 1),
(83, '2012-12-19 03:52:13', 1223796963, 23),
(84, '2012-12-19 03:52:56', 1223796963, 23),
(85, '2012-12-24 08:13:50', 1223796963, 1),
(86, '2012-12-24 09:48:02', 1223796963, 1),
(87, '2012-12-25 04:02:34', 1223796963, 23),
(88, '2012-12-25 04:03:31', 1223796963, 23),
(89, '2012-12-25 06:56:13', 1223796963, 1),
(90, '2012-12-26 02:28:28', 1223796963, 1),
(91, '2012-12-27 08:47:18', 1223796963, 1),
(92, '2012-12-28 02:54:27', 1223796963, 1),
(93, '2012-12-28 05:01:43', 1223796963, 1),
(94, '2012-12-28 15:25:40', 1223806265, 1),
(95, '2013-01-02 01:37:01', 1223796963, 1),
(96, '2013-01-02 04:58:16', 1223796963, 1),
(97, '2013-01-02 18:01:34', 1223806265, 1),
(98, '2013-01-03 03:20:52', 1223796963, 1),
(99, '2013-01-05 05:11:31', 1223796963, 23),
(100, '2013-01-05 08:35:12', 1223796963, 1),
(101, '2013-01-05 22:51:07', 1223796963, 1),
(102, '2013-01-06 03:37:03', 1223796963, 1),
(103, '2013-01-06 07:26:41', 1223796963, 1),
(104, '2013-01-18 15:08:42', 1223806265, 1),
(105, '2013-01-18 20:07:23', 1223806265, 1),
(106, '2013-02-08 23:20:21', 1223796963, 1),
(107, '2013-02-11 05:12:50', 1223796963, 1),
(108, '2013-02-12 02:27:00', 1223796963, 1),
(109, '2013-02-15 19:22:25', 1223806265, 1),
(110, '2013-03-11 17:31:55', 1223806265, 1),
(111, '2013-05-28 20:25:28', 1223806265, 1),
(112, '2013-05-29 01:04:59', 1223796963, 1),
(113, '2013-07-03 04:27:30', 1223796963, 1),
(114, '2013-10-11 04:03:27', 1223796963, 1),
(115, '2013-10-18 09:50:31', 1223796963, 1),
(116, '2013-10-18 09:55:17', 1223796963, 1),
(117, '2013-10-19 10:45:46', 1223796963, 1),
(118, '2013-10-19 10:48:49', 1223796963, 1),
(119, '2013-10-19 10:49:20', 1223796963, 1),
(120, '2013-10-19 10:49:57', 1223796963, 1),
(121, '2013-10-19 10:52:04', 1223796963, 1),
(122, '2013-10-19 10:52:41', 1223796963, 1),
(123, '2013-10-19 10:52:46', 1223796963, 1),
(124, '2013-10-19 10:53:50', 1223796963, 1),
(125, '2013-10-19 10:57:03', 1223796963, 1),
(126, '2013-10-20 02:29:25', 1223796963, 1),
(127, '2013-10-20 02:35:17', 1223796963, 1),
(128, '2013-10-20 02:37:32', 1223796963, 1),
(129, '2013-10-20 02:39:56', 1223796963, 1),
(130, '2013-10-20 02:43:55', 1223796963, 1),
(131, '2013-10-20 02:45:30', 1223796963, 1),
(132, '2013-10-20 02:45:43', 1223796963, 1),
(133, '2013-10-20 02:47:17', 1223796963, 1),
(134, '2013-10-20 02:47:22', 1223796963, 1),
(135, '2013-10-20 02:54:05', 1223796963, 1),
(136, '2013-10-20 02:56:35', 1223796963, 1),
(137, '2013-10-20 02:58:47', 1223796963, 1),
(138, '2013-10-21 02:59:53', 1223796963, 1),
(139, '2013-10-22 07:10:25', 1223796963, 1),
(140, '2013-10-22 08:49:31', 1223796963, 23),
(141, '2013-10-22 08:49:45', 1223796963, 1),
(142, '2013-10-22 16:05:22', 411992621, 1),
(143, '2013-10-22 16:05:33', 1195404863, 1),
(144, '2013-10-22 20:30:57', 1223796963, 1),
(145, '2013-10-23 00:00:14', 1223796963, 1),
(146, '2013-10-23 00:21:43', 1223796963, 1),
(147, '2013-10-24 00:17:17', 1223796963, 1),
(148, '2013-10-24 00:18:21', 1223796963, 1),
(149, '2013-10-24 01:11:07', 1223796963, 1),
(150, '2013-10-24 01:26:39', 1223796963, 1),
(151, '2013-10-24 04:35:08', 1223796963, 1),
(152, '2013-10-24 08:31:09', 1223796963, 1),
(153, '2013-10-25 01:08:28', 1223796963, 1),
(154, '2013-10-26 04:01:24', 1223796963, 1),
(155, '2013-10-27 06:15:23', 1223796963, 1),
(156, '2013-10-27 22:35:49', 1223796963, 1),
(157, '2013-10-28 04:13:32', 1223796963, 1),
(158, '2013-10-28 04:58:34', 1223796963, 1),
(159, '2013-10-28 05:15:09', 1223796963, 1),
(160, '2013-10-29 16:59:37', 1223796963, 1),
(161, '2013-10-30 10:08:55', 1223796963, 1),
(162, '2013-10-31 04:31:32', 1223796963, 1),
(163, '2013-11-01 00:43:35', 1223796963, 1),
(164, '2013-11-02 22:34:02', 1223796963, 1),
(165, '2013-11-03 01:10:45', 1223796963, 1),
(166, '2013-11-05 01:08:06', 1223796963, 1),
(167, '2013-11-05 03:51:14', 1223796963, 1),
(168, '2013-11-05 13:49:22', 1223796963, 1),
(169, '2013-11-06 10:26:07', 1223796963, 1),
(170, '2013-11-07 00:57:22', 1223796963, 1),
(171, '2013-11-07 03:13:04', 1223796963, 1),
(172, '2013-11-07 07:23:45', 1223796963, 1),
(173, '2013-11-08 08:11:40', 1223796963, 1),
(174, '2013-11-12 04:31:56', 1223796963, 1),
(175, '2013-11-13 20:43:23', 1223796963, 1),
(176, '2013-11-16 08:51:03', 1223796963, 1),
(177, '2013-11-17 02:10:07', 1223796963, 1),
(178, '2013-11-17 22:50:31', 1223796963, 1),
(179, '2013-11-20 05:57:31', 1223796963, 1),
(180, '2013-11-23 04:14:46', 1223796963, 1),
(181, '2013-11-23 04:50:03', 1223796963, 1),
(182, '2013-11-24 06:19:00', 1223796963, 1),
(183, '2013-11-24 10:10:37', 1223796963, 1),
(184, '2013-11-24 22:40:57', 1223796963, 1),
(185, '2013-11-26 05:50:06', 1223796963, 1),
(186, '2013-11-26 08:31:02', 1223796963, 1),
(187, '2013-11-26 10:24:40', 1223796963, 1),
(188, '2013-11-27 09:59:15', 1223796963, 1),
(189, '2013-11-28 08:24:31', 1223796963, 1),
(190, '2013-11-30 04:30:10', 1223796963, 1),
(191, '2013-11-30 05:00:55', 1223796963, 1),
(192, '2013-12-02 03:06:16', 1223796963, 25),
(193, '2013-12-02 07:36:52', 1223796963, 1),
(194, '2013-12-02 11:24:18', 1223796963, 1),
(195, '2013-12-04 06:49:34', 1223796963, 1),
(196, '2013-12-04 10:30:47', 1223796963, 1),
(197, '2013-12-06 08:01:09', 1223796963, 1),
(198, '2013-12-06 21:53:36', 1223796963, 1),
(199, '2013-12-08 06:38:05', 1223796963, 1),
(200, '2013-12-08 09:39:34', 1223796963, 1),
(201, '2013-12-09 02:48:42', 1223796963, 1),
(202, '2013-12-09 22:33:29', 1223796963, 1),
(203, '2013-12-10 04:16:41', 1223796963, 1),
(204, '2013-12-10 09:01:41', 1223796963, 1);

-- --------------------------------------------------------

--
-- Table structure for table `max`
--

CREATE TABLE IF NOT EXISTS `max` (
  `maxID` int(100) NOT NULL AUTO_INCREMENT,
  `maxName` varchar(255) NOT NULL,
  `weight` int(10) NOT NULL,
  `enterDate` date NOT NULL,
  `userID` int(10) NOT NULL,
  PRIMARY KEY (`maxID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `max`
--

INSERT INTO `max` (`maxID`, `maxName`, `weight`, `enterDate`, `userID`) VALUES
(6, 'Bench', 425, '2013-10-21', 1),
(7, 'Squat', 700, '2012-10-21', 1),
(8, 'Deadlift', 500, '2012-10-22', 1),
(15, 'Squat', 675, '2012-03-22', 1),
(10, 'Press', 225, '2012-10-22', 1),
(11, 'Bench', 405, '2013-05-22', 1),
(14, 'Bench', 400, '2013-02-22', 1),
(16, 'Deadlift', 315, '2012-10-22', 1),
(17, 'Deadlift', 315, '2012-10-22', 1),
(18, 'Bench', 415, '2013-08-23', 1),
(19, 'Press', 230, '2012-10-31', 1),
(20, 'Bench', 410, '2013-07-02', 1),
(21, '', 0, '2013-11-24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `measuretrac`
--

CREATE TABLE IF NOT EXISTS `measuretrac` (
  `measuretracID` int(100) NOT NULL AUTO_INCREMENT,
  `measurement` decimal(7,3) NOT NULL,
  `userID` int(100) NOT NULL,
  `enterDate` date NOT NULL,
  `part` varchar(100) NOT NULL,
  `initial` int(1) NOT NULL DEFAULT '0',
  `employeeID` int(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`measuretracID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `muscle`
--

CREATE TABLE IF NOT EXISTS `muscle` (
  `muscleID` int(10) NOT NULL AUTO_INCREMENT,
  `muscle` varchar(255) NOT NULL,
  `muscleGroup` varchar(255) NOT NULL,
  PRIMARY KEY (`muscleID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `muscle`
--

INSERT INTO `muscle` (`muscleID`, `muscle`, `muscleGroup`) VALUES
(1, 'Abdominals', 'Core'),
(2, 'Lats', 'Upper'),
(3, 'Abductors', 'Core'),
(4, 'Lower Back', 'Core'),
(5, 'Adductors', 'Core'),
(6, 'Middle Back', 'Back'),
(7, 'Biceps', 'Upper'),
(8, 'Neck', 'Upper'),
(9, 'Chest', 'Upper'),
(10, 'Shoulders', 'Upper'),
(11, 'Forearms', 'Upper'),
(12, 'Traps', 'Upper'),
(13, 'Triceps', 'Upper'),
(14, 'Calves', 'Lower'),
(15, 'Quadriceps', 'Lower'),
(16, 'Glutes', 'Lower'),
(17, 'Hamstrings', 'Lower');

-- --------------------------------------------------------

--
-- Table structure for table `myweight`
--

CREATE TABLE IF NOT EXISTS `myweight` (
  `weight` int(10) DEFAULT '0',
  `userID` int(10) NOT NULL,
  `enterDate` date NOT NULL,
  `measurementID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`measurementID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `myweight`
--

INSERT INTO `myweight` (`weight`, `userID`, `enterDate`, `measurementID`) VALUES
(241, 1, '2012-10-21', 5),
(239, 1, '2012-09-21', 6),
(229, 1, '2012-01-21', 7),
(234, 1, '2012-02-21', 8),
(235, 1, '2012-03-21', 9),
(237, 1, '2012-04-21', 10),
(235, 1, '2012-05-21', 11),
(243, 1, '2012-10-28', 12),
(243, 1, '2012-10-28', 13),
(243, 1, '2012-10-28', 14),
(243, 1, '2012-10-28', 15),
(233, 1, '2013-04-28', 16),
(239, 1, '2013-05-07', 17),
(243, 1, '2013-06-18', 18),
(238, 1, '2013-07-24', 19),
(241, 1, '2013-08-24', 20),
(244, 1, '2013-09-19', 21),
(246, 1, '2013-10-19', 22),
(244, 1, '2013-12-04', 23);

-- --------------------------------------------------------

--
-- Table structure for table `p90x`
--

CREATE TABLE IF NOT EXISTS `p90x` (
  `p90xID` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'P90X',
  `workout` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `disc` int(10) NOT NULL,
  `workDay` date DEFAULT NULL,
  `exercises` text COLLATE latin1_general_ci,
  PRIMARY KEY (`p90xID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `p90x`
--

INSERT INTO `p90x` (`p90xID`, `type`, `workout`, `disc`, `workDay`, `exercises`) VALUES
(16, 'P90X', 'Core Synergistics', 8, NULL, NULL),
(15, 'P90X', 'Stretch', 7, NULL, NULL),
(14, 'P90X', 'Kenpo X', 6, NULL, NULL),
(11, 'P90X', 'Shoulders & Arms', 3, NULL, NULL),
(12, 'P90X', 'Yoga X', 4, NULL, NULL),
(13, 'P90X', 'Legs & Back', 5, NULL, NULL),
(10, 'P90X', 'Plyometrics', 2, NULL, NULL),
(9, 'P90X', 'Chest & Back', 1, NULL, 'Standard Push up,Wide Front Pull up,Military Push up,Reverse Grip Chin up,Wide Fly Push Up,Closed Grip Overhand Pull up,Decline Push up,Heavy Pants, Diamond Push up,Lawnmower,Dive Bomber Push up,Back Flyes'),
(17, 'P90X', 'Chest, Shoulders & Triceps', 9, NULL, NULL),
(18, 'P90X', 'Back & Biceps', 10, NULL, NULL),
(19, 'P90X', 'Cardio X', 11, NULL, NULL),
(20, 'P90X', 'Ab Ripper X', 12, NULL, 'In and Outs,Forward Seated Bicycle,Reverse Seated Bicycle,Seated Crunchy Frog,Wide Leg Sit-ups,Fifer Scissors,Hip Rock n Raise,Pulse Ups,V up Roll up,Oblique V up,Leg Climbs,Mason Twist');

-- --------------------------------------------------------

--
-- Table structure for table `p90xtrac`
--

CREATE TABLE IF NOT EXISTS `p90xtrac` (
  `p90xtracID` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'P90X',
  `workout` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `userID` int(10) NOT NULL,
  `workDay` date NOT NULL,
  `length` time NOT NULL,
  PRIMARY KEY (`p90xtracID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE IF NOT EXISTS `programs` (
  `programID` int(10) NOT NULL AUTO_INCREMENT,
  `programName` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `programType` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'All',
  `muscleID` text COLLATE latin1_general_ci,
  `length` int(28) DEFAULT NULL,
  `description` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`programID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`programID`, `programName`, `programType`, `muscleID`, `length`, `description`) VALUES
(1, '4 Week Pyramid Bench Program', 'Pyramid', '1', 28, '<h3><strong>Week 1:</strong>&nbsp;<strong>Full Pyramid</strong></h3>\r\n<ul>\r\n  <li><em>Warm-up</em></li>\r\n  <li>1x8 - 75 percent of max</li>\r\n  <li>1x6 - 85 percent of max</li>\r\n  <li>1x1 - 95 percent of max</li>\r\n  <li>1x6 - 85 percent of max</li>\r\n  <li>1x8 - 75 percent of max</li>\r\n</ul>\r\n<h3><strong>Week 2:</strong>&nbsp;<strong>Reverse Pyramid</strong></h3>\r\n<ul>\r\n  <li><em>Warm-up</em></li>\r\n  <li>1x3 - 90 percent of max</li>\r\n  <li>1x6 - 80 percent of max</li>\r\n  <li>1x8 - 70 percent of max</li>\r\n  <li>1x6 - 80 percent of max</li>\r\n  <li>1x3 - 90 percent of max</li>\r\n</ul>\r\n<h3><strong>Week 3:</strong>&nbsp;<strong>Full Pyramid</strong></h3>\r\n<ul>\r\n  <li><em>Warm-up</em></li>\r\n  <li>1x8 - 70 percent of max</li>\r\n  <li>1x6 - 80 percent of max</li>\r\n  <li>1x4 - 90 percent of max</li>\r\n  <li>1x1 - 99 percent of max</li>\r\n  <li>1x4 - 90 percent of max</li>\r\n  <li>1x6 - 80 percent of max</li>\r\n  <li>1x8 - 70 percent of max</li>\r\n</ul>\r\n<h4><strong>Week 4:</strong>&nbsp;<strong>Reverse Pyramid</strong></h4>\r\n<ul>\r\n  <li><em>Warm-up</em></li>\r\n  <li>1x2 - 95 percent of max</li>\r\n  <li>1x4 - 85 percent of max</li>\r\n  <li>1x6 - 75 percent of max</li>\r\n  <li>1x8 - 65 percent of max</li>\r\n  <li>1x6 - 75 percent of max</li>\r\n  <li>1x4 - 85 percent of max</li>\r\n  <li>1x2 - 95 percent of max</li>\r\n</ul>'),
(2, 'The Arnold Schwarzenegger Workout Routine', 'All', '1', 0, '<p><strong>Monday &amp; Thursday</strong><br />\r\n</p>\r\n<p><strong>Chest</strong> - Pullovers, Bench Press, Incline Press<br />\r\n  <strong>Back</strong> - Chin-ups ( Until fail ), Bent Over Rows<br />\r\n<strong>Abs</strong> - Leg Raises ( 5 sets until fail )</p>\r\n<p><strong>Tuesday &amp; Friday</strong></p>\r\n<p><strong>Shoulders</strong> - Upright Rows, Dumbbell Lateral Raises, Barbell Clean and Press, Arnold Press<br />\r\n  <strong>Arms</strong> - Seated Dumbbell Curls, Standing Barbell Curls, Narrow-Grip Bench Press, Standing Triceps Extensions with Barbell<br />\r\n  <strong>Forearms</strong> - Wrist Curls, Reverse Wrist Curls<br />\r\n<strong>Abs</strong> - Incline Sit ups ( 4 sets until fail )</p>\r\n<p><strong>Wednesday &amp; Saturday</strong></p>\r\n<p><strong>Thighs</strong> - Squat, Leg Curls, Lunges<br />\r\n  <strong>Calves</strong> - Standing Or Sitting Calf Raises ( 4 sets until fail )<br />\r\n  <strong>Lower Back</strong> - Straight/Stiff Leg Deadlifts (see explanation below), Good Mornings<br />\r\n<strong>Abs</strong> - Leg Raises ( 4 sets until fail )</p>'),
(3, 'Chest, Shoulders & Triceps', 'Weightlifting', '9,10,13', NULL, 'Chest, Shoulders & Triceps'),
(4, 'Back & Biceps', 'Weightlifting', '4,6,7', NULL, 'Pull (Back & Biceps)'),
(5, 'Back & Lats', 'Weightlifting', '2,4,6', NULL, 'Back & Lats'),
(6, 'Chest & Shoulders', 'Weightlifting', '9,13', NULL, 'Chest & Shoulders'),
(7, 'Legs', 'Weightlifting', '3,5,14,15,17', NULL, 'Legs'),
(8, 'Abs', 'All', '1', NULL, 'Core'),
(9, 'Chest & Back', 'Weightlifting', '4,6,9', NULL, 'Chest & Back'),
(10, 'Biceps, Forearms & Triceps', 'Weightlifting', '7,11,13', NULL, 'Arms (Biceps, Forearms & Triceps)'),
(11, 'Shoulders & Legs', 'Weightlifting', '3,5,10,14,15,17', NULL, 'Shoulders & Legs'),
(12, 'Shoulders & Back', 'Weightlifting', '4,6,13', NULL, 'Shoulders & Back'),
(13, 'Chest & Triceps', 'Weightlifting', '9,13', NULL, 'Chest & Triceps');

-- --------------------------------------------------------

--
-- Table structure for table `programtrac`
--

CREATE TABLE IF NOT EXISTS `programtrac` (
  `programtracID` int(10) NOT NULL AUTO_INCREMENT,
  `programID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `workDay` date NOT NULL,
  PRIMARY KEY (`programtracID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `programtrac`
--

INSERT INTO `programtrac` (`programtracID`, `programID`, `userID`, `workDay`) VALUES
(1, 12, 1, '2012-10-29'),
(5, 4, 1, '2012-11-01'),
(4, 10, 1, '2012-10-30'),
(6, 13, 1, '1969-12-31'),
(7, 6, 1, '2012-11-05'),
(8, 10, 1, '2012-11-07'),
(9, 5, 1, '2012-11-09');

-- --------------------------------------------------------

--
-- Table structure for table `recover`
--

CREATE TABLE IF NOT EXISTS `recover` (
  `recoverID` int(100) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `recoverDate` datetime NOT NULL,
  `passLink` varchar(255) NOT NULL,
  `recoverIP` int(10) unsigned NOT NULL,
  PRIMARY KEY (`recoverID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `recover`
--

INSERT INTO `recover` (`recoverID`, `email`, `recoverDate`, `passLink`, `recoverIP`) VALUES
(1, 'dre_board@yahoo.com', '2012-04-10 02:27:27', 'a6dCsaoDxD', 1117379970),
(2, 'dre_board@yahoo.com', '2012-04-10 03:41:11', 'BskKSpUMlN', 1117379970),
(3, 'dre_board@yahoo.com', '2012-04-10 03:44:16', 'BB8TGJCw&Y', 1117379970),
(4, 'dre_board@yahoo.com', '2012-04-10 03:46:47', 'hD&Nw852A0', 1117379970),
(5, 'dre_board@yahoo.com', '2012-04-10 03:47:46', '2b$jx00uPR', 1117379970),
(6, 'dre_board@yahoo.com', '2012-04-10 03:59:00', 'WHx@a98IqG', 1117379970),
(7, 'dre_board@yahoo.com', '2012-04-10 04:01:40', 'DriOvyrnf0', 1117379970),
(8, 'dre_board@yahoo.com', '2012-04-10 04:02:52', 'jKT1O2jQiS', 1117379970),
(9, 'dre_board@yahoo.com', '2012-04-10 04:05:42', 'f7A&jMnFmv', 1117379970),
(10, 'dre_board@yahoo.com', '2012-04-10 04:10:18', '&va!2ahxHI', 1117379970),
(11, 'dre_board@yahoo.com', '2012-04-10 04:14:31', '5uix6w7kzf', 1117379970),
(12, 'dre_board@yahoo.com', '2012-04-10 04:21:20', 'eViFiKLfNO', 1117379970),
(13, 'dre_board@yahoo.com', '2012-04-10 19:01:10', 'Wf3iC#cebg', 1117379970),
(14, 'dre_board@yahoo.com', '2012-04-10 19:07:54', 'zdmLCT3vG9', 1117379970),
(15, 'dre_board@yahoo.com', '2012-04-10 19:20:49', 'REwY7ksQMn', 1117379970),
(16, 'dre_board@yahoo.com', '2012-04-10 19:42:41', 'CGjg7fs6nU', 1117379970),
(17, 'dre_board@yahoo.com', '2012-04-10 19:49:14', '3iFG99%xNH', 1117379970),
(18, 'dre_board@yahoo.com', '2012-04-10 20:31:04', '8Q3&xxwHFw', 1117379970),
(19, 'dre_board@yahoo.com', '2012-04-10 20:45:47', 'iAmh0KAl8C', 1117379970),
(20, 'dre_board@yahoo.com', '2012-04-10 20:47:15', 'TNSLnL0ZzW', 1117379970),
(21, 'dre_board@yahoo.com', '2012-04-10 22:29:07', 'LxsXU85MFe', 1117379970),
(22, 'dre_board@yahoo.com', '2012-04-11 03:36:58', '*uUv%hn%KF', 1117379970),
(23, 'dre_board@yahoo.com', '2012-08-02 23:26:08', '9v0YJCroQ*', 1223796963);

-- --------------------------------------------------------

--
-- Table structure for table `registrants`
--

CREATE TABLE IF NOT EXISTS `registrants` (
  `registrantID` int(100) NOT NULL AUTO_INCREMENT,
  `eventID` int(100) NOT NULL,
  `first` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `last` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `phone` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `regDate` datetime NOT NULL,
  PRIMARY KEY (`registrantID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=48 ;

--
-- Dumping data for table `registrants`
--

INSERT INTO `registrants` (`registrantID`, `eventID`, `first`, `last`, `email`, `phone`, `regDate`) VALUES
(3, 6, '', '', '', '', '2012-09-14 15:18:39'),
(2, 3, 'Andre', 'Board', 'dre_board@yahoo.com', '555-555-1441', '2012-09-12 18:22:01'),
(4, 6, '', '', '', '', '2012-09-14 15:18:55'),
(5, 10, 'http://cyowajtinfex.com/', 'http://cyowajtinfex.com/', 'ehkdvn@rlvnzx.com', '43582040997', '2012-10-29 05:10:13'),
(6, 10, 'http://kujhdduakmnf.com/', 'http://kujhdduakmnf.com/', 'frxbdq@hadygj.com', '69856148896', '2012-10-29 05:10:22'),
(7, 10, 'http://hvffflntstjq.com/', 'http://hvffflntstjq.com/', 'wilqzi@jopueo.com', '96261655878', '2012-10-29 17:45:01'),
(8, 11, 'http://gxxnndhfooli.com/', 'http://gxxnndhfooli.com/', 'svadqs@oxwhwm.com', '61817476919', '2012-10-29 23:06:34'),
(9, 10, 'JBZkiYUDse', 'FvPXcLYpchzMDZcr', 'hswqhf@pslvtr.com', 'xykxsjND', '2012-10-31 06:27:00'),
(10, 8, 'John', 'Mangas', 'jmangas@tolmetro.com', '4197205636', '2012-10-31 13:54:31'),
(11, 8, 'Sondra', 'King', 'sondrarealtor01@yahoo.com', '419-494-4101', '2012-10-31 14:44:49'),
(12, 8, 'Susan', 'Meyer', 'suemeyer@wellesbowen.com', '419-535-7692', '2012-10-31 20:41:20'),
(13, 8, 'Andrea', 'Quilter', 'aquilter@danberry.com', '419-270-2897', '2012-11-01 02:12:39'),
(14, 27, 'OCvJhcrAh', 'rIubMzjMmnwGDkQ', 'otgcgk@uvxgkw.com', 'BjgVYUru', '2012-11-02 04:13:59'),
(15, 27, 'http://rbozbyndftkr.com/', 'BMnwcEnIeM', 'ntglub@njancq.com', '99488874546', '2012-11-04 06:55:21'),
(16, 50, 'Justin', 'Johnson', 'justinjohnson@neongoldfish.com', '4199179577', '2012-11-05 17:24:18'),
(19, 50, 'Justin', 'Johnson', 'justinjohnson@neongoldfish.com', '419-917-9577', '2012-11-05 20:07:25'),
(20, 27, 'acZSAVMoUfaHkIDPV', 'qrcuEXzbVFzphciZiLQ', 'qrlbvf@zotsuj.com', 'zgdyLXym', '2012-11-09 00:27:21'),
(21, 28, 'virginia', 'hoover', 'ginhoover@bex.net', '4195360011', '2012-11-13 14:55:41'),
(22, 28, 'Mary', 'Driscoll', 'mdriscollhomes@gmail.com', '419-508-0149', '2012-11-13 14:58:49'),
(23, 28, 'Gerald', 'Meyer', 'jm2833209@aol.com', '419-893-0751', '2012-11-13 15:13:18'),
(24, 28, 'Gerald', 'Meyer', 'jm2833209@aol.com', '419-893-0751', '2012-11-13 15:14:20'),
(25, 29, 'LISA', 'FAILS', 'lisaneverfails@gmail.com', '419-392-1034', '2012-11-14 20:06:21'),
(26, 16, 'http://nihqcxmcyzsj.com/', 'ptryDuARqIphRym', 'zlytiq@aqymos.com', '47154309355', '2012-11-15 11:52:05'),
(27, 44, 'Myles', 'Caryer', 'dialmyles@gmail.com', '419.376.2419', '2012-11-16 03:16:43'),
(28, 31, 'http://qnjlqbfelocs.com/', 'TUSiXgTkBqCW', 'uryywz@ygmrjd.com', '18546131037', '2012-11-19 08:12:02'),
(29, 44, 'Ginny', 'Meeker', 'ginnymeeker@wellesbowen.com', '419-350-3805', '2012-11-19 14:30:34'),
(30, 31, 'http://dglwjcnikuaw.com/', 'vdFLwATsvzEJHn', 'waaxay@ilsowi.com', '74642995873', '2012-11-19 18:25:08'),
(31, 54, 'Justin', 'Johnson', 'justinjohnson@neongoldfish.com', '419-917-9577', '2012-11-21 13:14:30'),
(32, 8, 'Joanne', 'Earnest', 'jojoearnest@bex.net', '4192607065', '2012-11-22 16:20:13'),
(33, 0, '', '', '', '', '2012-11-25 20:45:28'),
(34, 0, '', '', '', '', '2012-11-25 20:45:29'),
(35, 0, '', '', '', '', '2012-11-25 20:45:29'),
(36, 0, '', '', '', '', '2012-11-25 20:45:30'),
(37, 0, '', '', '', '', '2012-11-25 20:45:30'),
(38, 0, '', '', '', '', '2012-11-25 20:45:31'),
(39, 0, '', '', '', '', '2012-11-25 20:45:31'),
(40, 0, '', '', '', '', '2012-11-25 20:45:32'),
(41, 0, '', '', '', '', '2012-11-25 20:45:33'),
(42, 0, '', '', '', '', '2012-11-25 20:45:33'),
(43, 8, 'Karen', 'Lauber', 'lauberka@aol.com', '419-260-6465', '2012-11-26 15:19:14'),
(47, 54, 'Jeff', 'Fangman', 'jfangman@danberry.com', '419-794-6994', '2012-11-27 14:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `reptrac`
--

CREATE TABLE IF NOT EXISTS `reptrac` (
  `reptracID` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'weight',
  `exerciseID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `workDay` date NOT NULL,
  `set` int(10) NOT NULL,
  `reps` int(10) NOT NULL,
  `weight` int(10) NOT NULL,
  PRIMARY KEY (`reptracID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed`
--

CREATE TABLE IF NOT EXISTS `speed` (
  `speedID` int(100) NOT NULL AUTO_INCREMENT,
  `cardioID` int(10) NOT NULL DEFAULT '0',
  `time` decimal(7,3) NOT NULL DEFAULT '0.000',
  `distance` decimal(7,3) NOT NULL DEFAULT '0.000',
  `userID` int(10) NOT NULL,
  `goalDate` date NOT NULL,
  PRIMARY KEY (`speedID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `speed`
--

INSERT INTO `speed` (`speedID`, `cardioID`, `time`, `distance`, `userID`, `goalDate`) VALUES
(6, 0, 495.000, 9999.999, 1, '0000-00-00'),
(7, 0, 700.000, 9999.999, 1, '0000-00-00'),
(8, 0, 500.000, 9999.999, 1, '0000-00-00'),
(9, 0, 225.000, 9999.999, 1, '0000-00-00'),
(10, 0, 225.000, 9999.999, 1, '0000-00-00'),
(11, 0, 405.000, 9999.999, 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `supplements`
--

CREATE TABLE IF NOT EXISTS `supplements` (
  `supplementID` int(10) NOT NULL AUTO_INCREMENT,
  `supplementName` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `cycleOn` int(2) NOT NULL DEFAULT '0',
  `cycleOff` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`supplementID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `supplements`
--

INSERT INTO `supplements` (`supplementID`, `supplementName`, `cycleOn`, `cycleOff`) VALUES
(1, 'Creatine', 0, 0),
(2, 'Thermogenics', 42, 14),
(3, 'Nitric Oxide', 84, 28),
(4, 'Glutamine', 0, 0),
(5, 'Testosterone Booster', 1, 0),
(6, 'Protein', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `supplementtrac`
--

CREATE TABLE IF NOT EXISTS `supplementtrac` (
  `supplementtracID` int(10) NOT NULL AUTO_INCREMENT,
  `supplementID` int(10) NOT NULL,
  `enterDate` date NOT NULL,
  `doneDate` date DEFAULT NULL,
  `userID` int(10) NOT NULL,
  PRIMARY KEY (`supplementtracID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `supplementtrac`
--

INSERT INTO `supplementtrac` (`supplementtracID`, `supplementID`, `enterDate`, `doneDate`, `userID`) VALUES
(1, 3, '2012-09-22', '2012-11-01', 1),
(2, 0, '2013-11-07', '1969-12-31', 1);

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `weighttrac`
--

CREATE TABLE IF NOT EXISTS `weighttrac` (
  `weighttracID` int(10) NOT NULL AUTO_INCREMENT,
  `exerciseID` int(10) NOT NULL,
  `workoutID` int(10) NOT NULL DEFAULT '0',
  `programID` int(10) NOT NULL DEFAULT '0',
  `setNum` int(10) DEFAULT '0',
  `reps` int(10) NOT NULL DEFAULT '0',
  `weight` int(10) NOT NULL DEFAULT '0',
  `userID` int(10) NOT NULL,
  `workDay` date NOT NULL,
  PRIMARY KEY (`weighttracID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `weighttrac`
--

INSERT INTO `weighttrac` (`weighttracID`, `exerciseID`, `workoutID`, `programID`, `setNum`, `reps`, `weight`, `userID`, `workDay`) VALUES
(1, 1, 0, 0, 0, 0, 0, 1, '2012-10-18'),
(2, 1, 0, 0, 0, 0, 0, 1, '2012-10-15'),
(8, 1, 0, 0, 0, 0, 0, 1, '2012-10-12'),
(9, 1, 0, 0, 0, 0, 0, 1, '2012-10-10'),
(11, 1, 0, 0, 0, 0, 0, 1, '2012-10-08'),
(22, 5, 1, 0, 0, 0, 0, 1, '2012-10-18'),
(31, 90, 0, 0, 2, 7, 90, 1, '2012-11-04'),
(30, 90, 0, 0, 1, 8, 100, 1, '2012-11-04'),
(29, 96, 0, 0, 0, 2, 50, 1, '2012-11-03'),
(26, 2, 0, 0, 0, 0, 0, 1, '2012-10-19'),
(27, 7, 2, 0, 0, 0, 100, 1, '2012-11-03'),
(28, 7, 1, 0, 0, 0, 100, 1, '2012-11-03'),
(32, 90, 0, 0, 3, 5, 80, 1, '2012-11-04'),
(33, 105, 0, 0, 1, 10, 50, 1, '2012-11-04'),
(34, 94, 0, 0, 2, 10, 55, 1, '2012-11-04'),
(35, 0, 0, 0, 0, 10, 100, 1, '0000-00-00'),
(36, 62, 0, 0, 0, 10, 185, 1, '0000-00-00'),
(37, 15, 0, 0, 1, 8, 225, 1, '2012-12-24'),
(38, 15, 0, 0, 2, 6, 230, 1, '2012-12-24'),
(39, 15, 0, 0, 1, 5, 315, 1, '2012-12-27'),
(40, 15, 0, 0, 2, 5, 315, 1, '2012-12-27'),
(41, 15, 0, 0, 3, 5, 315, 1, '2012-12-27'),
(42, 42, 0, 0, 1, 10, 35, 1, '2012-12-27'),
(43, 42, 0, 0, 2, 10, 35, 1, '2012-12-27'),
(44, 42, 0, 0, 3, 10, 35, 1, '2012-12-27'),
(45, 16, 0, 0, 1, 10, 145, 1, '2013-10-18'),
(46, 16, 0, 0, 2, 8, 150, 1, '2013-10-18'),
(47, 90, 0, 0, 1, 10, 70, 1, '2013-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `workout`
--

CREATE TABLE IF NOT EXISTS `workout` (
  `workoutID` int(100) NOT NULL AUTO_INCREMENT,
  `exercises` text NOT NULL,
  `cardioID` int(10) NOT NULL DEFAULT '0',
  `muscleGroup` varchar(100) NOT NULL DEFAULT 'None',
  `workDay` date NOT NULL,
  `userID` int(10) NOT NULL,
  `note` text,
  `workoutType` varchar(100) NOT NULL,
  `intensity` varchar(100) NOT NULL,
  `workoutTitle` varchar(100) NOT NULL,
  PRIMARY KEY (`workoutID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `workout`
--

INSERT INTO `workout` (`workoutID`, `exercises`, `cardioID`, `muscleGroup`, `workDay`, `userID`, `note`, `workoutType`, `intensity`, `workoutTitle`) VALUES
(1, '', 1, 'None', '2012-10-19', 1, 'None', 'Cardio', 'Heavy', 'Cardio'),
(2, '', 1, 'None', '2012-10-15', 1, 'None', 'Cardio', 'Heavy', 'Cardio');

-- --------------------------------------------------------


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
