-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 08 dec 2022 om 19:58
-- Serverversie: 10.4.21-MariaDB
-- PHP-versie: 8.0.10

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
-- Tabelstructuur voor tabel `afspraakkt`
--

CREATE TABLE `afspraakkt` (
  `afspraak_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `afspraken`
--

CREATE TABLE `afspraken` (
  `id` int(11) NOT NULL,
  `klanten_id` int(11) NOT NULL,
  `datum` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `afspraken`
--

INSERT INTO `afspraken` (`id`, `klanten_id`, `datum`) VALUES
(46, 69, '2022-12-08 16:50:00'),
(47, 70, '2022-12-08 17:03:00'),
(48, 71, '2022-12-08 17:03:00'),
(49, 72, '2022-12-08 17:08:00'),
(50, 73, '2022-12-08 17:30:00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `klanten`
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
-- Gegevens worden geëxporteerd voor tabel `klanten`
--

INSERT INTO `klanten` (`id`, `naam`, `email`, `telefoon`, `geslacht`, `notities`, `praat`) VALUES
(69, 'Mohammed EL Malki', 'siempostmus@ziggo.nl', '+31756756865', 'Man', 'fhtggfjgh', 'Niet stil zijn'),
(70, 'piettt', 'siempostmus@ziggo.nl', '+31676786967', 'Man', 'fhtggfjgh', 'Niet stil zijn'),
(71, 'piettt', 'siempostmus@ziggo.nl', '+31676786967', 'Man', 'fhtggfjgh', 'Niet stil zijn'),
(72, 'piettt', 'siempostmus@ziggo.nl', '+31676786967', 'Man', 'fhtggfjgh', 'Niet stil zijn'),
(73, 'issy', 'siempostmus@ziggo.nl', '+31676786967', 'Man', 'fgfgfgf', 'Niet stil zijn');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `servicekt`
--

CREATE TABLE `servicekt` (
  `medewerker_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `servicekt`
--

INSERT INTO `servicekt` (`medewerker_id`, `service_id`) VALUES
(2, 21),
(1, 28);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `serviceduur` int(11) NOT NULL,
  `serviceprijs` decimal(50,0) NOT NULL,
  `servicenaam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `services`
--

INSERT INTO `services` (`id`, `serviceduur`, `serviceprijs`, `servicenaam`) VALUES
(21, 30, '10', 'puntjes bijwerken - dames'),
(22, 30, '15', 'kort haar - dames'),
(23, 30, '20', 'middenlang haar (tot schouders) - dames'),
(24, 30, '25', 'lang haar - dames'),
(25, 30, '10', 'kort haar - heren'),
(26, 30, '20', 'lang haar - heren'),
(27, 30, '20', 'kort haar & baard trimmen - heren'),
(28, 30, '30', 'lang haar & baard trimmen - heren'),
(29, 30, '10', 'wassen'),
(30, 30, '10', 'wassen & föhnen');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `userkt`
--

CREATE TABLE `userkt` (
  `afspraak_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `userkt`
--

INSERT INTO `userkt` (`afspraak_id`, `user_id`, `service_id`) VALUES
(46, 1, 21),
(48, 1, 21),
(49, 2, 21),
(50, 1, 28);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `wachtwoord` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `rol`, `naam`, `email`, `wachtwoord`) VALUES
(1, 'admin', 'mo', 'a@gmail.com', 'wachtwoord123'),
(2, 'admin', 'thijmen', 'thij@men.com', '123');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `afspraakkt`
--
ALTER TABLE `afspraakkt`
  ADD UNIQUE KEY `afspraak_id` (`afspraak_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexen voor tabel `afspraken`
--
ALTER TABLE `afspraken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `klanten_id` (`klanten_id`);

--
-- Indexen voor tabel `klanten`
--
ALTER TABLE `klanten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `servicekt`
--
ALTER TABLE `servicekt`
  ADD UNIQUE KEY `afspraak_id` (`medewerker_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexen voor tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `userkt`
--
ALTER TABLE `userkt`
  ADD UNIQUE KEY `afspraak_id` (`afspraak_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `afspraken`
--
ALTER TABLE `afspraken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT voor een tabel `klanten`
--
ALTER TABLE `klanten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT voor een tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `afspraken`
--
ALTER TABLE `afspraken`
  ADD CONSTRAINT `afspraken_ibfk_1` FOREIGN KEY (`klanten_id`) REFERENCES `klanten` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `servicekt`
--
ALTER TABLE `servicekt`
  ADD CONSTRAINT `servicekt_ibfk_1` FOREIGN KEY (`medewerker_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `servicekt_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `userkt`
--
ALTER TABLE `userkt`
  ADD CONSTRAINT `userkt_ibfk_1` FOREIGN KEY (`afspraak_id`) REFERENCES `afspraken` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userkt_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userkt_ibfk_3` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
