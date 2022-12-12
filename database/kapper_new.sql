-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2022 at 11:36 PM
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
(87, 110, '2022-12-10 16:45:00'),
(89, 112, '2022-12-10 16:48:00'),
(90, 113, '2022-12-10 19:20:00'),
(91, 114, '2022-12-10 19:20:00'),
(92, 115, '2022-12-10 19:39:00'),
(93, 116, '2022-12-10 19:42:00'),
(94, 117, '2022-12-10 19:42:00');

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
(117, 'nadawdwadawdaw', 'muhamedshamsaddin@gmail.com', '+313123123123', 'Man', 'dajwdhjawjdawjdjawjdaj', 'Niet stil zijn');

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
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28);

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
(21, 30, '10', 'puntjes bijwerken - dames', 7),
(22, 30, '15', 'kort haar - dames', 7),
(23, 30, '20', 'middenlang haar (tot schouders) - dames', 7),
(24, 30, '25', 'lang haar - dames', 7),
(25, 30, '10', 'kort haar - heren', 7),
(26, 30, '20', 'lang haar - heren', 7),
(27, 30, '20', 'kort haar & baard trimmen - heren', 7),
(28, 30, '30', 'lang haar & baard trimmen - heren', 7),
(29, 30, '10', 'wassen', 7),
(30, 30, '10', 'wassen & föhnen', 7);

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
(9, 'wassen & föhnen', '20', 30);

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
(94, 1, 21);

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
  MODIFY `afspraak_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `klanten`
--
ALTER TABLE `klanten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `servicescategorie`
--
ALTER TABLE `servicescategorie`
  MODIFY `servicescategorie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
