-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 10:05 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kapper`
--

-- --------------------------------------------------------

--
-- Table structure for table `afspraakkt`
--

CREATE TABLE `afspraakkt` (
  `afspraak_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `afspraken`
--

CREATE TABLE `afspraken` (
  `afspraak_id` int(11) NOT NULL,
  `klanten_id` int(11) NOT NULL,
  `datum` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `afspraken`
--

INSERT INTO `afspraken` (`afspraak_id`, `klanten_id`, `datum`) VALUES
(167, 190, '2022-12-15 11:08:00'),
(170, 193, '2022-12-16 09:53:00'),
(171, 194, '2022-12-16 09:55:00'),
(172, 195, '2022-12-16 09:55:00'),
(173, 196, '2022-12-16 09:57:00'),
(174, 197, '2022-12-16 10:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `klanten`
--

CREATE TABLE `klanten` (
  `id` int(11) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefoon` varchar(13) NOT NULL,
  `geslacht` varchar(10) NOT NULL,
  `notities` varchar(255) NOT NULL,
  `praat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `klanten`
--

INSERT INTO `klanten` (`id`, `naam`, `email`, `telefoon`, `geslacht`, `notities`, `praat`) VALUES
(110, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', '321312312312', 'Niet stil zijn'),
(111, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', '321312312312', 'Niet stil zijn'),
(112, 'nadawdwadawdaw', 'muhamedshamsaddin@gmail.com', '+313123123123', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(113, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313123123123', 'Man', '321312312312', 'Niet stil zijn'),
(114, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313123123123', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(115, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313123123123', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(116, 'nadawdwadawdaw', 'muhamedshamsaddin@gmail.com', '+313123123123', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(117, 'nadawdwadawdaw', 'muhamedshamsaddin@gmail.com', '+313123123123', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(118, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(119, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', '3213213', 'Niet stil zijn'),
(120, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313123123123', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(121, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313123123123', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(122, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(123, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(124, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(125, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(126, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(127, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(128, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(129, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(130, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(131, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(132, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(133, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(134, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(135, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(136, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(137, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(138, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(139, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(140, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(141, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(142, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(143, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(144, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(145, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(146, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(147, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(148, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(149, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(150, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(151, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(152, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(153, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(154, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(155, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(156, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(157, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(158, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(159, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(160, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(161, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(162, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(163, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(164, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(165, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(166, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(167, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(168, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(169, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(170, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(171, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(172, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(173, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(174, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(175, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(176, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(177, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(178, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(179, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(180, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(181, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(182, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(183, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(184, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(185, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(186, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(187, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(188, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(189, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(190, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313123123123', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(191, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+31649493838', 'Man', 'dajwdhjawjdawjdjawjdajddddddddddddddddddddd', 'Niet stil zijn'),
(192, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(193, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', '3213213', 'Niet stil zijn'),
(194, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(195, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(196, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn'),
(197, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313123123123', 'Man', '3213213', 'Niet stil zijn');

-- --------------------------------------------------------

--
-- Table structure for table `servicekt`
--

CREATE TABLE `servicekt` (
  `medewerker_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servicekt`
--

INSERT INTO `servicekt` (`medewerker_id`, `service_id`) VALUES
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `serviceduur` int(11) NOT NULL,
  `serviceprijs` decimal(50,0) NOT NULL,
  `servicenaam` varchar(50) NOT NULL,
  `servicescategorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `serviceduur`, `serviceprijs`, `servicenaam`, `servicescategorie`) VALUES
(21, 30, '10', 'Puntjes knippen', 7),
(22, 30, '15', 'Kort haar', 7),
(23, 30, '20', 'Haar tot schouders', 7),
(24, 30, '25', 'Lang haar', 7),
(43, 30, '10', 'Puntjes knippen', 8),
(44, 30, '10', 'Puntjes knippen', 9),
(45, 30, '15', 'Kort haar', 8),
(46, 30, '15', 'Kort haar', 9),
(47, 30, '20', 'Puntjes knippen', 11),
(48, 30, '20', 'Puntjes knippen', 7),
(49, 30, '25', 'Lang haar', 8),
(50, 30, '25', 'Lang haar', 9),
(51, 30, '10', 'Puntjes knippen', 11),
(52, 30, '15', 'Kort haar', 11),
(53, 30, '20', 'Haar tot schouders', 11),
(54, 30, '25', 'Lang haar', 11);

-- --------------------------------------------------------

--
-- Table structure for table `servicescategorie`
--

CREATE TABLE `servicescategorie` (
  `servicescategorie_id` int(11) NOT NULL,
  `categorienaam` varchar(255) NOT NULL,
  `categorieprijs` decimal(50,0) NOT NULL,
  `categorieduur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servicescategorie`
--

INSERT INTO `servicescategorie` (`servicescategorie_id`, `categorienaam`, `categorieprijs`, `categorieduur`) VALUES
(7, 'wassen', '10', 15),
(8, 'föhnen', '10', 15),
(9, 'wassen & föhnen', '20', 30),
(11, 'geen', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `userkt`
--

CREATE TABLE `userkt` (
  `afspraak_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userkt`
--

INSERT INTO `userkt` (`afspraak_id`, `user_id`, `service_id`) VALUES
(167, 1, 48),
(170, 1, 47),
(174, 1, 48);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `wachtwoord` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `rol`, `naam`, `email`, `wachtwoord`) VALUES
(1, 'admin', 'mo', 'a@gmail.om', '123'),
(2, 'admin', 'thijmen', 'thij@men.com', '123'),
(8, 'admin', 'mo', 'a@gmail.com', '$2y$10$p8CsRTCFzz9BxkJpAX.KwuttYIQGXXbb/LrRqnrUTZdB2aR/8owcm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `afspraakkt`
--
ALTER TABLE `afspraakkt`
  ADD UNIQUE KEY `afspraak_id` (`afspraak_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `afspraken`
--
ALTER TABLE `afspraken`
  ADD PRIMARY KEY (`afspraak_id`),
  ADD UNIQUE KEY `klanten_id` (`klanten_id`);

--
-- Indexes for table `klanten`
--
ALTER TABLE `klanten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicekt`
--
ALTER TABLE `servicekt`
  ADD KEY `service_id` (`service_id`),
  ADD KEY `medewerker_id` (`medewerker_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicescategorie` (`servicescategorie`);

--
-- Indexes for table `servicescategorie`
--
ALTER TABLE `servicescategorie`
  ADD PRIMARY KEY (`servicescategorie_id`);

--
-- Indexes for table `userkt`
--
ALTER TABLE `userkt`
  ADD UNIQUE KEY `afspraak_id` (`afspraak_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `userkt_ibfk_2` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `afspraken`
--
ALTER TABLE `afspraken`
  MODIFY `afspraak_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `klanten`
--
ALTER TABLE `klanten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `servicescategorie`
--
ALTER TABLE `servicescategorie`
  MODIFY `servicescategorie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `afspraken`
--
ALTER TABLE `afspraken`
  ADD CONSTRAINT `afspraken_ibfk_1` FOREIGN KEY (`klanten_id`) REFERENCES `klanten` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `servicekt`
--
ALTER TABLE `servicekt`
  ADD CONSTRAINT `servicekt_ibfk_1` FOREIGN KEY (`medewerker_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `servicekt_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`servicescategorie`) REFERENCES `servicescategorie` (`servicescategorie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userkt`
--
ALTER TABLE `userkt`
  ADD CONSTRAINT `userkt_ibfk_1` FOREIGN KEY (`afspraak_id`) REFERENCES `afspraken` (`afspraak_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userkt_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userkt_ibfk_3` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
