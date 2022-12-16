-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 12:50 PM
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
(171, 194, '2022-12-16 09:55:00'),
(172, 195, '2022-12-16 09:55:00'),
(173, 196, '2022-12-16 09:57:00'),
(175, 198, '2022-12-17 12:11:00'),
(177, 200, '2022-12-16 12:12:00'),
(178, 201, '2022-12-16 12:12:00'),
(179, 202, '2022-12-16 12:13:00'),
(180, 203, '2022-12-16 12:13:00'),
(181, 204, '0000-00-00 00:00:00'),
(182, 205, '2022-12-16 12:14:00'),
(183, 206, '2022-12-17 12:16:00'),
(184, 207, '2022-12-16 12:36:00'),
(185, 208, '2022-12-16 12:36:00'),
(186, 209, '2022-12-16 12:36:00'),
(187, 210, '2022-12-16 12:36:00'),
(188, 211, '2022-12-16 12:44:00'),
(189, 212, '2022-12-16 12:44:00'),
(190, 213, '2022-12-16 12:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `klanten`
--

CREATE TABLE `klanten` (
  `id` int(11) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefoon` varchar(13) NOT NULL,
  `notities` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `klanten`
--

INSERT INTO `klanten` (`id`, `naam`, `email`, `telefoon`, `notities`) VALUES
(110, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', '321312312312'),
(111, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', '321312312312'),
(112, 'nadawdwadawdaw', 'muhamedshamsaddin@gmail.com', '+313123123123', 'dajwdhjawjdawjdjawjdaj'),
(113, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313123123123', '321312312312'),
(114, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313123123123', 'dajwdhjawjdawjdjawjdaj'),
(115, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313123123123', 'dajwdhjawjdawjdjawjdaj'),
(116, 'nadawdwadawdaw', 'muhamedshamsaddin@gmail.com', '+313123123123', 'dajwdhjawjdawjdjawjdaj'),
(117, 'nadawdwadawdaw', 'muhamedshamsaddin@gmail.com', '+313123123123', 'dajwdhjawjdawjdjawjdaj'),
(118, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(119, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', '3213213'),
(120, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313123123123', 'dajwdhjawjdawjdjawjdaj'),
(121, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313123123123', 'dajwdhjawjdawjdjawjdaj'),
(122, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(123, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(124, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(125, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(126, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(127, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(128, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(129, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(130, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(131, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(132, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(133, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(134, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(135, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(136, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(137, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(138, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(139, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(140, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(141, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(142, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(143, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(144, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(145, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(146, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(147, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(148, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(149, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(150, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(151, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(152, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(153, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(154, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(155, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(156, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(157, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(158, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(159, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(160, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(161, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(162, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(163, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(164, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(165, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(166, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(167, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(168, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(169, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(170, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(171, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(172, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(173, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(174, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(175, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(176, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(177, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(178, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(179, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(180, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(181, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(182, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(183, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(184, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(185, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(186, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(187, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(188, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(189, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(190, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313123123123', 'dajwdhjawjdawjdjawjdaj'),
(191, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+31649493838', 'dajwdhjawjdawjdjawjdajddddddddddddddddddddd'),
(192, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(193, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', '3213213'),
(194, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(195, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(196, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', 'dajwdhjawjdawjdjawjdaj'),
(197, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313123123123', '3213213'),
(198, 'nadawdwadawdaw', '213', '+313213', '1321'),
(199, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', '213123'),
(200, 'JOHNN', 'muhamedshamsaddin@gmail.com', '+3163413213', '123123'),
(201, 'JOHNN', 'muhamedshamsaddin@gmail.com', '+3163413213', '123123'),
(202, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+31213', '3131'),
(203, '32131', '31231', '+313123', '32131'),
(204, 'nadawdwadawdaw', 'muhamedshamsaddin@gmail.com', '+313123', '32131'),
(205, 'nadawdwadawdaw', 'muhamedshamsaddin@gmail.com', '+313213321', '3123'),
(206, '3123', '312', '+313123', '13231'),
(207, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', '231322'),
(208, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', '231322'),
(209, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', '231322'),
(210, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', '231322'),
(211, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', '21313'),
(212, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', '21313'),
(213, 'a@gmail.com', 'muhamedshamsaddin@gmail.com', '+313333333', '213');

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
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70);

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
(59, 30, '10', 'Puntjes knippen', 8),
(60, 30, '10', 'Puntjes knippen', 9),
(61, 30, '10', 'Puntjes knippen', 11),
(62, 30, '15', 'Kort haar', 8),
(63, 30, '15', 'Kort haar', 9),
(64, 30, '15', 'Kort haar', 11),
(65, 30, '25', 'Lang haar', 8),
(66, 30, '25', 'Lang haar', 9),
(67, 30, '25', 'Lang haar', 11),
(68, 30, '25', 'Lang haar', 8),
(69, 30, '25', 'Lang haar', 9),
(70, 30, '25', 'Lang haar', 11);

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
(189, 1, 61),
(190, 1, 61);

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
  MODIFY `afspraak_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `klanten`
--
ALTER TABLE `klanten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

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
