-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Računalo: localhost
-- Vrijeme generiranja: Pro 26, 2012 u 03:54 PM
-- Verzija poslužitelja: 5.5.24-log
-- PHP verzija: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza podataka: `drag_timer`
--

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `dragons`
--

CREATE TABLE IF NOT EXISTS `dragons` (
  `dragon_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  PRIMARY KEY (`dragon_id`),
  UNIQUE KEY `dragon_id` (`dragon_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Izbacivanje podataka za tablicu `dragons`
--

INSERT INTO `dragons` (`dragon_id`, `name`) VALUES
(1, 'Claw of Jormag'),
(2, 'The Shatterer'),
(3, 'Tequatl the Sunless');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `region_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` char(10) NOT NULL,
  PRIMARY KEY (`region_id`),
  UNIQUE KEY `region_id` (`region_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Izbacivanje podataka za tablicu `regions`
--

INSERT INTO `regions` (`region_id`, `name`) VALUES
(1, 'EU'),
(2, 'NA');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `servers`
--

CREATE TABLE IF NOT EXISTS `servers` (
  `region_id` smallint(6) NOT NULL,
  `server_id` smallint(6) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Izbacivanje podataka za tablicu `servers`
--

INSERT INTO `servers` (`region_id`, `server_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52);

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `server_names`
--

CREATE TABLE IF NOT EXISTS `server_names` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Izbacivanje podataka za tablicu `server_names`
--

INSERT INTO `server_names` (`id`, `name`) VALUES
(1, 'Abaddon''s Mouth (DE)'),
(2, 'Arborstone (FR)'),
(3, 'Augury Rock (FR)'),
(4, 'Aurora Glade'),
(5, 'Baruch Bay (SP)'),
(6, 'Blacktide'),
(7, 'Desolation'),
(8, 'Drakkar Lake (DE)'),
(9, 'Dzagonur (DE)'),
(10, 'Elona Reach (DE)'),
(11, 'Far Shiverpeaks'),
(12, 'Fissure of Woe'),
(13, 'Fort Ranik (FR)'),
(14, 'Gandara'),
(15, 'Gunnar''s Hold'),
(16, 'Jade Sea (FR)'),
(17, 'Kodash (DE)'),
(18, 'Miller''s Sound (DE)'),
(19, 'Piken Square'),
(20, 'Ring of Fire'),
(21, 'Riverside (DE)'),
(22, 'Ruins of Surmia'),
(23, 'Seafarer''s Rest'),
(24, 'Underworld'),
(25, 'Vabbi'),
(26, 'Vizunah Square (FR)'),
(27, 'Whiteside Ridge'),
(28, 'Anvil Rock'),
(29, 'Blackgate'),
(30, 'Borlis Pass'),
(31, 'Caulle''s Crossing'),
(32, 'Crystal Desert'),
(33, 'Darkhaven'),
(34, 'Devona''s Rest'),
(35, 'Dragonbrand'),
(36, 'Ehmry Bay'),
(37, 'Eredon Terrace'),
(38, 'Ferguson''s Crossing'),
(39, 'Fort Aspenwood'),
(40, 'Gate of Madness'),
(41, 'Henge of Denravi'),
(42, 'Isle of Janthir'),
(43, 'Jade Quarry'),
(44, 'Kaineng'),
(45, 'Maguuma'),
(46, 'Northern Shiverpeaks'),
(47, 'Sanctum of Rall'),
(48, 'Sea of Sorrows'),
(49, 'Sorrow''s Furnace'),
(50, 'Stormbluff Isle'),
(51, 'Tarnished Coast'),
(52, 'Yak''s Bend');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `spottings`
--

CREATE TABLE IF NOT EXISTS `spottings` (
  `region_id` smallint(6) NOT NULL,
  `server_id` smallint(6) NOT NULL,
  `dragon_id` smallint(6) NOT NULL,
  `spot_time` datetime NOT NULL,
  `update_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
