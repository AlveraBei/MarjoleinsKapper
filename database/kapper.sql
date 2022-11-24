-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 24, 2022 at 03:04 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

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
  `id` int(11) NOT NULL,
  `klanten_id` int(11) NOT NULL,
  `datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `klanten`
--

CREATE TABLE `klanten` (
  `id` int(11) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefoon` varchar(13) NOT NULL,
  `afspraak` date NOT NULL,
  `tijd` time NOT NULL,
  `geslacht` varchar(10) NOT NULL,
  `notities` varchar(255) NOT NULL,
  `praat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `klanten`
--

INSERT INTO `klanten` (`id`, `naam`, `email`, `telefoon`, `afspraak`, `tijd`, `geslacht`, `notities`, `praat`) VALUES
(20, 'Thijmpie', 'thijm@gmail', '612345678', '2022-11-24', '12:30:00', 'M', 'Geen', 'Niet stil zijn'),
(21, 'Mo', 'Mootje@mo', '612345467', '2022-11-24', '14:10:00', 'M', '23', 'Niet stil zijn'),
(22, 'Johan', 'jootje', '6213212', '2022-11-24', '08:30:00', 'M', 'geen', 'Niet stil zijn'),
(23, 'Peter', 'hds@sajdh', '63454553', '2022-11-24', '12:30:00', 'M', 'niks', 'Niet stil zijn');

-- --------------------------------------------------------

--
-- Table structure for table `servicekt`
--

CREATE TABLE `servicekt` (
  `afspraak_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `serviceduur` int(11) NOT NULL,
  `serviceprijs` decimal(50,0) NOT NULL,
  `servicenaam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userkt`
--

CREATE TABLE `userkt` (
  `afspraak_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `wachtwoord` varchar(50) NOT NULL,
  `kapperid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `rol`, `naam`, `email`, `wachtwoord`, `kapperid`) VALUES
(1, 'admin', 'mo', 'a@gmail.com', 'wachtwoord123', 1),
(2, 'admin', 'thijmen', 'thij@men.com', '123', 2);

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
  ADD PRIMARY KEY (`id`),
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
  ADD UNIQUE KEY `afspraak_id` (`afspraak_id`),
  ADD UNIQUE KEY `service_id` (`service_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `userkt`
--
ALTER TABLE `userkt`
  ADD UNIQUE KEY `afspraak_id` (`afspraak_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `klanten`
--
ALTER TABLE `klanten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `afspraakkt`
--
ALTER TABLE `afspraakkt`
  ADD CONSTRAINT `afspraakkt_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `afspraakkt_ibfk_2` FOREIGN KEY (`afspraak_id`) REFERENCES `afspraken` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `afspraken`
--
ALTER TABLE `afspraken`
  ADD CONSTRAINT `afspraken_ibfk_1` FOREIGN KEY (`klanten_id`) REFERENCES `klanten` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `servicekt`
--
ALTER TABLE `servicekt`
  ADD CONSTRAINT `servicekt_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `servicekt_ibfk_2` FOREIGN KEY (`afspraak_id`) REFERENCES `afspraken` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userkt`
--
ALTER TABLE `userkt`
  ADD CONSTRAINT `userkt_ibfk_1` FOREIGN KEY (`afspraak_id`) REFERENCES `afspraken` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userkt_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
