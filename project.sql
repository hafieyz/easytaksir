-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2019 at 08:14 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'sunnygkp10@gmail.com', '123456'),
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5cc4b57b832b1', '5cc4b57b84009'),
('5cc4b57b8a06f', '5cc4b57b8ac75'),
('5cc4b63f129ed', '5cc4b63f13591'),
('5cc4b63f17faa', '5cc4b63f18ef9'),
('5cc4c1825f1a2', '5cc4c1825fd23'),
('5cc4c18263d6b', '5cc4c182648ee'),
('5cc5ac5a357da', '5cc5ac5a3644d');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('hafieyzamirudin@gmail.com', '5cc4b3af75bda', 1, 2, 1, 1, '2019-04-27 20:08:47'),
('hafieyzamirudin@gmail.com', '5cc4b5b331c4c', 0, 2, 0, 2, '2019-04-27 20:09:04'),
('hafieyzamirudin@gmail.com', '5cc4c08b94adf', 0, 2, 0, 2, '2019-04-27 21:01:18'),
('nadiah@gmail.com', '5cc4b3af75bda', 1, 2, 1, 1, '2019-04-27 21:03:19'),
('nadiah@gmail.com', '5cc4b5b331c4c', 2, 2, 1, 1, '2019-04-27 21:03:31'),
('nadiah@gmail.com', '5cc4c08b94adf', 0, 2, 0, 2, '2019-04-27 21:03:46'),
('admin@admin.com', '5cc4c08b94adf', 0, 2, 0, 2, '2019-04-27 21:35:18'),
('hanani1@gmail.com', '5cc4b3af75bda', 0, 2, 0, 2, '2019-04-28 13:29:42'),
('hanani1@gmail.com', '5cc4b5b331c4c', 0, 2, 0, 2, '2019-04-28 13:30:21'),
('hanani1@gmail.com', '5cc4c08b94adf', 0, 2, 0, 2, '2019-04-28 13:30:36'),
('admin@admin.com', '5cc4b5b331c4c', 0, 2, 0, 2, '2019-04-28 13:31:23');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5cc4b57b832b1', 'Real / Nyata', '5cc4b57b83ffa'),
('5cc4b57b832b1', 'Inverted / Terbalik', '5cc4b57b84005'),
('5cc4b57b832b1', 'Laterally inverted / Nyata Songsang sisi', '5cc4b57b84009'),
('5cc4b57b832b1', 'Bigger than the object / Lebih besar daripada objek', '5cc4b57b8400c'),
('5cc4b57b8a06f', 'Camera / kamera', '5cc4b57b8ac62'),
('5cc4b57b8a06f', 'Periscope / Periskop', '5cc4b57b8ac75'),
('5cc4b57b8a06f', 'Telescope / teleskop', '5cc4b57b8ac78'),
('5cc4b57b8a06f', 'Microscope / Mikroskop', '5cc4b57b8ac7b'),
('5cc4b63f129ed', 'The red sky / Kemerahan langit', '5cc4b63f13580'),
('5cc4b63f129ed', 'The formation of white light / Pembentukan cahaya putih', '5cc4b63f1358b'),
('5cc4b63f129ed', 'The blue sky / Kebiruan langit', '5cc4b63f1358e'),
('5cc4b63f129ed', 'The formation of a rainbow / Pembentukan pelangi', '5cc4b63f13591'),
('5cc4b63f17faa', 'Red / Merah', '5cc4b63f18ef9'),
('5cc4b63f17faa', 'Blue / Biru', '5cc4b63f18f30'),
('5cc4b63f17faa', 'Cyan / Sian', '5cc4b63f18f32'),
('5cc4b63f17faa', 'Green / Hijau', '5cc4b63f18f34'),
('5cc4c1825f1a2', 'allow the light through / membenarkan cahaya masuk', '5cc4c1825fd23'),
('5cc4c1825f1a2', 'control the amount of light / mengawal kuantiti cahaya', '5cc4c1825fd31'),
('5cc4c1825f1a2', 'adjust the position of the image /  melaraskan kedudukan imej', '5cc4c1825fd34'),
('5cc4c1825f1a2', 'control the duration of light exposure / mengawal tempoh pendedahan cahaya', '5cc4c1825fd37'),
('5cc4c18263d6b', 'Cyan / Sian', '5cc4c182648de'),
('5cc4c18263d6b', 'White / Putih', '5cc4c182648e8'),
('5cc4c18263d6b', 'Magenta / Magenta', '5cc4c182648eb'),
('5cc4c18263d6b', 'Yellow / Kuning', '5cc4c182648ee'),
('5cc5ac5a357da', 'a', '5cc5ac5a3644d'),
('5cc5ac5a357da', 'b', '5cc5ac5a3645d'),
('5cc5ac5a357da', 'c', '5cc5ac5a3645f'),
('5cc5ac5a357da', 'd', '5cc5ac5a36464');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5cc4b3af75bda', '5cc4b57b832b1', 'Which of the following is a characteristic of the image of an object formed by a plane mirror?\r\n\r\nAntara berikut yang manakah ciri imej bagi suatu objek yang dibentuk oleh cermin satah?', 4, 1),
('5cc4b3af75bda', '5cc4b57b8a06f', 'Which of the following optical instruments uses plane mirrors?\r\nAntara alatan optic berikut, yang manakah menggunakan cermin satah?', 4, 2),
('5cc4b5b331c4c', '5cc4b63f129ed', 'Which of the following is an effect of light dispersion?\r\n\r\nAntara yang berikut, yang manakah kesan penyebaran cahaya?', 4, 1),
('5cc4b5b331c4c', '5cc4b63f17faa', 'Which of the following light colours is scattered the least in the evening?\r\n\r\nManakah antara warna-warna cahaya berikut, diserakkan paling kurang pada waktu\r\npetang?', 4, 2),
('5cc4c08b94adf', '5cc4c1825f1a2', 'The figure shows the structure of a camera?\r\nRajah menunjukkan struktur sebuah kamera?\r\n\r\nThe function of structure X is\r\nFungsi x ialah', 4, 1),
('5cc4c08b94adf', '5cc4c18263d6b', 'Diagram shows the addition of coloured lights.\r\nRajah menunjukkan penambahan cahaya berwarna.\r\n\r\nWhat is the colour seen at X?\r\nApakah warna yang kelihatan pada X?', 4, 2),
('5cc5ac132175b', '5cc5ac5a357da', 'test a', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5cc4b3af75bda', '[level 1]', 1, 0, 2, 5, '', '', '2019-04-27 19:55:27'),
('5cc4b5b331c4c', '[level 2]', 2, 0, 2, 8, '', '', '2019-04-27 20:04:03'),
('5cc4c08b94adf', '[level 3]', 5, 0, 2, 1, '', '', '2019-04-27 20:50:19'),
('5cc5ac132175b', '[level 4]', 11, 0, 1, 8, '', '', '2019-04-28 13:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('hafieyzamirudin@gmail.com', 3, '2019-04-27 21:01:18'),
('nadiah@gmail.com', 3, '2019-04-27 21:03:46'),
('hanani1@gmail.com', 0, '2019-04-28 13:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Hafiz Amirudin', '', 'UPSI-001', 'hafieyzamirudin@gmail.com', 102602614, 'a7c6ec78a1e7a6e9ae2a153445066822'),
('Hanani', '', 'upsi-1029', 'hanani1@gmail.com', 0, '198eea516598eb576d4b56aab84e37d6'),
('Hanani', '', 'UPSI-1231', 'hanani@gmail.com', 102602614, 'e5191626f0904f8636028da4efeb4c94'),
('Nadiah', '', 'UPSI-3431', 'nadiah@gmail.com', 102602614, '681c274f52361e0fa14a8e698ec3e32f'),
('Test', '', 'test', 'test@gmail.com', 102602614, '147538da338b770b61e592afc92b1ee6'),
('Testttt', '', 'UPSI-54232', 'tester@gmail.com', 0, 'f5d1278e8109edd94e1e4197e04873b9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
