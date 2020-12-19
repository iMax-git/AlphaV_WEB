-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 19 déc. 2020 à 21:15
-- Version du serveur :  10.3.25-MariaDB-0ubuntu1
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `betalife`
--

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('caution', 'Caution', 0),
('property_black_money', 'Argent Sale Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_ammunation', 'Ammunation', 1),
('society_avocat', 'Avocat', 1),
('society_bahama_mamas', 'Bahama Mamas', 1),
('society_ballas', 'ballas', 1),
('society_burgershot', 'Burgershot', 1),
('society_cammora', 'Cammora', 1),
('society_cardealer', 'Concessionnaire', 1),
('society_cosanostra', 'CosaNostra', 1),
('society_families', 'families', 1),
('society_gouvernor', 'Gouvernement', 1),
('society_journaliste', 'journaliste', 1),
('society_mechanic', 'Mécano', 1),
('society_police', 'Police', 1),
('society_realestateagent', 'Agent immobilier', 1),
('society_state', 'State', 1),
('society_tabac', 'Tabac', 1),
('society_taxe_weazel', 'Weazel News Taxe', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'vagos', 1),
('society_vigne', 'Vigneron', 1),
('society_weazel', 'Weazel News', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_ambulance', 2400, NULL),
(2, 'society_ammunation', 0, NULL),
(3, 'society_bahama_mamas', 0, NULL),
(4, 'society_ballas', 5, NULL),
(5, 'society_burgershot', 10233, NULL),
(6, 'society_cardealer', 946088, NULL),
(7, 'society_cartel', 39500, NULL),
(8, 'society_families', 0, NULL),
(9, 'society_gouvernor', 0, NULL),
(10, 'society_mafia', 0, NULL),
(11, 'society_marabunta', 0, NULL),
(12, 'society_mechanic', 4523, NULL),
(13, 'society_police', 169230, NULL),
(14, 'society_realestateagent', 94560, NULL),
(15, 'society_tabac', 4709, NULL),
(16, 'society_taxi', 12886, NULL),
(17, 'society_unicorn', 21889, NULL),
(18, 'society_vagos', 0, NULL),
(19, 'society_vigne', 0, NULL),
(20, 'caution', 0, 'steam:110000136c36a04'),
(21, 'property_black_money', 0, 'steam:110000136c36a04'),
(22, 'property_black_money', 0, 'steam:11000011b7ef111'),
(23, 'caution', 0, 'steam:11000011b7ef111'),
(24, 'property_black_money', 2661, 'steam:11000013254024a'),
(25, 'caution', 0, 'steam:11000013254024a'),
(26, 'property_black_money', 0, 'steam:1100001027c2870'),
(27, 'caution', 0, 'steam:1100001027c2870'),
(28, 'property_black_money', 0, 'steam:110000117709c63'),
(29, 'caution', 0, 'steam:110000117709c63'),
(30, 'property_black_money', 0, 'steam:110000118b1a98e'),
(31, 'caution', 0, 'steam:110000118b1a98e'),
(32, 'society_white', 790, NULL),
(33, 'society_bloods', 0, NULL),
(34, 'caution', 0, 'steam:11000013c6bc82a'),
(35, 'property_black_money', 0, 'steam:11000013c6bc82a'),
(36, 'property_black_money', 0, 'steam:11000013d193ef3'),
(37, 'caution', 0, 'steam:11000013d193ef3'),
(38, 'property_black_money', 0, 'steam:110000135cb51c7'),
(39, 'caution', 0, 'steam:110000135cb51c7'),
(40, 'caution', 0, 'steam:11000011b8f00e6'),
(41, 'property_black_money', 0, 'steam:11000011b8f00e6'),
(42, 'property_black_money', 505, 'steam:11000013619ddeb'),
(43, 'caution', 0, 'steam:11000013619ddeb'),
(44, 'caution', 0, 'steam:11000013d5431cc'),
(45, 'property_black_money', 0, 'steam:11000013d5431cc'),
(46, 'property_black_money', 0, 'steam:11000011b0fb6cb'),
(47, 'caution', 0, 'steam:11000011b0fb6cb'),
(48, 'property_black_money', 0, 'steam:11000013f2b5e80'),
(49, 'caution', 0, 'steam:11000013f2b5e80'),
(50, 'property_black_money', 0, 'steam:1100001358abdef'),
(51, 'caution', 0, 'steam:1100001358abdef'),
(52, 'property_black_money', 0, 'steam:110000118fdead3'),
(53, 'caution', 0, 'steam:110000118fdead3'),
(54, 'property_black_money', 0, 'steam:11000013728f9a0'),
(55, 'caution', 0, 'steam:11000013728f9a0'),
(56, 'property_black_money', 0, 'steam:11000010bfb2fe2'),
(57, 'caution', 0, 'steam:11000010bfb2fe2'),
(58, 'caution', 0, 'steam:110000115cdc1fc'),
(59, 'property_black_money', 0, 'steam:110000115cdc1fc'),
(60, 'property_black_money', 0, 'steam:110000131fd1080'),
(61, 'caution', 0, 'steam:110000131fd1080'),
(62, 'caution', 0, 'steam:11000013f407870'),
(63, 'property_black_money', 0, 'steam:11000013f407870'),
(64, 'caution', 0, 'steam:1100001406869f3'),
(65, 'property_black_money', 0, 'steam:1100001406869f3'),
(66, 'property_black_money', 0, 'steam:11000013670e3eb'),
(67, 'caution', 0, 'steam:11000013670e3eb'),
(68, 'caution', 0, 'steam:110000118e2db50'),
(69, 'property_black_money', 0, 'steam:110000118e2db50'),
(70, 'property_black_money', 0, 'steam:1100001340de602'),
(71, 'caution', 0, 'steam:1100001340de602'),
(72, 'property_black_money', 0, 'steam:11000013edab306'),
(73, 'caution', 0, 'steam:11000013edab306'),
(74, 'caution', 0, 'steam:110000140c5219a'),
(75, 'property_black_money', 0, 'steam:110000140c5219a'),
(76, 'caution', 0, 'steam:1100001121943f8'),
(77, 'property_black_money', 0, 'steam:1100001121943f8'),
(78, 'caution', 0, 'steam:110000140ef2ec6'),
(79, 'property_black_money', 0, 'steam:110000140ef2ec6'),
(80, 'caution', 0, 'steam:11000013c7a9b33'),
(81, 'property_black_money', 0, 'steam:11000013c7a9b33'),
(82, 'property_black_money', 0, 'steam:110000112512a04'),
(83, 'caution', 0, 'steam:110000112512a04'),
(84, 'caution', 0, 'steam:11000013b11efec'),
(85, 'property_black_money', 0, 'steam:11000013b11efec'),
(86, 'caution', 0, 'steam:110000136c3449e'),
(87, 'property_black_money', 0, 'steam:110000136c3449e'),
(88, 'caution', 0, 'steam:11000013618b105'),
(89, 'property_black_money', 0, 'steam:11000013618b105'),
(90, 'caution', 0, 'steam:11000011b68ab8f'),
(91, 'property_black_money', 0, 'steam:11000011b68ab8f'),
(92, 'caution', 0, 'steam:110000106651019'),
(93, 'property_black_money', 0, 'steam:110000106651019'),
(94, 'caution', 0, 'steam:11000013c2318b2'),
(95, 'property_black_money', 0, 'steam:11000013c2318b2'),
(96, 'caution', 0, 'steam:11000013ec6e3e3'),
(97, 'property_black_money', 0, 'steam:11000013ec6e3e3'),
(98, 'property_black_money', 0, 'steam:110000140c4eec1'),
(99, 'caution', 0, 'steam:110000140c4eec1'),
(100, 'caution', 0, 'steam:11000013fb3a692'),
(101, 'property_black_money', 0, 'steam:11000013fb3a692'),
(102, 'property_black_money', 0, 'steam:11000013b38e27b'),
(103, 'caution', 0, 'steam:11000013b38e27b'),
(104, 'caution', 0, 'steam:110000117a8e0aa'),
(105, 'property_black_money', 0, 'steam:110000117a8e0aa'),
(106, 'caution', 0, 'steam:110000134e838e3'),
(107, 'property_black_money', 0, 'steam:110000134e838e3'),
(108, 'property_black_money', 0, 'steam:110000139be4077'),
(109, 'caution', 0, 'steam:110000139be4077'),
(110, 'caution', 0, 'steam:11000013427a058'),
(111, 'property_black_money', 0, 'steam:11000013427a058'),
(112, 'society_avocat', 0, NULL),
(113, 'society_brasseur', 0, NULL),
(114, 'society_state', 0, NULL),
(115, 'society_cammora', 0, NULL),
(116, 'society_cosanostra', 0, NULL),
(117, 'caution', 2800, 'steam:1100001120b6603'),
(118, 'property_black_money', 0, 'steam:1100001120b6603'),
(119, 'property_black_money', 0, 'steam:11000011439c22a'),
(120, 'caution', 0, 'steam:11000011439c22a'),
(121, 'property_black_money', 0, 'steam:11000010772998a'),
(122, 'caution', 0, 'steam:11000010772998a'),
(123, 'property_black_money', 0, 'steam:110000134884e5b'),
(124, 'caution', 0, 'steam:110000134884e5b'),
(125, 'caution', 0, 'steam:11000013e699150'),
(126, 'property_black_money', 0, 'steam:11000013e699150'),
(127, 'caution', 0, 'steam:11000011bbbfe53'),
(128, 'property_black_money', 0, 'steam:11000011bbbfe53'),
(129, 'caution', 0, 'steam:1100001187fc731'),
(130, 'property_black_money', 0, 'steam:1100001187fc731'),
(131, 'property_black_money', 0, 'steam:11000010e736395'),
(132, 'caution', 0, 'steam:11000010e736395'),
(133, 'property_black_money', 0, 'steam:110000117655aca'),
(134, 'caution', 0, 'steam:110000117655aca'),
(135, 'property_black_money', 0, 'steam:11000011292a445'),
(136, 'caution', 0, 'steam:11000011292a445'),
(137, 'caution', 0, 'steam:110000109d07b07'),
(138, 'property_black_money', 0, 'steam:110000109d07b07'),
(139, 'caution', 0, 'steam:11000010db2011a'),
(140, 'property_black_money', 0, 'steam:11000010db2011a'),
(141, 'caution', 0, 'steam:1100001337f15e7'),
(142, 'property_black_money', 0, 'steam:1100001337f15e7'),
(143, 'property_black_money', 0, 'steam:1100001342ad7df'),
(144, 'caution', 0, 'steam:1100001342ad7df'),
(145, 'property_black_money', 0, 'steam:110000136a37225'),
(146, 'caution', 0, 'steam:110000136a37225'),
(147, 'property_black_money', 0, 'steam:11000011291e036'),
(148, 'caution', 0, 'steam:11000011291e036'),
(149, 'caution', 0, 'steam:11000013c064c48'),
(150, 'property_black_money', 0, 'steam:11000013c064c48'),
(151, 'property_black_money', 0, 'steam:110000100473290'),
(152, 'caution', 0, 'steam:110000100473290'),
(153, 'caution', 0, 'steam:110000134b6f5a1'),
(154, 'property_black_money', 0, 'steam:110000134b6f5a1'),
(155, 'caution', 0, 'steam:11000013c898d0d'),
(156, 'property_black_money', 0, 'steam:11000013c898d0d'),
(157, 'caution', 0, 'steam:11000014158c5cd'),
(158, 'property_black_money', 0, 'steam:11000014158c5cd'),
(159, 'property_black_money', 0, 'steam:110000141b8e146'),
(160, 'caution', 0, 'steam:110000141b8e146'),
(161, 'caution', 0, 'steam:11000013f8236cf'),
(162, 'property_black_money', 0, 'steam:11000013f8236cf'),
(163, 'caution', 180, 'steam:11000010f09e1f9'),
(164, 'property_black_money', 0, 'steam:11000010f09e1f9'),
(165, 'society_taxe_weazel', 0, NULL),
(166, 'society_weazel', 0, NULL),
(167, 'caution', 0, 'steam:11000010572fcd6'),
(168, 'property_black_money', 0, 'steam:11000010572fcd6'),
(169, 'caution', 0, 'steam:1100001365cefc7'),
(170, 'property_black_money', 0, 'steam:1100001365cefc7'),
(171, 'caution', 0, 'steam:11000013ddca410'),
(172, 'property_black_money', 0, 'steam:11000013ddca410'),
(173, 'society_journaliste', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_ammunation', 'Ammunation', 1),
('society_avocat', 'Avocat', 1),
('society_bahama_mamas', 'Bahama Mamas', 1),
('society_bahama_mamas_fridge', 'Bahama Mamas (frigo)', 1),
('society_ballas', 'ballas', 1),
('society_burgershot', 'Burgershot', 1),
('society_burgershot_fridge', 'burgershot (frigo)', 1),
('society_cammora', 'Cammora', 1),
('society_cardealer', 'Concesionnaire', 1),
('society_cosanostra', 'CosaNostra', 1),
('society_families', 'Families', 1),
('society_gouvernor', 'Gouvernement', 1),
('society_journaliste', 'journaliste', 1),
('society_mechanic', 'Mécano', 1),
('society_police', 'Police', 1),
('society_state', 'State', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_unicorn_fridge', 'Unicorn (frigo)', 1),
('society_vagos', 'vagos', 1),
('society_vigne', 'Vigneron', 1),
('society_weazel', 'Weazel News', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `addon_inventory_items`
--

INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
(1, 'society_ballas', 'weed', 0, NULL),
(2, 'society_cartel', 'weed', 22, NULL),
(3, 'society_cartel', 'weed_pooch', 10, NULL),
(4, 'society_cartel', 'coke_pooch', 0, NULL),
(5, 'society_marabunta', 'weed', 0, NULL),
(6, 'society_bloods', 'weed', 0, NULL),
(7, 'society_bloods', 'weed_pooch', 0, NULL),
(8, 'society_marabunta', 'weed_pooch', 0, NULL),
(9, 'society_bloods', 'bulletproof', 5, NULL),
(10, 'society_bloods', 'clip', 3, NULL),
(11, 'society_bloods', 'coke', 7, NULL),
(14, 'society_vigne', 'grand_cru', 0, NULL),
(15, 'society_white', 'weed', 553, NULL),
(16, 'society_white', 'weed_pooch', 0, NULL),
(17, 'society_bloods', 'c4_bank', 0, NULL),
(18, 'property', 'bandage', 0, 'steam:11000010bfb2fe2'),
(19, 'society_white', 'grand_cru', 7, NULL),
(20, 'society_cartel', 'tabacblondsec', 163, NULL),
(21, 'society_white', 'coke', 44, NULL),
(22, 'property', 'bread', 1, 'steam:11000013254024a'),
(23, 'society_white', 'phone', 1, NULL),
(24, 'property', 'weed', 1184, 'steam:11000013619ddeb'),
(25, 'property', 'tabacblond', 0, 'steam:1100001340de602'),
(26, 'society_white', 'grapperaisin', 0, NULL),
(27, 'society_white', 'burger', 2, NULL),
(28, 'society_white', 'icetea', 5, NULL),
(29, 'society_bloods', 'raspberry', 3, NULL),
(30, 'society_bloods', 'drill', 0, NULL),
(31, 'society_vigne', 'jus_raisin', 0, NULL),
(32, 'society_vigne', 'raisin', 0, NULL),
(33, 'society_mechanic', 'burger', 35, NULL),
(34, 'society_mechanic', 'bandage', 0, NULL),
(35, 'society_mechanic', 'bolcacahuetes', 0, NULL),
(36, 'society_mechanic', 'bolchips', 0, NULL),
(37, 'society_mechanic', 'water', 0, NULL),
(38, 'society_mechanic', 'grapperaisin', 0, NULL),
(39, 'society_mechanic', 'icetea', 0, NULL),
(40, 'society_mechanic', 'jusfruit', 0, NULL),
(41, 'society_mechanic', 'limonade', 0, NULL),
(42, 'society_mechanic', 'bread', 0, NULL),
(43, 'society_unicorn_fridge', 'icetea', 5, NULL),
(44, 'society_unicorn_fridge', 'jusfruit', 4, NULL),
(45, 'society_unicorn_fridge', 'limonade', 0, NULL),
(46, 'society_unicorn_fridge', 'drpepper', 0, NULL),
(48, 'society_police', 'bagofdope', 0, NULL),
(49, 'society_mechanic', 'bagofdope', 1, NULL),
(50, 'society_cardealer', 'bolchips', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `arrests_list`
--

CREATE TABLE `arrests_list` (
  `id` int(11) NOT NULL,
  `json_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `baninfo`
--

CREATE TABLE `baninfo` (
  `id` int(11) NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `playername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `baninfo`
--

INSERT INTO `baninfo` (`id`, `license`, `identifier`, `liveid`, `xblid`, `discord`, `playerip`, `playername`) VALUES
(30, 'license:d3335a3aa03572bcb7c721629cb81a1e953989ad', 'steam:1100001120b6603', NULL, NULL, 'discord:308050462249058305', 'ip:176.131.187.98', 'Pablo Gavir'),
(31, 'license:db2d636b39b17bca9a2137900b28f8cf5fe584e6', 'steam:11000013f8236cf', NULL, NULL, 'discord:697622432684572742', 'ip:86.250.125.101', 'Kyllian Soubrier'),
(32, 'license:f064b2aaa18c6cb7a4e02c3eef2092671fb1ebfe', 'steam:11000010f09e1f9', 'live:1899947211464952', 'xbl:2535473373261194', 'discord:279729346455797761', 'ip:213.230.59.48', 'Tisco Bender'),
(33, 'license:a6e0ed0a1b1c8b43b512915986e2126f0dd5a59a', 'steam:110000109d07b07', 'live:985156944095626', NULL, NULL, 'ip:86.250.230.241', 'David Taylor'),
(34, 'license:3cbef71295f6821b818fe04f52ecfc13476ff2d9', 'steam:11000010572fcd6', 'live:844427846909419', 'xbl:2533274942252106', 'discord:358523818844618755', 'ip:127.0.0.1', 'iMax'),
(35, 'license:1818ff7b13cf78e30bf9acd4e95ea3616b81bac2', 'steam:1100001365cefc7', NULL, NULL, 'discord:588025560689803264', 'ip:78.200.64.86', 'Jin-Leï'),
(36, 'license:af49b7f6769ca194d98196da57877b2ab33bb3d9', 'steam:11000013ddca410', NULL, NULL, 'discord:411214230038249473', 'ip:86.208.13.250', 'Androuk Trader');

-- --------------------------------------------------------

--
-- Structure de la table `banlist`
--

CREATE TABLE `banlist` (
  `license` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `expiration` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `banlisthistory`
--

CREATE TABLE `banlisthistory` (
  `id` int(11) NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `added` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `expiration` int(11) NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `billing`
--

INSERT INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`) VALUES
(17, 'steam:11000011439c22a', 'steam:11000011439c22a', 'society', 'society_police', 'Speedcamera (120KM/H) - Your speed: 184 KM/H - ', 400),
(18, 'steam:11000011439c22a', 'steam:11000011439c22a', 'society', 'society_police', 'Speedcamera (120KM/H) - Your speed: 279 KM/H - ', 400),
(29, 'steam:11000011bbbfe53', 'steam:11000011bbbfe53', 'society', 'society_police', 'Speedcamera (80KM/H) - Your speed: 108 KM/H - ', 270),
(42, 'steam:11000011439c22a', 'steam:11000011439c22a', 'society', 'society_police', 'Speedcamera (120KM/H) - Your speed: 200 KM/H - ', 400),
(47, 'steam:11000011439c22a', 'steam:11000011439c22a', 'society', 'society_police', 'Speedcamera (80KM/H) - Your speed: 130 KM/H - ', 290),
(48, 'steam:11000011439c22a', 'steam:11000011439c22a', 'society', 'society_police', 'Speedcamera (80KM/H) - Your speed: 84 KM/H - ', 220);

-- --------------------------------------------------------

--
-- Structure de la table `boats`
--

CREATE TABLE `boats` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `boats`
--

INSERT INTO `boats` (`name`, `model`, `price`, `category`) VALUES
('Dinghy 4Seat', 'dinghy', 100000, 'boat'),
('Dinghy 2Seat', 'dinghy2', 100000, 'boat'),
('Dinghy Yacht', 'dinghy4', 100000, 'boat'),
('Jetmax', 'jetmax', 50000, 'boat'),
('Marquis', 'marquis', 55000, 'boat'),
('Seashark', 'seashark', 45000, 'boat'),
('Seashark Yacht', 'seashark3', 45000, 'boat'),
('Speeder', 'speeder', 400000, 'boat'),
('Squalo', 'squalo', 180000, 'boat'),
('Submarine', 'submersible', 990000000, 'subs'),
('Kraken', 'submersible2', 900000000, 'subs'),
('Suntrap', 'suntrap', 90000, 'boat'),
('Toro', 'toro', 343500, 'boat'),
('Toro Yacht', 'toro2', 480500, 'boat'),
('Tropic', 'tropic', 370000, 'boat'),
('Tropic Yacht', 'tropic2', 370000, 'boat');

-- --------------------------------------------------------

--
-- Structure de la table `boat_categories`
--

CREATE TABLE `boat_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `boat_categories`
--

INSERT INTO `boat_categories` (`name`, `label`) VALUES
('boat', 'Boats'),
('subs', 'Submersibles');

-- --------------------------------------------------------

--
-- Structure de la table `bolos_list`
--

CREATE TABLE `bolos_list` (
  `id` int(11) NOT NULL,
  `json_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cardealer_vehicles`
--

INSERT INTO `cardealer_vehicles` (`id`, `vehicle`, `price`) VALUES
(31, 'a45', 60500),
(32, 'RS72020', 130000);

-- --------------------------------------------------------

--
-- Structure de la table `criminal_records`
--

CREATE TABLE `criminal_records` (
  `id` int(11) NOT NULL,
  `offence` varchar(250) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `officer_id` varchar(250) NOT NULL,
  `jail` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_ammunation', 'Ammunation', 1),
('society_avocat', 'Advokat', 1),
('society_bahama_mamas', 'Bahama Mamas', 1),
('society_ballas', 'ballas', 1),
('society_burgershot', 'Burgershot', 1),
('society_cammora', 'Cammora', 1),
('society_cosanostra', 'CosaNostra', 1),
('society_families', 'families', 1),
('society_gouvernor', 'Gouvernement', 1),
('society_journaliste', 'journaliste', 1),
('society_police', 'Police', 1),
('society_state', 'State', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'vagos', 1),
('society_vigne', 'Vigneron', 1),
('society_weazel', 'Weazel News', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_ambulance', NULL, '{}'),
(2, 'society_ammunation', NULL, '{}'),
(3, 'society_avocat', NULL, '{}'),
(4, 'society_bahama_mamas', NULL, '{}'),
(5, 'society_ballas', NULL, '{\"weapons\":[{\"name\":\"WEAPON_KNIFE\",\"count\":0},{\"name\":\"WEAPON_HEAVYPISTOL\",\"count\":0}]}'),
(6, 'society_burgershot', NULL, '{}'),
(7, 'society_cartel', NULL, '{\"weapons\":[{\"count\":0,\"name\":\"WEAPON_APPISTOL\"},{\"count\":0,\"name\":\"WEAPON_COMBATPISTOL\"},{\"count\":0,\"name\":\"WEAPON_ASSAULTSMG\"},{\"count\":1,\"name\":\"WEAPON_SWITCHBLADE\"},{\"count\":2,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"count\":0,\"name\":\"WEAPON_MICROSMG\"},{\"count\":0,\"name\":\"WEAPON_GUSENBERG\"},{\"count\":0,\"name\":\"GADGET_PARACHUTE\"},{\"count\":0,\"name\":\"WEAPON_SNSPISTOL\"},{\"count\":0,\"name\":\"WEAPON_PISTOL50\"},{\"count\":0,\"name\":\"WEAPON_PISTOL\"},{\"count\":0,\"name\":\"WEAPON_MINISMG\"},{\"count\":0,\"name\":\"WEAPON_PETROLCAN\"},{\"count\":0,\"name\":\"WEAPON_HEAVYPISTOL\"},{\"count\":1,\"name\":\"WEAPON_BAT\"}]}'),
(8, 'society_families', NULL, '{}'),
(9, 'society_gouvernor', NULL, '{}'),
(10, 'society_Les Whites', NULL, '{}'),
(11, 'society_mafia', NULL, '{}'),
(12, 'society_marabunta', NULL, '{\"weapons\":[{\"name\":\"WEAPON_SNSPISTOL\",\"count\":0},{\"name\":\"WEAPON_SWITCHBLADE\",\"count\":0},{\"name\":\"WEAPON_PISTOL50\",\"count\":0},{\"name\":\"WEAPON_PISTOL\",\"count\":0},{\"name\":\"WEAPON_KNUCKLE\",\"count\":0}]}'),
(13, 'society_police', NULL, '{\"weapons\":[{\"count\":7,\"name\":\"WEAPON_NIGHTSTICK\"},{\"count\":9,\"name\":\"WEAPON_COMBATPISTOL\"},{\"count\":7,\"name\":\"WEAPON_STUNGUN\"},{\"count\":1,\"name\":\"WEAPON_PISTOL\"},{\"count\":6,\"name\":\"WEAPON_FLASHLIGHT\"},{\"count\":2,\"name\":\"WEAPON_SWITCHBLADE\"},{\"count\":1,\"name\":\"WEAPON_HEAVYPISTOL\"},{\"count\":1,\"name\":\"WEAPON_SMG\"},{\"count\":1,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"count\":1,\"name\":\"WEAPON_CARBINERIFLE\"},{\"count\":1,\"name\":\"WEAPON_SNIPERRIFLE\"}]}'),
(14, 'society_tabac', NULL, '{}'),
(15, 'society_taxi', NULL, '{}'),
(16, 'society_unicorn', NULL, '{}'),
(17, 'society_vagos', NULL, '{\"weapons\":[{\"name\":\"WEAPON_NIGHTSTICK\",\"count\":0}]}'),
(18, 'society_vigne', NULL, '{}'),
(19, 'society_white', NULL, '{\"weapons\":[{\"count\":2,\"name\":\"WEAPON_SNSPISTOL\"},{\"count\":0,\"name\":\"WEAPON_KNUCKLE\"},{\"count\":0,\"name\":\"WEAPON_SWITCHBLADE\"},{\"count\":0,\"name\":\"WEAPON_HAMMER\"},{\"count\":3,\"name\":\"WEAPON_PISTOL\"},{\"count\":0,\"name\":\"WEAPON_KNIFE\"},{\"count\":0,\"name\":\"WEAPON_MINISMG\"},{\"count\":0,\"name\":\"WEAPON_PISTOL50\"}]}'),
(20, 'user_helmet', 'steam:110000136c36a04', '{\"skin\":{\"helmet_1\":83,\"helmet_2\":0},\"hasHelmet\":true}'),
(21, 'property', 'steam:110000136c36a04', '{\"weapons\":[{\"ammo\":992,\"name\":\"WEAPON_MICROSMG\"}],\"dressing\":[{\"label\":\"sac\",\"skin\":{\"bodyb_2\":0,\"hair_color_1\":0,\"blush_1\":0,\"glasses_1\":0,\"arms_2\":0,\"beard_3\":0,\"eyebrows_1\":12,\"blush_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"helmet_1\":83,\"beard_4\":0,\"beard_2\":10,\"pants_1\":42,\"chain_1\":0,\"tshirt_2\":0,\"makeup_3\":0,\"blemishes_2\":0,\"bproof_2\":0,\"eye_color\":0,\"shoes_2\":0,\"complexion_1\":0,\"makeup_1\":54,\"bproof_1\":0,\"sun_2\":0,\"makeup_4\":0,\"shoes_1\":7,\"complexion_2\":0,\"hair_2\":0,\"glasses_2\":0,\"decals_1\":0,\"chest_2\":0,\"watches_2\":0,\"age_1\":0,\"chest_1\":0,\"torso_1\":80,\"lipstick_4\":0,\"makeup_2\":10,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":0,\"sun_1\":0,\"eyebrows_3\":0,\"blush_3\":0,\"decals_2\":0,\"chain_2\":0,\"arms\":19,\"moles_1\":0,\"mask_2\":0,\"face\":0,\"blemishes_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"hair_color_2\":14,\"beard_1\":10,\"lipstick_1\":0,\"bags_1\":16,\"sex\":0,\"ears_1\":-1,\"watches_1\":-1,\"hair_1\":14,\"skin\":4,\"torso_2\":0,\"eyebrows_2\":10,\"chest_3\":0,\"tshirt_1\":15,\"bodyb_1\":0,\"moles_2\":0,\"bags_2\":5,\"mask_1\":0,\"pants_2\":0,\"ears_2\":0}},{\"label\":\"blancho\",\"skin\":{\"bodyb_2\":0,\"hair_color_1\":0,\"blush_1\":0,\"glasses_1\":0,\"arms_2\":0,\"beard_3\":0,\"eyebrows_1\":12,\"blush_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"helmet_1\":83,\"beard_4\":0,\"beard_2\":10,\"eyebrows_2\":10,\"chain_1\":0,\"tshirt_2\":0,\"makeup_3\":0,\"blemishes_2\":0,\"bproof_2\":0,\"eye_color\":0,\"shoes_2\":0,\"complexion_1\":0,\"makeup_1\":54,\"bproof_1\":0,\"sun_2\":0,\"makeup_4\":0,\"shoes_1\":10,\"complexion_2\":0,\"hair_2\":0,\"glasses_2\":0,\"decals_1\":0,\"chest_2\":0,\"watches_2\":0,\"age_1\":0,\"chest_1\":0,\"torso_1\":111,\"lipstick_4\":0,\"makeup_2\":10,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":0,\"sun_1\":0,\"eyebrows_3\":0,\"blush_3\":0,\"decals_2\":0,\"chain_2\":0,\"chest_3\":0,\"moles_1\":0,\"arms\":17,\"face\":0,\"blemishes_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"mask_2\":0,\"beard_1\":10,\"lipstick_1\":0,\"bags_1\":0,\"sex\":0,\"ears_1\":-1,\"watches_1\":-1,\"moles_2\":0,\"skin\":4,\"hair_1\":73,\"torso_2\":3,\"tshirt_1\":15,\"pants_1\":24,\"bags_2\":0,\"bodyb_1\":0,\"pants_2\":0,\"mask_1\":0,\"hair_color_2\":14,\"ears_2\":0}},{\"label\":\"joggos\",\"skin\":{\"bodyb_2\":0,\"hair_color_1\":0,\"blush_1\":0,\"glasses_1\":0,\"arms_2\":0,\"beard_3\":0,\"eyebrows_1\":12,\"blush_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"helmet_1\":83,\"beard_4\":0,\"beard_2\":10,\"pants_1\":55,\"chain_1\":0,\"tshirt_2\":0,\"makeup_3\":0,\"blemishes_2\":0,\"bproof_2\":0,\"eye_color\":0,\"shoes_2\":0,\"complexion_1\":0,\"makeup_1\":54,\"bproof_1\":0,\"sun_2\":0,\"makeup_4\":0,\"shoes_1\":8,\"complexion_2\":0,\"hair_2\":0,\"glasses_2\":0,\"decals_1\":0,\"chest_2\":0,\"watches_2\":0,\"age_1\":0,\"chest_1\":0,\"torso_1\":7,\"lipstick_4\":0,\"makeup_2\":10,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":0,\"sun_1\":0,\"eyebrows_3\":0,\"blush_3\":0,\"decals_2\":0,\"chain_2\":0,\"chest_3\":0,\"moles_1\":0,\"arms\":28,\"mask_2\":0,\"pants_2\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"beard_1\":10,\"lipstick_1\":0,\"bags_1\":0,\"ears_1\":-1,\"sex\":0,\"hair_color_2\":14,\"watches_1\":-1,\"hair_1\":73,\"skin\":4,\"torso_2\":2,\"eyebrows_2\":10,\"face\":0,\"mask_1\":0,\"bodyb_1\":0,\"ears_2\":0,\"bags_2\":0,\"moles_2\":0,\"tshirt_1\":15,\"blemishes_1\":0}},{\"label\":\"bg de la street\",\"skin\":{\"bodyb_2\":0,\"hair_color_1\":0,\"blush_1\":0,\"glasses_1\":5,\"arms_2\":0,\"beard_3\":0,\"eyebrows_1\":12,\"blush_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"helmet_1\":83,\"beard_4\":0,\"beard_2\":10,\"pants_1\":55,\"chain_1\":77,\"tshirt_2\":0,\"makeup_3\":0,\"blemishes_2\":0,\"bproof_2\":0,\"eye_color\":0,\"shoes_2\":0,\"complexion_1\":0,\"makeup_1\":54,\"bproof_1\":0,\"sun_2\":0,\"makeup_4\":0,\"shoes_1\":8,\"complexion_2\":0,\"hair_2\":0,\"glasses_2\":7,\"decals_1\":0,\"chest_2\":0,\"watches_2\":0,\"age_1\":0,\"chest_1\":0,\"torso_1\":15,\"lipstick_4\":0,\"makeup_2\":10,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":0,\"sun_1\":0,\"eyebrows_3\":0,\"blush_3\":0,\"decals_2\":0,\"chain_2\":0,\"arms\":15,\"moles_1\":0,\"mask_2\":0,\"face\":0,\"blemishes_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"moles_2\":0,\"beard_1\":10,\"lipstick_1\":0,\"bags_1\":0,\"sex\":0,\"chest_3\":0,\"watches_1\":-1,\"ears_1\":-1,\"skin\":4,\"hair_color_2\":14,\"hair_1\":73,\"torso_2\":0,\"eyebrows_2\":10,\"bodyb_1\":0,\"tshirt_1\":15,\"bags_2\":0,\"mask_1\":0,\"pants_2\":0,\"ears_2\":0}},{\"skin\":{\"bodyb_2\":0,\"hair_color_1\":0,\"blush_1\":0,\"glasses_1\":5,\"arms_2\":0,\"beard_3\":0,\"eyebrows_1\":12,\"blush_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"helmet_1\":83,\"beard_4\":0,\"beard_2\":10,\"pants_1\":55,\"chain_1\":77,\"tshirt_2\":3,\"makeup_3\":0,\"bodyb_1\":0,\"bproof_2\":0,\"eye_color\":0,\"eyebrows_4\":0,\"complexion_1\":0,\"makeup_1\":54,\"bproof_1\":0,\"sun_2\":0,\"makeup_4\":0,\"shoes_1\":8,\"complexion_2\":0,\"hair_2\":0,\"glasses_2\":7,\"decals_1\":0,\"lipstick_1\":0,\"watches_2\":0,\"age_1\":0,\"chest_1\":0,\"torso_1\":69,\"lipstick_4\":0,\"makeup_2\":10,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":0,\"sun_1\":0,\"eyebrows_3\":0,\"blush_3\":0,\"face\":0,\"chain_2\":0,\"eyebrows_2\":10,\"chest_3\":0,\"arms\":17,\"moles_1\":0,\"pants_2\":0,\"moles_2\":0,\"bracelets_1\":-1,\"chest_2\":0,\"mask_2\":0,\"beard_1\":10,\"bags_1\":0,\"sex\":0,\"shoes_2\":0,\"watches_1\":-1,\"ears_1\":-1,\"skin\":4,\"tshirt_1\":71,\"hair_1\":73,\"torso_2\":0,\"blemishes_2\":0,\"mask_1\":0,\"blemishes_1\":0,\"decals_2\":0,\"hair_color_2\":14,\"bags_2\":0,\"ears_2\":0},\"label\":\"maneteau\"}]}'),
(22, 'user_glasses', 'steam:110000136c36a04', '{\"hasGlasses\":true,\"skin\":{\"glasses_2\":7,\"glasses_1\":5}}'),
(23, 'user_mask', 'steam:110000136c36a04', '{\"skin\":{\"mask_2\":25,\"mask_1\":104},\"hasMask\":true}'),
(24, 'user_ears', 'steam:110000136c36a04', '{}'),
(25, 'user_mask', 'steam:11000011b7ef111', '{\"skin\":{\"mask_1\":111,\"mask_2\":15},\"hasMask\":true}'),
(26, 'user_ears', 'steam:11000011b7ef111', '{}'),
(27, 'property', 'steam:11000011b7ef111', '{\"dressing\":[{\"skin\":{\"helmet_2\":0,\"pants_1\":24,\"lipstick_4\":0,\"moles_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"shoes_1\":10,\"eyebrows_3\":0,\"tshirt_2\":2,\"eye_color\":3,\"watches_2\":0,\"decals_1\":0,\"blemishes_2\":0,\"bproof_1\":0,\"chest_2\":0,\"eyebrows_4\":0,\"glasses_1\":5,\"bproof_2\":0,\"ears_2\":0,\"mask_1\":111,\"moles_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":4,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":0,\"mask_2\":17,\"pants_2\":4,\"eyebrows_1\":12,\"blush_1\":0,\"ears_1\":-1,\"decals_2\":0,\"sex\":0,\"age_2\":0,\"blush_2\":0,\"shoes_2\":0,\"complexion_1\":0,\"bags_2\":0,\"hair_color_2\":14,\"watches_1\":-1,\"beard_4\":0,\"chest_1\":0,\"blush_3\":0,\"bags_1\":0,\"chain_1\":0,\"chain_2\":0,\"age_1\":0,\"torso_1\":29,\"bodyb_1\":0,\"glasses_2\":5,\"chest_3\":0,\"arms\":44,\"face\":0,\"makeup_3\":0,\"beard_2\":10,\"beard_1\":9,\"hair_color_1\":0,\"eyebrows_2\":10,\"skin\":8,\"lipstick_2\":0,\"arms_2\":0,\"tshirt_1\":32,\"complexion_2\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"hair_1\":43,\"sun_1\":0,\"hair_2\":0,\"helmet_1\":30,\"bracelets_1\":-1},\"label\":\"leto\"},{\"skin\":{\"helmet_2\":2,\"pants_1\":42,\"lipstick_4\":0,\"moles_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"shoes_1\":8,\"chest_3\":0,\"tshirt_2\":0,\"eye_color\":3,\"watches_2\":0,\"decals_1\":0,\"blemishes_2\":0,\"bproof_1\":0,\"chest_2\":0,\"eyebrows_4\":0,\"glasses_1\":5,\"bproof_2\":0,\"ears_2\":0,\"mask_1\":111,\"moles_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":1,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":0,\"mask_2\":15,\"pants_2\":2,\"eyebrows_1\":12,\"blush_1\":0,\"ears_1\":-1,\"decals_2\":0,\"sex\":0,\"age_2\":0,\"blush_2\":0,\"shoes_2\":0,\"complexion_1\":0,\"bags_2\":0,\"hair_color_2\":14,\"watches_1\":-1,\"chain_2\":0,\"chest_1\":0,\"blush_3\":0,\"bags_1\":0,\"chain_1\":0,\"beard_4\":0,\"age_1\":0,\"eyebrows_3\":0,\"bodyb_1\":0,\"glasses_2\":5,\"arms\":41,\"torso_1\":146,\"face\":0,\"makeup_3\":0,\"beard_2\":10,\"beard_1\":9,\"hair_color_1\":0,\"hair_1\":43,\"eyebrows_2\":10,\"lipstick_2\":0,\"arms_2\":0,\"tshirt_1\":15,\"complexion_2\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"skin\":8,\"sun_1\":0,\"hair_2\":0,\"helmet_1\":58,\"bracelets_1\":-1},\"label\":\"whitegang2\"},{\"skin\":{\"helmet_2\":2,\"pants_1\":105,\"lipstick_4\":0,\"moles_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"shoes_1\":8,\"eyebrows_3\":0,\"tshirt_2\":0,\"eye_color\":3,\"watches_2\":0,\"decals_1\":0,\"blemishes_2\":0,\"skin\":8,\"chest_2\":0,\"eyebrows_4\":0,\"glasses_1\":5,\"bproof_2\":0,\"ears_2\":0,\"mask_1\":111,\"complexion_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":5,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":0,\"mask_2\":15,\"pants_2\":0,\"eyebrows_1\":12,\"blush_1\":0,\"ears_1\":-1,\"decals_2\":0,\"sex\":0,\"age_2\":0,\"blush_2\":0,\"helmet_1\":58,\"complexion_1\":0,\"bags_2\":0,\"moles_2\":0,\"hair_color_2\":14,\"chain_2\":0,\"watches_1\":-1,\"blush_3\":0,\"bags_1\":0,\"chest_1\":0,\"chain_1\":0,\"age_1\":0,\"arms\":44,\"torso_1\":141,\"glasses_2\":5,\"bodyb_1\":0,\"chest_3\":0,\"face\":0,\"makeup_3\":0,\"beard_4\":0,\"beard_2\":10,\"hair_color_1\":0,\"eyebrows_2\":10,\"beard_1\":9,\"lipstick_2\":0,\"hair_1\":43,\"tshirt_1\":32,\"arms_2\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"bproof_1\":0,\"sun_1\":0,\"hair_2\":0,\"shoes_2\":0,\"bracelets_1\":-1},\"label\":\"WHITE1\"},{\"label\":\"whitegilet\",\"skin\":{\"helmet_2\":20,\"pants_1\":105,\"lipstick_4\":0,\"moles_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"shoes_1\":8,\"chest_3\":0,\"tshirt_2\":0,\"eye_color\":3,\"watches_2\":0,\"decals_1\":0,\"blemishes_2\":0,\"skin\":8,\"chest_2\":0,\"eyebrows_4\":0,\"glasses_1\":5,\"bproof_2\":0,\"ears_2\":0,\"mask_1\":111,\"complexion_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":0,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":0,\"mask_2\":15,\"pants_2\":2,\"eyebrows_1\":12,\"blush_1\":0,\"ears_1\":-1,\"decals_2\":0,\"sex\":0,\"age_2\":0,\"blush_2\":0,\"helmet_1\":104,\"complexion_1\":0,\"bags_2\":0,\"beard_1\":9,\"hair_color_2\":14,\"watches_1\":-1,\"moles_2\":0,\"blush_3\":0,\"bags_1\":0,\"eyebrows_3\":0,\"chest_1\":0,\"age_1\":0,\"chain_2\":0,\"bodyb_1\":0,\"glasses_2\":5,\"arms\":41,\"chain_1\":0,\"face\":0,\"makeup_3\":0,\"beard_4\":0,\"beard_2\":10,\"hair_color_1\":0,\"torso_1\":146,\"hair_1\":43,\"lipstick_2\":0,\"arms_2\":0,\"tshirt_1\":131,\"eyebrows_2\":10,\"lipstick_3\":0,\"lipstick_1\":0,\"bproof_1\":0,\"sun_1\":0,\"hair_2\":0,\"shoes_2\":0,\"bracelets_1\":-1}}]}'),
(28, 'user_helmet', 'steam:11000011b7ef111', '{\"skin\":{\"helmet_1\":58,\"helmet_2\":2},\"hasHelmet\":true}'),
(29, 'user_glasses', 'steam:11000011b7ef111', '{\"skin\":{\"glasses_2\":5,\"glasses_1\":5},\"hasGlasses\":true}'),
(30, 'user_glasses', 'steam:11000013254024a', '{\"skin\":{\"glasses_2\":8,\"glasses_1\":18},\"hasGlasses\":true}'),
(31, 'user_mask', 'steam:11000013254024a', '{\"hasMask\":true,\"skin\":{\"mask_2\":3,\"mask_1\":95}}'),
(32, 'user_helmet', 'steam:11000013254024a', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":5,\"helmet_1\":94}}'),
(33, 'property', 'steam:11000013254024a', '{\"weapons\":[{\"name\":\"WEAPON_HEAVYPISTOL\",\"ammo\":9999},{\"name\":\"WEAPON_PISTOL50\",\"ammo\":9999}],\"dressing\":[{\"skin\":{\"bodyb_2\":0,\"hair_color_1\":3,\"blush_1\":0,\"glasses_1\":18,\"arms_2\":0,\"beard_3\":0,\"eyebrows_1\":27,\"blush_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"moles_1\":0,\"beard_4\":0,\"beard_2\":10,\"pants_1\":4,\"chain_1\":0,\"tshirt_2\":0,\"makeup_3\":0,\"blemishes_2\":0,\"bproof_2\":0,\"eye_color\":12,\"eyebrows_4\":0,\"complexion_1\":0,\"makeup_1\":0,\"bproof_1\":0,\"sun_2\":0,\"makeup_4\":0,\"shoes_1\":8,\"complexion_2\":0,\"hair_2\":0,\"glasses_2\":8,\"decals_1\":0,\"chest_2\":0,\"watches_2\":0,\"age_1\":0,\"chest_1\":0,\"torso_2\":14,\"lipstick_4\":0,\"makeup_2\":0,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":5,\"sun_1\":0,\"eyebrows_3\":0,\"blush_3\":0,\"decals_2\":0,\"chain_2\":0,\"helmet_1\":94,\"eyebrows_2\":5,\"arms\":19,\"face\":21,\"tshirt_1\":15,\"pants_2\":2,\"bracelets_1\":-1,\"mask_2\":14,\"shoes_2\":2,\"bags_1\":52,\"chest_3\":0,\"sex\":0,\"ears_1\":-1,\"watches_1\":-1,\"torso_1\":271,\"skin\":5,\"hair_1\":31,\"hair_color_2\":0,\"blemishes_1\":0,\"mask_1\":111,\"bodyb_1\":0,\"lipstick_1\":0,\"bags_2\":8,\"moles_2\":0,\"ears_2\":0,\"beard_1\":7},\"label\":\"LA rue\"},{\"skin\":{\"bodyb_2\":0,\"hair_color_1\":3,\"blush_1\":0,\"glasses_1\":18,\"arms_2\":0,\"beard_3\":0,\"eyebrows_1\":27,\"blush_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"helmet_1\":58,\"beard_4\":0,\"beard_2\":10,\"pants_1\":4,\"chain_1\":0,\"tshirt_2\":1,\"makeup_3\":0,\"blemishes_2\":0,\"bags_2\":0,\"eye_color\":12,\"eyebrows_4\":0,\"complexion_1\":0,\"makeup_1\":0,\"bproof_1\":0,\"sun_2\":0,\"makeup_4\":0,\"shoes_1\":8,\"complexion_2\":0,\"hair_2\":0,\"glasses_2\":8,\"decals_1\":0,\"chest_2\":0,\"watches_2\":0,\"age_1\":0,\"chest_1\":0,\"torso_1\":230,\"lipstick_4\":0,\"makeup_2\":0,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":0,\"sun_1\":0,\"eyebrows_3\":0,\"blush_3\":0,\"decals_2\":0,\"chain_2\":0,\"eyebrows_2\":5,\"blemishes_1\":0,\"arms\":19,\"moles_1\":0,\"pants_2\":2,\"chest_3\":0,\"bracelets_1\":-1,\"ears_1\":-1,\"shoes_2\":2,\"beard_1\":7,\"tshirt_1\":23,\"sex\":0,\"bags_1\":0,\"watches_1\":-1,\"hair_1\":31,\"skin\":5,\"torso_2\":1,\"mask_2\":14,\"hair_color_2\":0,\"face\":21,\"bodyb_1\":0,\"bproof_2\":0,\"lipstick_1\":0,\"mask_1\":111,\"ears_2\":0,\"moles_2\":0},\"label\":\"Beige\"}]}'),
(34, 'user_ears', 'steam:11000013254024a', '{\"skin\":{\"ears_2\":0,\"ears_1\":2},\"hasEars\":true}'),
(35, 'user_helmet', 'steam:1100001027c2870', '{}'),
(36, 'user_mask', 'steam:1100001027c2870', '{}'),
(37, 'user_ears', 'steam:1100001027c2870', '{}'),
(38, 'user_glasses', 'steam:1100001027c2870', '{}'),
(39, 'property', 'steam:1100001027c2870', '{}'),
(40, 'user_mask', 'steam:110000117709c63', '{\"hasMask\":true,\"skin\":{\"mask_2\":8,\"mask_1\":140}}'),
(41, 'property', 'steam:110000117709c63', '{\"weapons\":[{\"name\":\"WEAPON_MINISMG\",\"ammo\":9999}],\"dressing\":[{\"label\":\"Décontracté\",\"skin\":{\"blush_2\":0,\"blush_3\":0,\"moles_2\":0,\"complexion_2\":0,\"chest_3\":0,\"shoes_2\":0,\"bodyb_1\":0,\"makeup_3\":0,\"tshirt_1\":21,\"bproof_1\":0,\"pants_2\":0,\"hair_color_1\":29,\"beard_4\":0,\"watches_1\":-1,\"glasses_1\":0,\"torso_1\":20,\"chain_1\":0,\"shoes_1\":6,\"eyebrows_4\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"makeup_2\":0,\"hair_2\":0,\"chain_2\":0,\"blemishes_1\":0,\"skin\":2,\"torso_2\":0,\"makeup_1\":0,\"bproof_2\":0,\"lipstick_1\":0,\"hair_1\":73,\"decals_1\":0,\"watches_2\":0,\"sun_2\":0,\"mask_2\":0,\"beard_1\":0,\"blemishes_2\":0,\"lipstick_2\":0,\"age_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"mask_1\":0,\"eyebrows_1\":0,\"pants_1\":24,\"eye_color\":0,\"age_1\":0,\"ears_2\":0,\"ears_1\":-1,\"eyebrows_2\":0,\"glasses_2\":0,\"beard_2\":0,\"chest_2\":0,\"chest_1\":0,\"decals_2\":0,\"moles_1\":0,\"arms\":17,\"tshirt_2\":0,\"helmet_1\":-1,\"sex\":0,\"hair_color_2\":0,\"arms_2\":0,\"face\":4,\"bodyb_2\":0,\"beard_3\":0,\"bags_1\":45,\"lipstick_4\":0,\"eyebrows_3\":0,\"makeup_4\":0,\"blush_1\":0,\"helmet_2\":0,\"bags_2\":0}},{\"label\":\"Cartel\",\"skin\":{\"blush_2\":0,\"blush_3\":0,\"moles_2\":0,\"complexion_2\":0,\"chest_3\":0,\"shoes_2\":10,\"bodyb_1\":0,\"makeup_3\":0,\"tshirt_1\":15,\"bproof_1\":0,\"pants_2\":1,\"hair_color_1\":0,\"beard_4\":0,\"watches_1\":-1,\"glasses_1\":0,\"arms\":41,\"chain_1\":0,\"shoes_1\":57,\"eyebrows_4\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"makeup_2\":0,\"hair_2\":0,\"chain_2\":0,\"blemishes_1\":0,\"skin\":8,\"torso_2\":0,\"ears_2\":6,\"bproof_2\":0,\"lipstick_1\":0,\"hair_1\":43,\"decals_1\":8,\"watches_2\":0,\"sun_2\":0,\"mask_2\":0,\"bodyb_2\":0,\"blemishes_2\":0,\"lipstick_2\":0,\"age_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"mask_1\":0,\"eyebrows_1\":0,\"pants_1\":28,\"eye_color\":0,\"age_1\":0,\"ears_1\":-1,\"bags_2\":0,\"chest_2\":0,\"glasses_2\":0,\"beard_2\":0,\"chest_1\":0,\"decals_2\":3,\"moles_1\":0,\"torso_1\":83,\"eyebrows_2\":0,\"tshirt_2\":0,\"helmet_1\":91,\"sex\":0,\"hair_color_2\":0,\"arms_2\":0,\"beard_1\":0,\"face\":4,\"beard_3\":0,\"bags_1\":0,\"lipstick_4\":0,\"eyebrows_3\":0,\"makeup_4\":0,\"blush_1\":0,\"helmet_2\":9,\"makeup_1\":0}}]}'),
(42, 'user_glasses', 'steam:110000117709c63', '{\"skin\":{\"glasses_1\":5,\"glasses_2\":0},\"hasGlasses\":true}'),
(43, 'user_helmet', 'steam:110000117709c63', '{\"skin\":{\"helmet_2\":1,\"helmet_1\":44},\"hasHelmet\":true}'),
(44, 'user_ears', 'steam:110000117709c63', '{\"hasEars\":true,\"skin\":{\"ears_2\":6,\"ears_1\":-1}}'),
(45, 'property', 'steam:110000118b1a98e', '{\"dressing\":[{\"label\":\"travail\",\"skin\":{\"helmet_2\":0,\"pants_1\":20,\"lipstick_4\":0,\"moles_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"hair_2\":1,\"eyebrows_3\":0,\"tshirt_2\":0,\"eye_color\":0,\"watches_2\":0,\"watches_1\":-1,\"blemishes_2\":0,\"skin\":4,\"chest_2\":0,\"eyebrows_4\":0,\"glasses_1\":0,\"bproof_2\":0,\"ears_2\":0,\"mask_1\":0,\"complexion_2\":0,\"chest_1\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":1,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":0,\"mask_2\":0,\"pants_2\":0,\"eyebrows_1\":0,\"blush_1\":0,\"ears_1\":-1,\"decals_2\":0,\"sex\":0,\"age_2\":0,\"blush_2\":0,\"helmet_1\":-1,\"complexion_1\":0,\"bags_2\":0,\"hair_color_2\":0,\"chain_2\":0,\"moles_2\":0,\"bodyb_2\":0,\"blush_3\":0,\"bags_1\":0,\"chain_1\":0,\"torso_1\":20,\"age_1\":0,\"decals_1\":0,\"bodyb_1\":0,\"glasses_2\":0,\"chest_3\":0,\"arms\":1,\"face\":8,\"makeup_3\":0,\"beard_4\":0,\"beard_2\":0,\"hair_color_1\":27,\"beard_1\":0,\"eyebrows_2\":0,\"lipstick_2\":0,\"shoes_1\":3,\"tshirt_1\":26,\"arms_2\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"hair_1\":21,\"sun_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"bracelets_1\":-1}},{\"label\":\"le foux\",\"skin\":{\"helmet_2\":0,\"pants_1\":24,\"lipstick_4\":0,\"moles_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"hair_2\":0,\"chest_3\":0,\"tshirt_2\":4,\"eye_color\":0,\"watches_2\":0,\"watches_1\":-1,\"blemishes_2\":0,\"skin\":4,\"chest_2\":0,\"eyebrows_4\":0,\"glasses_1\":5,\"bproof_2\":0,\"ears_2\":0,\"mask_1\":0,\"moles_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":1,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":26,\"mask_2\":0,\"pants_2\":2,\"eyebrows_1\":0,\"blush_1\":0,\"ears_1\":-1,\"decals_2\":0,\"sex\":0,\"age_2\":0,\"blush_2\":0,\"shoes_2\":0,\"complexion_1\":0,\"bags_2\":0,\"hair_color_2\":0,\"beard_1\":18,\"chain_2\":0,\"eyebrows_3\":0,\"blush_3\":0,\"bags_1\":0,\"chest_1\":0,\"chain_1\":0,\"age_1\":0,\"hair_1\":54,\"bodyb_1\":0,\"glasses_2\":4,\"shoes_1\":10,\"arms\":4,\"face\":8,\"makeup_3\":0,\"decals_1\":0,\"beard_4\":19,\"hair_color_1\":26,\"beard_2\":9,\"helmet_1\":-1,\"eyebrows_2\":0,\"torso_1\":21,\"tshirt_1\":22,\"arms_2\":0,\"bproof_1\":0,\"lipstick_1\":0,\"complexion_2\":0,\"sun_1\":0,\"lipstick_3\":0,\"lipstick_2\":0,\"bracelets_1\":-1}},{\"label\":\"travail2\",\"skin\":{\"helmet_2\":0,\"pants_1\":28,\"lipstick_4\":0,\"moles_1\":0,\"chain_1\":17,\"blemishes_1\":0,\"shoes_1\":18,\"chest_3\":0,\"tshirt_2\":0,\"eye_color\":0,\"watches_2\":0,\"decals_1\":0,\"blemishes_2\":0,\"skin\":4,\"chest_2\":0,\"eyebrows_4\":0,\"glasses_1\":0,\"bproof_2\":0,\"ears_2\":0,\"mask_1\":0,\"complexion_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":0,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":26,\"mask_2\":0,\"pants_2\":15,\"eyebrows_1\":0,\"blush_1\":0,\"ears_1\":-1,\"decals_2\":0,\"sex\":0,\"age_2\":0,\"blush_2\":0,\"helmet_1\":-1,\"complexion_1\":0,\"bags_2\":0,\"hair_color_2\":0,\"moles_2\":0,\"watches_1\":-1,\"eyebrows_3\":0,\"blush_3\":0,\"bags_1\":0,\"chest_1\":0,\"chain_2\":1,\"age_1\":0,\"torso_1\":35,\"makeup_2\":0,\"glasses_2\":0,\"bodyb_1\":0,\"arms\":4,\"face\":8,\"makeup_3\":0,\"beard_2\":9,\"beard_4\":19,\"hair_color_1\":26,\"beard_1\":18,\"hair_2\":0,\"lipstick_2\":0,\"eyebrows_2\":0,\"tshirt_1\":23,\"arms_2\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"hair_1\":54,\"sun_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"bracelets_1\":-1}},{\"label\":\"rue\",\"skin\":{\"helmet_2\":0,\"pants_1\":24,\"lipstick_4\":0,\"moles_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"shoes_1\":8,\"chest_3\":0,\"tshirt_2\":0,\"eye_color\":0,\"watches_2\":0,\"decals_1\":0,\"blemishes_2\":0,\"bproof_1\":0,\"chest_2\":0,\"eyebrows_4\":0,\"glasses_1\":0,\"bproof_2\":0,\"ears_2\":0,\"mask_1\":0,\"complexion_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":0,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":26,\"mask_2\":0,\"pants_2\":0,\"eyebrows_1\":0,\"blush_1\":0,\"ears_1\":-1,\"decals_2\":0,\"sex\":0,\"age_2\":0,\"blush_2\":0,\"shoes_2\":2,\"complexion_1\":0,\"bags_2\":0,\"hair_color_2\":0,\"chain_2\":0,\"moles_2\":0,\"beard_1\":18,\"blush_3\":0,\"bags_1\":0,\"eyebrows_3\":0,\"chest_1\":0,\"age_1\":0,\"chain_1\":17,\"arms\":0,\"glasses_2\":0,\"torso_1\":22,\"bodyb_1\":0,\"face\":8,\"makeup_3\":0,\"watches_1\":-1,\"beard_4\":19,\"hair_color_1\":26,\"beard_2\":9,\"hair_1\":73,\"lipstick_2\":0,\"helmet_1\":-1,\"tshirt_1\":23,\"arms_2\":0,\"eyebrows_2\":0,\"lipstick_1\":0,\"skin\":4,\"sun_1\":0,\"lipstick_3\":0,\"hair_2\":0,\"bracelets_1\":-1}},{\"label\":\"travail concess\",\"skin\":{\"helmet_2\":0,\"pants_1\":24,\"lipstick_4\":0,\"moles_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"hair_2\":0,\"chest_3\":0,\"tshirt_2\":1,\"eye_color\":0,\"watches_2\":0,\"decals_1\":0,\"blemishes_2\":0,\"skin\":4,\"chest_2\":0,\"eyebrows_4\":0,\"glasses_1\":0,\"bodyb_1\":0,\"ears_2\":0,\"mask_1\":0,\"complexion_2\":0,\"chest_1\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":2,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":26,\"mask_2\":0,\"pants_2\":0,\"eyebrows_1\":0,\"blush_1\":0,\"ears_1\":-1,\"decals_2\":0,\"sex\":0,\"age_2\":0,\"blush_2\":0,\"helmet_1\":-1,\"complexion_1\":0,\"bags_2\":0,\"bproof_2\":0,\"hair_color_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"blush_3\":0,\"bags_1\":0,\"bodyb_2\":0,\"chain_1\":17,\"age_1\":0,\"watches_1\":-1,\"beard_4\":19,\"glasses_2\":0,\"arms\":4,\"hair_1\":73,\"face\":8,\"makeup_3\":0,\"beard_2\":9,\"moles_2\":0,\"hair_color_1\":26,\"beard_1\":18,\"torso_1\":20,\"lipstick_2\":0,\"shoes_1\":10,\"tshirt_1\":23,\"arms_2\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"eyebrows_2\":0,\"sun_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"bracelets_1\":-1}},{\"label\":\"travail22\",\"skin\":{\"helmet_2\":0,\"pants_1\":28,\"lipstick_4\":0,\"moles_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"hair_2\":0,\"chest_3\":0,\"tshirt_2\":0,\"eye_color\":0,\"watches_2\":0,\"watches_1\":-1,\"blemishes_2\":0,\"skin\":4,\"chest_2\":0,\"beard_1\":18,\"glasses_1\":0,\"bproof_2\":0,\"ears_2\":0,\"mask_1\":0,\"moles_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":0,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":26,\"mask_2\":0,\"pants_2\":15,\"eyebrows_1\":0,\"blush_1\":0,\"ears_1\":-1,\"decals_2\":0,\"sex\":0,\"age_2\":0,\"blush_2\":0,\"helmet_1\":-1,\"complexion_1\":0,\"bags_2\":0,\"hair_color_2\":0,\"eyebrows_3\":0,\"decals_1\":0,\"chest_1\":0,\"blush_3\":0,\"bags_1\":0,\"chain_2\":1,\"hair_1\":73,\"age_1\":0,\"chain_1\":17,\"bodyb_1\":0,\"glasses_2\":0,\"shoes_1\":10,\"arms\":4,\"face\":8,\"makeup_3\":0,\"beard_4\":19,\"beard_2\":9,\"hair_color_1\":26,\"bproof_1\":0,\"eyebrows_4\":0,\"lipstick_2\":0,\"torso_1\":35,\"tshirt_1\":23,\"arms_2\":0,\"complexion_2\":0,\"lipstick_1\":0,\"lipstick_3\":0,\"sun_1\":0,\"eyebrows_2\":0,\"shoes_2\":0,\"bracelets_1\":-1}},{\"label\":\"foux 2\",\"skin\":{\"helmet_2\":0,\"pants_1\":24,\"lipstick_4\":0,\"moles_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"shoes_1\":10,\"chest_3\":0,\"tshirt_2\":4,\"eye_color\":0,\"watches_2\":0,\"watches_1\":-1,\"blemishes_2\":0,\"skin\":4,\"chest_2\":0,\"eyebrows_4\":0,\"glasses_1\":5,\"bodyb_1\":0,\"ears_2\":0,\"mask_1\":0,\"moles_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":2,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":26,\"mask_2\":0,\"pants_2\":1,\"eyebrows_1\":0,\"blush_1\":0,\"ears_1\":-1,\"decals_2\":0,\"sex\":0,\"age_2\":0,\"blush_2\":0,\"shoes_2\":0,\"complexion_1\":0,\"bags_2\":0,\"bproof_2\":0,\"hair_color_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"blush_3\":0,\"bags_1\":0,\"decals_1\":0,\"chest_1\":0,\"age_1\":0,\"chain_1\":0,\"torso_1\":21,\"glasses_2\":4,\"eyebrows_2\":0,\"arms\":4,\"face\":8,\"makeup_3\":0,\"beard_4\":19,\"beard_2\":9,\"hair_color_1\":26,\"hair_1\":73,\"beard_1\":18,\"lipstick_2\":0,\"arms_2\":0,\"tshirt_1\":22,\"complexion_2\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"bproof_1\":0,\"sun_1\":0,\"hair_2\":0,\"helmet_1\":-1,\"bracelets_1\":-1}},{\"label\":\"nvit\",\"skin\":{\"helmet_2\":0,\"pants_1\":24,\"lipstick_4\":0,\"moles_1\":0,\"chain_1\":0,\"blemishes_1\":0,\"shoes_1\":10,\"chest_3\":0,\"tshirt_2\":0,\"eye_color\":0,\"watches_2\":0,\"watches_1\":-1,\"blemishes_2\":0,\"skin\":4,\"chest_2\":0,\"beard_1\":18,\"glasses_1\":5,\"bproof_2\":0,\"ears_2\":0,\"mask_1\":0,\"complexion_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":2,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":26,\"mask_2\":0,\"pants_2\":5,\"eyebrows_1\":0,\"blush_1\":0,\"ears_1\":-1,\"decals_2\":0,\"sex\":0,\"arms\":4,\"blush_2\":0,\"beard_4\":19,\"complexion_1\":0,\"bags_2\":0,\"hair_color_2\":0,\"makeup_2\":0,\"eyebrows_3\":0,\"hair_1\":73,\"blush_3\":0,\"bags_1\":0,\"chest_1\":0,\"chain_2\":0,\"age_1\":0,\"hair_2\":0,\"bodyb_1\":0,\"glasses_2\":4,\"age_2\":0,\"decals_1\":0,\"face\":8,\"makeup_3\":0,\"helmet_1\":-1,\"beard_2\":9,\"hair_color_1\":26,\"eyebrows_4\":0,\"torso_1\":21,\"lipstick_2\":0,\"arms_2\":0,\"tshirt_1\":22,\"eyebrows_2\":0,\"moles_2\":0,\"lipstick_1\":0,\"lipstick_3\":0,\"sun_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"bracelets_1\":-1}}]}'),
(46, 'user_ears', 'steam:110000118b1a98e', '{}'),
(47, 'user_glasses', 'steam:110000118b1a98e', '{\"skin\":{\"glasses_2\":4,\"glasses_1\":5},\"hasGlasses\":true}'),
(48, 'user_helmet', 'steam:110000118b1a98e', '{\"skin\":{\"helmet_2\":1,\"helmet_1\":12},\"hasHelmet\":true}'),
(49, 'user_mask', 'steam:110000118b1a98e', '{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":54}}'),
(50, 'society_bloods', NULL, '{\"weapons\":[{\"count\":1,\"name\":\"WEAPON_SNSPISTOL\"},{\"count\":1,\"name\":\"WEAPON_SWITCHBLADE\"},{\"count\":2,\"name\":\"WEAPON_PISTOL\"},{\"count\":0,\"name\":\"WEAPON_MINISMG\"},{\"count\":0,\"name\":\"WEAPON_PISTOL50\"},{\"count\":0,\"name\":\"WEAPON_KNUCKLE\"},{\"count\":1,\"name\":\"WEAPON_FLASHLIGHT\"}]}'),
(51, 'property', 'steam:11000013c6bc82a', '{\"dressing\":[{\"label\":\"Marabunta\",\"skin\":{\"bodyb_2\":0,\"hair_color_1\":0,\"blush_1\":0,\"glasses_1\":0,\"arms_2\":0,\"beard_3\":0,\"eyebrows_1\":0,\"blush_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"helmet_1\":14,\"beard_4\":0,\"beard_2\":0,\"pants_1\":42,\"chain_1\":0,\"tshirt_2\":0,\"makeup_3\":0,\"blemishes_2\":0,\"bags_2\":0,\"eye_color\":0,\"eyebrows_4\":0,\"complexion_1\":0,\"makeup_1\":0,\"bproof_1\":0,\"sun_2\":0,\"makeup_4\":0,\"shoes_1\":1,\"complexion_2\":0,\"hair_2\":0,\"glasses_2\":0,\"decals_1\":0,\"chest_2\":0,\"watches_2\":0,\"age_1\":0,\"chest_1\":0,\"torso_1\":15,\"lipstick_4\":0,\"makeup_2\":0,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":2,\"sun_1\":0,\"eyebrows_3\":0,\"blush_3\":0,\"decals_2\":0,\"chain_2\":0,\"eyebrows_2\":0,\"moles_1\":0,\"arms\":15,\"bproof_2\":0,\"blemishes_1\":0,\"face\":0,\"bracelets_1\":-1,\"beard_1\":0,\"shoes_2\":0,\"bags_1\":40,\"chest_3\":0,\"sex\":0,\"ears_1\":-1,\"watches_1\":-1,\"mask_2\":0,\"skin\":19,\"hair_1\":39,\"torso_2\":0,\"moles_2\":0,\"tshirt_1\":15,\"bodyb_1\":0,\"lipstick_1\":0,\"hair_color_2\":11,\"mask_1\":0,\"pants_2\":3,\"ears_2\":0}},{\"label\":\"Par balle\",\"skin\":{\"bodyb_2\":0,\"hair_color_1\":0,\"blush_1\":0,\"glasses_1\":0,\"arms_2\":0,\"beard_3\":0,\"eyebrows_1\":0,\"blush_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"helmet_1\":14,\"beard_4\":0,\"beard_2\":0,\"pants_1\":42,\"chain_1\":0,\"tshirt_2\":4,\"makeup_3\":0,\"blemishes_2\":0,\"bags_2\":0,\"eye_color\":0,\"eyebrows_4\":0,\"complexion_1\":0,\"makeup_1\":0,\"bproof_1\":0,\"sun_2\":0,\"makeup_4\":0,\"shoes_1\":1,\"complexion_2\":0,\"hair_2\":0,\"glasses_2\":0,\"decals_1\":0,\"lipstick_1\":0,\"watches_2\":0,\"age_1\":0,\"chest_1\":0,\"torso_1\":15,\"lipstick_4\":0,\"makeup_2\":0,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":2,\"sun_1\":0,\"eyebrows_3\":0,\"blush_3\":0,\"decals_2\":0,\"chain_2\":0,\"eyebrows_2\":0,\"moles_1\":0,\"arms\":15,\"bproof_2\":0,\"blemishes_1\":0,\"face\":0,\"bracelets_1\":-1,\"beard_1\":0,\"shoes_2\":0,\"bags_1\":0,\"chest_3\":0,\"sex\":0,\"mask_2\":0,\"watches_1\":-1,\"ears_1\":-1,\"skin\":19,\"hair_1\":39,\"torso_2\":0,\"tshirt_1\":131,\"moles_2\":0,\"bodyb_1\":0,\"hair_color_2\":11,\"chest_2\":0,\"mask_1\":0,\"pants_2\":3,\"ears_2\":0}},{\"label\":\"Classe\",\"skin\":{\"bodyb_2\":0,\"hair_color_1\":0,\"blush_1\":0,\"glasses_1\":0,\"arms_2\":0,\"beard_3\":0,\"eyebrows_1\":0,\"blush_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"beard_4\":0,\"beard_2\":0,\"pants_1\":28,\"chain_1\":0,\"tshirt_2\":0,\"makeup_3\":0,\"blemishes_2\":0,\"bags_2\":0,\"eye_color\":0,\"shoes_2\":0,\"complexion_1\":0,\"makeup_1\":0,\"bproof_1\":0,\"sun_2\":0,\"makeup_4\":0,\"shoes_1\":10,\"complexion_2\":0,\"hair_2\":0,\"glasses_2\":0,\"decals_1\":0,\"chest_2\":0,\"watches_2\":0,\"age_1\":0,\"chest_1\":0,\"torso_1\":111,\"lipstick_4\":0,\"makeup_2\":0,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":0,\"sun_1\":0,\"eyebrows_3\":0,\"blush_3\":0,\"face\":0,\"chain_2\":0,\"eyebrows_2\":0,\"moles_1\":0,\"mask_2\":0,\"bproof_2\":0,\"blemishes_1\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"beard_1\":0,\"lipstick_1\":0,\"bags_1\":0,\"chest_3\":0,\"sex\":0,\"ears_1\":-1,\"watches_1\":-1,\"arms\":4,\"skin\":19,\"hair_1\":39,\"torso_2\":3,\"hair_color_2\":11,\"tshirt_1\":15,\"decals_2\":0,\"bodyb_1\":0,\"moles_2\":0,\"mask_1\":0,\"pants_2\":0,\"ears_2\":0}},{\"skin\":{\"bodyb_2\":0,\"hair_color_1\":0,\"blush_1\":0,\"glasses_1\":0,\"arms_2\":0,\"bags_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"beard_4\":0,\"beard_2\":0,\"pants_1\":28,\"chain_1\":0,\"tshirt_2\":0,\"makeup_3\":0,\"blemishes_2\":0,\"bproof_2\":0,\"eye_color\":0,\"eyebrows_4\":0,\"complexion_1\":0,\"makeup_1\":0,\"bproof_1\":0,\"sun_2\":0,\"makeup_4\":0,\"shoes_1\":10,\"complexion_2\":0,\"hair_2\":0,\"glasses_2\":0,\"decals_1\":0,\"chest_2\":0,\"watches_2\":0,\"age_1\":0,\"chest_1\":0,\"torso_1\":13,\"lipstick_4\":0,\"makeup_2\":0,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":0,\"sun_1\":0,\"eyebrows_3\":0,\"blush_3\":0,\"face\":0,\"chain_2\":0,\"arms\":11,\"chest_3\":0,\"mask_2\":0,\"moles_1\":0,\"tshirt_1\":15,\"blemishes_1\":0,\"bracelets_1\":-1,\"shoes_2\":0,\"eyebrows_2\":0,\"mask_1\":0,\"beard_1\":0,\"sex\":0,\"beard_3\":0,\"watches_1\":-1,\"ears_1\":-1,\"skin\":19,\"hair_1\":39,\"torso_2\":2,\"pants_2\":0,\"blush_2\":0,\"lipstick_1\":0,\"decals_2\":0,\"bodyb_1\":0,\"moles_2\":0,\"bags_2\":0,\"hair_color_2\":11},\"label\":\"Mécano\"}]}'),
(52, 'user_helmet', 'steam:11000013c6bc82a', '{\"hasHelmet\":true,\"skin\":{\"helmet_1\":58,\"helmet_2\":2}}'),
(53, 'user_ears', 'steam:11000013c6bc82a', '{}'),
(54, 'user_mask', 'steam:11000013c6bc82a', '{\"hasMask\":true,\"skin\":{\"mask_1\":99,\"mask_2\":1}}'),
(55, 'user_glasses', 'steam:11000013c6bc82a', '{\"skin\":{\"glasses_2\":0,\"glasses_1\":3},\"hasGlasses\":true}'),
(56, 'user_glasses', 'steam:11000013d193ef3', '{}'),
(57, 'user_mask', 'steam:11000013d193ef3', '{\"hasMask\":true,\"skin\":{\"mask_1\":111,\"mask_2\":5}}'),
(58, 'user_helmet', 'steam:11000013d193ef3', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":20,\"helmet_1\":104}}'),
(59, 'user_ears', 'steam:11000013d193ef3', '{}'),
(60, 'property', 'steam:11000013d193ef3', '{\"dressing\":[{\"label\":\"Bloods\",\"skin\":{\"bodyb_2\":0,\"hair_color_1\":3,\"blush_1\":0,\"glasses_1\":0,\"arms_2\":0,\"bags_1\":0,\"eyebrows_1\":1,\"blush_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"beard_4\":0,\"beard_2\":10,\"pants_1\":62,\"chain_1\":17,\"tshirt_2\":0,\"makeup_3\":0,\"blemishes_2\":0,\"bproof_2\":0,\"eye_color\":17,\"eyebrows_4\":0,\"complexion_1\":0,\"makeup_1\":0,\"bproof_1\":0,\"sun_2\":0,\"makeup_4\":0,\"shoes_1\":28,\"complexion_2\":0,\"hair_2\":0,\"glasses_2\":0,\"decals_1\":0,\"chest_2\":0,\"watches_2\":0,\"age_1\":0,\"chest_1\":0,\"torso_1\":126,\"lipstick_4\":0,\"makeup_2\":0,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":20,\"sun_1\":0,\"eyebrows_3\":0,\"blush_3\":0,\"decals_2\":0,\"chain_2\":0,\"chest_3\":0,\"moles_1\":0,\"mask_2\":0,\"arms\":54,\"pants_2\":0,\"beard_1\":2,\"bracelets_1\":-1,\"shoes_2\":2,\"beard_3\":0,\"ears_1\":8,\"face\":0,\"sex\":0,\"hair_1\":73,\"watches_1\":-1,\"torso_2\":10,\"skin\":3,\"moles_2\":0,\"eyebrows_2\":10,\"lipstick_1\":0,\"hair_color_2\":0,\"bodyb_1\":0,\"ears_2\":0,\"bags_2\":0,\"mask_1\":0,\"tshirt_1\":15,\"blemishes_1\":0}},{\"label\":\"Blods concess\",\"skin\":{\"bodyb_2\":0,\"hair_color_1\":3,\"blush_1\":0,\"glasses_1\":0,\"arms_2\":0,\"bags_1\":0,\"eyebrows_1\":1,\"blush_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"beard_4\":0,\"beard_2\":10,\"pants_1\":24,\"chain_1\":17,\"tshirt_2\":2,\"makeup_3\":0,\"blemishes_2\":0,\"bproof_2\":0,\"eye_color\":17,\"eyebrows_4\":0,\"complexion_1\":0,\"makeup_1\":0,\"bproof_1\":0,\"sun_2\":0,\"makeup_4\":0,\"shoes_1\":40,\"complexion_2\":0,\"hair_2\":0,\"glasses_2\":0,\"decals_1\":0,\"chest_2\":0,\"watches_2\":0,\"age_1\":0,\"chest_1\":0,\"torso_2\":4,\"lipstick_4\":0,\"makeup_2\":0,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":20,\"sun_1\":0,\"eyebrows_3\":0,\"blush_3\":0,\"decals_2\":0,\"chain_2\":0,\"eyebrows_2\":10,\"moles_1\":0,\"arms\":53,\"torso_1\":29,\"pants_2\":4,\"mask_2\":5,\"bracelets_1\":-1,\"beard_1\":2,\"shoes_2\":8,\"beard_3\":0,\"ears_1\":8,\"sex\":0,\"ears_2\":0,\"watches_1\":-1,\"hair_1\":73,\"skin\":3,\"lipstick_1\":0,\"chest_3\":0,\"mask_1\":111,\"face\":0,\"hair_color_2\":0,\"bodyb_1\":0,\"bags_2\":0,\"moles_2\":0,\"tshirt_1\":31,\"blemishes_1\":0}},{\"label\":\"journaliste\",\"skin\":{\"bodyb_2\":0,\"hair_color_1\":3,\"blush_1\":0,\"glasses_1\":0,\"arms_2\":0,\"bags_1\":0,\"eyebrows_1\":1,\"ears_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"beard_4\":0,\"beard_2\":10,\"pants_1\":24,\"chain_1\":17,\"tshirt_2\":2,\"makeup_3\":0,\"blemishes_2\":0,\"bproof_2\":0,\"eye_color\":17,\"eyebrows_4\":0,\"complexion_1\":0,\"makeup_1\":0,\"bproof_1\":0,\"sun_2\":0,\"makeup_4\":0,\"shoes_1\":10,\"complexion_2\":0,\"hair_2\":0,\"glasses_2\":0,\"decals_1\":0,\"lipstick_1\":0,\"watches_2\":0,\"age_1\":0,\"chest_1\":0,\"torso_2\":0,\"lipstick_4\":0,\"makeup_2\":0,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":20,\"sun_1\":0,\"eyebrows_3\":0,\"blush_3\":0,\"face\":0,\"chain_2\":0,\"eyebrows_2\":10,\"moles_1\":0,\"arms\":53,\"torso_1\":29,\"blemishes_1\":0,\"blush_2\":0,\"bracelets_1\":-1,\"decals_2\":0,\"mask_2\":5,\"shoes_2\":0,\"beard_3\":0,\"sex\":0,\"ears_1\":8,\"watches_1\":-1,\"hair_1\":73,\"skin\":3,\"mask_1\":111,\"chest_3\":0,\"hair_color_2\":0,\"pants_2\":0,\"chest_2\":0,\"bodyb_1\":0,\"bags_2\":0,\"moles_2\":0,\"beard_1\":2,\"tshirt_1\":31}},{\"label\":\"tititi\",\"skin\":{\"bodyb_2\":0,\"hair_color_1\":3,\"blush_1\":0,\"glasses_1\":0,\"arms_2\":0,\"bags_1\":0,\"eyebrows_1\":1,\"ears_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"beard_4\":0,\"beard_2\":10,\"pants_1\":59,\"chain_1\":17,\"tshirt_2\":0,\"makeup_3\":0,\"blemishes_2\":0,\"bproof_2\":0,\"eye_color\":17,\"eyebrows_4\":0,\"complexion_1\":0,\"makeup_1\":0,\"bproof_1\":0,\"sun_2\":0,\"makeup_4\":0,\"shoes_1\":6,\"complexion_2\":0,\"hair_2\":0,\"glasses_2\":0,\"decals_1\":0,\"chest_2\":0,\"watches_2\":0,\"age_1\":0,\"chest_1\":0,\"torso_2\":4,\"lipstick_4\":0,\"makeup_2\":0,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":20,\"sun_1\":0,\"eyebrows_3\":0,\"blush_3\":0,\"decals_2\":0,\"chain_2\":0,\"eyebrows_2\":10,\"moles_1\":0,\"mask_2\":5,\"torso_1\":128,\"blemishes_1\":0,\"blush_2\":0,\"bracelets_1\":-1,\"beard_1\":2,\"shoes_2\":0,\"beard_3\":0,\"ears_1\":8,\"sex\":0,\"arms\":8,\"watches_1\":-1,\"hair_1\":73,\"skin\":3,\"moles_2\":0,\"hair_color_2\":0,\"chest_3\":0,\"face\":0,\"bags_2\":0,\"bodyb_1\":0,\"pants_2\":4,\"mask_1\":111,\"lipstick_1\":0,\"tshirt_1\":15}},{\"skin\":{\"bodyb_2\":0,\"hair_color_1\":3,\"blush_1\":0,\"glasses_1\":0,\"arms_2\":0,\"beard_3\":0,\"eyebrows_1\":1,\"blush_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"moles_1\":0,\"beard_4\":0,\"beard_2\":10,\"pants_1\":59,\"chain_1\":17,\"tshirt_2\":0,\"makeup_3\":0,\"blemishes_2\":0,\"bproof_2\":0,\"eye_color\":17,\"eyebrows_4\":0,\"complexion_1\":0,\"makeup_1\":0,\"bproof_1\":0,\"sun_2\":0,\"makeup_4\":0,\"shoes_1\":6,\"complexion_2\":0,\"hair_2\":0,\"glasses_2\":0,\"decals_1\":0,\"chest_2\":0,\"watches_2\":0,\"age_1\":0,\"chest_1\":0,\"torso_1\":80,\"lipstick_4\":0,\"makeup_2\":0,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":0,\"sun_1\":0,\"eyebrows_3\":0,\"blush_3\":0,\"decals_2\":0,\"chain_2\":0,\"helmet_1\":-1,\"arms\":11,\"mask_2\":0,\"moles_2\":0,\"blemishes_1\":0,\"chest_3\":0,\"bracelets_1\":-1,\"face\":0,\"eyebrows_2\":10,\"bags_1\":0,\"beard_1\":2,\"sex\":0,\"shoes_2\":0,\"watches_1\":-1,\"ears_1\":8,\"skin\":3,\"hair_1\":73,\"torso_2\":0,\"tshirt_1\":15,\"pants_2\":4,\"bodyb_1\":0,\"bags_2\":0,\"hair_color_2\":0,\"mask_1\":0,\"lipstick_1\":0,\"ears_2\":0},\"label\":\"New bloods\"}]}'),
(61, 'user_ears', 'steam:110000135cb51c7', '{}'),
(62, 'user_glasses', 'steam:110000135cb51c7', '{}'),
(63, 'user_mask', 'steam:110000135cb51c7', '{\"hasMask\":true,\"skin\":{\"mask_1\":111,\"mask_2\":9}}'),
(64, 'property', 'steam:110000135cb51c7', '{\"dressing\":[{\"label\":\"bloods\",\"skin\":{\"sex\":0,\"pants_1\":42,\"eyebrows_1\":2,\"makeup_2\":0,\"bproof_2\":0,\"bproof_1\":0,\"complexion_1\":0,\"moles_1\":0,\"tshirt_2\":2,\"arms\":0,\"age_2\":0,\"torso_2\":10,\"skin\":35,\"lipstick_3\":0,\"mask_2\":9,\"torso_1\":127,\"beard_1\":0,\"chain_1\":17,\"bracelets_1\":-1,\"hair_color_1\":0,\"beard_2\":0,\"helmet_2\":20,\"watches_1\":-1,\"lipstick_1\":0,\"blush_3\":0,\"hair_color_2\":0,\"bodyb_2\":0,\"eyebrows_2\":10,\"glasses_2\":0,\"pants_2\":4,\"helmet_1\":104,\"sun_1\":0,\"makeup_4\":0,\"arms_2\":0,\"tshirt_1\":23,\"blush_1\":0,\"blemishes_2\":0,\"chest_1\":0,\"beard_3\":0,\"bodyb_1\":0,\"lipstick_2\":0,\"lipstick_4\":0,\"hair_1\":14,\"shoes_2\":0,\"moles_2\":0,\"sun_2\":0,\"decals_1\":0,\"complexion_2\":0,\"shoes_1\":6,\"chest_3\":0,\"ears_1\":-1,\"bags_1\":0,\"makeup_1\":0,\"glasses_1\":0,\"mask_1\":111,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"hair_2\":0,\"blemishes_1\":0,\"watches_2\":0,\"decals_2\":0,\"eyebrows_4\":0,\"eye_color\":0,\"chest_2\":0,\"makeup_3\":0,\"blush_2\":0,\"beard_4\":0,\"bracelets_2\":0,\"ears_2\":0,\"eyebrows_3\":0,\"face\":0}},{\"label\":\"civil\",\"skin\":{\"sex\":0,\"pants_1\":26,\"eyebrows_1\":2,\"makeup_2\":0,\"bproof_2\":0,\"bproof_1\":0,\"complexion_1\":0,\"makeup_1\":0,\"tshirt_2\":2,\"arms\":0,\"age_2\":0,\"torso_2\":0,\"skin\":35,\"lipstick_3\":0,\"mask_2\":9,\"ears_2\":0,\"hair_2\":0,\"chain_1\":17,\"bracelets_1\":-1,\"hair_color_1\":0,\"beard_2\":0,\"helmet_2\":20,\"watches_1\":-1,\"lipstick_1\":0,\"blush_3\":0,\"hair_color_2\":0,\"bodyb_2\":0,\"eyebrows_2\":10,\"glasses_2\":0,\"pants_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"makeup_4\":0,\"arms_2\":0,\"tshirt_1\":23,\"blush_1\":0,\"blemishes_2\":0,\"decals_2\":0,\"decals_1\":0,\"shoes_1\":6,\"lipstick_2\":0,\"lipstick_4\":0,\"hair_1\":14,\"helmet_1\":104,\"moles_2\":0,\"sun_2\":0,\"ears_1\":-1,\"shoes_2\":0,\"bodyb_1\":0,\"beard_1\":0,\"complexion_2\":0,\"chest_3\":0,\"bags_1\":0,\"chest_1\":0,\"mask_1\":111,\"age_1\":0,\"glasses_1\":0,\"chain_2\":0,\"beard_3\":0,\"blemishes_1\":0,\"blush_2\":0,\"watches_2\":0,\"eyebrows_4\":0,\"moles_1\":0,\"chest_2\":0,\"makeup_3\":0,\"bags_2\":0,\"eye_color\":0,\"beard_4\":0,\"torso_1\":86,\"eyebrows_3\":0,\"face\":0}},{\"label\":\"civillllllllllllllllllllllllllllll\",\"skin\":{\"sex\":0,\"shoes_2\":0,\"eyebrows_1\":2,\"makeup_2\":0,\"bproof_2\":0,\"bproof_1\":0,\"complexion_1\":0,\"makeup_1\":0,\"tshirt_2\":2,\"arms\":0,\"age_2\":0,\"torso_2\":0,\"skin\":35,\"lipstick_3\":0,\"mask_2\":9,\"torso_1\":86,\"hair_2\":0,\"chain_1\":17,\"bracelets_1\":-1,\"hair_color_1\":0,\"beard_2\":0,\"helmet_2\":20,\"watches_1\":-1,\"lipstick_1\":0,\"blush_3\":0,\"hair_color_2\":0,\"bodyb_2\":0,\"eyebrows_2\":10,\"glasses_2\":0,\"pants_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"makeup_4\":0,\"arms_2\":0,\"tshirt_1\":17,\"blush_1\":0,\"blemishes_2\":0,\"chest_1\":0,\"shoes_1\":6,\"pants_1\":26,\"lipstick_2\":0,\"lipstick_4\":0,\"hair_1\":14,\"chest_3\":0,\"moles_2\":0,\"sun_2\":0,\"ears_1\":-1,\"bodyb_1\":0,\"complexion_2\":0,\"eye_color\":0,\"beard_3\":0,\"helmet_1\":104,\"bags_1\":0,\"blush_2\":0,\"mask_1\":111,\"age_1\":0,\"glasses_1\":0,\"chain_2\":0,\"decals_1\":0,\"blemishes_1\":0,\"watches_2\":0,\"moles_1\":0,\"eyebrows_4\":0,\"decals_2\":0,\"chest_2\":0,\"makeup_3\":0,\"bags_2\":0,\"beard_4\":0,\"ears_2\":0,\"beard_1\":0,\"eyebrows_3\":0,\"face\":0}},{\"label\":\"mecano civil\",\"skin\":{\"sex\":0,\"pants_1\":26,\"eyebrows_1\":2,\"makeup_2\":0,\"bproof_2\":0,\"bproof_1\":0,\"complexion_1\":0,\"makeup_1\":0,\"tshirt_2\":2,\"arms\":0,\"age_2\":0,\"torso_2\":0,\"skin\":35,\"lipstick_3\":0,\"mask_2\":9,\"torso_1\":86,\"hair_2\":0,\"chain_1\":17,\"bracelets_1\":-1,\"hair_color_1\":0,\"beard_2\":0,\"helmet_2\":20,\"watches_1\":-1,\"lipstick_1\":0,\"blush_3\":0,\"hair_color_2\":0,\"bodyb_2\":0,\"eyebrows_2\":10,\"glasses_2\":0,\"pants_2\":0,\"helmet_1\":104,\"sun_1\":0,\"makeup_4\":0,\"arms_2\":0,\"watches_2\":0,\"blush_1\":0,\"blemishes_2\":0,\"decals_2\":0,\"beard_3\":0,\"shoes_2\":0,\"lipstick_2\":0,\"lipstick_4\":0,\"hair_1\":14,\"bags_2\":0,\"moles_2\":0,\"sun_2\":0,\"ears_1\":-1,\"bodyb_1\":0,\"tshirt_1\":9,\"complexion_2\":0,\"chest_3\":0,\"eye_color\":0,\"decals_1\":0,\"bags_1\":0,\"mask_1\":111,\"age_1\":0,\"moles_1\":0,\"chain_2\":0,\"glasses_1\":0,\"blemishes_1\":0,\"shoes_1\":6,\"chest_1\":0,\"eyebrows_4\":0,\"beard_4\":0,\"chest_2\":0,\"makeup_3\":0,\"blush_2\":0,\"ears_2\":0,\"bracelets_2\":0,\"beard_1\":0,\"eyebrows_3\":0,\"face\":0}},{\"label\":\"bg\",\"skin\":{\"sex\":0,\"chest_3\":0,\"eyebrows_1\":2,\"makeup_2\":0,\"bproof_2\":0,\"bproof_1\":0,\"complexion_1\":0,\"moles_1\":0,\"tshirt_2\":0,\"arms\":12,\"age_2\":0,\"torso_2\":0,\"skin\":35,\"lipstick_3\":0,\"mask_2\":0,\"ears_2\":0,\"hair_2\":0,\"chain_1\":17,\"bracelets_1\":-1,\"hair_color_1\":0,\"beard_2\":0,\"helmet_2\":20,\"watches_1\":-1,\"lipstick_1\":0,\"blush_3\":0,\"hair_color_2\":0,\"bodyb_2\":0,\"eyebrows_2\":10,\"glasses_2\":0,\"pants_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"makeup_4\":0,\"arms_2\":0,\"watches_2\":0,\"blush_1\":0,\"decals_1\":0,\"decals_2\":0,\"eye_color\":0,\"beard_4\":0,\"lipstick_2\":0,\"lipstick_4\":0,\"hair_1\":14,\"pants_1\":26,\"moles_2\":0,\"sun_2\":0,\"ears_1\":-1,\"helmet_1\":104,\"shoes_2\":2,\"bodyb_1\":0,\"complexion_2\":0,\"chest_1\":0,\"bags_1\":0,\"blemishes_2\":0,\"mask_1\":0,\"age_1\":0,\"tshirt_1\":26,\"chain_2\":0,\"beard_1\":0,\"blemishes_1\":0,\"glasses_1\":0,\"shoes_1\":26,\"eyebrows_4\":0,\"makeup_1\":0,\"chest_2\":0,\"makeup_3\":0,\"blush_2\":0,\"torso_1\":10,\"beard_3\":0,\"bags_2\":0,\"eyebrows_3\":0,\"face\":0}}]}'),
(65, 'user_helmet', 'steam:110000135cb51c7', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":20,\"helmet_1\":104}}'),
(66, 'user_helmet', 'steam:11000011b8f00e6', '{}'),
(67, 'property', 'steam:11000011b8f00e6', '{\"dressing\":[{\"skin\":{\"beard_1\":0,\"lipstick_3\":0,\"helmet_2\":0,\"eyebrows_3\":0,\"helmet_1\":-1,\"makeup_4\":0,\"bodyb_1\":0,\"beard_3\":0,\"hair_color_1\":19,\"hair_color_2\":0,\"blush_3\":0,\"arms_2\":0,\"eye_color\":0,\"ears_2\":0,\"glasses_2\":0,\"blush_1\":0,\"makeup_1\":0,\"mask_1\":136,\"bodyb_2\":0,\"torso_2\":20,\"chest_1\":0,\"chest_3\":0,\"shoes_2\":0,\"decals_1\":0,\"lipstick_4\":0,\"makeup_3\":0,\"complexion_2\":0,\"blemishes_2\":0,\"blush_2\":0,\"pants_2\":1,\"bags_2\":0,\"moles_1\":0,\"eyebrows_1\":0,\"sex\":0,\"lipstick_1\":0,\"chain_2\":0,\"bracelets_2\":0,\"bags_1\":0,\"watches_1\":-1,\"ears_1\":-1,\"pants_1\":97,\"tshirt_1\":15,\"makeup_2\":0,\"chest_2\":0,\"sun_2\":0,\"beard_4\":0,\"complexion_1\":0,\"torso_1\":220,\"tshirt_2\":0,\"blemishes_1\":0,\"eyebrows_2\":0,\"moles_2\":0,\"age_1\":0,\"sun_1\":0,\"decals_2\":0,\"glasses_1\":5,\"hair_2\":0,\"arms\":0,\"bracelets_1\":-1,\"watches_2\":0,\"bproof_2\":0,\"beard_2\":0,\"bproof_1\":0,\"age_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"skin\":3,\"mask_2\":2,\"shoes_1\":27,\"face\":0,\"eyebrows_4\":0,\"hair_1\":14},\"label\":\"CORBEAU NOIR\"},{\"skin\":{\"beard_1\":0,\"lipstick_3\":0,\"helmet_2\":0,\"eyebrows_3\":0,\"helmet_1\":-1,\"makeup_4\":0,\"bodyb_1\":0,\"lipstick_2\":0,\"hair_color_1\":19,\"hair_2\":0,\"blush_3\":0,\"arms_2\":0,\"shoes_1\":27,\"ears_2\":0,\"glasses_2\":0,\"blush_1\":0,\"makeup_1\":0,\"tshirt_2\":0,\"bodyb_2\":0,\"torso_2\":0,\"chest_1\":0,\"chest_3\":0,\"shoes_2\":0,\"decals_1\":0,\"lipstick_4\":0,\"makeup_3\":0,\"complexion_2\":0,\"blemishes_2\":0,\"blush_2\":0,\"pants_2\":0,\"bags_2\":0,\"moles_1\":0,\"eyebrows_1\":0,\"sex\":0,\"lipstick_1\":0,\"chain_2\":0,\"bracelets_2\":0,\"bags_1\":0,\"watches_1\":-1,\"ears_1\":-1,\"torso_1\":203,\"tshirt_1\":15,\"mask_2\":0,\"chest_2\":0,\"sun_2\":0,\"beard_4\":0,\"complexion_1\":0,\"age_2\":0,\"moles_2\":0,\"chain_1\":0,\"blemishes_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"sun_1\":0,\"glasses_1\":5,\"decals_2\":0,\"beard_2\":0,\"bracelets_1\":-1,\"hair_1\":3,\"watches_2\":0,\"bproof_2\":0,\"skin\":3,\"bproof_1\":0,\"pants_1\":79,\"makeup_2\":0,\"eye_color\":0,\"eyebrows_4\":0,\"age_1\":0,\"mask_1\":0,\"face\":0,\"hair_color_2\":0,\"arms\":17},\"label\":\"civile\"}]}'),
(68, 'user_ears', 'steam:11000011b8f00e6', '{}'),
(69, 'user_mask', 'steam:11000011b8f00e6', '{\"hasMask\":true,\"skin\":{\"mask_1\":136,\"mask_2\":2}}'),
(70, 'user_glasses', 'steam:11000011b8f00e6', '{}'),
(71, 'user_glasses', 'steam:11000013619ddeb', '{}'),
(72, 'user_helmet', 'steam:11000013619ddeb', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(73, 'property', 'steam:11000013619ddeb', '{\"weapons\":[],\"dressing\":[{\"skin\":{\"bodyb_2\":0,\"hair_color_1\":0,\"blush_1\":0,\"beard_1\":7,\"arms_2\":0,\"beard_3\":0,\"eyebrows_1\":0,\"ears_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"helmet_1\":14,\"beard_4\":0,\"beard_2\":10,\"pants_1\":31,\"chain_1\":0,\"tshirt_2\":2,\"makeup_3\":0,\"blemishes_2\":0,\"bproof_2\":0,\"eye_color\":0,\"eyebrows_4\":0,\"complexion_1\":0,\"makeup_1\":0,\"bproof_1\":0,\"sun_2\":0,\"makeup_4\":0,\"shoes_1\":24,\"complexion_2\":0,\"hair_2\":0,\"glasses_2\":0,\"decals_1\":13,\"chest_2\":0,\"watches_2\":0,\"age_1\":0,\"hair_1\":73,\"torso_1\":179,\"lipstick_4\":0,\"makeup_2\":0,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":1,\"sun_1\":0,\"eyebrows_3\":0,\"blush_3\":0,\"decals_2\":0,\"chain_2\":0,\"mask_1\":101,\"bags_1\":0,\"arms\":5,\"eyebrows_2\":10,\"blemishes_1\":0,\"moles_1\":0,\"bracelets_1\":-1,\"glasses_1\":0,\"lipstick_1\":0,\"hair_color_2\":0,\"mask_2\":9,\"sex\":0,\"ears_1\":-1,\"watches_1\":-1,\"chest_3\":0,\"skin\":19,\"torso_2\":0,\"pants_2\":0,\"bags_2\":0,\"blush_2\":0,\"face\":0,\"bodyb_1\":0,\"chest_1\":0,\"moles_2\":0,\"shoes_2\":0,\"tshirt_1\":13},\"label\":\"Civil\"},{\"skin\":{\"bodyb_2\":0,\"hair_color_1\":0,\"blush_1\":0,\"glasses_1\":0,\"arms_2\":0,\"beard_3\":0,\"eyebrows_1\":0,\"ears_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"moles_1\":0,\"beard_4\":0,\"beard_2\":10,\"pants_1\":28,\"chain_1\":0,\"tshirt_2\":2,\"makeup_3\":0,\"bodyb_1\":0,\"bproof_2\":0,\"eye_color\":0,\"eyebrows_4\":0,\"complexion_1\":0,\"makeup_1\":0,\"bproof_1\":0,\"sun_2\":0,\"makeup_4\":0,\"shoes_1\":21,\"complexion_2\":0,\"hair_2\":0,\"glasses_2\":0,\"decals_1\":0,\"chest_2\":0,\"watches_2\":0,\"age_1\":0,\"hair_1\":73,\"torso_2\":0,\"lipstick_4\":0,\"makeup_2\":0,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":1,\"sun_1\":0,\"eyebrows_3\":0,\"blush_3\":0,\"face\":0,\"chain_2\":0,\"torso_1\":31,\"bags_1\":0,\"mask_2\":9,\"beard_1\":7,\"blemishes_1\":0,\"lipstick_1\":0,\"bracelets_1\":-1,\"hair_color_2\":0,\"blemishes_2\":0,\"blush_2\":0,\"helmet_1\":14,\"sex\":0,\"chest_3\":0,\"watches_1\":-1,\"chest_1\":0,\"skin\":19,\"shoes_2\":0,\"eyebrows_2\":10,\"ears_1\":-1,\"bags_2\":0,\"decals_2\":0,\"arms\":4,\"pants_2\":0,\"moles_2\":0,\"mask_1\":101,\"tshirt_1\":32},\"label\":\"Costard\"}]}'),
(74, 'user_mask', 'steam:11000013619ddeb', '{\"hasMask\":true,\"skin\":{\"mask_2\":9,\"mask_1\":101}}'),
(75, 'user_ears', 'steam:11000013619ddeb', '{}'),
(76, 'user_mask', 'steam:11000013d5431cc', '{}'),
(77, 'user_helmet', 'steam:11000013d5431cc', '{}'),
(78, 'user_glasses', 'steam:11000013d5431cc', '{}'),
(79, 'property', 'steam:11000013d5431cc', '{}'),
(80, 'user_ears', 'steam:11000013d5431cc', '{}'),
(81, 'user_helmet', 'steam:11000011b0fb6cb', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":1,\"helmet_1\":3}}'),
(82, 'user_mask', 'steam:11000011b0fb6cb', '{\"hasMask\":true,\"skin\":{\"mask_1\":51,\"mask_2\":1}}'),
(83, 'user_ears', 'steam:11000011b0fb6cb', '{}'),
(84, 'user_glasses', 'steam:11000011b0fb6cb', '{}'),
(85, 'property', 'steam:11000011b0fb6cb', '{\"dressing\":[{\"skin\":{\"glasses_1\":0,\"makeup_2\":0,\"ears_1\":-1,\"eyebrows_1\":0,\"beard_2\":10,\"lipstick_3\":0,\"eyebrows_3\":0,\"decals_2\":0,\"decals_1\":0,\"makeup_1\":0,\"torso_2\":5,\"blemishes_2\":0,\"sun_1\":0,\"hair_color_2\":0,\"sun_2\":0,\"eyebrows_4\":0,\"tshirt_2\":0,\"chain_1\":0,\"hair_1\":12,\"bodyb_1\":0,\"shoes_2\":0,\"age_1\":0,\"beard_1\":4,\"sex\":0,\"makeup_4\":0,\"face\":0,\"lipstick_4\":0,\"helmet_1\":3,\"bracelets_2\":0,\"arms\":39,\"blush_1\":0,\"lipstick_2\":0,\"arms_2\":0,\"bracelets_1\":-1,\"beard_3\":0,\"bags_1\":0,\"eyebrows_2\":0,\"blush_2\":0,\"blush_3\":0,\"chest_1\":0,\"chain_2\":0,\"bags_2\":0,\"blemishes_1\":0,\"bodyb_2\":0,\"torso_1\":141,\"mask_1\":0,\"hair_color_1\":10,\"makeup_3\":0,\"complexion_1\":0,\"bproof_2\":0,\"glasses_2\":0,\"beard_4\":0,\"pants_2\":5,\"helmet_2\":1,\"lipstick_1\":0,\"pants_1\":24,\"age_2\":0,\"bproof_1\":0,\"complexion_2\":0,\"chest_3\":0,\"tshirt_1\":32,\"ears_2\":0,\"eye_color\":0,\"watches_1\":-1,\"moles_1\":0,\"shoes_1\":7,\"moles_2\":0,\"chest_2\":0,\"mask_2\":0,\"watches_2\":0,\"hair_2\":0,\"skin\":42},\"label\":\"WHITE\"},{\"skin\":{\"glasses_1\":0,\"makeup_2\":0,\"ears_1\":-1,\"eyebrows_1\":0,\"beard_2\":10,\"lipstick_3\":0,\"eyebrows_3\":0,\"decals_2\":0,\"decals_1\":0,\"makeup_1\":0,\"torso_2\":2,\"blemishes_2\":0,\"sun_1\":0,\"hair_color_2\":0,\"sun_2\":0,\"eyebrows_4\":0,\"tshirt_2\":3,\"chain_1\":0,\"hair_1\":12,\"bodyb_1\":0,\"shoes_2\":0,\"age_1\":0,\"beard_1\":4,\"sex\":0,\"makeup_4\":0,\"face\":0,\"lipstick_4\":0,\"helmet_1\":104,\"bracelets_2\":0,\"arms\":39,\"blush_1\":0,\"lipstick_2\":0,\"arms_2\":0,\"bracelets_1\":-1,\"beard_3\":0,\"bags_1\":44,\"eyebrows_2\":0,\"blush_2\":0,\"skin\":42,\"bproof_1\":0,\"chain_2\":0,\"moles_2\":0,\"blemishes_1\":0,\"bodyb_2\":0,\"bags_2\":0,\"pants_2\":0,\"mask_1\":0,\"torso_1\":89,\"complexion_1\":0,\"bproof_2\":0,\"glasses_2\":0,\"hair_color_1\":10,\"moles_1\":0,\"makeup_3\":0,\"lipstick_1\":0,\"helmet_2\":22,\"age_2\":0,\"beard_4\":0,\"shoes_1\":25,\"chest_3\":0,\"tshirt_1\":131,\"ears_2\":0,\"eye_color\":0,\"chest_2\":0,\"complexion_2\":0,\"blush_3\":0,\"chest_1\":0,\"watches_2\":0,\"mask_2\":0,\"pants_1\":31,\"hair_2\":0,\"watches_1\":-1},\"label\":\"opé\"}]}'),
(86, 'user_ears', 'steam:11000013f2b5e80', '{}'),
(87, 'property', 'steam:11000013f2b5e80', '{\"dressing\":[{\"skin\":{\"glasses_1\":5,\"makeup_2\":0,\"ears_1\":1,\"eyebrows_1\":12,\"beard_2\":6,\"lipstick_3\":0,\"eyebrows_3\":56,\"decals_2\":0,\"decals_1\":0,\"makeup_1\":0,\"torso_2\":1,\"blemishes_2\":2,\"sun_1\":0,\"hair_color_2\":0,\"sun_2\":1,\"eyebrows_4\":0,\"tshirt_2\":0,\"chain_1\":11,\"hair_1\":21,\"bodyb_1\":1,\"shoes_2\":0,\"age_1\":1,\"beard_1\":10,\"sex\":0,\"makeup_4\":0,\"face\":44,\"lipstick_4\":0,\"helmet_1\":53,\"bracelets_2\":0,\"arms\":17,\"blush_1\":1,\"lipstick_2\":0,\"arms_2\":0,\"bracelets_1\":1,\"beard_3\":0,\"bags_1\":0,\"beard_4\":0,\"blush_2\":2,\"blush_3\":0,\"bproof_1\":0,\"chain_2\":2,\"bags_2\":0,\"blemishes_1\":1,\"bodyb_2\":5,\"torso_1\":29,\"mask_1\":0,\"helmet_2\":0,\"hair_color_1\":36,\"complexion_1\":0,\"bproof_2\":0,\"glasses_2\":6,\"chest_2\":10,\"pants_2\":0,\"watches_2\":0,\"watches_1\":1,\"pants_1\":10,\"age_2\":4,\"moles_1\":0,\"lipstick_1\":0,\"chest_3\":0,\"tshirt_1\":31,\"ears_2\":0,\"eye_color\":11,\"makeup_3\":0,\"eyebrows_2\":10,\"complexion_2\":0,\"shoes_1\":20,\"chest_1\":1,\"mask_2\":0,\"skin\":4,\"hair_2\":0,\"moles_2\":10},\"label\":\"Costar\"},{\"skin\":{\"glasses_1\":5,\"makeup_2\":0,\"ears_1\":1,\"eyebrows_1\":12,\"beard_2\":6,\"lipstick_3\":0,\"eyebrows_3\":56,\"decals_2\":0,\"decals_1\":0,\"makeup_1\":0,\"torso_2\":0,\"blemishes_2\":2,\"sun_1\":0,\"hair_color_2\":0,\"sun_2\":1,\"eyebrows_4\":0,\"tshirt_2\":1,\"chain_1\":0,\"hair_1\":21,\"bodyb_1\":1,\"shoes_2\":0,\"age_1\":1,\"beard_1\":10,\"sex\":0,\"makeup_4\":0,\"face\":44,\"lipstick_4\":0,\"helmet_1\":53,\"bracelets_2\":0,\"arms\":17,\"blush_1\":1,\"lipstick_2\":0,\"arms_2\":0,\"bracelets_1\":1,\"beard_3\":0,\"bags_1\":38,\"beard_4\":0,\"blush_2\":2,\"blush_3\":0,\"chest_1\":1,\"chain_2\":0,\"bags_2\":0,\"blemishes_1\":1,\"bodyb_2\":5,\"torso_1\":53,\"mask_1\":0,\"hair_color_1\":36,\"bproof_1\":0,\"complexion_1\":0,\"bproof_2\":0,\"glasses_2\":6,\"skin\":4,\"chest_2\":10,\"eyebrows_2\":10,\"lipstick_1\":0,\"pants_1\":73,\"age_2\":4,\"pants_2\":0,\"tshirt_1\":56,\"chest_3\":0,\"helmet_2\":0,\"ears_2\":0,\"eye_color\":11,\"makeup_3\":0,\"shoes_1\":25,\"moles_1\":0,\"moles_2\":10,\"watches_1\":1,\"mask_2\":0,\"watches_2\":0,\"hair_2\":0,\"complexion_2\":0},\"label\":\"Motard\"},{\"skin\":{\"glasses_1\":15,\"makeup_2\":0,\"ears_1\":1,\"eyebrows_1\":12,\"mask_1\":0,\"lipstick_3\":0,\"eyebrows_3\":56,\"decals_2\":0,\"decals_1\":0,\"makeup_1\":0,\"torso_2\":1,\"blemishes_2\":2,\"sun_1\":0,\"hair_color_2\":0,\"sun_2\":1,\"eyebrows_4\":0,\"tshirt_2\":1,\"moles_1\":0,\"hair_1\":66,\"bodyb_1\":1,\"shoes_2\":0,\"age_1\":1,\"beard_1\":10,\"sex\":0,\"makeup_4\":0,\"face\":44,\"lipstick_4\":0,\"helmet_1\":-1,\"bracelets_2\":0,\"arms\":17,\"blush_1\":1,\"lipstick_2\":0,\"arms_2\":0,\"bracelets_1\":1,\"tshirt_1\":56,\"bags_1\":37,\"beard_4\":0,\"blush_2\":2,\"blush_3\":0,\"chest_1\":1,\"chain_2\":2,\"makeup_3\":0,\"blemishes_1\":1,\"bodyb_2\":5,\"bags_2\":0,\"pants_2\":0,\"moles_2\":10,\"skin\":4,\"complexion_1\":0,\"bproof_2\":0,\"glasses_2\":0,\"beard_3\":0,\"hair_color_1\":0,\"watches_1\":1,\"helmet_2\":0,\"pants_1\":31,\"age_2\":4,\"beard_2\":6,\"complexion_2\":0,\"chest_3\":0,\"torso_1\":165,\"ears_2\":0,\"eye_color\":11,\"chest_2\":10,\"eyebrows_2\":10,\"bproof_1\":0,\"shoes_1\":24,\"lipstick_1\":0,\"mask_2\":0,\"chain_1\":11,\"hair_2\":0,\"watches_2\":0},\"label\":\"moto\"}]}'),
(88, 'user_helmet', 'steam:11000013f2b5e80', '{\"skin\":{\"helmet_2\":0,\"helmet_1\":53},\"hasHelmet\":true}'),
(89, 'user_mask', 'steam:11000013f2b5e80', '{\"hasMask\":true,\"skin\":{\"mask_1\":55,\"mask_2\":0}}'),
(90, 'user_glasses', 'steam:11000013f2b5e80', '{}'),
(91, 'user_ears', 'steam:1100001358abdef', '{}'),
(92, 'property', 'steam:1100001358abdef', '{\"dressing\":[{\"skin\":{\"blush_2\":0,\"blush_3\":0,\"ears_1\":2,\"complexion_2\":0,\"chest_3\":0,\"shoes_2\":0,\"bodyb_1\":0,\"makeup_3\":0,\"tshirt_1\":35,\"bproof_1\":0,\"pants_2\":5,\"hair_color_1\":3,\"blush_1\":0,\"watches_1\":-1,\"glasses_1\":18,\"torso_1\":32,\"chain_1\":26,\"shoes_1\":18,\"eyebrows_4\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"makeup_2\":0,\"hair_2\":0,\"chain_2\":12,\"blemishes_1\":0,\"skin\":4,\"torso_2\":5,\"makeup_1\":0,\"bproof_2\":0,\"lipstick_1\":0,\"hair_1\":45,\"decals_1\":0,\"watches_2\":0,\"sun_2\":0,\"mask_2\":0,\"bodyb_2\":0,\"blemishes_2\":0,\"age_1\":0,\"age_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"chest_1\":0,\"eyebrows_1\":0,\"pants_1\":24,\"moles_2\":0,\"makeup_4\":0,\"beard_2\":10,\"eye_color\":0,\"lipstick_2\":0,\"glasses_2\":2,\"chest_2\":0,\"decals_2\":0,\"tshirt_2\":0,\"helmet_2\":2,\"moles_1\":0,\"face\":0,\"bags_2\":0,\"helmet_1\":7,\"sex\":0,\"hair_color_2\":0,\"arms_2\":0,\"beard_1\":16,\"arms\":20,\"beard_3\":0,\"bags_1\":0,\"lipstick_4\":0,\"eyebrows_3\":0,\"beard_4\":0,\"mask_1\":0,\"ears_2\":0,\"eyebrows_2\":10},\"label\":\"costar blanc\"},{\"skin\":{\"blush_2\":0,\"blush_3\":0,\"ears_1\":2,\"complexion_2\":0,\"chest_3\":0,\"shoes_2\":0,\"bodyb_1\":0,\"makeup_3\":0,\"tshirt_1\":131,\"bproof_1\":0,\"pants_2\":3,\"hair_color_1\":3,\"blush_1\":0,\"helmet_2\":0,\"glasses_1\":24,\"torso_1\":61,\"chain_1\":0,\"shoes_1\":8,\"eyebrows_4\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"makeup_2\":0,\"hair_2\":0,\"chain_2\":0,\"blemishes_1\":0,\"skin\":4,\"torso_2\":1,\"makeup_1\":0,\"bproof_2\":0,\"lipstick_1\":0,\"hair_1\":45,\"decals_1\":0,\"watches_2\":0,\"sun_2\":0,\"mask_2\":15,\"bodyb_2\":0,\"blemishes_2\":0,\"lipstick_2\":0,\"age_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"chest_1\":0,\"eyebrows_1\":0,\"pants_1\":27,\"moles_2\":0,\"beard_4\":0,\"watches_1\":-1,\"eye_color\":0,\"decals_2\":0,\"glasses_2\":1,\"chest_2\":0,\"beard_2\":10,\"arms\":20,\"moles_1\":0,\"face\":0,\"age_1\":0,\"bags_2\":0,\"helmet_1\":14,\"sex\":0,\"hair_color_2\":0,\"arms_2\":0,\"beard_1\":16,\"makeup_4\":0,\"beard_3\":0,\"bags_1\":0,\"lipstick_4\":0,\"eyebrows_3\":0,\"mask_1\":111,\"tshirt_2\":3,\"ears_2\":0,\"eyebrows_2\":10},\"label\":\"Parebal\"},{\"skin\":{\"blush_2\":0,\"blush_3\":0,\"ears_1\":2,\"complexion_2\":0,\"chest_3\":0,\"shoes_2\":10,\"bodyb_1\":0,\"makeup_3\":0,\"tshirt_1\":36,\"bproof_1\":0,\"pants_2\":2,\"hair_color_1\":3,\"blush_1\":0,\"watches_1\":-1,\"glasses_1\":18,\"torso_1\":32,\"chain_1\":0,\"shoes_1\":57,\"eyebrows_4\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"makeup_2\":0,\"hair_2\":0,\"chain_2\":0,\"blemishes_1\":0,\"skin\":4,\"torso_2\":2,\"makeup_1\":0,\"bproof_2\":0,\"lipstick_1\":0,\"hair_1\":45,\"decals_1\":0,\"watches_2\":0,\"sun_2\":0,\"mask_2\":0,\"bodyb_2\":0,\"blemishes_2\":0,\"makeup_4\":0,\"age_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"chest_1\":0,\"eyebrows_1\":0,\"pants_1\":24,\"moles_2\":0,\"mask_1\":0,\"ears_2\":0,\"face\":0,\"eye_color\":0,\"glasses_2\":7,\"chest_2\":0,\"decals_2\":0,\"eyebrows_2\":10,\"helmet_2\":0,\"moles_1\":0,\"lipstick_2\":0,\"tshirt_2\":4,\"helmet_1\":7,\"sex\":0,\"hair_color_2\":0,\"arms_2\":0,\"arms\":20,\"beard_1\":16,\"beard_3\":0,\"bags_1\":0,\"lipstick_4\":0,\"eyebrows_3\":0,\"age_1\":0,\"beard_4\":0,\"beard_2\":10,\"bags_2\":0},\"label\":\"costar bg\"}]}'),
(93, 'user_mask', 'steam:1100001358abdef', '{\"hasMask\":true,\"skin\":{\"mask_2\":15,\"mask_1\":111}}'),
(94, 'user_helmet', 'steam:1100001358abdef', '{}'),
(95, 'user_glasses', 'steam:1100001358abdef', '{}'),
(96, 'user_glasses', 'steam:110000118fdead3', '{\"hasGlasses\":true,\"skin\":{\"glasses_2\":6,\"glasses_1\":5}}'),
(97, 'user_helmet', 'steam:110000118fdead3', '{\"skin\":{\"helmet_2\":0,\"helmet_1\":39},\"hasHelmet\":true}'),
(98, 'property', 'steam:110000118fdead3', '{\"dressing\":[{\"skin\":{\"blush_2\":0,\"blush_3\":0,\"moles_2\":0,\"complexion_2\":0,\"chest_3\":0,\"shoes_2\":0,\"bodyb_1\":0,\"makeup_3\":0,\"tshirt_1\":15,\"bproof_1\":0,\"pants_2\":0,\"hair_color_1\":38,\"blush_1\":0,\"watches_1\":-1,\"glasses_1\":0,\"arms\":1,\"chain_1\":0,\"shoes_1\":6,\"eyebrows_4\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"makeup_2\":0,\"hair_2\":0,\"chain_2\":0,\"blemishes_1\":0,\"skin\":16,\"torso_2\":0,\"makeup_1\":0,\"bproof_2\":0,\"lipstick_1\":0,\"hair_1\":14,\"decals_1\":0,\"watches_2\":0,\"sun_2\":0,\"mask_2\":0,\"beard_1\":0,\"blemishes_2\":0,\"makeup_4\":0,\"age_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"chest_1\":0,\"eyebrows_1\":0,\"pants_1\":42,\"beard_2\":0,\"face\":25,\"ears_1\":-1,\"eye_color\":3,\"lipstick_2\":0,\"glasses_2\":0,\"chest_2\":0,\"decals_2\":0,\"tshirt_2\":0,\"helmet_2\":0,\"moles_1\":0,\"eyebrows_2\":0,\"bags_2\":0,\"helmet_1\":-1,\"sex\":0,\"hair_color_2\":0,\"arms_2\":0,\"torso_1\":14,\"bodyb_2\":0,\"beard_3\":0,\"bags_1\":0,\"lipstick_4\":0,\"eyebrows_3\":0,\"age_1\":0,\"beard_4\":0,\"ears_2\":0,\"mask_1\":0},\"label\":\"gang\"},{\"skin\":{\"blush_2\":0,\"decals_2\":0,\"moles_2\":0,\"complexion_2\":0,\"chest_3\":0,\"shoes_2\":0,\"bodyb_1\":0,\"makeup_3\":0,\"tshirt_1\":4,\"bproof_1\":0,\"pants_2\":2,\"hair_color_1\":38,\"blush_1\":0,\"watches_1\":-1,\"glasses_1\":0,\"torso_1\":28,\"chain_1\":0,\"shoes_1\":10,\"eyebrows_4\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"makeup_2\":0,\"hair_2\":0,\"chain_2\":0,\"blemishes_1\":0,\"skin\":10,\"torso_2\":0,\"makeup_1\":0,\"bproof_2\":0,\"lipstick_1\":0,\"hair_1\":8,\"decals_1\":0,\"watches_2\":0,\"sun_2\":0,\"mask_2\":0,\"beard_1\":0,\"blemishes_2\":0,\"makeup_4\":0,\"age_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"chest_1\":0,\"eyebrows_1\":0,\"pants_1\":50,\"beard_2\":0,\"face\":25,\"blush_3\":0,\"ears_1\":-1,\"eye_color\":0,\"glasses_2\":0,\"chest_2\":0,\"tshirt_2\":1,\"helmet_2\":0,\"eyebrows_2\":0,\"moles_1\":0,\"arms\":1,\"bags_2\":0,\"helmet_1\":-1,\"sex\":0,\"hair_color_2\":0,\"arms_2\":0,\"age_1\":0,\"bodyb_2\":0,\"beard_3\":0,\"bags_1\":0,\"lipstick_4\":0,\"eyebrows_3\":0,\"beard_4\":0,\"ears_2\":0,\"mask_1\":0,\"lipstick_2\":0},\"label\":\"travail\"},{\"skin\":{\"blush_2\":0,\"decals_2\":0,\"moles_2\":0,\"complexion_2\":0,\"chest_3\":0,\"shoes_2\":0,\"bodyb_1\":0,\"makeup_3\":0,\"tshirt_1\":15,\"bproof_1\":0,\"pants_2\":0,\"hair_color_1\":38,\"blush_1\":0,\"watches_1\":-1,\"glasses_1\":5,\"torso_1\":50,\"chain_1\":0,\"shoes_1\":25,\"eyebrows_4\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"makeup_2\":0,\"hair_2\":0,\"chain_2\":0,\"blemishes_1\":0,\"skin\":10,\"torso_2\":0,\"makeup_1\":0,\"bproof_2\":0,\"lipstick_1\":0,\"hair_1\":8,\"decals_1\":0,\"watches_2\":0,\"sun_2\":0,\"mask_2\":8,\"bodyb_2\":0,\"blemishes_2\":0,\"lipstick_2\":0,\"age_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"chest_1\":0,\"eyebrows_1\":0,\"pants_1\":34,\"beard_2\":0,\"mask_1\":53,\"blush_3\":0,\"eye_color\":0,\"tshirt_2\":0,\"glasses_2\":6,\"chest_2\":0,\"ears_1\":-1,\"beard_1\":0,\"helmet_2\":0,\"arms\":1,\"moles_1\":0,\"bags_2\":0,\"helmet_1\":39,\"sex\":0,\"hair_color_2\":0,\"arms_2\":0,\"age_1\":0,\"face\":25,\"beard_3\":0,\"bags_1\":45,\"lipstick_4\":0,\"eyebrows_3\":0,\"beard_4\":0,\"ears_2\":0,\"makeup_4\":0,\"eyebrows_2\":0},\"label\":\"orga vrai\"},{\"skin\":{\"blush_2\":0,\"blush_3\":0,\"moles_2\":0,\"complexion_2\":0,\"chest_3\":0,\"shoes_2\":0,\"bodyb_1\":0,\"makeup_3\":0,\"tshirt_1\":15,\"bproof_1\":0,\"pants_2\":0,\"hair_color_1\":58,\"beard_4\":0,\"watches_1\":-1,\"glasses_1\":0,\"torso_1\":50,\"chain_1\":0,\"shoes_1\":25,\"eyebrows_4\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"makeup_2\":9,\"hair_2\":0,\"chain_2\":0,\"blemishes_1\":0,\"skin\":10,\"torso_2\":0,\"makeup_1\":63,\"bproof_2\":0,\"lipstick_1\":0,\"hair_1\":19,\"decals_1\":0,\"watches_2\":0,\"sun_2\":0,\"mask_2\":0,\"beard_1\":12,\"blemishes_2\":0,\"lipstick_2\":0,\"age_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"chest_1\":0,\"eyebrows_1\":12,\"pants_1\":72,\"mask_1\":0,\"beard_2\":10,\"ears_1\":-1,\"eye_color\":0,\"face\":25,\"glasses_2\":0,\"chest_2\":0,\"decals_2\":0,\"helmet_2\":0,\"tshirt_2\":0,\"moles_1\":0,\"blush_1\":0,\"bags_2\":0,\"helmet_1\":-1,\"sex\":0,\"hair_color_2\":6,\"arms_2\":0,\"arms\":1,\"bodyb_2\":0,\"beard_3\":0,\"bags_1\":41,\"lipstick_4\":0,\"eyebrows_3\":0,\"age_1\":0,\"ears_2\":0,\"makeup_4\":0,\"eyebrows_2\":10},\"label\":\"orga 2\"},{\"skin\":{\"blush_2\":0,\"blush_3\":0,\"moles_2\":0,\"complexion_2\":0,\"chest_3\":0,\"shoes_2\":0,\"bodyb_1\":0,\"makeup_3\":0,\"tshirt_1\":15,\"bproof_1\":0,\"pants_2\":9,\"hair_color_1\":58,\"blush_1\":0,\"watches_1\":-1,\"glasses_1\":5,\"torso_1\":50,\"chain_1\":0,\"shoes_1\":25,\"eyebrows_4\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"makeup_2\":9,\"hair_2\":0,\"chain_2\":0,\"blemishes_1\":0,\"skin\":10,\"torso_2\":0,\"makeup_1\":63,\"bproof_2\":0,\"lipstick_1\":0,\"hair_1\":19,\"decals_1\":0,\"watches_2\":0,\"sun_2\":0,\"mask_2\":0,\"beard_1\":12,\"blemishes_2\":0,\"makeup_4\":0,\"age_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"chest_1\":0,\"eyebrows_1\":12,\"pants_1\":59,\"beard_2\":10,\"ears_2\":0,\"ears_1\":-1,\"eye_color\":0,\"tshirt_2\":0,\"glasses_2\":6,\"chest_2\":0,\"decals_2\":0,\"helmet_2\":0,\"arms\":1,\"moles_1\":0,\"age_1\":0,\"bags_2\":0,\"helmet_1\":-1,\"sex\":0,\"hair_color_2\":6,\"arms_2\":0,\"bodyb_2\":0,\"face\":25,\"beard_3\":0,\"bags_1\":41,\"lipstick_4\":0,\"eyebrows_3\":0,\"beard_4\":0,\"mask_1\":0,\"lipstick_2\":0,\"eyebrows_2\":10},\"label\":\"orga 3\"},{\"skin\":{\"blush_2\":0,\"blush_3\":0,\"moles_2\":0,\"complexion_2\":0,\"chest_3\":0,\"shoes_2\":0,\"bodyb_1\":0,\"makeup_3\":0,\"tshirt_1\":4,\"bproof_1\":0,\"pants_2\":1,\"hair_color_1\":58,\"beard_4\":0,\"watches_1\":-1,\"glasses_1\":0,\"arms\":1,\"chain_1\":0,\"shoes_1\":10,\"eyebrows_4\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"makeup_2\":9,\"hair_2\":0,\"chain_2\":0,\"blemishes_1\":0,\"skin\":10,\"torso_2\":2,\"makeup_1\":63,\"bproof_2\":0,\"lipstick_1\":0,\"hair_1\":19,\"decals_1\":0,\"watches_2\":0,\"sun_2\":0,\"mask_2\":0,\"beard_1\":12,\"blemishes_2\":0,\"makeup_4\":0,\"age_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"chest_1\":0,\"eyebrows_1\":12,\"pants_1\":50,\"mask_1\":0,\"eye_color\":0,\"bodyb_2\":0,\"tshirt_2\":1,\"decals_2\":0,\"glasses_2\":0,\"chest_2\":0,\"ears_1\":-1,\"blush_1\":0,\"helmet_2\":0,\"moles_1\":0,\"beard_2\":10,\"bags_2\":0,\"helmet_1\":-1,\"sex\":0,\"hair_color_2\":6,\"arms_2\":0,\"torso_1\":27,\"eyebrows_2\":10,\"beard_3\":0,\"bags_1\":0,\"lipstick_4\":0,\"eyebrows_3\":0,\"ears_2\":0,\"age_1\":0,\"face\":25,\"lipstick_2\":0},\"label\":\"travail 2\"}]}'),
(99, 'user_ears', 'steam:110000118fdead3', '{}'),
(100, 'user_mask', 'steam:110000118fdead3', '{\"hasMask\":true,\"skin\":{\"mask_2\":8,\"mask_1\":53}}'),
(101, 'property', 'steam:11000013728f9a0', '{\"dressing\":[{\"label\":\"Costard\",\"skin\":{\"chain_1\":12,\"moles_2\":0,\"beard_3\":0,\"chain_2\":2,\"ears_2\":0,\"hair_2\":0,\"bodyb_2\":0,\"helmet_1\":-1,\"blemishes_2\":0,\"beard_2\":10,\"beard_4\":0,\"decals_1\":0,\"moles_1\":0,\"hair_color_2\":9,\"complexion_2\":0,\"makeup_1\":0,\"blush_3\":0,\"bproof_2\":0,\"watches_1\":-1,\"arms_2\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"bracelets_2\":0,\"shoes_2\":0,\"bags_1\":0,\"bodyb_1\":0,\"pants_2\":0,\"chest_3\":0,\"lipstick_1\":0,\"blemishes_1\":0,\"torso_1\":29,\"glasses_1\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"watches_2\":0,\"sex\":0,\"hair_1\":73,\"bags_2\":0,\"tshirt_2\":0,\"chest_2\":0,\"hair_color_1\":4,\"makeup_2\":0,\"shoes_1\":10,\"eyebrows_3\":0,\"beard_1\":3,\"skin\":25,\"bproof_1\":0,\"lipstick_2\":0,\"sun_1\":0,\"makeup_3\":0,\"ears_1\":-1,\"face\":12,\"eyebrows_1\":0,\"blush_1\":0,\"age_1\":0,\"eyebrows_2\":0,\"tshirt_1\":31,\"lipstick_4\":0,\"lipstick_3\":0,\"chest_1\":0,\"helmet_2\":0,\"age_2\":0,\"mask_1\":0,\"blush_2\":0,\"arms\":22,\"decals_2\":0,\"torso_2\":0,\"sun_2\":0,\"eye_color\":0,\"pants_1\":28,\"makeup_4\":0,\"mask_2\":0}},{\"label\":\"Costard sac\",\"skin\":{\"chain_1\":12,\"moles_2\":0,\"beard_3\":0,\"chain_2\":2,\"ears_2\":0,\"hair_2\":0,\"bodyb_2\":0,\"helmet_1\":-1,\"blemishes_2\":0,\"beard_2\":10,\"beard_4\":0,\"decals_1\":0,\"moles_1\":0,\"hair_color_2\":9,\"complexion_2\":0,\"makeup_1\":0,\"blush_3\":0,\"bproof_2\":0,\"watches_1\":-1,\"arms_2\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"bracelets_2\":0,\"shoes_2\":0,\"bags_1\":41,\"bodyb_1\":0,\"pants_2\":0,\"chest_3\":0,\"lipstick_1\":0,\"blemishes_1\":0,\"torso_1\":29,\"glasses_1\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"face\":12,\"sex\":0,\"hair_1\":73,\"bags_2\":0,\"tshirt_2\":0,\"chest_2\":0,\"hair_color_1\":3,\"makeup_2\":0,\"shoes_1\":10,\"eyebrows_3\":0,\"beard_1\":3,\"skin\":25,\"bproof_1\":0,\"makeup_3\":0,\"sun_1\":0,\"blush_2\":0,\"ears_1\":-1,\"age_1\":0,\"eyebrows_1\":0,\"blush_1\":0,\"chest_1\":0,\"eyebrows_2\":10,\"watches_2\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"tshirt_1\":31,\"lipstick_2\":0,\"age_2\":0,\"mask_1\":0,\"torso_2\":0,\"helmet_2\":0,\"decals_2\":0,\"eye_color\":0,\"sun_2\":0,\"arms\":22,\"pants_1\":28,\"makeup_4\":0,\"mask_2\":0}},{\"label\":\"Polo Vert\",\"skin\":{\"chain_1\":0,\"moles_2\":0,\"beard_3\":0,\"chain_2\":0,\"ears_2\":0,\"hair_2\":0,\"bodyb_2\":0,\"helmet_1\":-1,\"blemishes_2\":0,\"beard_2\":10,\"beard_4\":0,\"decals_1\":0,\"pants_1\":4,\"hair_color_2\":9,\"complexion_2\":0,\"makeup_1\":0,\"blush_3\":0,\"bproof_2\":0,\"watches_1\":-1,\"arms_2\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"bracelets_2\":0,\"shoes_2\":6,\"bags_1\":0,\"bodyb_1\":0,\"pants_2\":0,\"chest_3\":0,\"lipstick_1\":0,\"blemishes_1\":0,\"torso_1\":94,\"glasses_1\":0,\"ears_1\":-1,\"eyebrows_4\":0,\"face\":12,\"sex\":0,\"hair_1\":73,\"bags_2\":0,\"tshirt_2\":0,\"chest_2\":0,\"torso_2\":0,\"makeup_2\":0,\"makeup_3\":0,\"eyebrows_3\":0,\"beard_1\":3,\"skin\":25,\"bproof_1\":0,\"lipstick_2\":0,\"sun_1\":0,\"chest_1\":0,\"glasses_2\":0,\"age_1\":0,\"eyebrows_1\":0,\"blush_1\":0,\"shoes_1\":12,\"eyebrows_2\":10,\"watches_2\":0,\"helmet_2\":0,\"lipstick_3\":0,\"lipstick_4\":0,\"moles_1\":0,\"age_2\":0,\"mask_1\":0,\"tshirt_1\":15,\"arms\":19,\"decals_2\":0,\"blush_2\":0,\"sun_2\":0,\"hair_color_1\":3,\"eye_color\":0,\"makeup_4\":0,\"mask_2\":0}},{\"label\":\"Tenue OP\",\"skin\":{\"chain_1\":0,\"moles_2\":0,\"beard_3\":0,\"chain_2\":0,\"ears_2\":0,\"hair_2\":0,\"bodyb_2\":0,\"helmet_1\":105,\"blemishes_2\":0,\"beard_2\":10,\"beard_4\":0,\"decals_1\":0,\"pants_1\":102,\"hair_color_2\":9,\"complexion_2\":0,\"makeup_1\":0,\"blush_3\":0,\"bproof_2\":0,\"watches_1\":-1,\"arms_2\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"bracelets_2\":0,\"shoes_2\":20,\"bags_1\":45,\"bodyb_1\":0,\"pants_2\":0,\"chest_3\":0,\"lipstick_1\":0,\"blemishes_1\":0,\"torso_1\":220,\"glasses_1\":0,\"glasses_2\":0,\"age_1\":0,\"watches_2\":0,\"sex\":0,\"hair_1\":73,\"bags_2\":0,\"tshirt_2\":0,\"chest_2\":0,\"torso_2\":20,\"makeup_2\":0,\"makeup_3\":0,\"eyebrows_3\":0,\"shoes_1\":59,\"hair_color_1\":3,\"helmet_2\":20,\"lipstick_2\":0,\"sun_1\":0,\"beard_1\":3,\"bproof_1\":0,\"blush_2\":0,\"eyebrows_1\":0,\"blush_1\":0,\"ears_1\":-1,\"eyebrows_2\":10,\"eyebrows_4\":0,\"face\":12,\"lipstick_3\":0,\"lipstick_4\":0,\"tshirt_1\":131,\"age_2\":0,\"mask_1\":0,\"chest_1\":0,\"arms\":22,\"decals_2\":0,\"skin\":25,\"sun_2\":0,\"moles_1\":0,\"eye_color\":0,\"makeup_4\":0,\"mask_2\":0}}]}'),
(102, 'user_helmet', 'steam:11000013728f9a0', '{}'),
(103, 'user_ears', 'steam:11000013728f9a0', '{}'),
(104, 'user_mask', 'steam:11000013728f9a0', '{\"hasMask\":true,\"skin\":{\"mask_1\":54,\"mask_2\":0}}'),
(105, 'user_glasses', 'steam:11000013728f9a0', '{\"skin\":{\"glasses_1\":17,\"glasses_2\":5},\"hasGlasses\":true}'),
(106, 'property', 'steam:11000010bfb2fe2', '{}'),
(107, 'user_glasses', 'steam:11000010bfb2fe2', '{}'),
(108, 'user_mask', 'steam:11000010bfb2fe2', '{}'),
(109, 'user_ears', 'steam:11000010bfb2fe2', '{}'),
(110, 'user_helmet', 'steam:11000010bfb2fe2', '{}'),
(111, 'user_glasses', 'steam:110000115cdc1fc', '{}'),
(112, 'user_helmet', 'steam:110000115cdc1fc', '{}'),
(113, 'user_ears', 'steam:110000115cdc1fc', '{}'),
(114, 'user_mask', 'steam:110000115cdc1fc', '{\"hasMask\":true,\"skin\":{\"mask_1\":54,\"mask_2\":0}}'),
(115, 'property', 'steam:110000115cdc1fc', '{\"dressing\":[{\"label\":\"polo noirt\",\"skin\":{\"chain_1\":0,\"moles_2\":0,\"beard_3\":0,\"chain_2\":0,\"ears_2\":0,\"hair_2\":0,\"bodyb_2\":0,\"helmet_1\":-1,\"blemishes_2\":0,\"beard_2\":0,\"beard_4\":0,\"decals_1\":0,\"moles_1\":0,\"hair_color_2\":0,\"complexion_2\":0,\"makeup_1\":0,\"blush_3\":0,\"bproof_2\":0,\"watches_1\":-1,\"arms_2\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"bracelets_2\":0,\"shoes_2\":0,\"bags_1\":41,\"bodyb_1\":0,\"pants_2\":0,\"chest_3\":0,\"lipstick_1\":3,\"blemishes_1\":0,\"torso_1\":82,\"glasses_1\":0,\"ears_1\":-1,\"age_1\":0,\"face\":4,\"sex\":0,\"hair_1\":55,\"bags_2\":0,\"tshirt_2\":0,\"chest_2\":0,\"torso_2\":2,\"makeup_2\":0,\"shoes_1\":7,\"eyebrows_3\":0,\"makeup_3\":0,\"hair_color_1\":0,\"pants_1\":24,\"lipstick_2\":0,\"sun_1\":0,\"beard_1\":0,\"bproof_1\":0,\"chest_1\":0,\"eyebrows_1\":0,\"blush_1\":0,\"glasses_2\":0,\"eyebrows_2\":0,\"blush_2\":0,\"eyebrows_4\":0,\"lipstick_3\":0,\"arms\":0,\"watches_2\":0,\"age_2\":0,\"mask_1\":0,\"lipstick_4\":0,\"helmet_2\":0,\"decals_2\":0,\"tshirt_1\":15,\"sun_2\":0,\"skin\":5,\"eye_color\":0,\"makeup_4\":0,\"mask_2\":0}}]}'),
(116, 'user_ears', 'steam:110000131fd1080', '{\"skin\":{\"ears_1\":16,\"ears_2\":0},\"hasEars\":true}'),
(117, 'property', 'steam:110000131fd1080', '{\"dressing\":[{\"skin\":{\"beard_1\":9,\"lipstick_3\":0,\"helmet_2\":8,\"eyebrows_3\":0,\"helmet_1\":56,\"makeup_4\":0,\"bodyb_1\":0,\"lipstick_2\":0,\"hair_color_1\":0,\"hair_2\":0,\"blush_3\":0,\"arms_2\":0,\"eye_color\":0,\"ears_2\":0,\"glasses_2\":0,\"blush_1\":0,\"makeup_1\":0,\"mask_1\":0,\"bodyb_2\":0,\"torso_2\":0,\"glasses_1\":5,\"chest_3\":0,\"shoes_2\":0,\"decals_1\":0,\"lipstick_4\":0,\"makeup_3\":0,\"complexion_2\":0,\"blemishes_2\":0,\"blush_2\":0,\"pants_2\":0,\"bags_2\":0,\"moles_1\":0,\"eyebrows_1\":0,\"sex\":0,\"lipstick_1\":0,\"chain_2\":0,\"bracelets_2\":0,\"bags_1\":0,\"chain_1\":0,\"ears_1\":16,\"torso_1\":14,\"tshirt_1\":15,\"makeup_2\":0,\"chest_2\":0,\"sun_2\":0,\"beard_4\":0,\"complexion_1\":0,\"pants_1\":42,\"age_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"moles_2\":0,\"watches_1\":-1,\"sun_1\":0,\"tshirt_2\":0,\"chest_1\":0,\"hair_color_2\":0,\"beard_3\":0,\"hair_1\":1,\"eyebrows_4\":0,\"bproof_2\":0,\"beard_2\":10,\"bproof_1\":0,\"bracelets_1\":-1,\"age_1\":0,\"skin\":5,\"arms\":0,\"mask_2\":0,\"shoes_1\":6,\"face\":0,\"blemishes_1\":0,\"watches_2\":0},\"label\":\"marabunta\"},{\"skin\":{\"beard_1\":9,\"lipstick_3\":0,\"helmet_2\":8,\"eyebrows_3\":0,\"helmet_1\":56,\"makeup_4\":0,\"bodyb_1\":0,\"beard_3\":0,\"hair_color_1\":0,\"skin\":5,\"blush_3\":0,\"arms_2\":0,\"shoes_1\":6,\"ears_2\":0,\"glasses_2\":0,\"blush_1\":0,\"makeup_1\":0,\"tshirt_2\":0,\"bodyb_2\":0,\"torso_2\":0,\"chest_1\":0,\"chest_3\":0,\"shoes_2\":0,\"decals_1\":0,\"lipstick_4\":0,\"makeup_3\":0,\"complexion_2\":0,\"blemishes_2\":0,\"blush_2\":0,\"pants_2\":0,\"bags_2\":0,\"moles_1\":0,\"eyebrows_1\":0,\"sex\":0,\"lipstick_1\":0,\"chain_2\":0,\"bracelets_2\":0,\"bags_1\":0,\"watches_1\":-1,\"ears_1\":16,\"torso_1\":17,\"tshirt_1\":15,\"makeup_2\":0,\"chest_2\":0,\"sun_2\":0,\"beard_4\":0,\"complexion_1\":0,\"pants_1\":42,\"age_2\":0,\"decals_2\":0,\"blemishes_1\":0,\"moles_2\":0,\"hair_2\":0,\"sun_1\":0,\"hair_color_2\":0,\"hair_1\":1,\"glasses_1\":5,\"arms\":5,\"bracelets_1\":-1,\"watches_2\":0,\"bproof_2\":0,\"beard_2\":10,\"bproof_1\":0,\"eye_color\":0,\"lipstick_2\":0,\"chain_1\":0,\"mask_2\":0,\"eyebrows_2\":0,\"eyebrows_4\":0,\"face\":0,\"age_1\":0,\"mask_1\":0},\"label\":\"marabun2\"}]}'),
(118, 'user_helmet', 'steam:110000131fd1080', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":8,\"helmet_1\":56}}'),
(119, 'user_mask', 'steam:110000131fd1080', '{\"hasMask\":true,\"skin\":{\"mask_1\":111,\"mask_2\":4}}'),
(120, 'user_glasses', 'steam:110000131fd1080', '{\"skin\":{\"glasses_2\":0,\"glasses_1\":5},\"hasGlasses\":true}'),
(121, 'user_mask', 'steam:11000013f407870', '{}'),
(122, 'user_ears', 'steam:11000013f407870', '{}'),
(123, 'user_glasses', 'steam:11000013f407870', '{}'),
(124, 'property', 'steam:11000013f407870', '{}'),
(125, 'user_helmet', 'steam:11000013f407870', '{}'),
(126, 'property', 'steam:1100001406869f3', '{}'),
(127, 'user_ears', 'steam:1100001406869f3', '{}'),
(128, 'user_glasses', 'steam:1100001406869f3', '{}'),
(129, 'user_helmet', 'steam:1100001406869f3', '{}'),
(130, 'user_mask', 'steam:1100001406869f3', '{\"hasMask\":true,\"skin\":{\"mask_1\":52,\"mask_2\":0}}'),
(131, 'user_mask', 'steam:11000013670e3eb', '{}'),
(132, 'property', 'steam:11000013670e3eb', '{}'),
(133, 'user_ears', 'steam:11000013670e3eb', '{}'),
(134, 'user_helmet', 'steam:11000013670e3eb', '{}'),
(135, 'user_glasses', 'steam:11000013670e3eb', '{}'),
(136, 'user_glasses', 'steam:110000118e2db50', '{}'),
(137, 'user_helmet', 'steam:110000118e2db50', '{}'),
(138, 'user_ears', 'steam:110000118e2db50', '{}'),
(139, 'property', 'steam:110000118e2db50', '{}'),
(140, 'user_mask', 'steam:110000118e2db50', '{}'),
(141, 'user_ears', 'steam:1100001340de602', '{}'),
(142, 'user_helmet', 'steam:1100001340de602', '{}'),
(143, 'user_glasses', 'steam:1100001340de602', '{}'),
(144, 'user_mask', 'steam:1100001340de602', '{\"hasMask\":true,\"skin\":{\"mask_1\":111,\"mask_2\":9}}'),
(145, 'property', 'steam:1100001340de602', '{\"weapons\":[{\"ammo\":969,\"name\":\"WEAPON_PISTOL\"}],\"dressing\":[{\"label\":\"costard\",\"skin\":{\"eye_color\":0,\"decals_2\":0,\"ears_1\":-1,\"complexion_2\":0,\"chest_3\":0,\"shoes_2\":0,\"bodyb_1\":0,\"makeup_3\":0,\"tshirt_1\":21,\"bproof_1\":0,\"pants_2\":2,\"hair_color_1\":0,\"blush_1\":0,\"helmet_2\":0,\"glasses_1\":5,\"torso_1\":29,\"chain_1\":0,\"shoes_1\":7,\"eyebrows_4\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"makeup_2\":0,\"hair_2\":0,\"chain_2\":0,\"blemishes_1\":0,\"skin\":8,\"torso_2\":0,\"makeup_1\":0,\"bproof_2\":0,\"lipstick_1\":0,\"hair_1\":21,\"decals_1\":0,\"watches_2\":0,\"sun_2\":0,\"mask_2\":9,\"eyebrows_2\":5,\"blemishes_2\":0,\"lipstick_2\":0,\"age_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"mask_1\":111,\"eyebrows_1\":0,\"pants_1\":50,\"face\":0,\"blush_2\":0,\"ears_2\":0,\"beard_4\":0,\"bodyb_2\":0,\"glasses_2\":0,\"beard_2\":5,\"bags_2\":0,\"chest_2\":0,\"moles_1\":0,\"chest_1\":0,\"blush_3\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"sex\":0,\"hair_color_2\":3,\"arms_2\":0,\"moles_2\":0,\"beard_1\":6,\"beard_3\":0,\"bags_1\":0,\"lipstick_4\":0,\"eyebrows_3\":0,\"age_1\":0,\"makeup_4\":0,\"watches_1\":-1,\"arms\":1}},{\"label\":\"bloods\",\"skin\":{\"blush_2\":0,\"decals_2\":0,\"ears_1\":-1,\"complexion_2\":0,\"chest_3\":0,\"moles_1\":0,\"bodyb_1\":0,\"makeup_3\":0,\"tshirt_1\":15,\"bproof_1\":0,\"pants_2\":4,\"hair_color_1\":0,\"beard_4\":0,\"helmet_2\":0,\"glasses_1\":5,\"torso_1\":15,\"chain_1\":0,\"shoes_1\":6,\"eyebrows_4\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"makeup_2\":0,\"hair_2\":0,\"chain_2\":0,\"blemishes_1\":0,\"skin\":8,\"torso_2\":0,\"makeup_1\":0,\"bproof_2\":0,\"lipstick_1\":0,\"hair_1\":21,\"decals_1\":0,\"watches_2\":0,\"sun_2\":0,\"mask_2\":9,\"eyebrows_2\":5,\"blemishes_2\":0,\"lipstick_2\":0,\"age_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"mask_1\":111,\"eyebrows_1\":0,\"pants_1\":42,\"face\":0,\"age_1\":0,\"bodyb_2\":0,\"ears_2\":0,\"beard_1\":6,\"glasses_2\":0,\"beard_2\":5,\"bags_2\":0,\"chest_2\":0,\"chest_1\":0,\"blush_3\":0,\"moles_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"sex\":0,\"hair_color_2\":3,\"arms_2\":0,\"shoes_2\":0,\"blush_1\":0,\"beard_3\":0,\"bags_1\":0,\"lipstick_4\":0,\"eyebrows_3\":0,\"makeup_4\":0,\"eye_color\":0,\"watches_1\":-1,\"arms\":15}}]}'),
(146, 'user_glasses', 'steam:11000013edab306', '{}'),
(147, 'user_helmet', 'steam:11000013edab306', '{}'),
(148, 'user_mask', 'steam:11000013edab306', '{}'),
(149, 'property', 'steam:11000013edab306', '{}'),
(150, 'user_ears', 'steam:11000013edab306', '{}'),
(151, 'user_mask', 'steam:110000140c5219a', '{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":52}}'),
(152, 'user_helmet', 'steam:110000140c5219a', '{\"skin\":{\"helmet_1\":58,\"helmet_2\":2},\"hasHelmet\":true}'),
(153, 'user_glasses', 'steam:110000140c5219a', '{\"hasGlasses\":true,\"skin\":{\"glasses_2\":7,\"glasses_1\":5}}'),
(154, 'user_ears', 'steam:110000140c5219a', '{\"hasEars\":true,\"skin\":{\"ears_2\":0,\"ears_1\":-1}}'),
(155, 'property', 'steam:110000140c5219a', '{\"dressing\":[{\"label\":\"comandant\",\"skin\":{\"sex\":0,\"chest_3\":0,\"eyebrows_1\":0,\"makeup_2\":0,\"bproof_2\":1,\"bproof_1\":11,\"complexion_1\":0,\"moles_1\":0,\"tshirt_2\":0,\"arms\":41,\"age_2\":0,\"torso_2\":0,\"skin\":8,\"lipstick_3\":0,\"mask_2\":0,\"ears_2\":0,\"hair_2\":0,\"chain_1\":125,\"bracelets_1\":-1,\"hair_color_1\":0,\"beard_2\":0,\"helmet_2\":2,\"watches_1\":4,\"lipstick_1\":0,\"blush_3\":0,\"hair_color_2\":0,\"bodyb_2\":0,\"eyebrows_2\":0,\"glasses_2\":0,\"pants_2\":0,\"helmet_1\":58,\"sun_1\":0,\"makeup_4\":0,\"arms_2\":0,\"tshirt_1\":15,\"blush_1\":0,\"blemishes_2\":0,\"decals_2\":0,\"eye_color\":0,\"pants_1\":26,\"lipstick_2\":0,\"lipstick_4\":0,\"hair_1\":43,\"shoes_1\":1,\"moles_2\":0,\"sun_2\":0,\"ears_1\":2,\"shoes_2\":0,\"bodyb_1\":0,\"complexion_2\":0,\"decals_1\":0,\"beard_4\":0,\"bags_1\":0,\"chest_1\":0,\"mask_1\":0,\"age_1\":0,\"glasses_1\":5,\"chain_2\":0,\"blush_2\":0,\"blemishes_1\":0,\"watches_2\":0,\"makeup_1\":0,\"eyebrows_4\":0,\"beard_1\":0,\"chest_2\":0,\"makeup_3\":0,\"bags_2\":0,\"torso_1\":50,\"bracelets_2\":0,\"beard_3\":0,\"eyebrows_3\":0,\"face\":0}},{\"label\":\"civil\",\"skin\":{\"sex\":0,\"chest_3\":0,\"eyebrows_1\":0,\"makeup_2\":0,\"bproof_2\":0,\"bproof_1\":0,\"complexion_1\":0,\"makeup_1\":0,\"tshirt_2\":0,\"arms\":0,\"age_2\":0,\"torso_2\":2,\"skin\":8,\"lipstick_3\":0,\"mask_2\":0,\"torso_1\":0,\"hair_2\":0,\"chain_1\":0,\"bracelets_1\":-1,\"hair_color_1\":0,\"beard_2\":0,\"helmet_2\":0,\"watches_1\":4,\"lipstick_1\":0,\"blush_3\":0,\"hair_color_2\":0,\"bodyb_2\":0,\"eyebrows_2\":0,\"glasses_2\":0,\"pants_2\":0,\"helmet_1\":-1,\"sun_1\":0,\"makeup_4\":0,\"arms_2\":0,\"watches_2\":0,\"blush_1\":0,\"blemishes_2\":0,\"chest_1\":0,\"decals_1\":0,\"pants_1\":26,\"lipstick_2\":0,\"lipstick_4\":0,\"hair_1\":43,\"shoes_1\":1,\"moles_2\":0,\"sun_2\":0,\"ears_1\":2,\"shoes_2\":0,\"bodyb_1\":0,\"beard_1\":0,\"complexion_2\":0,\"tshirt_1\":15,\"bags_1\":0,\"bags_2\":0,\"mask_1\":0,\"age_1\":0,\"moles_1\":0,\"chain_2\":0,\"glasses_1\":5,\"blemishes_1\":0,\"beard_4\":0,\"decals_2\":0,\"eyebrows_4\":0,\"beard_3\":0,\"chest_2\":0,\"makeup_3\":0,\"blush_2\":0,\"eye_color\":0,\"ears_2\":0,\"bracelets_2\":0,\"eyebrows_3\":0,\"face\":0}},{\"label\":\"commandant\",\"skin\":{\"sex\":0,\"chest_3\":0,\"eyebrows_1\":0,\"makeup_2\":0,\"bproof_2\":1,\"bproof_1\":11,\"complexion_1\":0,\"moles_1\":0,\"tshirt_2\":0,\"arms\":41,\"age_2\":0,\"torso_2\":0,\"skin\":8,\"lipstick_3\":0,\"mask_2\":0,\"torso_1\":50,\"hair_2\":0,\"chain_1\":125,\"bracelets_1\":-1,\"hair_color_1\":0,\"beard_2\":0,\"helmet_2\":2,\"watches_1\":4,\"lipstick_1\":0,\"blush_3\":0,\"hair_color_2\":0,\"bodyb_2\":0,\"eyebrows_2\":0,\"glasses_2\":0,\"pants_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"makeup_4\":0,\"arms_2\":0,\"watches_2\":0,\"blush_1\":0,\"blemishes_2\":0,\"chest_1\":0,\"shoes_2\":0,\"pants_1\":26,\"lipstick_2\":0,\"lipstick_4\":0,\"hair_1\":43,\"shoes_1\":1,\"moles_2\":0,\"sun_2\":0,\"ears_1\":2,\"bodyb_1\":0,\"complexion_2\":0,\"makeup_1\":0,\"beard_3\":0,\"decals_1\":0,\"bags_1\":45,\"tshirt_1\":122,\"mask_1\":0,\"age_1\":0,\"helmet_1\":58,\"chain_2\":0,\"glasses_1\":5,\"blemishes_1\":0,\"beard_4\":0,\"decals_2\":0,\"eyebrows_4\":0,\"blush_2\":0,\"chest_2\":0,\"makeup_3\":0,\"bags_2\":0,\"eye_color\":0,\"ears_2\":0,\"beard_1\":0,\"eyebrows_3\":0,\"face\":0}},{\"label\":\"civil classe\",\"skin\":{\"sex\":0,\"shoes_2\":12,\"eyebrows_1\":0,\"makeup_2\":0,\"bproof_2\":0,\"bproof_1\":0,\"complexion_1\":0,\"moles_1\":0,\"tshirt_2\":0,\"blemishes_2\":0,\"age_2\":0,\"torso_2\":0,\"skin\":8,\"lipstick_3\":0,\"mask_2\":0,\"ears_2\":0,\"hair_2\":0,\"chain_1\":0,\"bracelets_1\":-1,\"hair_color_1\":0,\"beard_2\":0,\"helmet_2\":0,\"watches_1\":4,\"lipstick_1\":0,\"blush_3\":0,\"hair_color_2\":0,\"bodyb_2\":0,\"eyebrows_2\":0,\"glasses_2\":0,\"pants_2\":5,\"helmet_1\":-1,\"sun_1\":0,\"makeup_4\":0,\"arms_2\":0,\"tshirt_1\":15,\"blush_1\":0,\"pants_1\":24,\"decals_2\":0,\"chest_3\":0,\"complexion_2\":0,\"lipstick_2\":0,\"lipstick_4\":0,\"hair_1\":43,\"bodyb_1\":0,\"moles_2\":0,\"sun_2\":0,\"ears_1\":-1,\"arms\":11,\"eye_color\":0,\"bags_1\":0,\"decals_1\":0,\"chest_1\":0,\"glasses_1\":5,\"shoes_1\":3,\"mask_1\":0,\"age_1\":0,\"blush_2\":0,\"chain_2\":0,\"watches_2\":0,\"blemishes_1\":0,\"makeup_1\":0,\"beard_1\":0,\"eyebrows_4\":0,\"beard_4\":0,\"chest_2\":0,\"makeup_3\":0,\"bags_2\":0,\"torso_1\":13,\"bracelets_2\":0,\"beard_3\":0,\"eyebrows_3\":0,\"face\":0}}]}'),
(156, 'user_mask', 'steam:1100001121943f8', '{\"hasMask\":true,\"skin\":{\"mask_1\":111,\"mask_2\":15}}'),
(157, 'property', 'steam:1100001121943f8', '{\"dressing\":[{\"label\":\"colle roulé\",\"skin\":{\"helmet_2\":2,\"pants_1\":42,\"lipstick_4\":0,\"moles_1\":0,\"chain_2\":0,\"blemishes_1\":0,\"hair_2\":0,\"eyebrows_3\":0,\"tshirt_2\":0,\"eye_color\":0,\"watches_2\":0,\"watches_1\":-1,\"blemishes_2\":0,\"skin\":5,\"chest_2\":0,\"beard_1\":0,\"glasses_1\":5,\"bproof_2\":0,\"ears_2\":0,\"mask_1\":111,\"complexion_2\":0,\"chest_1\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":5,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":0,\"mask_2\":15,\"pants_2\":2,\"eyebrows_1\":0,\"blush_1\":0,\"ears_1\":0,\"decals_2\":0,\"sex\":0,\"age_2\":0,\"blush_2\":0,\"helmet_1\":58,\"complexion_1\":0,\"bags_2\":0,\"decals_1\":0,\"hair_color_2\":0,\"bodyb_2\":0,\"makeup_2\":0,\"blush_3\":0,\"bags_1\":0,\"chain_1\":0,\"shoes_1\":26,\"age_1\":0,\"beard_2\":0,\"bodyb_1\":0,\"glasses_2\":4,\"chest_3\":0,\"arms\":17,\"face\":0,\"makeup_3\":0,\"eyebrows_2\":0,\"beard_4\":0,\"hair_color_1\":0,\"torso_1\":111,\"eyebrows_4\":0,\"lipstick_2\":0,\"moles_2\":0,\"tshirt_1\":15,\"arms_2\":2,\"lipstick_3\":0,\"lipstick_1\":0,\"hair_1\":51,\"sun_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"bracelets_1\":-1}},{\"label\":\"sweat\",\"skin\":{\"helmet_2\":2,\"pants_1\":59,\"lipstick_4\":0,\"moles_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"shoes_1\":62,\"eyebrows_3\":0,\"tshirt_2\":0,\"eye_color\":0,\"watches_2\":0,\"decals_1\":0,\"blemishes_2\":0,\"skin\":5,\"chest_2\":0,\"eyebrows_4\":0,\"glasses_1\":5,\"bproof_2\":0,\"ears_2\":0,\"mask_1\":111,\"complexion_2\":0,\"chest_1\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":2,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":0,\"mask_2\":15,\"pants_2\":9,\"eyebrows_1\":0,\"blush_1\":0,\"ears_1\":0,\"decals_2\":0,\"sex\":0,\"age_2\":0,\"blush_2\":0,\"helmet_1\":58,\"complexion_1\":0,\"bags_2\":0,\"bodyb_2\":0,\"hair_color_2\":0,\"beard_1\":0,\"moles_2\":0,\"blush_3\":0,\"bags_1\":0,\"chain_2\":0,\"eyebrows_2\":0,\"age_1\":0,\"chain_1\":0,\"bodyb_1\":0,\"glasses_2\":4,\"chest_3\":0,\"arms\":17,\"face\":0,\"makeup_3\":0,\"watches_1\":-1,\"beard_4\":0,\"hair_color_1\":0,\"beard_2\":0,\"hair_1\":51,\"lipstick_2\":0,\"torso_1\":134,\"tshirt_1\":15,\"hair_2\":0,\"arms_2\":2,\"lipstick_1\":0,\"lipstick_3\":0,\"sun_1\":0,\"bproof_1\":0,\"shoes_2\":4,\"bracelets_1\":-1}},{\"label\":\"sac\",\"skin\":{\"helmet_2\":2,\"pants_1\":59,\"lipstick_4\":0,\"moles_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"shoes_1\":62,\"chest_3\":0,\"tshirt_2\":0,\"eye_color\":0,\"watches_2\":0,\"decals_1\":0,\"blemishes_2\":0,\"skin\":5,\"chest_2\":0,\"eyebrows_4\":0,\"glasses_1\":5,\"bproof_2\":0,\"ears_2\":0,\"mask_1\":111,\"complexion_2\":0,\"chest_1\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":2,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":0,\"mask_2\":15,\"pants_2\":9,\"eyebrows_1\":0,\"blush_1\":0,\"ears_1\":0,\"decals_2\":0,\"sex\":0,\"age_2\":0,\"blush_2\":0,\"shoes_2\":4,\"complexion_1\":0,\"bags_2\":0,\"hair_color_2\":0,\"bodyb_2\":0,\"eyebrows_3\":0,\"watches_1\":-1,\"blush_3\":0,\"bags_1\":41,\"chain_2\":0,\"beard_4\":0,\"age_1\":0,\"beard_1\":0,\"bodyb_1\":0,\"glasses_2\":4,\"arms\":17,\"chain_1\":0,\"face\":0,\"makeup_3\":0,\"beard_2\":0,\"eyebrows_2\":0,\"hair_color_1\":0,\"torso_1\":134,\"hair_2\":0,\"lipstick_2\":0,\"moles_2\":0,\"tshirt_1\":15,\"arms_2\":2,\"helmet_1\":58,\"lipstick_1\":0,\"lipstick_3\":0,\"sun_1\":0,\"hair_1\":51,\"bproof_1\":0,\"bracelets_1\":-1}},{\"label\":\"white pull\",\"skin\":{\"helmet_2\":2,\"pants_1\":37,\"lipstick_4\":0,\"moles_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"hair_2\":0,\"chest_3\":0,\"tshirt_2\":0,\"eye_color\":0,\"watches_2\":0,\"decals_1\":0,\"blemishes_2\":0,\"skin\":5,\"chest_2\":0,\"eyebrows_4\":0,\"glasses_1\":5,\"bproof_2\":0,\"ears_2\":0,\"mask_1\":111,\"complexion_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":18,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":0,\"mask_2\":15,\"pants_2\":2,\"eyebrows_1\":0,\"blush_1\":0,\"ears_1\":0,\"decals_2\":0,\"sex\":0,\"age_2\":0,\"blush_2\":0,\"helmet_1\":58,\"complexion_1\":0,\"bags_2\":0,\"hair_color_2\":0,\"beard_1\":0,\"chain_2\":0,\"eyebrows_3\":0,\"blush_3\":0,\"bags_1\":0,\"chest_1\":0,\"chain_1\":0,\"age_1\":0,\"moles_2\":0,\"hair_1\":51,\"glasses_2\":4,\"bodyb_1\":0,\"arms\":17,\"face\":0,\"makeup_3\":0,\"watches_1\":-1,\"beard_4\":0,\"hair_color_1\":0,\"beard_2\":0,\"torso_1\":190,\"lipstick_2\":0,\"lipstick_3\":0,\"tshirt_1\":15,\"arms_2\":2,\"bproof_1\":0,\"lipstick_1\":0,\"shoes_1\":26,\"sun_1\":0,\"eyebrows_2\":0,\"shoes_2\":2,\"bracelets_1\":-1}},{\"label\":\"white par balle\",\"skin\":{\"helmet_2\":2,\"pants_1\":59,\"lipstick_4\":0,\"moles_1\":0,\"chain_1\":0,\"blemishes_1\":0,\"hair_2\":0,\"chest_3\":0,\"tshirt_2\":0,\"eye_color\":0,\"watches_2\":0,\"watches_1\":-1,\"blemishes_2\":0,\"skin\":5,\"chest_2\":0,\"beard_1\":10,\"glasses_1\":5,\"bproof_2\":8,\"ears_2\":0,\"mask_1\":111,\"complexion_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"makeup_4\":9,\"torso_2\":2,\"makeup_1\":53,\"bracelets_2\":0,\"beard_3\":0,\"mask_2\":15,\"pants_2\":9,\"eyebrows_1\":0,\"blush_1\":0,\"ears_1\":0,\"decals_2\":0,\"sex\":0,\"age_2\":0,\"blush_2\":0,\"helmet_1\":58,\"complexion_1\":0,\"bags_2\":0,\"hair_color_2\":0,\"decals_1\":0,\"eyebrows_3\":0,\"chest_1\":0,\"blush_3\":0,\"bags_1\":0,\"chain_2\":0,\"moles_2\":0,\"age_1\":0,\"bodyb_1\":0,\"arms\":23,\"glasses_2\":4,\"hair_1\":51,\"makeup_2\":10,\"face\":0,\"makeup_3\":29,\"beard_2\":10,\"beard_4\":0,\"hair_color_1\":0,\"eyebrows_2\":0,\"eyebrows_4\":0,\"lipstick_2\":0,\"torso_1\":5,\"tshirt_1\":15,\"arms_2\":0,\"bproof_1\":17,\"lipstick_1\":0,\"lipstick_3\":0,\"sun_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"bracelets_1\":-1}},{\"label\":\"white par balles short\",\"skin\":{\"helmet_2\":2,\"pants_1\":42,\"lipstick_4\":0,\"moles_1\":0,\"makeup_2\":10,\"blemishes_1\":0,\"hair_2\":0,\"chest_3\":0,\"tshirt_2\":0,\"eye_color\":0,\"watches_2\":0,\"decals_1\":0,\"blemishes_2\":0,\"bproof_1\":17,\"chest_2\":0,\"eyebrows_4\":0,\"glasses_1\":5,\"bproof_2\":8,\"ears_2\":0,\"mask_1\":111,\"moles_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"makeup_4\":9,\"torso_2\":0,\"makeup_1\":53,\"bracelets_2\":0,\"beard_3\":0,\"mask_2\":15,\"pants_2\":2,\"eyebrows_1\":0,\"blush_1\":0,\"ears_1\":0,\"decals_2\":0,\"sex\":0,\"arms\":23,\"blush_2\":0,\"shoes_2\":2,\"complexion_1\":0,\"bags_2\":0,\"hair_color_2\":0,\"watches_1\":-1,\"eyebrows_3\":0,\"chest_1\":0,\"blush_3\":0,\"bags_1\":0,\"chain_2\":0,\"hair_1\":51,\"age_1\":0,\"chain_1\":0,\"bodyb_1\":0,\"glasses_2\":4,\"shoes_1\":31,\"age_2\":0,\"face\":0,\"makeup_3\":29,\"beard_4\":0,\"beard_2\":10,\"hair_color_1\":0,\"eyebrows_2\":0,\"beard_1\":10,\"lipstick_2\":0,\"torso_1\":5,\"tshirt_1\":15,\"lipstick_3\":0,\"arms_2\":0,\"lipstick_1\":0,\"complexion_2\":0,\"sun_1\":0,\"skin\":5,\"helmet_1\":58,\"bracelets_1\":-1}}]}'),
(158, 'user_glasses', 'steam:1100001121943f8', '{\"hasGlasses\":true,\"skin\":{\"glasses_1\":5,\"glasses_2\":4}}'),
(159, 'user_ears', 'steam:1100001121943f8', '{\"hasEars\":true,\"skin\":{\"ears_2\":0,\"ears_1\":0}}'),
(160, 'user_helmet', 'steam:1100001121943f8', '{\"skin\":{\"helmet_1\":58,\"helmet_2\":2},\"hasHelmet\":true}'),
(161, 'user_ears', 'steam:110000140ef2ec6', '{}'),
(162, 'user_mask', 'steam:110000140ef2ec6', '{}'),
(163, 'property', 'steam:110000140ef2ec6', '{}'),
(164, 'user_helmet', 'steam:110000140ef2ec6', '{}'),
(165, 'user_glasses', 'steam:110000140ef2ec6', '{}'),
(166, 'property', 'steam:11000013c7a9b33', '{\"dressing\":[{\"label\":\"flic\",\"skin\":{\"helmet_2\":0,\"pants_1\":26,\"lipstick_4\":0,\"moles_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"hair_2\":0,\"chest_3\":0,\"tshirt_2\":0,\"eye_color\":6,\"watches_2\":0,\"decals_1\":0,\"blemishes_2\":0,\"skin\":3,\"chest_2\":0,\"beard_1\":10,\"glasses_1\":0,\"bodyb_1\":0,\"ears_2\":0,\"mask_1\":0,\"complexion_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":3,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":0,\"mask_2\":0,\"pants_2\":0,\"eyebrows_1\":29,\"blush_1\":0,\"ears_1\":2,\"decals_2\":0,\"sex\":0,\"age_2\":0,\"blush_2\":0,\"shoes_2\":2,\"complexion_1\":0,\"bags_2\":0,\"hair_color_2\":0,\"chain_2\":0,\"bproof_2\":1,\"moles_2\":0,\"blush_3\":0,\"bags_1\":0,\"eyebrows_3\":0,\"bproof_1\":11,\"age_1\":0,\"chest_1\":0,\"chain_1\":0,\"glasses_2\":0,\"torso_1\":139,\"watches_1\":-1,\"face\":0,\"makeup_3\":0,\"shoes_1\":7,\"arms\":42,\"hair_color_1\":0,\"eyebrows_4\":0,\"beard_4\":0,\"eyebrows_2\":10,\"beard_2\":10,\"tshirt_1\":58,\"hair_1\":18,\"lipstick_3\":0,\"lipstick_1\":0,\"lipstick_2\":0,\"sun_1\":0,\"arms_2\":0,\"helmet_1\":-1,\"bracelets_1\":-1}},{\"label\":\"flci mais ripoux\",\"skin\":{\"helmet_2\":0,\"pants_1\":31,\"lipstick_4\":0,\"moles_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"hair_2\":0,\"chest_3\":0,\"tshirt_2\":0,\"eye_color\":6,\"watches_2\":0,\"watches_1\":-1,\"blemishes_2\":0,\"skin\":3,\"chest_2\":0,\"eyebrows_4\":0,\"glasses_1\":5,\"bodyb_1\":0,\"ears_2\":0,\"mask_1\":0,\"complexion_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":3,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":0,\"mask_2\":0,\"pants_2\":0,\"eyebrows_1\":29,\"blush_1\":0,\"ears_1\":2,\"decals_2\":0,\"sex\":0,\"age_2\":0,\"blush_2\":0,\"shoes_2\":0,\"complexion_1\":0,\"torso_1\":139,\"decals_1\":0,\"hair_color_2\":0,\"chain_2\":0,\"bproof_2\":1,\"blush_3\":0,\"bags_1\":0,\"moles_2\":0,\"eyebrows_3\":0,\"age_1\":0,\"eyebrows_2\":10,\"chest_1\":0,\"glasses_2\":0,\"chain_1\":0,\"beard_2\":10,\"face\":0,\"makeup_3\":0,\"arms\":42,\"beard_4\":0,\"hair_color_1\":0,\"lipstick_3\":0,\"hair_1\":18,\"lipstick_2\":0,\"beard_1\":10,\"tshirt_1\":57,\"shoes_1\":25,\"arms_2\":0,\"lipstick_1\":0,\"bproof_1\":11,\"sun_1\":0,\"bags_2\":0,\"helmet_1\":-1,\"bracelets_1\":-1}},{\"label\":\"BM\",\"skin\":{\"helmet_2\":0,\"pants_1\":31,\"lipstick_4\":0,\"moles_1\":0,\"chain_1\":0,\"blemishes_1\":0,\"hair_2\":0,\"chest_3\":0,\"tshirt_2\":0,\"eye_color\":6,\"watches_2\":0,\"watches_1\":-1,\"blemishes_2\":0,\"skin\":3,\"chest_2\":0,\"eyebrows_4\":0,\"glasses_1\":0,\"bproof_2\":0,\"ears_2\":0,\"mask_1\":0,\"complexion_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"makeup_4\":0,\"torso_2\":3,\"makeup_1\":0,\"bracelets_2\":0,\"beard_3\":0,\"mask_2\":0,\"pants_2\":0,\"eyebrows_1\":29,\"blush_1\":0,\"ears_1\":2,\"decals_2\":0,\"sex\":0,\"arms\":42,\"blush_2\":0,\"helmet_1\":-1,\"complexion_1\":0,\"bags_2\":0,\"eyebrows_3\":0,\"hair_color_2\":0,\"decals_1\":0,\"beard_1\":10,\"blush_3\":0,\"bags_1\":44,\"torso_1\":139,\"chest_1\":0,\"age_1\":0,\"chain_2\":0,\"age_2\":0,\"glasses_2\":0,\"bodyb_1\":0,\"shoes_1\":25,\"face\":0,\"makeup_3\":0,\"makeup_2\":0,\"beard_4\":0,\"hair_color_1\":0,\"beard_2\":10,\"hair_1\":18,\"lipstick_2\":0,\"arms_2\":0,\"tshirt_1\":55,\"moles_2\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"bproof_1\":0,\"sun_1\":0,\"eyebrows_2\":10,\"shoes_2\":0,\"bracelets_1\":-1}}]}'),
(167, 'user_ears', 'steam:11000013c7a9b33', '{}'),
(168, 'user_helmet', 'steam:11000013c7a9b33', '{\"skin\":{\"helmet_2\":20,\"helmet_1\":104},\"hasHelmet\":true}'),
(169, 'user_mask', 'steam:11000013c7a9b33', '{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":35}}'),
(170, 'user_glasses', 'steam:11000013c7a9b33', '{}'),
(171, 'user_mask', 'steam:110000112512a04', '{}'),
(172, 'property', 'steam:110000112512a04', '{}'),
(173, 'user_glasses', 'steam:110000112512a04', '{}'),
(174, 'user_ears', 'steam:110000112512a04', '{}'),
(175, 'user_helmet', 'steam:110000112512a04', '{}'),
(176, 'user_helmet', 'steam:11000013b11efec', '{}'),
(177, 'user_glasses', 'steam:11000013b11efec', '{}'),
(178, 'user_mask', 'steam:11000013b11efec', '{}'),
(179, 'user_ears', 'steam:11000013b11efec', '{}'),
(180, 'property', 'steam:11000013b11efec', '{}'),
(181, 'property', 'steam:110000136c3449e', '{}'),
(182, 'user_ears', 'steam:110000136c3449e', '{}'),
(183, 'user_helmet', 'steam:110000136c3449e', '{}'),
(184, 'user_mask', 'steam:110000136c3449e', '{}'),
(185, 'user_glasses', 'steam:110000136c3449e', '{}'),
(186, 'user_glasses', 'steam:11000013618b105', '{}'),
(187, 'user_mask', 'steam:11000013618b105', '{\"hasMask\":true,\"skin\":{\"mask_1\":56,\"mask_2\":1}}'),
(188, 'user_helmet', 'steam:11000013618b105', '{}'),
(189, 'user_ears', 'steam:11000013618b105', '{}'),
(190, 'property', 'steam:11000013618b105', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(191, 'user_ears', 'steam:11000011b68ab8f', '{}'),
(192, 'property', 'steam:11000011b68ab8f', '{}'),
(193, 'user_mask', 'steam:11000011b68ab8f', '{\"hasMask\":true,\"skin\":{\"mask_1\":24,\"mask_2\":0}}'),
(194, 'user_helmet', 'steam:11000011b68ab8f', '{}'),
(195, 'user_glasses', 'steam:11000011b68ab8f', '{}'),
(196, 'user_glasses', 'steam:110000106651019', '{}'),
(197, 'user_mask', 'steam:110000106651019', '{}'),
(198, 'user_helmet', 'steam:110000106651019', '{}'),
(199, 'property', 'steam:110000106651019', '{\"dressing\":[{\"label\":\"BLANC\",\"skin\":{\"chain_1\":0,\"moles_2\":0,\"beard_3\":2,\"chain_2\":0,\"ears_2\":0,\"hair_2\":2,\"bodyb_2\":0,\"helmet_1\":-1,\"blemishes_2\":0,\"beard_2\":10,\"beard_4\":2,\"decals_1\":0,\"moles_1\":0,\"hair_color_2\":0,\"complexion_2\":0,\"makeup_1\":0,\"blush_3\":0,\"bproof_2\":0,\"watches_1\":-1,\"arms_2\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"bracelets_2\":0,\"shoes_2\":0,\"bags_1\":0,\"bodyb_1\":0,\"pants_2\":0,\"chest_3\":0,\"lipstick_1\":0,\"blemishes_1\":0,\"torso_1\":7,\"glasses_1\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"watches_2\":0,\"sex\":0,\"hair_1\":9,\"bags_2\":0,\"tshirt_2\":0,\"chest_2\":0,\"hair_color_1\":1,\"makeup_2\":0,\"shoes_1\":4,\"eyebrows_3\":0,\"beard_1\":9,\"skin\":4,\"bproof_1\":0,\"makeup_3\":0,\"sun_1\":0,\"ears_1\":-1,\"face\":18,\"age_1\":0,\"eyebrows_1\":0,\"blush_1\":0,\"tshirt_1\":23,\"eyebrows_2\":0,\"lipstick_4\":0,\"chest_1\":0,\"lipstick_3\":0,\"lipstick_2\":0,\"arms\":1,\"age_2\":0,\"mask_1\":0,\"blush_2\":0,\"helmet_2\":0,\"decals_2\":0,\"pants_1\":8,\"sun_2\":0,\"eye_color\":0,\"torso_2\":0,\"makeup_4\":0,\"mask_2\":0}},{\"label\":\"INCONITO\",\"skin\":{\"chain_1\":0,\"moles_2\":0,\"beard_3\":2,\"chain_2\":0,\"ears_2\":0,\"hair_2\":2,\"bodyb_2\":0,\"helmet_1\":-1,\"blemishes_2\":0,\"beard_2\":10,\"beard_4\":2,\"decals_1\":0,\"moles_1\":0,\"hair_color_2\":0,\"complexion_2\":0,\"makeup_1\":0,\"blush_3\":0,\"bproof_2\":0,\"watches_1\":-1,\"arms_2\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"bracelets_2\":0,\"shoes_2\":2,\"bags_1\":0,\"bodyb_1\":0,\"pants_2\":2,\"chest_3\":0,\"bproof_1\":0,\"blemishes_1\":0,\"torso_1\":12,\"glasses_1\":5,\"ears_1\":-1,\"eyebrows_4\":0,\"face\":18,\"sex\":0,\"hair_1\":9,\"bags_2\":0,\"tshirt_2\":0,\"chest_2\":0,\"hair_color_1\":1,\"makeup_2\":0,\"shoes_1\":8,\"eyebrows_3\":0,\"lipstick_1\":0,\"skin\":4,\"beard_1\":9,\"lipstick_2\":0,\"sun_1\":0,\"chest_1\":0,\"glasses_2\":0,\"eyebrows_2\":0,\"eyebrows_1\":0,\"blush_1\":0,\"age_1\":0,\"tshirt_1\":15,\"makeup_3\":0,\"watches_2\":0,\"lipstick_3\":0,\"lipstick_4\":0,\"blush_2\":0,\"age_2\":0,\"mask_1\":0,\"pants_1\":4,\"arms\":1,\"decals_2\":0,\"helmet_2\":0,\"sun_2\":0,\"eye_color\":0,\"torso_2\":2,\"makeup_4\":0,\"mask_2\":0}},{\"label\":\"vagos\",\"skin\":{\"chain_1\":0,\"moles_2\":0,\"beard_3\":2,\"chain_2\":0,\"ears_2\":0,\"beard_1\":9,\"bodyb_2\":0,\"helmet_1\":21,\"blemishes_2\":0,\"beard_2\":10,\"beard_4\":2,\"decals_1\":0,\"moles_1\":0,\"hair_color_2\":0,\"complexion_2\":0,\"makeup_1\":0,\"blush_3\":0,\"bproof_2\":0,\"watches_1\":-1,\"arms_2\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"bracelets_2\":0,\"shoes_2\":6,\"bags_1\":0,\"bodyb_1\":0,\"pants_2\":0,\"chest_3\":0,\"lipstick_1\":0,\"blemishes_1\":0,\"torso_1\":14,\"glasses_1\":5,\"ears_1\":-1,\"eyebrows_4\":0,\"watches_2\":0,\"sex\":0,\"hair_1\":9,\"bags_2\":0,\"tshirt_2\":0,\"chest_2\":0,\"hair_color_1\":1,\"makeup_2\":0,\"shoes_1\":8,\"eyebrows_3\":0,\"eyebrows_2\":0,\"skin\":4,\"hair_2\":2,\"makeup_3\":0,\"sun_1\":0,\"bproof_1\":0,\"blush_2\":0,\"glasses_2\":0,\"eyebrows_1\":0,\"blush_1\":0,\"chest_1\":0,\"tshirt_1\":15,\"age_1\":0,\"face\":18,\"lipstick_3\":0,\"helmet_2\":5,\"lipstick_4\":0,\"age_2\":0,\"mask_1\":0,\"torso_2\":1,\"arms\":1,\"decals_2\":0,\"pants_1\":20,\"sun_2\":0,\"lipstick_2\":0,\"eye_color\":0,\"makeup_4\":0,\"mask_2\":0}}]}'),
(200, 'user_ears', 'steam:110000106651019', '{}'),
(201, 'user_helmet', 'steam:11000013c2318b2', '{}'),
(202, 'user_ears', 'steam:11000013c2318b2', '{}'),
(203, 'user_mask', 'steam:11000013c2318b2', '{}'),
(204, 'user_glasses', 'steam:11000013c2318b2', '{}'),
(205, 'property', 'steam:11000013c2318b2', '{\"dressing\":[{\"label\":\"blanc\",\"skin\":{\"chain_1\":0,\"moles_2\":0,\"beard_3\":0,\"chain_2\":0,\"ears_2\":0,\"hair_2\":0,\"bodyb_2\":0,\"helmet_1\":-1,\"blemishes_2\":0,\"beard_2\":0,\"beard_4\":0,\"decals_1\":1,\"moles_1\":0,\"hair_color_2\":0,\"complexion_2\":0,\"makeup_1\":0,\"blush_3\":0,\"bproof_2\":0,\"blush_2\":0,\"arms_2\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"bracelets_2\":0,\"shoes_2\":0,\"bags_1\":0,\"bodyb_1\":0,\"pants_2\":0,\"chest_3\":0,\"lipstick_1\":0,\"blemishes_1\":0,\"torso_1\":23,\"glasses_1\":5,\"ears_1\":-1,\"eyebrows_4\":0,\"watches_2\":0,\"sex\":0,\"hair_1\":24,\"bags_2\":0,\"tshirt_2\":0,\"chest_2\":0,\"torso_2\":3,\"makeup_2\":0,\"makeup_3\":0,\"eyebrows_3\":0,\"shoes_1\":10,\"skin\":0,\"beard_1\":0,\"lipstick_2\":0,\"sun_1\":0,\"bproof_1\":0,\"face\":0,\"glasses_2\":1,\"eyebrows_1\":0,\"blush_1\":0,\"age_1\":0,\"eyebrows_2\":0,\"helmet_2\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"tshirt_1\":10,\"chest_1\":0,\"age_2\":0,\"mask_1\":0,\"watches_1\":-1,\"arms\":0,\"decals_2\":0,\"hair_color_1\":2,\"sun_2\":0,\"eye_color\":0,\"pants_1\":10,\"makeup_4\":0,\"mask_2\":0}}]}'),
(206, 'user_ears', 'steam:11000013ec6e3e3', '{}'),
(207, 'user_helmet', 'steam:11000013ec6e3e3', '{}'),
(208, 'user_glasses', 'steam:11000013ec6e3e3', '{}'),
(209, 'property', 'steam:11000013ec6e3e3', '{\"dressing\":[{\"label\":\"mercenaires\",\"skin\":{\"chain_1\":17,\"moles_2\":0,\"beard_3\":0,\"chain_2\":1,\"ears_2\":0,\"hair_2\":0,\"bodyb_2\":0,\"helmet_1\":120,\"blemishes_2\":0,\"beard_2\":0,\"beard_4\":0,\"decals_1\":0,\"moles_1\":0,\"hair_color_2\":0,\"complexion_2\":0,\"makeup_1\":0,\"blush_3\":0,\"bproof_2\":0,\"watches_1\":-1,\"arms_2\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"bracelets_2\":0,\"shoes_2\":0,\"bags_1\":38,\"bodyb_1\":0,\"pants_2\":0,\"chest_3\":0,\"lipstick_1\":0,\"blemishes_1\":0,\"torso_1\":223,\"glasses_1\":5,\"glasses_2\":0,\"age_1\":0,\"face\":0,\"sex\":0,\"hair_1\":1,\"bags_2\":0,\"tshirt_2\":0,\"chest_2\":0,\"hair_color_1\":0,\"makeup_2\":0,\"pants_1\":33,\"eyebrows_3\":0,\"shoes_1\":24,\"skin\":0,\"eyebrows_2\":0,\"lipstick_2\":0,\"sun_1\":0,\"beard_1\":0,\"bproof_1\":0,\"chest_1\":0,\"eyebrows_1\":0,\"blush_1\":0,\"ears_1\":-1,\"tshirt_1\":130,\"torso_2\":0,\"eyebrows_4\":0,\"lipstick_3\":0,\"makeup_3\":0,\"watches_2\":0,\"age_2\":0,\"mask_1\":113,\"helmet_2\":0,\"arms\":23,\"decals_2\":0,\"lipstick_4\":0,\"sun_2\":0,\"blush_2\":0,\"eye_color\":0,\"makeup_4\":0,\"mask_2\":11}}]}'),
(210, 'user_mask', 'steam:11000013ec6e3e3', '{\"hasMask\":true,\"skin\":{\"mask_1\":113,\"mask_2\":11}}'),
(211, 'user_glasses', 'steam:110000140c4eec1', '{}'),
(212, 'property', 'steam:110000140c4eec1', '{\"dressing\":[{\"label\":\"Civil\",\"skin\":{\"chain_1\":0,\"moles_2\":0,\"beard_3\":0,\"chain_2\":0,\"ears_2\":0,\"hair_2\":0,\"bodyb_2\":0,\"helmet_1\":-1,\"blemishes_2\":0,\"beard_2\":2,\"beard_4\":0,\"decals_1\":0,\"moles_1\":0,\"hair_color_2\":0,\"complexion_2\":0,\"makeup_1\":0,\"blush_3\":0,\"bproof_2\":0,\"watches_1\":-1,\"arms_2\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"eye_color\":0,\"shoes_2\":0,\"bags_1\":0,\"bodyb_1\":0,\"pants_2\":0,\"chest_3\":0,\"lipstick_1\":0,\"blemishes_1\":0,\"torso_1\":13,\"glasses_1\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"face\":0,\"sex\":0,\"hair_1\":18,\"bags_2\":0,\"shoes_1\":1,\"chest_2\":0,\"torso_2\":2,\"makeup_2\":0,\"skin\":5,\"eyebrows_3\":0,\"makeup_3\":0,\"hair_color_1\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"sun_1\":0,\"beard_1\":0,\"bproof_1\":0,\"chest_1\":0,\"eyebrows_1\":0,\"blush_1\":0,\"ears_1\":-1,\"eyebrows_2\":0,\"pants_1\":4,\"age_1\":0,\"lipstick_3\":0,\"watches_2\":0,\"helmet_2\":0,\"age_2\":0,\"mask_1\":0,\"lipstick_4\":0,\"arms\":11,\"decals_2\":0,\"tshirt_1\":15,\"sun_2\":0,\"blush_2\":0,\"bracelets_2\":0,\"makeup_4\":0,\"mask_2\":0}}]}'),
(213, 'user_ears', 'steam:110000140c4eec1', '{}'),
(214, 'user_helmet', 'steam:110000140c4eec1', '{}'),
(215, 'user_mask', 'steam:110000140c4eec1', '{}'),
(216, 'user_mask', 'steam:11000013fb3a692', '{}'),
(217, 'user_ears', 'steam:11000013fb3a692', '{}'),
(218, 'user_helmet', 'steam:11000013fb3a692', '{\"skin\":{\"helmet_2\":2,\"helmet_1\":58},\"hasHelmet\":true}'),
(219, 'property', 'steam:11000013fb3a692', '{\"dressing\":[{\"label\":\"mCkENZIE\",\"skin\":{\"chain_1\":125,\"moles_2\":0,\"beard_3\":0,\"chain_2\":0,\"ears_2\":0,\"hair_2\":0,\"bodyb_2\":0,\"helmet_1\":-1,\"blemishes_2\":0,\"beard_2\":0,\"beard_4\":0,\"decals_1\":0,\"lipstick_4\":0,\"hair_color_2\":12,\"complexion_2\":0,\"makeup_1\":0,\"blush_3\":0,\"bproof_2\":0,\"watches_1\":-1,\"arms_2\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"bracelets_2\":0,\"shoes_2\":2,\"bags_1\":0,\"bodyb_1\":0,\"pants_2\":0,\"chest_3\":0,\"lipstick_1\":0,\"blemishes_1\":0,\"torso_1\":111,\"glasses_1\":0,\"ears_1\":-1,\"eyebrows_4\":0,\"watches_2\":0,\"sex\":0,\"hair_1\":21,\"bags_2\":0,\"tshirt_2\":0,\"chest_2\":0,\"torso_2\":3,\"makeup_2\":0,\"shoes_1\":8,\"eyebrows_3\":0,\"face\":0,\"hair_color_1\":9,\"beard_1\":0,\"makeup_3\":0,\"sun_1\":0,\"blush_2\":0,\"bproof_1\":0,\"pants_1\":24,\"eyebrows_1\":0,\"blush_1\":0,\"glasses_2\":0,\"eyebrows_2\":0,\"age_1\":0,\"helmet_2\":0,\"lipstick_3\":0,\"moles_1\":0,\"tshirt_1\":58,\"age_2\":0,\"mask_1\":0,\"chest_1\":0,\"arms\":44,\"decals_2\":0,\"skin\":4,\"sun_2\":0,\"lipstick_2\":0,\"eye_color\":0,\"makeup_4\":0,\"mask_2\":0}}]}'),
(220, 'user_glasses', 'steam:11000013fb3a692', '{}'),
(221, 'property', 'steam:11000013b38e27b', '{\"dressing\":[{\"label\":\"Bana\",\"skin\":{\"beard_4\":0,\"watches_1\":-1,\"bags_1\":0,\"arms_2\":0,\"decals_1\":8,\"lipstick_1\":0,\"blush_1\":0,\"chain_2\":2,\"moles_1\":0,\"eyebrows_4\":0,\"beard_1\":3,\"bracelets_2\":0,\"makeup_2\":0,\"ears_1\":-1,\"bproof_2\":0,\"age_2\":0,\"sun_2\":0,\"chest_3\":0,\"skin\":4,\"tshirt_1\":58,\"bags_2\":0,\"face\":24,\"age_1\":0,\"glasses_1\":3,\"hair_2\":0,\"pants_2\":0,\"moles_2\":0,\"beard_3\":0,\"tshirt_2\":0,\"mask_1\":0,\"ears_2\":0,\"bracelets_1\":-1,\"eyebrows_3\":0,\"bproof_1\":0,\"blush_2\":0,\"shoes_2\":0,\"chest_1\":0,\"blemishes_1\":0,\"arms\":17,\"chest_2\":0,\"eyebrows_1\":0,\"lipstick_4\":0,\"pants_1\":31,\"hair_color_1\":0,\"torso_1\":53,\"chain_1\":112,\"blush_3\":0,\"beard_2\":10,\"bodyb_1\":0,\"complexion_2\":0,\"hair_1\":15,\"hair_color_2\":0,\"sun_1\":0,\"complexion_1\":0,\"helmet_1\":-1,\"bodyb_2\":0,\"eyebrows_2\":10,\"sex\":0,\"lipstick_3\":0,\"shoes_1\":24,\"makeup_3\":0,\"torso_2\":0,\"eye_color\":0,\"makeup_4\":0,\"blemishes_2\":0,\"decals_2\":1,\"helmet_2\":0,\"lipstick_2\":0,\"glasses_2\":0,\"mask_2\":0,\"watches_2\":0,\"makeup_1\":0}},{\"label\":\"Civil\",\"skin\":{\"beard_4\":0,\"watches_1\":-1,\"bags_1\":0,\"arms_2\":0,\"decals_1\":0,\"lipstick_1\":0,\"blush_1\":0,\"chain_2\":0,\"moles_1\":0,\"eyebrows_4\":0,\"beard_1\":3,\"bracelets_2\":0,\"makeup_2\":0,\"ears_1\":-1,\"makeup_4\":0,\"age_2\":0,\"sun_2\":0,\"chest_3\":0,\"skin\":4,\"tshirt_1\":130,\"bags_2\":0,\"face\":24,\"age_1\":0,\"glasses_1\":3,\"hair_2\":0,\"pants_2\":0,\"moles_2\":0,\"beard_3\":0,\"tshirt_2\":0,\"mask_1\":0,\"ears_2\":0,\"bracelets_1\":-1,\"eyebrows_3\":0,\"bproof_1\":0,\"blush_2\":0,\"shoes_2\":2,\"chest_1\":0,\"blemishes_1\":0,\"arms\":11,\"chest_2\":0,\"eyebrows_1\":0,\"lipstick_4\":0,\"pants_1\":4,\"hair_color_1\":0,\"hair_color_2\":0,\"chain_1\":0,\"sex\":0,\"beard_2\":10,\"blush_3\":0,\"complexion_2\":0,\"hair_1\":15,\"torso_1\":95,\"watches_2\":0,\"bodyb_1\":0,\"helmet_1\":-1,\"bodyb_2\":0,\"eyebrows_2\":10,\"lipstick_3\":0,\"torso_2\":0,\"complexion_1\":0,\"helmet_2\":0,\"makeup_3\":0,\"eye_color\":0,\"mask_2\":0,\"blemishes_2\":0,\"decals_2\":0,\"bproof_2\":0,\"lipstick_2\":0,\"glasses_2\":0,\"makeup_1\":0,\"sun_1\":0,\"shoes_1\":7}}]}'),
(222, 'user_ears', 'steam:11000013b38e27b', '{}'),
(223, 'user_glasses', 'steam:11000013b38e27b', '{}'),
(224, 'user_helmet', 'steam:11000013b38e27b', '{}'),
(225, 'user_mask', 'steam:11000013b38e27b', '{}'),
(226, 'user_ears', 'steam:110000117a8e0aa', '{}'),
(227, 'user_helmet', 'steam:110000117a8e0aa', '{}'),
(228, 'user_mask', 'steam:110000117a8e0aa', '{}'),
(229, 'property', 'steam:110000117a8e0aa', '{}'),
(230, 'user_glasses', 'steam:110000117a8e0aa', '{}'),
(231, 'user_ears', 'steam:110000134e838e3', '{}'),
(232, 'property', 'steam:110000134e838e3', '{}'),
(233, 'user_glasses', 'steam:110000134e838e3', '{}'),
(234, 'user_helmet', 'steam:110000134e838e3', '{}'),
(235, 'user_mask', 'steam:110000134e838e3', '{}'),
(236, 'user_helmet', 'steam:110000139be4077', '{}'),
(237, 'user_glasses', 'steam:110000139be4077', '{}'),
(238, 'user_ears', 'steam:110000139be4077', '{}'),
(239, 'user_mask', 'steam:110000139be4077', '{}'),
(240, 'property', 'steam:110000139be4077', '{}'),
(241, 'user_mask', 'steam:11000013427a058', '{}'),
(242, 'user_helmet', 'steam:11000013427a058', '{}'),
(243, 'user_ears', 'steam:11000013427a058', '{}'),
(244, 'property', 'steam:11000013427a058', '{\"dressing\":[{\"skin\":{\"blush_2\":2,\"blush_3\":0,\"ears_1\":-1,\"complexion_2\":0,\"chest_3\":0,\"shoes_2\":0,\"bodyb_1\":1,\"makeup_3\":0,\"tshirt_1\":4,\"bproof_1\":0,\"pants_2\":0,\"hair_color_1\":0,\"blush_1\":0,\"watches_1\":-1,\"glasses_1\":0,\"torso_1\":29,\"chain_1\":12,\"shoes_1\":25,\"eyebrows_4\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"makeup_2\":0,\"hair_2\":0,\"chain_2\":2,\"blemishes_1\":0,\"skin\":4,\"torso_2\":0,\"makeup_1\":0,\"bproof_2\":0,\"lipstick_1\":0,\"hair_1\":19,\"decals_1\":0,\"watches_2\":0,\"sun_2\":0,\"mask_2\":0,\"bodyb_2\":6,\"blemishes_2\":0,\"lipstick_2\":0,\"age_2\":4,\"bracelets_2\":0,\"sun_1\":0,\"chest_1\":2,\"eyebrows_1\":0,\"pants_1\":10,\"moles_2\":0,\"mask_1\":0,\"eye_color\":7,\"decals_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"chest_2\":3,\"helmet_2\":0,\"age_1\":5,\"moles_1\":0,\"face\":0,\"beard_2\":8,\"bags_2\":0,\"helmet_1\":-1,\"sex\":0,\"hair_color_2\":30,\"arms_2\":0,\"arms\":33,\"beard_1\":10,\"beard_3\":0,\"bags_1\":45,\"lipstick_4\":0,\"eyebrows_3\":0,\"beard_4\":0,\"makeup_4\":0,\"ears_2\":0,\"eyebrows_2\":10},\"label\":\"costard\"},{\"skin\":{\"blush_2\":2,\"blush_3\":0,\"moles_2\":0,\"complexion_2\":0,\"chest_3\":0,\"shoes_2\":0,\"bodyb_1\":1,\"makeup_3\":0,\"tshirt_1\":134,\"bproof_1\":0,\"pants_2\":0,\"hair_color_1\":0,\"blush_1\":0,\"helmet_2\":0,\"glasses_1\":0,\"arms\":33,\"chain_1\":0,\"shoes_1\":25,\"eyebrows_4\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"makeup_2\":0,\"hair_2\":0,\"chain_2\":2,\"blemishes_1\":0,\"skin\":4,\"torso_2\":0,\"makeup_1\":0,\"bproof_2\":0,\"lipstick_1\":0,\"hair_1\":19,\"decals_1\":0,\"watches_2\":0,\"sun_2\":0,\"mask_2\":0,\"beard_1\":10,\"blemishes_2\":0,\"makeup_4\":0,\"age_2\":4,\"bracelets_2\":0,\"sun_1\":0,\"chest_1\":2,\"eyebrows_1\":0,\"pants_1\":10,\"face\":0,\"mask_1\":0,\"torso_1\":64,\"watches_1\":-1,\"eye_color\":7,\"glasses_2\":0,\"chest_2\":3,\"ears_1\":-1,\"decals_2\":0,\"tshirt_2\":7,\"beard_2\":8,\"moles_1\":0,\"bags_2\":0,\"helmet_1\":-1,\"sex\":0,\"hair_color_2\":30,\"arms_2\":0,\"bodyb_2\":6,\"age_1\":5,\"beard_3\":0,\"bags_1\":45,\"lipstick_4\":0,\"eyebrows_3\":0,\"beard_4\":0,\"ears_2\":0,\"eyebrows_2\":10,\"lipstick_2\":0},\"label\":\"tenu veste en cuir\"},{\"skin\":{\"blush_2\":2,\"decals_2\":0,\"ears_1\":-1,\"complexion_2\":0,\"chest_3\":0,\"shoes_2\":0,\"bodyb_1\":1,\"makeup_3\":0,\"tshirt_1\":58,\"bproof_1\":0,\"pants_2\":0,\"hair_color_1\":0,\"blush_1\":0,\"watches_1\":-1,\"glasses_1\":0,\"torso_1\":53,\"chain_1\":125,\"shoes_1\":25,\"eyebrows_4\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"makeup_2\":0,\"hair_2\":0,\"chain_2\":0,\"blemishes_1\":0,\"skin\":4,\"torso_2\":0,\"ears_2\":0,\"bproof_2\":0,\"lipstick_1\":0,\"hair_1\":19,\"decals_1\":0,\"watches_2\":0,\"sun_2\":0,\"mask_2\":0,\"beard_1\":10,\"blemishes_2\":0,\"lipstick_2\":0,\"age_2\":4,\"bracelets_2\":0,\"sun_1\":0,\"chest_1\":2,\"eyebrows_1\":0,\"pants_1\":10,\"moles_2\":0,\"face\":0,\"mask_1\":0,\"blush_3\":0,\"makeup_4\":0,\"glasses_2\":0,\"chest_2\":3,\"eye_color\":7,\"beard_2\":8,\"helmet_2\":0,\"tshirt_2\":0,\"moles_1\":0,\"bags_2\":0,\"helmet_1\":-1,\"sex\":0,\"hair_color_2\":30,\"arms_2\":0,\"arms\":33,\"bodyb_2\":6,\"beard_3\":0,\"bags_1\":45,\"lipstick_4\":0,\"eyebrows_3\":0,\"age_1\":5,\"beard_4\":0,\"eyebrows_2\":10,\"makeup_1\":0},\"label\":\"tenue capitaine\"}]}'),
(245, 'user_glasses', 'steam:11000013427a058', '{\"skin\":{\"glasses_2\":1,\"glasses_1\":5},\"hasGlasses\":true}'),
(246, 'society_brasseur', NULL, '{}'),
(247, 'society_state', NULL, '{}'),
(248, 'society_cammora', NULL, '{}'),
(249, 'society_cosanostra', NULL, '{}'),
(250, 'property', 'steam:1100001120b6603', '{\"dressing\":[[]]}'),
(251, 'user_mask', 'steam:1100001120b6603', '{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":4}}'),
(252, 'user_glasses', 'steam:1100001120b6603', '{\"hasGlasses\":true,\"skin\":{\"glasses_1\":4,\"glasses_2\":0}}'),
(253, 'user_helmet', 'steam:1100001120b6603', '{\"skin\":{\"helmet_2\":0,\"helmet_1\":8},\"hasHelmet\":true}'),
(254, 'user_ears', 'steam:1100001120b6603', '{\"hasEars\":true,\"skin\":{\"ears_1\":20,\"ears_2\":6}}'),
(255, 'user_glasses', 'steam:11000011439c22a', '{}'),
(256, 'user_helmet', 'steam:11000011439c22a', '{}'),
(257, 'user_ears', 'steam:11000011439c22a', '{}'),
(258, 'property', 'steam:11000011439c22a', '{}'),
(259, 'user_mask', 'steam:11000011439c22a', '{}'),
(260, 'user_mask', 'steam:11000010772998a', '{}'),
(261, 'user_glasses', 'steam:11000010772998a', '{}'),
(262, 'property', 'steam:11000010772998a', '{}'),
(263, 'user_ears', 'steam:11000010772998a', '{}'),
(264, 'user_helmet', 'steam:11000010772998a', '{}'),
(265, 'property', 'steam:110000134884e5b', '{}'),
(266, 'user_helmet', 'steam:110000134884e5b', '{\"hasHelmet\":true,\"skin\":{\"helmet_1\":45,\"helmet_2\":1}}'),
(267, 'user_ears', 'steam:110000134884e5b', '{}'),
(268, 'user_mask', 'steam:110000134884e5b', '{\"hasMask\":true,\"skin\":{\"mask_2\":25,\"mask_1\":104}}'),
(269, 'user_glasses', 'steam:110000134884e5b', '{\"hasGlasses\":true,\"skin\":{\"glasses_1\":25,\"glasses_2\":4}}'),
(270, 'user_mask', 'steam:11000013e699150', '{}'),
(271, 'property', 'steam:11000013e699150', '{}'),
(272, 'user_helmet', 'steam:11000013e699150', '{\"hasHelmet\":true,\"skin\":{\"helmet_1\":1,\"helmet_2\":0}}'),
(273, 'user_ears', 'steam:11000013e699150', '{}'),
(274, 'user_glasses', 'steam:11000013e699150', '{}'),
(275, 'user_glasses', 'steam:11000011bbbfe53', '{}'),
(276, 'property', 'steam:11000011bbbfe53', '{}'),
(277, 'user_helmet', 'steam:11000011bbbfe53', '{}'),
(278, 'user_ears', 'steam:11000011bbbfe53', '{\"skin\":{\"ears_1\":1,\"ears_2\":0},\"hasEars\":true}'),
(279, 'user_mask', 'steam:11000011bbbfe53', '{}'),
(280, 'user_mask', 'steam:1100001187fc731', '{}'),
(281, 'user_glasses', 'steam:1100001187fc731', '{}'),
(282, 'user_ears', 'steam:1100001187fc731', '{}'),
(283, 'user_helmet', 'steam:1100001187fc731', '{}'),
(284, 'property', 'steam:1100001187fc731', '{}'),
(285, 'user_helmet', 'steam:11000010e736395', '{\"skin\":{\"helmet_1\":-1,\"helmet_2\":2},\"hasHelmet\":true}'),
(286, 'property', 'steam:11000010e736395', '{}'),
(287, 'user_mask', 'steam:11000010e736395', '{\"hasMask\":true,\"skin\":{\"mask_1\":51,\"mask_2\":0}}'),
(288, 'user_ears', 'steam:11000010e736395', '{}'),
(289, 'user_glasses', 'steam:11000010e736395', '{}'),
(290, 'property', 'steam:110000117655aca', '{}'),
(291, 'user_glasses', 'steam:110000117655aca', '{}'),
(292, 'user_ears', 'steam:110000117655aca', '{}'),
(293, 'user_mask', 'steam:110000117655aca', '{}'),
(294, 'user_helmet', 'steam:110000117655aca', '{}'),
(295, 'user_helmet', 'steam:11000011292a445', '{}'),
(296, 'user_ears', 'steam:11000011292a445', '{}'),
(297, 'user_mask', 'steam:11000011292a445', '{}'),
(298, 'property', 'steam:11000011292a445', '{}'),
(299, 'user_glasses', 'steam:11000011292a445', '{}'),
(300, 'user_ears', 'steam:110000109d07b07', '{}'),
(301, 'property', 'steam:110000109d07b07', '{\"dressing\":[[],{\"skin\":{\"lipstick_2\":0,\"face\":11,\"moles_1\":0,\"tshirt_2\":9,\"torso_1\":137,\"beard_3\":27,\"ears_1\":-1,\"complexion_1\":0,\"bodyb_1\":0,\"chest_3\":0,\"helmet_1\":7,\"chain_1\":26,\"blush_3\":0,\"lipstick_1\":0,\"sex\":0,\"lipstick_3\":0,\"blush_2\":0,\"eyebrows_3\":27,\"chain_2\":12,\"eyebrows_1\":9,\"bags_2\":0,\"bracelets_2\":0,\"eye_color\":5,\"pants_1\":12,\"chest_1\":0,\"complexion_2\":0,\"blemishes_2\":0,\"makeup_3\":0,\"makeup_2\":0,\"blemishes_1\":0,\"shoes_2\":2,\"hair_color_2\":28,\"watches_1\":-1,\"sun_1\":0,\"ears_2\":0,\"eyebrows_4\":0,\"lipstick_4\":0,\"bags_1\":0,\"mask_2\":0,\"shoes_1\":3,\"arms\":26,\"glasses_1\":3,\"arms_2\":0,\"hair_2\":0,\"eyebrows_2\":10,\"bproof_1\":0,\"age_2\":10,\"age_1\":14,\"pants_2\":7,\"bodyb_2\":0,\"mask_1\":0,\"decals_1\":0,\"tshirt_1\":6,\"bracelets_1\":-1,\"beard_4\":0,\"makeup_4\":0,\"helmet_2\":1,\"bproof_2\":0,\"watches_2\":0,\"sun_2\":0,\"glasses_2\":4,\"blush_1\":0,\"makeup_1\":0,\"decals_2\":0,\"chest_2\":0,\"torso_2\":0,\"hair_1\":19,\"hair_color_1\":27,\"moles_2\":0,\"beard_1\":9,\"skin\":1,\"beard_2\":10},\"label\":\"Tenue de Golf\"},{\"skin\":{\"lipstick_2\":0,\"face\":11,\"moles_1\":0,\"tshirt_2\":0,\"torso_1\":119,\"beard_3\":27,\"ears_1\":-1,\"complexion_1\":0,\"bodyb_1\":0,\"decals_2\":0,\"helmet_1\":26,\"chain_1\":38,\"blush_3\":0,\"lipstick_1\":0,\"sex\":0,\"lipstick_3\":0,\"blush_2\":0,\"eyebrows_3\":27,\"helmet_2\":7,\"eyebrows_1\":9,\"bags_2\":0,\"bracelets_2\":0,\"eye_color\":5,\"pants_1\":60,\"chest_1\":0,\"complexion_2\":0,\"blemishes_2\":0,\"makeup_3\":0,\"makeup_2\":0,\"blemishes_1\":0,\"shoes_2\":1,\"hair_color_2\":28,\"watches_1\":-1,\"sun_1\":0,\"ears_2\":0,\"eyebrows_4\":0,\"lipstick_4\":0,\"bags_1\":0,\"glasses_2\":8,\"shoes_1\":20,\"arms\":12,\"glasses_1\":3,\"arms_2\":0,\"hair_2\":0,\"eyebrows_2\":10,\"bproof_1\":0,\"age_2\":10,\"age_1\":14,\"pants_2\":6,\"bodyb_2\":0,\"mask_2\":0,\"decals_1\":0,\"bracelets_1\":-1,\"mask_1\":0,\"watches_2\":0,\"blush_1\":0,\"makeup_1\":0,\"bproof_2\":0,\"makeup_4\":0,\"sun_2\":0,\"hair_1\":19,\"torso_2\":6,\"chest_3\":0,\"moles_2\":0,\"chest_2\":0,\"tshirt_1\":10,\"chain_2\":14,\"hair_color_1\":27,\"beard_1\":9,\"beard_4\":0,\"skin\":1,\"beard_2\":10},\"label\":\"Tenue de ville 1\"}]}'),
(302, 'user_glasses', 'steam:110000109d07b07', '{\"skin\":{\"glasses_2\":4,\"glasses_1\":3},\"hasGlasses\":true}'),
(303, 'user_helmet', 'steam:110000109d07b07', '{}'),
(304, 'user_mask', 'steam:110000109d07b07', '{}'),
(305, 'property', 'steam:11000010db2011a', '{}'),
(306, 'user_helmet', 'steam:11000010db2011a', '{}'),
(307, 'user_ears', 'steam:11000010db2011a', '{}'),
(308, 'user_glasses', 'steam:11000010db2011a', '{}'),
(309, 'user_mask', 'steam:11000010db2011a', '{}'),
(310, 'user_ears', 'steam:1100001337f15e7', '{}'),
(311, 'property', 'steam:1100001337f15e7', '{}'),
(312, 'user_helmet', 'steam:1100001337f15e7', '{}'),
(313, 'user_mask', 'steam:1100001337f15e7', '{}'),
(314, 'user_glasses', 'steam:1100001337f15e7', '{\"hasGlasses\":true,\"skin\":{\"glasses_1\":5,\"glasses_2\":0}}'),
(315, 'user_helmet', 'steam:1100001342ad7df', '{}'),
(316, 'user_glasses', 'steam:1100001342ad7df', '{}'),
(317, 'property', 'steam:1100001342ad7df', '{}'),
(318, 'user_mask', 'steam:1100001342ad7df', '{}'),
(319, 'user_ears', 'steam:1100001342ad7df', '{}'),
(320, 'property', 'steam:110000136a37225', '{}'),
(321, 'user_helmet', 'steam:110000136a37225', '{}'),
(322, 'user_ears', 'steam:110000136a37225', '{}'),
(323, 'user_mask', 'steam:110000136a37225', '{}'),
(324, 'user_glasses', 'steam:110000136a37225', '{}'),
(325, 'property', 'steam:11000011291e036', '{}'),
(326, 'user_helmet', 'steam:11000011291e036', '{}'),
(327, 'user_glasses', 'steam:11000011291e036', '{}'),
(328, 'user_mask', 'steam:11000011291e036', '{}'),
(329, 'user_ears', 'steam:11000011291e036', '{}'),
(330, 'user_mask', 'steam:11000013c064c48', '{}'),
(331, 'property', 'steam:11000013c064c48', '{}'),
(332, 'user_glasses', 'steam:11000013c064c48', '{}'),
(333, 'user_helmet', 'steam:11000013c064c48', '{}'),
(334, 'user_ears', 'steam:11000013c064c48', '{}'),
(335, 'user_glasses', 'steam:110000100473290', '{}'),
(336, 'user_mask', 'steam:110000100473290', '{}'),
(337, 'property', 'steam:110000100473290', '{}'),
(338, 'user_helmet', 'steam:110000100473290', '{}'),
(339, 'user_ears', 'steam:110000100473290', '{}'),
(340, 'property', 'steam:110000134b6f5a1', '{}'),
(341, 'user_ears', 'steam:110000134b6f5a1', '{}'),
(342, 'user_mask', 'steam:110000134b6f5a1', '{}'),
(343, 'user_helmet', 'steam:110000134b6f5a1', '{}'),
(344, 'user_glasses', 'steam:110000134b6f5a1', '{}'),
(345, 'user_helmet', 'steam:11000013c898d0d', '{}'),
(346, 'user_ears', 'steam:11000013c898d0d', '{}'),
(347, 'property', 'steam:11000013c898d0d', '{}'),
(348, 'user_glasses', 'steam:11000013c898d0d', '{}'),
(349, 'user_mask', 'steam:11000013c898d0d', '{}'),
(350, 'user_helmet', 'steam:11000014158c5cd', '{}'),
(351, 'user_glasses', 'steam:11000014158c5cd', '{}'),
(352, 'property', 'steam:11000014158c5cd', '{}'),
(353, 'user_mask', 'steam:11000014158c5cd', '{}'),
(354, 'user_ears', 'steam:11000014158c5cd', '{}'),
(355, 'user_helmet', 'steam:110000141b8e146', '{}'),
(356, 'user_glasses', 'steam:110000141b8e146', '{}'),
(357, 'property', 'steam:110000141b8e146', '{}'),
(358, 'user_mask', 'steam:110000141b8e146', '{}'),
(359, 'user_ears', 'steam:110000141b8e146', '{}'),
(360, 'property', 'steam:11000013f8236cf', '{\"dressing\":[{\"label\":\"civim\",\"skin\":{\"beard_3\":0,\"age_1\":0,\"arms_2\":0,\"mask_1\":0,\"bodyb_1\":0,\"chain_1\":0,\"bracelets_2\":0,\"face\":0,\"eyebrows_3\":0,\"ears_1\":-1,\"complexion_1\":0,\"makeup_4\":0,\"beard_2\":10,\"complexion_2\":0,\"hair_1\":21,\"glasses_2\":0,\"lipstick_4\":0,\"blush_3\":0,\"makeup_3\":0,\"chain_2\":0,\"pants_2\":0,\"chest_3\":0,\"bproof_1\":0,\"sun_2\":0,\"glasses_1\":0,\"beard_1\":11,\"hair_2\":0,\"bags_2\":0,\"eye_color\":0,\"eyebrows_1\":0,\"lipstick_2\":0,\"helmet_1\":-1,\"bodyb_2\":0,\"watches_2\":0,\"torso_1\":0,\"chest_1\":0,\"blemishes_1\":0,\"tshirt_2\":0,\"lipstick_3\":0,\"bracelets_1\":-1,\"eyebrows_4\":0,\"chest_2\":0,\"ears_2\":0,\"shoes_1\":7,\"mask_2\":0,\"decals_2\":0,\"tshirt_1\":0,\"moles_2\":0,\"arms\":0,\"moles_1\":0,\"watches_1\":-1,\"sex\":0,\"blush_1\":0,\"blemishes_2\":0,\"hair_color_1\":0,\"decals_1\":0,\"helmet_2\":0,\"pants_1\":0,\"age_2\":0,\"makeup_2\":0,\"hair_color_2\":0,\"torso_2\":0,\"bags_1\":0,\"makeup_1\":0,\"beard_4\":0,\"eyebrows_2\":0,\"shoes_2\":0,\"bproof_2\":0,\"blush_2\":0,\"lipstick_1\":0,\"sun_1\":0}},{\"label\":\"civil 2\",\"skin\":{\"beard_3\":0,\"age_1\":0,\"arms_2\":0,\"mask_1\":0,\"bodyb_1\":0,\"chain_1\":0,\"bracelets_2\":0,\"face\":0,\"eyebrows_3\":0,\"ears_1\":-1,\"complexion_1\":0,\"makeup_4\":0,\"beard_2\":10,\"complexion_2\":0,\"hair_1\":21,\"glasses_2\":0,\"lipstick_4\":0,\"blush_3\":0,\"makeup_3\":0,\"chain_2\":0,\"pants_2\":0,\"chest_3\":0,\"bproof_1\":0,\"sun_2\":0,\"glasses_1\":0,\"beard_1\":11,\"hair_2\":0,\"bags_2\":0,\"eye_color\":0,\"eyebrows_1\":0,\"lipstick_2\":0,\"helmet_1\":-1,\"bodyb_2\":0,\"watches_2\":0,\"torso_1\":167,\"chest_1\":0,\"blemishes_1\":0,\"tshirt_2\":0,\"lipstick_3\":0,\"bracelets_1\":-1,\"eyebrows_4\":0,\"chest_2\":0,\"ears_2\":0,\"shoes_1\":31,\"mask_2\":0,\"decals_2\":0,\"tshirt_1\":0,\"moles_2\":0,\"arms\":0,\"moles_1\":0,\"watches_1\":-1,\"sex\":0,\"blush_1\":0,\"blemishes_2\":0,\"hair_color_1\":0,\"helmet_2\":0,\"decals_1\":0,\"pants_1\":0,\"age_2\":0,\"makeup_2\":0,\"hair_color_2\":0,\"torso_2\":0,\"bags_1\":0,\"makeup_1\":0,\"beard_4\":0,\"eyebrows_2\":0,\"shoes_2\":0,\"bproof_2\":0,\"blush_2\":0,\"lipstick_1\":0,\"sun_1\":0}},{\"label\":\"COSTARD\",\"skin\":{\"beard_3\":0,\"age_1\":0,\"arms_2\":0,\"mask_1\":0,\"bodyb_1\":0,\"chain_1\":0,\"bracelets_2\":0,\"face\":0,\"eyebrows_3\":0,\"ears_1\":-1,\"complexion_1\":0,\"makeup_4\":0,\"beard_2\":10,\"complexion_2\":0,\"hair_1\":21,\"glasses_2\":0,\"lipstick_4\":0,\"blush_3\":0,\"makeup_3\":0,\"lipstick_1\":0,\"pants_2\":6,\"chest_3\":0,\"bproof_1\":0,\"sun_2\":0,\"glasses_1\":0,\"beard_1\":11,\"hair_2\":0,\"bags_2\":0,\"eye_color\":0,\"eyebrows_1\":0,\"lipstick_2\":0,\"helmet_1\":-1,\"bodyb_2\":0,\"watches_2\":0,\"torso_1\":24,\"chest_1\":0,\"blemishes_1\":0,\"tshirt_2\":0,\"lipstick_3\":0,\"bracelets_1\":-1,\"eyebrows_4\":0,\"chest_2\":0,\"ears_2\":0,\"shoes_1\":40,\"moles_1\":0,\"decals_2\":0,\"mask_2\":0,\"tshirt_1\":26,\"moles_2\":0,\"chain_2\":0,\"watches_1\":-1,\"sex\":0,\"pants_1\":28,\"blemishes_2\":0,\"blush_1\":0,\"hair_color_1\":0,\"helmet_2\":0,\"decals_1\":0,\"arms\":4,\"makeup_2\":0,\"age_2\":0,\"hair_color_2\":0,\"torso_2\":0,\"bags_1\":0,\"beard_4\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"shoes_2\":9,\"blush_2\":0,\"makeup_1\":0,\"sun_1\":0}},{\"label\":\"flic\",\"skin\":{\"beard_3\":0,\"age_1\":0,\"arms_2\":0,\"mask_1\":0,\"bodyb_1\":0,\"chain_1\":0,\"bracelets_2\":0,\"face\":0,\"eyebrows_3\":0,\"ears_1\":-1,\"complexion_1\":0,\"makeup_4\":0,\"beard_2\":10,\"complexion_2\":0,\"hair_1\":21,\"glasses_2\":0,\"lipstick_4\":0,\"blush_3\":0,\"makeup_3\":0,\"chain_2\":0,\"pants_2\":10,\"chest_3\":0,\"bproof_1\":0,\"sun_2\":0,\"glasses_1\":0,\"beard_1\":11,\"hair_2\":0,\"bags_2\":0,\"eye_color\":0,\"blush_1\":0,\"lipstick_2\":0,\"helmet_1\":-1,\"bodyb_2\":0,\"watches_2\":0,\"torso_1\":55,\"chest_1\":0,\"blemishes_1\":0,\"tshirt_2\":1,\"lipstick_3\":0,\"bracelets_1\":-1,\"eyebrows_4\":0,\"chest_2\":0,\"ears_2\":0,\"shoes_1\":51,\"moles_1\":0,\"decals_2\":0,\"mask_2\":0,\"tshirt_1\":38,\"moles_2\":0,\"eyebrows_1\":0,\"watches_1\":-1,\"sex\":0,\"helmet_2\":0,\"blemishes_2\":0,\"hair_color_1\":0,\"decals_1\":2,\"arms\":15,\"age_2\":0,\"hair_color_2\":0,\"makeup_2\":0,\"makeup_1\":0,\"torso_2\":0,\"eyebrows_2\":0,\"bags_1\":0,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":0,\"bproof_2\":0,\"blush_2\":0,\"pants_1\":86,\"sun_1\":0}},{\"label\":\"costard 2\",\"skin\":{\"makeup_1\":0,\"age_1\":0,\"arms_2\":0,\"mask_1\":0,\"bodyb_1\":0,\"chain_1\":0,\"bracelets_2\":0,\"face\":0,\"eyebrows_3\":0,\"ears_1\":-1,\"complexion_1\":0,\"makeup_4\":0,\"beard_2\":10,\"complexion_2\":0,\"hair_1\":21,\"glasses_2\":0,\"lipstick_4\":0,\"blush_3\":0,\"makeup_3\":0,\"chain_2\":0,\"pants_2\":6,\"chest_3\":0,\"bproof_1\":0,\"sun_2\":0,\"glasses_1\":0,\"beard_1\":11,\"hair_2\":0,\"bags_2\":0,\"eye_color\":0,\"eyebrows_1\":0,\"lipstick_2\":0,\"helmet_1\":-1,\"bodyb_2\":0,\"watches_2\":0,\"torso_1\":23,\"chest_1\":0,\"eyebrows_2\":0,\"tshirt_2\":0,\"lipstick_3\":0,\"bracelets_1\":-1,\"eyebrows_4\":0,\"chest_2\":0,\"ears_2\":0,\"shoes_1\":20,\"moles_1\":0,\"decals_2\":0,\"mask_2\":0,\"beard_3\":0,\"moles_2\":0,\"pants_1\":28,\"watches_1\":-1,\"sex\":0,\"helmet_2\":0,\"blemishes_2\":0,\"blush_1\":0,\"hair_color_1\":0,\"decals_1\":0,\"arms\":4,\"age_2\":0,\"makeup_2\":0,\"hair_color_2\":0,\"torso_2\":1,\"blemishes_1\":0,\"tshirt_1\":24,\"beard_4\":0,\"bproof_2\":0,\"shoes_2\":3,\"bags_1\":0,\"blush_2\":0,\"lipstick_1\":0,\"sun_1\":0}},{\"label\":\"lspd\",\"skin\":{\"makeup_1\":0,\"moles_2\":0,\"arms_2\":0,\"decals_1\":15,\"bodyb_1\":0,\"chain_1\":0,\"bracelets_2\":0,\"hair_color_2\":0,\"eyebrows_3\":0,\"ears_1\":2,\"complexion_1\":0,\"makeup_4\":0,\"beard_2\":10,\"complexion_2\":0,\"hair_1\":21,\"glasses_2\":0,\"lipstick_4\":0,\"blush_3\":0,\"makeup_3\":0,\"lipstick_1\":0,\"pants_2\":0,\"chest_3\":0,\"bproof_1\":2,\"sun_2\":0,\"glasses_1\":0,\"beard_1\":11,\"hair_2\":0,\"bags_2\":0,\"hair_color_1\":0,\"eyebrows_1\":0,\"lipstick_2\":0,\"helmet_1\":44,\"bodyb_2\":0,\"watches_2\":0,\"torso_1\":93,\"torso_2\":0,\"blemishes_1\":0,\"tshirt_2\":0,\"lipstick_3\":0,\"bracelets_1\":-1,\"eyebrows_4\":0,\"chest_2\":0,\"ears_2\":0,\"shoes_1\":25,\"moles_1\":0,\"decals_2\":4,\"tshirt_1\":38,\"chain_2\":0,\"mask_2\":0,\"beard_3\":0,\"watches_1\":-1,\"sex\":0,\"age_1\":0,\"blemishes_2\":0,\"face\":0,\"helmet_2\":1,\"blush_1\":0,\"mask_1\":0,\"arms\":0,\"makeup_2\":0,\"eyebrows_2\":0,\"age_2\":0,\"eye_color\":0,\"chest_1\":0,\"beard_4\":0,\"bags_1\":0,\"shoes_2\":0,\"bproof_2\":0,\"blush_2\":0,\"pants_1\":59,\"sun_1\":0}}]}'),
(361, 'user_mask', 'steam:11000013f8236cf', '{}'),
(362, 'user_glasses', 'steam:11000013f8236cf', '{\"hasGlasses\":true,\"skin\":{\"glasses_2\":3,\"glasses_1\":5}}'),
(363, 'user_ears', 'steam:11000013f8236cf', '{}'),
(364, 'user_helmet', 'steam:11000013f8236cf', '{}'),
(365, 'property', 'steam:11000010f09e1f9', '{\"dressing\":[{\"skin\":{\"makeup_1\":0,\"makeup_2\":0,\"makeup_4\":0,\"lipstick_2\":0,\"torso_1\":21,\"glasses_2\":0,\"sun_1\":0,\"decals_1\":0,\"pants_2\":0,\"beard_2\":10,\"moles_2\":0,\"hair_color_1\":0,\"watches_1\":-1,\"chest_2\":0,\"blemishes_2\":0,\"age_2\":0,\"moles_1\":0,\"blush_1\":0,\"complexion_1\":0,\"arms\":26,\"bodyb_1\":0,\"helmet_1\":-1,\"shoes_2\":0,\"sex\":0,\"chain_1\":0,\"tshirt_1\":6,\"glasses_1\":0,\"pants_1\":28,\"bodyb_2\":0,\"torso_2\":2,\"eyebrows_3\":0,\"tshirt_2\":0,\"hair_2\":0,\"ears_1\":-1,\"chest_3\":0,\"chain_2\":0,\"bproof_2\":0,\"bproof_1\":0,\"eyebrows_1\":0,\"eye_color\":0,\"blush_3\":0,\"sun_2\":0,\"complexion_2\":0,\"eyebrows_2\":0,\"bags_2\":0,\"face\":0,\"arms_2\":0,\"blush_2\":0,\"age_1\":0,\"mask_2\":0,\"ears_2\":0,\"decals_2\":0,\"beard_3\":0,\"bracelets_1\":-1,\"bracelets_2\":0,\"shoes_1\":10,\"beard_4\":0,\"beard_1\":7,\"hair_1\":21,\"makeup_3\":0,\"lipstick_4\":0,\"helmet_2\":0,\"hair_color_2\":0,\"eyebrows_4\":0,\"bags_1\":0,\"chest_1\":0,\"mask_1\":0,\"lipstick_1\":0,\"blemishes_1\":0,\"watches_2\":0,\"lipstick_3\":0},\"label\":\"classe\"}]}'),
(366, 'user_glasses', 'steam:11000010f09e1f9', '{}'),
(367, 'user_helmet', 'steam:11000010f09e1f9', '{}'),
(368, 'user_mask', 'steam:11000010f09e1f9', '{}'),
(369, 'user_ears', 'steam:11000010f09e1f9', '{}'),
(370, 'society_weazel', NULL, '{}'),
(371, 'property', 'steam:11000010572fcd6', '{}'),
(372, 'user_ears', 'steam:11000010572fcd6', '{}'),
(373, 'user_helmet', 'steam:11000010572fcd6', '{}'),
(374, 'user_glasses', 'steam:11000010572fcd6', '{}'),
(375, 'user_mask', 'steam:11000010572fcd6', '{}'),
(376, 'property', 'steam:1100001365cefc7', '{}'),
(377, 'user_mask', 'steam:1100001365cefc7', '{}'),
(378, 'user_helmet', 'steam:1100001365cefc7', '{}'),
(379, 'user_ears', 'steam:1100001365cefc7', '{}'),
(380, 'user_glasses', 'steam:1100001365cefc7', '{}'),
(381, 'user_glasses', 'steam:11000013ddca410', '{}'),
(382, 'property', 'steam:11000013ddca410', '{}'),
(383, 'user_helmet', 'steam:11000013ddca410', '{}'),
(384, 'user_mask', 'steam:11000013ddca410', '{}'),
(385, 'user_ears', 'steam:11000013ddca410', '{}'),
(386, 'society_journaliste', NULL, '{}');

-- --------------------------------------------------------

--
-- Structure de la table `dopeplants`
--

CREATE TABLE `dopeplants` (
  `owner` varchar(50) NOT NULL,
  `plant` longtext NOT NULL,
  `plantid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `dopeplants`
--

INSERT INTO `dopeplants` (`owner`, `plant`, `plantid`) VALUES
('steam:1100001120b6603', '{\"Owner\":\"steam:1100001120b6603\",\"Water\":0.0,\"Object\":41474,\"Growth\":2.5,\"PlantID\":443383488,\"Gender\":\"Female\",\"Instance\":false,\"Stage\":1,\"Food\":0.0,\"Position\":{\"z\":219.12655639648,\"y\":-970.77661132812,\"x\":-140.78416442872},\"Quality\":19.900000000002}', 443383488),
('steam:1100001120b6603', '{\"Owner\":\"steam:1100001120b6603\",\"Water\":0.0,\"Object\":41730,\"Growth\":100.0,\"PlantID\":383391566,\"Gender\":\"Female\",\"Instance\":false,\"Stage\":7,\"Food\":0.0,\"Position\":{\"z\":103.00833892822,\"y\":269.06045532226,\"x\":389.03033447266},\"Quality\":20.0}', 383391566),
('steam:1100001120b6603', '{\"Owner\":\"steam:1100001120b6603\",\"Water\":0.0,\"Object\":41474,\"Growth\":2.5,\"PlantID\":443383488,\"Gender\":\"Female\",\"Instance\":false,\"Stage\":1,\"Food\":0.0,\"Position\":{\"z\":219.12655639648,\"y\":-970.77661132812,\"x\":-140.78416442872},\"Quality\":19.900000000002}', 443383488),
('steam:1100001120b6603', '{\"Owner\":\"steam:1100001120b6603\",\"Water\":0.0,\"Object\":41730,\"Growth\":100.0,\"PlantID\":383391566,\"Gender\":\"Female\",\"Instance\":false,\"Stage\":7,\"Food\":0.0,\"Position\":{\"z\":103.00833892822,\"y\":269.06045532226,\"x\":389.03033447266},\"Quality\":20.0}', 383391566);

-- --------------------------------------------------------

--
-- Structure de la table `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dpkeybinds`
--

INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
('steam:110000117709c63', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001120b6603', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000011439c22a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010772998a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000134884e5b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000013e699150', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000011bbbfe53', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001187fc731', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010e736395', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000117655aca', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000011292a445', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000109d07b07', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010db2011a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001337f15e7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001342ad7df', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000136a37225', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000011291e036', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000013c064c48', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000100473290', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000134b6f5a1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000013c898d0d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000014158c5cd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000141b8e146', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000013f8236cf', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010f09e1f9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000011ad1b3c5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010572fcd6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001365cefc7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000013ddca410', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000117709c63', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001120b6603', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000011439c22a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010772998a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000134884e5b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000013e699150', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000011bbbfe53', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001187fc731', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010e736395', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000117655aca', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000011292a445', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000109d07b07', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010db2011a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001337f15e7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001342ad7df', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000136a37225', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000011291e036', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000013c064c48', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000100473290', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000134b6f5a1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000013c898d0d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000014158c5cd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000141b8e146', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000013f8236cf', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010f09e1f9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000011ad1b3c5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010572fcd6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001365cefc7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000013ddca410', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');

-- --------------------------------------------------------

--
-- Structure de la table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(105, 'Usage abusif du klaxon', 30, 0),
(106, 'Franchir une ligne continue', 40, 0),
(107, 'Circulation à contresens', 250, 0),
(108, 'Demi-tour non autorisé', 250, 0),
(109, 'Circulation hors-route', 170, 0),
(110, 'Non-respect des distances de sécurité', 30, 0),
(111, 'Arrêt dangereux / interdit', 150, 0),
(112, 'Stationnement gênant / interdit', 70, 0),
(113, 'Non respect  de la priorité à droite', 70, 0),
(114, 'Non-respect à un véhicule prioritaire', 90, 0),
(115, 'Non-respect d\'un stop', 105, 0),
(116, 'Non-respect d\'un feu rouge', 130, 0),
(117, 'Dépassement dangereux', 100, 0),
(118, 'Véhicule non en état', 100, 0),
(119, 'Conduite sans permis', 1500, 0),
(120, 'Délit de fuite', 800, 0),
(121, 'Excès de vitesse < 5 kmh', 90, 0),
(122, 'Excès de vitesse 5-15 kmh', 120, 0),
(123, 'Excès de vitesse 15-30 kmh', 180, 0),
(124, 'Excès de vitesse > 30 kmh', 300, 0),
(125, 'Entrave de la circulation', 110, 1),
(126, 'Dégradation de la voie publique', 90, 1),
(127, 'Trouble à l\'ordre publique', 90, 1),
(128, 'Entrave opération de police', 130, 1),
(129, 'Insulte envers / entre civils', 75, 1),
(130, 'Outrage à agent de police', 110, 1),
(131, 'Menace verbale ou intimidation envers civil', 90, 1),
(132, 'Menace verbale ou intimidation envers policier', 150, 1),
(133, 'Manifestation illégale', 250, 1),
(134, 'Tentative de corruption', 1500, 1),
(135, 'Arme blanche sortie en ville', 120, 2),
(136, 'Arme léthale sortie en ville', 300, 2),
(137, 'Port d\'arme non autorisé (défaut de license)', 600, 2),
(138, 'Port d\'arme illégal', 700, 2),
(139, 'Pris en flag lockpick', 300, 2),
(140, 'Vol de voiture', 1800, 2),
(141, 'Vente de drogue', 1500, 2),
(142, 'Fabriquation de drogue', 1500, 2),
(143, 'Possession de drogue', 650, 2),
(144, 'Prise d\'ôtage civil', 1500, 2),
(145, 'Prise d\'ôtage agent de l\'état', 2000, 2),
(146, 'Braquage particulier', 650, 2),
(147, 'Braquage magasin', 650, 2),
(148, 'Braquage de banque', 1500, 2),
(149, 'Tir sur civil', 2000, 3),
(150, 'Tir sur agent de l\'état', 2500, 3),
(151, 'Tentative de meurtre sur civil', 3000, 3),
(152, 'Tentative de meurtre sur agent de l\'état', 5000, 3),
(153, 'Meurtre sur civil', 10000, 3),
(154, 'Meurte sur agent de l\'état', 30000, 3),
(155, 'Meurtre involontaire', 1800, 3),
(156, 'Escroquerie à l\'entreprise', 2000, 2);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_ballas`
--

CREATE TABLE `fine_types_ballas` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fine_types_ballas`
--

INSERT INTO `fine_types_ballas` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_cammora`
--

CREATE TABLE `fine_types_cammora` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fine_types_cammora`
--

INSERT INTO `fine_types_cammora` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_cosanostra`
--

CREATE TABLE `fine_types_cosanostra` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fine_types_cosanostra`
--

INSERT INTO `fine_types_cosanostra` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_families`
--

CREATE TABLE `fine_types_families` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fine_types_families`
--

INSERT INTO `fine_types_families` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_vagos`
--

CREATE TABLE `fine_types_vagos` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fine_types_vagos`
--

INSERT INTO `fine_types_vagos` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `insto_accounts`
--

CREATE TABLE `insto_accounts` (
  `id` int(11) NOT NULL,
  `forename` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `surname` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `insto_accounts`
--

INSERT INTO `insto_accounts` (`id`, `forename`, `surname`, `username`, `password`, `avatar_url`) VALUES
(57, 'cassi', 'gigi', 'Dako', 'gioktm16', 'https://image.flaticon.com/icons/png/512/149/149071.png');

-- --------------------------------------------------------

--
-- Structure de la table `insto_instas`
--

CREATE TABLE `insto_instas` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filters` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `insto_likes`
--

CREATE TABLE `insto_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `inapId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(1) NOT NULL DEFAULT 0,
  `can_remove` tinyint(1) NOT NULL DEFAULT 1,
  `limit` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`, `limit`) VALUES
('acetone', 'Acetone', 1, 0, 1, 50),
('acier', 'Acier', 1, 0, 1, -1),
('airbag', 'Airbag', 1, 0, 1, 7),
('alive_chicken', 'Poulet vivant', 20, 0, 1, -1),
('bag', 'Bag', 1, 0, 1, 1),
('bagofdope', 'Pochon de Weed', 1, 0, 1, -1),
('bandage', 'Bandage', 1, 0, 1, 20),
('battery', 'Car Battery', 1, 0, 1, 2),
('billet', 'Papier', 1, 0, 1, 50),
('billet_pooch', 'Faux Billet', 1, 0, 1, 10),
('blonde', 'Bière blonde', 1, 0, 1, -1),
('blowpipe', 'Chalumeaux', 2, 0, 1, -1),
('blowtorch', 'Chalumeau', 1, 0, 1, -1),
('bolcacahuetes', 'Bol de cacahuètes', 1, 0, 1, 5),
('bolchips', 'Bol de chips', 1, 0, 1, 5),
('bolnoixcajou', 'Bol de noix de cajou', 1, 0, 1, 5),
('bolpistache', 'Bol de pistaches', 1, 0, 1, 5),
('book', 'Livre', -1, 0, 1, -1),
('bread', 'Pain', 1, 0, 1, -1),
('bronzemedal_run', 'Medaille de Bronze', -1, 0, 1, -1),
('brune', 'Bière brune', 1, 0, 1, -1),
('bulletproof', 'Gilet Par Balles', -1, 0, 1, -1),
('burger', 'Hamburger', 1, 0, 1, 5),
('c4_bank', 'c4', 1, 0, 1, -1),
('caisseketchup', 'Caisse de Ketchup', 1, 0, 1, 40),
('camera', 'Camera', 1, 0, 1, -1),
('carbon', 'Carbone', 1, 0, 1, -1),
('carokit', 'Kit carosserie', 3, 0, 1, -1),
('carotool', 'outils carosserie', 2, 0, 1, -1),
('ccheese', 'Feta au fromage', 1, 0, 1, 40),
('cheese', 'Fromage', 1, 0, 1, 5),
('cheesebows', 'Petit Fromage', 1, 0, 1, -1),
('chips', 'Chips', 1, 0, 1, -1),
('cigarett', 'Cigarett', 1, 0, 1, -1),
('clettuce', 'Laitue tranchée', 1, 0, 1, 40),
('clip', 'Chargeur', -1, 0, 1, -1),
('clothe', 'Vêtement', 2, 0, 1, -1),
('cocacola', 'Coca', 1, 0, 1, -1),
('cocaine_cut', 'Cut Cocaine', 1, 0, 1, -1),
('cocaine_packaged', 'Packaged Cocaine', 1, 0, 1, -1),
('cocaine_uncut', 'Uncut Cocaine', 1, 0, 1, -1),
('coke', 'Coke (1G)', 1, 0, 1, 50),
('coke_pooch', 'Pochon de Coke', 1, 0, 1, 30),
('contrat', 'Facture', 100, 0, 1, -1),
('copper', 'Cuivre', 56, 0, 1, -1),
('coupon', 'Coupon', -1, 0, 1, -1),
('crack', 'Crack', 1, 0, 1, 50),
('crack_pooch', 'Pochon de Crack', 1, 0, 1, 10),
('croquettes', 'Croquettes', 1, 0, 1, -1),
('ctomato', 'Tomate en tranches', 1, 0, 1, 40),
('cutted_wood', 'Bois coupé', 20, 0, 1, -1),
('cut_money', 'Counterfeit Cash - Cut', 1, 0, 1, -1),
('diamond', 'Diamant', 50, 0, 1, -1),
('dopebag', 'Pochon', 1, 0, 1, -1),
('douille', 'Boite de douille', 1, 0, 1, -1),
('drill', 'Drill', 1, 0, 1, -1),
('drpepper', 'Dr. Pepper', 1, 0, 1, 5),
('drugscales', 'Balance', 1, 0, 1, -1),
('ecstasy', 'Ecstasy', 1, 0, 1, 50),
('ecstasy_pooch', 'Pochon decstasy', 1, 0, 1, 10),
('energy', 'Energy Drink', 1, 0, 1, 5),
('essence', 'Essence', 24, 0, 1, -1),
('fabric', 'Tissu', 80, 0, 1, -1),
('fanta', 'Fanta', 1, 0, 1, -1),
('fburger', 'Hamburger congelé', 1, 0, 1, 20),
('firstaidkit', 'First Aid Kit', -1, 0, 1, -1),
('fish', 'Poisson', 100, 0, 1, -1),
('fishbait', 'Fish Bait', 1, 0, 1, 30),
('fishingrod', 'Fishing Rod', 1, 0, 1, 2),
('fixkit', 'Kit réparation', 3, 0, 1, -1),
('fixtool', 'outils réparation', 2, 0, 1, -1),
('fvburger', 'Burger végétarien surgelé', 1, 0, 1, 20),
('gazbottle', 'bouteille de gaz', 2, 0, 1, -1),
('gitanes', 'Gitanes', 1, 0, 1, -1),
('gold', 'Or', 21, 0, 1, -1),
('goldmedal_run', 'Medaille d or', -1, 0, 1, -1),
('golem', 'Golem', 1, 0, 1, 5),
('grand_cru', 'Grand cru', 1, 0, 1, -1),
('grapperaisin', 'Grappe de raisin', 1, 0, 1, 5),
('handcuffs', 'algemas', 1, 0, 1, -1),
('hat', 'Chapeau', -1, 0, 1, -1),
('hifi', 'HiFi', 1, 0, 1, 1),
('highgradefemaleseed', 'Graine de Weed Femmelle+', 1, 0, 1, -1),
('highgradefert', 'Engrais de qualité supérieur', 1, 0, 1, -1),
('highgrademaleseed', 'Graine de Weed Male+', 1, 0, 1, -1),
('highradio', 'Aftermarket Radio', 1, 0, 1, 5),
('highrim', 'Nice Rim', 1, 0, 1, 4),
('houblon', 'Houblon', 1, 0, 1, -1),
('ice', 'Glaçon', 1, 0, 1, 5),
('icetea', 'Ice Tea', 1, 0, 1, 5),
('iron', 'Fer', 42, 0, 1, -1),
('jager', 'Jägermeister', 1, 0, 1, 5),
('jagerbomb', 'Jägerbomb', 1, 0, 1, 5),
('jagercerbere', 'Jäger Cerbère', 1, 0, 1, 3),
('jewels', 'Jewels', 1, 0, 1, -1),
('journal', 'Journal', 1, 0, 1, 50),
('journaux', 'Paquet de Journaux', 1, 0, 1, 25),
('jumelles', 'Jumelles', 1, 0, 1, 1),
('jusfruit', 'Jus de fruits', 1, 0, 1, 5),
('jus_raisin', 'Jus de raisin', 1, 0, 1, -1),
('ketamine', 'Ketamine', 1, 0, 1, 50),
('ketamine_pooch', 'Pochon de ketamine', 1, 0, 1, 10),
('laptop', 'Portable', -1, 0, 1, -1),
('lettuce', 'Laitue', 1, 0, 1, 10),
('lighter', 'Tändare', 1, 0, 1, -1),
('limonade', 'Limonade', 1, 0, 1, 5),
('lithium', 'Lithium', 1, 0, 1, 50),
('lockpick', 'Outil de crochetage', -1, 0, 1, -1),
('loka', 'Loka Crush', 1, 0, 1, -1),
('lokalizator', 'Traceur GPS ( Véhicule )', 1, 0, 1, -1),
('lotteryticket', 'Trisslott', 1, 0, 1, -1),
('lowgradefemaleseed', 'Graine de Weed Femmelle', 1, 0, 1, -1),
('lowgradefert', 'Engrais de qualité inférieure', 1, 0, 1, -1),
('lowgrademaleseed', 'Graine de Weed Mâle', 1, 0, 1, -1),
('lowradio', 'Stock Radio', 1, 0, 1, 5),
('macka', 'Skinkmacka', 1, 0, 1, -1),
('malbora', 'Malbora', 1, 0, 1, -1),
('Marabou Mjölkchoklad', 'marabou', 1, 0, 1, -1),
('martini', 'Martini blanc', 1, 0, 1, 5),
('medikit', 'Medikit', 1, 0, 1, 5),
('menthe', 'Feuille de menthe', 1, 0, 1, 10),
('meth', 'Meth (1G)', 1, 0, 1, 50),
('methlab', 'Methilamine', 1, 0, 1, 50),
('meth_packaged', 'Packaged Meth', 1, 0, 1, -1),
('meth_pooch', 'Pochon de méth', 1, 0, 1, 5),
('meth_raw', 'Raw Meth', 1, 0, 1, -1),
('metreshooter', 'Mètre de shooter', 1, 0, 1, 3),
('mixapero', 'Mix Apéritif', 1, 0, 1, 3),
('mojito', 'Mojito', 1, 0, 1, 5),
('necklace', 'Altın Kolye', 1, 0, 1, -1),
('net_cracker', 'Net Cracker', 1, 0, 1, 2),
('nugget', 'Nugget', 1, 0, 1, 40),
('nuggets10', 'Nuggets x10', 1, 0, 1, 4),
('nuggets4', 'Nuggets x4', 1, 0, 1, 10),
('opium', 'Opium (1G)', 1, 0, 1, 50),
('opium_pooch', 'Pochon d\'Opium', 1, 0, 1, 5),
('orange', 'Orange', 1, 0, 1, 10),
('oxygen_mask', 'Masque d\'oxygène\r\n', 1, 0, 1, -1),
('packaged_chicken', 'Poulet en barquette', 100, 0, 1, -1),
('packaged_plank', 'Paquet de planches', 100, 0, 1, -1),
('pants', 'Pantalon', -1, 0, 1, -1),
('pastacarbonara', 'Pasta Carbonara', 1, 0, 1, -1),
('petrol', 'Pétrole', 24, 0, 1, -1),
('petrol_raffin', 'Pétrole Raffiné', 24, 0, 1, -1),
('phone', 'Telephone', 1, 0, 1, -1),
('phonecassé', 'Téléphone cassé', 1, 0, 1, -1),
('pizza', 'Kebab Pizza', 1, 0, 1, -1),
('plantpot', 'Pot', 1, 0, 1, -1),
('potato', 'Patate', 1, 0, 1, 10),
('poubelle', 'Poubelle', -1, 0, 1, -1),
('poudre', 'Boite de poudre', 1, 0, 1, -1),
('purifiedwater', 'Eau Purifier', 1, 0, 1, -1),
('raisin', 'Raisin', 1, 0, 1, -1),
('raspberry', 'Raspberry', 1, 0, 1, -1),
('repartel', 'Dispositif de réparation de téléphone', 1, 0, 1, -1),
('rhum', 'Rhum', 1, 0, 1, 5),
('rhumcoca', 'Rhum-coca', 1, 0, 1, 5),
('rhumfruit', 'Rhum-jus de fruits', 1, 0, 1, 5),
('ring', 'Yüzük', 1, 0, 1, -1),
('sachetketchup', 'Sachet de Ketchup', 1, 0, 1, 100),
('saffron', 'Saffran', -1, 0, 1, -1),
('saucisson', 'Saucisson', 1, 0, 1, 5),
('schorange', 'Sachet Orange', 1, 0, 1, -1),
('shamburger', 'Burger simple', 1, 0, 1, 5),
('shark', 'Shark', 1, 0, 1, -1),
('shirt', 'Shirt', -1, 0, 1, -1),
('shoes', 'Chaussures', -1, 0, 1, -1),
('silvermedal_run', 'Medaille d argent', -1, 0, 1, -1),
('slaughtered_chicken', 'Poulet abattu', 20, 0, 1, -1),
('soda', 'Soda', 1, 0, 1, 5),
('sorted_money', 'Counterfeit Cash - Sorted', 1, 0, 1, -1),
('speaker', 'Speaker', -1, 0, 1, -1),
('sprite', 'Sprite', 1, 0, 1, -1),
('steak', 'Steak', 1, 0, 1, 5),
('stockrim', 'Stock Rim', 1, 0, 1, 4),
('stone', 'Pierre', 7, 0, 1, -1),
('tabacblond', 'Tabac Blond', 1, 0, 1, -1),
('tabacblondsec', 'Tabac Blond Séché', 1, 0, 1, -1),
('tabacbrun', 'Tabac Brun', 1, 0, 1, -1),
('tabacbrunsec', 'Tabac Brun Séché', 1, 0, 1, -1),
('teqpaf', 'Teq\'paf', 1, 0, 1, 5),
('tequila', 'Tequila', 1, 0, 1, 5),
('thermite', 'Thermite Bomb', 1, 0, 1, 5),
('tomato', 'Tomate', 1, 0, 1, 10),
('toothpaste', 'dentifrice', -1, 0, 1, -1),
('trimmedweed', 'Tête de Weed', 1, 0, 1, -1),
('turtle', 'Sea Turtle', 1, 0, 1, 3),
('turtlebait', 'Turtle Bait', 1, 0, 1, 10),
('vbread', 'Pain végétarien', 1, 0, 1, 20),
('vhamburger', 'Burger végétarien', 1, 0, 1, 5),
('vine', 'Vin', 1, 0, 1, -1),
('vodka', 'Vodka', 1, 0, 1, 5),
('vodkaenergy', 'Vodka-energy', 1, 0, 1, 5),
('vodkafruit', 'Vodka-jus de fruits', 1, 0, 1, 5),
('washed_stone', 'Pierre Lavée', 7, 0, 1, -1),
('watch', 'Kol Saati', 1, 0, 1, -1),
('water', 'Eau', 1, 0, 1, -1),
('wateringcan', 'Arrosoir', 1, 0, 1, -1),
('weed', 'Weed (1G)', 1, 0, 1, 50),
('weed_packaged', 'Packaged Weed', 1, 0, 1, -1),
('weed_pooch', 'Pochon de Weed', 1, 0, 1, 30),
('weed_untrimmed', 'Untrimmed Weed', 1, 0, 1, -1),
('whisky', 'Whisky', 1, 0, 1, 5),
('whiskycoca', 'Whisky-coca', 1, 0, 1, 5),
('wood', 'Bois', 20, 0, 1, -1),
('wool', 'Laine', 40, 0, 1, -1),
('xanax', 'Xanax', 1, 0, 1, -1);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  `SecondaryJob` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`, `SecondaryJob`) VALUES
('ambulance', 'Ambulance', 1, 0),
('ammunation', 'Ammunation', 1, 0),
('avocat', 'Avocat', 1, 0),
('bahama_mamas', 'Bahama Mamas', 1, 0),
('ballas', 'Ballas', 1, 0),
('burgershot', 'Burgershot', 1, 0),
('cammora', 'Cartel ', 1, 0),
('cardealer', 'Concessionnaire', 1, 0),
('cosanostra', 'Mafia', 1, 0),
('eboueur', 'Eboueur', 0, 0),
('families', 'Families', 1, 0),
('fisherman', 'Pêcheur', 0, 0),
('fueler', 'Raffineur', 0, 0),
('gardener', 'Jardinier', 0, 0),
('gopostal', 'Postier', 0, 0),
('gouvernor', 'Gouvernement', 1, 0),
('journalist', 'Weazel News', 0, 0),
('journaliste', 'journaliste', 1, 0),
('lumberjack', 'Bûcheron', 0, 0),
('mechanic', 'Mécano', 1, 0),
('miner', 'Mineur', 0, 0),
('police', 'LSPD', 1, 0),
('poolcleaner', 'Nettoyeur de piscine', 0, 0),
('realestateagent', 'Agent immobilier', 1, 0),
('reporter', 'Journaliste', 1, 0),
('runner', 'Athlète', 0, 0),
('slaughterer', 'Abatteur', 0, 0),
('state', 'Gouvernement', 1, 0),
('tabac', 'Tabac', 1, 0),
('tailor', 'Couturier', 0, 0),
('taxi', 'Taxi', 1, 0),
('trucker', 'Chauffeur', 0, 0),
('unemployed', 'Chômeur', 0, 0),
('unemployed2', 'Citoyen', 1, 0),
('unicorn', 'Unicorn', 1, 0),
('vagos', 'Vagos', 1, 0),
('vigne', 'Vigneron', 1, 0),
('works', 'Ouvrier de la ville', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Chômeur', 70, '{}', '{}'),
(2, 'police', 0, 'recruit', 'Recrue', 110, '{}', '{}'),
(3, 'police', 1, 'officer', 'Officier', 130, '{}', '{}'),
(4, 'police', 2, 'sergeant', 'Sergent', 150, '{}', '{}'),
(5, 'police', 3, 'lieutenant', 'Lieutenant', 170, '{}', '{}'),
(6, 'police', 4, 'boss', 'Commandant', 190, '{}', '{}'),
(9, 'fueler', 0, 'employee', 'Intérimaire', 135, '{}', '{}'),
(10, 'reporter', 0, 'employee', 'Intérimaire', 160, '{}', '{}'),
(11, 'tailor', 0, 'employee', 'Intérimaire', 135, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(18, 'taxi', 0, 'recrue', 'Recrue', 110, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(19, 'taxi', 1, 'novice', 'Novice', 135, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(20, 'taxi', 2, 'experimente', 'Experimente', 160, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(21, 'taxi', 3, 'uber', 'Uber', 110, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(22, 'taxi', 4, 'boss', 'Patron', 200, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(23, 'mechanic', 0, 'recrue', 'Recrue', 110, '{}', '{}'),
(24, 'mechanic', 1, 'novice', 'Novice', 135, '{}', '{}'),
(25, 'mechanic', 2, 'experimente', 'Experimente', 160, '{}', '{}'),
(26, 'mechanic', 3, 'chief', 'Chef d\'équipe', 180, '{}', '{}'),
(27, 'mechanic', 4, 'boss', 'Patron', 200, '{}', '{}'),
(28, 'cardealer', 0, 'recruit', 'Recrue', 110, '{}', '{}'),
(29, 'cardealer', 1, 'novice', 'Novice', 135, '{}', '{}'),
(30, 'cardealer', 2, 'experienced', 'Experimente', 160, '{}', '{}'),
(31, 'cardealer', 3, 'boss', 'Patron', 200, '{}', '{}'),
(32, 'unemployed2', 0, 'rsa', 'Secondaire', 0, '{}', '{}'),
(44, 'trucker', 0, 'employee', 'Employer', 110, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(127, 'tabac', 0, 'recrue', 'Tabagiste', 110, '{}', '{}'),
(128, 'tabac', 1, 'gerant', 'Gérant', 160, '{}', '{}'),
(129, 'tabac', 2, 'boss', 'Patron', 200, '{}', '{}'),
(130, 'unicorn', 0, 'barman', 'Barman', 135, '{}', '{}'),
(131, 'unicorn', 1, 'dancer', 'Danseur', 110, '{}', '{}'),
(132, 'unicorn', 2, 'viceboss', 'Co-gérant', 180, '{}', '{}'),
(133, 'unicorn', 3, 'boss', 'Gérant', 200, '{}', '{}'),
(136, 'ammunation', 0, 'stagiaire', 'Stagiaire', 110, '{}', '{}'),
(137, 'ammunation', 1, 'employé', 'Employé', 135, '{}', '{}'),
(138, 'ammunation', 2, 'professionnel', 'Professionnel', 160, '{}', '{}'),
(139, 'ammunation', 3, 'second', 'Second', 180, '{}', '{}'),
(140, 'ammunation', 4, 'boss', 'Patron', 200, '{}', '{}'),
(141, 'vigne', 0, 'recrue', 'Intérimaire', 110, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(142, 'vigne', 1, 'novice', 'Vigneron', 135, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(143, 'vigne', 2, 'cdisenior', 'Chef de chai', 160, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(144, 'vigne', 3, 'boss', 'Patron', 200, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(145, 'burgershot', 0, 'recruit', 'Recrue', 110, '{}', '{}'),
(146, 'burgershot', 1, 'employer', 'Employé(e)', 135, '{}', '{}'),
(147, 'burgershot', 2, 'viceboss', 'Co-gérant', 160, '{}', '{}'),
(148, 'burgershot', 3, 'boss', 'Gérant', 200, '{}', '{}'),
(190, 'bahama_mamas', 0, 'barman', 'Barman', 135, '{}', '{}'),
(191, 'bahama_mamas', 1, 'dancer', 'Danseur', 110, '{}', '{}'),
(192, 'bahama_mamas', 2, 'viceboss', 'Co-gérant', 180, '{}', '{}'),
(361, 'ambulance', 0, 'ambulance', 'Ambulancier', 110, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(362, 'ambulance', 1, 'doctor', 'Medecin', 130, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(363, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 150, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(364, 'ambulance', 3, 'boss', 'Directeur', 170, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(365, 'avocat', 0, 'recrue', 'Juriste', 110, '{}', '{}'),
(366, 'avocat', 1, 'novice', 'Clerc d\'avocat', 150, '{}', '{}'),
(367, 'avocat', 2, 'experimente', 'Avocat', 0, '{}', '{}'),
(368, 'avocat', 3, 'viceboss', 'Avocat de la cour', 350, '{}', '{}'),
(369, 'avocat', 4, 'boss', 'Directeur de Cabinet', 400, '{}', '{}'),
(374, 'state', 0, 'recrue', 'Juge', 200, '{}', '{}'),
(375, 'state', 1, 'garde', 'Vice Procureur', 150, '{}', '{}'),
(376, 'state', 2, 'vicepresident', 'Procureur', 210, '{}', '{}'),
(378, 'realestateagent', 0, 'location', 'Apprenti', 110, '{}', '{}'),
(379, 'realestateagent', 1, 'vendeur', 'Vendeur', 135, '{}', '{}'),
(380, 'realestateagent', 2, 'gestion', 'Gestion', 160, '{}', '{}'),
(381, 'realestateagent', 3, 'boss', 'Patron', 200, '{}', '{}'),
(382, 'vagos', 0, 'soldato', 'Soldato', 50, '{}', '{}'),
(383, 'vagos', 1, 'capo', 'Capo', 0, '{}', '{}'),
(384, 'vagos', 2, 'consigliere', 'Consigliere', 0, '{}', '{}'),
(385, 'vagos', 3, 'boss', 'Jefe', 0, '{}', '{}'),
(386, 'families', 0, 'soldato', 'Ptite-Frappe', 0, '{}', '{}'),
(387, 'families', 1, 'capo', 'Capo', 0, '{}', '{}'),
(388, 'families', 2, 'consigliere', 'Chef', 0, '{}', '{}'),
(389, 'families', 3, 'boss', 'Patron', 0, '{}', '{}'),
(390, 'ballas', 0, 'soldato', 'Dealer', 0, '{}', '{}'),
(391, 'ballas', 1, 'capo', 'Braqueur', 0, '{}', '{}'),
(392, 'ballas', 2, 'consigliere', 'OG', 0, '{}', '{}'),
(393, 'ballas', 3, 'boss', 'Triple OG', 0, '{}', '{}'),
(402, 'cosanostra', 0, 'soldato', 'Dealer', 0, 'null', 'null'),
(403, 'cosanostra', 1, 'capo', 'Braqueur', 0, 'null', 'null'),
(404, 'cosanostra', 2, 'consigliere', 'Bras Droit', 0, 'null', 'null'),
(405, 'cosanostra', 3, 'boss', 'Parrain', 0, 'null', 'null'),
(406, 'cammora', 0, 'soldato', 'Dealer', 0, 'null', 'null'),
(407, 'cammora', 1, 'capo', 'Braqueur', 0, 'null', 'null'),
(408, 'cammora', 2, 'consigliere', 'Bras Droit', 0, 'null', 'null'),
(409, 'cammora', 3, 'boss', 'Parrain', 0, 'null', 'null'),
(410, 'lumberjack', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(411, 'miner', 0, 'employee', 'Intérimaire', 0, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(412, 'slaughterer', 0, 'employee', 'Intérimaire', 0, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(413, 'journalist', 0, 'interim', 'Livreur', 110, '{}', '{}'),
(414, 'journalist', 1, 'journalist', 'Journaliste', 135, '{}', '{}'),
(415, 'journalist', 2, 'reporter', 'Reporter', 160, '{}', '{}'),
(416, 'journalist', 3, 'chief', 'Rédacteur en chef', 180, '{}', '{}'),
(417, 'journalist', 4, 'boss', 'Patron', 200, '{}', '{}'),
(418, 'burgershot', 0, 'recluta', 'Recrue', 135, '{}', '{}'),
(419, 'burgershot', 1, 'novato', 'Commis de cuisine', 160, '{}', '{}'),
(420, 'burgershot', 2, 'chef', 'Chef', 180, '{}', '{}'),
(421, 'burgershot', 3, 'viceboss', 'Directeur adjoint', 200, '{}', '{}'),
(422, 'burgershot', 4, 'boss', 'Patron', 220, '{}', '{}'),
(423, 'journaliste', 0, 'stagiaire', 'Stagiaire', 250, '{}', '{}'),
(424, 'journaliste', 1, 'reporter', 'Reporter', 350, '{}', '{}'),
(425, 'journaliste', 2, 'investigator', 'Enquêteur', 400, '{}', '{}'),
(426, 'journaliste', 3, 'boss', 'Rédac\' chef', 450, '{}', '{}'),
(427, 'gouvernor', 0, 'security_gouvernor', 'Garde du Corps', 160, '{}', '{}'),
(428, 'gouvernor', 1, 'ministre', 'Ministre', 220, '{}', '{}'),
(429, 'gouvernor', 2, 'boss', 'Vice-Gouverneur', 260, '{}', '{}'),
(430, 'gouvernor', 3, 'boss', 'Gouverneur', 300, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `jsfour_criminalrecord`
--

CREATE TABLE `jsfour_criminalrecord` (
  `offense` varchar(160) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `term` varchar(255) DEFAULT NULL,
  `classified` int(2) NOT NULL DEFAULT 0,
  `identifier` varchar(255) DEFAULT NULL,
  `DOB` varchar(255) DEFAULT NULL,
  `warden` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `jsfour_criminaluserinfo`
--

CREATE TABLE `jsfour_criminaluserinfo` (
  `identifier` varchar(160) NOT NULL,
  `aliases` varchar(255) DEFAULT NULL,
  `recordid` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `eyecolor` varchar(255) DEFAULT NULL,
  `haircolor` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `DOB` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `jsfour_logs`
--

CREATE TABLE `jsfour_logs` (
  `pk` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `remover` varchar(255) DEFAULT NULL,
  `wanted` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion'),
('weapon', 'Permis de port d\'arme');

-- --------------------------------------------------------

--
-- Structure de la table `marathon_times`
--

CREATE TABLE `marathon_times` (
  `id` int(11) NOT NULL,
  `track` int(10) NOT NULL,
  `runner` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `laptime` bigint(20) DEFAULT 999999
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `open_car`
--

CREATE TABLE `open_car` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `got` varchar(50) DEFAULT NULL,
  `NB` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `open_car`
--

INSERT INTO `open_car` (`id`, `identifier`, `label`, `value`, `got`, `NB`) VALUES
(2, 'steam:110000109d07b07', 'Cles', 'TNA 377', 'true', 1),
(3, 'steam:110000134884e5b', 'Cles', 'SEP 007', 'true', 1),
(4, 'steam:110000109d07b07', 'Cles', 'KSG 287', 'true', 1),
(5, 'steam:110000109d07b07', 'Cles', 'RENTDU5Z', 'true', 1),
(7, 'steam:1100001120b6603', 'Cles', 'ZYV 941', 'true', 1);

-- --------------------------------------------------------

--
-- Structure de la table `organisation_moneywash`
--

CREATE TABLE `organisation_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `organisation` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `owned_bags`
--

CREATE TABLE `owned_bags` (
  `identifier` varchar(50) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  `itemcount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `owned_bags`
--

INSERT INTO `owned_bags` (`identifier`, `id`, `x`, `y`, `z`, `itemcount`) VALUES
('steam:110000117709c63', 15586, NULL, NULL, NULL, 1),
(NULL, 73252, -1182.2374267578125, -884.5083618164062, 12.793488502502441, 0),
(NULL, 8657, -1340.79833984375, -1274.45556640625, 3.8976802825927734, 0),
('steam:1100001120b6603', 23862, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `owned_bag_inventory`
--

CREATE TABLE `owned_bag_inventory` (
  `id` int(11) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `owned_bag_inventory`
--

INSERT INTO `owned_bag_inventory` (`id`, `item`, `label`, `count`) VALUES
(15586, 'bandage', 'Bandage', 20);

-- --------------------------------------------------------

--
-- Structure de la table `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `owned_properties`
--

INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
(1, 'LowEndApartment', 1406.25, 1, 'steam:1100001120b6603'),
(2, 'IntegrityWay28', 8500, 1, 'steam:1100001120b6603'),
(4, 'RichardMajesticApt2', 8500, 1, 'steam:1100001120b6603'),
(5, 'TinselTowersApt12', 8500, 1, 'steam:1100001120b6603'),
(6, 'LowEndApartment', 4000, 0, 'steam:11000013f8236cf'),
(7, 'LowEndApartment', 1500, 1, 'steam:11000010f09e1f9');

-- --------------------------------------------------------

--
-- Structure de la table `owned_shops`
--

CREATE TABLE `owned_shops` (
  `identifier` varchar(250) DEFAULT NULL,
  `ShopNumber` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT 0,
  `ShopValue` int(11) DEFAULT NULL,
  `LastRobbery` int(11) DEFAULT 0,
  `ShopName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `owned_shops`
--

INSERT INTO `owned_shops` (`identifier`, `ShopNumber`, `money`, `ShopValue`, `LastRobbery`, `ShopName`) VALUES
('steam:110000117709c63', 1, 0, 280000, 1549643682, 'Benji Shop'),
('0', 2, 0, 220000, 1549643682, '0'),
('0', 3, 0, 235000, 1549643682, '0'),
('0', 4, 0, 285000, 1549643682, '0'),
('0', 5, 0, 135000, 1549643682, '0'),
('0', 6, 0, 235000, 1549643682, '0'),
('0', 7, 0, 160000, 1549643682, '0'),
('0', 8, 0, 275000, 1549643682, '0'),
('0', 9, 0, 265000, 1549643682, '0'),
('0', 10, 0, 300000, 1549643682, '0'),
('0', 12, 0, 145000, 1549643682, '0'),
('0', 13, 0, 145000, 1549643682, '0'),
('0', 14, 0, 280000, 1549643682, '0'),
('0', 15, 0, 300000, 1549643682, '0'),
('0', 16, 0, 435000, 1549643682, '0'),
('0', 18, 0, 235000, 1549643682, '0'),
('0', 11, 0, 225000, 1549643682, '0'),
('0', 19, 0, 150000, 1549643682, '0'),
('0', 20, 0, 165000, 1549643682, '0'),
('0', 17, 0, 150000, 1549643682, '0');

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `vehicle` longtext NOT NULL,
  `owner` varchar(60) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Etat de la voiture',
  `stored` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'State of the vehicle',
  `garage_name` varchar(50) NOT NULL DEFAULT 'Garage_Centre',
  `pound` tinyint(1) NOT NULL DEFAULT 0,
  `vehiclename` varchar(50) DEFAULT NULL,
  `plate` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'car',
  `job` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`vehicle`, `owner`, `state`, `stored`, `garage_name`, `pound`, `vehiclename`, `plate`, `type`, `job`) VALUES
('{\"modDoorSpeaker\":-1,\"modTurbo\":false,\"plateIndex\":4,\"health\":1000,\"extras\":{\"1\":true,\"2\":false},\"modHorns\":-1,\"modSeats\":-1,\"color2\":156,\"modFrontBumper\":-1,\"modXenon\":false,\"modFrame\":-1,\"modPlateHolder\":-1,\"modFender\":-1,\"modArmor\":-1,\"modHood\":-1,\"modVanityPlate\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"modDashboard\":-1,\"modRoof\":-1,\"modStruts\":-1,\"modAerials\":-1,\"modRearBumper\":-1,\"modAPlate\":-1,\"modHydrolic\":-1,\"modBackWheels\":-1,\"dirtLevel\":0.0,\"modSpoilers\":-1,\"modTransmission\":-1,\"neonEnabled\":[false,false,false,false],\"modArchCover\":-1,\"model\":2046537925,\"wheels\":1,\"modLivery\":0,\"modTrimA\":-1,\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTrunk\":-1,\"modSuspension\":-1,\"modFrontWheels\":-1,\"modSmokeEnabled\":false,\"modGrille\":-1,\"modEngine\":-1,\"wheelColor\":156,\"modSteeringWheel\":-1,\"pearlescentColor\":156,\"modDial\":-1,\"modBrakes\":-1,\"modSpeakers\":-1,\"modEngineBlock\":-1,\"modSideSkirt\":-1,\"color1\":156,\"modWindows\":-1,\"modAirFilter\":-1,\"plate\":\"CRQ 993\",\"windowTint\":-1,\"modTank\":-1,\"modTrimB\":-1,\"modShifterLeavers\":-1}', 'steam:11000011292a445', 1, 1, 'Garage_Centre', 0, NULL, 'CRQ 993', 'car', 'police'),
('{\"modFrontBumper\":-1,\"modDashboard\":-1,\"wheels\":1,\"tyreSmokeColor\":[255,255,255],\"modEngineBlock\":-1,\"modHorns\":-1,\"modLivery\":-1,\"modSmokeEnabled\":1,\"modEngine\":-1,\"modArchCover\":-1,\"plateIndex\":2,\"modTurbo\":false,\"modTank\":-1,\"modSpeakers\":-1,\"modXenon\":false,\"pearlescentColor\":0,\"modHood\":-1,\"modFender\":-1,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"modDoorSpeaker\":-1,\"color2\":95,\"modSuspension\":-1,\"modTrimB\":-1,\"modRearBumper\":-1,\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"wheelColor\":156,\"modGrille\":-1,\"modPlateHolder\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modTransmission\":-1,\"modStruts\":-1,\"modAerials\":-1,\"modHydrolic\":-1,\"health\":996,\"modRoof\":-1,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modArmor\":-1,\"modSeats\":-1,\"modFrame\":-1,\"color1\":93,\"modExhaust\":-1,\"windowTint\":-1,\"modWindows\":-1,\"modSpoilers\":-1,\"plate\":\"GBY 677\",\"modRightFender\":-1,\"modBackWheels\":-1,\"extras\":[],\"modVanityPlate\":-1,\"neonColor\":[255,0,255],\"modSideSkirt\":-1,\"dirtLevel\":0.30567646026612,\"modAPlate\":-1,\"model\":-1205801634,\"modTrimA\":-1,\"modDial\":-1}', 'steam:11000010e736395', 1, 0, 'Garage_Centre', 0, NULL, 'GBY 677', 'car', NULL),
('{\"modStruts\":-1,\"modSeats\":-1,\"modExhaust\":-1,\"wheels\":0,\"wheelColor\":156,\"neonColor\":[255,0,255],\"modAirFilter\":-1,\"health\":1000,\"modLivery\":-1,\"modFrontBumper\":-1,\"modTransmission\":-1,\"modRoof\":-1,\"modTank\":-1,\"modVanityPlate\":-1,\"modRightFender\":-1,\"modFrontWheels\":-1,\"modDoorSpeaker\":-1,\"modArmor\":-1,\"modHorns\":-1,\"modTrunk\":-1,\"modPlateHolder\":-1,\"color1\":7,\"modGrille\":-1,\"modSteeringWheel\":-1,\"model\":-344943009,\"modHydrolic\":-1,\"plate\":\"KSG 287\",\"tyreSmokeColor\":[255,255,255],\"modFender\":-1,\"modTrimB\":-1,\"modEngine\":-1,\"modTrimA\":-1,\"modDial\":-1,\"windowTint\":-1,\"modSideSkirt\":-1,\"modSmokeEnabled\":false,\"modTurbo\":false,\"modFrame\":-1,\"modSpoilers\":-1,\"color2\":0,\"modAPlate\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":5,\"modOrnaments\":-1,\"dirtLevel\":10.0,\"modHood\":-1,\"modSpeakers\":-1,\"modDashboard\":-1,\"modArchCover\":-1,\"modWindows\":-1,\"modBrakes\":-1,\"modXenon\":false,\"modShifterLeavers\":-1,\"extras\":{\"10\":true,\"12\":false},\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"plateIndex\":0}', 'steam:110000109d07b07', 1, 0, 'Garage_Centre', 0, NULL, 'KSG 287', 'car', NULL),
('{\"color2\":20,\"modWindows\":-1,\"modSuspension\":-1,\"plateIndex\":4,\"modShifterLeavers\":-1,\"modTrunk\":-1,\"color1\":121,\"wheelColor\":156,\"pearlescentColor\":0,\"modExhaust\":-1,\"modSeats\":-1,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modArmor\":-1,\"modFender\":-1,\"modArchCover\":-1,\"windowTint\":-1,\"modTurbo\":false,\"modAPlate\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modBackWheels\":-1,\"modHorns\":-1,\"model\":1448677353,\"modAerials\":-1,\"modHood\":-1,\"modAirFilter\":-1,\"health\":1000,\"modRoof\":-1,\"dirtLevel\":0.0,\"modTank\":-1,\"modFrontBumper\":-1,\"modXenon\":false,\"modTrimA\":-1,\"modLivery\":-1,\"modDashboard\":-1,\"modSmokeEnabled\":false,\"plate\":\"OFM 474\",\"modSpeakers\":-1,\"modEngine\":-1,\"modTransmission\":-1,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"extras\":{\"1\":false,\"4\":false,\"5\":false,\"2\":false,\"3\":true},\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modStruts\":-1,\"wheels\":0,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSideSkirt\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"modSpoilers\":-1,\"modDial\":-1,\"modHydrolic\":-1}', 'steam:11000013e699150', 1, 1, 'Garage_Centre', 0, NULL, 'OFM 474', 'boat', NULL),
('{\"plateIndex\":0,\"modSpoilers\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"modBackWheels\":-1,\"modHydrolic\":-1,\"modAirFilter\":-1,\"model\":1123216662,\"modTurbo\":false,\"health\":1000,\"modXenon\":false,\"modDashboard\":-1,\"modVanityPlate\":-1,\"modPlateHolder\":-1,\"modExhaust\":-1,\"windowTint\":-1,\"modTank\":-1,\"plate\":\"RENTDU5Z\",\"modFrontBumper\":-1,\"modRearBumper\":-1,\"pearlescentColor\":7,\"extras\":{\"12\":false},\"wheelColor\":156,\"modFrontWheels\":-1,\"modOrnaments\":-1,\"modDial\":-1,\"modEngineBlock\":-1,\"dirtLevel\":4.0,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"color1\":1,\"modStruts\":-1,\"modFender\":-1,\"modSmokeEnabled\":false,\"modArmor\":-1,\"modSpeakers\":-1,\"modAPlate\":-1,\"wheels\":7,\"modArchCover\":-1,\"modWindows\":-1,\"modRoof\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modSteeringWheel\":-1,\"modHorns\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":-1,\"modTransmission\":-1,\"neonColor\":[255,0,255],\"modEngine\":-1,\"modTrimA\":-1,\"modSeats\":-1,\"color2\":1,\"modShifterLeavers\":-1,\"modGrille\":-1,\"modBrakes\":-1,\"modHood\":-1,\"modTrimB\":-1,\"modAerials\":-1,\"modLivery\":-1}', 'steam:110000109d07b07', 1, 0, 'Garage_Centre', 0, NULL, 'RENTDU5Z', 'car', NULL),
('{\"modArchCover\":-1,\"modFrame\":-1,\"modDashboard\":-1,\"modEngine\":-1,\"modBrakes\":-1,\"color1\":0,\"modDial\":-1,\"modSuspension\":-1,\"windowTint\":-1,\"plateIndex\":4,\"modSpoilers\":-1,\"modSpeakers\":-1,\"extras\":[],\"modXenon\":false,\"modLivery\":-1,\"modFrontWheels\":-1,\"modRightFender\":-1,\"pearlescentColor\":0,\"dirtLevel\":4.0,\"modSmokeEnabled\":false,\"modSideSkirt\":-1,\"modRoof\":-1,\"modEngineBlock\":-1,\"modHorns\":-1,\"modAPlate\":-1,\"modHydrolic\":-1,\"color2\":0,\"modAerials\":-1,\"wheels\":7,\"modTrimA\":-1,\"plate\":\"SEP 007\",\"model\":-1131896028,\"modTank\":-1,\"modHood\":-1,\"modOrnaments\":-1,\"modSteeringWheel\":-1,\"health\":1000,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"modExhaust\":-1,\"modFender\":-1,\"modPlateHolder\":-1,\"modTrimB\":-1,\"wheelColor\":96,\"neonColor\":[255,0,255],\"modAirFilter\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"modGrille\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modArmor\":-1,\"modBackWheels\":-1,\"modDoorSpeaker\":-1,\"modRearBumper\":-1,\"modTurbo\":false,\"neonEnabled\":[false,false,false,false],\"modTrunk\":-1}', 'steam:110000134884e5b', 1, 0, 'Garage_Centre', 0, NULL, 'SEP 007', 'car', NULL),
('{\"modArmor\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modEngineBlock\":-1,\"modHorns\":-1,\"model\":2046572318,\"neonEnabled\":[false,false,false,false],\"modWindows\":-1,\"plate\":\"TNA 377\",\"plateIndex\":4,\"health\":1000,\"modXenon\":false,\"modSideSkirt\":-1,\"modPlateHolder\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":96,\"wheels\":0,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"color2\":0,\"modTurbo\":false,\"modTrimB\":-1,\"modRightFender\":-1,\"modAirFilter\":-1,\"modExhaust\":-1,\"modGrille\":-1,\"modRoof\":-1,\"modEngine\":-1,\"modAPlate\":-1,\"extras\":[],\"dirtLevel\":7.0,\"modRearBumper\":-1,\"modStruts\":-1,\"modSpoilers\":-1,\"modSeats\":-1,\"modBackWheels\":-1,\"modSmokeEnabled\":false,\"modFrame\":-1,\"pearlescentColor\":0,\"modHydrolic\":-1,\"modTrimA\":-1,\"modVanityPlate\":-1,\"windowTint\":-1,\"modDashboard\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modDoorSpeaker\":-1,\"modShifterLeavers\":-1,\"modArchCover\":-1,\"neonColor\":[255,0,255],\"modTank\":-1,\"modHood\":-1,\"modLivery\":-1,\"modFender\":-1,\"modFrontBumper\":-1,\"color1\":64}', 'steam:110000109d07b07', 1, 0, 'Garage_Centre', 0, NULL, 'TNA 377', 'car', NULL),
('{\"modLivery\":4,\"modTurbo\":false,\"modTank\":-1,\"modVanityPlate\":-1,\"modDoorSpeaker\":-1,\"neonEnabled\":[false,false,false,false],\"modPlateHolder\":-1,\"modHydrolic\":-1,\"modTrimA\":-1,\"neonColor\":[255,0,255],\"modSeats\":-1,\"modHorns\":-1,\"modDial\":-1,\"health\":1000,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modRightFender\":-1,\"plateIndex\":4,\"modOrnaments\":-1,\"modRoof\":-1,\"modArmor\":-1,\"modHood\":-1,\"extras\":{\"1\":false,\"2\":true},\"modTrunk\":-1,\"modWindows\":-1,\"modFender\":-1,\"modEngine\":-1,\"modBackWheels\":-1,\"modDashboard\":-1,\"modStruts\":-1,\"modTransmission\":-1,\"modSteeringWheel\":-1,\"modAirFilter\":-1,\"modXenon\":false,\"modSpoilers\":-1,\"model\":2046537925,\"windowTint\":-1,\"modSpeakers\":-1,\"plate\":\"YXT 513\",\"dirtLevel\":0.0,\"modFrame\":-1,\"modArchCover\":-1,\"modSuspension\":-1,\"modShifterLeavers\":-1,\"modBrakes\":-1,\"modFrontBumper\":-1,\"modSmokeEnabled\":false,\"modEngineBlock\":-1,\"modExhaust\":-1,\"pearlescentColor\":156,\"color1\":156,\"wheelColor\":156,\"modSideSkirt\":-1,\"modFrontWheels\":-1,\"wheels\":1,\"modGrille\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"modTrimB\":-1,\"color2\":156}', 'steam:11000011292a445', 1, 0, 'Garage_Centre', 0, NULL, 'YXT 513', 'car', 'police'),
('{\"modShifterLeavers\":-1,\"modFrontBumper\":-1,\"modTransmission\":-1,\"modVanityPlate\":-1,\"plate\":\"ZYV 941\",\"modDashboard\":-1,\"color1\":7,\"modRoof\":-1,\"color2\":0,\"extras\":{\"10\":false,\"12\":true},\"modStruts\":-1,\"modPlateHolder\":-1,\"modFrame\":-1,\"dirtLevel\":9.0602779388428,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modFrontWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"modLivery\":-1,\"modTurbo\":false,\"neonColor\":[255,0,255],\"windowTint\":-1,\"modDial\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"wheelColor\":156,\"modArmor\":-1,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"wheels\":0,\"modEngine\":1,\"modHorns\":-1,\"plateIndex\":0,\"modAPlate\":-1,\"modTrimA\":-1,\"modSpoilers\":-1,\"modTrunk\":-1,\"modExhaust\":-1,\"modHood\":-1,\"modXenon\":false,\"modSmokeEnabled\":1,\"modSuspension\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modTank\":-1,\"modBrakes\":-1,\"health\":985,\"modSeats\":-1,\"modHydrolic\":-1,\"modRearBumper\":-1,\"pearlescentColor\":5,\"modBackWheels\":-1,\"modWindows\":-1,\"modOrnaments\":-1,\"modDoorSpeaker\":-1,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"model\":-344943009,\"modAerials\":-1}', 'steam:1100001120b6603', 1, 0, 'Garage_Centre', 0, NULL, 'ZYV 941', 'car', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `pet`
--

CREATE TABLE `pet` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `licenses` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` longtext CHARACTER SET utf8 DEFAULT NULL,
  `dead` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `phone_app_chat`
--

INSERT INTO `phone_app_chat` (`id`, `channel`, `message`, `time`) VALUES
(1, 'coucou', 'mec ca va ?', '2020-06-04 23:44:56');

-- --------------------------------------------------------

--
-- Structure de la table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `phone_calls`
--

INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
(1, '847-7338', '911', 1, '2020-05-10 16:27:26', 0),
(6, '820-3854', '732-1010', 1, '2020-05-20 23:48:19', 1),
(8, '820-3854', '732-1010', 0, '2020-05-20 23:48:42', 1),
(10, '820-3854', '732-1010', 0, '2020-05-20 23:48:42', 1),
(12, '820-3854', '732-1010', 0, '2020-05-20 23:48:52', 1),
(17, '820-3854', '471-5401', 1, '2020-05-20 23:50:07', 1),
(19, '471-5401', '820-3854', 0, '2020-05-20 23:51:46', 0),
(20, '820-3854', '471-5401', 1, '2020-05-20 23:51:46', 0),
(22, '897-1187', '732-1010', 0, '2020-05-20 23:52:05', 1),
(23, '471-5401', '820-3854', 1, '2020-05-21 00:19:14', 0),
(24, '820-3854', '471-5401', 0, '2020-05-21 00:19:14', 0),
(25, '732-1010', 'police', 1, '2020-05-21 00:19:57', 0),
(26, '471-5401', '116-0872', 1, '2020-05-21 00:20:31', 1),
(27, '116-0872', '471-5401', 0, '2020-05-21 00:20:31', 1),
(28, '471-5401', '820-3854', 1, '2020-05-22 16:16:30', 0),
(29, '820-3854', '471-5401', 0, '2020-05-22 16:16:30', 0),
(30, '471-5401', '732-1010', 0, '2020-05-22 16:18:15', 1),
(31, '732-1010', '471-5401', 1, '2020-05-22 16:18:15', 1),
(32, '471-5401', '732-1010', 0, '2020-05-22 16:18:33', 1),
(33, '732-1010', '471-5401', 1, '2020-05-22 16:18:33', 1),
(34, '620-3712', '732-1010', 0, '2020-05-22 16:21:21', 1),
(35, '732-1010', '620-3712', 1, '2020-05-22 16:21:21', 1),
(36, '471-5401', '732-1010', 1, '2020-05-22 20:39:13', 1),
(37, '732-1010', '471-5401', 0, '2020-05-22 20:39:13', 1),
(38, '471-5401', '732-1010', 0, '2020-05-22 20:39:34', 1),
(39, '732-1010', '471-5401', 1, '2020-05-22 20:39:34', 1),
(40, '471-5401', '732-1010', 1, '2020-05-22 20:44:20', 1),
(41, '732-1010', '471-5401', 0, '2020-05-22 20:44:20', 1),
(42, '897-1187', '555-6834', 0, '2020-05-23 21:13:17', 1),
(43, '555-6834', '897-1187', 1, '2020-05-23 21:13:17', 1),
(44, '732-1010', '555-6035', 1, '2020-05-27 19:21:07', 0),
(45, '732-1010', '5556035', 0, '2020-05-27 19:21:56', 1),
(46, '5556035', '732-1010', 1, '2020-05-27 19:21:56', 1),
(47, '5556035', '732-1010', 0, '2020-05-27 19:22:19', 1),
(48, '732-1010', '5556035', 1, '2020-05-27 19:22:19', 1),
(49, '180-6207', 'police', 1, '2020-06-02 01:50:24', 0),
(50, '555-8838', '180-6207', 0, '2020-06-04 23:45:19', 1),
(51, '180-6207', '555-8838', 1, '2020-06-04 23:45:19', 1);

-- --------------------------------------------------------

--
-- Structure de la table `phone_ch_reddit`
--

CREATE TABLE `phone_ch_reddit` (
  `id` int(11) NOT NULL,
  `redgkit` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `phone_messages`
--

INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(1, 'police', '847-7338', 'De #847-7338 : Vol en cours, merci de venir au plus vite !', '2020-05-10 16:27:31', 1, 0),
(2, 'police', '847-7338', 'GPS: 764.52661132813, -350.83489990234', '2020-05-10 16:27:31', 1, 0),
(3, 'police', '847-7338', 'De #847-7338 : Victime d\'agression', '2020-05-10 16:27:40', 1, 0),
(4, 'police', '847-7338', 'GPS: 674.97326660156, -386.90969848633', '2020-05-10 16:27:40', 1, 0),
(5, 'taxi', '596-7938', 'De #596-7938 : Bonjour, serait-il possible de venir me prendre pour une course rapide ?', '2020-05-15 19:47:43', 1, 0),
(6, 'taxi', '596-7938', 'GPS: 1528.5506591796, 3127.2680664062', '2020-05-15 19:47:43', 1, 0),
(8, '732-1010', '897-1187', 'Tony', '2020-05-20 23:51:47', 1, 0),
(19, 'police', '732-1010', 'From #732-1010 :  Quelqu un a passé le radar, au-dessus de 150 KMH', '2020-05-23 19:02:39', 1, 0),
(11, '732-1010', '897-1187', 'yiyujfyuk', '2020-05-20 23:51:59', 1, 1),
(20, '555-1331', '555-4475', 'cc', '2020-05-26 22:22:31', 1, 0),
(12, '820-3854', '471-5401', 'zeub', '2020-05-20 23:52:32', 1, 0),
(13, '471-5401', '820-3854', 'zeub', '2020-05-20 23:52:32', 1, 1),
(14, '471-5401', '820-3854', 'caca', '2020-05-20 23:52:41', 1, 0),
(15, '820-3854', '471-5401', 'caca', '2020-05-20 23:52:41', 1, 1),
(18, 'police', '732-1010', 'From #471-5401 :  Quelqu un a passé le radar, au-dessus de 150 KMH', '2020-05-21 05:33:54', 1, 0),
(21, '555-4475', '555-1331', 'cc', '2020-05-26 22:22:31', 1, 1),
(22, '555-4475', '555-1331', 'je t\'aime', '2020-05-26 22:22:44', 1, 0),
(23, '555-1331', '555-4475', 'je t\'aime', '2020-05-26 22:22:44', 1, 1),
(24, 'taxi', '555-8838', 'De #555-8838 : ts 31.488906860352, -397.5735168457', '2020-06-01 19:04:04', 1, 0),
(25, 'taxi', '555-8838', 'cc', '2020-06-02 01:35:51', 1, 1),
(26, '180-6207', '555-8838', 't es moche non jdeconne', '2020-06-04 19:28:44', 1, 0),
(27, '555-8838', '180-6207', 't es moche non jdeconne', '2020-06-04 19:28:44', 1, 1),
(28, '555-8838', '180-6207', 'GPS: -1905.3813476563, 2056.7546386719', '2020-06-04 19:28:56', 1, 0),
(29, '180-6207', '555-8838', 'GPS: -1905.3813476563, 2056.7546386719', '2020-06-04 19:28:56', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `phone_reddit`
--

CREATE TABLE `phone_reddit` (
  `id` int(11) NOT NULL,
  `redgkit` varchar(20) DEFAULT NULL,
  `reditsage` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_shops`
--

CREATE TABLE `phone_shops` (
  `id` int(11) NOT NULL,
  `store` varchar(255) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `label` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `phone_shops`
--

INSERT INTO `phone_shops` (`id`, `store`, `item`, `price`, `label`) VALUES
(18, 'https://img.pngio.com/sim-card-png-clipart-sim-cards-png-1483_1162.png', 'sim', 50, 'SIM CARD');

-- --------------------------------------------------------

--
-- Structure de la table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `phone_users_contacts`
--

INSERT INTO `phone_users_contacts` (`id`, `identifier`, `number`, `display`) VALUES
(4, 'steam:110000134b6f5a1', '555-4475', 'Nouveau contact'),
(3, 'steam:11000011439c22a', '471-5401', 'dako'),
(5, 'steam:1100001342ad7df', '732-1010', 'Tony'),
(6, 'steam:11000013f8236cf', '555-8838', 'pablo (DAKO)');

-- --------------------------------------------------------

--
-- Structure de la table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000);

-- --------------------------------------------------------

--
-- Structure de la table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rented_vehicles`
--

INSERT INTO `rented_vehicles` (`vehicle`, `plate`, `player_name`, `base_price`, `rent_price`, `owner`) VALUES
('superd', 'RENTDU5Z', 'David Taylor', 25750, 1000, 'steam:110000109d07b07');

-- --------------------------------------------------------

--
-- Structure de la table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `hour` varchar(15) DEFAULT NULL,
  `agentname` varchar(40) DEFAULT NULL,
  `civname` varchar(40) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `report`
--

INSERT INTO `report` (`id`, `hour`, `agentname`, `civname`, `title`, `content`, `date`) VALUES
(1, '15-28-47', 'Walker.M', 'James', 'Vol de voiture', 'Vol de voiture au parking', '2020-11-29'),
(3, '18-36-04', 'Walker.M', 'Max', 'Text', 'MADMDMMADM', '2020-11-29'),
(4, '19-18-53', 'Walker.M', 'Max', 'Vol de bonbon', 'Bonbon trop bon', '2020-11-29'),
(5, '19-20-22', 'Walker.M', 'Max', 'VV', 'dasdads', '2020-11-29'),
(6, '19-25-23', 'Walker.M', 'test', 'test', 'test', '2020-11-29'),
(7, '19-30-46', 'Walker.M', 'test', 'test', 'test', '2020-11-29'),
(8, '19-33-11', 'Walker.M', 'test', 'test', 'test', '2020-11-29'),
(9, '19-34-02', 'Walker.M', 'test', 'test', 'test', '2020-11-29'),
(10, '19-50-41', 'Walker.M', 'Max', 'Max', 'Max', '2020-11-29'),
(11, '19-52-01', 'Walker.M', 'MAx', 'MAx', 'MAx', '2020-11-29'),
(13, '20-09-33', 'Walker.M', 'sdfsf', 'dsfdf', 'sdfqdfsf', '2020-11-29'),
(14, '20-17-12', 'Walker.M', 'Jason', 'Braquage', 'Pillage', '2020-11-29'),
(17, '15-10-00', 'Walker.M', 'Jackson', 'Arnaque au Parking', 'Arnaque', '2020-12-12'),
(18, '21-26-22', 'Walker.M', 'Dako', 'Mange du choco', 'tu pu', '2020-12-12');

-- --------------------------------------------------------

--
-- Structure de la table `shipments`
--

CREATE TABLE `shipments` (
  `id` int(11) DEFAULT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `count` varchar(50) DEFAULT NULL,
  `time` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 30),
(2, 'TwentyFourSeven', 'water', 15),
(3, 'RobsLiquor', 'bread', 30),
(4, 'RobsLiquor', 'water', 15),
(5, 'LTDgasoline', 'bread', 30),
(6, 'LTDgasoline', 'water', 15),
(7, 'TwentyFourSeven', 'phone', 500),
(9, 'RobsLiquor', 'phone', 500),
(11, 'LTDgasoline', 'phone', 500),
(21, 'LSPD', 'bread', 30),
(22, 'LSPD', 'water', 15),
(23, 'LTDgasoline', 'croquettes', 100),
(24, 'LTDgasoline', 'croquettes', 100),
(25, 'LTDgasoline', 'croquettes', 100),
(26, 'LTDgasoline', 'croquettes', 100),
(27, 'TwentyFourSeven', 'bag', 1000),
(28, 'RobsLiquor', 'bag', 1000),
(29, 'LTDgasoline', 'bag', 1000);

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `society_moneywash`
--

INSERT INTO `society_moneywash` (`id`, `identifier`, `society`, `amount`) VALUES
(3, 'steam:11000010e736395', 'unicorn', 1000000),
(4, 'steam:11000010e736395', 'mechanic', 100000),
(5, 'steam:11000010e736395', 'cosanostra', 12000000);

-- --------------------------------------------------------

--
-- Structure de la table `transfer`
--

CREATE TABLE `transfer` (
  `Sender` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Reciever` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Money Transfer Information';

-- --------------------------------------------------------

--
-- Structure de la table `truck_inventory`
--

CREATE TABLE `truck_inventory` (
  `id` int(11) NOT NULL,
  `item` varchar(100) NOT NULL,
  `itemt` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `owned` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `truck_inventory2`
--

CREATE TABLE `truck_inventory2` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `money` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `job2` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed2',
  `job2_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `inventory` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `lastpos` varchar(255) COLLATE utf8mb4_bin DEFAULT '{706.98700000000, -964.94200000000,  31.39550000000000, 142.503463745117}',
  `isDead` bit(1) DEFAULT b'0',
  `lastdigits` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT 0,
  `pet` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `job2`, `job2_grade`, `loadout`, `inventory`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `last_property`, `is_dead`, `phone_number`, `tattoos`, `lastpos`, `isDead`, `lastdigits`, `jail`, `pet`) VALUES
('steam:110000100473290', 'license:03e77c78bb1fe8c690e62089950745b83e324ffb', 350, 'Rlifi Estagado', '{\"decals_2\":0,\"bags_1\":0,\"complexion_1\":0,\"watches_2\":0,\"complexion_2\":0,\"skin\":0,\"age_2\":0,\"lipstick_3\":0,\"blush_3\":0,\"bodyb_1\":0,\"blush_1\":0,\"glasses_2\":0,\"torso_2\":0,\"bproof_2\":0,\"ears_2\":0,\"chest_3\":0,\"blemishes_1\":0,\"makeup_1\":0,\"glasses_1\":0,\"chain_2\":0,\"bracelets_1\":-1,\"arms\":0,\"beard_1\":0,\"ears_1\":-1,\"eyebrows_2\":0,\"eye_color\":0,\"beard_2\":0,\"chain_1\":0,\"sun_1\":0,\"makeup_3\":0,\"moles_1\":0,\"chest_1\":0,\"eyebrows_1\":0,\"bracelets_2\":0,\"pants_2\":0,\"lipstick_2\":0,\"moles_2\":0,\"pants_1\":0,\"hair_1\":13,\"hair_color_1\":0,\"decals_1\":0,\"hair_color_2\":0,\"beard_4\":0,\"mask_1\":0,\"sun_2\":0,\"shoes_2\":0,\"tshirt_2\":0,\"eyebrows_4\":0,\"lipstick_1\":0,\"bags_2\":0,\"eyebrows_3\":0,\"blush_2\":0,\"hair_2\":0,\"beard_3\":0,\"helmet_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"torso_1\":0,\"tshirt_1\":0,\"blemishes_2\":0,\"helmet_1\":-1,\"face\":0,\"shoes_1\":0,\"watches_1\":-1,\"bproof_1\":0,\"age_1\":0,\"makeup_4\":0,\"bodyb_2\":0,\"sex\":0,\"chest_2\":0,\"arms_2\":0,\"mask_2\":0}', 'unemployed', 0, 'unemployed2', 0, '[]', NULL, '{\"y\":-988.80000000004,\"x\":463.80000000004,\"z\":25.0}', 2175, 0, 'user', '', '', '', '', '', '[{\"val\":786600,\"name\":\"hunger\",\"percent\":78.66},{\"val\":839950,\"name\":\"thirst\",\"percent\":83.995},{\"val\":0,\"name\":\"drug\",\"percent\":0.0},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', NULL, 0, '555-4475', NULL, '{706.98700000000, -964.94200000000,  31.39550000000000, 142.503463745117}', b'0', NULL, 0, ''),
('steam:11000010572fcd6', 'license:3cbef71295f6821b818fe04f52ecfc13476ff2d9', 9610, 'iMax', '{\"makeup_1\":0,\"complexion_2\":0,\"eyebrows_3\":0,\"arms\":1,\"blemishes_1\":0,\"ears_2\":0,\"eyebrows_1\":0,\"torso_2\":0,\"moles_2\":0,\"chest_1\":0,\"hair_1\":33,\"glasses_2\":0,\"bodyb_2\":0,\"chain_2\":0,\"watches_2\":0,\"complexion_1\":0,\"hair_2\":0,\"helmet_1\":-1,\"blush_2\":0,\"pants_2\":5,\"mask_1\":0,\"hair_color_2\":0,\"ears_1\":-1,\"lipstick_4\":0,\"shoes_1\":18,\"moles_1\":0,\"eyebrows_2\":0,\"eye_color\":0,\"lipstick_1\":0,\"chest_2\":0,\"bproof_1\":0,\"age_1\":0,\"lipstick_2\":0,\"bracelets_1\":-1,\"shoes_2\":0,\"beard_3\":0,\"torso_1\":21,\"makeup_2\":0,\"chest_3\":0,\"chain_1\":0,\"sun_1\":0,\"beard_1\":10,\"blush_3\":0,\"bracelets_2\":0,\"age_2\":0,\"helmet_2\":0,\"bodyb_1\":0,\"decals_1\":0,\"decals_2\":0,\"makeup_4\":0,\"bproof_2\":0,\"sex\":0,\"bags_1\":0,\"sun_2\":0,\"watches_1\":0,\"hair_color_1\":0,\"mask_2\":0,\"arms_2\":0,\"glasses_1\":5,\"blemishes_2\":0,\"beard_2\":4,\"lipstick_3\":0,\"bags_2\":0,\"beard_4\":0,\"tshirt_1\":22,\"makeup_3\":0,\"face\":0,\"tshirt_2\":4,\"blush_1\":0,\"eyebrows_4\":0,\"pants_1\":24}', 'police', 3, 'unemployed2', 0, '[{\"components\":[],\"label\":\"Couteau\",\"name\":\"WEAPON_KNIFE\",\"ammo\":0},{\"components\":[],\"label\":\"Matraque\",\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0},{\"components\":[],\"label\":\"Marteau\",\"name\":\"WEAPON_HAMMER\",\"ammo\":0},{\"components\":[],\"label\":\"Batte\",\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"components\":[],\"label\":\"Club de golf\",\"name\":\"WEAPON_GOLFCLUB\",\"ammo\":0},{\"components\":[],\"label\":\"Pied de biche\",\"name\":\"WEAPON_CROWBAR\",\"ammo\":0},{\"components\":[\"clip_default\",\"flashlight\",\"suppressor\"],\"label\":\"Pistolet\",\"name\":\"WEAPON_PISTOL\",\"ammo\":9913},{\"components\":[\"clip_default\"],\"label\":\"Pistolet de combat\",\"name\":\"WEAPON_COMBATPISTOL\",\"ammo\":9913},{\"components\":[\"clip_default\"],\"label\":\"Pistolet automatique\",\"name\":\"WEAPON_APPISTOL\",\"ammo\":9913},{\"components\":[\"clip_default\"],\"label\":\"Pistolet calibre 50\",\"name\":\"WEAPON_PISTOL50\",\"ammo\":9913},{\"components\":[],\"label\":\"Revolver\",\"name\":\"WEAPON_REVOLVER\",\"ammo\":9913},{\"components\":[\"clip_default\"],\"label\":\"Pétoire\",\"name\":\"WEAPON_SNSPISTOL\",\"ammo\":9913},{\"components\":[\"clip_default\",\"suppressor\",\"luxary_finish\"],\"label\":\"COLT 1911\",\"name\":\"WEAPON_HEAVYPISTOL\",\"ammo\":9913},{\"components\":[\"clip_default\"],\"label\":\"Radar à main\",\"name\":\"WEAPON_VINTAGEPISTOL\",\"ammo\":9913},{\"components\":[\"clip_default\"],\"label\":\"Mini-Uzi\",\"name\":\"WEAPON_MICROSMG\",\"ammo\":9990},{\"components\":[\"clip_default\"],\"label\":\"Smg\",\"name\":\"WEAPON_SMG\",\"ammo\":9990},{\"components\":[\"clip_default\"],\"label\":\"Smg d\'assaut\",\"name\":\"WEAPON_ASSAULTSMG\",\"ammo\":9990},{\"components\":[\"clip_default\"],\"label\":\"Pistolet mitrailleur\",\"name\":\"WEAPON_MACHINEPISTOL\",\"ammo\":9990},{\"components\":[\"clip_default\"],\"label\":\"Arme de défense personnelle\",\"name\":\"WEAPON_COMBATPDW\",\"ammo\":9990},{\"components\":[],\"label\":\"Fusil à pompe\",\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":9991},{\"components\":[],\"label\":\"Carabine à canon scié\",\"name\":\"WEAPON_SAWNOFFSHOTGUN\",\"ammo\":9991},{\"components\":[\"clip_default\"],\"label\":\"Carabine d\'assaut\",\"name\":\"WEAPON_ASSAULTSHOTGUN\",\"ammo\":9991},{\"components\":[],\"label\":\"Carabine bullpup\",\"name\":\"WEAPON_BULLPUPSHOTGUN\",\"ammo\":9991},{\"components\":[\"clip_default\"],\"label\":\"Fusil à pompe lourd\",\"name\":\"WEAPON_HEAVYSHOTGUN\",\"ammo\":9991},{\"components\":[\"clip_default\"],\"label\":\"AK-47\",\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":9705},{\"components\":[\"clip_default\"],\"label\":\"M4A1\",\"name\":\"WEAPON_CARBINERIFLE\",\"ammo\":9705},{\"components\":[\"clip_default\"],\"label\":\"Fusil avancé\",\"name\":\"WEAPON_ADVANCEDRIFLE\",\"ammo\":9705},{\"components\":[\"clip_default\"],\"label\":\"G36C\",\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":9705},{\"components\":[\"clip_default\"],\"label\":\"Fusil bullpup\",\"name\":\"WEAPON_BULLPUPRIFLE\",\"ammo\":9705},{\"components\":[\"clip_default\"],\"label\":\"Fusil compact\",\"name\":\"WEAPON_COMPACTRIFLE\",\"ammo\":9705},{\"components\":[\"clip_default\"],\"label\":\"Mitrailleuse\",\"name\":\"WEAPON_MG\",\"ammo\":5961},{\"components\":[\"clip_default\"],\"label\":\"Mitrailleuse de combat\",\"name\":\"WEAPON_COMBATMG\",\"ammo\":5961},{\"components\":[\"clip_default\"],\"label\":\"Balayeuse gusenberg\",\"name\":\"WEAPON_GUSENBERG\",\"ammo\":5961},{\"components\":[\"scope\"],\"label\":\"Mk. 14 Mod 1 EBR\",\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":5997},{\"components\":[\"scope_advanced\"],\"label\":\"Barrett M82\",\"name\":\"WEAPON_HEAVYSNIPER\",\"ammo\":5997},{\"components\":[\"clip_default\",\"scope\"],\"label\":\"Fusil marksman\",\"name\":\"WEAPON_MARKSMANRIFLE\",\"ammo\":5997},{\"components\":[],\"label\":\"Lance-grenade\",\"name\":\"WEAPON_GRENADELAUNCHER\",\"ammo\":20},{\"components\":[],\"label\":\"Lance-rocket\",\"name\":\"WEAPON_RPG\",\"ammo\":20},{\"components\":[],\"label\":\"Lance-missile stinger\",\"name\":\"WEAPON_STINGER\",\"ammo\":20},{\"components\":[],\"label\":\"Minigun\",\"name\":\"WEAPON_MINIGUN\",\"ammo\":2000},{\"components\":[],\"label\":\"Grenade\",\"name\":\"WEAPON_GRENADE\",\"ammo\":20},{\"components\":[],\"label\":\"Bombe collante\",\"name\":\"WEAPON_STICKYBOMB\",\"ammo\":25},{\"components\":[],\"label\":\"Grenade fumigène\",\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"components\":[],\"label\":\"Grenade à gaz bz\",\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"components\":[],\"label\":\"Cocktail molotov\",\"name\":\"WEAPON_MOLOTOV\",\"ammo\":25},{\"components\":[],\"label\":\"Extincteur\",\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":2000},{\"components\":[],\"label\":\"Jerrican d\'essence\",\"name\":\"WEAPON_PETROLCAN\",\"ammo\":2000},{\"components\":[],\"label\":\"Balle\",\"name\":\"WEAPON_BALL\",\"ammo\":1},{\"components\":[],\"label\":\"Bouteille\",\"name\":\"WEAPON_BOTTLE\",\"ammo\":0},{\"components\":[],\"label\":\"Poignard\",\"name\":\"WEAPON_DAGGER\",\"ammo\":0},{\"components\":[],\"label\":\"Feu d\'artifice\",\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"components\":[],\"label\":\"Mousquet\",\"name\":\"WEAPON_MUSKET\",\"ammo\":9991},{\"components\":[],\"label\":\"Tazer\",\"name\":\"WEAPON_STUNGUN\",\"ammo\":2000},{\"components\":[],\"label\":\"Lance tête-chercheuse\",\"name\":\"WEAPON_HOMINGLAUNCHER\",\"ammo\":10},{\"components\":[],\"label\":\"Mine de proximité\",\"name\":\"WEAPON_PROXMINE\",\"ammo\":5},{\"components\":[],\"label\":\"Boule de neige\",\"name\":\"WEAPON_SNOWBALL\",\"ammo\":10},{\"components\":[],\"label\":\"Lance fusée de détresse\",\"name\":\"WEAPON_FLAREGUN\",\"ammo\":20},{\"components\":[],\"label\":\"Pistolet marksman\",\"name\":\"WEAPON_MARKSMANPISTOL\",\"ammo\":9913},{\"components\":[],\"label\":\"Poing américain\",\"name\":\"WEAPON_KNUCKLE\",\"ammo\":0},{\"components\":[],\"label\":\"Hachette\",\"name\":\"WEAPON_HATCHET\",\"ammo\":0},{\"components\":[],\"label\":\"Canon éléctrique\",\"name\":\"WEAPON_RAILGUN\",\"ammo\":20},{\"components\":[],\"label\":\"Machette\",\"name\":\"WEAPON_MACHETE\",\"ammo\":0},{\"components\":[],\"label\":\"Couteau à cran d\'arrêt\",\"name\":\"WEAPON_SWITCHBLADE\",\"ammo\":0},{\"components\":[],\"label\":\"Fusil à pompe double canon\",\"name\":\"WEAPON_DBSHOTGUN\",\"ammo\":9991},{\"components\":[],\"label\":\"Lampe torche\",\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0},{\"components\":[],\"label\":\"Parachute\",\"name\":\"GADGET_PARACHUTE\",\"ammo\":0},{\"components\":[],\"label\":\"Fusée Détresse\",\"name\":\"WEAPON_FLARE\",\"ammo\":25},{\"components\":[],\"label\":\"Double-Action Revolver\",\"name\":\"WEAPON_DOUBLEACTION\",\"ammo\":9913}]', NULL, '{\"x\":479.5,\"y\":-991.2,\"z\":24.3}', 2480, 4, 'superadmin', 'Max', 'Walker', '07-13-1990', 'm', '180', '[{\"name\":\"hunger\",\"val\":69400,\"percent\":6.94},{\"name\":\"thirst\",\"val\":177050,\"percent\":17.705},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"drug\",\"val\":0,\"percent\":0.0}]', NULL, 0, '747-0013', NULL, '{706.98700000000, -964.94200000000,  31.39550000000000, 142.503463745117}', b'0', NULL, 0, NULL),
('steam:110000109d07b07', 'license:a6e0ed0a1b1c8b43b512915986e2126f0dd5a59a', 49760, 'David Taylor', '{\"blush_3\":0,\"hair_color_1\":27,\"age_2\":10,\"decals_2\":0,\"makeup_1\":0,\"eyebrows_1\":21,\"chain_1\":38,\"bags_2\":0,\"blemishes_1\":0,\"blush_1\":0,\"skin\":1,\"glasses_1\":3,\"ears_1\":-1,\"makeup_4\":0,\"beard_1\":9,\"helmet_1\":26,\"bodyb_1\":0,\"bproof_2\":0,\"bags_1\":0,\"makeup_3\":0,\"moles_2\":0,\"beard_4\":5,\"watches_2\":0,\"sun_1\":0,\"beard_3\":27,\"hair_color_2\":28,\"tshirt_1\":10,\"moles_1\":0,\"ears_2\":0,\"chest_3\":0,\"lipstick_2\":0,\"tshirt_2\":0,\"chest_2\":0,\"pants_1\":60,\"arms\":12,\"pants_2\":6,\"lipstick_3\":0,\"lipstick_4\":0,\"torso_2\":6,\"hair_2\":0,\"blush_2\":0,\"complexion_2\":0,\"chest_1\":0,\"eye_color\":5,\"chain_2\":14,\"age_1\":14,\"eyebrows_3\":27,\"lipstick_1\":0,\"arms_2\":0,\"sex\":0,\"face\":11,\"bodyb_2\":0,\"mask_1\":0,\"blemishes_2\":0,\"hair_1\":19,\"decals_1\":0,\"sun_2\":0,\"eyebrows_2\":10,\"watches_1\":-1,\"beard_2\":10,\"torso_1\":119,\"bproof_1\":0,\"bracelets_2\":0,\"shoes_2\":1,\"makeup_2\":0,\"glasses_2\":8,\"bracelets_1\":-1,\"complexion_1\":0,\"eyebrows_4\":0,\"shoes_1\":20,\"mask_2\":0,\"helmet_2\":7}', 'unemployed', 0, 'unemployed2', 0, '[]', NULL, '{\"x\":-1502.6,\"y\":123.20000000002,\"z\":55.600000000006}', -4105, 0, 'superadmin', 'Edward', 'Levingston', '07-27-1963', 'm', '180', '[{\"name\":\"hunger\",\"percent\":45.68,\"val\":456800},{\"name\":\"thirst\",\"percent\":59.26,\"val\":592600},{\"name\":\"drug\",\"percent\":0.0,\"val\":0},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', NULL, 0, '555-6007', NULL, '{706.98700000000, -964.94200000000,  31.39550000000000, 142.503463745117}', b'0', NULL, 0, ''),
('steam:11000010db2011a', 'license:97cf0aa414bf94cbc11178ac381ecb06d7fe408a', 500, 'Michael Johnson', '{\"moles_1\":0,\"tshirt_2\":0,\"tshirt_1\":0,\"shoes_2\":0,\"eyebrows_2\":0,\"mask_1\":0,\"mask_2\":0,\"hair_color_1\":0,\"blush_2\":0,\"makeup_4\":0,\"lipstick_2\":0,\"arms_2\":0,\"bracelets_1\":-1,\"chest_1\":0,\"makeup_3\":0,\"blush_1\":0,\"helmet_1\":-1,\"beard_4\":0,\"bproof_2\":0,\"ears_1\":-1,\"glasses_1\":0,\"bags_2\":0,\"shoes_1\":0,\"chest_3\":0,\"bags_1\":40,\"helmet_2\":0,\"beard_3\":0,\"bodyb_2\":0,\"age_2\":0,\"sex\":0,\"lipstick_4\":0,\"hair_2\":0,\"lipstick_3\":0,\"eyebrows_4\":0,\"hair_1\":0,\"sun_1\":0,\"eye_color\":0,\"torso_1\":0,\"face\":14,\"skin\":0,\"chain_1\":0,\"pants_2\":0,\"pants_1\":0,\"arms\":0,\"sun_2\":0,\"age_1\":0,\"watches_2\":0,\"decals_2\":0,\"decals_1\":0,\"eyebrows_3\":0,\"watches_1\":-1,\"moles_2\":0,\"torso_2\":0,\"bproof_1\":0,\"chain_2\":0,\"beard_2\":0,\"lipstick_1\":0,\"complexion_2\":0,\"beard_1\":0,\"blemishes_2\":0,\"makeup_1\":0,\"bodyb_1\":0,\"chest_2\":0,\"glasses_2\":0,\"hair_color_2\":0,\"bracelets_2\":0,\"eyebrows_1\":0,\"makeup_2\":0,\"ears_2\":0,\"complexion_1\":0,\"blemishes_1\":0,\"blush_3\":0}', 'unemployed', 0, 'unemployed2', 0, '[{\"components\":[\"clip_default\"],\"ammo\":17,\"label\":\"Fusil d\'assaut\",\"name\":\"WEAPON_ASSAULTRIFLE\"}]', NULL, '{\"x\":-96.399999999994,\"y\":-1753.0,\"z\":29.599999999998}', 2060, 0, 'user', 'ff', 'ff', '12/44/2000', 'm', '120', '[{\"percent\":0.0,\"val\":0,\"name\":\"drug\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"},{\"percent\":49.82,\"val\":498200,\"name\":\"hunger\"},{\"percent\":49.865,\"val\":498650,\"name\":\"thirst\"}]', NULL, 0, '514-7054', NULL, '{706.98700000000, -964.94200000000,  31.39550000000000, 142.503463745117}', b'0', NULL, 0, ''),
('steam:11000010f09e1f9', 'license:f064b2aaa18c6cb7a4e02c3eef2092671fb1ebfe', 400000, 'Tisco Bender', '{\"blush_3\":0,\"hair_color_1\":0,\"age_2\":0,\"decals_2\":0,\"makeup_1\":0,\"eyebrows_1\":0,\"chain_1\":0,\"bags_2\":0,\"beard_2\":10,\"blush_1\":0,\"glasses_1\":0,\"ears_1\":-1,\"makeup_4\":0,\"beard_1\":10,\"helmet_1\":-1,\"bodyb_1\":0,\"bproof_2\":0,\"bags_1\":0,\"bracelets_2\":0,\"moles_2\":0,\"beard_4\":0,\"watches_2\":0,\"sun_1\":0,\"beard_3\":0,\"hair_color_2\":0,\"complexion_1\":0,\"moles_1\":0,\"ears_2\":0,\"chest_3\":0,\"lipstick_2\":0,\"tshirt_2\":0,\"chest_2\":0,\"pants_1\":28,\"arms\":26,\"pants_2\":0,\"lipstick_3\":0,\"lipstick_4\":0,\"torso_2\":2,\"hair_2\":0,\"blush_2\":0,\"complexion_2\":0,\"chest_1\":0,\"eye_color\":0,\"chain_2\":0,\"age_1\":0,\"eyebrows_3\":0,\"arms_2\":0,\"bracelets_1\":-1,\"hair_1\":73,\"bproof_1\":0,\"eyebrows_4\":0,\"mask_1\":0,\"blemishes_2\":0,\"lipstick_1\":0,\"blemishes_1\":0,\"face\":0,\"tshirt_1\":6,\"watches_1\":-1,\"makeup_2\":0,\"torso_1\":21,\"sex\":0,\"makeup_3\":0,\"decals_1\":0,\"shoes_1\":10,\"glasses_2\":0,\"shoes_2\":0,\"helmet_2\":0,\"bodyb_2\":0,\"eyebrows_2\":7,\"sun_2\":0,\"mask_2\":0}', 'mechanic', 4, 'families', 2, '[{\"ammo\":-1,\"components\":[],\"label\":\"Tazer\",\"name\":\"WEAPON_STUNGUN\"}]', NULL, '{\"z\":44.600000000006,\"y\":-784.0,\"x\":-460.40000000002}', 1599500, 4, 'superadmin', 'Tisco', 'Bender', '17 mai 2000', 'm', '186', '[{\"name\":\"hunger\",\"percent\":64.39,\"val\":643900},{\"name\":\"thirst\",\"percent\":44.5425,\"val\":445425},{\"name\":\"drug\",\"percent\":0.0,\"val\":0},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', NULL, 0, NULL, NULL, '{706.98700000000, -964.94200000000,  31.39550000000000, 142.503463745117}', b'0', NULL, 0, ''),
('steam:1100001120b6603', 'license:d3335a3aa03572bcb7c721629cb81a1e953989ad', 150, 'Pablo Gavir', '{\"beard_1\":0,\"tshirt_1\":0,\"arms_2\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"blemishes_2\":0,\"age_2\":0,\"makeup_2\":0,\"ears_1\":-1,\"pants_1\":0,\"mask_2\":0,\"hair_color_1\":0,\"bracelets_1\":-1,\"lipstick_1\":0,\"lipstick_2\":0,\"sun_1\":0,\"chest_2\":0,\"sex\":0,\"eyebrows_3\":0,\"lipstick_3\":0,\"decals_1\":0,\"pants_2\":0,\"helmet_1\":-1,\"face\":5,\"lipstick_4\":0,\"makeup_3\":0,\"eye_color\":0,\"hair_2\":0,\"age_1\":0,\"blush_2\":0,\"hair_1\":9,\"torso_1\":0,\"eyebrows_1\":0,\"blush_3\":0,\"bodyb_2\":0,\"eyebrows_4\":0,\"bracelets_2\":0,\"decals_2\":0,\"glasses_1\":0,\"helmet_2\":0,\"sun_2\":0,\"ears_2\":0,\"chest_1\":0,\"mask_1\":0,\"chain_1\":0,\"blush_1\":0,\"bags_1\":0,\"arms\":0,\"shoes_2\":0,\"glasses_2\":0,\"tshirt_2\":0,\"torso_2\":0,\"shoes_1\":0,\"beard_3\":0,\"blemishes_1\":0,\"chest_3\":0,\"moles_1\":0,\"complexion_2\":0,\"moles_2\":0,\"chain_2\":0,\"makeup_1\":0,\"hair_color_2\":0,\"watches_2\":0,\"watches_1\":-1,\"complexion_1\":0,\"bproof_1\":0,\"bodyb_1\":0,\"beard_2\":0,\"bags_2\":0,\"makeup_4\":0,\"beard_4\":0}', 'avocat', 4, 'unemployed2', 0, '[]', NULL, '{\"x\":-929.0,\"y\":-460.0,\"z\":37.199999999998}', 1280, 0, 'user', 'Pablo', 'Gavir', '02/09/2000', 'M', '180', '[{\"name\":\"hunger\",\"val\":122100,\"percent\":12.21},{\"name\":\"thirst\",\"val\":216575,\"percent\":21.6575},{\"name\":\"drug\",\"val\":0,\"percent\":0.0},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', NULL, 0, NULL, NULL, '{706.98700000000, -964.94200000000,  31.39550000000000, 142.503463745117}', b'0', NULL, 0, NULL),
('steam:110000134884e5b', 'license:dcb978fade2bf1a446f467cb49bf13d1d12880fc', 64671195, 'Luke Remondis', '{\"sun_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"beard_2\":10,\"lipstick_4\":0,\"bproof_1\":0,\"glasses_1\":5,\"blush_2\":0,\"makeup_1\":0,\"ears_1\":7,\"lipstick_3\":0,\"skin\":5,\"chest_2\":0,\"moles_2\":0,\"moles_1\":0,\"tshirt_2\":5,\"shoes_1\":31,\"torso_2\":0,\"torso_1\":181,\"helmet_1\":-1,\"bodyb_2\":0,\"bracelets_2\":0,\"shoes_2\":1,\"bproof_2\":0,\"chest_1\":0,\"pants_1\":26,\"age_1\":0,\"pants_2\":0,\"sun_2\":0,\"bracelets_1\":-1,\"blush_1\":0,\"makeup_3\":0,\"tshirt_1\":1,\"mask_1\":0,\"decals_1\":0,\"mask_2\":0,\"hair_color_1\":22,\"age_2\":0,\"eyebrows_4\":0,\"bags_1\":41,\"hair_1\":21,\"complexion_2\":0,\"beard_4\":0,\"chain_1\":0,\"bags_2\":0,\"bodyb_1\":0,\"chain_2\":0,\"eyebrows_1\":12,\"watches_2\":0,\"face\":44,\"sex\":0,\"lipstick_2\":0,\"complexion_1\":0,\"chest_3\":0,\"arms_2\":0,\"glasses_2\":3,\"hair_2\":1,\"hair_color_2\":21,\"lipstick_1\":0,\"eyebrows_3\":41,\"helmet_2\":0,\"blush_3\":0,\"blemishes_2\":0,\"ears_2\":0,\"watches_1\":-1,\"makeup_4\":0,\"eyebrows_2\":10,\"decals_2\":0,\"beard_3\":0,\"eye_color\":2,\"beard_1\":10,\"arms\":12}', 'police', 4, 'cosanostra', 3, '[{\"label\":\"Pistolet calibre 50\",\"name\":\"WEAPON_PISTOL50\",\"components\":[\"clip_default\"],\"ammo\":9904},{\"label\":\"Mini-Uzi\",\"name\":\"WEAPON_MICROSMG\",\"components\":[\"clip_default\"],\"ammo\":9765},{\"label\":\"M4A1\",\"name\":\"WEAPON_CARBINERIFLE\",\"components\":[\"clip_default\"],\"ammo\":167},{\"label\":\"Lance tête-chercheuse\",\"name\":\"WEAPON_HOMINGLAUNCHER\",\"components\":[],\"ammo\":2}]', NULL, '{\"x\":419.80000000004,\"z\":29.199999999998,\"y\":-1066.7999999998}', 15230, 4, 'superadmin', 'Luke', 'Remondis', '04/12/1995', 'm', '185', '[{\"percent\":100.0,\"val\":1000000,\"name\":\"hunger\"},{\"percent\":100.0,\"val\":1000000,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drug\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', NULL, 0, '620-3712', NULL, '{706.98700000000, -964.94200000000,  31.39550000000000, 142.503463745117}', b'0', NULL, 0, ''),
('steam:110000134b6f5a1', 'license:9443d1bfa4360395ad58d27d5b4a11fd5d75c281', 350, 'Lara Estagado', '{\"tshirt_2\":0,\"bags_1\":0,\"complexion_1\":0,\"watches_2\":0,\"complexion_2\":0,\"skin\":0,\"age_2\":0,\"helmet_1\":-1,\"blush_3\":0,\"bodyb_1\":0,\"blush_1\":0,\"glasses_2\":0,\"torso_2\":0,\"bproof_2\":0,\"ears_2\":0,\"chest_3\":0,\"blemishes_1\":0,\"makeup_1\":0,\"glasses_1\":2,\"chain_2\":0,\"bracelets_1\":-1,\"arms\":0,\"beard_1\":0,\"ears_1\":-1,\"mask_2\":0,\"eye_color\":0,\"beard_2\":0,\"chain_1\":0,\"sun_1\":0,\"makeup_3\":0,\"moles_1\":0,\"chest_1\":0,\"eyebrows_1\":0,\"bracelets_2\":0,\"pants_2\":0,\"lipstick_2\":0,\"moles_2\":0,\"pants_1\":0,\"hair_1\":48,\"hair_color_1\":2,\"bproof_1\":0,\"hair_color_2\":0,\"age_1\":0,\"mask_1\":0,\"sun_2\":0,\"eyebrows_3\":0,\"blemishes_2\":0,\"eyebrows_4\":0,\"lipstick_1\":0,\"decals_1\":0,\"decals_2\":0,\"blush_2\":0,\"makeup_2\":0,\"beard_3\":0,\"helmet_2\":0,\"lipstick_4\":0,\"tshirt_1\":0,\"torso_1\":0,\"shoes_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"face\":21,\"shoes_2\":0,\"watches_1\":-1,\"sex\":1,\"beard_4\":0,\"makeup_4\":0,\"bodyb_2\":0,\"bags_2\":0,\"chest_2\":0,\"arms_2\":0,\"eyebrows_2\":0}', 'unemployed', 0, 'unemployed2', 0, '[]', NULL, '{\"y\":-1102.7999999998,\"x\":-65.200000000012,\"z\":26.199999999998}', 2175, 0, 'user', 'Lara', 'Estagado', '07/24/1993', 'f', '165', '[{\"val\":809600,\"name\":\"hunger\",\"percent\":80.96},{\"val\":857200,\"name\":\"thirst\",\"percent\":85.72},{\"val\":0,\"name\":\"drug\",\"percent\":0.0},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', NULL, 0, '555-1331', NULL, '{706.98700000000, -964.94200000000,  31.39550000000000, 142.503463745117}', b'0', NULL, 0, ''),
('steam:1100001365cefc7', 'license:1818ff7b13cf78e30bf9acd4e95ea3616b81bac2', 394, 'Jin-Leï', '{\"torso_1\":4,\"eyebrows_2\":5,\"age_2\":0,\"watches_2\":0,\"glasses_1\":0,\"arms\":4,\"hair_2\":0,\"decals_2\":0,\"age_1\":0,\"beard_4\":0,\"complexion_1\":0,\"eyebrows_3\":0,\"arms_2\":0,\"beard_1\":11,\"sun_2\":0,\"pants_2\":0,\"face\":44,\"hair_1\":46,\"moles_2\":0,\"makeup_4\":0,\"makeup_1\":0,\"blush_1\":0,\"lipstick_4\":0,\"chain_1\":0,\"sun_1\":0,\"lipstick_2\":0,\"mask_2\":0,\"bproof_1\":0,\"pants_1\":10,\"watches_1\":4,\"beard_3\":0,\"bproof_2\":0,\"blemishes_1\":0,\"makeup_3\":0,\"tshirt_1\":94,\"hair_color_1\":5,\"chest_1\":0,\"shoes_1\":10,\"chest_3\":0,\"eyebrows_4\":5,\"makeup_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"mask_1\":0,\"shoes_2\":0,\"eyebrows_1\":2,\"lipstick_3\":0,\"ears_1\":5,\"bracelets_2\":0,\"bodyb_1\":0,\"moles_1\":0,\"beard_2\":9,\"ears_2\":0,\"sex\":0,\"lipstick_1\":0,\"blush_2\":0,\"bags_1\":0,\"blemishes_2\":0,\"chain_2\":0,\"complexion_2\":0,\"glasses_2\":0,\"bracelets_1\":4,\"hair_color_2\":0,\"bags_2\":0,\"eye_color\":5,\"chest_2\":0,\"bodyb_2\":0,\"torso_2\":0,\"helmet_2\":0,\"decals_1\":0,\"blush_3\":0}', 'unemployed', 0, 'unemployed2', 0, '[]', NULL, '{\"z\":15.2,\"x\":-2959.7999999998,\"y\":464.0}', 2070, 0, 'user', 'Tommy', 'Clinton', '06/10/1990', 'm', '183', '[{\"val\":453200,\"name\":\"hunger\",\"percent\":45.32},{\"val\":589900,\"name\":\"thirst\",\"percent\":58.99},{\"val\":0,\"name\":\"drug\",\"percent\":0.0},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', NULL, 0, NULL, NULL, '{706.98700000000, -964.94200000000,  31.39550000000000, 142.503463745117}', b'0', NULL, 0, NULL),
('steam:110000136a37225', 'license:5b66bd3facf1d35f01061da9ae0d48cfed7d5346', 500, 'Pablo Rodriguez', '{\"watches_1\":-1,\"torso_1\":3,\"moles_1\":0,\"beard_3\":0,\"tshirt_2\":0,\"sex\":0,\"glasses_1\":0,\"decals_1\":0,\"beard_2\":0,\"shoes_1\":0,\"chest_3\":0,\"chest_1\":0,\"bodyb_2\":0,\"arms_2\":0,\"blemishes_2\":0,\"lipstick_3\":0,\"age_2\":0,\"pants_1\":0,\"hair_color_1\":0,\"complexion_2\":0,\"lipstick_1\":0,\"blemishes_1\":0,\"chest_2\":0,\"makeup_2\":0,\"makeup_3\":0,\"bags_1\":0,\"makeup_4\":0,\"ears_1\":-1,\"chain_1\":0,\"mask_1\":0,\"bproof_2\":0,\"eyebrows_4\":0,\"shoes_2\":0,\"lipstick_4\":0,\"eyebrows_2\":0,\"bags_2\":0,\"face\":0,\"chain_2\":0,\"hair_color_2\":0,\"bproof_1\":0,\"decals_2\":0,\"helmet_1\":-1,\"beard_1\":0,\"eyebrows_1\":0,\"sun_2\":0,\"ears_2\":0,\"bodyb_1\":0,\"blush_1\":0,\"torso_2\":0,\"eye_color\":0,\"mask_2\":0,\"glasses_2\":0,\"watches_2\":0,\"blush_3\":0,\"bracelets_1\":-1,\"hair_2\":0,\"beard_4\":0,\"hair_1\":9,\"eyebrows_3\":0,\"blush_2\":0,\"tshirt_1\":15,\"pants_2\":0,\"sun_1\":0,\"lipstick_2\":0,\"age_1\":0,\"arms\":0,\"moles_2\":0,\"bracelets_2\":0,\"complexion_1\":0,\"helmet_2\":0,\"makeup_1\":0,\"skin\":0}', 'police', 3, 'ballas', 1, '[{\"label\":\"Pistolet\",\"components\":[\"clip_default\"],\"ammo\":338,\"name\":\"WEAPON_PISTOL\"}]', NULL, '{\"y\":-994.0,\"x\":227.20000000002,\"z\":-99.0}', 2145, 4, 'superadmin', 'Pablo', 'Rodriguez', '18/01/1990', 'm', '190', '[{\"val\":703500,\"percent\":70.35,\"name\":\"hunger\"},{\"val\":777625,\"percent\":77.7625,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"},{\"val\":0,\"percent\":0.0,\"name\":\"drug\"}]', NULL, 0, '555-8880', NULL, '{706.98700000000, -964.94200000000,  31.39550000000000, 142.503463745117}', b'0', NULL, 0, ''),
('steam:11000013c064c48', 'license:120888e448ce0ca1d9fd18117a4f95109609c566', 500, 'Fares Salvatore', '{\"bproof_2\":0,\"decals_2\":0,\"bproof_1\":0,\"chest_1\":0,\"makeup_1\":0,\"glasses_2\":0,\"bags_2\":0,\"lipstick_2\":0,\"shoes_2\":0,\"pants_1\":0,\"makeup_2\":0,\"eyebrows_3\":0,\"torso_1\":0,\"hair_color_2\":0,\"mask_1\":0,\"blush_2\":0,\"decals_1\":0,\"lipstick_3\":0,\"sun_2\":0,\"helmet_2\":0,\"chain_2\":0,\"chest_3\":0,\"sex\":0,\"beard_4\":0,\"moles_1\":0,\"moles_2\":0,\"hair_1\":0,\"chest_2\":0,\"makeup_3\":0,\"age_1\":0,\"chain_1\":0,\"watches_2\":0,\"bracelets_2\":0,\"bags_1\":0,\"blemishes_1\":0,\"blemishes_2\":0,\"arms_2\":0,\"arms\":0,\"ears_2\":0,\"shoes_1\":0,\"glasses_1\":0,\"torso_2\":0,\"beard_3\":0,\"eyebrows_4\":0,\"lipstick_1\":0,\"hair_color_1\":0,\"skin\":0,\"pants_2\":0,\"beard_1\":0,\"eyebrows_2\":0,\"eyebrows_1\":0,\"hair_2\":0,\"tshirt_2\":0,\"watches_1\":-1,\"mask_2\":0,\"ears_1\":-1,\"bracelets_1\":-1,\"complexion_2\":0,\"bodyb_2\":0,\"helmet_1\":-1,\"age_2\":0,\"lipstick_4\":0,\"makeup_4\":0,\"eye_color\":0,\"tshirt_1\":0,\"blush_3\":0,\"bodyb_1\":0,\"beard_2\":0,\"blush_1\":0,\"face\":0,\"complexion_1\":0,\"sun_1\":0}', 'unemployed', 0, 'unemployed2', 0, '[]', NULL, '{\"y\":-781.3999999999,\"x\":616.6000000001,\"z\":10.8}', 2160, 0, 'user', 'Allos', 'Mouglie', '07/08/2000', 'f', '180', '[{\"percent\":44.08,\"val\":440800,\"name\":\"hunger\"},{\"percent\":45.56,\"val\":455600,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drug\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', NULL, 0, '555-2537', NULL, '{706.98700000000, -964.94200000000,  31.39550000000000, 142.503463745117}', b'0', NULL, 0, ''),
('steam:11000013c898d0d', 'license:bc368599e36f092ed877cc5dd9f35bf4c8e9308c', 500, 'Diogo Pérez', '{\"hair_2\":0,\"watches_1\":-1,\"decals_2\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"torso_1\":105,\"skin\":4,\"eyebrows_3\":0,\"bodyb_2\":0,\"lipstick_2\":0,\"moles_1\":0,\"bproof_1\":0,\"sun_1\":0,\"shoes_1\":31,\"chain_1\":0,\"ears_1\":-1,\"makeup_1\":0,\"torso_2\":0,\"sun_2\":0,\"pants_1\":83,\"moles_2\":0,\"makeup_3\":0,\"decals_1\":0,\"watches_2\":0,\"beard_4\":0,\"sex\":0,\"mask_2\":0,\"arms\":0,\"chain_2\":0,\"eyebrows_2\":0,\"eye_color\":0,\"eyebrows_4\":0,\"hair_color_2\":3,\"bags_2\":0,\"bracelets_1\":-1,\"chest_3\":0,\"blush_1\":0,\"complexion_2\":0,\"helmet_2\":0,\"makeup_4\":0,\"bproof_2\":0,\"lipstick_4\":0,\"tshirt_1\":15,\"age_2\":0,\"eyebrows_1\":0,\"mask_1\":0,\"blush_3\":0,\"complexion_1\":0,\"glasses_2\":0,\"beard_2\":10,\"glasses_1\":0,\"arms_2\":0,\"beard_1\":10,\"chest_2\":0,\"beard_3\":0,\"bags_1\":0,\"hair_1\":21,\"pants_2\":0,\"hair_color_1\":3,\"helmet_1\":-1,\"face\":0,\"shoes_2\":0,\"blush_2\":0,\"chest_1\":0,\"makeup_2\":0,\"age_1\":0,\"bracelets_2\":0,\"tshirt_2\":0,\"blemishes_2\":0,\"ears_2\":0,\"blemishes_1\":0,\"bodyb_1\":0}', 'avocat', 3, 'unemployed2', 0, '[{\"label\":\"Pistolet\",\"name\":\"WEAPON_PISTOL\",\"components\":[\"clip_default\"],\"ammo\":2692},{\"label\":\"AK-47\",\"name\":\"WEAPON_ASSAULTRIFLE\",\"components\":[\"clip_default\"],\"ammo\":119},{\"label\":\"Double-Action Revolver\",\"name\":\"WEAPON_DOUBLEACTION\",\"components\":[],\"ammo\":2692}]', NULL, '{\"z\":48.0,\"y\":-406.19999999996,\"x\":237.40000000002}', 2565, 4, 'superadmin', 'Diogo', 'Perez', '09-09-1998', 'm', '180', '[{\"name\":\"hunger\",\"percent\":57.47,\"val\":574700},{\"name\":\"thirst\",\"percent\":68.1025,\"val\":681025},{\"name\":\"drug\",\"percent\":0.0,\"val\":0},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', NULL, 0, '555-8423', NULL, '{706.98700000000, -964.94200000000,  31.39550000000000, 142.503463745117}', b'0', NULL, 0, ''),
('steam:11000013ddca410', 'license:af49b7f6769ca194d98196da57877b2ab33bb3d9', 500, 'Androuk Trader', '{\"chain_1\":0,\"sun_2\":0,\"bracelets_1\":-1,\"decals_1\":0,\"glasses_2\":0,\"mask_1\":0,\"age_2\":0,\"blush_1\":0,\"arms_2\":0,\"bodyb_2\":0,\"eyebrows_2\":0,\"helmet_1\":-1,\"chest_1\":0,\"bags_1\":0,\"lipstick_2\":0,\"pants_2\":0,\"blemishes_1\":0,\"torso_2\":0,\"hair_2\":0,\"beard_3\":29,\"torso_1\":0,\"beard_2\":10,\"ears_2\":0,\"bproof_2\":0,\"helmet_2\":0,\"makeup_3\":0,\"tshirt_2\":0,\"eye_color\":0,\"sun_1\":0,\"watches_1\":-1,\"eyebrows_3\":0,\"face\":0,\"lipstick_4\":0,\"complexion_1\":0,\"blemishes_2\":0,\"sex\":0,\"eyebrows_1\":0,\"beard_1\":10,\"shoes_1\":0,\"watches_2\":0,\"blush_2\":0,\"hair_color_2\":0,\"chest_3\":0,\"chain_2\":0,\"shoes_2\":0,\"bags_2\":0,\"chest_2\":0,\"arms\":0,\"pants_1\":0,\"decals_2\":0,\"makeup_4\":0,\"ears_1\":-1,\"moles_1\":0,\"moles_2\":0,\"lipstick_1\":0,\"makeup_1\":0,\"bracelets_2\":0,\"beard_4\":0,\"glasses_1\":0,\"mask_2\":0,\"blush_3\":0,\"makeup_2\":0,\"complexion_2\":0,\"bproof_1\":0,\"hair_1\":1,\"eyebrows_4\":0,\"hair_color_1\":44,\"tshirt_1\":0,\"lipstick_3\":0,\"bodyb_1\":0,\"age_1\":0}', 'lumberjack', 0, 'unemployed2', 0, '[]', NULL, '{\"z\":55.600000000006,\"y\":140.0,\"x\":-1377.0}', 2000, 0, 'user', 'Androuk', 'Trader', '15/08/98', 'M', '200', '[{\"val\":856400,\"name\":\"hunger\",\"percent\":85.64},{\"val\":892300,\"name\":\"thirst\",\"percent\":89.23},{\"val\":0,\"name\":\"drug\",\"percent\":0.0},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', NULL, 0, NULL, NULL, '{706.98700000000, -964.94200000000,  31.39550000000000, 142.503463745117}', b'0', NULL, 0, NULL),
('steam:11000013f8236cf', 'license:db2d636b39b17bca9a2137900b28f8cf5fe584e6', 1999800, 'Kyllian Soubrier', '{\"makeup_1\":0,\"pants_1\":59,\"hair_color_2\":0,\"hair_2\":0,\"lipstick_3\":0,\"face\":0,\"glasses_1\":0,\"shoes_1\":25,\"blemishes_2\":0,\"decals_2\":4,\"beard_1\":11,\"moles_2\":0,\"ears_2\":0,\"chain_1\":0,\"blush_1\":0,\"mask_2\":0,\"chest_1\":0,\"chain_2\":0,\"mask_1\":0,\"helmet_2\":1,\"pants_2\":0,\"arms_2\":0,\"beard_2\":10,\"bproof_1\":2,\"age_1\":0,\"bracelets_1\":-1,\"beard_3\":0,\"hair_color_1\":0,\"sun_1\":0,\"decals_1\":15,\"hair_1\":21,\"bodyb_1\":0,\"complexion_2\":0,\"tshirt_2\":0,\"ears_1\":2,\"arms\":0,\"chest_2\":0,\"glasses_2\":0,\"lipstick_2\":0,\"watches_2\":0,\"eyebrows_3\":0,\"eyebrows_2\":0,\"bproof_2\":0,\"moles_1\":0,\"beard_4\":0,\"chest_3\":0,\"tshirt_1\":38,\"lipstick_1\":0,\"eyebrows_4\":0,\"eyebrows_1\":0,\"bags_2\":0,\"eye_color\":0,\"makeup_2\":0,\"blush_2\":0,\"bodyb_2\":0,\"bracelets_2\":0,\"torso_2\":0,\"makeup_3\":0,\"helmet_1\":44,\"lipstick_4\":0,\"blemishes_1\":0,\"blush_3\":0,\"makeup_4\":0,\"torso_1\":93,\"sex\":0,\"bags_1\":0,\"age_2\":0,\"watches_1\":-1,\"sun_2\":0,\"complexion_1\":0,\"shoes_2\":0}', 'police', 3, 'unemployed2', 0, '[{\"components\":[],\"label\":\"Matraque\",\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0},{\"components\":[\"clip_default\"],\"label\":\"Pistolet de combat\",\"name\":\"WEAPON_COMBATPISTOL\",\"ammo\":690},{\"components\":[\"clip_default\"],\"label\":\"Radar à main\",\"name\":\"WEAPON_VINTAGEPISTOL\",\"ammo\":690},{\"components\":[\"clip_default\"],\"label\":\"M4A1\",\"name\":\"WEAPON_CARBINERIFLE\",\"ammo\":460},{\"components\":[],\"label\":\"Tazer\",\"name\":\"WEAPON_STUNGUN\",\"ammo\":460},{\"components\":[],\"label\":\"Lampe torche\",\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0}]', NULL, '{\"x\":228.20000000002,\"y\":-991.6000000001,\"z\":-99.0}', 502610, 4, 'superadmin', 'Kyllian', 'Soubrier', '17/03/1994', 'm', '180', '[{\"name\":\"hunger\",\"val\":208500,\"percent\":20.85},{\"name\":\"thirst\",\"val\":406375,\"percent\":40.6375},{\"name\":\"drug\",\"val\":0,\"percent\":0.0},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 'LowEndApartment', 0, '180-6207', NULL, '{706.98700000000, -964.94200000000,  31.39550000000000, 142.503463745117}', b'0', NULL, 0, ''),
('steam:110000141b8e146', 'license:e6840fbe068efc6133672eb38eaef95b9f3a1fab', 350, 'noachmt6', '{\"watches_2\":0,\"tshirt_1\":0,\"ears_1\":-1,\"eyebrows_1\":0,\"mask_2\":0,\"glasses_2\":0,\"helmet_2\":0,\"makeup_2\":0,\"bags_2\":0,\"sun_1\":0,\"beard_3\":0,\"lipstick_2\":0,\"blush_3\":0,\"arms\":0,\"face\":0,\"chest_2\":0,\"eye_color\":0,\"lipstick_4\":0,\"decals_2\":0,\"decals_1\":0,\"mask_1\":0,\"arms_2\":0,\"torso_2\":0,\"bags_1\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"chest_1\":0,\"shoes_2\":0,\"helmet_1\":-1,\"beard_1\":0,\"tshirt_2\":0,\"beard_2\":0,\"bodyb_2\":0,\"bracelets_2\":0,\"chain_1\":0,\"torso_1\":0,\"makeup_3\":0,\"blush_1\":0,\"makeup_4\":0,\"pants_1\":0,\"bproof_2\":0,\"ears_2\":0,\"age_2\":0,\"complexion_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"bodyb_1\":0,\"blemishes_2\":0,\"pants_2\":0,\"sex\":0,\"complexion_2\":0,\"age_1\":0,\"makeup_1\":0,\"sun_2\":0,\"lipstick_1\":0,\"watches_1\":-1,\"blemishes_1\":0,\"beard_4\":0,\"hair_color_1\":0,\"blush_2\":0,\"hair_color_2\":0,\"glasses_1\":0,\"moles_1\":0,\"shoes_1\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"chain_2\":0,\"chest_3\":0,\"eyebrows_3\":0,\"hair_2\":0,\"moles_2\":0}', 'unemployed', 0, 'unemployed2', 0, '[]', NULL, '{\"z\":146.59999999998,\"x\":-2648.4000000004,\"y\":1297.2000000002}', 2015, 0, 'user', 'Noa', 'Lalin', '05/10/2000', 'm', '187', '[{\"val\":376600,\"percent\":37.66,\"name\":\"hunger\"},{\"val\":407450,\"percent\":40.745,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drug\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', NULL, 0, '555-9659', NULL, '{706.98700000000, -964.94200000000,  31.39550000000000, 142.503463745117}', b'0', NULL, 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `user_accessories`
--

CREATE TABLE `user_accessories` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `mask` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin DEFAULT 'Masque',
  `type` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `index` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `user_accessories`
--

INSERT INTO `user_accessories` (`id`, `identifier`, `mask`, `label`, `type`, `index`) VALUES
(1, 'steam:11000013e699150', '{\"mask_1\":3,\"mask_2\":2}', 'Bob', 'Chapeau', NULL),
(2, 'steam:11000013e699150', '{\"mask_1\":5,\"mask_2\":0}', 'Lunette de soleil', 'Lunette', NULL),
(3, 'steam:11000013e699150', '{\"mask_1\":14,\"mask_2\":1}', 'Bandana', 'Chapeau', NULL),
(4, 'steam:1100001120b6603', '{\"mask_1\":4,\"mask_2\":0}', 'Casquette LS', 'Chapeau', NULL),
(5, 'steam:1100001120b6603', '{\"mask_1\":3,\"mask_2\":0}', 'Lunette old school', 'Lunette', NULL),
(6, 'steam:11000013e699150', '{\"mask_2\":0,\"mask_1\":5}', 'Lunette de soleil', 'Lunette', NULL),
(7, 'steam:11000013e699150', '{\"mask_2\":1,\"mask_1\":3}', 'Bob', 'Chapeau', NULL),
(8, 'steam:11000013e699150', '{\"mask_2\":1,\"mask_1\":3}', 'Bob', 'Chapeau', NULL),
(9, 'steam:11000010e736395', '{\"mask_2\":0,\"mask_1\":11}', '', 'Chapeau', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
(1, 'steam:110000117709c63', 'black_money', 1537121),
(2, 'steam:1100001120b6603', 'black_money', 3115425),
(3, 'steam:11000011439c22a', 'black_money', 0),
(4, 'steam:11000010772998a', 'black_money', 0),
(5, 'steam:110000134884e5b', 'black_money', 4299309),
(6, 'steam:11000013e699150', 'black_money', 0),
(7, 'steam:11000011bbbfe53', 'black_money', 0),
(8, 'steam:1100001187fc731', 'black_money', 0),
(9, 'steam:11000010e736395', 'black_money', 379538),
(10, 'steam:110000117655aca', 'black_money', 0),
(11, 'steam:11000011292a445', 'black_money', 0),
(12, 'steam:110000109d07b07', 'black_money', 2292095),
(13, 'steam:11000010db2011a', 'black_money', 741269),
(14, 'steam:1100001337f15e7', 'black_money', 0),
(15, 'steam:1100001342ad7df', 'black_money', 0),
(16, 'steam:110000136a37225', 'black_money', 0),
(17, 'steam:11000011291e036', 'black_money', 0),
(18, 'steam:11000013c064c48', 'black_money', 0),
(19, 'steam:110000100473290', 'black_money', 0),
(20, 'steam:110000134b6f5a1', 'black_money', 0),
(21, 'steam:11000013c898d0d', 'black_money', 0),
(22, 'steam:11000014158c5cd', 'black_money', 0),
(23, 'steam:110000141b8e146', 'black_money', 0),
(24, 'steam:11000013f8236cf', 'black_money', 0),
(25, 'steam:11000010f09e1f9', 'black_money', 0),
(26, 'steam:11000010572fcd6', 'black_money', 0),
(27, 'steam:1100001365cefc7', 'black_money', 0),
(28, 'steam:11000013ddca410', 'black_money', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_inventory`
--

INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(1, 'steam:110000117709c63', 'shoes', 0),
(2, 'steam:110000117709c63', 'clip', 0),
(3, 'steam:110000117709c63', 'coupon', 0),
(4, 'steam:110000117709c63', 'mixapero', 0),
(5, 'steam:110000117709c63', 'lighter', 0),
(6, 'steam:110000117709c63', 'fanta', 0),
(7, 'steam:110000117709c63', 'raisin', 0),
(8, 'steam:110000117709c63', 'raspberry', 0),
(9, 'steam:110000117709c63', 'cigarett', 0),
(10, 'steam:110000117709c63', 'washed_stone', 0),
(11, 'steam:110000117709c63', 'firstaidkit', 0),
(12, 'steam:110000117709c63', 'airbag', 0),
(13, 'steam:110000117709c63', 'oxygen_mask', 0),
(14, 'steam:110000117709c63', 'shirt', 0),
(15, 'steam:110000117709c63', 'xanax', 0),
(16, 'steam:110000117709c63', 'rhum', 0),
(17, 'steam:110000117709c63', 'shark', 0),
(18, 'steam:110000117709c63', 'speaker', 0),
(19, 'steam:110000117709c63', 'meth', 0),
(20, 'steam:110000117709c63', 'fixtool', 0),
(21, 'steam:110000117709c63', 'cheese', 0),
(22, 'steam:110000117709c63', 'carotool', 0),
(23, 'steam:110000117709c63', 'opium_pooch', 0),
(24, 'steam:110000117709c63', 'grapperaisin', 0),
(25, 'steam:110000117709c63', 'martini', 0),
(26, 'steam:110000117709c63', 'jagercerbere', 0),
(27, 'steam:110000117709c63', 'bronzemedal_run', 0),
(28, 'steam:110000117709c63', 'whiskycoca', 0),
(29, 'steam:110000117709c63', 'packaged_chicken', 0),
(30, 'steam:110000117709c63', 'highrim', 0),
(31, 'steam:110000117709c63', 'energy', 0),
(32, 'steam:110000117709c63', 'jager', 0),
(33, 'steam:110000117709c63', 'mojito', 0),
(34, 'steam:110000117709c63', 'toothpaste', 0),
(35, 'steam:110000117709c63', 'poubelle', 0),
(36, 'steam:110000117709c63', 'loka', 0),
(37, 'steam:110000117709c63', 'turtlebait', 0),
(38, 'steam:110000117709c63', 'menthe', 0),
(39, 'steam:110000117709c63', 'petrol_raffin', 0),
(40, 'steam:110000117709c63', 'alive_chicken', 0),
(41, 'steam:110000117709c63', 'cheesebows', 0),
(42, 'steam:110000117709c63', 'tabacblondsec', 0),
(43, 'steam:110000117709c63', 'weed_pooch', 0),
(44, 'steam:110000117709c63', 'highradio', 0),
(45, 'steam:110000117709c63', 'goldmedal_run', 0),
(46, 'steam:110000117709c63', 'vodkafruit', 0),
(47, 'steam:110000117709c63', 'pizza', 0),
(48, 'steam:110000117709c63', 'water', 0),
(49, 'steam:110000117709c63', 'drill', 0),
(50, 'steam:110000117709c63', 'clothe', 0),
(51, 'steam:110000117709c63', 'jusfruit', 0),
(52, 'steam:110000117709c63', 'macka', 0),
(53, 'steam:110000117709c63', 'cutted_wood', 0),
(54, 'steam:110000117709c63', 'bolnoixcajou', 0),
(55, 'steam:110000117709c63', 'tabacblond', 0),
(56, 'steam:110000117709c63', 'fishingrod', 0),
(57, 'steam:110000117709c63', 'slaughtered_chicken', 0),
(58, 'steam:110000117709c63', 'wool', 0),
(59, 'steam:110000117709c63', 'weed', 0),
(60, 'steam:110000117709c63', 'acier', 0),
(61, 'steam:110000117709c63', 'packaged_plank', 0),
(62, 'steam:110000117709c63', 'hat', 0),
(63, 'steam:110000117709c63', 'limonade', 0),
(64, 'steam:110000117709c63', 'poudre', 0),
(65, 'steam:110000117709c63', 'stockrim', 0),
(66, 'steam:110000117709c63', 'diamond', 0),
(67, 'steam:110000117709c63', 'teqpaf', 0),
(68, 'steam:110000117709c63', 'cocacola', 0),
(69, 'steam:110000117709c63', 'silvermedal_run', 0),
(70, 'steam:110000117709c63', 'jagerbomb', 0),
(71, 'steam:110000117709c63', 'pastacarbonara', 0),
(72, 'steam:110000117709c63', 'coke_pooch', 0),
(73, 'steam:110000117709c63', 'coke', 0),
(74, 'steam:110000117709c63', 'laptop', 0),
(75, 'steam:110000117709c63', 'douille', 0),
(76, 'steam:110000117709c63', 'fabric', 0),
(77, 'steam:110000117709c63', 'malbora', 0),
(78, 'steam:110000117709c63', 'burger', 0),
(79, 'steam:110000117709c63', 'bread', 0),
(80, 'steam:110000117709c63', 'wood', 0),
(81, 'steam:110000117709c63', 'battery', 0),
(82, 'steam:110000117709c63', 'whisky', 0),
(83, 'steam:110000117709c63', 'vodkaenergy', 0),
(84, 'steam:110000117709c63', 'rhumfruit', 0),
(85, 'steam:110000117709c63', 'meth_pooch', 0),
(86, 'steam:110000117709c63', 'tequila', 0),
(87, 'steam:110000117709c63', 'carokit', 0),
(88, 'steam:110000117709c63', 'sprite', 0),
(89, 'steam:110000117709c63', 'golem', 0),
(90, 'steam:110000117709c63', 'iron', 0),
(91, 'steam:110000117709c63', 'lockpick', 0),
(92, 'steam:110000117709c63', 'turtle', 0),
(93, 'steam:110000117709c63', 'jumelles', 0),
(94, 'steam:110000117709c63', 'metreshooter', 0),
(95, 'steam:110000117709c63', 'gitanes', 0),
(96, 'steam:110000117709c63', 'lowradio', 0),
(97, 'steam:110000117709c63', 'fixkit', 0),
(98, 'steam:110000117709c63', 'steak', 0),
(99, 'steam:110000117709c63', 'phone', 0),
(100, 'steam:110000117709c63', 'ice', 0),
(101, 'steam:110000117709c63', 'c4_bank', 0),
(102, 'steam:110000117709c63', 'copper', 0),
(103, 'steam:110000117709c63', 'chips', 0),
(104, 'steam:110000117709c63', 'tabacbrunsec', 0),
(105, 'steam:110000117709c63', 'tabacbrun', 0),
(106, 'steam:110000117709c63', 'stone', 0),
(107, 'steam:110000117709c63', 'grand_cru', 0),
(108, 'steam:110000117709c63', 'bandage', 0),
(109, 'steam:110000117709c63', 'blowtorch', 0),
(110, 'steam:110000117709c63', 'icetea', 0),
(111, 'steam:110000117709c63', 'essence', 0),
(112, 'steam:110000117709c63', 'jewels', 0),
(113, 'steam:110000117709c63', 'contrat', 0),
(114, 'steam:110000117709c63', 'gazbottle', 0),
(115, 'steam:110000117709c63', 'bolpistache', 0),
(116, 'steam:110000117709c63', 'book', 0),
(117, 'steam:110000117709c63', 'saffron', 0),
(118, 'steam:110000117709c63', 'bulletproof', 0),
(119, 'steam:110000117709c63', 'bolchips', 0),
(120, 'steam:110000117709c63', 'saucisson', 0),
(121, 'steam:110000117709c63', 'soda', 0),
(122, 'steam:110000117709c63', 'bolcacahuetes', 0),
(123, 'steam:110000117709c63', 'vodka', 0),
(124, 'steam:110000117709c63', 'croquettes', 0),
(125, 'steam:110000117709c63', 'jus_raisin', 0),
(126, 'steam:110000117709c63', 'rhumcoca', 0),
(127, 'steam:110000117709c63', 'pants', 0),
(128, 'steam:110000117709c63', 'drpepper', 0),
(129, 'steam:110000117709c63', 'fish', 0),
(130, 'steam:110000117709c63', 'petrol', 0),
(131, 'steam:110000117709c63', 'blowpipe', 0),
(132, 'steam:110000117709c63', 'gold', 0),
(133, 'steam:110000117709c63', 'opium', 0),
(134, 'steam:110000117709c63', 'vine', 0),
(135, 'steam:110000117709c63', 'medikit', 0),
(136, 'steam:110000117709c63', 'handcuffs', 0),
(137, 'steam:110000117709c63', 'lotteryticket', 0),
(138, 'steam:110000117709c63', 'fishbait', 0),
(139, 'steam:110000117709c63', 'carbon', 0),
(140, 'steam:110000117709c63', 'Marabou Mjölkchoklad', 0),
(141, 'steam:110000117709c63', 'net_cracker', 0),
(142, 'steam:110000117709c63', 'thermite', 0),
(143, 'steam:110000117709c63', 'caisseketchup', 0),
(144, 'steam:110000117709c63', 'sachetketchup', 0),
(145, 'steam:110000117709c63', 'hifi', 0),
(146, 'steam:110000117709c63', 'blonde', 0),
(147, 'steam:110000117709c63', 'brune', 0),
(148, 'steam:110000117709c63', 'houblon', 0),
(149, 'steam:110000117709c63', 'repartel', 0),
(150, 'steam:110000117709c63', 'phonecassé', 0),
(151, 'steam:110000117709c63', 'schorange', 0),
(152, 'steam:110000117709c63', 'orange', 0),
(153, 'steam:110000117709c63', 'lokalizator', 0),
(154, 'steam:110000117709c63', 'necklace', 0),
(155, 'steam:110000117709c63', 'ring', 0),
(156, 'steam:110000117709c63', 'camera', 0),
(157, 'steam:110000117709c63', 'watch', 0),
(158, 'steam:110000117709c63', 'bag', 0),
(159, 'steam:1100001120b6603', 'blowtorch', 0),
(160, 'steam:1100001120b6603', 'bolpistache', 0),
(161, 'steam:1100001120b6603', 'sachetketchup', 0),
(162, 'steam:1100001120b6603', 'diamond', 0),
(163, 'steam:1100001120b6603', 'drpepper', 0),
(164, 'steam:1100001120b6603', 'turtlebait', 0),
(165, 'steam:1100001120b6603', 'packaged_plank', 0),
(166, 'steam:1100001120b6603', 'watch', 0),
(167, 'steam:1100001120b6603', 'chips', 0),
(168, 'steam:1100001120b6603', 'limonade', 0),
(169, 'steam:1100001120b6603', 'essence', 0),
(170, 'steam:1100001120b6603', 'houblon', 0),
(171, 'steam:1100001120b6603', 'meth_pooch', 0),
(172, 'steam:1100001120b6603', 'loka', 0),
(173, 'steam:1100001120b6603', 'pizza', 0),
(174, 'steam:1100001120b6603', 'fish', 0),
(175, 'steam:1100001120b6603', 'alive_chicken', 5),
(176, 'steam:1100001120b6603', 'bulletproof', 0),
(177, 'steam:1100001120b6603', 'martini', 0),
(178, 'steam:1100001120b6603', 'tabacbrun', 0),
(179, 'steam:1100001120b6603', 'water', 0),
(180, 'steam:1100001120b6603', 'blowpipe', 0),
(181, 'steam:1100001120b6603', 'carotool', 0),
(182, 'steam:1100001120b6603', 'washed_stone', 0),
(183, 'steam:1100001120b6603', 'phone', 2),
(184, 'steam:1100001120b6603', 'bolcacahuetes', 0),
(185, 'steam:1100001120b6603', 'metreshooter', 0),
(186, 'steam:1100001120b6603', 'mixapero', 0),
(187, 'steam:1100001120b6603', 'contrat', 0),
(188, 'steam:1100001120b6603', 'cheesebows', 0),
(189, 'steam:1100001120b6603', 'poudre', 0),
(190, 'steam:1100001120b6603', 'c4_bank', 0),
(191, 'steam:1100001120b6603', 'grand_cru', 0),
(192, 'steam:1100001120b6603', 'coke', 0),
(193, 'steam:1100001120b6603', 'fixkit', 0),
(194, 'steam:1100001120b6603', 'jus_raisin', 0),
(195, 'steam:1100001120b6603', 'grapperaisin', 0),
(196, 'steam:1100001120b6603', 'gazbottle', 0),
(197, 'steam:1100001120b6603', 'jusfruit', 0),
(198, 'steam:1100001120b6603', 'shirt', 0),
(199, 'steam:1100001120b6603', 'bandage', 20),
(200, 'steam:1100001120b6603', 'firstaidkit', 0),
(201, 'steam:1100001120b6603', 'battery', 0),
(202, 'steam:1100001120b6603', 'opium_pooch', 0),
(203, 'steam:1100001120b6603', 'iron', 0),
(204, 'steam:1100001120b6603', 'blonde', 0),
(205, 'steam:1100001120b6603', 'lockpick', 0),
(206, 'steam:1100001120b6603', 'highrim', 0),
(207, 'steam:1100001120b6603', 'fanta', 0),
(208, 'steam:1100001120b6603', 'jager', 0),
(209, 'steam:1100001120b6603', 'cutted_wood', 0),
(210, 'steam:1100001120b6603', 'vine', 0),
(211, 'steam:1100001120b6603', 'poubelle', 0),
(212, 'steam:1100001120b6603', 'jagercerbere', 0),
(213, 'steam:1100001120b6603', 'weed_pooch', 0),
(214, 'steam:1100001120b6603', 'vodkaenergy', 0),
(215, 'steam:1100001120b6603', 'cheese', 0),
(216, 'steam:1100001120b6603', 'bolnoixcajou', 0),
(217, 'steam:1100001120b6603', 'sprite', 0),
(218, 'steam:1100001120b6603', 'jewels', 0),
(219, 'steam:1100001120b6603', 'steak', 0),
(220, 'steam:1100001120b6603', 'mojito', 0),
(221, 'steam:1100001120b6603', 'turtle', 0),
(222, 'steam:1100001120b6603', 'fixtool', 0),
(223, 'steam:1100001120b6603', 'cigarett', 0),
(224, 'steam:1100001120b6603', 'douille', 0),
(225, 'steam:1100001120b6603', 'packaged_chicken', 0),
(226, 'steam:1100001120b6603', 'macka', 0),
(227, 'steam:1100001120b6603', 'petrol', 0),
(228, 'steam:1100001120b6603', 'meth', 0),
(229, 'steam:1100001120b6603', 'bag', 0),
(230, 'steam:1100001120b6603', 'tabacblond', 0),
(231, 'steam:1100001120b6603', 'whisky', 0),
(232, 'steam:1100001120b6603', 'fishingrod', 0),
(233, 'steam:1100001120b6603', 'fishbait', 0),
(234, 'steam:1100001120b6603', 'book', 0),
(235, 'steam:1100001120b6603', 'burger', 1),
(236, 'steam:1100001120b6603', 'lokalizator', 0),
(237, 'steam:1100001120b6603', 'whiskycoca', 0),
(238, 'steam:1100001120b6603', 'repartel', 0),
(239, 'steam:1100001120b6603', 'coupon', 0),
(240, 'steam:1100001120b6603', 'wood', 0),
(241, 'steam:1100001120b6603', 'wool', 40),
(242, 'steam:1100001120b6603', 'ring', 0),
(243, 'steam:1100001120b6603', 'silvermedal_run', 0),
(244, 'steam:1100001120b6603', 'acier', 0),
(245, 'steam:1100001120b6603', 'handcuffs', 0),
(246, 'steam:1100001120b6603', 'rhum', 0),
(247, 'steam:1100001120b6603', 'lowradio', 0),
(248, 'steam:1100001120b6603', 'ice', 0),
(249, 'steam:1100001120b6603', 'pastacarbonara', 0),
(250, 'steam:1100001120b6603', 'rhumcoca', 0),
(251, 'steam:1100001120b6603', 'thermite', 0),
(252, 'steam:1100001120b6603', 'opium', 0),
(253, 'steam:1100001120b6603', 'vodka', 0),
(254, 'steam:1100001120b6603', 'raisin', 0),
(255, 'steam:1100001120b6603', 'tequila', 0),
(256, 'steam:1100001120b6603', 'bronzemedal_run', 0),
(257, 'steam:1100001120b6603', 'stockrim', 0),
(258, 'steam:1100001120b6603', 'tabacbrunsec', 0),
(259, 'steam:1100001120b6603', 'phonecassé', 0),
(260, 'steam:1100001120b6603', 'stone', 0),
(261, 'steam:1100001120b6603', 'jumelles', 0),
(262, 'steam:1100001120b6603', 'jagerbomb', 0),
(263, 'steam:1100001120b6603', 'highradio', 0),
(264, 'steam:1100001120b6603', 'net_cracker', 0),
(265, 'steam:1100001120b6603', 'vodkafruit', 0),
(266, 'steam:1100001120b6603', 'tabacblondsec', 0),
(267, 'steam:1100001120b6603', 'cocacola', 0),
(268, 'steam:1100001120b6603', 'hifi', 0),
(269, 'steam:1100001120b6603', 'soda', 0),
(270, 'steam:1100001120b6603', 'laptop', 0),
(271, 'steam:1100001120b6603', 'lotteryticket', 0),
(272, 'steam:1100001120b6603', 'slaughtered_chicken', 0),
(273, 'steam:1100001120b6603', 'airbag', 0),
(274, 'steam:1100001120b6603', 'hat', 0),
(275, 'steam:1100001120b6603', 'shoes', 0),
(276, 'steam:1100001120b6603', 'coke_pooch', 0),
(277, 'steam:1100001120b6603', 'speaker', 0),
(278, 'steam:1100001120b6603', 'Marabou Mjölkchoklad', 0),
(279, 'steam:1100001120b6603', 'camera', 0),
(280, 'steam:1100001120b6603', 'goldmedal_run', 0),
(281, 'steam:1100001120b6603', 'shark', 0),
(282, 'steam:1100001120b6603', 'energy', 0),
(283, 'steam:1100001120b6603', 'bread', 3),
(284, 'steam:1100001120b6603', 'icetea', 0),
(285, 'steam:1100001120b6603', 'schorange', 0),
(286, 'steam:1100001120b6603', 'xanax', 0),
(287, 'steam:1100001120b6603', 'brune', 0),
(288, 'steam:1100001120b6603', 'croquettes', 0),
(289, 'steam:1100001120b6603', 'rhumfruit', 0),
(290, 'steam:1100001120b6603', 'saucisson', 0),
(291, 'steam:1100001120b6603', 'saffron', 0),
(292, 'steam:1100001120b6603', 'weed', 0),
(293, 'steam:1100001120b6603', 'bolchips', 1),
(294, 'steam:1100001120b6603', 'clip', 0),
(295, 'steam:1100001120b6603', 'orange', 0),
(296, 'steam:1100001120b6603', 'petrol_raffin', 0),
(297, 'steam:1100001120b6603', 'raspberry', 0),
(298, 'steam:1100001120b6603', 'teqpaf', 0),
(299, 'steam:1100001120b6603', 'golem', 0),
(300, 'steam:1100001120b6603', 'pants', 0),
(301, 'steam:1100001120b6603', 'toothpaste', 0),
(302, 'steam:1100001120b6603', 'caisseketchup', 0),
(303, 'steam:1100001120b6603', 'gitanes', 0),
(304, 'steam:1100001120b6603', 'oxygen_mask', 0),
(305, 'steam:1100001120b6603', 'gold', 0),
(306, 'steam:1100001120b6603', 'carokit', 0),
(307, 'steam:1100001120b6603', 'medikit', 2),
(308, 'steam:1100001120b6603', 'malbora', 0),
(309, 'steam:1100001120b6603', 'fabric', 40),
(310, 'steam:1100001120b6603', 'carbon', 0),
(311, 'steam:1100001120b6603', 'lighter', 0),
(312, 'steam:1100001120b6603', 'necklace', 0),
(313, 'steam:1100001120b6603', 'menthe', 0),
(314, 'steam:1100001120b6603', 'drill', 0),
(315, 'steam:1100001120b6603', 'copper', 0),
(316, 'steam:1100001120b6603', 'clothe', 20),
(317, 'steam:11000011439c22a', 'lockpick', 0),
(318, 'steam:11000011439c22a', 'packaged_plank', 0),
(319, 'steam:11000011439c22a', 'martini', 0),
(320, 'steam:11000011439c22a', 'repartel', 0),
(321, 'steam:11000011439c22a', 'blowtorch', 0),
(322, 'steam:11000011439c22a', 'fixkit', 0),
(323, 'steam:11000011439c22a', 'hifi', 0),
(324, 'steam:11000011439c22a', 'medikit', 0),
(325, 'steam:11000011439c22a', 'jus_raisin', 0),
(326, 'steam:11000011439c22a', 'diamond', 0),
(327, 'steam:11000011439c22a', 'steak', 0),
(328, 'steam:11000011439c22a', 'meth_pooch', 0),
(329, 'steam:11000011439c22a', 'lokalizator', 0),
(330, 'steam:11000011439c22a', 'fishingrod', 0),
(331, 'steam:11000011439c22a', 'goldmedal_run', 0),
(332, 'steam:11000011439c22a', 'slaughtered_chicken', 0),
(333, 'steam:11000011439c22a', 'jewels', 0),
(334, 'steam:11000011439c22a', 'copper', 0),
(335, 'steam:11000011439c22a', 'fish', 0),
(336, 'steam:11000011439c22a', 'ring', 0),
(337, 'steam:11000011439c22a', 'shark', 0),
(338, 'steam:11000011439c22a', 'icetea', 0),
(339, 'steam:11000011439c22a', 'tabacblondsec', 0),
(340, 'steam:11000011439c22a', 'iron', 0),
(341, 'steam:11000011439c22a', 'schorange', 0),
(342, 'steam:11000011439c22a', 'grapperaisin', 0),
(343, 'steam:11000011439c22a', 'firstaidkit', 0),
(344, 'steam:11000011439c22a', 'hat', 0),
(345, 'steam:11000011439c22a', 'gitanes', 0),
(346, 'steam:11000011439c22a', 'essence', 0),
(347, 'steam:11000011439c22a', 'sachetketchup', 0),
(348, 'steam:11000011439c22a', 'net_cracker', 0),
(349, 'steam:11000011439c22a', 'phonecassé', 0),
(350, 'steam:11000011439c22a', 'weed_pooch', 0),
(351, 'steam:11000011439c22a', 'watch', 0),
(352, 'steam:11000011439c22a', 'golem', 0),
(353, 'steam:11000011439c22a', 'vine', 0),
(354, 'steam:11000011439c22a', 'coke', 0),
(355, 'steam:11000011439c22a', 'jusfruit', 0),
(356, 'steam:11000011439c22a', 'blonde', 0),
(357, 'steam:11000011439c22a', 'shoes', 0),
(358, 'steam:11000011439c22a', 'gold', 0),
(359, 'steam:11000011439c22a', 'pastacarbonara', 0),
(360, 'steam:11000011439c22a', 'jager', 0),
(361, 'steam:11000011439c22a', 'bolcacahuetes', 0),
(362, 'steam:11000011439c22a', 'cutted_wood', 0),
(363, 'steam:11000011439c22a', 'alive_chicken', 0),
(364, 'steam:11000011439c22a', 'whiskycoca', 0),
(365, 'steam:11000011439c22a', 'ice', 0),
(366, 'steam:11000011439c22a', 'menthe', 0),
(367, 'steam:11000011439c22a', 'brune', 0),
(368, 'steam:11000011439c22a', 'stone', 0),
(369, 'steam:11000011439c22a', 'poubelle', 0),
(370, 'steam:11000011439c22a', 'grand_cru', 0),
(371, 'steam:11000011439c22a', 'highradio', 0),
(372, 'steam:11000011439c22a', 'gazbottle', 0),
(373, 'steam:11000011439c22a', 'fixtool', 0),
(374, 'steam:11000011439c22a', 'chips', 0),
(375, 'steam:11000011439c22a', 'washed_stone', 0),
(376, 'steam:11000011439c22a', 'blowpipe', 0),
(377, 'steam:11000011439c22a', 'pizza', 0),
(378, 'steam:11000011439c22a', 'coke_pooch', 0),
(379, 'steam:11000011439c22a', 'silvermedal_run', 0),
(380, 'steam:11000011439c22a', 'malbora', 0),
(381, 'steam:11000011439c22a', 'cigarett', 0),
(382, 'steam:11000011439c22a', 'necklace', 0),
(383, 'steam:11000011439c22a', 'carokit', 0),
(384, 'steam:11000011439c22a', 'poudre', 0),
(385, 'steam:11000011439c22a', 'burger', 0),
(386, 'steam:11000011439c22a', 'teqpaf', 0),
(387, 'steam:11000011439c22a', 'loka', 0),
(388, 'steam:11000011439c22a', 'bulletproof', 0),
(389, 'steam:11000011439c22a', 'c4_bank', 0),
(390, 'steam:11000011439c22a', 'croquettes', 0),
(391, 'steam:11000011439c22a', 'packaged_chicken', 0),
(392, 'steam:11000011439c22a', 'cheese', 0),
(393, 'steam:11000011439c22a', 'cheesebows', 0),
(394, 'steam:11000011439c22a', 'drill', 0),
(395, 'steam:11000011439c22a', 'bread', 0),
(396, 'steam:11000011439c22a', 'wood', 0),
(397, 'steam:11000011439c22a', 'bandage', 0),
(398, 'steam:11000011439c22a', 'lowradio', 0),
(399, 'steam:11000011439c22a', 'douille', 0),
(400, 'steam:11000011439c22a', 'caisseketchup', 0),
(401, 'steam:11000011439c22a', 'opium_pooch', 0),
(402, 'steam:11000011439c22a', 'lotteryticket', 0),
(403, 'steam:11000011439c22a', 'jagerbomb', 0),
(404, 'steam:11000011439c22a', 'lighter', 0),
(405, 'steam:11000011439c22a', 'vodkaenergy', 0),
(406, 'steam:11000011439c22a', 'shirt', 0),
(407, 'steam:11000011439c22a', 'meth', 0),
(408, 'steam:11000011439c22a', 'book', 0),
(409, 'steam:11000011439c22a', 'airbag', 0),
(410, 'steam:11000011439c22a', 'Marabou Mjölkchoklad', 0),
(411, 'steam:11000011439c22a', 'coupon', 0),
(412, 'steam:11000011439c22a', 'wool', 0),
(413, 'steam:11000011439c22a', 'xanax', 0),
(414, 'steam:11000011439c22a', 'camera', 0),
(415, 'steam:11000011439c22a', 'bolpistache', 0),
(416, 'steam:11000011439c22a', 'limonade', 0),
(417, 'steam:11000011439c22a', 'water', 1),
(418, 'steam:11000011439c22a', 'weed', 0),
(419, 'steam:11000011439c22a', 'metreshooter', 0),
(420, 'steam:11000011439c22a', 'clip', 0),
(421, 'steam:11000011439c22a', 'whisky', 0),
(422, 'steam:11000011439c22a', 'stockrim', 0),
(423, 'steam:11000011439c22a', 'toothpaste', 0),
(424, 'steam:11000011439c22a', 'turtlebait', 0),
(425, 'steam:11000011439c22a', 'vodka', 0),
(426, 'steam:11000011439c22a', 'thermite', 0),
(427, 'steam:11000011439c22a', 'contrat', 0),
(428, 'steam:11000011439c22a', 'handcuffs', 0),
(429, 'steam:11000011439c22a', 'tabacbrun', 0),
(430, 'steam:11000011439c22a', 'tabacbrunsec', 0),
(431, 'steam:11000011439c22a', 'tequila', 0),
(432, 'steam:11000011439c22a', 'tabacblond', 0),
(433, 'steam:11000011439c22a', 'pants', 0),
(434, 'steam:11000011439c22a', 'sprite', 0),
(435, 'steam:11000011439c22a', 'turtle', 0),
(436, 'steam:11000011439c22a', 'soda', 0),
(437, 'steam:11000011439c22a', 'jagercerbere', 0),
(438, 'steam:11000011439c22a', 'fishbait', 0),
(439, 'steam:11000011439c22a', 'opium', 0),
(440, 'steam:11000011439c22a', 'highrim', 0),
(441, 'steam:11000011439c22a', 'clothe', 0),
(442, 'steam:11000011439c22a', 'bolnoixcajou', 0),
(443, 'steam:11000011439c22a', 'acier', 0),
(444, 'steam:11000011439c22a', 'battery', 0),
(445, 'steam:11000011439c22a', 'bronzemedal_run', 0),
(446, 'steam:11000011439c22a', 'saucisson', 0),
(447, 'steam:11000011439c22a', 'vodkafruit', 0),
(448, 'steam:11000011439c22a', 'rhum', 0),
(449, 'steam:11000011439c22a', 'saffron', 0),
(450, 'steam:11000011439c22a', 'raspberry', 0),
(451, 'steam:11000011439c22a', 'carotool', 0),
(452, 'steam:11000011439c22a', 'rhumcoca', 0),
(453, 'steam:11000011439c22a', 'jumelles', 0),
(454, 'steam:11000011439c22a', 'drpepper', 0),
(455, 'steam:11000011439c22a', 'raisin', 0),
(456, 'steam:11000011439c22a', 'mixapero', 0),
(457, 'steam:11000011439c22a', 'petrol_raffin', 0),
(458, 'steam:11000011439c22a', 'bolchips', 0),
(459, 'steam:11000011439c22a', 'carbon', 0),
(460, 'steam:11000011439c22a', 'bag', 0),
(461, 'steam:11000011439c22a', 'fanta', 0),
(462, 'steam:11000011439c22a', 'energy', 0),
(463, 'steam:11000011439c22a', 'petrol', 0),
(464, 'steam:11000011439c22a', 'macka', 0),
(465, 'steam:11000011439c22a', 'oxygen_mask', 0),
(466, 'steam:11000011439c22a', 'speaker', 0),
(467, 'steam:11000011439c22a', 'houblon', 0),
(468, 'steam:11000011439c22a', 'fabric', 0),
(469, 'steam:11000011439c22a', 'orange', 0),
(470, 'steam:11000011439c22a', 'phone', 0),
(471, 'steam:11000011439c22a', 'rhumfruit', 0),
(472, 'steam:11000011439c22a', 'cocacola', 0),
(473, 'steam:11000011439c22a', 'laptop', 0),
(474, 'steam:11000011439c22a', 'mojito', 0),
(475, 'steam:11000010772998a', 'tabacbrunsec', 0),
(476, 'steam:11000010772998a', 'medikit', 0),
(477, 'steam:11000010772998a', 'coke', 0),
(478, 'steam:11000010772998a', 'cocacola', 0),
(479, 'steam:11000010772998a', 'macka', 0),
(480, 'steam:11000010772998a', 'jagercerbere', 0),
(481, 'steam:11000010772998a', 'lokalizator', 0),
(482, 'steam:11000010772998a', 'houblon', 0),
(483, 'steam:11000010772998a', 'cigarett', 0),
(484, 'steam:11000010772998a', 'whisky', 0),
(485, 'steam:11000010772998a', 'bag', 0),
(486, 'steam:11000010772998a', 'handcuffs', 0),
(487, 'steam:11000010772998a', 'caisseketchup', 0),
(488, 'steam:11000010772998a', 'blonde', 0),
(489, 'steam:11000010772998a', 'rhumcoca', 0),
(490, 'steam:11000010772998a', 'laptop', 0),
(491, 'steam:11000010772998a', 'shark', 0),
(492, 'steam:11000010772998a', 'steak', 0),
(493, 'steam:11000010772998a', 'coupon', 0),
(494, 'steam:11000010772998a', 'petrol_raffin', 0),
(495, 'steam:11000010772998a', 'gitanes', 0),
(496, 'steam:11000010772998a', 'malbora', 0),
(497, 'steam:11000010772998a', 'diamond', 0),
(498, 'steam:11000010772998a', 'fishbait', 0),
(499, 'steam:11000010772998a', 'necklace', 0),
(500, 'steam:11000010772998a', 'bulletproof', 0),
(501, 'steam:11000010772998a', 'phone', 0),
(502, 'steam:11000010772998a', 'cutted_wood', 0),
(503, 'steam:11000010772998a', 'c4_bank', 0),
(504, 'steam:11000010772998a', 'carotool', 0),
(505, 'steam:11000010772998a', 'sachetketchup', 0),
(506, 'steam:11000010772998a', 'orange', 0),
(507, 'steam:11000010772998a', 'fabric', 0),
(508, 'steam:11000010772998a', 'ice', 0),
(509, 'steam:11000010772998a', 'martini', 0),
(510, 'steam:11000010772998a', 'grand_cru', 0),
(511, 'steam:11000010772998a', 'opium', 0),
(512, 'steam:11000010772998a', 'blowtorch', 0),
(513, 'steam:11000010772998a', 'washed_stone', 0),
(514, 'steam:11000010772998a', 'fixtool', 0),
(515, 'steam:11000010772998a', 'gazbottle', 0),
(516, 'steam:11000010772998a', 'shirt', 0),
(517, 'steam:11000010772998a', 'metreshooter', 0),
(518, 'steam:11000010772998a', 'pastacarbonara', 0),
(519, 'steam:11000010772998a', 'Marabou Mjölkchoklad', 0),
(520, 'steam:11000010772998a', 'golem', 0),
(521, 'steam:11000010772998a', 'chips', 0),
(522, 'steam:11000010772998a', 'bolchips', 0),
(523, 'steam:11000010772998a', 'limonade', 0),
(524, 'steam:11000010772998a', 'oxygen_mask', 0),
(525, 'steam:11000010772998a', 'blowpipe', 0),
(526, 'steam:11000010772998a', 'acier', 0),
(527, 'steam:11000010772998a', 'jager', 0),
(528, 'steam:11000010772998a', 'clip', 0),
(529, 'steam:11000010772998a', 'bronzemedal_run', 0),
(530, 'steam:11000010772998a', 'vine', 0),
(531, 'steam:11000010772998a', 'lockpick', 0),
(532, 'steam:11000010772998a', 'lighter', 0),
(533, 'steam:11000010772998a', 'slaughtered_chicken', 0),
(534, 'steam:11000010772998a', 'carbon', 0),
(535, 'steam:11000010772998a', 'energy', 0),
(536, 'steam:11000010772998a', 'poubelle', 0),
(537, 'steam:11000010772998a', 'douille', 0),
(538, 'steam:11000010772998a', 'saffron', 0),
(539, 'steam:11000010772998a', 'wool', 0),
(540, 'steam:11000010772998a', 'wood', 0),
(541, 'steam:11000010772998a', 'xanax', 0),
(542, 'steam:11000010772998a', 'soda', 0),
(543, 'steam:11000010772998a', 'net_cracker', 0),
(544, 'steam:11000010772998a', 'weed', 0),
(545, 'steam:11000010772998a', 'vodkafruit', 0),
(546, 'steam:11000010772998a', 'weed_pooch', 0),
(547, 'steam:11000010772998a', 'rhum', 0),
(548, 'steam:11000010772998a', 'croquettes', 0),
(549, 'steam:11000010772998a', 'watch', 0),
(550, 'steam:11000010772998a', 'drpepper', 0),
(551, 'steam:11000010772998a', 'vodkaenergy', 0),
(552, 'steam:11000010772998a', 'clothe', 0),
(553, 'steam:11000010772998a', 'menthe', 0),
(554, 'steam:11000010772998a', 'bolnoixcajou', 0),
(555, 'steam:11000010772998a', 'turtle', 0),
(556, 'steam:11000010772998a', 'fanta', 0),
(557, 'steam:11000010772998a', 'turtlebait', 0),
(558, 'steam:11000010772998a', 'vodka', 0),
(559, 'steam:11000010772998a', 'airbag', 0),
(560, 'steam:11000010772998a', 'tequila', 0),
(561, 'steam:11000010772998a', 'toothpaste', 0),
(562, 'steam:11000010772998a', 'opium_pooch', 0),
(563, 'steam:11000010772998a', 'highrim', 0),
(564, 'steam:11000010772998a', 'jus_raisin', 0),
(565, 'steam:11000010772998a', 'teqpaf', 0),
(566, 'steam:11000010772998a', 'firstaidkit', 0),
(567, 'steam:11000010772998a', 'thermite', 0),
(568, 'steam:11000010772998a', 'meth_pooch', 0),
(569, 'steam:11000010772998a', 'tabacblond', 0),
(570, 'steam:11000010772998a', 'tabacblondsec', 0),
(571, 'steam:11000010772998a', 'bread', 0),
(572, 'steam:11000010772998a', 'drill', 0),
(573, 'steam:11000010772998a', 'poudre', 0),
(574, 'steam:11000010772998a', 'stone', 0),
(575, 'steam:11000010772998a', 'sprite', 0),
(576, 'steam:11000010772998a', 'speaker', 0),
(577, 'steam:11000010772998a', 'coke_pooch', 0),
(578, 'steam:11000010772998a', 'hifi', 0),
(579, 'steam:11000010772998a', 'carokit', 0),
(580, 'steam:11000010772998a', 'brune', 0),
(581, 'steam:11000010772998a', 'stockrim', 0),
(582, 'steam:11000010772998a', 'bolpistache', 0),
(583, 'steam:11000010772998a', 'silvermedal_run', 0),
(584, 'steam:11000010772998a', 'alive_chicken', 0),
(585, 'steam:11000010772998a', 'bolcacahuetes', 0),
(586, 'steam:11000010772998a', 'contrat', 0),
(587, 'steam:11000010772998a', 'cheese', 0),
(588, 'steam:11000010772998a', 'shoes', 0),
(589, 'steam:11000010772998a', 'repartel', 0),
(590, 'steam:11000010772998a', 'schorange', 0),
(591, 'steam:11000010772998a', 'jagerbomb', 0),
(592, 'steam:11000010772998a', 'saucisson', 0),
(593, 'steam:11000010772998a', 'copper', 0),
(594, 'steam:11000010772998a', 'lotteryticket', 0),
(595, 'steam:11000010772998a', 'ring', 0),
(596, 'steam:11000010772998a', 'mixapero', 0),
(597, 'steam:11000010772998a', 'tabacbrun', 0),
(598, 'steam:11000010772998a', 'gold', 0),
(599, 'steam:11000010772998a', 'mojito', 0),
(600, 'steam:11000010772998a', 'fishingrod', 0),
(601, 'steam:11000010772998a', 'rhumfruit', 0),
(602, 'steam:11000010772998a', 'book', 0),
(603, 'steam:11000010772998a', 'raspberry', 0),
(604, 'steam:11000010772998a', 'fish', 0),
(605, 'steam:11000010772998a', 'jumelles', 0),
(606, 'steam:11000010772998a', 'jewels', 0),
(607, 'steam:11000010772998a', 'phonecassé', 0),
(608, 'steam:11000010772998a', 'pizza', 0),
(609, 'steam:11000010772998a', 'camera', 0),
(610, 'steam:11000010772998a', 'petrol', 0),
(611, 'steam:11000010772998a', 'battery', 0),
(612, 'steam:11000010772998a', 'grapperaisin', 0),
(613, 'steam:11000010772998a', 'highradio', 0),
(614, 'steam:11000010772998a', 'packaged_plank', 0),
(615, 'steam:11000010772998a', 'packaged_chicken', 0),
(616, 'steam:11000010772998a', 'fixkit', 0),
(617, 'steam:11000010772998a', 'goldmedal_run', 0),
(618, 'steam:11000010772998a', 'iron', 0),
(619, 'steam:11000010772998a', 'meth', 0),
(620, 'steam:11000010772998a', 'bandage', 0),
(621, 'steam:11000010772998a', 'essence', 0),
(622, 'steam:11000010772998a', 'pants', 0),
(623, 'steam:11000010772998a', 'whiskycoca', 0),
(624, 'steam:11000010772998a', 'cheesebows', 0),
(625, 'steam:11000010772998a', 'icetea', 0),
(626, 'steam:11000010772998a', 'jusfruit', 0),
(627, 'steam:11000010772998a', 'lowradio', 0),
(628, 'steam:11000010772998a', 'hat', 0),
(629, 'steam:11000010772998a', 'burger', 0),
(630, 'steam:11000010772998a', 'raisin', 0),
(631, 'steam:11000010772998a', 'loka', 0),
(632, 'steam:11000010772998a', 'water', 0),
(633, 'steam:110000134884e5b', 'diamond', 0),
(634, 'steam:110000134884e5b', 'carotool', 0),
(635, 'steam:110000134884e5b', 'petrol', 0),
(636, 'steam:110000134884e5b', 'opium_pooch', 0),
(637, 'steam:110000134884e5b', 'highradio', 0),
(638, 'steam:110000134884e5b', 'alive_chicken', 0),
(639, 'steam:110000134884e5b', 'brune', 0),
(640, 'steam:110000134884e5b', 'opium', 0),
(641, 'steam:110000134884e5b', 'rhumcoca', 0),
(642, 'steam:110000134884e5b', 'carokit', 0),
(643, 'steam:110000134884e5b', 'fish', 0),
(644, 'steam:110000134884e5b', 'lokalizator', 0),
(645, 'steam:110000134884e5b', 'bread', 0),
(646, 'steam:110000134884e5b', 'metreshooter', 0),
(647, 'steam:110000134884e5b', 'coke', 0),
(648, 'steam:110000134884e5b', 'meth', 0),
(649, 'steam:110000134884e5b', 'bolpistache', 0),
(650, 'steam:110000134884e5b', 'laptop', 0),
(651, 'steam:110000134884e5b', 'jagerbomb', 0),
(652, 'steam:110000134884e5b', 'lighter', 0),
(653, 'steam:110000134884e5b', 'raspberry', 0),
(654, 'steam:110000134884e5b', 'gazbottle', 0),
(655, 'steam:110000134884e5b', 'icetea', 0),
(656, 'steam:110000134884e5b', 'vodkaenergy', 0),
(657, 'steam:110000134884e5b', 'clothe', 0),
(658, 'steam:110000134884e5b', 'jagercerbere', 0),
(659, 'steam:110000134884e5b', 'menthe', 0),
(660, 'steam:110000134884e5b', 'handcuffs', 0),
(661, 'steam:110000134884e5b', 'hat', 0),
(662, 'steam:110000134884e5b', 'rhum', 0),
(663, 'steam:110000134884e5b', 'cheese', 0),
(664, 'steam:110000134884e5b', 'petrol_raffin', 0),
(665, 'steam:110000134884e5b', 'cigarett', 0),
(666, 'steam:110000134884e5b', 'bronzemedal_run', 0),
(667, 'steam:110000134884e5b', 'lotteryticket', 0),
(668, 'steam:110000134884e5b', 'houblon', 0),
(669, 'steam:110000134884e5b', 'packaged_plank', 0),
(670, 'steam:110000134884e5b', 'fabric', 0),
(671, 'steam:110000134884e5b', 'chips', 0),
(672, 'steam:110000134884e5b', 'coke_pooch', 0),
(673, 'steam:110000134884e5b', 'blowpipe', 999),
(674, 'steam:110000134884e5b', 'hifi', 1),
(675, 'steam:110000134884e5b', 'firstaidkit', 0),
(676, 'steam:110000134884e5b', 'cocacola', 0),
(677, 'steam:110000134884e5b', 'highrim', 0),
(678, 'steam:110000134884e5b', 'iron', 0),
(679, 'steam:110000134884e5b', 'blonde', 0),
(680, 'steam:110000134884e5b', 'croquettes', 0),
(681, 'steam:110000134884e5b', 'battery', 0),
(682, 'steam:110000134884e5b', 'stockrim', 0),
(683, 'steam:110000134884e5b', 'limonade', 0),
(684, 'steam:110000134884e5b', 'cheesebows', 0),
(685, 'steam:110000134884e5b', 'jusfruit', 0),
(686, 'steam:110000134884e5b', 'contrat', 0),
(687, 'steam:110000134884e5b', 'mixapero', 0),
(688, 'steam:110000134884e5b', 'packaged_chicken', 0),
(689, 'steam:110000134884e5b', 'grand_cru', 0),
(690, 'steam:110000134884e5b', 'gitanes', 0),
(691, 'steam:110000134884e5b', 'martini', 0),
(692, 'steam:110000134884e5b', 'necklace', 0),
(693, 'steam:110000134884e5b', 'medikit', -1),
(694, 'steam:110000134884e5b', 'Marabou Mjölkchoklad', 0),
(695, 'steam:110000134884e5b', 'carbon', 0),
(696, 'steam:110000134884e5b', 'saffron', 0),
(697, 'steam:110000134884e5b', 'tabacblondsec', 0),
(698, 'steam:110000134884e5b', 'orange', 0),
(699, 'steam:110000134884e5b', 'slaughtered_chicken', 0),
(700, 'steam:110000134884e5b', 'toothpaste', 0),
(701, 'steam:110000134884e5b', 'sprite', 0),
(702, 'steam:110000134884e5b', 'lowradio', 0),
(703, 'steam:110000134884e5b', 'ice', 0),
(704, 'steam:110000134884e5b', 'fishbait', 0),
(705, 'steam:110000134884e5b', 'vodkafruit', 0),
(706, 'steam:110000134884e5b', 'whiskycoca', 0),
(707, 'steam:110000134884e5b', 'bolnoixcajou', 0),
(708, 'steam:110000134884e5b', 'mojito', 0),
(709, 'steam:110000134884e5b', 'loka', 0),
(710, 'steam:110000134884e5b', 'ring', 0),
(711, 'steam:110000134884e5b', 'saucisson', 0),
(712, 'steam:110000134884e5b', 'thermite', 0),
(713, 'steam:110000134884e5b', 'poubelle', 0),
(714, 'steam:110000134884e5b', 'fishingrod', 0),
(715, 'steam:110000134884e5b', 'pants', 0),
(716, 'steam:110000134884e5b', 'xanax', 0),
(717, 'steam:110000134884e5b', 'wool', 0),
(718, 'steam:110000134884e5b', 'turtlebait', 0),
(719, 'steam:110000134884e5b', 'drpepper', 0),
(720, 'steam:110000134884e5b', 'whisky', 0),
(721, 'steam:110000134884e5b', 'water', 0),
(722, 'steam:110000134884e5b', 'weed', 0),
(723, 'steam:110000134884e5b', 'copper', 0),
(724, 'steam:110000134884e5b', 'weed_pooch', 0),
(725, 'steam:110000134884e5b', 'tabacbrun', 0),
(726, 'steam:110000134884e5b', 'watch', 0),
(727, 'steam:110000134884e5b', 'vodka', 0),
(728, 'steam:110000134884e5b', 'meth_pooch', 0),
(729, 'steam:110000134884e5b', 'washed_stone', 0),
(730, 'steam:110000134884e5b', 'energy', 0),
(731, 'steam:110000134884e5b', 'malbora', 0),
(732, 'steam:110000134884e5b', 'acier', 0),
(733, 'steam:110000134884e5b', 'vine', 0),
(734, 'steam:110000134884e5b', 'wood', 0),
(735, 'steam:110000134884e5b', 'macka', 0),
(736, 'steam:110000134884e5b', 'teqpaf', 0),
(737, 'steam:110000134884e5b', 'turtle', 0),
(738, 'steam:110000134884e5b', 'clip', 0),
(739, 'steam:110000134884e5b', 'tabacbrunsec', 0),
(740, 'steam:110000134884e5b', 'tequila', 0),
(741, 'steam:110000134884e5b', 'stone', 0),
(742, 'steam:110000134884e5b', 'fixkit', 0),
(743, 'steam:110000134884e5b', 'tabacblond', 0),
(744, 'steam:110000134884e5b', 'net_cracker', 0),
(745, 'steam:110000134884e5b', 'steak', 0),
(746, 'steam:110000134884e5b', 'airbag', 0),
(747, 'steam:110000134884e5b', 'bag', 0),
(748, 'steam:110000134884e5b', 'golem', 0),
(749, 'steam:110000134884e5b', 'speaker', 0),
(750, 'steam:110000134884e5b', 'pastacarbonara', 0),
(751, 'steam:110000134884e5b', 'oxygen_mask', 0),
(752, 'steam:110000134884e5b', 'silvermedal_run', 0),
(753, 'steam:110000134884e5b', 'soda', 0),
(754, 'steam:110000134884e5b', 'cutted_wood', 0),
(755, 'steam:110000134884e5b', 'schorange', 0),
(756, 'steam:110000134884e5b', 'shoes', 0),
(757, 'steam:110000134884e5b', 'shirt', 0),
(758, 'steam:110000134884e5b', 'grapperaisin', 0),
(759, 'steam:110000134884e5b', 'goldmedal_run', 0),
(760, 'steam:110000134884e5b', 'gold', 0),
(761, 'steam:110000134884e5b', 'coupon', 0),
(762, 'steam:110000134884e5b', 'jager', 0),
(763, 'steam:110000134884e5b', 'jumelles', 0),
(764, 'steam:110000134884e5b', 'fixtool', 0),
(765, 'steam:110000134884e5b', 'book', 0),
(766, 'steam:110000134884e5b', 'bolcacahuetes', 0),
(767, 'steam:110000134884e5b', 'phone', 2),
(768, 'steam:110000134884e5b', 'pizza', 0),
(769, 'steam:110000134884e5b', 'bulletproof', 0),
(770, 'steam:110000134884e5b', 'sachetketchup', 0),
(771, 'steam:110000134884e5b', 'rhumfruit', 0),
(772, 'steam:110000134884e5b', 'burger', 0),
(773, 'steam:110000134884e5b', 'raisin', 0),
(774, 'steam:110000134884e5b', 'blowtorch', 0),
(775, 'steam:110000134884e5b', 'repartel', 0),
(776, 'steam:110000134884e5b', 'camera', 0),
(777, 'steam:110000134884e5b', 'jus_raisin', 0),
(778, 'steam:110000134884e5b', 'poudre', 0),
(779, 'steam:110000134884e5b', 'bolchips', 0),
(780, 'steam:110000134884e5b', 'shark', 0),
(781, 'steam:110000134884e5b', 'bandage', 0),
(782, 'steam:110000134884e5b', 'phonecassé', -1),
(783, 'steam:110000134884e5b', 'essence', 0),
(784, 'steam:110000134884e5b', 'fanta', 0),
(785, 'steam:110000134884e5b', 'lockpick', 0),
(786, 'steam:110000134884e5b', 'c4_bank', 0),
(787, 'steam:110000134884e5b', 'jewels', 241),
(788, 'steam:110000134884e5b', 'drill', 0),
(789, 'steam:110000134884e5b', 'douille', 0),
(790, 'steam:110000134884e5b', 'caisseketchup', 0),
(791, 'steam:11000013e699150', 'drpepper', 0),
(792, 'steam:11000013e699150', 'soda', 0),
(793, 'steam:11000013e699150', 'carbon', 0),
(794, 'steam:11000013e699150', 'coke_pooch', 0),
(795, 'steam:11000013e699150', 'menthe', 0),
(796, 'steam:11000013e699150', 'rhumfruit', 0),
(797, 'steam:11000013e699150', 'fanta', 0),
(798, 'steam:11000013e699150', 'oxygen_mask', 0),
(799, 'steam:11000013e699150', 'phone', 1),
(800, 'steam:11000013e699150', 'bandage', 0),
(801, 'steam:11000013e699150', 'jumelles', 0),
(802, 'steam:11000013e699150', 'lockpick', 0),
(803, 'steam:11000013e699150', 'rhum', 0),
(804, 'steam:11000013e699150', 'jusfruit', 1596),
(805, 'steam:11000013e699150', 'cheese', 0),
(806, 'steam:11000013e699150', 'lotteryticket', 0),
(807, 'steam:11000013e699150', 'coupon', 0),
(808, 'steam:11000013e699150', 'book', 0),
(809, 'steam:11000013e699150', 'metreshooter', 0),
(810, 'steam:11000013e699150', 'diamond', 0),
(811, 'steam:11000013e699150', 'alive_chicken', 0),
(812, 'steam:11000013e699150', 'essence', 0),
(813, 'steam:11000013e699150', 'fixkit', 0),
(814, 'steam:11000013e699150', 'macka', 0),
(815, 'steam:11000013e699150', 'meth_pooch', 0),
(816, 'steam:11000013e699150', 'contrat', 0),
(817, 'steam:11000013e699150', 'shirt', 0),
(818, 'steam:11000013e699150', 'cutted_wood', 0),
(819, 'steam:11000013e699150', 'bolchips', 0),
(820, 'steam:11000013e699150', 'repartel', 0),
(821, 'steam:11000013e699150', 'jagerbomb', 0),
(822, 'steam:11000013e699150', 'sachetketchup', 0),
(823, 'steam:11000013e699150', 'gold', 0),
(824, 'steam:11000013e699150', 'bolcacahuetes', 0),
(825, 'steam:11000013e699150', 'goldmedal_run', 0),
(826, 'steam:11000013e699150', 'jagercerbere', 0),
(827, 'steam:11000013e699150', 'saffron', 0),
(828, 'steam:11000013e699150', 'loka', 0),
(829, 'steam:11000013e699150', 'meth', 0),
(830, 'steam:11000013e699150', 'cheesebows', 0),
(831, 'steam:11000013e699150', 'net_cracker', 0),
(832, 'steam:11000013e699150', 'caisseketchup', 0),
(833, 'steam:11000013e699150', 'bronzemedal_run', 0),
(834, 'steam:11000013e699150', 'opium', 0),
(835, 'steam:11000013e699150', 'c4_bank', 0),
(836, 'steam:11000013e699150', 'carotool', 0),
(837, 'steam:11000013e699150', 'blowtorch', 0),
(838, 'steam:11000013e699150', 'malbora', 0),
(839, 'steam:11000013e699150', 'petrol_raffin', 0),
(840, 'steam:11000013e699150', 'weed', 0),
(841, 'steam:11000013e699150', 'toothpaste', 0),
(842, 'steam:11000013e699150', 'limonade', 0),
(843, 'steam:11000013e699150', 'shark', 0),
(844, 'steam:11000013e699150', 'lokalizator', 0),
(845, 'steam:11000013e699150', 'schorange', 0),
(846, 'steam:11000013e699150', 'Marabou Mjölkchoklad', 0),
(847, 'steam:11000013e699150', 'poudre', 0),
(848, 'steam:11000013e699150', 'douille', 0),
(849, 'steam:11000013e699150', 'croquettes', 0),
(850, 'steam:11000013e699150', 'cigarett', 0),
(851, 'steam:11000013e699150', 'tabacbrunsec', 0),
(852, 'steam:11000013e699150', 'vodkafruit', 0),
(853, 'steam:11000013e699150', 'highrim', 0),
(854, 'steam:11000013e699150', 'opium_pooch', 0),
(855, 'steam:11000013e699150', 'ring', 0),
(856, 'steam:11000013e699150', 'houblon', 0),
(857, 'steam:11000013e699150', 'mixapero', 0),
(858, 'steam:11000013e699150', 'wood', 0),
(859, 'steam:11000013e699150', 'lowradio', 0),
(860, 'steam:11000013e699150', 'lighter', 0),
(861, 'steam:11000013e699150', 'blowpipe', 0),
(862, 'steam:11000013e699150', 'xanax', 0),
(863, 'steam:11000013e699150', 'gitanes', 0),
(864, 'steam:11000013e699150', 'battery', 0),
(865, 'steam:11000013e699150', 'watch', 0),
(866, 'steam:11000013e699150', 'weed_pooch', 0),
(867, 'steam:11000013e699150', 'whisky', 0),
(868, 'steam:11000013e699150', 'stockrim', 0),
(869, 'steam:11000013e699150', 'whiskycoca', 0),
(870, 'steam:11000013e699150', 'pants', 0),
(871, 'steam:11000013e699150', 'necklace', 0),
(872, 'steam:11000013e699150', 'vodkaenergy', 0),
(873, 'steam:11000013e699150', 'wool', 0),
(874, 'steam:11000013e699150', 'water', 0),
(875, 'steam:11000013e699150', 'packaged_chicken', 0),
(876, 'steam:11000013e699150', 'fixtool', 0),
(877, 'steam:11000013e699150', 'icetea', 0),
(878, 'steam:11000013e699150', 'medikit', 0),
(879, 'steam:11000013e699150', 'raspberry', 0),
(880, 'steam:11000013e699150', 'vodka', 0),
(881, 'steam:11000013e699150', 'turtlebait', 0),
(882, 'steam:11000013e699150', 'turtle', 0),
(883, 'steam:11000013e699150', 'jewels', 0),
(884, 'steam:11000013e699150', 'vine', 0),
(885, 'steam:11000013e699150', 'jager', 0),
(886, 'steam:11000013e699150', 'thermite', 0),
(887, 'steam:11000013e699150', 'bread', 0),
(888, 'steam:11000013e699150', 'grand_cru', 0),
(889, 'steam:11000013e699150', 'cocacola', 0),
(890, 'steam:11000013e699150', 'bulletproof', 0),
(891, 'steam:11000013e699150', 'bolpistache', 0),
(892, 'steam:11000013e699150', 'hifi', 0),
(893, 'steam:11000013e699150', 'mojito', 0),
(894, 'steam:11000013e699150', 'jus_raisin', 0),
(895, 'steam:11000013e699150', 'camera', 0),
(896, 'steam:11000013e699150', 'drill', 0),
(897, 'steam:11000013e699150', 'rhumcoca', 0),
(898, 'steam:11000013e699150', 'teqpaf', 0),
(899, 'steam:11000013e699150', 'laptop', 0),
(900, 'steam:11000013e699150', 'tabacblondsec', 0),
(901, 'steam:11000013e699150', 'hat', 0),
(902, 'steam:11000013e699150', 'brune', 0),
(903, 'steam:11000013e699150', 'bag', 0),
(904, 'steam:11000013e699150', 'packaged_plank', 0),
(905, 'steam:11000013e699150', 'stone', 0),
(906, 'steam:11000013e699150', 'steak', 0),
(907, 'steam:11000013e699150', 'sprite', 0),
(908, 'steam:11000013e699150', 'speaker', 0),
(909, 'steam:11000013e699150', 'silvermedal_run', 0),
(910, 'steam:11000013e699150', 'slaughtered_chicken', 0),
(911, 'steam:11000013e699150', 'airbag', 0),
(912, 'steam:11000013e699150', 'saucisson', 0),
(913, 'steam:11000013e699150', 'ice', 0),
(914, 'steam:11000013e699150', 'shoes', 0),
(915, 'steam:11000013e699150', 'handcuffs', 0),
(916, 'steam:11000013e699150', 'bolnoixcajou', 0),
(917, 'steam:11000013e699150', 'firstaidkit', 0),
(918, 'steam:11000013e699150', 'tabacbrun', 0),
(919, 'steam:11000013e699150', 'tabacblond', 0),
(920, 'steam:11000013e699150', 'carokit', 0),
(921, 'steam:11000013e699150', 'tequila', 0),
(922, 'steam:11000013e699150', 'acier', 0),
(923, 'steam:11000013e699150', 'fishingrod', 0),
(924, 'steam:11000013e699150', 'coke', 0),
(925, 'steam:11000013e699150', 'fishbait', 0),
(926, 'steam:11000013e699150', 'burger', 697),
(927, 'steam:11000013e699150', 'clothe', 0),
(928, 'steam:11000013e699150', 'gazbottle', 0),
(929, 'steam:11000013e699150', 'petrol', 0),
(930, 'steam:11000013e699150', 'martini', 0),
(931, 'steam:11000013e699150', 'fabric', 0),
(932, 'steam:11000013e699150', 'copper', 0),
(933, 'steam:11000013e699150', 'poubelle', 0),
(934, 'steam:11000013e699150', 'pizza', 0),
(935, 'steam:11000013e699150', 'phonecassé', 0),
(936, 'steam:11000013e699150', 'blonde', 0),
(937, 'steam:11000013e699150', 'pastacarbonara', 0),
(938, 'steam:11000013e699150', 'energy', 0),
(939, 'steam:11000013e699150', 'golem', 0),
(940, 'steam:11000013e699150', 'orange', 0),
(941, 'steam:11000013e699150', 'washed_stone', 0),
(942, 'steam:11000013e699150', 'clip', 0),
(943, 'steam:11000013e699150', 'raisin', 0),
(944, 'steam:11000013e699150', 'fish', 0),
(945, 'steam:11000013e699150', 'highradio', 0),
(946, 'steam:11000013e699150', 'iron', 0),
(947, 'steam:11000013e699150', 'grapperaisin', 0),
(948, 'steam:11000013e699150', 'chips', 0),
(949, 'steam:11000011bbbfe53', 'gold', 0),
(950, 'steam:11000011bbbfe53', 'metreshooter', 0),
(951, 'steam:11000011bbbfe53', 'bulletproof', 0),
(952, 'steam:11000011bbbfe53', 'fishingrod', 0),
(953, 'steam:11000011bbbfe53', 'whiskycoca', 0),
(954, 'steam:11000011bbbfe53', 'toothpaste', 0),
(955, 'steam:11000011bbbfe53', 'jager', 0),
(956, 'steam:11000011bbbfe53', 'bolpistache', 0),
(957, 'steam:11000011bbbfe53', 'menthe', 0),
(958, 'steam:11000011bbbfe53', 'macka', 0),
(959, 'steam:11000011bbbfe53', 'lighter', 0),
(960, 'steam:11000011bbbfe53', 'bronzemedal_run', 0),
(961, 'steam:11000011bbbfe53', 'necklace', 0),
(962, 'steam:11000011bbbfe53', 'book', 0),
(963, 'steam:11000011bbbfe53', 'bread', 0),
(964, 'steam:11000011bbbfe53', 'xanax', 0),
(965, 'steam:11000011bbbfe53', 'weed_pooch', 0),
(966, 'steam:11000011bbbfe53', 'cutted_wood', 0),
(967, 'steam:11000011bbbfe53', 'carbon', 0),
(968, 'steam:11000011bbbfe53', 'opium', 0),
(969, 'steam:11000011bbbfe53', 'fixkit', 0),
(970, 'steam:11000011bbbfe53', 'highradio', 0),
(971, 'steam:11000011bbbfe53', 'wool', 0),
(972, 'steam:11000011bbbfe53', 'tabacblondsec', 0),
(973, 'steam:11000011bbbfe53', 'fanta', 0),
(974, 'steam:11000011bbbfe53', 'croquettes', 0),
(975, 'steam:11000011bbbfe53', 'phone', 0),
(976, 'steam:11000011bbbfe53', 'orange', 0),
(977, 'steam:11000011bbbfe53', 'drpepper', 0),
(978, 'steam:11000011bbbfe53', 'douille', 0),
(979, 'steam:11000011bbbfe53', 'lotteryticket', 0),
(980, 'steam:11000011bbbfe53', 'repartel', 0),
(981, 'steam:11000011bbbfe53', 'ring', 0),
(982, 'steam:11000011bbbfe53', 'hat', 0),
(983, 'steam:11000011bbbfe53', 'limonade', 0),
(984, 'steam:11000011bbbfe53', 'fabric', 0),
(985, 'steam:11000011bbbfe53', 'cheese', 0),
(986, 'steam:11000011bbbfe53', 'contrat', 0),
(987, 'steam:11000011bbbfe53', 'sachetketchup', 0),
(988, 'steam:11000011bbbfe53', 'icetea', 0),
(989, 'steam:11000011bbbfe53', 'cocacola', 0),
(990, 'steam:11000011bbbfe53', 'carokit', 0),
(991, 'steam:11000011bbbfe53', 'jagerbomb', 0),
(992, 'steam:11000011bbbfe53', 'highrim', 0),
(993, 'steam:11000011bbbfe53', 'bandage', 0),
(994, 'steam:11000011bbbfe53', 'stockrim', 0),
(995, 'steam:11000011bbbfe53', 'jewels', 0),
(996, 'steam:11000011bbbfe53', 'shoes', 0),
(997, 'steam:11000011bbbfe53', 'martini', 0),
(998, 'steam:11000011bbbfe53', 'schorange', 0),
(999, 'steam:11000011bbbfe53', 'diamond', 0),
(1000, 'steam:11000011bbbfe53', 'iron', 0),
(1001, 'steam:11000011bbbfe53', 'acier', 0),
(1002, 'steam:11000011bbbfe53', 'poubelle', 0),
(1003, 'steam:11000011bbbfe53', 'loka', 0),
(1004, 'steam:11000011bbbfe53', 'handcuffs', 0),
(1005, 'steam:11000011bbbfe53', 'jumelles', 0),
(1006, 'steam:11000011bbbfe53', 'packaged_chicken', 0),
(1007, 'steam:11000011bbbfe53', 'bolchips', 0),
(1008, 'steam:11000011bbbfe53', 'energy', 0),
(1009, 'steam:11000011bbbfe53', 'mixapero', 0),
(1010, 'steam:11000011bbbfe53', 'malbora', 0),
(1011, 'steam:11000011bbbfe53', 'shirt', 0),
(1012, 'steam:11000011bbbfe53', 'blowpipe', 0),
(1013, 'steam:11000011bbbfe53', 'grapperaisin', 0),
(1014, 'steam:11000011bbbfe53', 'cheesebows', 0),
(1015, 'steam:11000011bbbfe53', 'rhumfruit', 0),
(1016, 'steam:11000011bbbfe53', 'laptop', 0),
(1017, 'steam:11000011bbbfe53', 'jagercerbere', 0),
(1018, 'steam:11000011bbbfe53', 'bolcacahuetes', 0),
(1019, 'steam:11000011bbbfe53', 'houblon', 0),
(1020, 'steam:11000011bbbfe53', 'bolnoixcajou', 0),
(1021, 'steam:11000011bbbfe53', 'silvermedal_run', 0),
(1022, 'steam:11000011bbbfe53', 'airbag', 0),
(1023, 'steam:11000011bbbfe53', 'wood', 0),
(1024, 'steam:11000011bbbfe53', 'opium_pooch', 0),
(1025, 'steam:11000011bbbfe53', 'carotool', 0),
(1026, 'steam:11000011bbbfe53', 'saucisson', 0),
(1027, 'steam:11000011bbbfe53', 'stone', 0),
(1028, 'steam:11000011bbbfe53', 'tabacbrunsec', 0),
(1029, 'steam:11000011bbbfe53', 'washed_stone', 0),
(1030, 'steam:11000011bbbfe53', 'whisky', 0),
(1031, 'steam:11000011bbbfe53', 'water', 0),
(1032, 'steam:11000011bbbfe53', 'lokalizator', 0),
(1033, 'steam:11000011bbbfe53', 'petrol_raffin', 0),
(1034, 'steam:11000011bbbfe53', 'gazbottle', 0),
(1035, 'steam:11000011bbbfe53', 'watch', 0),
(1036, 'steam:11000011bbbfe53', 'steak', 0),
(1037, 'steam:11000011bbbfe53', 'weed', 0),
(1038, 'steam:11000011bbbfe53', 'vodkaenergy', 0),
(1039, 'steam:11000011bbbfe53', 'vodkafruit', 0),
(1040, 'steam:11000011bbbfe53', 'phonecassé', 0),
(1041, 'steam:11000011bbbfe53', 'coke_pooch', 0),
(1042, 'steam:11000011bbbfe53', 'turtle', 0),
(1043, 'steam:11000011bbbfe53', 'vine', 0),
(1044, 'steam:11000011bbbfe53', 'turtlebait', 0),
(1045, 'steam:11000011bbbfe53', 'fixtool', 0),
(1046, 'steam:11000011bbbfe53', 'vodka', 0),
(1047, 'steam:11000011bbbfe53', 'oxygen_mask', 0),
(1048, 'steam:11000011bbbfe53', 'teqpaf', 0),
(1049, 'steam:11000011bbbfe53', 'thermite', 0),
(1050, 'steam:11000011bbbfe53', 'rhum', 0),
(1051, 'steam:11000011bbbfe53', 'c4_bank', 0),
(1052, 'steam:11000011bbbfe53', 'gitanes', 0),
(1053, 'steam:11000011bbbfe53', 'tabacbrun', 0),
(1054, 'steam:11000011bbbfe53', 'cigarett', 0),
(1055, 'steam:11000011bbbfe53', 'blonde', 0),
(1056, 'steam:11000011bbbfe53', 'soda', 0),
(1057, 'steam:11000011bbbfe53', 'sprite', 0),
(1058, 'steam:11000011bbbfe53', 'lowradio', 0),
(1059, 'steam:11000011bbbfe53', 'tabacblond', 0),
(1060, 'steam:11000011bbbfe53', 'meth_pooch', 0),
(1061, 'steam:11000011bbbfe53', 'brune', 0),
(1062, 'steam:11000011bbbfe53', 'slaughtered_chicken', 0),
(1063, 'steam:11000011bbbfe53', 'speaker', 0),
(1064, 'steam:11000011bbbfe53', 'battery', 0),
(1065, 'steam:11000011bbbfe53', 'burger', 0),
(1066, 'steam:11000011bbbfe53', 'goldmedal_run', 0),
(1067, 'steam:11000011bbbfe53', 'clip', 0),
(1068, 'steam:11000011bbbfe53', 'shark', 0),
(1069, 'steam:11000011bbbfe53', 'jus_raisin', 0),
(1070, 'steam:11000011bbbfe53', 'camera', 0),
(1071, 'steam:11000011bbbfe53', 'saffron', 0),
(1072, 'steam:11000011bbbfe53', 'firstaidkit', 0),
(1073, 'steam:11000011bbbfe53', 'lockpick', 0),
(1074, 'steam:11000011bbbfe53', 'coke', 0),
(1075, 'steam:11000011bbbfe53', 'meth', 0),
(1076, 'steam:11000011bbbfe53', 'drill', 0),
(1077, 'steam:11000011bbbfe53', 'pants', 0),
(1078, 'steam:11000011bbbfe53', 'rhumcoca', 0),
(1079, 'steam:11000011bbbfe53', 'bag', 0),
(1080, 'steam:11000011bbbfe53', 'raisin', 0),
(1081, 'steam:11000011bbbfe53', 'raspberry', 0),
(1082, 'steam:11000011bbbfe53', 'poudre', 0),
(1083, 'steam:11000011bbbfe53', 'hifi', 0),
(1084, 'steam:11000011bbbfe53', 'tequila', 0),
(1085, 'steam:11000011bbbfe53', 'blowtorch', 0),
(1086, 'steam:11000011bbbfe53', 'jusfruit', 0),
(1087, 'steam:11000011bbbfe53', 'Marabou Mjölkchoklad', 0),
(1088, 'steam:11000011bbbfe53', 'pizza', 0),
(1089, 'steam:11000011bbbfe53', 'clothe', 0),
(1090, 'steam:11000011bbbfe53', 'ice', 0),
(1091, 'steam:11000011bbbfe53', 'golem', 0),
(1092, 'steam:11000011bbbfe53', 'medikit', 0),
(1093, 'steam:11000011bbbfe53', 'alive_chicken', 0),
(1094, 'steam:11000011bbbfe53', 'mojito', 0),
(1095, 'steam:11000011bbbfe53', 'petrol', 0),
(1096, 'steam:11000011bbbfe53', 'pastacarbonara', 0),
(1097, 'steam:11000011bbbfe53', 'net_cracker', 0),
(1098, 'steam:11000011bbbfe53', 'chips', 0),
(1099, 'steam:11000011bbbfe53', 'grand_cru', 0),
(1100, 'steam:11000011bbbfe53', 'fish', 0),
(1101, 'steam:11000011bbbfe53', 'essence', 0),
(1102, 'steam:11000011bbbfe53', 'caisseketchup', 0),
(1103, 'steam:11000011bbbfe53', 'copper', 0),
(1104, 'steam:11000011bbbfe53', 'packaged_plank', 0),
(1105, 'steam:11000011bbbfe53', 'coupon', 0),
(1106, 'steam:11000011bbbfe53', 'fishbait', 0),
(1107, 'steam:1100001187fc731', 'thermite', 0),
(1108, 'steam:1100001187fc731', 'caisseketchup', 0),
(1109, 'steam:1100001187fc731', 'teqpaf', 0),
(1110, 'steam:1100001187fc731', 'orange', 0),
(1111, 'steam:1100001187fc731', 'cigarett', 0),
(1112, 'steam:1100001187fc731', 'jusfruit', 0),
(1113, 'steam:1100001187fc731', 'blowtorch', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(1114, 'steam:1100001187fc731', 'croquettes', 0),
(1115, 'steam:1100001187fc731', 'gitanes', 0),
(1116, 'steam:1100001187fc731', 'packaged_plank', 0),
(1117, 'steam:1100001187fc731', 'lighter', 0),
(1118, 'steam:1100001187fc731', 'fish', 0),
(1119, 'steam:1100001187fc731', 'lotteryticket', 0),
(1120, 'steam:1100001187fc731', 'cocacola', 0),
(1121, 'steam:1100001187fc731', 'repartel', 0),
(1122, 'steam:1100001187fc731', 'icetea', 0),
(1123, 'steam:1100001187fc731', 'toothpaste', 0),
(1124, 'steam:1100001187fc731', 'speaker', 0),
(1125, 'steam:1100001187fc731', 'ice', 0),
(1126, 'steam:1100001187fc731', 'bulletproof', 0),
(1127, 'steam:1100001187fc731', 'steak', 0),
(1128, 'steam:1100001187fc731', 'jager', 0),
(1129, 'steam:1100001187fc731', 'medikit', 0),
(1130, 'steam:1100001187fc731', 'petrol_raffin', 0),
(1131, 'steam:1100001187fc731', 'goldmedal_run', 0),
(1132, 'steam:1100001187fc731', 'battery', 0),
(1133, 'steam:1100001187fc731', 'tequila', 0),
(1134, 'steam:1100001187fc731', 'carokit', 0),
(1135, 'steam:1100001187fc731', 'bronzemedal_run', 0),
(1136, 'steam:1100001187fc731', 'hifi', 0),
(1137, 'steam:1100001187fc731', 'whiskycoca', 0),
(1138, 'steam:1100001187fc731', 'hat', 0),
(1139, 'steam:1100001187fc731', 'loka', 0),
(1140, 'steam:1100001187fc731', 'contrat', 0),
(1141, 'steam:1100001187fc731', 'meth_pooch', 0),
(1142, 'steam:1100001187fc731', 'petrol', 0),
(1143, 'steam:1100001187fc731', 'diamond', 0),
(1144, 'steam:1100001187fc731', 'coupon', 0),
(1145, 'steam:1100001187fc731', 'bolcacahuetes', 0),
(1146, 'steam:1100001187fc731', 'tabacblond', 0),
(1147, 'steam:1100001187fc731', 'highradio', 0),
(1148, 'steam:1100001187fc731', 'cheese', 0),
(1149, 'steam:1100001187fc731', 'highrim', 0),
(1150, 'steam:1100001187fc731', 'stone', 0),
(1151, 'steam:1100001187fc731', 'vodka', 0),
(1152, 'steam:1100001187fc731', 'jagerbomb', 0),
(1153, 'steam:1100001187fc731', 'essence', 0),
(1154, 'steam:1100001187fc731', 'silvermedal_run', 0),
(1155, 'steam:1100001187fc731', 'jagercerbere', 0),
(1156, 'steam:1100001187fc731', 'book', 0),
(1157, 'steam:1100001187fc731', 'fishbait', 0),
(1158, 'steam:1100001187fc731', 'oxygen_mask', 0),
(1159, 'steam:1100001187fc731', 'copper', 0),
(1160, 'steam:1100001187fc731', 'burger', 0),
(1161, 'steam:1100001187fc731', 'bandage', 0),
(1162, 'steam:1100001187fc731', 'shirt', 0),
(1163, 'steam:1100001187fc731', 'acier', 0),
(1164, 'steam:1100001187fc731', 'houblon', 0),
(1165, 'steam:1100001187fc731', 'coke', 0),
(1166, 'steam:1100001187fc731', 'pants', 0),
(1167, 'steam:1100001187fc731', 'clip', 0),
(1168, 'steam:1100001187fc731', 'opium', 0),
(1169, 'steam:1100001187fc731', 'vodkafruit', 0),
(1170, 'steam:1100001187fc731', 'net_cracker', 0),
(1171, 'steam:1100001187fc731', 'lowradio', 0),
(1172, 'steam:1100001187fc731', 'weed', 0),
(1173, 'steam:1100001187fc731', 'coke_pooch', 0),
(1174, 'steam:1100001187fc731', 'brune', 0),
(1175, 'steam:1100001187fc731', 'rhumfruit', 0),
(1176, 'steam:1100001187fc731', 'wool', 0),
(1177, 'steam:1100001187fc731', 'c4_bank', 0),
(1178, 'steam:1100001187fc731', 'douille', 0),
(1179, 'steam:1100001187fc731', 'carbon', 0),
(1180, 'steam:1100001187fc731', 'carotool', 0),
(1181, 'steam:1100001187fc731', 'rhum', 0),
(1182, 'steam:1100001187fc731', 'martini', 0),
(1183, 'steam:1100001187fc731', 'bolchips', 0),
(1184, 'steam:1100001187fc731', 'laptop', 0),
(1185, 'steam:1100001187fc731', 'fanta', 0),
(1186, 'steam:1100001187fc731', 'tabacblondsec', 0),
(1187, 'steam:1100001187fc731', 'chips', 0),
(1188, 'steam:1100001187fc731', 'phonecassé', 0),
(1189, 'steam:1100001187fc731', 'turtlebait', 0),
(1190, 'steam:1100001187fc731', 'jumelles', 0),
(1191, 'steam:1100001187fc731', 'sprite', 0),
(1192, 'steam:1100001187fc731', 'lockpick', 0),
(1193, 'steam:1100001187fc731', 'clothe', 0),
(1194, 'steam:1100001187fc731', 'alive_chicken', 0),
(1195, 'steam:1100001187fc731', 'tabacbrun', 0),
(1196, 'steam:1100001187fc731', 'pastacarbonara', 0),
(1197, 'steam:1100001187fc731', 'limonade', 0),
(1198, 'steam:1100001187fc731', 'gold', 0),
(1199, 'steam:1100001187fc731', 'malbora', 0),
(1200, 'steam:1100001187fc731', 'packaged_chicken', 0),
(1201, 'steam:1100001187fc731', 'metreshooter', 0),
(1202, 'steam:1100001187fc731', 'xanax', 0),
(1203, 'steam:1100001187fc731', 'wood', 0),
(1204, 'steam:1100001187fc731', 'phone', 0),
(1205, 'steam:1100001187fc731', 'mojito', 0),
(1206, 'steam:1100001187fc731', 'poudre', 0),
(1207, 'steam:1100001187fc731', 'whisky', 0),
(1208, 'steam:1100001187fc731', 'airbag', 0),
(1209, 'steam:1100001187fc731', 'stockrim', 0),
(1210, 'steam:1100001187fc731', 'blowpipe', 0),
(1211, 'steam:1100001187fc731', 'fixkit', 0),
(1212, 'steam:1100001187fc731', 'shark', 0),
(1213, 'steam:1100001187fc731', 'washed_stone', 0),
(1214, 'steam:1100001187fc731', 'water', 0),
(1215, 'steam:1100001187fc731', 'camera', 0),
(1216, 'steam:1100001187fc731', 'watch', 0),
(1217, 'steam:1100001187fc731', 'cutted_wood', 0),
(1218, 'steam:1100001187fc731', 'turtle', 0),
(1219, 'steam:1100001187fc731', 'vine', 0),
(1220, 'steam:1100001187fc731', 'drill', 0),
(1221, 'steam:1100001187fc731', 'tabacbrunsec', 0),
(1222, 'steam:1100001187fc731', 'vodkaenergy', 0),
(1223, 'steam:1100001187fc731', 'firstaidkit', 0),
(1224, 'steam:1100001187fc731', 'slaughtered_chicken', 0),
(1225, 'steam:1100001187fc731', 'fixtool', 0),
(1226, 'steam:1100001187fc731', 'menthe', 0),
(1227, 'steam:1100001187fc731', 'bread', 0),
(1228, 'steam:1100001187fc731', 'schorange', 0),
(1229, 'steam:1100001187fc731', 'weed_pooch', 0),
(1230, 'steam:1100001187fc731', 'Marabou Mjölkchoklad', 0),
(1231, 'steam:1100001187fc731', 'golem', 0),
(1232, 'steam:1100001187fc731', 'shoes', 0),
(1233, 'steam:1100001187fc731', 'bag', 0),
(1234, 'steam:1100001187fc731', 'soda', 0),
(1235, 'steam:1100001187fc731', 'grand_cru', 0),
(1236, 'steam:1100001187fc731', 'cheesebows', 0),
(1237, 'steam:1100001187fc731', 'drpepper', 0),
(1238, 'steam:1100001187fc731', 'jewels', 0),
(1239, 'steam:1100001187fc731', 'saffron', 0),
(1240, 'steam:1100001187fc731', 'sachetketchup', 0),
(1241, 'steam:1100001187fc731', 'grapperaisin', 0),
(1242, 'steam:1100001187fc731', 'raisin', 0),
(1243, 'steam:1100001187fc731', 'raspberry', 0),
(1244, 'steam:1100001187fc731', 'handcuffs', 0),
(1245, 'steam:1100001187fc731', 'ring', 0),
(1246, 'steam:1100001187fc731', 'rhumcoca', 0),
(1247, 'steam:1100001187fc731', 'energy', 0),
(1248, 'steam:1100001187fc731', 'pizza', 0),
(1249, 'steam:1100001187fc731', 'poubelle', 0),
(1250, 'steam:1100001187fc731', 'saucisson', 0),
(1251, 'steam:1100001187fc731', 'bolpistache', 0),
(1252, 'steam:1100001187fc731', 'opium_pooch', 0),
(1253, 'steam:1100001187fc731', 'macka', 0),
(1254, 'steam:1100001187fc731', 'fishingrod', 0),
(1255, 'steam:1100001187fc731', 'bolnoixcajou', 0),
(1256, 'steam:1100001187fc731', 'gazbottle', 0),
(1257, 'steam:1100001187fc731', 'blonde', 0),
(1258, 'steam:1100001187fc731', 'lokalizator', 0),
(1259, 'steam:1100001187fc731', 'meth', 0),
(1260, 'steam:1100001187fc731', 'mixapero', 0),
(1261, 'steam:1100001187fc731', 'jus_raisin', 0),
(1262, 'steam:1100001187fc731', 'iron', 0),
(1263, 'steam:1100001187fc731', 'fabric', 0),
(1264, 'steam:1100001187fc731', 'necklace', 0),
(1265, 'steam:11000010e736395', 'rhum', 0),
(1266, 'steam:11000010e736395', 'cutted_wood', 0),
(1267, 'steam:11000010e736395', 'packaged_chicken', 0),
(1268, 'steam:11000010e736395', 'rhumfruit', 0),
(1269, 'steam:11000010e736395', 'steak', 0),
(1270, 'steam:11000010e736395', 'highradio', 0),
(1271, 'steam:11000010e736395', 'Marabou Mjölkchoklad', 0),
(1272, 'steam:11000010e736395', 'limonade', 0),
(1273, 'steam:11000010e736395', 'brune', 0),
(1274, 'steam:11000010e736395', 'goldmedal_run', 0),
(1275, 'steam:11000010e736395', 'coke_pooch', 0),
(1276, 'steam:11000010e736395', 'schorange', 0),
(1277, 'steam:11000010e736395', 'raisin', 0),
(1278, 'steam:11000010e736395', 'douille', 0),
(1279, 'steam:11000010e736395', 'bolpistache', 0),
(1280, 'steam:11000010e736395', 'gold', 0),
(1281, 'steam:11000010e736395', 'jus_raisin', 0),
(1282, 'steam:11000010e736395', 'malbora', 0),
(1283, 'steam:11000010e736395', 'blowpipe', 0),
(1284, 'steam:11000010e736395', 'opium_pooch', 0),
(1285, 'steam:11000010e736395', 'jager', 0),
(1286, 'steam:11000010e736395', 'grand_cru', 0),
(1287, 'steam:11000010e736395', 'burger', 1),
(1288, 'steam:11000010e736395', 'saffron', 0),
(1289, 'steam:11000010e736395', 'meth', 0),
(1290, 'steam:11000010e736395', 'ring', 0),
(1291, 'steam:11000010e736395', 'fabric', 0),
(1292, 'steam:11000010e736395', 'diamond', 0),
(1293, 'steam:11000010e736395', 'coke', 0),
(1294, 'steam:11000010e736395', 'c4_bank', 0),
(1295, 'steam:11000010e736395', 'icetea', 1),
(1296, 'steam:11000010e736395', 'bag', 0),
(1297, 'steam:11000010e736395', 'bronzemedal_run', 0),
(1298, 'steam:11000010e736395', 'cheesebows', 0),
(1299, 'steam:11000010e736395', 'lokalizator', 0),
(1300, 'steam:11000010e736395', 'stone', 0),
(1301, 'steam:11000010e736395', 'handcuffs', 0),
(1302, 'steam:11000010e736395', 'carokit', 0),
(1303, 'steam:11000010e736395', 'carotool', 0),
(1304, 'steam:11000010e736395', 'fixtool', 0),
(1305, 'steam:11000010e736395', 'jewels', 0),
(1306, 'steam:11000010e736395', 'rhumcoca', 0),
(1307, 'steam:11000010e736395', 'blonde', 0),
(1308, 'steam:11000010e736395', 'pizza', 0),
(1309, 'steam:11000010e736395', 'opium', 0),
(1310, 'steam:11000010e736395', 'oxygen_mask', 0),
(1311, 'steam:11000010e736395', 'bread', 1),
(1312, 'steam:11000010e736395', 'teqpaf', 0),
(1313, 'steam:11000010e736395', 'bulletproof', 0),
(1314, 'steam:11000010e736395', 'contrat', 0),
(1315, 'steam:11000010e736395', 'phonecassé', 0),
(1316, 'steam:11000010e736395', 'metreshooter', 0),
(1317, 'steam:11000010e736395', 'washed_stone', 0),
(1318, 'steam:11000010e736395', 'airbag', 0),
(1319, 'steam:11000010e736395', 'mojito', 0),
(1320, 'steam:11000010e736395', 'bolnoixcajou', 0),
(1321, 'steam:11000010e736395', 'fanta', 0),
(1322, 'steam:11000010e736395', 'clothe', 0),
(1323, 'steam:11000010e736395', 'hat', 0),
(1324, 'steam:11000010e736395', 'jumelles', 0),
(1325, 'steam:11000010e736395', 'vodka', 0),
(1326, 'steam:11000010e736395', 'caisseketchup', 0),
(1327, 'steam:11000010e736395', 'cigarett', 0),
(1328, 'steam:11000010e736395', 'houblon', 0),
(1329, 'steam:11000010e736395', 'clip', 0),
(1330, 'steam:11000010e736395', 'acier', 0),
(1331, 'steam:11000010e736395', 'jusfruit', 1),
(1332, 'steam:11000010e736395', 'petrol', 0),
(1333, 'steam:11000010e736395', 'soda', 1),
(1334, 'steam:11000010e736395', 'pastacarbonara', 0),
(1335, 'steam:11000010e736395', 'pants', 0),
(1336, 'steam:11000010e736395', 'croquettes', 0),
(1337, 'steam:11000010e736395', 'blowtorch', 0),
(1338, 'steam:11000010e736395', 'gazbottle', 0),
(1339, 'steam:11000010e736395', 'shark', 0),
(1340, 'steam:11000010e736395', 'golem', 0),
(1341, 'steam:11000010e736395', 'tabacblondsec', 0),
(1342, 'steam:11000010e736395', 'drpepper', 0),
(1343, 'steam:11000010e736395', 'fishingrod', 0),
(1344, 'steam:11000010e736395', 'bandage', 20),
(1345, 'steam:11000010e736395', 'carbon', 0),
(1346, 'steam:11000010e736395', 'packaged_plank', 0),
(1347, 'steam:11000010e736395', 'wood', 0),
(1348, 'steam:11000010e736395', 'vodkaenergy', 0),
(1349, 'steam:11000010e736395', 'highrim', 0),
(1350, 'steam:11000010e736395', 'menthe', 0),
(1351, 'steam:11000010e736395', 'orange', 0),
(1352, 'steam:11000010e736395', 'medikit', 4),
(1353, 'steam:11000010e736395', 'copper', 0),
(1354, 'steam:11000010e736395', 'weed_pooch', 0),
(1355, 'steam:11000010e736395', 'whisky', 0),
(1356, 'steam:11000010e736395', 'turtlebait', 0),
(1357, 'steam:11000010e736395', 'whiskycoca', 0),
(1358, 'steam:11000010e736395', 'poubelle', 0),
(1359, 'steam:11000010e736395', 'wool', 0),
(1360, 'steam:11000010e736395', 'water', 0),
(1361, 'steam:11000010e736395', 'xanax', 0),
(1362, 'steam:11000010e736395', 'drill', 0),
(1363, 'steam:11000010e736395', 'essence', 0),
(1364, 'steam:11000010e736395', 'lockpick', 26),
(1365, 'steam:11000010e736395', 'firstaidkit', 0),
(1366, 'steam:11000010e736395', 'saucisson', 0),
(1367, 'steam:11000010e736395', 'watch', 0),
(1368, 'steam:11000010e736395', 'lighter', 0),
(1369, 'steam:11000010e736395', 'vodkafruit', 0),
(1370, 'steam:11000010e736395', 'thermite', 0),
(1371, 'steam:11000010e736395', 'toothpaste', 0),
(1372, 'steam:11000010e736395', 'vine', 0),
(1373, 'steam:11000010e736395', 'turtle', 0),
(1374, 'steam:11000010e736395', 'mixapero', 0),
(1375, 'steam:11000010e736395', 'tabacbrun', 0),
(1376, 'steam:11000010e736395', 'tabacbrunsec', 0),
(1377, 'steam:11000010e736395', 'cocacola', 0),
(1378, 'steam:11000010e736395', 'tequila', 0),
(1379, 'steam:11000010e736395', 'bolcacahuetes', 0),
(1380, 'steam:11000010e736395', 'cheese', 0),
(1381, 'steam:11000010e736395', 'phone', 1),
(1382, 'steam:11000010e736395', 'stockrim', 0),
(1383, 'steam:11000010e736395', 'tabacblond', 0),
(1384, 'steam:11000010e736395', 'lowradio', 0),
(1385, 'steam:11000010e736395', 'slaughtered_chicken', 0),
(1386, 'steam:11000010e736395', 'jagerbomb', 0),
(1387, 'steam:11000010e736395', 'laptop', 0),
(1388, 'steam:11000010e736395', 'raspberry', 0),
(1389, 'steam:11000010e736395', 'loka', 0),
(1390, 'steam:11000010e736395', 'shoes', 0),
(1391, 'steam:11000010e736395', 'shirt', 0),
(1392, 'steam:11000010e736395', 'net_cracker', 0),
(1393, 'steam:11000010e736395', 'silvermedal_run', 0),
(1394, 'steam:11000010e736395', 'repartel', 0),
(1395, 'steam:11000010e736395', 'grapperaisin', 1),
(1396, 'steam:11000010e736395', 'energy', 0),
(1397, 'steam:11000010e736395', 'alive_chicken', 0),
(1398, 'steam:11000010e736395', 'weed', 0),
(1399, 'steam:11000010e736395', 'sachetketchup', 0),
(1400, 'steam:11000010e736395', 'jagercerbere', 0),
(1401, 'steam:11000010e736395', 'lotteryticket', 0),
(1402, 'steam:11000010e736395', 'fishbait', 0),
(1403, 'steam:11000010e736395', 'battery', 0),
(1404, 'steam:11000010e736395', 'sprite', 0),
(1405, 'steam:11000010e736395', 'camera', 0),
(1406, 'steam:11000010e736395', 'fixkit', 0),
(1407, 'steam:11000010e736395', 'martini', 0),
(1408, 'steam:11000010e736395', 'necklace', 0),
(1409, 'steam:11000010e736395', 'petrol_raffin', 0),
(1410, 'steam:11000010e736395', 'fish', 0),
(1411, 'steam:11000010e736395', 'poudre', 0),
(1412, 'steam:11000010e736395', 'chips', 0),
(1413, 'steam:11000010e736395', 'gitanes', 0),
(1414, 'steam:11000010e736395', 'book', 0),
(1415, 'steam:11000010e736395', 'coupon', 0),
(1416, 'steam:11000010e736395', 'bolchips', 1),
(1417, 'steam:11000010e736395', 'ice', 0),
(1418, 'steam:11000010e736395', 'macka', 0),
(1419, 'steam:11000010e736395', 'speaker', 0),
(1420, 'steam:11000010e736395', 'meth_pooch', 0),
(1421, 'steam:11000010e736395', 'iron', 0),
(1422, 'steam:11000010e736395', 'hifi', 0),
(1423, 'steam:110000117655aca', 'menthe', 0),
(1424, 'steam:110000117655aca', 'cheese', 0),
(1425, 'steam:110000117655aca', 'acier', 0),
(1426, 'steam:110000117655aca', 'mojito', 0),
(1427, 'steam:110000117655aca', 'schorange', 0),
(1428, 'steam:110000117655aca', 'necklace', 0),
(1429, 'steam:110000117655aca', 'mixapero', 0),
(1430, 'steam:110000117655aca', 'raspberry', 0),
(1431, 'steam:110000117655aca', 'meth', 0),
(1432, 'steam:110000117655aca', 'grand_cru', 0),
(1433, 'steam:110000117655aca', 'iron', 0),
(1434, 'steam:110000117655aca', 'limonade', 0),
(1435, 'steam:110000117655aca', 'jusfruit', 0),
(1436, 'steam:110000117655aca', 'diamond', 0),
(1437, 'steam:110000117655aca', 'fabric', 0),
(1438, 'steam:110000117655aca', 'golem', 0),
(1439, 'steam:110000117655aca', 'contrat', 0),
(1440, 'steam:110000117655aca', 'fish', 0),
(1441, 'steam:110000117655aca', 'tabacbrun', 0),
(1442, 'steam:110000117655aca', 'Marabou Mjölkchoklad', 0),
(1443, 'steam:110000117655aca', 'jager', 0),
(1444, 'steam:110000117655aca', 'phone', 0),
(1445, 'steam:110000117655aca', 'stockrim', 0),
(1446, 'steam:110000117655aca', 'bronzemedal_run', 0),
(1447, 'steam:110000117655aca', 'wood', 0),
(1448, 'steam:110000117655aca', 'slaughtered_chicken', 0),
(1449, 'steam:110000117655aca', 'lotteryticket', 0),
(1450, 'steam:110000117655aca', 'pizza', 0),
(1451, 'steam:110000117655aca', 'water', 0),
(1452, 'steam:110000117655aca', 'bolnoixcajou', 0),
(1453, 'steam:110000117655aca', 'poudre', 0),
(1454, 'steam:110000117655aca', 'douille', 0),
(1455, 'steam:110000117655aca', 'c4_bank', 0),
(1456, 'steam:110000117655aca', 'carokit', 0),
(1457, 'steam:110000117655aca', 'icetea', 0),
(1458, 'steam:110000117655aca', 'saffron', 0),
(1459, 'steam:110000117655aca', 'watch', 0),
(1460, 'steam:110000117655aca', 'whiskycoca', 0),
(1461, 'steam:110000117655aca', 'petrol', 0),
(1462, 'steam:110000117655aca', 'jagerbomb', 0),
(1463, 'steam:110000117655aca', 'sprite', 0),
(1464, 'steam:110000117655aca', 'hifi', 0),
(1465, 'steam:110000117655aca', 'steak', 0),
(1466, 'steam:110000117655aca', 'chips', 0),
(1467, 'steam:110000117655aca', 'pants', 0),
(1468, 'steam:110000117655aca', 'blowpipe', 0),
(1469, 'steam:110000117655aca', 'phonecassé', 0),
(1470, 'steam:110000117655aca', 'shark', 0),
(1471, 'steam:110000117655aca', 'fixkit', 0),
(1472, 'steam:110000117655aca', 'soda', 0),
(1473, 'steam:110000117655aca', 'teqpaf', 0),
(1474, 'steam:110000117655aca', 'blonde', 0),
(1475, 'steam:110000117655aca', 'grapperaisin', 0),
(1476, 'steam:110000117655aca', 'laptop', 0),
(1477, 'steam:110000117655aca', 'bread', 0),
(1478, 'steam:110000117655aca', 'turtlebait', 0),
(1479, 'steam:110000117655aca', 'packaged_plank', 0),
(1480, 'steam:110000117655aca', 'bandage', 0),
(1481, 'steam:110000117655aca', 'shoes', 0),
(1482, 'steam:110000117655aca', 'shirt', 0),
(1483, 'steam:110000117655aca', 'gitanes', 0),
(1484, 'steam:110000117655aca', 'lowradio', 0),
(1485, 'steam:110000117655aca', 'bulletproof', 0),
(1486, 'steam:110000117655aca', 'coupon', 0),
(1487, 'steam:110000117655aca', 'pastacarbonara', 0),
(1488, 'steam:110000117655aca', 'caisseketchup', 0),
(1489, 'steam:110000117655aca', 'cutted_wood', 0),
(1490, 'steam:110000117655aca', 'drpepper', 0),
(1491, 'steam:110000117655aca', 'vodka', 0),
(1492, 'steam:110000117655aca', 'fishingrod', 0),
(1493, 'steam:110000117655aca', 'coke', 0),
(1494, 'steam:110000117655aca', 'bag', 0),
(1495, 'steam:110000117655aca', 'airbag', 0),
(1496, 'steam:110000117655aca', 'carbon', 0),
(1497, 'steam:110000117655aca', 'fanta', 0),
(1498, 'steam:110000117655aca', 'jus_raisin', 0),
(1499, 'steam:110000117655aca', 'malbora', 0),
(1500, 'steam:110000117655aca', 'bolcacahuetes', 0),
(1501, 'steam:110000117655aca', 'camera', 0),
(1502, 'steam:110000117655aca', 'xanax', 0),
(1503, 'steam:110000117655aca', 'essence', 0),
(1504, 'steam:110000117655aca', 'houblon', 0),
(1505, 'steam:110000117655aca', 'lighter', 0),
(1506, 'steam:110000117655aca', 'firstaidkit', 0),
(1507, 'steam:110000117655aca', 'burger', 0),
(1508, 'steam:110000117655aca', 'wool', 0),
(1509, 'steam:110000117655aca', 'weed_pooch', 0),
(1510, 'steam:110000117655aca', 'lockpick', 0),
(1511, 'steam:110000117655aca', 'lokalizator', 0),
(1512, 'steam:110000117655aca', 'tabacblond', 0),
(1513, 'steam:110000117655aca', 'highradio', 0),
(1514, 'steam:110000117655aca', 'energy', 0),
(1515, 'steam:110000117655aca', 'weed', 0),
(1516, 'steam:110000117655aca', 'washed_stone', 0),
(1517, 'steam:110000117655aca', 'gazbottle', 0),
(1518, 'steam:110000117655aca', 'vodkaenergy', 0),
(1519, 'steam:110000117655aca', 'vodkafruit', 0),
(1520, 'steam:110000117655aca', 'cocacola', 0),
(1521, 'steam:110000117655aca', 'vine', 0),
(1522, 'steam:110000117655aca', 'martini', 0),
(1523, 'steam:110000117655aca', 'macka', 0),
(1524, 'steam:110000117655aca', 'copper', 0),
(1525, 'steam:110000117655aca', 'turtle', 0),
(1526, 'steam:110000117655aca', 'petrol_raffin', 0),
(1527, 'steam:110000117655aca', 'toothpaste', 0),
(1528, 'steam:110000117655aca', 'brune', 0),
(1529, 'steam:110000117655aca', 'ice', 0),
(1530, 'steam:110000117655aca', 'thermite', 0),
(1531, 'steam:110000117655aca', 'fishbait', 0),
(1532, 'steam:110000117655aca', 'tabacbrunsec', 0),
(1533, 'steam:110000117655aca', 'tequila', 0),
(1534, 'steam:110000117655aca', 'bolchips', 0),
(1535, 'steam:110000117655aca', 'tabacblondsec', 0),
(1536, 'steam:110000117655aca', 'poubelle', 0),
(1537, 'steam:110000117655aca', 'jagercerbere', 0),
(1538, 'steam:110000117655aca', 'bolpistache', 0),
(1539, 'steam:110000117655aca', 'stone', 0),
(1540, 'steam:110000117655aca', 'speaker', 0),
(1541, 'steam:110000117655aca', 'fixtool', 0),
(1542, 'steam:110000117655aca', 'coke_pooch', 0),
(1543, 'steam:110000117655aca', 'croquettes', 0),
(1544, 'steam:110000117655aca', 'ring', 0),
(1545, 'steam:110000117655aca', 'clothe', 0),
(1546, 'steam:110000117655aca', 'silvermedal_run', 0),
(1547, 'steam:110000117655aca', 'cigarett', 0),
(1548, 'steam:110000117655aca', 'saucisson', 0),
(1549, 'steam:110000117655aca', 'sachetketchup', 0),
(1550, 'steam:110000117655aca', 'highrim', 0),
(1551, 'steam:110000117655aca', 'goldmedal_run', 0),
(1552, 'steam:110000117655aca', 'jumelles', 0),
(1553, 'steam:110000117655aca', 'whisky', 0),
(1554, 'steam:110000117655aca', 'gold', 0),
(1555, 'steam:110000117655aca', 'carotool', 0),
(1556, 'steam:110000117655aca', 'rhumfruit', 0),
(1557, 'steam:110000117655aca', 'clip', 0),
(1558, 'steam:110000117655aca', 'battery', 0),
(1559, 'steam:110000117655aca', 'oxygen_mask', 0),
(1560, 'steam:110000117655aca', 'rhum', 0),
(1561, 'steam:110000117655aca', 'orange', 0),
(1562, 'steam:110000117655aca', 'repartel', 0),
(1563, 'steam:110000117655aca', 'opium_pooch', 0),
(1564, 'steam:110000117655aca', 'jewels', 0),
(1565, 'steam:110000117655aca', 'metreshooter', 0),
(1566, 'steam:110000117655aca', 'opium', 0),
(1567, 'steam:110000117655aca', 'rhumcoca', 0),
(1568, 'steam:110000117655aca', 'drill', 0),
(1569, 'steam:110000117655aca', 'hat', 0),
(1570, 'steam:110000117655aca', 'raisin', 0),
(1571, 'steam:110000117655aca', 'net_cracker', 0),
(1572, 'steam:110000117655aca', 'packaged_chicken', 0),
(1573, 'steam:110000117655aca', 'blowtorch', 0),
(1574, 'steam:110000117655aca', 'cheesebows', 0),
(1575, 'steam:110000117655aca', 'medikit', 0),
(1576, 'steam:110000117655aca', 'meth_pooch', 0),
(1577, 'steam:110000117655aca', 'alive_chicken', 0),
(1578, 'steam:110000117655aca', 'book', 0),
(1579, 'steam:110000117655aca', 'loka', 0),
(1580, 'steam:110000117655aca', 'handcuffs', 0),
(1581, 'steam:11000011292a445', 'cheese', 0),
(1582, 'steam:11000011292a445', 'schorange', 0),
(1583, 'steam:11000011292a445', 'menthe', 0),
(1584, 'steam:11000011292a445', 'acier', 0),
(1585, 'steam:11000011292a445', 'mojito', 0),
(1586, 'steam:11000011292a445', 'meth', 0),
(1587, 'steam:11000011292a445', 'mixapero', 0),
(1588, 'steam:11000011292a445', 'necklace', 0),
(1589, 'steam:11000011292a445', 'raspberry', 0),
(1590, 'steam:11000011292a445', 'grand_cru', 0),
(1591, 'steam:11000011292a445', 'fabric', 0),
(1592, 'steam:11000011292a445', 'iron', 0),
(1593, 'steam:11000011292a445', 'limonade', 0),
(1594, 'steam:11000011292a445', 'jusfruit', 0),
(1595, 'steam:11000011292a445', 'diamond', 0),
(1596, 'steam:11000011292a445', 'golem', 0),
(1597, 'steam:11000011292a445', 'tabacbrun', 0),
(1598, 'steam:11000011292a445', 'Marabou Mjölkchoklad', 0),
(1599, 'steam:11000011292a445', 'contrat', 0),
(1600, 'steam:11000011292a445', 'fish', 0),
(1601, 'steam:11000011292a445', 'stockrim', 0),
(1602, 'steam:11000011292a445', 'jager', 0),
(1603, 'steam:11000011292a445', 'wood', 0),
(1604, 'steam:11000011292a445', 'phone', 2),
(1605, 'steam:11000011292a445', 'bronzemedal_run', 0),
(1606, 'steam:11000011292a445', 'slaughtered_chicken', 0),
(1607, 'steam:11000011292a445', 'pizza', 0),
(1608, 'steam:11000011292a445', 'bolnoixcajou', 0),
(1609, 'steam:11000011292a445', 'water', 0),
(1610, 'steam:11000011292a445', 'lotteryticket', 0),
(1611, 'steam:11000011292a445', 'icetea', 0),
(1612, 'steam:11000011292a445', 'c4_bank', 0),
(1613, 'steam:11000011292a445', 'carokit', 0),
(1614, 'steam:11000011292a445', 'poudre', 0),
(1615, 'steam:11000011292a445', 'douille', 0),
(1616, 'steam:11000011292a445', 'watch', 0),
(1617, 'steam:11000011292a445', 'petrol', 0),
(1618, 'steam:11000011292a445', 'saffron', 0),
(1619, 'steam:11000011292a445', 'jagerbomb', 0),
(1620, 'steam:11000011292a445', 'whiskycoca', 0),
(1621, 'steam:11000011292a445', 'chips', 0),
(1622, 'steam:11000011292a445', 'steak', 0),
(1623, 'steam:11000011292a445', 'pants', 0),
(1624, 'steam:11000011292a445', 'hifi', 0),
(1625, 'steam:11000011292a445', 'sprite', 0),
(1626, 'steam:11000011292a445', 'blowpipe', 0),
(1627, 'steam:11000011292a445', 'shark', 0),
(1628, 'steam:11000011292a445', 'soda', 0),
(1629, 'steam:11000011292a445', 'fixkit', 0),
(1630, 'steam:11000011292a445', 'phonecassé', 0),
(1631, 'steam:11000011292a445', 'blonde', 0),
(1632, 'steam:11000011292a445', 'bread', 0),
(1633, 'steam:11000011292a445', 'teqpaf', 0),
(1634, 'steam:11000011292a445', 'laptop', 0),
(1635, 'steam:11000011292a445', 'grapperaisin', 0),
(1636, 'steam:11000011292a445', 'shirt', 0),
(1637, 'steam:11000011292a445', 'packaged_plank', 0),
(1638, 'steam:11000011292a445', 'turtlebait', 0),
(1639, 'steam:11000011292a445', 'bandage', 0),
(1640, 'steam:11000011292a445', 'shoes', 0),
(1641, 'steam:11000011292a445', 'pastacarbonara', 0),
(1642, 'steam:11000011292a445', 'bulletproof', 0),
(1643, 'steam:11000011292a445', 'gitanes', 0),
(1644, 'steam:11000011292a445', 'lowradio', 0),
(1645, 'steam:11000011292a445', 'coupon', 0),
(1646, 'steam:11000011292a445', 'drpepper', 0),
(1647, 'steam:11000011292a445', 'cutted_wood', 0),
(1648, 'steam:11000011292a445', 'caisseketchup', 0),
(1649, 'steam:11000011292a445', 'fishingrod', 0),
(1650, 'steam:11000011292a445', 'vodka', 0),
(1651, 'steam:11000011292a445', 'airbag', 0),
(1652, 'steam:11000011292a445', 'coke', 0),
(1653, 'steam:11000011292a445', 'bag', 0),
(1654, 'steam:11000011292a445', 'fanta', 0),
(1655, 'steam:11000011292a445', 'carbon', 0),
(1656, 'steam:11000011292a445', 'malbora', 0),
(1657, 'steam:11000011292a445', 'xanax', 0),
(1658, 'steam:11000011292a445', 'camera', 0),
(1659, 'steam:11000011292a445', 'bolcacahuetes', 0),
(1660, 'steam:11000011292a445', 'jus_raisin', 0),
(1661, 'steam:11000011292a445', 'burger', 0),
(1662, 'steam:11000011292a445', 'lighter', 0),
(1663, 'steam:11000011292a445', 'houblon', 0),
(1664, 'steam:11000011292a445', 'essence', 0),
(1665, 'steam:11000011292a445', 'firstaidkit', 0),
(1666, 'steam:11000011292a445', 'tabacblond', 0),
(1667, 'steam:11000011292a445', 'lokalizator', 0),
(1668, 'steam:11000011292a445', 'lockpick', 0),
(1669, 'steam:11000011292a445', 'weed_pooch', 0),
(1670, 'steam:11000011292a445', 'wool', 0),
(1671, 'steam:11000011292a445', 'weed', 0),
(1672, 'steam:11000011292a445', 'energy', 0),
(1673, 'steam:11000011292a445', 'gazbottle', 0),
(1674, 'steam:11000011292a445', 'highradio', 0),
(1675, 'steam:11000011292a445', 'washed_stone', 0),
(1676, 'steam:11000011292a445', 'martini', 0),
(1677, 'steam:11000011292a445', 'vine', 0),
(1678, 'steam:11000011292a445', 'cocacola', 0),
(1679, 'steam:11000011292a445', 'vodkaenergy', 0),
(1680, 'steam:11000011292a445', 'vodkafruit', 0),
(1681, 'steam:11000011292a445', 'copper', 0),
(1682, 'steam:11000011292a445', 'macka', 0),
(1683, 'steam:11000011292a445', 'toothpaste', 0),
(1684, 'steam:11000011292a445', 'turtle', 0),
(1685, 'steam:11000011292a445', 'petrol_raffin', 0),
(1686, 'steam:11000011292a445', 'tabacbrunsec', 0),
(1687, 'steam:11000011292a445', 'ice', 0),
(1688, 'steam:11000011292a445', 'thermite', 0),
(1689, 'steam:11000011292a445', 'brune', 0),
(1690, 'steam:11000011292a445', 'fishbait', 0),
(1691, 'steam:11000011292a445', 'tequila', 0),
(1692, 'steam:11000011292a445', 'poubelle', 0),
(1693, 'steam:11000011292a445', 'bolchips', 0),
(1694, 'steam:11000011292a445', 'tabacblondsec', 0),
(1695, 'steam:11000011292a445', 'jagercerbere', 0),
(1696, 'steam:11000011292a445', 'stone', 0),
(1697, 'steam:11000011292a445', 'coke_pooch', 0),
(1698, 'steam:11000011292a445', 'fixtool', 0),
(1699, 'steam:11000011292a445', 'bolpistache', 0),
(1700, 'steam:11000011292a445', 'speaker', 0),
(1701, 'steam:11000011292a445', 'cigarett', 0),
(1702, 'steam:11000011292a445', 'clothe', 0),
(1703, 'steam:11000011292a445', 'silvermedal_run', 0),
(1704, 'steam:11000011292a445', 'croquettes', 0),
(1705, 'steam:11000011292a445', 'ring', 0),
(1706, 'steam:11000011292a445', 'saucisson', 0),
(1707, 'steam:11000011292a445', 'highrim', 0),
(1708, 'steam:11000011292a445', 'goldmedal_run', 0),
(1709, 'steam:11000011292a445', 'sachetketchup', 0),
(1710, 'steam:11000011292a445', 'jumelles', 0),
(1711, 'steam:11000011292a445', 'gold', 0),
(1712, 'steam:11000011292a445', 'carotool', 0),
(1713, 'steam:11000011292a445', 'whisky', 0),
(1714, 'steam:11000011292a445', 'clip', 0),
(1715, 'steam:11000011292a445', 'rhumfruit', 0),
(1716, 'steam:11000011292a445', 'oxygen_mask', 0),
(1717, 'steam:11000011292a445', 'repartel', 0),
(1718, 'steam:11000011292a445', 'battery', 0),
(1719, 'steam:11000011292a445', 'orange', 0),
(1720, 'steam:11000011292a445', 'rhum', 0),
(1721, 'steam:11000011292a445', 'opium', 0),
(1722, 'steam:11000011292a445', 'jewels', 0),
(1723, 'steam:11000011292a445', 'rhumcoca', 0),
(1724, 'steam:11000011292a445', 'opium_pooch', 0),
(1725, 'steam:11000011292a445', 'metreshooter', 0),
(1726, 'steam:11000011292a445', 'raisin', 0),
(1727, 'steam:11000011292a445', 'net_cracker', 1),
(1728, 'steam:11000011292a445', 'packaged_chicken', 0),
(1729, 'steam:11000011292a445', 'drill', 0),
(1730, 'steam:11000011292a445', 'hat', 0),
(1731, 'steam:11000011292a445', 'cheesebows', 0),
(1732, 'steam:11000011292a445', 'medikit', 0),
(1733, 'steam:11000011292a445', 'meth_pooch', 0),
(1734, 'steam:11000011292a445', 'blowtorch', 0),
(1735, 'steam:11000011292a445', 'alive_chicken', 0),
(1736, 'steam:11000011292a445', 'loka', 0),
(1737, 'steam:11000011292a445', 'book', 0),
(1738, 'steam:11000011292a445', 'handcuffs', 0),
(1739, 'steam:110000109d07b07', 'menthe', 0),
(1740, 'steam:110000109d07b07', 'schorange', 0),
(1741, 'steam:110000109d07b07', 'cheese', 0),
(1742, 'steam:110000109d07b07', 'mojito', 0),
(1743, 'steam:110000109d07b07', 'acier', 0),
(1744, 'steam:110000109d07b07', 'necklace', 0),
(1745, 'steam:110000109d07b07', 'mixapero', 0),
(1746, 'steam:110000109d07b07', 'raspberry', 0),
(1747, 'steam:110000109d07b07', 'grand_cru', 0),
(1748, 'steam:110000109d07b07', 'meth', 0),
(1749, 'steam:110000109d07b07', 'limonade', 0),
(1750, 'steam:110000109d07b07', 'jusfruit', 143),
(1751, 'steam:110000109d07b07', 'fabric', 0),
(1752, 'steam:110000109d07b07', 'iron', 0),
(1753, 'steam:110000109d07b07', 'diamond', 0),
(1754, 'steam:110000109d07b07', 'golem', 0),
(1755, 'steam:110000109d07b07', 'contrat', 0),
(1756, 'steam:110000109d07b07', 'tabacbrun', 0),
(1757, 'steam:110000109d07b07', 'fish', 0),
(1758, 'steam:110000109d07b07', 'Marabou Mjölkchoklad', 0),
(1759, 'steam:110000109d07b07', 'stockrim', 0),
(1760, 'steam:110000109d07b07', 'phone', 1),
(1761, 'steam:110000109d07b07', 'jager', 0),
(1762, 'steam:110000109d07b07', 'bronzemedal_run', 0),
(1763, 'steam:110000109d07b07', 'wood', 0),
(1764, 'steam:110000109d07b07', 'slaughtered_chicken', 0),
(1765, 'steam:110000109d07b07', 'water', 0),
(1766, 'steam:110000109d07b07', 'lotteryticket', 0),
(1767, 'steam:110000109d07b07', 'pizza', 0),
(1768, 'steam:110000109d07b07', 'bolnoixcajou', 0),
(1769, 'steam:110000109d07b07', 'douille', 0),
(1770, 'steam:110000109d07b07', 'carokit', 0),
(1771, 'steam:110000109d07b07', 'poudre', 0),
(1772, 'steam:110000109d07b07', 'c4_bank', 0),
(1773, 'steam:110000109d07b07', 'icetea', 0),
(1774, 'steam:110000109d07b07', 'saffron', 0),
(1775, 'steam:110000109d07b07', 'watch', 0),
(1776, 'steam:110000109d07b07', 'whiskycoca', 0),
(1777, 'steam:110000109d07b07', 'jagerbomb', 0),
(1778, 'steam:110000109d07b07', 'petrol', 0),
(1779, 'steam:110000109d07b07', 'sprite', 0),
(1780, 'steam:110000109d07b07', 'pants', 0),
(1781, 'steam:110000109d07b07', 'chips', 0),
(1782, 'steam:110000109d07b07', 'steak', 0),
(1783, 'steam:110000109d07b07', 'hifi', 0),
(1784, 'steam:110000109d07b07', 'phonecassé', 0),
(1785, 'steam:110000109d07b07', 'shark', 0),
(1786, 'steam:110000109d07b07', 'blowpipe', 0),
(1787, 'steam:110000109d07b07', 'fixkit', 0),
(1788, 'steam:110000109d07b07', 'soda', 0),
(1789, 'steam:110000109d07b07', 'teqpaf', 0),
(1790, 'steam:110000109d07b07', 'blonde', 0),
(1791, 'steam:110000109d07b07', 'bread', 0),
(1792, 'steam:110000109d07b07', 'grapperaisin', 0),
(1793, 'steam:110000109d07b07', 'laptop', 0),
(1794, 'steam:110000109d07b07', 'packaged_plank', 0),
(1795, 'steam:110000109d07b07', 'turtlebait', 0),
(1796, 'steam:110000109d07b07', 'shoes', 0),
(1797, 'steam:110000109d07b07', 'shirt', 0),
(1798, 'steam:110000109d07b07', 'bandage', 0),
(1799, 'steam:110000109d07b07', 'lowradio', 0),
(1800, 'steam:110000109d07b07', 'pastacarbonara', 0),
(1801, 'steam:110000109d07b07', 'coupon', 0),
(1802, 'steam:110000109d07b07', 'bulletproof', 0),
(1803, 'steam:110000109d07b07', 'gitanes', 0),
(1804, 'steam:110000109d07b07', 'cutted_wood', 0),
(1805, 'steam:110000109d07b07', 'caisseketchup', 0),
(1806, 'steam:110000109d07b07', 'vodka', 0),
(1807, 'steam:110000109d07b07', 'drpepper', 0),
(1808, 'steam:110000109d07b07', 'fishingrod', 0),
(1809, 'steam:110000109d07b07', 'coke', 0),
(1810, 'steam:110000109d07b07', 'airbag', 0),
(1811, 'steam:110000109d07b07', 'carbon', 0),
(1812, 'steam:110000109d07b07', 'fanta', 0),
(1813, 'steam:110000109d07b07', 'bag', 0),
(1814, 'steam:110000109d07b07', 'xanax', 0),
(1815, 'steam:110000109d07b07', 'camera', 0),
(1816, 'steam:110000109d07b07', 'jus_raisin', 0),
(1817, 'steam:110000109d07b07', 'malbora', 0),
(1818, 'steam:110000109d07b07', 'bolcacahuetes', 0),
(1819, 'steam:110000109d07b07', 'essence', 0),
(1820, 'steam:110000109d07b07', 'burger', 49),
(1821, 'steam:110000109d07b07', 'firstaidkit', 0),
(1822, 'steam:110000109d07b07', 'lighter', 0),
(1823, 'steam:110000109d07b07', 'houblon', 0),
(1824, 'steam:110000109d07b07', 'lokalizator', 0),
(1825, 'steam:110000109d07b07', 'weed_pooch', 0),
(1826, 'steam:110000109d07b07', 'wool', 0),
(1827, 'steam:110000109d07b07', 'lockpick', 0),
(1828, 'steam:110000109d07b07', 'tabacblond', 0),
(1829, 'steam:110000109d07b07', 'weed', 0),
(1830, 'steam:110000109d07b07', 'gazbottle', 0),
(1831, 'steam:110000109d07b07', 'washed_stone', 0),
(1832, 'steam:110000109d07b07', 'highradio', 0),
(1833, 'steam:110000109d07b07', 'energy', 0),
(1834, 'steam:110000109d07b07', 'vine', 0),
(1835, 'steam:110000109d07b07', 'cocacola', 0),
(1836, 'steam:110000109d07b07', 'vodkaenergy', 0),
(1837, 'steam:110000109d07b07', 'martini', 0),
(1838, 'steam:110000109d07b07', 'vodkafruit', 0),
(1839, 'steam:110000109d07b07', 'macka', 0),
(1840, 'steam:110000109d07b07', 'petrol_raffin', 0),
(1841, 'steam:110000109d07b07', 'turtle', 0),
(1842, 'steam:110000109d07b07', 'copper', 0),
(1843, 'steam:110000109d07b07', 'toothpaste', 0),
(1844, 'steam:110000109d07b07', 'ice', 0),
(1845, 'steam:110000109d07b07', 'tabacbrunsec', 0),
(1846, 'steam:110000109d07b07', 'thermite', 0),
(1847, 'steam:110000109d07b07', 'brune', 0),
(1848, 'steam:110000109d07b07', 'fishbait', 0),
(1849, 'steam:110000109d07b07', 'tequila', 0),
(1850, 'steam:110000109d07b07', 'bolchips', 0),
(1851, 'steam:110000109d07b07', 'poubelle', 0),
(1852, 'steam:110000109d07b07', 'tabacblondsec', 0),
(1853, 'steam:110000109d07b07', 'jagercerbere', 0),
(1854, 'steam:110000109d07b07', 'bolpistache', 0),
(1855, 'steam:110000109d07b07', 'fixtool', 0),
(1856, 'steam:110000109d07b07', 'speaker', 0),
(1857, 'steam:110000109d07b07', 'stone', 0),
(1858, 'steam:110000109d07b07', 'coke_pooch', 0),
(1859, 'steam:110000109d07b07', 'clothe', 0),
(1860, 'steam:110000109d07b07', 'ring', 0),
(1861, 'steam:110000109d07b07', 'cigarett', 0),
(1862, 'steam:110000109d07b07', 'silvermedal_run', 0),
(1863, 'steam:110000109d07b07', 'croquettes', 0),
(1864, 'steam:110000109d07b07', 'highrim', 0),
(1865, 'steam:110000109d07b07', 'jumelles', 0),
(1866, 'steam:110000109d07b07', 'sachetketchup', 0),
(1867, 'steam:110000109d07b07', 'saucisson', 0),
(1868, 'steam:110000109d07b07', 'goldmedal_run', 0),
(1869, 'steam:110000109d07b07', 'carotool', 0),
(1870, 'steam:110000109d07b07', 'clip', 0),
(1871, 'steam:110000109d07b07', 'rhumfruit', 0),
(1872, 'steam:110000109d07b07', 'whisky', 0),
(1873, 'steam:110000109d07b07', 'gold', 0),
(1874, 'steam:110000109d07b07', 'oxygen_mask', 0),
(1875, 'steam:110000109d07b07', 'orange', 0),
(1876, 'steam:110000109d07b07', 'rhum', 0),
(1877, 'steam:110000109d07b07', 'battery', 0),
(1878, 'steam:110000109d07b07', 'repartel', 0),
(1879, 'steam:110000109d07b07', 'rhumcoca', 0),
(1880, 'steam:110000109d07b07', 'jewels', 0),
(1881, 'steam:110000109d07b07', 'metreshooter', 0),
(1882, 'steam:110000109d07b07', 'opium', 0),
(1883, 'steam:110000109d07b07', 'opium_pooch', 0),
(1884, 'steam:110000109d07b07', 'net_cracker', 0),
(1885, 'steam:110000109d07b07', 'packaged_chicken', 0),
(1886, 'steam:110000109d07b07', 'raisin', 0),
(1887, 'steam:110000109d07b07', 'hat', 0),
(1888, 'steam:110000109d07b07', 'drill', 0),
(1889, 'steam:110000109d07b07', 'alive_chicken', 0),
(1890, 'steam:110000109d07b07', 'meth_pooch', 0),
(1891, 'steam:110000109d07b07', 'blowtorch', 0),
(1892, 'steam:110000109d07b07', 'cheesebows', 0),
(1893, 'steam:110000109d07b07', 'medikit', 0),
(1894, 'steam:110000109d07b07', 'book', 0),
(1895, 'steam:110000109d07b07', 'loka', 0),
(1896, 'steam:110000109d07b07', 'handcuffs', 0),
(1897, 'steam:11000010db2011a', 'hifi', 0),
(1898, 'steam:11000010db2011a', 'watch', 0),
(1899, 'steam:11000010db2011a', 'silvermedal_run', 0),
(1900, 'steam:11000010db2011a', 'blonde', 0),
(1901, 'steam:11000010db2011a', 'wool', 0),
(1902, 'steam:11000010db2011a', 'coupon', 0),
(1903, 'steam:11000010db2011a', 'fanta', 0),
(1904, 'steam:11000010db2011a', 'petrol_raffin', 0),
(1905, 'steam:11000010db2011a', 'ice', 0),
(1906, 'steam:11000010db2011a', 'jager', 0),
(1907, 'steam:11000010db2011a', 'clothe', 0),
(1908, 'steam:11000010db2011a', 'meth_pooch', 0),
(1909, 'steam:11000010db2011a', 'fixkit', 0),
(1910, 'steam:11000010db2011a', 'burger', 0),
(1911, 'steam:11000010db2011a', 'loka', 0),
(1912, 'steam:11000010db2011a', 'gazbottle', 0),
(1913, 'steam:11000010db2011a', 'bolchips', 0),
(1914, 'steam:11000010db2011a', 'ring', 0),
(1915, 'steam:11000010db2011a', 'opium', 0),
(1916, 'steam:11000010db2011a', 'mixapero', 0),
(1917, 'steam:11000010db2011a', 'packaged_plank', 0),
(1918, 'steam:11000010db2011a', 'petrol', 0),
(1919, 'steam:11000010db2011a', 'pants', 0),
(1920, 'steam:11000010db2011a', 'whiskycoca', 0),
(1921, 'steam:11000010db2011a', 'poubelle', 0),
(1922, 'steam:11000010db2011a', 'c4_bank', 0),
(1923, 'steam:11000010db2011a', 'repartel', 0),
(1924, 'steam:11000010db2011a', 'packaged_chicken', 0),
(1925, 'steam:11000010db2011a', 'highrim', 0),
(1926, 'steam:11000010db2011a', 'sprite', 0),
(1927, 'steam:11000010db2011a', 'brune', 0),
(1928, 'steam:11000010db2011a', 'jewels', 0),
(1929, 'steam:11000010db2011a', 'sachetketchup', 0),
(1930, 'steam:11000010db2011a', 'tabacbrun', 0),
(1931, 'steam:11000010db2011a', 'gold', 0),
(1932, 'steam:11000010db2011a', 'shark', 0),
(1933, 'steam:11000010db2011a', 'cocacola', 0),
(1934, 'steam:11000010db2011a', 'turtle', 0),
(1935, 'steam:11000010db2011a', 'hat', 0),
(1936, 'steam:11000010db2011a', 'battery', 0),
(1937, 'steam:11000010db2011a', 'bolpistache', 0),
(1938, 'steam:11000010db2011a', 'turtlebait', 0),
(1939, 'steam:11000010db2011a', 'phonecassé', 0),
(1940, 'steam:11000010db2011a', 'lokalizator', 0),
(1941, 'steam:11000010db2011a', 'drpepper', 0),
(1942, 'steam:11000010db2011a', 'lockpick', 0),
(1943, 'steam:11000010db2011a', 'bolnoixcajou', 0),
(1944, 'steam:11000010db2011a', 'houblon', 0),
(1945, 'steam:11000010db2011a', 'teqpaf', 0),
(1946, 'steam:11000010db2011a', 'fabric', 0),
(1947, 'steam:11000010db2011a', 'vodkaenergy', 0),
(1948, 'steam:11000010db2011a', 'highradio', 0),
(1949, 'steam:11000010db2011a', 'douille', 0),
(1950, 'steam:11000010db2011a', 'weed', 0),
(1951, 'steam:11000010db2011a', 'malbora', 0),
(1952, 'steam:11000010db2011a', 'cheese', 0),
(1953, 'steam:11000010db2011a', 'bronzemedal_run', 0),
(1954, 'steam:11000010db2011a', 'macka', 0),
(1955, 'steam:11000010db2011a', 'medikit', 0),
(1956, 'steam:11000010db2011a', 'airbag', 0),
(1957, 'steam:11000010db2011a', 'raspberry', 0),
(1958, 'steam:11000010db2011a', 'essence', 0),
(1959, 'steam:11000010db2011a', 'saucisson', 0),
(1960, 'steam:11000010db2011a', 'tequila', 0),
(1961, 'steam:11000010db2011a', 'jumelles', 0),
(1962, 'steam:11000010db2011a', 'coke_pooch', 0),
(1963, 'steam:11000010db2011a', 'copper', 0),
(1964, 'steam:11000010db2011a', 'opium_pooch', 0),
(1965, 'steam:11000010db2011a', 'coke', 0),
(1966, 'steam:11000010db2011a', 'fish', 0),
(1967, 'steam:11000010db2011a', 'caisseketchup', 0),
(1968, 'steam:11000010db2011a', 'bolcacahuetes', 0),
(1969, 'steam:11000010db2011a', 'fishbait', 0),
(1970, 'steam:11000010db2011a', 'bag', 0),
(1971, 'steam:11000010db2011a', 'lighter', 0),
(1972, 'steam:11000010db2011a', 'lowradio', 0),
(1973, 'steam:11000010db2011a', 'wood', 0),
(1974, 'steam:11000010db2011a', 'gitanes', 0),
(1975, 'steam:11000010db2011a', 'net_cracker', 1),
(1976, 'steam:11000010db2011a', 'jus_raisin', 0),
(1977, 'steam:11000010db2011a', 'carokit', 0),
(1978, 'steam:11000010db2011a', 'fixtool', 0),
(1979, 'steam:11000010db2011a', 'energy', 0),
(1980, 'steam:11000010db2011a', 'camera', 0),
(1981, 'steam:11000010db2011a', 'necklace', 0),
(1982, 'steam:11000010db2011a', 'xanax', 0),
(1983, 'steam:11000010db2011a', 'whisky', 0),
(1984, 'steam:11000010db2011a', 'clip', 0),
(1985, 'steam:11000010db2011a', 'pastacarbonara', 0),
(1986, 'steam:11000010db2011a', 'metreshooter', 0),
(1987, 'steam:11000010db2011a', 'water', 0),
(1988, 'steam:11000010db2011a', 'weed_pooch', 0),
(1989, 'steam:11000010db2011a', 'vodkafruit', 0),
(1990, 'steam:11000010db2011a', 'icetea', 0),
(1991, 'steam:11000010db2011a', 'washed_stone', 0),
(1992, 'steam:11000010db2011a', 'rhumcoca', 0),
(1993, 'steam:11000010db2011a', 'thermite', 0),
(1994, 'steam:11000010db2011a', 'vine', 0),
(1995, 'steam:11000010db2011a', 'vodka', 0),
(1996, 'steam:11000010db2011a', 'toothpaste', 0),
(1997, 'steam:11000010db2011a', 'bread', 0),
(1998, 'steam:11000010db2011a', 'tabacblondsec', 0),
(1999, 'steam:11000010db2011a', 'carbon', 0),
(2000, 'steam:11000010db2011a', 'tabacblond', 0),
(2001, 'steam:11000010db2011a', 'tabacbrunsec', 0),
(2002, 'steam:11000010db2011a', 'stockrim', 0),
(2003, 'steam:11000010db2011a', 'oxygen_mask', 0),
(2004, 'steam:11000010db2011a', 'jagercerbere', 0),
(2005, 'steam:11000010db2011a', 'rhum', 0),
(2006, 'steam:11000010db2011a', 'steak', 0),
(2007, 'steam:11000010db2011a', 'soda', 0),
(2008, 'steam:11000010db2011a', 'meth', 0),
(2009, 'steam:11000010db2011a', 'speaker', 0),
(2010, 'steam:11000010db2011a', 'lotteryticket', 0),
(2011, 'steam:11000010db2011a', 'golem', 0),
(2012, 'steam:11000010db2011a', 'shoes', 0),
(2013, 'steam:11000010db2011a', 'saffron', 0),
(2014, 'steam:11000010db2011a', 'acier', 0),
(2015, 'steam:11000010db2011a', 'bandage', 0),
(2016, 'steam:11000010db2011a', 'chips', 0),
(2017, 'steam:11000010db2011a', 'bulletproof', 0),
(2018, 'steam:11000010db2011a', 'alive_chicken', 0),
(2019, 'steam:11000010db2011a', 'shirt', 0),
(2020, 'steam:11000010db2011a', 'slaughtered_chicken', 0),
(2021, 'steam:11000010db2011a', 'limonade', 0),
(2022, 'steam:11000010db2011a', 'stone', 0),
(2023, 'steam:11000010db2011a', 'cheesebows', 0),
(2024, 'steam:11000010db2011a', 'rhumfruit', 0),
(2025, 'steam:11000010db2011a', 'jusfruit', 0),
(2026, 'steam:11000010db2011a', 'schorange', 0),
(2027, 'steam:11000010db2011a', 'poudre', 0),
(2028, 'steam:11000010db2011a', 'handcuffs', 0),
(2029, 'steam:11000010db2011a', 'book', 0),
(2030, 'steam:11000010db2011a', 'raisin', 0),
(2031, 'steam:11000010db2011a', 'cutted_wood', 0),
(2032, 'steam:11000010db2011a', 'goldmedal_run', 0),
(2033, 'steam:11000010db2011a', 'mojito', 0),
(2034, 'steam:11000010db2011a', 'blowtorch', 0),
(2035, 'steam:11000010db2011a', 'carotool', 0),
(2036, 'steam:11000010db2011a', 'grapperaisin', 0),
(2037, 'steam:11000010db2011a', 'pizza', 0),
(2038, 'steam:11000010db2011a', 'grand_cru', 0),
(2039, 'steam:11000010db2011a', 'laptop', 0),
(2040, 'steam:11000010db2011a', 'phone', 0),
(2041, 'steam:11000010db2011a', 'drill', 0),
(2042, 'steam:11000010db2011a', 'fishingrod', 0),
(2043, 'steam:11000010db2011a', 'orange', 0),
(2044, 'steam:11000010db2011a', 'firstaidkit', 0),
(2045, 'steam:11000010db2011a', 'menthe', 0),
(2046, 'steam:11000010db2011a', 'iron', 0),
(2047, 'steam:11000010db2011a', 'blowpipe', 0),
(2048, 'steam:11000010db2011a', 'Marabou Mjölkchoklad', 0),
(2049, 'steam:11000010db2011a', 'jagerbomb', 0),
(2050, 'steam:11000010db2011a', 'croquettes', 0),
(2051, 'steam:11000010db2011a', 'martini', 0),
(2052, 'steam:11000010db2011a', 'diamond', 0),
(2053, 'steam:11000010db2011a', 'cigarett', 0),
(2054, 'steam:11000010db2011a', 'contrat', 0),
(2055, 'steam:1100001337f15e7', 'fishingrod', 0),
(2056, 'steam:1100001337f15e7', 'silvermedal_run', 0),
(2057, 'steam:1100001337f15e7', 'lokalizator', 0),
(2058, 'steam:1100001337f15e7', 'jewels', 0),
(2059, 'steam:1100001337f15e7', 'tequila', 2),
(2060, 'steam:1100001337f15e7', 'iron', 0),
(2061, 'steam:1100001337f15e7', 'fanta', 0),
(2062, 'steam:1100001337f15e7', 'bag', 0),
(2063, 'steam:1100001337f15e7', 'drpepper', 0),
(2064, 'steam:1100001337f15e7', 'rhum', 1),
(2065, 'steam:1100001337f15e7', 'fishbait', 0),
(2066, 'steam:1100001337f15e7', 'bolchips', 0),
(2067, 'steam:1100001337f15e7', 'jusfruit', 0),
(2068, 'steam:1100001337f15e7', 'jagerbomb', 0),
(2069, 'steam:1100001337f15e7', 'whiskycoca', 0),
(2070, 'steam:1100001337f15e7', 'saffron', 0),
(2071, 'steam:1100001337f15e7', 'opium_pooch', 0),
(2072, 'steam:1100001337f15e7', 'cheese', 0),
(2073, 'steam:1100001337f15e7', 'menthe', 0),
(2074, 'steam:1100001337f15e7', 'vodka', 1),
(2075, 'steam:1100001337f15e7', 'vine', 0),
(2076, 'steam:1100001337f15e7', 'firstaidkit', 0),
(2077, 'steam:1100001337f15e7', 'ice', 0),
(2078, 'steam:1100001337f15e7', 'lighter', 0),
(2079, 'steam:1100001337f15e7', 'sprite', 0),
(2080, 'steam:1100001337f15e7', 'repartel', 0),
(2081, 'steam:1100001337f15e7', 'oxygen_mask', 0),
(2082, 'steam:1100001337f15e7', 'fish', 0),
(2083, 'steam:1100001337f15e7', 'essence', 0),
(2084, 'steam:1100001337f15e7', 'camera', 0),
(2085, 'steam:1100001337f15e7', 'thermite', 0),
(2086, 'steam:1100001337f15e7', 'blowtorch', 0),
(2087, 'steam:1100001337f15e7', 'weed', 0),
(2088, 'steam:1100001337f15e7', 'rhumfruit', 0),
(2089, 'steam:1100001337f15e7', 'phonecassé', 0),
(2090, 'steam:1100001337f15e7', 'meth_pooch', 0),
(2091, 'steam:1100001337f15e7', 'brune', 0),
(2092, 'steam:1100001337f15e7', 'macka', 0),
(2093, 'steam:1100001337f15e7', 'opium', 0),
(2094, 'steam:1100001337f15e7', 'fixkit', 0),
(2095, 'steam:1100001337f15e7', 'chips', 0),
(2096, 'steam:1100001337f15e7', 'fabric', 0),
(2097, 'steam:1100001337f15e7', 'watch', 0),
(2098, 'steam:1100001337f15e7', 'cigarett', 0),
(2099, 'steam:1100001337f15e7', 'carotool', 0),
(2100, 'steam:1100001337f15e7', 'lowradio', 0),
(2101, 'steam:1100001337f15e7', 'gitanes', 0),
(2102, 'steam:1100001337f15e7', 'pizza', 0),
(2103, 'steam:1100001337f15e7', 'lockpick', 0),
(2104, 'steam:1100001337f15e7', 'cheesebows', 0),
(2105, 'steam:1100001337f15e7', 'necklace', 0),
(2106, 'steam:1100001337f15e7', 'grapperaisin', 0),
(2107, 'steam:1100001337f15e7', 'mixapero', 0),
(2108, 'steam:1100001337f15e7', 'lotteryticket', 0),
(2109, 'steam:1100001337f15e7', 'saucisson', 0),
(2110, 'steam:1100001337f15e7', 'martini', 1),
(2111, 'steam:1100001337f15e7', 'jus_raisin', 0),
(2112, 'steam:1100001337f15e7', 'wool', 0),
(2113, 'steam:1100001337f15e7', 'stone', 0),
(2114, 'steam:1100001337f15e7', 'limonade', 0),
(2115, 'steam:1100001337f15e7', 'orange', 0),
(2116, 'steam:1100001337f15e7', 'battery', 0),
(2117, 'steam:1100001337f15e7', 'schorange', 0),
(2118, 'steam:1100001337f15e7', 'burger', 0),
(2119, 'steam:1100001337f15e7', 'petrol', 0),
(2120, 'steam:1100001337f15e7', 'hat', 0),
(2121, 'steam:1100001337f15e7', 'alive_chicken', 0),
(2122, 'steam:1100001337f15e7', 'shirt', 0),
(2123, 'steam:1100001337f15e7', 'croquettes', 0),
(2124, 'steam:1100001337f15e7', 'highrim', 0),
(2125, 'steam:1100001337f15e7', 'loka', 0),
(2126, 'steam:1100001337f15e7', 'poubelle', 0),
(2127, 'steam:1100001337f15e7', 'jager', 1),
(2128, 'steam:1100001337f15e7', 'jagercerbere', 0),
(2129, 'steam:1100001337f15e7', 'diamond', 0),
(2130, 'steam:1100001337f15e7', 'tabacblond', 0),
(2131, 'steam:1100001337f15e7', 'handcuffs', 0),
(2132, 'steam:1100001337f15e7', 'meth', 0),
(2133, 'steam:1100001337f15e7', 'book', 0),
(2134, 'steam:1100001337f15e7', 'contrat', 0),
(2135, 'steam:1100001337f15e7', 'toothpaste', 0),
(2136, 'steam:1100001337f15e7', 'goldmedal_run', 0),
(2137, 'steam:1100001337f15e7', 'gazbottle', 0),
(2138, 'steam:1100001337f15e7', 'copper', 0),
(2139, 'steam:1100001337f15e7', 'turtle', 0),
(2140, 'steam:1100001337f15e7', 'sachetketchup', 0),
(2141, 'steam:1100001337f15e7', 'Marabou Mjölkchoklad', 0),
(2142, 'steam:1100001337f15e7', 'phone', 0),
(2143, 'steam:1100001337f15e7', 'golem', 0),
(2144, 'steam:1100001337f15e7', 'bandage', 0),
(2145, 'steam:1100001337f15e7', 'gold', 0),
(2146, 'steam:1100001337f15e7', 'metreshooter', 0),
(2147, 'steam:1100001337f15e7', 'bolnoixcajou', 0),
(2148, 'steam:1100001337f15e7', 'tabacbrunsec', 0),
(2149, 'steam:1100001337f15e7', 'whisky', 1),
(2150, 'steam:1100001337f15e7', 'packaged_plank', 0),
(2151, 'steam:1100001337f15e7', 'acier', 0),
(2152, 'steam:1100001337f15e7', 'bolpistache', 0),
(2153, 'steam:1100001337f15e7', 'water', 0),
(2154, 'steam:1100001337f15e7', 'highradio', 0),
(2155, 'steam:1100001337f15e7', 'tabacbrun', 0),
(2156, 'steam:1100001337f15e7', 'vodkafruit', 0),
(2157, 'steam:1100001337f15e7', 'blonde', 0),
(2158, 'steam:1100001337f15e7', 'vodkaenergy', 0),
(2159, 'steam:1100001337f15e7', 'turtlebait', 0),
(2160, 'steam:1100001337f15e7', 'teqpaf', 0),
(2161, 'steam:1100001337f15e7', 'tabacblondsec', 0),
(2162, 'steam:1100001337f15e7', 'stockrim', 0),
(2163, 'steam:1100001337f15e7', 'shoes', 0),
(2164, 'steam:1100001337f15e7', 'soda', 0),
(2165, 'steam:1100001337f15e7', 'steak', 0),
(2166, 'steam:1100001337f15e7', 'c4_bank', 0),
(2167, 'steam:1100001337f15e7', 'bread', 0),
(2168, 'steam:1100001337f15e7', 'medikit', 0),
(2169, 'steam:1100001337f15e7', 'shark', 0),
(2170, 'steam:1100001337f15e7', 'clip', 0),
(2171, 'steam:1100001337f15e7', 'airbag', 0),
(2172, 'steam:1100001337f15e7', 'slaughtered_chicken', 0),
(2173, 'steam:1100001337f15e7', 'malbora', 0),
(2174, 'steam:1100001337f15e7', 'weed_pooch', 0),
(2175, 'steam:1100001337f15e7', 'rhumcoca', 0),
(2176, 'steam:1100001337f15e7', 'ring', 0),
(2177, 'steam:1100001337f15e7', 'jumelles', 0),
(2178, 'steam:1100001337f15e7', 'blowpipe', 0),
(2179, 'steam:1100001337f15e7', 'fixtool', 0),
(2180, 'steam:1100001337f15e7', 'coupon', 0),
(2181, 'steam:1100001337f15e7', 'raspberry', 0),
(2182, 'steam:1100001337f15e7', 'cocacola', 0),
(2183, 'steam:1100001337f15e7', 'washed_stone', 0),
(2184, 'steam:1100001337f15e7', 'mojito', 0),
(2185, 'steam:1100001337f15e7', 'petrol_raffin', 0),
(2186, 'steam:1100001337f15e7', 'drill', 0),
(2187, 'steam:1100001337f15e7', 'bronzemedal_run', 0),
(2188, 'steam:1100001337f15e7', 'cutted_wood', 0),
(2189, 'steam:1100001337f15e7', 'carokit', 0),
(2190, 'steam:1100001337f15e7', 'hifi', 0),
(2191, 'steam:1100001337f15e7', 'pastacarbonara', 0),
(2192, 'steam:1100001337f15e7', 'bolcacahuetes', 0),
(2193, 'steam:1100001337f15e7', 'xanax', 0),
(2194, 'steam:1100001337f15e7', 'pants', 0),
(2195, 'steam:1100001337f15e7', 'laptop', 0),
(2196, 'steam:1100001337f15e7', 'energy', 0),
(2197, 'steam:1100001337f15e7', 'raisin', 0),
(2198, 'steam:1100001337f15e7', 'grand_cru', 0),
(2199, 'steam:1100001337f15e7', 'coke_pooch', 0),
(2200, 'steam:1100001337f15e7', 'carbon', 0),
(2201, 'steam:1100001337f15e7', 'douille', 0),
(2202, 'steam:1100001337f15e7', 'coke', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(2203, 'steam:1100001337f15e7', 'poudre', 0),
(2204, 'steam:1100001337f15e7', 'packaged_chicken', 0),
(2205, 'steam:1100001337f15e7', 'icetea', 0),
(2206, 'steam:1100001337f15e7', 'net_cracker', 0),
(2207, 'steam:1100001337f15e7', 'wood', 0),
(2208, 'steam:1100001337f15e7', 'clothe', 0),
(2209, 'steam:1100001337f15e7', 'speaker', 0),
(2210, 'steam:1100001337f15e7', 'houblon', 0),
(2211, 'steam:1100001337f15e7', 'bulletproof', 0),
(2212, 'steam:1100001337f15e7', 'caisseketchup', 0),
(2213, 'steam:1100001342ad7df', 'loka', 0),
(2214, 'steam:1100001342ad7df', 'rhum', 0),
(2215, 'steam:1100001342ad7df', 'macka', 0),
(2216, 'steam:1100001342ad7df', 'saffron', 0),
(2217, 'steam:1100001342ad7df', 'coupon', 0),
(2218, 'steam:1100001342ad7df', 'coke_pooch', 0),
(2219, 'steam:1100001342ad7df', 'xanax', 0),
(2220, 'steam:1100001342ad7df', 'clip', 3),
(2221, 'steam:1100001342ad7df', 'cutted_wood', 0),
(2222, 'steam:1100001342ad7df', 'vine', 0),
(2223, 'steam:1100001342ad7df', 'contrat', 0),
(2224, 'steam:1100001342ad7df', 'oxygen_mask', 0),
(2225, 'steam:1100001342ad7df', 'iron', 0),
(2226, 'steam:1100001342ad7df', 'copper', 0),
(2227, 'steam:1100001342ad7df', 'fishingrod', 0),
(2228, 'steam:1100001342ad7df', 'shoes', 0),
(2229, 'steam:1100001342ad7df', 'fishbait', 0),
(2230, 'steam:1100001342ad7df', 'bandage', 0),
(2231, 'steam:1100001342ad7df', 'hat', 0),
(2232, 'steam:1100001342ad7df', 'firstaidkit', 0),
(2233, 'steam:1100001342ad7df', 'mojito', 0),
(2234, 'steam:1100001342ad7df', 'bulletproof', 0),
(2235, 'steam:1100001342ad7df', 'drill', 0),
(2236, 'steam:1100001342ad7df', 'houblon', 0),
(2237, 'steam:1100001342ad7df', 'steak', 0),
(2238, 'steam:1100001342ad7df', 'stockrim', 0),
(2239, 'steam:1100001342ad7df', 'essence', 0),
(2240, 'steam:1100001342ad7df', 'saucisson', 0),
(2241, 'steam:1100001342ad7df', 'water', 0),
(2242, 'steam:1100001342ad7df', 'lockpick', 0),
(2243, 'steam:1100001342ad7df', 'meth_pooch', 0),
(2244, 'steam:1100001342ad7df', 'tabacblond', 0),
(2245, 'steam:1100001342ad7df', 'opium_pooch', 0),
(2246, 'steam:1100001342ad7df', 'toothpaste', 0),
(2247, 'steam:1100001342ad7df', 'malbora', 0),
(2248, 'steam:1100001342ad7df', 'jumelles', 0),
(2249, 'steam:1100001342ad7df', 'meth', 0),
(2250, 'steam:1100001342ad7df', 'fixtool', 0),
(2251, 'steam:1100001342ad7df', 'whiskycoca', 0),
(2252, 'steam:1100001342ad7df', 'gazbottle', 0),
(2253, 'steam:1100001342ad7df', 'carbon', 0),
(2254, 'steam:1100001342ad7df', 'raisin', 0),
(2255, 'steam:1100001342ad7df', 'vodkafruit', 0),
(2256, 'steam:1100001342ad7df', 'pants', 0),
(2257, 'steam:1100001342ad7df', 'diamond', 0),
(2258, 'steam:1100001342ad7df', 'fish', 0),
(2259, 'steam:1100001342ad7df', 'silvermedal_run', 0),
(2260, 'steam:1100001342ad7df', 'alive_chicken', 0),
(2261, 'steam:1100001342ad7df', 'grapperaisin', 0),
(2262, 'steam:1100001342ad7df', 'petrol_raffin', 0),
(2263, 'steam:1100001342ad7df', 'packaged_chicken', 0),
(2264, 'steam:1100001342ad7df', 'watch', 0),
(2265, 'steam:1100001342ad7df', 'cocacola', 0),
(2266, 'steam:1100001342ad7df', 'cigarett', 0),
(2267, 'steam:1100001342ad7df', 'brune', 0),
(2268, 'steam:1100001342ad7df', 'acier', 0),
(2269, 'steam:1100001342ad7df', 'jewels', 0),
(2270, 'steam:1100001342ad7df', 'phone', 1),
(2271, 'steam:1100001342ad7df', 'caisseketchup', 0),
(2272, 'steam:1100001342ad7df', 'golem', 0),
(2273, 'steam:1100001342ad7df', 'stone', 0),
(2274, 'steam:1100001342ad7df', 'jusfruit', 0),
(2275, 'steam:1100001342ad7df', 'blowpipe', 0),
(2276, 'steam:1100001342ad7df', 'slaughtered_chicken', 0),
(2277, 'steam:1100001342ad7df', 'bronzemedal_run', 0),
(2278, 'steam:1100001342ad7df', 'goldmedal_run', 0),
(2279, 'steam:1100001342ad7df', 'handcuffs', 0),
(2280, 'steam:1100001342ad7df', 'highrim', 0),
(2281, 'steam:1100001342ad7df', 'bread', 0),
(2282, 'steam:1100001342ad7df', 'opium', 0),
(2283, 'steam:1100001342ad7df', 'bolpistache', 0),
(2284, 'steam:1100001342ad7df', 'bolcacahuetes', 0),
(2285, 'steam:1100001342ad7df', 'lighter', 0),
(2286, 'steam:1100001342ad7df', 'book', 0),
(2287, 'steam:1100001342ad7df', 'battery', 0),
(2288, 'steam:1100001342ad7df', 'chips', 0),
(2289, 'steam:1100001342ad7df', 'jagercerbere', 0),
(2290, 'steam:1100001342ad7df', 'limonade', 0),
(2291, 'steam:1100001342ad7df', 'wool', 0),
(2292, 'steam:1100001342ad7df', 'Marabou Mjölkchoklad', 0),
(2293, 'steam:1100001342ad7df', 'whisky', 0),
(2294, 'steam:1100001342ad7df', 'pizza', 0),
(2295, 'steam:1100001342ad7df', 'pastacarbonara', 0),
(2296, 'steam:1100001342ad7df', 'gitanes', 0),
(2297, 'steam:1100001342ad7df', 'weed', 0),
(2298, 'steam:1100001342ad7df', 'metreshooter', 0),
(2299, 'steam:1100001342ad7df', 'lotteryticket', 0),
(2300, 'steam:1100001342ad7df', 'fabric', 0),
(2301, 'steam:1100001342ad7df', 'washed_stone', 0),
(2302, 'steam:1100001342ad7df', 'orange', 0),
(2303, 'steam:1100001342ad7df', 'blowtorch', 0),
(2304, 'steam:1100001342ad7df', 'cheese', 0),
(2305, 'steam:1100001342ad7df', 'cheesebows', 0),
(2306, 'steam:1100001342ad7df', 'jagerbomb', 0),
(2307, 'steam:1100001342ad7df', 'vodka', 0),
(2308, 'steam:1100001342ad7df', 'tequila', 0),
(2309, 'steam:1100001342ad7df', 'thermite', 0),
(2310, 'steam:1100001342ad7df', 'turtle', 0),
(2311, 'steam:1100001342ad7df', 'camera', 0),
(2312, 'steam:1100001342ad7df', 'teqpaf', 0),
(2313, 'steam:1100001342ad7df', 'tabacbrunsec', 0),
(2314, 'steam:1100001342ad7df', 'fixkit', 0),
(2315, 'steam:1100001342ad7df', 'coke', 0),
(2316, 'steam:1100001342ad7df', 'tabacbrun', 0),
(2317, 'steam:1100001342ad7df', 'poudre', 0),
(2318, 'steam:1100001342ad7df', 'soda', 0),
(2319, 'steam:1100001342ad7df', 'carokit', 0),
(2320, 'steam:1100001342ad7df', 'phonecassé', 0),
(2321, 'steam:1100001342ad7df', 'sprite', 0),
(2322, 'steam:1100001342ad7df', 'speaker', 0),
(2323, 'steam:1100001342ad7df', 'repartel', 0),
(2324, 'steam:1100001342ad7df', 'turtlebait', 0),
(2325, 'steam:1100001342ad7df', 'fanta', 0),
(2326, 'steam:1100001342ad7df', 'shirt', 0),
(2327, 'steam:1100001342ad7df', 'energy', 0),
(2328, 'steam:1100001342ad7df', 'schorange', 0),
(2329, 'steam:1100001342ad7df', 'drpepper', 0),
(2330, 'steam:1100001342ad7df', 'shark', 0),
(2331, 'steam:1100001342ad7df', 'icetea', 0),
(2332, 'steam:1100001342ad7df', 'douille', 0),
(2333, 'steam:1100001342ad7df', 'jager', 0),
(2334, 'steam:1100001342ad7df', 'carotool', 0),
(2335, 'steam:1100001342ad7df', 'sachetketchup', 0),
(2336, 'steam:1100001342ad7df', 'ring', 0),
(2337, 'steam:1100001342ad7df', 'gold', 0),
(2338, 'steam:1100001342ad7df', 'airbag', 0),
(2339, 'steam:1100001342ad7df', 'rhumfruit', 0),
(2340, 'steam:1100001342ad7df', 'rhumcoca', 0),
(2341, 'steam:1100001342ad7df', 'c4_bank', 0),
(2342, 'steam:1100001342ad7df', 'raspberry', 0),
(2343, 'steam:1100001342ad7df', 'blonde', 0),
(2344, 'steam:1100001342ad7df', 'tabacblondsec', 0),
(2345, 'steam:1100001342ad7df', 'burger', 0),
(2346, 'steam:1100001342ad7df', 'medikit', -1),
(2347, 'steam:1100001342ad7df', 'lowradio', 0),
(2348, 'steam:1100001342ad7df', 'bolchips', 0),
(2349, 'steam:1100001342ad7df', 'poubelle', 0),
(2350, 'steam:1100001342ad7df', 'bag', 0),
(2351, 'steam:1100001342ad7df', 'ice', 0),
(2352, 'steam:1100001342ad7df', 'weed_pooch', 0),
(2353, 'steam:1100001342ad7df', 'grand_cru', 0),
(2354, 'steam:1100001342ad7df', 'wood', 0),
(2355, 'steam:1100001342ad7df', 'croquettes', 0),
(2356, 'steam:1100001342ad7df', 'clothe', 0),
(2357, 'steam:1100001342ad7df', 'highradio', 0),
(2358, 'steam:1100001342ad7df', 'lokalizator', 0),
(2359, 'steam:1100001342ad7df', 'petrol', 0),
(2360, 'steam:1100001342ad7df', 'hifi', 0),
(2361, 'steam:1100001342ad7df', 'necklace', 0),
(2362, 'steam:1100001342ad7df', 'packaged_plank', 0),
(2363, 'steam:1100001342ad7df', 'martini', 0),
(2364, 'steam:1100001342ad7df', 'mixapero', 0),
(2365, 'steam:1100001342ad7df', 'menthe', 0),
(2366, 'steam:1100001342ad7df', 'net_cracker', 0),
(2367, 'steam:1100001342ad7df', 'vodkaenergy', 0),
(2368, 'steam:1100001342ad7df', 'jus_raisin', 0),
(2369, 'steam:1100001342ad7df', 'bolnoixcajou', 0),
(2370, 'steam:1100001342ad7df', 'laptop', 0),
(2371, 'steam:1100001120b6603', 'plantpot', 0),
(2372, 'steam:1100001120b6603', 'highgradefert', 0),
(2373, 'steam:1100001120b6603', 'dopebag', 0),
(2374, 'steam:1100001120b6603', 'highgradefemaleseed', 0),
(2375, 'steam:1100001120b6603', 'purifiedwater', 0),
(2376, 'steam:1100001120b6603', 'bagofdope', 5),
(2377, 'steam:1100001120b6603', 'wateringcan', 0),
(2378, 'steam:1100001120b6603', 'trimmedweed', 0),
(2379, 'steam:1100001120b6603', 'lowgradefert', 0),
(2380, 'steam:1100001120b6603', 'lowgradefemaleseed', 0),
(2381, 'steam:1100001120b6603', 'lowgrademaleseed', 0),
(2382, 'steam:1100001120b6603', 'drugscales', 0),
(2383, 'steam:1100001120b6603', 'highgrademaleseed', 0),
(2384, 'steam:11000010e736395', 'dopebag', 0),
(2385, 'steam:11000010e736395', 'highgradefemaleseed', 0),
(2386, 'steam:11000010e736395', 'purifiedwater', 0),
(2387, 'steam:11000010e736395', 'highgradefert', 0),
(2388, 'steam:11000010e736395', 'plantpot', 0),
(2389, 'steam:11000010e736395', 'trimmedweed', 0),
(2390, 'steam:11000010e736395', 'bagofdope', 0),
(2391, 'steam:11000010e736395', 'lowgradefemaleseed', 0),
(2392, 'steam:11000010e736395', 'lowgradefert', 0),
(2393, 'steam:11000010e736395', 'wateringcan', 0),
(2394, 'steam:11000010e736395', 'lowgrademaleseed', 0),
(2395, 'steam:11000010e736395', 'highgrademaleseed', 0),
(2396, 'steam:11000010e736395', 'drugscales', 0),
(2397, 'steam:11000011439c22a', 'highgradefemaleseed', 0),
(2398, 'steam:11000011439c22a', 'dopebag', 0),
(2399, 'steam:11000011439c22a', 'purifiedwater', 0),
(2400, 'steam:11000011439c22a', 'plantpot', 0),
(2401, 'steam:11000011439c22a', 'highgradefert', 0),
(2402, 'steam:11000011439c22a', 'bagofdope', 0),
(2403, 'steam:11000011439c22a', 'trimmedweed', 0),
(2404, 'steam:11000011439c22a', 'wateringcan', 0),
(2405, 'steam:11000011439c22a', 'lowgradefemaleseed', 0),
(2406, 'steam:11000011439c22a', 'lowgradefert', 0),
(2407, 'steam:11000011439c22a', 'highgrademaleseed', 0),
(2408, 'steam:11000011439c22a', 'drugscales', 0),
(2409, 'steam:11000011439c22a', 'lowgrademaleseed', 0),
(2410, 'steam:11000011bbbfe53', 'trimmedweed', 0),
(2411, 'steam:11000011bbbfe53', 'purifiedwater', 0),
(2412, 'steam:11000011bbbfe53', 'plantpot', 0),
(2413, 'steam:11000011bbbfe53', 'highgradefemaleseed', 0),
(2414, 'steam:11000011bbbfe53', 'lowgrademaleseed', 0),
(2415, 'steam:11000011bbbfe53', 'wateringcan', 0),
(2416, 'steam:11000011bbbfe53', 'lowgradefert', 0),
(2417, 'steam:11000011bbbfe53', 'bagofdope', 0),
(2418, 'steam:11000011bbbfe53', 'highgradefert', 0),
(2419, 'steam:11000011bbbfe53', 'dopebag', 0),
(2420, 'steam:11000011bbbfe53', 'drugscales', 0),
(2421, 'steam:11000011bbbfe53', 'lowgradefemaleseed', 0),
(2422, 'steam:11000011bbbfe53', 'highgrademaleseed', 0),
(2423, 'steam:110000109d07b07', 'wateringcan', 0),
(2424, 'steam:110000109d07b07', 'lowgrademaleseed', 0),
(2425, 'steam:110000109d07b07', 'drugscales', 0),
(2426, 'steam:110000109d07b07', 'lowgradefert', 0),
(2427, 'steam:110000109d07b07', 'highgrademaleseed', 0),
(2428, 'steam:110000109d07b07', 'bagofdope', 0),
(2429, 'steam:110000109d07b07', 'trimmedweed', 0),
(2430, 'steam:110000109d07b07', 'highgradefemaleseed', 0),
(2431, 'steam:110000109d07b07', 'dopebag', 0),
(2432, 'steam:110000109d07b07', 'lowgradefemaleseed', 0),
(2433, 'steam:110000109d07b07', 'highgradefert', 0),
(2434, 'steam:110000109d07b07', 'purifiedwater', 0),
(2435, 'steam:110000109d07b07', 'plantpot', 0),
(2436, 'steam:11000011292a445', 'lowgrademaleseed', 0),
(2437, 'steam:11000011292a445', 'highgradefemaleseed', 0),
(2438, 'steam:11000011292a445', 'drugscales', 0),
(2439, 'steam:11000011292a445', 'highgrademaleseed', 0),
(2440, 'steam:11000011292a445', 'trimmedweed', 0),
(2441, 'steam:11000011292a445', 'lowgradefert', 0),
(2442, 'steam:11000011292a445', 'purifiedwater', 0),
(2443, 'steam:11000011292a445', 'wateringcan', 0),
(2444, 'steam:11000011292a445', 'dopebag', 0),
(2445, 'steam:11000011292a445', 'lowgradefemaleseed', 0),
(2446, 'steam:11000011292a445', 'bagofdope', 0),
(2447, 'steam:11000011292a445', 'plantpot', 0),
(2448, 'steam:11000011292a445', 'highgradefert', 0),
(2449, 'steam:11000013e699150', 'plantpot', 0),
(2450, 'steam:11000013e699150', 'wateringcan', 0),
(2451, 'steam:11000013e699150', 'bagofdope', 0),
(2452, 'steam:11000013e699150', 'trimmedweed', 0),
(2453, 'steam:11000013e699150', 'lowgradefert', 0),
(2454, 'steam:11000013e699150', 'drugscales', 0),
(2455, 'steam:11000013e699150', 'lowgrademaleseed', 0),
(2456, 'steam:11000013e699150', 'highgrademaleseed', 0),
(2457, 'steam:11000013e699150', 'dopebag', 0),
(2458, 'steam:11000013e699150', 'purifiedwater', 0),
(2459, 'steam:11000013e699150', 'highgradefemaleseed', 0),
(2460, 'steam:11000013e699150', 'lowgradefemaleseed', 0),
(2461, 'steam:11000013e699150', 'highgradefert', 0),
(2462, 'steam:1100001342ad7df', 'wateringcan', 0),
(2463, 'steam:1100001342ad7df', 'lowgradefemaleseed', 0),
(2464, 'steam:1100001342ad7df', 'plantpot', 0),
(2465, 'steam:1100001342ad7df', 'highgrademaleseed', 0),
(2466, 'steam:1100001342ad7df', 'highgradefert', 0),
(2467, 'steam:1100001342ad7df', 'drugscales', 0),
(2468, 'steam:1100001342ad7df', 'dopebag', 0),
(2469, 'steam:1100001342ad7df', 'trimmedweed', 0),
(2470, 'steam:1100001342ad7df', 'highgradefemaleseed', 0),
(2471, 'steam:1100001342ad7df', 'lowgradefert', 0),
(2472, 'steam:1100001342ad7df', 'purifiedwater', 0),
(2473, 'steam:1100001342ad7df', 'lowgrademaleseed', 0),
(2474, 'steam:1100001342ad7df', 'bagofdope', 0),
(2475, 'steam:1100001120b6603', 'meth_packaged', 0),
(2476, 'steam:1100001120b6603', 'cocaine_cut', 0),
(2477, 'steam:1100001120b6603', 'weed_untrimmed', 0),
(2478, 'steam:1100001120b6603', 'cut_money', 0),
(2479, 'steam:1100001120b6603', 'weed_packaged', 0),
(2480, 'steam:1100001120b6603', 'meth_raw', 0),
(2481, 'steam:1100001120b6603', 'sorted_money', 0),
(2482, 'steam:1100001120b6603', 'cocaine_uncut', 0),
(2483, 'steam:1100001120b6603', 'cocaine_packaged', 0),
(2484, 'steam:11000010e736395', 'cut_money', 0),
(2485, 'steam:11000010e736395', 'weed_untrimmed', 0),
(2486, 'steam:11000010e736395', 'sorted_money', 0),
(2487, 'steam:11000010e736395', 'cocaine_packaged', 0),
(2488, 'steam:11000010e736395', 'meth_raw', 0),
(2489, 'steam:11000010e736395', 'weed_packaged', 0),
(2490, 'steam:11000010e736395', 'cocaine_cut', 0),
(2491, 'steam:11000010e736395', 'meth_packaged', 0),
(2492, 'steam:11000010e736395', 'cocaine_uncut', 0),
(2493, 'steam:110000134884e5b', 'cocaine_packaged', 0),
(2494, 'steam:110000134884e5b', 'cut_money', 0),
(2495, 'steam:110000134884e5b', 'cocaine_cut', 0),
(2496, 'steam:110000134884e5b', 'highgradefemaleseed', 0),
(2497, 'steam:110000134884e5b', 'highgradefert', 0),
(2498, 'steam:110000134884e5b', 'lowgradefert', 0),
(2499, 'steam:110000134884e5b', 'highgrademaleseed', 0),
(2500, 'steam:110000134884e5b', 'bagofdope', 0),
(2501, 'steam:110000134884e5b', 'purifiedwater', 0),
(2502, 'steam:110000134884e5b', 'dopebag', 0),
(2503, 'steam:110000134884e5b', 'meth_packaged', 0),
(2504, 'steam:110000134884e5b', 'weed_packaged', 0),
(2505, 'steam:110000134884e5b', 'lowgrademaleseed', 0),
(2506, 'steam:110000134884e5b', 'wateringcan', 0),
(2507, 'steam:110000134884e5b', 'weed_untrimmed', 0),
(2508, 'steam:110000134884e5b', 'plantpot', 0),
(2509, 'steam:110000134884e5b', 'lowgradefemaleseed', 0),
(2510, 'steam:110000134884e5b', 'meth_raw', 0),
(2511, 'steam:110000134884e5b', 'trimmedweed', 0),
(2512, 'steam:110000134884e5b', 'sorted_money', 0),
(2513, 'steam:110000134884e5b', 'drugscales', 0),
(2514, 'steam:110000134884e5b', 'cocaine_uncut', 0),
(2515, 'steam:110000109d07b07', 'weed_untrimmed', 0),
(2516, 'steam:110000109d07b07', 'cut_money', 0),
(2517, 'steam:110000109d07b07', 'meth_packaged', 0),
(2518, 'steam:110000109d07b07', 'cocaine_cut', 0),
(2519, 'steam:110000109d07b07', 'weed_packaged', 0),
(2520, 'steam:110000109d07b07', 'sorted_money', 0),
(2521, 'steam:110000109d07b07', 'cocaine_uncut', 0),
(2522, 'steam:110000109d07b07', 'cocaine_packaged', 0),
(2523, 'steam:110000109d07b07', 'meth_raw', 0),
(2524, 'steam:11000013e699150', 'sorted_money', 0),
(2525, 'steam:11000013e699150', 'meth_packaged', 0),
(2526, 'steam:11000013e699150', 'weed_packaged', 0),
(2527, 'steam:11000013e699150', 'cocaine_packaged', 0),
(2528, 'steam:11000013e699150', 'weed_untrimmed', 0),
(2529, 'steam:11000013e699150', 'cocaine_uncut', 0),
(2530, 'steam:11000013e699150', 'meth_raw', 0),
(2531, 'steam:11000013e699150', 'cut_money', 0),
(2532, 'steam:11000013e699150', 'cocaine_cut', 0),
(2533, 'steam:110000136a37225', 'washed_stone', 0),
(2534, 'steam:110000136a37225', 'vodkafruit', 0),
(2535, 'steam:110000136a37225', 'tabacbrunsec', 0),
(2536, 'steam:110000136a37225', 'lowradio', 0),
(2537, 'steam:110000136a37225', 'fixtool', 0),
(2538, 'steam:110000136a37225', 'cheese', 0),
(2539, 'steam:110000136a37225', 'limonade', 0),
(2540, 'steam:110000136a37225', 'schorange', 0),
(2541, 'steam:110000136a37225', 'coke', 0),
(2542, 'steam:110000136a37225', 'teqpaf', 0),
(2543, 'steam:110000136a37225', 'mixapero', 0),
(2544, 'steam:110000136a37225', 'croquettes', 0),
(2545, 'steam:110000136a37225', 'energy', 0),
(2546, 'steam:110000136a37225', 'steak', 0),
(2547, 'steam:110000136a37225', 'bread', 0),
(2548, 'steam:110000136a37225', 'weed_untrimmed', 0),
(2549, 'steam:110000136a37225', 'tabacbrun', 0),
(2550, 'steam:110000136a37225', 'necklace', 0),
(2551, 'steam:110000136a37225', 'caisseketchup', 0),
(2552, 'steam:110000136a37225', 'phone', 0),
(2553, 'steam:110000136a37225', 'fishingrod', 0),
(2554, 'steam:110000136a37225', 'highgrademaleseed', 0),
(2555, 'steam:110000136a37225', 'cocacola', 0),
(2556, 'steam:110000136a37225', 'contrat', 0),
(2557, 'steam:110000136a37225', 'poubelle', 0),
(2558, 'steam:110000136a37225', 'thermite', 0),
(2559, 'steam:110000136a37225', 'cut_money', 0),
(2560, 'steam:110000136a37225', 'jagerbomb', 0),
(2561, 'steam:110000136a37225', 'net_cracker', 0),
(2562, 'steam:110000136a37225', 'fanta', 0),
(2563, 'steam:110000136a37225', 'grand_cru', 0),
(2564, 'steam:110000136a37225', 'gazbottle', 0),
(2565, 'steam:110000136a37225', 'petrol_raffin', 0),
(2566, 'steam:110000136a37225', 'cheesebows', 0),
(2567, 'steam:110000136a37225', 'saucisson', 0),
(2568, 'steam:110000136a37225', 'battery', 0),
(2569, 'steam:110000136a37225', 'golem', 0),
(2570, 'steam:110000136a37225', 'c4_bank', 0),
(2571, 'steam:110000136a37225', 'gitanes', 0),
(2572, 'steam:110000136a37225', 'jagercerbere', 0),
(2573, 'steam:110000136a37225', 'chips', 0),
(2574, 'steam:110000136a37225', 'repartel', 0),
(2575, 'steam:110000136a37225', 'bandage', 0),
(2576, 'steam:110000136a37225', 'loka', 0),
(2577, 'steam:110000136a37225', 'Marabou Mjölkchoklad', 0),
(2578, 'steam:110000136a37225', 'lokalizator', 0),
(2579, 'steam:110000136a37225', 'bolcacahuetes', 0),
(2580, 'steam:110000136a37225', 'drugscales', 0),
(2581, 'steam:110000136a37225', 'lowgrademaleseed', 0),
(2582, 'steam:110000136a37225', 'highrim', 0),
(2583, 'steam:110000136a37225', 'turtle', 0),
(2584, 'steam:110000136a37225', 'carbon', 0),
(2585, 'steam:110000136a37225', 'brune', 0),
(2586, 'steam:110000136a37225', 'coke_pooch', 0),
(2587, 'steam:110000136a37225', 'weed_pooch', 0),
(2588, 'steam:110000136a37225', 'essence', 0),
(2589, 'steam:110000136a37225', 'raisin', 0),
(2590, 'steam:110000136a37225', 'slaughtered_chicken', 0),
(2591, 'steam:110000136a37225', 'wool', 0),
(2592, 'steam:110000136a37225', 'grapperaisin', 0),
(2593, 'steam:110000136a37225', 'drpepper', 0),
(2594, 'steam:110000136a37225', 'jumelles', 0),
(2595, 'steam:110000136a37225', 'jus_raisin', 0),
(2596, 'steam:110000136a37225', 'menthe', 0),
(2597, 'steam:110000136a37225', 'clothe', 0),
(2598, 'steam:110000136a37225', 'lotteryticket', 0),
(2599, 'steam:110000136a37225', 'bolpistache', 0),
(2600, 'steam:110000136a37225', 'ring', 0),
(2601, 'steam:110000136a37225', 'bag', 0),
(2602, 'steam:110000136a37225', 'highgradefert', 0),
(2603, 'steam:110000136a37225', 'rhumcoca', 0),
(2604, 'steam:110000136a37225', 'gold', 0),
(2605, 'steam:110000136a37225', 'malbora', 0),
(2606, 'steam:110000136a37225', 'lowgradefemaleseed', 0),
(2607, 'steam:110000136a37225', 'blowpipe', 0),
(2608, 'steam:110000136a37225', 'tabacblondsec', 0),
(2609, 'steam:110000136a37225', 'watch', 0),
(2610, 'steam:110000136a37225', 'ice', 0),
(2611, 'steam:110000136a37225', 'camera', 0),
(2612, 'steam:110000136a37225', 'meth', 0),
(2613, 'steam:110000136a37225', 'highradio', 0),
(2614, 'steam:110000136a37225', 'turtlebait', 0),
(2615, 'steam:110000136a37225', 'metreshooter', 0),
(2616, 'steam:110000136a37225', 'fabric', 0),
(2617, 'steam:110000136a37225', 'coupon', 0),
(2618, 'steam:110000136a37225', 'bulletproof', 0),
(2619, 'steam:110000136a37225', 'burger', 0),
(2620, 'steam:110000136a37225', 'airbag', 0),
(2621, 'steam:110000136a37225', 'bagofdope', 0),
(2622, 'steam:110000136a37225', 'lighter', 0),
(2623, 'steam:110000136a37225', 'vine', 0),
(2624, 'steam:110000136a37225', 'whiskycoca', 0),
(2625, 'steam:110000136a37225', 'packaged_plank', 0),
(2626, 'steam:110000136a37225', 'meth_raw', 0),
(2627, 'steam:110000136a37225', 'clip', 0),
(2628, 'steam:110000136a37225', 'acier', 0),
(2629, 'steam:110000136a37225', 'weed', 0),
(2630, 'steam:110000136a37225', 'medikit', 0),
(2631, 'steam:110000136a37225', 'weed_packaged', 0),
(2632, 'steam:110000136a37225', 'carokit', 0),
(2633, 'steam:110000136a37225', 'water', 0),
(2634, 'steam:110000136a37225', 'vodkaenergy', 0),
(2635, 'steam:110000136a37225', 'wateringcan', 0),
(2636, 'steam:110000136a37225', 'lowgradefert', 0),
(2637, 'steam:110000136a37225', 'cocaine_uncut', 0),
(2638, 'steam:110000136a37225', 'trimmedweed', 0),
(2639, 'steam:110000136a37225', 'wood', 0),
(2640, 'steam:110000136a37225', 'oxygen_mask', 0),
(2641, 'steam:110000136a37225', 'shirt', 0),
(2642, 'steam:110000136a37225', 'bolnoixcajou', 0),
(2643, 'steam:110000136a37225', 'bolchips', 0),
(2644, 'steam:110000136a37225', 'carotool', 0),
(2645, 'steam:110000136a37225', 'tequila', 0),
(2646, 'steam:110000136a37225', 'douille', 0),
(2647, 'steam:110000136a37225', 'toothpaste', 0),
(2648, 'steam:110000136a37225', 'stockrim', 0),
(2649, 'steam:110000136a37225', 'diamond', 0),
(2650, 'steam:110000136a37225', 'stone', 0),
(2651, 'steam:110000136a37225', 'sprite', 0),
(2652, 'steam:110000136a37225', 'cigarett', 0),
(2653, 'steam:110000136a37225', 'goldmedal_run', 0),
(2654, 'steam:110000136a37225', 'shoes', 0),
(2655, 'steam:110000136a37225', 'packaged_chicken', 0),
(2656, 'steam:110000136a37225', 'sorted_money', 0),
(2657, 'steam:110000136a37225', 'icetea', 0),
(2658, 'steam:110000136a37225', 'martini', 0),
(2659, 'steam:110000136a37225', 'fixkit', 0),
(2660, 'steam:110000136a37225', 'shark', 0),
(2661, 'steam:110000136a37225', 'silvermedal_run', 0),
(2662, 'steam:110000136a37225', 'drill', 0),
(2663, 'steam:110000136a37225', 'rhumfruit', 0),
(2664, 'steam:110000136a37225', 'jager', 0),
(2665, 'steam:110000136a37225', 'saffron', 0),
(2666, 'steam:110000136a37225', 'dopebag', 0),
(2667, 'steam:110000136a37225', 'sachetketchup', 0),
(2668, 'steam:110000136a37225', 'iron', 0),
(2669, 'steam:110000136a37225', 'pastacarbonara', 0),
(2670, 'steam:110000136a37225', 'raspberry', 0),
(2671, 'steam:110000136a37225', 'rhum', 0),
(2672, 'steam:110000136a37225', 'petrol', 0),
(2673, 'steam:110000136a37225', 'book', 0),
(2674, 'steam:110000136a37225', 'firstaidkit', 0),
(2675, 'steam:110000136a37225', 'lockpick', 0),
(2676, 'steam:110000136a37225', 'handcuffs', 0),
(2677, 'steam:110000136a37225', 'poudre', 0),
(2678, 'steam:110000136a37225', 'fishbait', 0),
(2679, 'steam:110000136a37225', 'hat', 0),
(2680, 'steam:110000136a37225', 'plantpot', 0),
(2681, 'steam:110000136a37225', 'blonde', 0),
(2682, 'steam:110000136a37225', 'phonecassé', 0),
(2683, 'steam:110000136a37225', 'houblon', 0),
(2684, 'steam:110000136a37225', 'opium_pooch', 0),
(2685, 'steam:110000136a37225', 'purifiedwater', 0),
(2686, 'steam:110000136a37225', 'bronzemedal_run', 0),
(2687, 'steam:110000136a37225', 'pants', 0),
(2688, 'steam:110000136a37225', 'pizza', 0),
(2689, 'steam:110000136a37225', 'alive_chicken', 0),
(2690, 'steam:110000136a37225', 'orange', 0),
(2691, 'steam:110000136a37225', 'soda', 0),
(2692, 'steam:110000136a37225', 'whisky', 0),
(2693, 'steam:110000136a37225', 'highgradefemaleseed', 0),
(2694, 'steam:110000136a37225', 'blowtorch', 0),
(2695, 'steam:110000136a37225', 'opium', 0),
(2696, 'steam:110000136a37225', 'mojito', 0),
(2697, 'steam:110000136a37225', 'laptop', 0),
(2698, 'steam:110000136a37225', 'cutted_wood', 0),
(2699, 'steam:110000136a37225', 'meth_pooch', 0),
(2700, 'steam:110000136a37225', 'fish', 0),
(2701, 'steam:110000136a37225', 'cocaine_packaged', 0),
(2702, 'steam:110000136a37225', 'macka', 0),
(2703, 'steam:110000136a37225', 'cocaine_cut', 0),
(2704, 'steam:110000136a37225', 'meth_packaged', 0),
(2705, 'steam:110000136a37225', 'speaker', 0),
(2706, 'steam:110000136a37225', 'tabacblond', 0),
(2707, 'steam:110000136a37225', 'copper', 0),
(2708, 'steam:110000136a37225', 'jewels', 0),
(2709, 'steam:110000136a37225', 'hifi', 0),
(2710, 'steam:110000136a37225', 'jusfruit', 0),
(2711, 'steam:110000136a37225', 'xanax', 0),
(2712, 'steam:110000136a37225', 'vodka', 0),
(2713, 'steam:11000011291e036', 'jewels', 0),
(2714, 'steam:11000011291e036', 'carotool', 0),
(2715, 'steam:11000011291e036', 'phone', 0),
(2716, 'steam:11000011291e036', 'pastacarbonara', 0),
(2717, 'steam:11000011291e036', 'petrol_raffin', 0),
(2718, 'steam:11000011291e036', 'cigarett', 0),
(2719, 'steam:11000011291e036', 'hifi', 0),
(2720, 'steam:11000011291e036', 'bolchips', 0),
(2721, 'steam:11000011291e036', 'whiskycoca', 0),
(2722, 'steam:11000011291e036', 'jusfruit', 0),
(2723, 'steam:11000011291e036', 'shirt', 0),
(2724, 'steam:11000011291e036', 'schorange', 0),
(2725, 'steam:11000011291e036', 'tabacblond', 0),
(2726, 'steam:11000011291e036', 'blowpipe', 0),
(2727, 'steam:11000011291e036', 'meth', 0),
(2728, 'steam:11000011291e036', 'fixkit', 0),
(2729, 'steam:11000011291e036', 'lighter', 0),
(2730, 'steam:11000011291e036', 'vodkaenergy', 0),
(2731, 'steam:11000011291e036', 'coupon', 0),
(2732, 'steam:11000011291e036', 'acier', 0),
(2733, 'steam:11000011291e036', 'jagercerbere', 0),
(2734, 'steam:11000011291e036', 'bolnoixcajou', 0),
(2735, 'steam:11000011291e036', 'macka', 0),
(2736, 'steam:11000011291e036', 'drill', 0),
(2737, 'steam:11000011291e036', 'highradio', 0),
(2738, 'steam:11000011291e036', 'laptop', 0),
(2739, 'steam:11000011291e036', 'gazbottle', 0),
(2740, 'steam:11000011291e036', 'cutted_wood', 0),
(2741, 'steam:11000011291e036', 'toothpaste', 0),
(2742, 'steam:11000011291e036', 'oxygen_mask', 0),
(2743, 'steam:11000011291e036', 'douille', 0),
(2744, 'steam:11000011291e036', 'lokalizator', 0),
(2745, 'steam:11000011291e036', 'rhumcoca', 0),
(2746, 'steam:11000011291e036', 'soda', 0),
(2747, 'steam:11000011291e036', 'limonade', 0),
(2748, 'steam:11000011291e036', 'phonecassé', 0),
(2749, 'steam:11000011291e036', 'essence', 0),
(2750, 'steam:11000011291e036', 'silvermedal_run', 0),
(2751, 'steam:11000011291e036', 'fanta', 0),
(2752, 'steam:11000011291e036', 'poudre', 0),
(2753, 'steam:11000011291e036', 'loka', 0),
(2754, 'steam:11000011291e036', 'bag', 0),
(2755, 'steam:11000011291e036', 'thermite', 0),
(2756, 'steam:11000011291e036', 'rhum', 0),
(2757, 'steam:11000011291e036', 'cocaine_cut', 0),
(2758, 'steam:11000011291e036', 'chips', 0),
(2759, 'steam:11000011291e036', 'vodkafruit', 0),
(2760, 'steam:11000011291e036', 'water', 0),
(2761, 'steam:11000011291e036', 'meth_pooch', 0),
(2762, 'steam:11000011291e036', 'saucisson', 0),
(2763, 'steam:11000011291e036', 'brune', 0),
(2764, 'steam:11000011291e036', 'alive_chicken', 0),
(2765, 'steam:11000011291e036', 'fishingrod', 0),
(2766, 'steam:11000011291e036', 'washed_stone', 0),
(2767, 'steam:11000011291e036', 'coke_pooch', 0),
(2768, 'steam:11000011291e036', 'bagofdope', 0),
(2769, 'steam:11000011291e036', 'purifiedwater', 0),
(2770, 'steam:11000011291e036', 'coke', 0),
(2771, 'steam:11000011291e036', 'houblon', 0),
(2772, 'steam:11000011291e036', 'mixapero', 0),
(2773, 'steam:11000011291e036', 'highrim', 0),
(2774, 'steam:11000011291e036', 'grapperaisin', 0),
(2775, 'steam:11000011291e036', 'jus_raisin', 0),
(2776, 'steam:11000011291e036', 'blowtorch', 0),
(2777, 'steam:11000011291e036', 'bronzemedal_run', 0),
(2778, 'steam:11000011291e036', 'cocaine_packaged', 0),
(2779, 'steam:11000011291e036', 'opium_pooch', 0),
(2780, 'steam:11000011291e036', 'packaged_chicken', 0),
(2781, 'steam:11000011291e036', 'orange', 0),
(2782, 'steam:11000011291e036', 'tabacbrun', 0),
(2783, 'steam:11000011291e036', 'rhumfruit', 0),
(2784, 'steam:11000011291e036', 'jagerbomb', 0),
(2785, 'steam:11000011291e036', 'xanax', 0),
(2786, 'steam:11000011291e036', 'opium', 0),
(2787, 'steam:11000011291e036', 'handcuffs', 0),
(2788, 'steam:11000011291e036', 'turtle', 0),
(2789, 'steam:11000011291e036', 'drugscales', 0),
(2790, 'steam:11000011291e036', 'wool', 0),
(2791, 'steam:11000011291e036', 'wateringcan', 0),
(2792, 'steam:11000011291e036', 'weed_pooch', 0),
(2793, 'steam:11000011291e036', 'fixtool', 0),
(2794, 'steam:11000011291e036', 'stockrim', 0),
(2795, 'steam:11000011291e036', 'ice', 0),
(2796, 'steam:11000011291e036', 'fishbait', 0),
(2797, 'steam:11000011291e036', 'jager', 0),
(2798, 'steam:11000011291e036', 'firstaidkit', 0),
(2799, 'steam:11000011291e036', 'trimmedweed', 0),
(2800, 'steam:11000011291e036', 'weed_untrimmed', 0),
(2801, 'steam:11000011291e036', 'sprite', 0),
(2802, 'steam:11000011291e036', 'lowgradefemaleseed', 0),
(2803, 'steam:11000011291e036', 'cocaine_uncut', 0),
(2804, 'steam:11000011291e036', 'vodka', 0),
(2805, 'steam:11000011291e036', 'iron', 0),
(2806, 'steam:11000011291e036', 'drpepper', 0),
(2807, 'steam:11000011291e036', 'petrol', 0),
(2808, 'steam:11000011291e036', 'energy', 0),
(2809, 'steam:11000011291e036', 'menthe', 0),
(2810, 'steam:11000011291e036', 'icetea', 0),
(2811, 'steam:11000011291e036', 'weed_packaged', 0),
(2812, 'steam:11000011291e036', 'wood', 0),
(2813, 'steam:11000011291e036', 'sachetketchup', 0),
(2814, 'steam:11000011291e036', 'tequila', 0),
(2815, 'steam:11000011291e036', 'ring', 0),
(2816, 'steam:11000011291e036', 'pizza', 0),
(2817, 'steam:11000011291e036', 'lockpick', 0),
(2818, 'steam:11000011291e036', 'watch', 0),
(2819, 'steam:11000011291e036', 'gold', 0),
(2820, 'steam:11000011291e036', 'stone', 0),
(2821, 'steam:11000011291e036', 'tabacbrunsec', 0),
(2822, 'steam:11000011291e036', 'croquettes', 0),
(2823, 'steam:11000011291e036', 'goldmedal_run', 0),
(2824, 'steam:11000011291e036', 'speaker', 0),
(2825, 'steam:11000011291e036', 'jumelles', 0),
(2826, 'steam:11000011291e036', 'bolpistache', 0),
(2827, 'steam:11000011291e036', 'meth_packaged', 0),
(2828, 'steam:11000011291e036', 'camera', 0),
(2829, 'steam:11000011291e036', 'pants', 0),
(2830, 'steam:11000011291e036', 'tabacblondsec', 0),
(2831, 'steam:11000011291e036', 'bolcacahuetes', 0),
(2832, 'steam:11000011291e036', 'steak', 0),
(2833, 'steam:11000011291e036', 'slaughtered_chicken', 0),
(2834, 'steam:11000011291e036', 'net_cracker', 0),
(2835, 'steam:11000011291e036', 'gitanes', 0),
(2836, 'steam:11000011291e036', 'highgrademaleseed', 0),
(2837, 'steam:11000011291e036', 'vine', 0),
(2838, 'steam:11000011291e036', 'sorted_money', 0),
(2839, 'steam:11000011291e036', 'carbon', 0),
(2840, 'steam:11000011291e036', 'saffron', 0),
(2841, 'steam:11000011291e036', 'repartel', 0),
(2842, 'steam:11000011291e036', 'shoes', 0),
(2843, 'steam:11000011291e036', 'fabric', 0),
(2844, 'steam:11000011291e036', 'caisseketchup', 0),
(2845, 'steam:11000011291e036', 'diamond', 0),
(2846, 'steam:11000011291e036', 'cheesebows', 0),
(2847, 'steam:11000011291e036', 'plantpot', 0),
(2848, 'steam:11000011291e036', 'highgradefert', 0),
(2849, 'steam:11000011291e036', 'contrat', 0),
(2850, 'steam:11000011291e036', 'clothe', 0),
(2851, 'steam:11000011291e036', 'poubelle', 0),
(2852, 'steam:11000011291e036', 'weed', 0),
(2853, 'steam:11000011291e036', 'blonde', 0),
(2854, 'steam:11000011291e036', 'shark', 0),
(2855, 'steam:11000011291e036', 'c4_bank', 0),
(2856, 'steam:11000011291e036', 'copper', 0),
(2857, 'steam:11000011291e036', 'bandage', 0),
(2858, 'steam:11000011291e036', 'cocacola', 0),
(2859, 'steam:11000011291e036', 'hat', 0),
(2860, 'steam:11000011291e036', 'packaged_plank', 0),
(2861, 'steam:11000011291e036', 'cheese', 0),
(2862, 'steam:11000011291e036', 'raspberry', 0),
(2863, 'steam:11000011291e036', 'raisin', 0),
(2864, 'steam:11000011291e036', 'necklace', 0),
(2865, 'steam:11000011291e036', 'mojito', 0),
(2866, 'steam:11000011291e036', 'lowradio', 0),
(2867, 'steam:11000011291e036', 'teqpaf', 0),
(2868, 'steam:11000011291e036', 'burger', 0),
(2869, 'steam:11000011291e036', 'carokit', 0),
(2870, 'steam:11000011291e036', 'clip', 0),
(2871, 'steam:11000011291e036', 'airbag', 0),
(2872, 'steam:11000011291e036', 'metreshooter', 0),
(2873, 'steam:11000011291e036', 'lowgradefert', 0),
(2874, 'steam:11000011291e036', 'grand_cru', 0),
(2875, 'steam:11000011291e036', 'meth_raw', 0),
(2876, 'steam:11000011291e036', 'highgradefemaleseed', 0),
(2877, 'steam:11000011291e036', 'golem', 0),
(2878, 'steam:11000011291e036', 'battery', 0),
(2879, 'steam:11000011291e036', 'fish', 0),
(2880, 'steam:11000011291e036', 'turtlebait', 0),
(2881, 'steam:11000011291e036', 'martini', 0),
(2882, 'steam:11000011291e036', 'cut_money', 0),
(2883, 'steam:11000011291e036', 'lotteryticket', 0),
(2884, 'steam:11000011291e036', 'bulletproof', 0),
(2885, 'steam:11000011291e036', 'bread', 0),
(2886, 'steam:11000011291e036', 'Marabou Mjölkchoklad', 0),
(2887, 'steam:11000011291e036', 'book', 0),
(2888, 'steam:11000011291e036', 'malbora', 0),
(2889, 'steam:11000011291e036', 'medikit', 0),
(2890, 'steam:11000011291e036', 'lowgrademaleseed', 0),
(2891, 'steam:11000011291e036', 'dopebag', 0),
(2892, 'steam:11000011291e036', 'whisky', 0),
(2893, 'steam:11000013c064c48', 'carbon', 0),
(2894, 'steam:11000013c064c48', 'firstaidkit', 0),
(2895, 'steam:11000013c064c48', 'weed_packaged', 0),
(2896, 'steam:11000013c064c48', 'pants', 0),
(2897, 'steam:11000013c064c48', 'slaughtered_chicken', 0),
(2898, 'steam:11000013c064c48', 'thermite', 0),
(2899, 'steam:11000013c064c48', 'cutted_wood', 0),
(2900, 'steam:11000013c064c48', 'vodkafruit', 0),
(2901, 'steam:11000013c064c48', 'rhum', 0),
(2902, 'steam:11000013c064c48', 'clothe', 0),
(2903, 'steam:11000013c064c48', 'energy', 0),
(2904, 'steam:11000013c064c48', 'petrol_raffin', 0),
(2905, 'steam:11000013c064c48', 'petrol', 0),
(2906, 'steam:11000013c064c48', 'drpepper', 0),
(2907, 'steam:11000013c064c48', 'cheesebows', 0),
(2908, 'steam:11000013c064c48', 'fanta', 0),
(2909, 'steam:11000013c064c48', 'schorange', 0),
(2910, 'steam:11000013c064c48', 'golem', 0),
(2911, 'steam:11000013c064c48', 'goldmedal_run', 0),
(2912, 'steam:11000013c064c48', 'coke', 0),
(2913, 'steam:11000013c064c48', 'bulletproof', 0),
(2914, 'steam:11000013c064c48', 'purifiedwater', 0),
(2915, 'steam:11000013c064c48', 'carotool', 0),
(2916, 'steam:11000013c064c48', 'drugscales', 0),
(2917, 'steam:11000013c064c48', 'jewels', 0),
(2918, 'steam:11000013c064c48', 'lowradio', 0),
(2919, 'steam:11000013c064c48', 'bolnoixcajou', 0),
(2920, 'steam:11000013c064c48', 'fishbait', 0),
(2921, 'steam:11000013c064c48', 'water', 0),
(2922, 'steam:11000013c064c48', 'lotteryticket', 0),
(2923, 'steam:11000013c064c48', 'highgradefemaleseed', 0),
(2924, 'steam:11000013c064c48', 'stockrim', 0),
(2925, 'steam:11000013c064c48', 'washed_stone', 0),
(2926, 'steam:11000013c064c48', 'teqpaf', 0),
(2927, 'steam:11000013c064c48', 'soda', 0),
(2928, 'steam:11000013c064c48', 'blowpipe', 0),
(2929, 'steam:11000013c064c48', 'grapperaisin', 0),
(2930, 'steam:11000013c064c48', 'coupon', 0),
(2931, 'steam:11000013c064c48', 'diamond', 0),
(2932, 'steam:11000013c064c48', 'mojito', 0),
(2933, 'steam:11000013c064c48', 'burger', 0),
(2934, 'steam:11000013c064c48', 'bag', 0),
(2935, 'steam:11000013c064c48', 'meth', 0),
(2936, 'steam:11000013c064c48', 'camera', 0),
(2937, 'steam:11000013c064c48', 'highgradefert', 0),
(2938, 'steam:11000013c064c48', 'drill', 0),
(2939, 'steam:11000013c064c48', 'plantpot', 0),
(2940, 'steam:11000013c064c48', 'tabacblondsec', 0),
(2941, 'steam:11000013c064c48', 'steak', 0),
(2942, 'steam:11000013c064c48', 'martini', 0),
(2943, 'steam:11000013c064c48', 'contrat', 0),
(2944, 'steam:11000013c064c48', 'acier', 0),
(2945, 'steam:11000013c064c48', 'grand_cru', 0),
(2946, 'steam:11000013c064c48', 'sorted_money', 0),
(2947, 'steam:11000013c064c48', 'gazbottle', 0),
(2948, 'steam:11000013c064c48', 'repartel', 0),
(2949, 'steam:11000013c064c48', 'fish', 0),
(2950, 'steam:11000013c064c48', 'medikit', 0),
(2951, 'steam:11000013c064c48', 'fabric', 0),
(2952, 'steam:11000013c064c48', 'bolcacahuetes', 0),
(2953, 'steam:11000013c064c48', 'opium', 0),
(2954, 'steam:11000013c064c48', 'lowgrademaleseed', 0),
(2955, 'steam:11000013c064c48', 'clip', 0),
(2956, 'steam:11000013c064c48', 'fishingrod', 0),
(2957, 'steam:11000013c064c48', 'copper', 0),
(2958, 'steam:11000013c064c48', 'lowgradefemaleseed', 0),
(2959, 'steam:11000013c064c48', 'phone', 0),
(2960, 'steam:11000013c064c48', 'cigarett', 0),
(2961, 'steam:11000013c064c48', 'lighter', 0),
(2962, 'steam:11000013c064c48', 'bronzemedal_run', 0),
(2963, 'steam:11000013c064c48', 'bagofdope', 0),
(2964, 'steam:11000013c064c48', 'vodkaenergy', 0),
(2965, 'steam:11000013c064c48', 'croquettes', 0),
(2966, 'steam:11000013c064c48', 'turtlebait', 0),
(2967, 'steam:11000013c064c48', 'rhumcoca', 0),
(2968, 'steam:11000013c064c48', 'book', 0),
(2969, 'steam:11000013c064c48', 'macka', 0),
(2970, 'steam:11000013c064c48', 'lokalizator', 0),
(2971, 'steam:11000013c064c48', 'jus_raisin', 0),
(2972, 'steam:11000013c064c48', 'highrim', 0),
(2973, 'steam:11000013c064c48', 'shirt', 0),
(2974, 'steam:11000013c064c48', 'tabacblond', 0),
(2975, 'steam:11000013c064c48', 'whiskycoca', 0),
(2976, 'steam:11000013c064c48', 'meth_pooch', 0),
(2977, 'steam:11000013c064c48', 'wood', 0),
(2978, 'steam:11000013c064c48', 'wool', 0),
(2979, 'steam:11000013c064c48', 'jusfruit', 0),
(2980, 'steam:11000013c064c48', 'weed_untrimmed', 0),
(2981, 'steam:11000013c064c48', 'cheese', 0),
(2982, 'steam:11000013c064c48', 'alive_chicken', 0),
(2983, 'steam:11000013c064c48', 'carokit', 0),
(2984, 'steam:11000013c064c48', 'whisky', 0),
(2985, 'steam:11000013c064c48', 'handcuffs', 0),
(2986, 'steam:11000013c064c48', 'weed_pooch', 0),
(2987, 'steam:11000013c064c48', 'blowtorch', 0),
(2988, 'steam:11000013c064c48', 'poudre', 0),
(2989, 'steam:11000013c064c48', 'highradio', 0),
(2990, 'steam:11000013c064c48', 'tabacbrun', 0),
(2991, 'steam:11000013c064c48', 'weed', 0),
(2992, 'steam:11000013c064c48', 'vodka', 0),
(2993, 'steam:11000013c064c48', 'watch', 0),
(2994, 'steam:11000013c064c48', 'wateringcan', 0),
(2995, 'steam:11000013c064c48', 'vine', 0),
(2996, 'steam:11000013c064c48', 'toothpaste', 0),
(2997, 'steam:11000013c064c48', 'mixapero', 0),
(2998, 'steam:11000013c064c48', 'jagerbomb', 0),
(2999, 'steam:11000013c064c48', 'gold', 0),
(3000, 'steam:11000013c064c48', 'trimmedweed', 0),
(3001, 'steam:11000013c064c48', 'tequila', 0),
(3002, 'steam:11000013c064c48', 'chips', 0),
(3003, 'steam:11000013c064c48', 'cocaine_uncut', 0),
(3004, 'steam:11000013c064c48', 'gitanes', 0),
(3005, 'steam:11000013c064c48', 'tabacbrunsec', 0),
(3006, 'steam:11000013c064c48', 'jagercerbere', 0),
(3007, 'steam:11000013c064c48', 'sprite', 0),
(3008, 'steam:11000013c064c48', 'shoes', 0),
(3009, 'steam:11000013c064c48', 'stone', 0),
(3010, 'steam:11000013c064c48', 'metreshooter', 0),
(3011, 'steam:11000013c064c48', 'speaker', 0),
(3012, 'steam:11000013c064c48', 'cocaine_cut', 0),
(3013, 'steam:11000013c064c48', 'silvermedal_run', 0),
(3014, 'steam:11000013c064c48', 'houblon', 0),
(3015, 'steam:11000013c064c48', 'xanax', 0),
(3016, 'steam:11000013c064c48', 'hat', 0),
(3017, 'steam:11000013c064c48', 'saucisson', 0),
(3018, 'steam:11000013c064c48', 'opium_pooch', 0),
(3019, 'steam:11000013c064c48', 'shark', 0),
(3020, 'steam:11000013c064c48', 'dopebag', 0),
(3021, 'steam:11000013c064c48', 'orange', 0),
(3022, 'steam:11000013c064c48', 'bolpistache', 0),
(3023, 'steam:11000013c064c48', 'saffron', 0),
(3024, 'steam:11000013c064c48', 'ring', 0),
(3025, 'steam:11000013c064c48', 'phonecassé', 0),
(3026, 'steam:11000013c064c48', 'rhumfruit', 0),
(3027, 'steam:11000013c064c48', 'raisin', 0),
(3028, 'steam:11000013c064c48', 'coke_pooch', 0),
(3029, 'steam:11000013c064c48', 'raspberry', 0),
(3030, 'steam:11000013c064c48', 'iron', 0),
(3031, 'steam:11000013c064c48', 'c4_bank', 0),
(3032, 'steam:11000013c064c48', 'fixkit', 0),
(3033, 'steam:11000013c064c48', 'menthe', 0),
(3034, 'steam:11000013c064c48', 'essence', 0),
(3035, 'steam:11000013c064c48', 'pizza', 0),
(3036, 'steam:11000013c064c48', 'caisseketchup', 0),
(3037, 'steam:11000013c064c48', 'lockpick', 0),
(3038, 'steam:11000013c064c48', 'airbag', 0),
(3039, 'steam:11000013c064c48', 'poubelle', 0),
(3040, 'steam:11000013c064c48', 'net_cracker', 0),
(3041, 'steam:11000013c064c48', 'ice', 0),
(3042, 'steam:11000013c064c48', 'pastacarbonara', 0),
(3043, 'steam:11000013c064c48', 'laptop', 0),
(3044, 'steam:11000013c064c48', 'sachetketchup', 0),
(3045, 'steam:11000013c064c48', 'cut_money', 0),
(3046, 'steam:11000013c064c48', 'packaged_chicken', 0),
(3047, 'steam:11000013c064c48', 'bandage', 0),
(3048, 'steam:11000013c064c48', 'douille', 0),
(3049, 'steam:11000013c064c48', 'oxygen_mask', 0),
(3050, 'steam:11000013c064c48', 'jager', 0),
(3051, 'steam:11000013c064c48', 'necklace', 0),
(3052, 'steam:11000013c064c48', 'highgrademaleseed', 0),
(3053, 'steam:11000013c064c48', 'loka', 0),
(3054, 'steam:11000013c064c48', 'battery', 0),
(3055, 'steam:11000013c064c48', 'malbora', 0),
(3056, 'steam:11000013c064c48', 'cocaine_packaged', 0),
(3057, 'steam:11000013c064c48', 'turtle', 0),
(3058, 'steam:11000013c064c48', 'fixtool', 0),
(3059, 'steam:11000013c064c48', 'Marabou Mjölkchoklad', 0),
(3060, 'steam:11000013c064c48', 'cocacola', 0),
(3061, 'steam:11000013c064c48', 'meth_packaged', 0),
(3062, 'steam:11000013c064c48', 'bread', 0),
(3063, 'steam:11000013c064c48', 'jumelles', 0),
(3064, 'steam:11000013c064c48', 'packaged_plank', 0),
(3065, 'steam:11000013c064c48', 'lowgradefert', 0),
(3066, 'steam:11000013c064c48', 'meth_raw', 0),
(3067, 'steam:11000013c064c48', 'blonde', 0),
(3068, 'steam:11000013c064c48', 'brune', 0),
(3069, 'steam:11000013c064c48', 'icetea', 0),
(3070, 'steam:11000013c064c48', 'hifi', 0),
(3071, 'steam:11000013c064c48', 'limonade', 0),
(3072, 'steam:11000013c064c48', 'bolchips', 0),
(3073, 'steam:110000100473290', 'drpepper', 0),
(3074, 'steam:110000100473290', 'cheese', 0),
(3075, 'steam:110000100473290', 'blonde', 0),
(3076, 'steam:110000100473290', 'vodkaenergy', 0),
(3077, 'steam:110000100473290', 'Marabou Mjölkchoklad', 0),
(3078, 'steam:110000100473290', 'clip', 0),
(3079, 'steam:110000100473290', 'rhumfruit', 0),
(3080, 'steam:110000100473290', 'repartel', 0),
(3081, 'steam:110000100473290', 'highrim', 0),
(3082, 'steam:110000100473290', 'ice', 0),
(3083, 'steam:110000100473290', 'battery', 0),
(3084, 'steam:110000100473290', 'medikit', 0),
(3085, 'steam:110000100473290', 'hifi', 0),
(3086, 'steam:110000100473290', 'lotteryticket', 0),
(3087, 'steam:110000100473290', 'drill', 0),
(3088, 'steam:110000100473290', 'fish', 0),
(3089, 'steam:110000100473290', 'carbon', 0),
(3090, 'steam:110000100473290', 'dopebag', 0),
(3091, 'steam:110000100473290', 'acier', 0),
(3092, 'steam:110000100473290', 'lighter', 0),
(3093, 'steam:110000100473290', 'lowradio', 0),
(3094, 'steam:110000100473290', 'bolpistache', 0),
(3095, 'steam:110000100473290', 'raisin', 0),
(3096, 'steam:110000100473290', 'bag', 0),
(3097, 'steam:110000100473290', 'brune', 0),
(3098, 'steam:110000100473290', 'fishingrod', 0),
(3099, 'steam:110000100473290', 'jagercerbere', 0),
(3100, 'steam:110000100473290', 'weed_packaged', 0),
(3101, 'steam:110000100473290', 'bagofdope', 0),
(3102, 'steam:110000100473290', 'cutted_wood', 0),
(3103, 'steam:110000100473290', 'bandage', 0),
(3104, 'steam:110000100473290', 'raspberry', 0),
(3105, 'steam:110000100473290', 'phonecassé', 0),
(3106, 'steam:110000100473290', 'meth_pooch', 0),
(3107, 'steam:110000100473290', 'wool', 0),
(3108, 'steam:110000100473290', 'highradio', 0),
(3109, 'steam:110000100473290', 'slaughtered_chicken', 0),
(3110, 'steam:110000100473290', 'firstaidkit', 0),
(3111, 'steam:110000100473290', 'handcuffs', 0),
(3112, 'steam:110000100473290', 'jus_raisin', 0),
(3113, 'steam:110000100473290', 'loka', 0),
(3114, 'steam:110000100473290', 'drugscales', 0),
(3115, 'steam:110000100473290', 'airbag', 0),
(3116, 'steam:110000100473290', 'jager', 0),
(3117, 'steam:110000100473290', 'highgradefert', 0),
(3118, 'steam:110000100473290', 'phone', 1),
(3119, 'steam:110000100473290', 'saucisson', 0),
(3120, 'steam:110000100473290', 'saffron', 0),
(3121, 'steam:110000100473290', 'houblon', 0),
(3122, 'steam:110000100473290', 'coupon', 0),
(3123, 'steam:110000100473290', 'meth_raw', 0),
(3124, 'steam:110000100473290', 'orange', 0),
(3125, 'steam:110000100473290', 'vine', 0),
(3126, 'steam:110000100473290', 'necklace', 0),
(3127, 'steam:110000100473290', 'pizza', 0),
(3128, 'steam:110000100473290', 'malbora', 0),
(3129, 'steam:110000100473290', 'water', 0),
(3130, 'steam:110000100473290', 'fanta', 0),
(3131, 'steam:110000100473290', 'lowgradefemaleseed', 0),
(3132, 'steam:110000100473290', 'goldmedal_run', 0),
(3133, 'steam:110000100473290', 'jagerbomb', 0),
(3134, 'steam:110000100473290', 'blowpipe', 0),
(3135, 'steam:110000100473290', 'lokalizator', 0),
(3136, 'steam:110000100473290', 'lowgradefert', 0),
(3137, 'steam:110000100473290', 'packaged_chicken', 0),
(3138, 'steam:110000100473290', 'opium_pooch', 0),
(3139, 'steam:110000100473290', 'tabacbrun', 0),
(3140, 'steam:110000100473290', 'tabacblondsec', 0),
(3141, 'steam:110000100473290', 'iron', 0),
(3142, 'steam:110000100473290', 'speaker', 0),
(3143, 'steam:110000100473290', 'ring', 0),
(3144, 'steam:110000100473290', 'bread', 0),
(3145, 'steam:110000100473290', 'bolcacahuetes', 0),
(3146, 'steam:110000100473290', 'metreshooter', 0),
(3147, 'steam:110000100473290', 'highgrademaleseed', 0),
(3148, 'steam:110000100473290', 'cocaine_packaged', 0),
(3149, 'steam:110000100473290', 'croquettes', 0),
(3150, 'steam:110000100473290', 'tabacbrunsec', 0),
(3151, 'steam:110000100473290', 'xanax', 0),
(3152, 'steam:110000100473290', 'rhumcoca', 0),
(3153, 'steam:110000100473290', 'contrat', 0),
(3154, 'steam:110000100473290', 'martini', 0),
(3155, 'steam:110000100473290', 'whiskycoca', 0),
(3156, 'steam:110000100473290', 'wood', 0),
(3157, 'steam:110000100473290', 'whisky', 0),
(3158, 'steam:110000100473290', 'teqpaf', 0),
(3159, 'steam:110000100473290', 'weed', 0),
(3160, 'steam:110000100473290', 'weed_untrimmed', 0),
(3161, 'steam:110000100473290', 'fishbait', 0),
(3162, 'steam:110000100473290', 'limonade', 0),
(3163, 'steam:110000100473290', 'vodka', 0),
(3164, 'steam:110000100473290', 'vodkafruit', 0),
(3165, 'steam:110000100473290', 'cigarett', 0),
(3166, 'steam:110000100473290', 'watch', 0),
(3167, 'steam:110000100473290', 'rhum', 0),
(3168, 'steam:110000100473290', 'diamond', 0),
(3169, 'steam:110000100473290', 'turtlebait', 0),
(3170, 'steam:110000100473290', 'bolchips', 0),
(3171, 'steam:110000100473290', 'golem', 0),
(3172, 'steam:110000100473290', 'turtle', 0),
(3173, 'steam:110000100473290', 'plantpot', 0),
(3174, 'steam:110000100473290', 'thermite', 0),
(3175, 'steam:110000100473290', 'cocaine_uncut', 0),
(3176, 'steam:110000100473290', 'gitanes', 0),
(3177, 'steam:110000100473290', 'tequila', 0),
(3178, 'steam:110000100473290', 'highgradefemaleseed', 0),
(3179, 'steam:110000100473290', 'wateringcan', 0),
(3180, 'steam:110000100473290', 'net_cracker', 0),
(3181, 'steam:110000100473290', 'sachetketchup', 0),
(3182, 'steam:110000100473290', 'bulletproof', 0),
(3183, 'steam:110000100473290', 'carotool', 0),
(3184, 'steam:110000100473290', 'stone', 0),
(3185, 'steam:110000100473290', 'essence', 0),
(3186, 'steam:110000100473290', 'mojito', 0),
(3187, 'steam:110000100473290', 'steak', 0),
(3188, 'steam:110000100473290', 'caisseketchup', 0),
(3189, 'steam:110000100473290', 'icetea', 0),
(3190, 'steam:110000100473290', 'shark', 0),
(3191, 'steam:110000100473290', 'sprite', 0),
(3192, 'steam:110000100473290', 'lockpick', 0),
(3193, 'steam:110000100473290', 'fabric', 0),
(3194, 'steam:110000100473290', 'silvermedal_run', 0),
(3195, 'steam:110000100473290', 'soda', 0),
(3196, 'steam:110000100473290', 'shoes', 0),
(3197, 'steam:110000100473290', 'alive_chicken', 0),
(3198, 'steam:110000100473290', 'blowtorch', 0),
(3199, 'steam:110000100473290', 'fixkit', 0),
(3200, 'steam:110000100473290', 'sorted_money', 0),
(3201, 'steam:110000100473290', 'c4_bank', 0),
(3202, 'steam:110000100473290', 'schorange', 0),
(3203, 'steam:110000100473290', 'poubelle', 0),
(3204, 'steam:110000100473290', 'poudre', 0),
(3205, 'steam:110000100473290', 'gold', 0),
(3206, 'steam:110000100473290', 'purifiedwater', 0),
(3207, 'steam:110000100473290', 'tabacblond', 0),
(3208, 'steam:110000100473290', 'gazbottle', 0),
(3209, 'steam:110000100473290', 'camera', 0),
(3210, 'steam:110000100473290', 'carokit', 0),
(3211, 'steam:110000100473290', 'book', 0),
(3212, 'steam:110000100473290', 'toothpaste', 0),
(3213, 'steam:110000100473290', 'bronzemedal_run', 0),
(3214, 'steam:110000100473290', 'cut_money', 0),
(3215, 'steam:110000100473290', 'jewels', 0),
(3216, 'steam:110000100473290', 'bolnoixcajou', 0),
(3217, 'steam:110000100473290', 'weed_pooch', 0),
(3218, 'steam:110000100473290', 'petrol_raffin', 0),
(3219, 'steam:110000100473290', 'fixtool', 0),
(3220, 'steam:110000100473290', 'cocaine_cut', 0),
(3221, 'steam:110000100473290', 'clothe', 0),
(3222, 'steam:110000100473290', 'petrol', 0),
(3223, 'steam:110000100473290', 'oxygen_mask', 0),
(3224, 'steam:110000100473290', 'jusfruit', 0),
(3225, 'steam:110000100473290', 'pants', 0),
(3226, 'steam:110000100473290', 'energy', 0),
(3227, 'steam:110000100473290', 'packaged_plank', 0),
(3228, 'steam:110000100473290', 'mixapero', 0),
(3229, 'steam:110000100473290', 'copper', 0),
(3230, 'steam:110000100473290', 'opium', 0),
(3231, 'steam:110000100473290', 'douille', 0),
(3232, 'steam:110000100473290', 'jumelles', 0),
(3233, 'steam:110000100473290', 'cocacola', 0),
(3234, 'steam:110000100473290', 'grapperaisin', 0),
(3235, 'steam:110000100473290', 'meth', 0),
(3236, 'steam:110000100473290', 'meth_packaged', 0),
(3237, 'steam:110000100473290', 'shirt', 0),
(3238, 'steam:110000100473290', 'macka', 0),
(3239, 'steam:110000100473290', 'menthe', 0),
(3240, 'steam:110000100473290', 'pastacarbonara', 0),
(3241, 'steam:110000100473290', 'burger', 0),
(3242, 'steam:110000100473290', 'chips', 0),
(3243, 'steam:110000100473290', 'hat', 0),
(3244, 'steam:110000100473290', 'washed_stone', 0),
(3245, 'steam:110000100473290', 'coke', 0),
(3246, 'steam:110000100473290', 'cheesebows', 0),
(3247, 'steam:110000100473290', 'lowgrademaleseed', 0),
(3248, 'steam:110000100473290', 'grand_cru', 0),
(3249, 'steam:110000100473290', 'stockrim', 0),
(3250, 'steam:110000100473290', 'trimmedweed', 0),
(3251, 'steam:110000100473290', 'coke_pooch', 0),
(3252, 'steam:110000100473290', 'laptop', 0),
(3253, 'steam:110000134b6f5a1', 'vodkaenergy', 0),
(3254, 'steam:110000134b6f5a1', 'cheese', 0),
(3255, 'steam:110000134b6f5a1', 'drpepper', 0),
(3256, 'steam:110000134b6f5a1', 'blonde', 0),
(3257, 'steam:110000134b6f5a1', 'Marabou Mjölkchoklad', 0),
(3258, 'steam:110000134b6f5a1', 'ice', 0),
(3259, 'steam:110000134b6f5a1', 'highrim', 0),
(3260, 'steam:110000134b6f5a1', 'rhumfruit', 0),
(3261, 'steam:110000134b6f5a1', 'repartel', 0),
(3262, 'steam:110000134b6f5a1', 'clip', 0),
(3263, 'steam:110000134b6f5a1', 'drill', 0),
(3264, 'steam:110000134b6f5a1', 'lotteryticket', 0),
(3265, 'steam:110000134b6f5a1', 'hifi', 0),
(3266, 'steam:110000134b6f5a1', 'battery', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(3267, 'steam:110000134b6f5a1', 'medikit', 0),
(3268, 'steam:110000134b6f5a1', 'lighter', 0),
(3269, 'steam:110000134b6f5a1', 'fish', 0),
(3270, 'steam:110000134b6f5a1', 'carbon', 0),
(3271, 'steam:110000134b6f5a1', 'acier', 0),
(3272, 'steam:110000134b6f5a1', 'dopebag', 0),
(3273, 'steam:110000134b6f5a1', 'lowradio', 0),
(3274, 'steam:110000134b6f5a1', 'brune', 0),
(3275, 'steam:110000134b6f5a1', 'bag', 0),
(3276, 'steam:110000134b6f5a1', 'bolpistache', 0),
(3277, 'steam:110000134b6f5a1', 'raisin', 0),
(3278, 'steam:110000134b6f5a1', 'weed_packaged', 0),
(3279, 'steam:110000134b6f5a1', 'jagercerbere', 0),
(3280, 'steam:110000134b6f5a1', 'cutted_wood', 0),
(3281, 'steam:110000134b6f5a1', 'fishingrod', 0),
(3282, 'steam:110000134b6f5a1', 'bagofdope', 0),
(3283, 'steam:110000134b6f5a1', 'raspberry', 0),
(3284, 'steam:110000134b6f5a1', 'phonecassé', 0),
(3285, 'steam:110000134b6f5a1', 'bandage', 0),
(3286, 'steam:110000134b6f5a1', 'wool', 0),
(3287, 'steam:110000134b6f5a1', 'meth_pooch', 0),
(3288, 'steam:110000134b6f5a1', 'firstaidkit', 0),
(3289, 'steam:110000134b6f5a1', 'highradio', 0),
(3290, 'steam:110000134b6f5a1', 'handcuffs', 0),
(3291, 'steam:110000134b6f5a1', 'slaughtered_chicken', 0),
(3292, 'steam:110000134b6f5a1', 'jus_raisin', 0),
(3293, 'steam:110000134b6f5a1', 'airbag', 0),
(3294, 'steam:110000134b6f5a1', 'loka', 0),
(3295, 'steam:110000134b6f5a1', 'jager', 0),
(3296, 'steam:110000134b6f5a1', 'drugscales', 0),
(3297, 'steam:110000134b6f5a1', 'highgradefert', 0),
(3298, 'steam:110000134b6f5a1', 'coupon', 0),
(3299, 'steam:110000134b6f5a1', 'phone', 1),
(3300, 'steam:110000134b6f5a1', 'houblon', 0),
(3301, 'steam:110000134b6f5a1', 'saucisson', 0),
(3302, 'steam:110000134b6f5a1', 'saffron', 0),
(3303, 'steam:110000134b6f5a1', 'orange', 0),
(3304, 'steam:110000134b6f5a1', 'meth_raw', 0),
(3305, 'steam:110000134b6f5a1', 'vine', 0),
(3306, 'steam:110000134b6f5a1', 'pizza', 0),
(3307, 'steam:110000134b6f5a1', 'necklace', 0),
(3308, 'steam:110000134b6f5a1', 'malbora', 0),
(3309, 'steam:110000134b6f5a1', 'lowgradefemaleseed', 0),
(3310, 'steam:110000134b6f5a1', 'water', 0),
(3311, 'steam:110000134b6f5a1', 'fanta', 0),
(3312, 'steam:110000134b6f5a1', 'goldmedal_run', 0),
(3313, 'steam:110000134b6f5a1', 'lowgradefert', 0),
(3314, 'steam:110000134b6f5a1', 'packaged_chicken', 0),
(3315, 'steam:110000134b6f5a1', 'lokalizator', 0),
(3316, 'steam:110000134b6f5a1', 'blowpipe', 0),
(3317, 'steam:110000134b6f5a1', 'jagerbomb', 0),
(3318, 'steam:110000134b6f5a1', 'opium_pooch', 0),
(3319, 'steam:110000134b6f5a1', 'iron', 0),
(3320, 'steam:110000134b6f5a1', 'tabacbrun', 0),
(3321, 'steam:110000134b6f5a1', 'tabacblondsec', 0),
(3322, 'steam:110000134b6f5a1', 'speaker', 0),
(3323, 'steam:110000134b6f5a1', 'bolcacahuetes', 0),
(3324, 'steam:110000134b6f5a1', 'bread', 0),
(3325, 'steam:110000134b6f5a1', 'metreshooter', 0),
(3326, 'steam:110000134b6f5a1', 'highgrademaleseed', 0),
(3327, 'steam:110000134b6f5a1', 'ring', 0),
(3328, 'steam:110000134b6f5a1', 'cocaine_packaged', 0),
(3329, 'steam:110000134b6f5a1', 'croquettes', 0),
(3330, 'steam:110000134b6f5a1', 'tabacbrunsec', 0),
(3331, 'steam:110000134b6f5a1', 'rhumcoca', 0),
(3332, 'steam:110000134b6f5a1', 'xanax', 0),
(3333, 'steam:110000134b6f5a1', 'wood', 0),
(3334, 'steam:110000134b6f5a1', 'whiskycoca', 0),
(3335, 'steam:110000134b6f5a1', 'whisky', 0),
(3336, 'steam:110000134b6f5a1', 'martini', 0),
(3337, 'steam:110000134b6f5a1', 'contrat', 0),
(3338, 'steam:110000134b6f5a1', 'teqpaf', 0),
(3339, 'steam:110000134b6f5a1', 'weed_untrimmed', 0),
(3340, 'steam:110000134b6f5a1', 'fishbait', 0),
(3341, 'steam:110000134b6f5a1', 'weed', 0),
(3342, 'steam:110000134b6f5a1', 'limonade', 0),
(3343, 'steam:110000134b6f5a1', 'cigarett', 0),
(3344, 'steam:110000134b6f5a1', 'vodka', 0),
(3345, 'steam:110000134b6f5a1', 'vodkafruit', 0),
(3346, 'steam:110000134b6f5a1', 'rhum', 0),
(3347, 'steam:110000134b6f5a1', 'watch', 0),
(3348, 'steam:110000134b6f5a1', 'golem', 0),
(3349, 'steam:110000134b6f5a1', 'turtlebait', 0),
(3350, 'steam:110000134b6f5a1', 'diamond', 0),
(3351, 'steam:110000134b6f5a1', 'bolchips', 0),
(3352, 'steam:110000134b6f5a1', 'turtle', 0),
(3353, 'steam:110000134b6f5a1', 'gitanes', 0),
(3354, 'steam:110000134b6f5a1', 'plantpot', 0),
(3355, 'steam:110000134b6f5a1', 'tequila', 0),
(3356, 'steam:110000134b6f5a1', 'thermite', 0),
(3357, 'steam:110000134b6f5a1', 'cocaine_uncut', 0),
(3358, 'steam:110000134b6f5a1', 'wateringcan', 0),
(3359, 'steam:110000134b6f5a1', 'bulletproof', 0),
(3360, 'steam:110000134b6f5a1', 'net_cracker', 0),
(3361, 'steam:110000134b6f5a1', 'sachetketchup', 0),
(3362, 'steam:110000134b6f5a1', 'highgradefemaleseed', 0),
(3363, 'steam:110000134b6f5a1', 'mojito', 0),
(3364, 'steam:110000134b6f5a1', 'carotool', 0),
(3365, 'steam:110000134b6f5a1', 'essence', 0),
(3366, 'steam:110000134b6f5a1', 'steak', 0),
(3367, 'steam:110000134b6f5a1', 'stone', 0),
(3368, 'steam:110000134b6f5a1', 'shark', 0),
(3369, 'steam:110000134b6f5a1', 'sprite', 0),
(3370, 'steam:110000134b6f5a1', 'icetea', 0),
(3371, 'steam:110000134b6f5a1', 'caisseketchup', 0),
(3372, 'steam:110000134b6f5a1', 'lockpick', 0),
(3373, 'steam:110000134b6f5a1', 'fabric', 0),
(3374, 'steam:110000134b6f5a1', 'soda', 0),
(3375, 'steam:110000134b6f5a1', 'silvermedal_run', 0),
(3376, 'steam:110000134b6f5a1', 'alive_chicken', 0),
(3377, 'steam:110000134b6f5a1', 'shoes', 0),
(3378, 'steam:110000134b6f5a1', 'blowtorch', 0),
(3379, 'steam:110000134b6f5a1', 'sorted_money', 0),
(3380, 'steam:110000134b6f5a1', 'schorange', 0),
(3381, 'steam:110000134b6f5a1', 'c4_bank', 0),
(3382, 'steam:110000134b6f5a1', 'fixkit', 0),
(3383, 'steam:110000134b6f5a1', 'tabacblond', 0),
(3384, 'steam:110000134b6f5a1', 'poudre', 0),
(3385, 'steam:110000134b6f5a1', 'gold', 0),
(3386, 'steam:110000134b6f5a1', 'poubelle', 0),
(3387, 'steam:110000134b6f5a1', 'purifiedwater', 0),
(3388, 'steam:110000134b6f5a1', 'book', 0),
(3389, 'steam:110000134b6f5a1', 'toothpaste', 0),
(3390, 'steam:110000134b6f5a1', 'carokit', 0),
(3391, 'steam:110000134b6f5a1', 'gazbottle', 0),
(3392, 'steam:110000134b6f5a1', 'camera', 0),
(3393, 'steam:110000134b6f5a1', 'bronzemedal_run', 0),
(3394, 'steam:110000134b6f5a1', 'jewels', 0),
(3395, 'steam:110000134b6f5a1', 'bolnoixcajou', 0),
(3396, 'steam:110000134b6f5a1', 'cut_money', 0),
(3397, 'steam:110000134b6f5a1', 'weed_pooch', 0),
(3398, 'steam:110000134b6f5a1', 'fixtool', 0),
(3399, 'steam:110000134b6f5a1', 'petrol_raffin', 0),
(3400, 'steam:110000134b6f5a1', 'clothe', 0),
(3401, 'steam:110000134b6f5a1', 'cocaine_cut', 0),
(3402, 'steam:110000134b6f5a1', 'petrol', 0),
(3403, 'steam:110000134b6f5a1', 'packaged_plank', 0),
(3404, 'steam:110000134b6f5a1', 'jusfruit', 0),
(3405, 'steam:110000134b6f5a1', 'pants', 0),
(3406, 'steam:110000134b6f5a1', 'energy', 0),
(3407, 'steam:110000134b6f5a1', 'oxygen_mask', 0),
(3408, 'steam:110000134b6f5a1', 'opium', 0),
(3409, 'steam:110000134b6f5a1', 'jumelles', 0),
(3410, 'steam:110000134b6f5a1', 'douille', 0),
(3411, 'steam:110000134b6f5a1', 'copper', 0),
(3412, 'steam:110000134b6f5a1', 'mixapero', 0),
(3413, 'steam:110000134b6f5a1', 'grapperaisin', 0),
(3414, 'steam:110000134b6f5a1', 'cocacola', 0),
(3415, 'steam:110000134b6f5a1', 'meth', 0),
(3416, 'steam:110000134b6f5a1', 'meth_packaged', 0),
(3417, 'steam:110000134b6f5a1', 'shirt', 0),
(3418, 'steam:110000134b6f5a1', 'chips', 0),
(3419, 'steam:110000134b6f5a1', 'burger', 0),
(3420, 'steam:110000134b6f5a1', 'pastacarbonara', 0),
(3421, 'steam:110000134b6f5a1', 'menthe', 0),
(3422, 'steam:110000134b6f5a1', 'macka', 0),
(3423, 'steam:110000134b6f5a1', 'cheesebows', 0),
(3424, 'steam:110000134b6f5a1', 'coke', 0),
(3425, 'steam:110000134b6f5a1', 'hat', 0),
(3426, 'steam:110000134b6f5a1', 'washed_stone', 0),
(3427, 'steam:110000134b6f5a1', 'lowgrademaleseed', 0),
(3428, 'steam:110000134b6f5a1', 'laptop', 0),
(3429, 'steam:110000134b6f5a1', 'stockrim', 0),
(3430, 'steam:110000134b6f5a1', 'coke_pooch', 0),
(3431, 'steam:110000134b6f5a1', 'grand_cru', 0),
(3432, 'steam:110000134b6f5a1', 'trimmedweed', 0),
(3433, 'steam:11000013c898d0d', 'lockpick', 0),
(3434, 'steam:11000013c898d0d', 'vodkafruit', 0),
(3435, 'steam:11000013c898d0d', 'vine', 0),
(3436, 'steam:11000013c898d0d', 'cheese', 0),
(3437, 'steam:11000013c898d0d', 'trimmedweed', 0),
(3438, 'steam:11000013c898d0d', 'drugscales', 0),
(3439, 'steam:11000013c898d0d', 'grapperaisin', 0),
(3440, 'steam:11000013c898d0d', 'bulletproof', 0),
(3441, 'steam:11000013c898d0d', 'fish', 0),
(3442, 'steam:11000013c898d0d', 'tabacbrunsec', 0),
(3443, 'steam:11000013c898d0d', 'bolnoixcajou', 0),
(3444, 'steam:11000013c898d0d', 'purifiedwater', 0),
(3445, 'steam:11000013c898d0d', 'vodkaenergy', 0),
(3446, 'steam:11000013c898d0d', 'hat', 0),
(3447, 'steam:11000013c898d0d', 'weed_pooch', 0),
(3448, 'steam:11000013c898d0d', 'saffron', 0),
(3449, 'steam:11000013c898d0d', 'acier', 0),
(3450, 'steam:11000013c898d0d', 'loka', 0),
(3451, 'steam:11000013c898d0d', 'blowpipe', 0),
(3452, 'steam:11000013c898d0d', 'gold', 0),
(3453, 'steam:11000013c898d0d', 'saucisson', 0),
(3454, 'steam:11000013c898d0d', 'petrol_raffin', 0),
(3455, 'steam:11000013c898d0d', 'drill', 0),
(3456, 'steam:11000013c898d0d', 'jagercerbere', 0),
(3457, 'steam:11000013c898d0d', 'fixkit', 0),
(3458, 'steam:11000013c898d0d', 'cut_money', 0),
(3459, 'steam:11000013c898d0d', 'lowgrademaleseed', 0),
(3460, 'steam:11000013c898d0d', 'bag', 0),
(3461, 'steam:11000013c898d0d', 'coupon', 0),
(3462, 'steam:11000013c898d0d', 'sorted_money', 0),
(3463, 'steam:11000013c898d0d', 'martini', 0),
(3464, 'steam:11000013c898d0d', 'cutted_wood', 0),
(3465, 'steam:11000013c898d0d', 'mojito', 0),
(3466, 'steam:11000013c898d0d', 'packaged_plank', 0),
(3467, 'steam:11000013c898d0d', 'shoes', 0),
(3468, 'steam:11000013c898d0d', 'diamond', 0),
(3469, 'steam:11000013c898d0d', 'bread', 0),
(3470, 'steam:11000013c898d0d', 'fixtool', 0),
(3471, 'steam:11000013c898d0d', 'pastacarbonara', 0),
(3472, 'steam:11000013c898d0d', 'stockrim', 0),
(3473, 'steam:11000013c898d0d', 'highgradefemaleseed', 0),
(3474, 'steam:11000013c898d0d', 'slaughtered_chicken', 0),
(3475, 'steam:11000013c898d0d', 'steak', 0),
(3476, 'steam:11000013c898d0d', 'jusfruit', 0),
(3477, 'steam:11000013c898d0d', 'battery', 0),
(3478, 'steam:11000013c898d0d', 'iron', 0),
(3479, 'steam:11000013c898d0d', 'shirt', 0),
(3480, 'steam:11000013c898d0d', 'highradio', 0),
(3481, 'steam:11000013c898d0d', 'teqpaf', 0),
(3482, 'steam:11000013c898d0d', 'mixapero', 0),
(3483, 'steam:11000013c898d0d', 'opium_pooch', 0),
(3484, 'steam:11000013c898d0d', 'fishingrod', 0),
(3485, 'steam:11000013c898d0d', 'oxygen_mask', 0),
(3486, 'steam:11000013c898d0d', 'icetea', 0),
(3487, 'steam:11000013c898d0d', 'highgradefert', 0),
(3488, 'steam:11000013c898d0d', 'hifi', 0),
(3489, 'steam:11000013c898d0d', 'stone', 0),
(3490, 'steam:11000013c898d0d', 'drpepper', 0),
(3491, 'steam:11000013c898d0d', 'carotool', 0),
(3492, 'steam:11000013c898d0d', 'meth_raw', 0),
(3493, 'steam:11000013c898d0d', 'blonde', 0),
(3494, 'steam:11000013c898d0d', 'grand_cru', 0),
(3495, 'steam:11000013c898d0d', 'raspberry', 0),
(3496, 'steam:11000013c898d0d', 'whiskycoca', 0),
(3497, 'steam:11000013c898d0d', 'Marabou Mjölkchoklad', 0),
(3498, 'steam:11000013c898d0d', 'energy', 0),
(3499, 'steam:11000013c898d0d', 'pants', 0),
(3500, 'steam:11000013c898d0d', 'brune', 0),
(3501, 'steam:11000013c898d0d', 'camera', 0),
(3502, 'steam:11000013c898d0d', 'meth', 0),
(3503, 'steam:11000013c898d0d', 'cigarett', 0),
(3504, 'steam:11000013c898d0d', 'cocaine_cut', 0),
(3505, 'steam:11000013c898d0d', 'lowradio', 0),
(3506, 'steam:11000013c898d0d', 'fabric', 0),
(3507, 'steam:11000013c898d0d', 'ring', 0),
(3508, 'steam:11000013c898d0d', 'jus_raisin', 0),
(3509, 'steam:11000013c898d0d', 'cocacola', 0),
(3510, 'steam:11000013c898d0d', 'medikit', 0),
(3511, 'steam:11000013c898d0d', 'highgrademaleseed', 0),
(3512, 'steam:11000013c898d0d', 'dopebag', 0),
(3513, 'steam:11000013c898d0d', 'soda', 0),
(3514, 'steam:11000013c898d0d', 'xanax', 0),
(3515, 'steam:11000013c898d0d', 'metreshooter', 0),
(3516, 'steam:11000013c898d0d', 'copper', 0),
(3517, 'steam:11000013c898d0d', 'weed_packaged', 0),
(3518, 'steam:11000013c898d0d', 'wool', 0),
(3519, 'steam:11000013c898d0d', 'whisky', 0),
(3520, 'steam:11000013c898d0d', 'opium', 0),
(3521, 'steam:11000013c898d0d', 'coke', 0),
(3522, 'steam:11000013c898d0d', 'sprite', 0),
(3523, 'steam:11000013c898d0d', 'water', 0),
(3524, 'steam:11000013c898d0d', 'goldmedal_run', 0),
(3525, 'steam:11000013c898d0d', 'repartel', 0),
(3526, 'steam:11000013c898d0d', 'weed_untrimmed', 0),
(3527, 'steam:11000013c898d0d', 'wateringcan', 0),
(3528, 'steam:11000013c898d0d', 'watch', 0),
(3529, 'steam:11000013c898d0d', 'fishbait', 0),
(3530, 'steam:11000013c898d0d', 'houblon', 0),
(3531, 'steam:11000013c898d0d', 'bolchips', 0),
(3532, 'steam:11000013c898d0d', 'alive_chicken', 0),
(3533, 'steam:11000013c898d0d', 'speaker', 0),
(3534, 'steam:11000013c898d0d', 'washed_stone', 0),
(3535, 'steam:11000013c898d0d', 'croquettes', 0),
(3536, 'steam:11000013c898d0d', 'petrol', 0),
(3537, 'steam:11000013c898d0d', 'vodka', 0),
(3538, 'steam:11000013c898d0d', 'gazbottle', 0),
(3539, 'steam:11000013c898d0d', 'toothpaste', 0),
(3540, 'steam:11000013c898d0d', 'turtle', 0),
(3541, 'steam:11000013c898d0d', 'jewels', 0),
(3542, 'steam:11000013c898d0d', 'turtlebait', 0),
(3543, 'steam:11000013c898d0d', 'tabacblondsec', 0),
(3544, 'steam:11000013c898d0d', 'tabacbrun', 0),
(3545, 'steam:11000013c898d0d', 'orange', 0),
(3546, 'steam:11000013c898d0d', 'laptop', 0),
(3547, 'steam:11000013c898d0d', 'limonade', 0),
(3548, 'steam:11000013c898d0d', 'fanta', 0),
(3549, 'steam:11000013c898d0d', 'golem', 0),
(3550, 'steam:11000013c898d0d', 'airbag', 0),
(3551, 'steam:11000013c898d0d', 'silvermedal_run', 0),
(3552, 'steam:11000013c898d0d', 'bandage', 0),
(3553, 'steam:11000013c898d0d', 'sachetketchup', 0),
(3554, 'steam:11000013c898d0d', 'weed', 0),
(3555, 'steam:11000013c898d0d', 'plantpot', 0),
(3556, 'steam:11000013c898d0d', 'lighter', 0),
(3557, 'steam:11000013c898d0d', 'bronzemedal_run', 0),
(3558, 'steam:11000013c898d0d', 'raisin', 0),
(3559, 'steam:11000013c898d0d', 'poudre', 0),
(3560, 'steam:11000013c898d0d', 'rhumcoca', 0),
(3561, 'steam:11000013c898d0d', 'poubelle', 0),
(3562, 'steam:11000013c898d0d', 'rhum', 0),
(3563, 'steam:11000013c898d0d', 'rhumfruit', 0),
(3564, 'steam:11000013c898d0d', 'book', 0),
(3565, 'steam:11000013c898d0d', 'pizza', 0),
(3566, 'steam:11000013c898d0d', 'meth_pooch', 0),
(3567, 'steam:11000013c898d0d', 'cocaine_uncut', 0),
(3568, 'steam:11000013c898d0d', 'necklace', 0),
(3569, 'steam:11000013c898d0d', 'macka', 0),
(3570, 'steam:11000013c898d0d', 'phonecassé', 0),
(3571, 'steam:11000013c898d0d', 'carbon', 0),
(3572, 'steam:11000013c898d0d', 'bagofdope', 0),
(3573, 'steam:11000013c898d0d', 'blowtorch', 0),
(3574, 'steam:11000013c898d0d', 'tequila', 0),
(3575, 'steam:11000013c898d0d', 'schorange', 0),
(3576, 'steam:11000013c898d0d', 'coke_pooch', 0),
(3577, 'steam:11000013c898d0d', 'meth_packaged', 0),
(3578, 'steam:11000013c898d0d', 'lowgradefert', 0),
(3579, 'steam:11000013c898d0d', 'contrat', 0),
(3580, 'steam:11000013c898d0d', 'net_cracker', 0),
(3581, 'steam:11000013c898d0d', 'menthe', 0),
(3582, 'steam:11000013c898d0d', 'phone', 0),
(3583, 'steam:11000013c898d0d', 'firstaidkit', 0),
(3584, 'steam:11000013c898d0d', 'packaged_chicken', 0),
(3585, 'steam:11000013c898d0d', 'jager', 0),
(3586, 'steam:11000013c898d0d', 'burger', 0),
(3587, 'steam:11000013c898d0d', 'carokit', 0),
(3588, 'steam:11000013c898d0d', 'wood', 0),
(3589, 'steam:11000013c898d0d', 'c4_bank', 0),
(3590, 'steam:11000013c898d0d', 'thermite', 0),
(3591, 'steam:11000013c898d0d', 'ice', 0),
(3592, 'steam:11000013c898d0d', 'handcuffs', 0),
(3593, 'steam:11000013c898d0d', 'cocaine_packaged', 0),
(3594, 'steam:11000013c898d0d', 'bolpistache', 0),
(3595, 'steam:11000013c898d0d', 'douille', 0),
(3596, 'steam:11000013c898d0d', 'lowgradefemaleseed', 0),
(3597, 'steam:11000013c898d0d', 'malbora', 0),
(3598, 'steam:11000013c898d0d', 'chips', 0),
(3599, 'steam:11000013c898d0d', 'lotteryticket', 0),
(3600, 'steam:11000013c898d0d', 'shark', 0),
(3601, 'steam:11000013c898d0d', 'clothe', 0),
(3602, 'steam:11000013c898d0d', 'lokalizator', 0),
(3603, 'steam:11000013c898d0d', 'jagerbomb', 0),
(3604, 'steam:11000013c898d0d', 'tabacblond', 0),
(3605, 'steam:11000013c898d0d', 'essence', 0),
(3606, 'steam:11000013c898d0d', 'cheesebows', 0),
(3607, 'steam:11000013c898d0d', 'jumelles', 0),
(3608, 'steam:11000013c898d0d', 'clip', 0),
(3609, 'steam:11000013c898d0d', 'caisseketchup', 0),
(3610, 'steam:11000013c898d0d', 'highrim', 0),
(3611, 'steam:11000013c898d0d', 'bolcacahuetes', 0),
(3612, 'steam:11000013c898d0d', 'gitanes', 0),
(3613, 'steam:1100001342ad7df', 'weed_untrimmed', 0),
(3614, 'steam:1100001342ad7df', 'weed_packaged', 0),
(3615, 'steam:1100001342ad7df', 'cut_money', 0),
(3616, 'steam:1100001342ad7df', 'sorted_money', 0),
(3617, 'steam:1100001342ad7df', 'cocaine_packaged', 0),
(3618, 'steam:1100001342ad7df', 'meth_packaged', 0),
(3619, 'steam:1100001342ad7df', 'cocaine_uncut', 0),
(3620, 'steam:1100001342ad7df', 'cocaine_cut', 0),
(3621, 'steam:1100001342ad7df', 'meth_raw', 0),
(3622, 'steam:1100001120b6603', 'ecstasy', 0),
(3623, 'steam:1100001120b6603', 'billet', 0),
(3624, 'steam:1100001120b6603', 'acetone', 0),
(3625, 'steam:1100001120b6603', 'methlab', 0),
(3626, 'steam:1100001120b6603', 'ecstasy_pooch', 0),
(3627, 'steam:1100001120b6603', 'crack', 0),
(3628, 'steam:1100001120b6603', 'ketamine_pooch', 0),
(3629, 'steam:1100001120b6603', 'crack_pooch', 0),
(3630, 'steam:1100001120b6603', 'lithium', 0),
(3631, 'steam:1100001120b6603', 'ketamine', 0),
(3632, 'steam:1100001120b6603', 'billet_pooch', 0),
(3633, 'steam:11000013c064c48', 'ecstasy', 0),
(3634, 'steam:11000013c064c48', 'ecstasy_pooch', 0),
(3635, 'steam:11000013c064c48', 'acetone', 0),
(3636, 'steam:11000013c064c48', 'billet', 0),
(3637, 'steam:11000013c064c48', 'methlab', 0),
(3638, 'steam:11000013c064c48', 'crack_pooch', 0),
(3639, 'steam:11000013c064c48', 'lithium', 0),
(3640, 'steam:11000013c064c48', 'ketamine_pooch', 0),
(3641, 'steam:11000013c064c48', 'crack', 0),
(3642, 'steam:11000013c064c48', 'ketamine', 0),
(3643, 'steam:11000013c064c48', 'billet_pooch', 0),
(3644, 'steam:11000014158c5cd', 'phonecassé', 0),
(3645, 'steam:11000014158c5cd', 'stone', 0),
(3646, 'steam:11000014158c5cd', 'jagerbomb', 0),
(3647, 'steam:11000014158c5cd', 'caisseketchup', 0),
(3648, 'steam:11000014158c5cd', 'billet', 0),
(3649, 'steam:11000014158c5cd', 'essence', 0),
(3650, 'steam:11000014158c5cd', 'methlab', 0),
(3651, 'steam:11000014158c5cd', 'alive_chicken', 0),
(3652, 'steam:11000014158c5cd', 'dopebag', 0),
(3653, 'steam:11000014158c5cd', 'lowgradefert', 0),
(3654, 'steam:11000014158c5cd', 'weed', 0),
(3655, 'steam:11000014158c5cd', 'pastacarbonara', 0),
(3656, 'steam:11000014158c5cd', 'cut_money', 0),
(3657, 'steam:11000014158c5cd', 'acier', 0),
(3658, 'steam:11000014158c5cd', 'highgradefert', 0),
(3659, 'steam:11000014158c5cd', 'ketamine', 0),
(3660, 'steam:11000014158c5cd', 'lighter', 0),
(3661, 'steam:11000014158c5cd', 'loka', 0),
(3662, 'steam:11000014158c5cd', 'rhum', 0),
(3663, 'steam:11000014158c5cd', 'raspberry', 0),
(3664, 'steam:11000014158c5cd', 'packaged_plank', 0),
(3665, 'steam:11000014158c5cd', 'tabacbrun', 0),
(3666, 'steam:11000014158c5cd', 'blowpipe', 0),
(3667, 'steam:11000014158c5cd', 'soda', 0),
(3668, 'steam:11000014158c5cd', 'lowgradefemaleseed', 0),
(3669, 'steam:11000014158c5cd', 'drpepper', 0),
(3670, 'steam:11000014158c5cd', 'lithium', 0),
(3671, 'steam:11000014158c5cd', 'energy', 0),
(3672, 'steam:11000014158c5cd', 'bolpistache', 0),
(3673, 'steam:11000014158c5cd', 'bandage', 0),
(3674, 'steam:11000014158c5cd', 'speaker', 0),
(3675, 'steam:11000014158c5cd', 'bronzemedal_run', 0),
(3676, 'steam:11000014158c5cd', 'fanta', 0),
(3677, 'steam:11000014158c5cd', 'watch', 0),
(3678, 'steam:11000014158c5cd', 'jus_raisin', 0),
(3679, 'steam:11000014158c5cd', 'saucisson', 0),
(3680, 'steam:11000014158c5cd', 'rhumcoca', 0),
(3681, 'steam:11000014158c5cd', 'pizza', 0),
(3682, 'steam:11000014158c5cd', 'fabric', 0),
(3683, 'steam:11000014158c5cd', 'croquettes', 0),
(3684, 'steam:11000014158c5cd', 'ketamine_pooch', 0),
(3685, 'steam:11000014158c5cd', 'whisky', 0),
(3686, 'steam:11000014158c5cd', 'repartel', 0),
(3687, 'steam:11000014158c5cd', 'coke_pooch', 0),
(3688, 'steam:11000014158c5cd', 'jagercerbere', 0),
(3689, 'steam:11000014158c5cd', 'necklace', 0),
(3690, 'steam:11000014158c5cd', 'turtlebait', 0),
(3691, 'steam:11000014158c5cd', 'lotteryticket', 0),
(3692, 'steam:11000014158c5cd', 'cutted_wood', 0),
(3693, 'steam:11000014158c5cd', 'bulletproof', 0),
(3694, 'steam:11000014158c5cd', 'brune', 0),
(3695, 'steam:11000014158c5cd', 'firstaidkit', 0),
(3696, 'steam:11000014158c5cd', 'camera', 0),
(3697, 'steam:11000014158c5cd', 'poubelle', 0),
(3698, 'steam:11000014158c5cd', 'meth', 0),
(3699, 'steam:11000014158c5cd', 'opium_pooch', 0),
(3700, 'steam:11000014158c5cd', 'ecstasy_pooch', 0),
(3701, 'steam:11000014158c5cd', 'meth_packaged', 0),
(3702, 'steam:11000014158c5cd', 'orange', 0),
(3703, 'steam:11000014158c5cd', 'petrol_raffin', 0),
(3704, 'steam:11000014158c5cd', 'chips', 0),
(3705, 'steam:11000014158c5cd', 'water', 0),
(3706, 'steam:11000014158c5cd', 'crack_pooch', 0),
(3707, 'steam:11000014158c5cd', 'cocaine_uncut', 0),
(3708, 'steam:11000014158c5cd', 'fixtool', 0),
(3709, 'steam:11000014158c5cd', 'blowtorch', 0),
(3710, 'steam:11000014158c5cd', 'ecstasy', 0),
(3711, 'steam:11000014158c5cd', 'hat', 0),
(3712, 'steam:11000014158c5cd', 'wateringcan', 0),
(3713, 'steam:11000014158c5cd', 'iron', 0),
(3714, 'steam:11000014158c5cd', 'wool', 0),
(3715, 'steam:11000014158c5cd', 'douille', 0),
(3716, 'steam:11000014158c5cd', 'laptop', 0),
(3717, 'steam:11000014158c5cd', 'c4_bank', 0),
(3718, 'steam:11000014158c5cd', 'grand_cru', 0),
(3719, 'steam:11000014158c5cd', 'shirt', 0),
(3720, 'steam:11000014158c5cd', 'fixkit', 0),
(3721, 'steam:11000014158c5cd', 'gold', 0),
(3722, 'steam:11000014158c5cd', 'Marabou Mjölkchoklad', 0),
(3723, 'steam:11000014158c5cd', 'jusfruit', 0),
(3724, 'steam:11000014158c5cd', 'golem', 0),
(3725, 'steam:11000014158c5cd', 'net_cracker', 0),
(3726, 'steam:11000014158c5cd', 'diamond', 0),
(3727, 'steam:11000014158c5cd', 'battery', 0),
(3728, 'steam:11000014158c5cd', 'metreshooter', 0),
(3729, 'steam:11000014158c5cd', 'bolnoixcajou', 0),
(3730, 'steam:11000014158c5cd', 'coke', 0),
(3731, 'steam:11000014158c5cd', 'jager', 0),
(3732, 'steam:11000014158c5cd', 'weed_untrimmed', 0),
(3733, 'steam:11000014158c5cd', 'sprite', 0),
(3734, 'steam:11000014158c5cd', 'wood', 0),
(3735, 'steam:11000014158c5cd', 'sachetketchup', 0),
(3736, 'steam:11000014158c5cd', 'carbon', 0),
(3737, 'steam:11000014158c5cd', 'gazbottle', 0),
(3738, 'steam:11000014158c5cd', 'whiskycoca', 0),
(3739, 'steam:11000014158c5cd', 'weed_packaged', 0),
(3740, 'steam:11000014158c5cd', 'highrim', 0),
(3741, 'steam:11000014158c5cd', 'weed_pooch', 0),
(3742, 'steam:11000014158c5cd', 'shark', 0),
(3743, 'steam:11000014158c5cd', 'vodkafruit', 0),
(3744, 'steam:11000014158c5cd', 'thermite', 0),
(3745, 'steam:11000014158c5cd', 'grapperaisin', 0),
(3746, 'steam:11000014158c5cd', 'macka', 0),
(3747, 'steam:11000014158c5cd', 'blonde', 0),
(3748, 'steam:11000014158c5cd', 'washed_stone', 0),
(3749, 'steam:11000014158c5cd', 'cocaine_cut', 0),
(3750, 'steam:11000014158c5cd', 'vine', 0),
(3751, 'steam:11000014158c5cd', 'drugscales', 0),
(3752, 'steam:11000014158c5cd', 'bolcacahuetes', 0),
(3753, 'steam:11000014158c5cd', 'vodka', 0),
(3754, 'steam:11000014158c5cd', 'meth_raw', 0),
(3755, 'steam:11000014158c5cd', 'turtle', 0),
(3756, 'steam:11000014158c5cd', 'trimmedweed', 0),
(3757, 'steam:11000014158c5cd', 'fishbait', 0),
(3758, 'steam:11000014158c5cd', 'toothpaste', 0),
(3759, 'steam:11000014158c5cd', 'mixapero', 0),
(3760, 'steam:11000014158c5cd', 'tequila', 0),
(3761, 'steam:11000014158c5cd', 'lowradio', 0),
(3762, 'steam:11000014158c5cd', 'bagofdope', 0),
(3763, 'steam:11000014158c5cd', 'vodkaenergy', 0),
(3764, 'steam:11000014158c5cd', 'pants', 0),
(3765, 'steam:11000014158c5cd', 'mojito', 0),
(3766, 'steam:11000014158c5cd', 'meth_pooch', 0),
(3767, 'steam:11000014158c5cd', 'bread', 0),
(3768, 'steam:11000014158c5cd', 'tabacblondsec', 0),
(3769, 'steam:11000014158c5cd', 'poudre', 0),
(3770, 'steam:11000014158c5cd', 'drill', 0),
(3771, 'steam:11000014158c5cd', 'tabacblond', 0),
(3772, 'steam:11000014158c5cd', 'plantpot', 0),
(3773, 'steam:11000014158c5cd', 'stockrim', 0),
(3774, 'steam:11000014158c5cd', 'steak', 0),
(3775, 'steam:11000014158c5cd', 'highgradefemaleseed', 0),
(3776, 'steam:11000014158c5cd', 'sorted_money', 0),
(3777, 'steam:11000014158c5cd', 'slaughtered_chicken', 0),
(3778, 'steam:11000014158c5cd', 'bag', 0),
(3779, 'steam:11000014158c5cd', 'schorange', 0),
(3780, 'steam:11000014158c5cd', 'lowgrademaleseed', 0),
(3781, 'steam:11000014158c5cd', 'book', 0),
(3782, 'steam:11000014158c5cd', 'clothe', 0),
(3783, 'steam:11000014158c5cd', 'shoes', 0),
(3784, 'steam:11000014158c5cd', 'raisin', 0),
(3785, 'steam:11000014158c5cd', 'rhumfruit', 0),
(3786, 'steam:11000014158c5cd', 'opium', 0),
(3787, 'steam:11000014158c5cd', 'saffron', 0),
(3788, 'steam:11000014158c5cd', 'ring', 0),
(3789, 'steam:11000014158c5cd', 'purifiedwater', 0),
(3790, 'steam:11000014158c5cd', 'jumelles', 0),
(3791, 'steam:11000014158c5cd', 'phone', 0),
(3792, 'steam:11000014158c5cd', 'highradio', 0),
(3793, 'steam:11000014158c5cd', 'contrat', 0),
(3794, 'steam:11000014158c5cd', 'oxygen_mask', 0),
(3795, 'steam:11000014158c5cd', 'cheesebows', 0),
(3796, 'steam:11000014158c5cd', 'airbag', 0),
(3797, 'steam:11000014158c5cd', 'ice', 0),
(3798, 'steam:11000014158c5cd', 'packaged_chicken', 0),
(3799, 'steam:11000014158c5cd', 'burger', 0),
(3800, 'steam:11000014158c5cd', 'limonade', 0),
(3801, 'steam:11000014158c5cd', 'lockpick', 0),
(3802, 'steam:11000014158c5cd', 'xanax', 0),
(3803, 'steam:11000014158c5cd', 'houblon', 0),
(3804, 'steam:11000014158c5cd', 'copper', 0),
(3805, 'steam:11000014158c5cd', 'goldmedal_run', 0),
(3806, 'steam:11000014158c5cd', 'tabacbrunsec', 0),
(3807, 'steam:11000014158c5cd', 'carokit', 0),
(3808, 'steam:11000014158c5cd', 'highgrademaleseed', 0),
(3809, 'steam:11000014158c5cd', 'petrol', 0),
(3810, 'steam:11000014158c5cd', 'cigarett', 0),
(3811, 'steam:11000014158c5cd', 'cocacola', 0),
(3812, 'steam:11000014158c5cd', 'fishingrod', 0),
(3813, 'steam:11000014158c5cd', 'menthe', 0),
(3814, 'steam:11000014158c5cd', 'billet_pooch', 0),
(3815, 'steam:11000014158c5cd', 'fish', 0),
(3816, 'steam:11000014158c5cd', 'handcuffs', 0),
(3817, 'steam:11000014158c5cd', 'lokalizator', 0),
(3818, 'steam:11000014158c5cd', 'hifi', 0),
(3819, 'steam:11000014158c5cd', 'coupon', 0),
(3820, 'steam:11000014158c5cd', 'martini', 0),
(3821, 'steam:11000014158c5cd', 'bolchips', 0),
(3822, 'steam:11000014158c5cd', 'silvermedal_run', 0),
(3823, 'steam:11000014158c5cd', 'jewels', 0),
(3824, 'steam:11000014158c5cd', 'gitanes', 0),
(3825, 'steam:11000014158c5cd', 'carotool', 0),
(3826, 'steam:11000014158c5cd', 'cheese', 0),
(3827, 'steam:11000014158c5cd', 'acetone', 0),
(3828, 'steam:11000014158c5cd', 'malbora', 0),
(3829, 'steam:11000014158c5cd', 'teqpaf', 0),
(3830, 'steam:11000014158c5cd', 'medikit', 0),
(3831, 'steam:11000014158c5cd', 'crack', 0),
(3832, 'steam:11000014158c5cd', 'cocaine_packaged', 0),
(3833, 'steam:11000014158c5cd', 'icetea', 0),
(3834, 'steam:11000014158c5cd', 'clip', 0),
(3835, 'steam:110000109d07b07', 'ecstasy', 0),
(3836, 'steam:110000109d07b07', 'acetone', 0),
(3837, 'steam:110000109d07b07', 'crack', 0),
(3838, 'steam:110000109d07b07', 'crack_pooch', 0),
(3839, 'steam:110000109d07b07', 'methlab', 0),
(3840, 'steam:110000109d07b07', 'ecstasy_pooch', 0),
(3841, 'steam:110000109d07b07', 'ketamine_pooch', 0),
(3842, 'steam:110000109d07b07', 'billet_pooch', 0),
(3843, 'steam:110000109d07b07', 'lithium', 0),
(3844, 'steam:110000109d07b07', 'billet', 0),
(3845, 'steam:110000109d07b07', 'ketamine', 0),
(3846, 'steam:110000141b8e146', 'jagercerbere', 0),
(3847, 'steam:110000141b8e146', 'saucisson', 0),
(3848, 'steam:110000141b8e146', 'phone', 0),
(3849, 'steam:110000141b8e146', 'bandage', 0),
(3850, 'steam:110000141b8e146', 'schorange', 0),
(3851, 'steam:110000141b8e146', 'clip', 0),
(3852, 'steam:110000141b8e146', 'cocacola', 0),
(3853, 'steam:110000141b8e146', 'jus_raisin', 0),
(3854, 'steam:110000141b8e146', 'fishingrod', 0),
(3855, 'steam:110000141b8e146', 'icetea', 0),
(3856, 'steam:110000141b8e146', 'wateringcan', 0),
(3857, 'steam:110000141b8e146', 'grand_cru', 0),
(3858, 'steam:110000141b8e146', 'weed_pooch', 0),
(3859, 'steam:110000141b8e146', 'medikit', 0),
(3860, 'steam:110000141b8e146', 'sorted_money', 0),
(3861, 'steam:110000141b8e146', 'golem', 0),
(3862, 'steam:110000141b8e146', 'fabric', 0),
(3863, 'steam:110000141b8e146', 'croquettes', 0),
(3864, 'steam:110000141b8e146', 'macka', 0),
(3865, 'steam:110000141b8e146', 'cheesebows', 0),
(3866, 'steam:110000141b8e146', 'phonecassé', 0),
(3867, 'steam:110000141b8e146', 'weed', 0),
(3868, 'steam:110000141b8e146', 'sachetketchup', 0),
(3869, 'steam:110000141b8e146', 'carokit', 0),
(3870, 'steam:110000141b8e146', 'drill', 0),
(3871, 'steam:110000141b8e146', 'tabacblondsec', 0),
(3872, 'steam:110000141b8e146', 'petrol_raffin', 0),
(3873, 'steam:110000141b8e146', 'oxygen_mask', 0),
(3874, 'steam:110000141b8e146', 'vine', 0),
(3875, 'steam:110000141b8e146', 'rhumfruit', 0),
(3876, 'steam:110000141b8e146', 'menthe', 0),
(3877, 'steam:110000141b8e146', 'repartel', 0),
(3878, 'steam:110000141b8e146', 'jusfruit', 0),
(3879, 'steam:110000141b8e146', 'metreshooter', 0),
(3880, 'steam:110000141b8e146', 'drugscales', 0),
(3881, 'steam:110000141b8e146', 'highgradefemaleseed', 0),
(3882, 'steam:110000141b8e146', 'raspberry', 0),
(3883, 'steam:110000141b8e146', 'blowpipe', 0),
(3884, 'steam:110000141b8e146', 'jumelles', 0),
(3885, 'steam:110000141b8e146', 'shoes', 0),
(3886, 'steam:110000141b8e146', 'meth_raw', 0),
(3887, 'steam:110000141b8e146', 'book', 0),
(3888, 'steam:110000141b8e146', 'crack_pooch', 0),
(3889, 'steam:110000141b8e146', 'meth_pooch', 0),
(3890, 'steam:110000141b8e146', 'wool', 0),
(3891, 'steam:110000141b8e146', 'pastacarbonara', 0),
(3892, 'steam:110000141b8e146', 'gold', 0),
(3893, 'steam:110000141b8e146', 'drpepper', 0),
(3894, 'steam:110000141b8e146', 'highgradefert', 0),
(3895, 'steam:110000141b8e146', 'bronzemedal_run', 0),
(3896, 'steam:110000141b8e146', 'limonade', 0),
(3897, 'steam:110000141b8e146', 'grapperaisin', 0),
(3898, 'steam:110000141b8e146', 'acier', 0),
(3899, 'steam:110000141b8e146', 'ketamine', 0),
(3900, 'steam:110000141b8e146', 'lighter', 0),
(3901, 'steam:110000141b8e146', 'shirt', 0),
(3902, 'steam:110000141b8e146', 'opium', 0),
(3903, 'steam:110000141b8e146', 'stone', 0),
(3904, 'steam:110000141b8e146', 'fishbait', 0),
(3905, 'steam:110000141b8e146', 'goldmedal_run', 0),
(3906, 'steam:110000141b8e146', 'highrim', 0),
(3907, 'steam:110000141b8e146', 'meth_packaged', 0),
(3908, 'steam:110000141b8e146', 'acetone', 0),
(3909, 'steam:110000141b8e146', 'lotteryticket', 0),
(3910, 'steam:110000141b8e146', 'jagerbomb', 0),
(3911, 'steam:110000141b8e146', 'lithium', 0),
(3912, 'steam:110000141b8e146', 'bagofdope', 0),
(3913, 'steam:110000141b8e146', 'hat', 0),
(3914, 'steam:110000141b8e146', 'fixtool', 0),
(3915, 'steam:110000141b8e146', 'ketamine_pooch', 0),
(3916, 'steam:110000141b8e146', 'burger', 0),
(3917, 'steam:110000141b8e146', 'lowgradefemaleseed', 0),
(3918, 'steam:110000141b8e146', 'loka', 0),
(3919, 'steam:110000141b8e146', 'martini', 0),
(3920, 'steam:110000141b8e146', 'highgrademaleseed', 0),
(3921, 'steam:110000141b8e146', 'bread', 0),
(3922, 'steam:110000141b8e146', 'jager', 0),
(3923, 'steam:110000141b8e146', 'whisky', 0),
(3924, 'steam:110000141b8e146', 'chips', 0),
(3925, 'steam:110000141b8e146', 'fish', 0),
(3926, 'steam:110000141b8e146', 'methlab', 0),
(3927, 'steam:110000141b8e146', 'raisin', 0),
(3928, 'steam:110000141b8e146', 'camera', 0),
(3929, 'steam:110000141b8e146', 'lowradio', 0),
(3930, 'steam:110000141b8e146', 'wood', 0),
(3931, 'steam:110000141b8e146', 'ecstasy_pooch', 0),
(3932, 'steam:110000141b8e146', 'cocaine_cut', 0),
(3933, 'steam:110000141b8e146', 'whiskycoca', 0),
(3934, 'steam:110000141b8e146', 'malbora', 0),
(3935, 'steam:110000141b8e146', 'ice', 0),
(3936, 'steam:110000141b8e146', 'weed_packaged', 0),
(3937, 'steam:110000141b8e146', 'orange', 0),
(3938, 'steam:110000141b8e146', 'diamond', 0),
(3939, 'steam:110000141b8e146', 'washed_stone', 0),
(3940, 'steam:110000141b8e146', 'water', 0),
(3941, 'steam:110000141b8e146', 'gitanes', 0),
(3942, 'steam:110000141b8e146', 'watch', 0),
(3943, 'steam:110000141b8e146', 'turtle', 0),
(3944, 'steam:110000141b8e146', 'vodkaenergy', 0),
(3945, 'steam:110000141b8e146', 'bag', 0),
(3946, 'steam:110000141b8e146', 'iron', 0),
(3947, 'steam:110000141b8e146', 'meth', 0),
(3948, 'steam:110000141b8e146', 'gazbottle', 0),
(3949, 'steam:110000141b8e146', 'packaged_plank', 0),
(3950, 'steam:110000141b8e146', 'coke', 0),
(3951, 'steam:110000141b8e146', 'trimmedweed', 0),
(3952, 'steam:110000141b8e146', 'alive_chicken', 0),
(3953, 'steam:110000141b8e146', 'essence', 0),
(3954, 'steam:110000141b8e146', 'fixkit', 0),
(3955, 'steam:110000141b8e146', 'speaker', 0),
(3956, 'steam:110000141b8e146', 'teqpaf', 0),
(3957, 'steam:110000141b8e146', 'thermite', 0),
(3958, 'steam:110000141b8e146', 'toothpaste', 0),
(3959, 'steam:110000141b8e146', 'steak', 0),
(3960, 'steam:110000141b8e146', 'tabacbrun', 0),
(3961, 'steam:110000141b8e146', 'lowgrademaleseed', 0),
(3962, 'steam:110000141b8e146', 'tequila', 0),
(3963, 'steam:110000141b8e146', 'tabacbrunsec', 0),
(3964, 'steam:110000141b8e146', 'tabacblond', 0),
(3965, 'steam:110000141b8e146', 'coupon', 0),
(3966, 'steam:110000141b8e146', 'stockrim', 0),
(3967, 'steam:110000141b8e146', 'opium_pooch', 0),
(3968, 'steam:110000141b8e146', 'sprite', 0),
(3969, 'steam:110000141b8e146', 'handcuffs', 0),
(3970, 'steam:110000141b8e146', 'soda', 0),
(3971, 'steam:110000141b8e146', 'c4_bank', 0),
(3972, 'steam:110000141b8e146', 'petrol', 0),
(3973, 'steam:110000141b8e146', 'blonde', 0),
(3974, 'steam:110000141b8e146', 'laptop', 0),
(3975, 'steam:110000141b8e146', 'packaged_chicken', 0),
(3976, 'steam:110000141b8e146', 'cocaine_packaged', 0),
(3977, 'steam:110000141b8e146', 'silvermedal_run', 0),
(3978, 'steam:110000141b8e146', 'cigarett', 0),
(3979, 'steam:110000141b8e146', 'fanta', 0),
(3980, 'steam:110000141b8e146', 'shark', 0),
(3981, 'steam:110000141b8e146', 'saffron', 0),
(3982, 'steam:110000141b8e146', 'plantpot', 0),
(3983, 'steam:110000141b8e146', 'lokalizator', 0),
(3984, 'steam:110000141b8e146', 'ring', 0),
(3985, 'steam:110000141b8e146', 'bulletproof', 0),
(3986, 'steam:110000141b8e146', 'rhumcoca', 0),
(3987, 'steam:110000141b8e146', 'bolpistache', 0),
(3988, 'steam:110000141b8e146', 'caisseketchup', 0),
(3989, 'steam:110000141b8e146', 'cocaine_uncut', 0),
(3990, 'steam:110000141b8e146', 'clothe', 0),
(3991, 'steam:110000141b8e146', 'ecstasy', 0),
(3992, 'steam:110000141b8e146', 'purifiedwater', 0),
(3993, 'steam:110000141b8e146', 'jewels', 0),
(3994, 'steam:110000141b8e146', 'bolcacahuetes', 0),
(3995, 'steam:110000141b8e146', 'pizza', 0),
(3996, 'steam:110000141b8e146', 'turtlebait', 0),
(3997, 'steam:110000141b8e146', 'poudre', 0),
(3998, 'steam:110000141b8e146', 'dopebag', 0),
(3999, 'steam:110000141b8e146', 'vodka', 0),
(4000, 'steam:110000141b8e146', 'pants', 0),
(4001, 'steam:110000141b8e146', 'slaughtered_chicken', 0),
(4002, 'steam:110000141b8e146', 'airbag', 0),
(4003, 'steam:110000141b8e146', 'xanax', 0),
(4004, 'steam:110000141b8e146', 'coke_pooch', 0),
(4005, 'steam:110000141b8e146', 'blowtorch', 0),
(4006, 'steam:110000141b8e146', 'energy', 0),
(4007, 'steam:110000141b8e146', 'weed_untrimmed', 0),
(4008, 'steam:110000141b8e146', 'net_cracker', 0),
(4009, 'steam:110000141b8e146', 'cutted_wood', 0),
(4010, 'steam:110000141b8e146', 'bolnoixcajou', 0),
(4011, 'steam:110000141b8e146', 'necklace', 0),
(4012, 'steam:110000141b8e146', 'mojito', 0),
(4013, 'steam:110000141b8e146', 'carotool', 0),
(4014, 'steam:110000141b8e146', 'poubelle', 0),
(4015, 'steam:110000141b8e146', 'battery', 0),
(4016, 'steam:110000141b8e146', 'bolchips', 0),
(4017, 'steam:110000141b8e146', 'highradio', 0),
(4018, 'steam:110000141b8e146', 'douille', 0),
(4019, 'steam:110000141b8e146', 'mixapero', 0),
(4020, 'steam:110000141b8e146', 'billet_pooch', 0),
(4021, 'steam:110000141b8e146', 'Marabou Mjölkchoklad', 0),
(4022, 'steam:110000141b8e146', 'vodkafruit', 0),
(4023, 'steam:110000141b8e146', 'billet', 0),
(4024, 'steam:110000141b8e146', 'lowgradefert', 0),
(4025, 'steam:110000141b8e146', 'lockpick', 0),
(4026, 'steam:110000141b8e146', 'cut_money', 0),
(4027, 'steam:110000141b8e146', 'rhum', 0),
(4028, 'steam:110000141b8e146', 'firstaidkit', 0),
(4029, 'steam:110000141b8e146', 'hifi', 0),
(4030, 'steam:110000141b8e146', 'carbon', 0),
(4031, 'steam:110000141b8e146', 'houblon', 0),
(4032, 'steam:110000141b8e146', 'copper', 0),
(4033, 'steam:110000141b8e146', 'cheese', 0),
(4034, 'steam:110000141b8e146', 'brune', 0),
(4035, 'steam:110000141b8e146', 'contrat', 0),
(4036, 'steam:110000141b8e146', 'crack', 0),
(4037, 'steam:11000011291e036', 'ecstasy_pooch', 0),
(4038, 'steam:11000011291e036', 'crack', 0),
(4039, 'steam:11000011291e036', 'billet_pooch', 0),
(4040, 'steam:11000011291e036', 'billet', 0),
(4041, 'steam:11000011291e036', 'ketamine_pooch', 0),
(4042, 'steam:11000011291e036', 'acetone', 0),
(4043, 'steam:11000011291e036', 'crack_pooch', 0),
(4044, 'steam:11000011291e036', 'lithium', 0),
(4045, 'steam:11000011291e036', 'ecstasy', 0),
(4046, 'steam:11000011291e036', 'ketamine', 0),
(4047, 'steam:11000011291e036', 'methlab', 0),
(4048, 'steam:110000134884e5b', 'ketamine_pooch', 0),
(4049, 'steam:110000134884e5b', 'billet_pooch', 0),
(4050, 'steam:110000134884e5b', 'lithium', 0),
(4051, 'steam:110000134884e5b', 'ecstasy_pooch', 0),
(4052, 'steam:110000134884e5b', 'methlab', 0),
(4053, 'steam:110000134884e5b', 'billet', 0),
(4054, 'steam:110000134884e5b', 'ketamine', 0),
(4055, 'steam:110000134884e5b', 'crack', 0),
(4056, 'steam:110000134884e5b', 'ecstasy', 0),
(4057, 'steam:110000134884e5b', 'acetone', 0),
(4058, 'steam:110000134884e5b', 'crack_pooch', 0),
(4059, 'steam:11000013f8236cf', 'phone', 1),
(4060, 'steam:11000013f8236cf', 'opium', 0),
(4061, 'steam:11000013f8236cf', 'bagofdope', 0),
(4062, 'steam:11000013f8236cf', 'fabric', 0),
(4063, 'steam:11000013f8236cf', 'petrol_raffin', 0),
(4064, 'steam:11000013f8236cf', 'jagercerbere', 0),
(4065, 'steam:11000013f8236cf', 'weed_untrimmed', 0),
(4066, 'steam:11000013f8236cf', 'tabacblondsec', 0),
(4067, 'steam:11000013f8236cf', 'cocacola', 0),
(4068, 'steam:11000013f8236cf', 'houblon', 0),
(4069, 'steam:11000013f8236cf', 'acier', 0),
(4070, 'steam:11000013f8236cf', 'saucisson', 0),
(4071, 'steam:11000013f8236cf', 'jager', 0),
(4072, 'steam:11000013f8236cf', 'bolchips', 0),
(4073, 'steam:11000013f8236cf', 'lowgrademaleseed', 0),
(4074, 'steam:11000013f8236cf', 'drpepper', 0),
(4075, 'steam:11000013f8236cf', 'ice', 0),
(4076, 'steam:11000013f8236cf', 'bolnoixcajou', 0),
(4077, 'steam:11000013f8236cf', 'handcuffs', 0),
(4078, 'steam:11000013f8236cf', 'vodka', 0),
(4079, 'steam:11000013f8236cf', 'meth', 0),
(4080, 'steam:11000013f8236cf', 'brune', 0),
(4081, 'steam:11000013f8236cf', 'croquettes', 0),
(4082, 'steam:11000013f8236cf', 'grand_cru', 0),
(4083, 'steam:11000013f8236cf', 'mojito', 0),
(4084, 'steam:11000013f8236cf', 'essence', 0),
(4085, 'steam:11000013f8236cf', 'lotteryticket', 0),
(4086, 'steam:11000013f8236cf', 'repartel', 0),
(4087, 'steam:11000013f8236cf', 'drill', 0),
(4088, 'steam:11000013f8236cf', 'teqpaf', 0),
(4089, 'steam:11000013f8236cf', 'fishingrod', 0),
(4090, 'steam:11000013f8236cf', 'weed', 0),
(4091, 'steam:11000013f8236cf', 'packaged_chicken', 0),
(4092, 'steam:11000013f8236cf', 'c4_bank', 0),
(4093, 'steam:11000013f8236cf', 'dopebag', 0),
(4094, 'steam:11000013f8236cf', 'drugscales', 0),
(4095, 'steam:11000013f8236cf', 'ketamine_pooch', 0),
(4096, 'steam:11000013f8236cf', 'lighter', 0),
(4097, 'steam:11000013f8236cf', 'airbag', 0),
(4098, 'steam:11000013f8236cf', 'diamond', 0),
(4099, 'steam:11000013f8236cf', 'carbon', 0),
(4100, 'steam:11000013f8236cf', 'highradio', 0),
(4101, 'steam:11000013f8236cf', 'contrat', 0),
(4102, 'steam:11000013f8236cf', 'bag', 0),
(4103, 'steam:11000013f8236cf', 'stockrim', 0),
(4104, 'steam:11000013f8236cf', 'billet_pooch', 0),
(4105, 'steam:11000013f8236cf', 'lithium', 0),
(4106, 'steam:11000013f8236cf', 'weed_packaged', 0),
(4107, 'steam:11000013f8236cf', 'sprite', 0),
(4108, 'steam:11000013f8236cf', 'highrim', 0),
(4109, 'steam:11000013f8236cf', 'grapperaisin', 0),
(4110, 'steam:11000013f8236cf', 'blowtorch', 0),
(4111, 'steam:11000013f8236cf', 'saffron', 0),
(4112, 'steam:11000013f8236cf', 'ring', 0),
(4113, 'steam:11000013f8236cf', 'ecstasy_pooch', 0),
(4114, 'steam:11000013f8236cf', 'book', 0),
(4115, 'steam:11000013f8236cf', 'cheese', 0),
(4116, 'steam:11000013f8236cf', 'phonecassé', 0),
(4117, 'steam:11000013f8236cf', 'methlab', 0),
(4118, 'steam:11000013f8236cf', 'cutted_wood', 0),
(4119, 'steam:11000013f8236cf', 'loka', 0),
(4120, 'steam:11000013f8236cf', 'cheesebows', 0),
(4121, 'steam:11000013f8236cf', 'bulletproof', 0),
(4122, 'steam:11000013f8236cf', 'coupon', 0),
(4123, 'steam:11000013f8236cf', 'bread', 10),
(4124, 'steam:11000013f8236cf', 'fish', 0),
(4125, 'steam:11000013f8236cf', 'lockpick', 0),
(4126, 'steam:11000013f8236cf', 'bandage', 0),
(4127, 'steam:11000013f8236cf', 'vodkafruit', 0),
(4128, 'steam:11000013f8236cf', 'speaker', 0),
(4129, 'steam:11000013f8236cf', 'bronzemedal_run', 0),
(4130, 'steam:11000013f8236cf', 'clothe', 0),
(4131, 'steam:11000013f8236cf', 'icetea', 0),
(4132, 'steam:11000013f8236cf', 'raisin', 0),
(4133, 'steam:11000013f8236cf', 'jewels', 0),
(4134, 'steam:11000013f8236cf', 'ecstasy', 0),
(4135, 'steam:11000013f8236cf', 'tabacblond', 0),
(4136, 'steam:11000013f8236cf', 'jus_raisin', 0),
(4137, 'steam:11000013f8236cf', 'highgradefemaleseed', 0),
(4138, 'steam:11000013f8236cf', 'gazbottle', 0),
(4139, 'steam:11000013f8236cf', 'gold', 0),
(4140, 'steam:11000013f8236cf', 'billet', 0),
(4141, 'steam:11000013f8236cf', 'alive_chicken', 0),
(4142, 'steam:11000013f8236cf', 'xanax', 0),
(4143, 'steam:11000013f8236cf', 'stone', 0),
(4144, 'steam:11000013f8236cf', 'carotool', 0),
(4145, 'steam:11000013f8236cf', 'wood', 0),
(4146, 'steam:11000013f8236cf', 'medikit', 0),
(4147, 'steam:11000013f8236cf', 'cocaine_cut', 0),
(4148, 'steam:11000013f8236cf', 'wool', 0),
(4149, 'steam:11000013f8236cf', 'martini', 0),
(4150, 'steam:11000013f8236cf', 'packaged_plank', 0),
(4151, 'steam:11000013f8236cf', 'rhumfruit', 0),
(4152, 'steam:11000013f8236cf', 'coke_pooch', 0),
(4153, 'steam:11000013f8236cf', 'cocaine_packaged', 0),
(4154, 'steam:11000013f8236cf', 'wateringcan', 0),
(4155, 'steam:11000013f8236cf', 'toothpaste', 0),
(4156, 'steam:11000013f8236cf', 'whisky', 0),
(4157, 'steam:11000013f8236cf', 'ketamine', 0),
(4158, 'steam:11000013f8236cf', 'crack', 0),
(4159, 'steam:11000013f8236cf', 'meth_packaged', 0),
(4160, 'steam:11000013f8236cf', 'silvermedal_run', 0),
(4161, 'steam:11000013f8236cf', 'watch', 0),
(4162, 'steam:11000013f8236cf', 'water', 0),
(4163, 'steam:11000013f8236cf', 'camera', 0),
(4164, 'steam:11000013f8236cf', 'cut_money', 0),
(4165, 'steam:11000013f8236cf', 'vodkaenergy', 0),
(4166, 'steam:11000013f8236cf', 'fanta', 0),
(4167, 'steam:11000013f8236cf', 'vine', 0),
(4168, 'steam:11000013f8236cf', 'cigarett', 0),
(4169, 'steam:11000013f8236cf', 'turtle', 0),
(4170, 'steam:11000013f8236cf', 'poudre', 0),
(4171, 'steam:11000013f8236cf', 'lowgradefert', 0),
(4172, 'steam:11000013f8236cf', 'goldmedal_run', 0),
(4173, 'steam:11000013f8236cf', 'turtlebait', 0),
(4174, 'steam:11000013f8236cf', 'oxygen_mask', 0),
(4175, 'steam:11000013f8236cf', 'trimmedweed', 0),
(4176, 'steam:11000013f8236cf', 'jusfruit', 0),
(4177, 'steam:11000013f8236cf', 'weed_pooch', 0),
(4178, 'steam:11000013f8236cf', 'hifi', 0),
(4179, 'steam:11000013f8236cf', 'energy', 0),
(4180, 'steam:11000013f8236cf', 'thermite', 0),
(4181, 'steam:11000013f8236cf', 'tabacbrunsec', 0),
(4182, 'steam:11000013f8236cf', 'jagerbomb', 0),
(4183, 'steam:11000013f8236cf', 'tequila', 0),
(4184, 'steam:11000013f8236cf', 'net_cracker', 0),
(4185, 'steam:11000013f8236cf', 'cocaine_uncut', 0),
(4186, 'steam:11000013f8236cf', 'steak', 0),
(4187, 'steam:11000013f8236cf', 'menthe', 0),
(4188, 'steam:11000013f8236cf', 'Marabou Mjölkchoklad', 0),
(4189, 'steam:11000013f8236cf', 'slaughtered_chicken', 0),
(4190, 'steam:11000013f8236cf', 'shoes', 0),
(4191, 'steam:11000013f8236cf', 'gitanes', 0),
(4192, 'steam:11000013f8236cf', 'washed_stone', 0),
(4193, 'steam:11000013f8236cf', 'mixapero', 0),
(4194, 'steam:11000013f8236cf', 'shirt', 0),
(4195, 'steam:11000013f8236cf', 'shark', 0),
(4196, 'steam:11000013f8236cf', 'caisseketchup', 0),
(4197, 'steam:11000013f8236cf', 'lowgradefemaleseed', 0),
(4198, 'steam:11000013f8236cf', 'schorange', 0),
(4199, 'steam:11000013f8236cf', 'rhum', 0),
(4200, 'steam:11000013f8236cf', 'necklace', 0),
(4201, 'steam:11000013f8236cf', 'rhumcoca', 0),
(4202, 'steam:11000013f8236cf', 'fishbait', 0),
(4203, 'steam:11000013f8236cf', 'purifiedwater', 0),
(4204, 'steam:11000013f8236cf', 'meth_pooch', 0),
(4205, 'steam:11000013f8236cf', 'coke', 0),
(4206, 'steam:11000013f8236cf', 'douille', 0),
(4207, 'steam:11000013f8236cf', 'hat', 0),
(4208, 'steam:11000013f8236cf', 'fixkit', 0),
(4209, 'steam:11000013f8236cf', 'plantpot', 0),
(4210, 'steam:11000013f8236cf', 'petrol', 0),
(4211, 'steam:11000013f8236cf', 'pastacarbonara', 0),
(4212, 'steam:11000013f8236cf', 'poubelle', 0),
(4213, 'steam:11000013f8236cf', 'pizza', 0),
(4214, 'steam:11000013f8236cf', 'orange', 0),
(4215, 'steam:11000013f8236cf', 'pants', 0),
(4216, 'steam:11000013f8236cf', 'bolpistache', 0),
(4217, 'steam:11000013f8236cf', 'macka', 0),
(4218, 'steam:11000013f8236cf', 'acetone', 0),
(4219, 'steam:11000013f8236cf', 'tabacbrun', 0),
(4220, 'steam:11000013f8236cf', 'carokit', 0),
(4221, 'steam:11000013f8236cf', 'highgrademaleseed', 0),
(4222, 'steam:11000013f8236cf', 'opium_pooch', 0),
(4223, 'steam:11000013f8236cf', 'fixtool', 0),
(4224, 'steam:11000013f8236cf', 'limonade', 0),
(4225, 'steam:11000013f8236cf', 'sachetketchup', 0),
(4226, 'steam:11000013f8236cf', 'battery', 0),
(4227, 'steam:11000013f8236cf', 'clip', 0),
(4228, 'steam:11000013f8236cf', 'metreshooter', 0),
(4229, 'steam:11000013f8236cf', 'burger', 6),
(4230, 'steam:11000013f8236cf', 'jumelles', 0),
(4231, 'steam:11000013f8236cf', 'golem', 0),
(4232, 'steam:11000013f8236cf', 'meth_raw', 0),
(4233, 'steam:11000013f8236cf', 'chips', 0),
(4234, 'steam:11000013f8236cf', 'soda', 0),
(4235, 'steam:11000013f8236cf', 'firstaidkit', 0),
(4236, 'steam:11000013f8236cf', 'crack_pooch', 0),
(4237, 'steam:11000013f8236cf', 'whiskycoca', 0),
(4238, 'steam:11000013f8236cf', 'sorted_money', 0),
(4239, 'steam:11000013f8236cf', 'bolcacahuetes', 0),
(4240, 'steam:11000013f8236cf', 'malbora', 0),
(4241, 'steam:11000013f8236cf', 'laptop', 0),
(4242, 'steam:11000013f8236cf', 'raspberry', 0),
(4243, 'steam:11000013f8236cf', 'copper', 0),
(4244, 'steam:11000013f8236cf', 'iron', 0),
(4245, 'steam:11000013f8236cf', 'blowpipe', 0),
(4246, 'steam:11000013f8236cf', 'highgradefert', 0),
(4247, 'steam:11000013f8236cf', 'lowradio', 0),
(4248, 'steam:11000013f8236cf', 'blonde', 0),
(4249, 'steam:11000013f8236cf', 'lokalizator', 0),
(4250, 'steam:11000013c898d0d', 'lithium', 0),
(4251, 'steam:11000013c898d0d', 'acetone', 0),
(4252, 'steam:11000013c898d0d', 'ecstasy_pooch', 0),
(4253, 'steam:11000013c898d0d', 'methlab', 0),
(4254, 'steam:11000013c898d0d', 'billet', 0),
(4255, 'steam:11000013c898d0d', 'crack_pooch', 0),
(4256, 'steam:11000013c898d0d', 'ketamine_pooch', 0),
(4257, 'steam:11000013c898d0d', 'crack', 0),
(4258, 'steam:11000013c898d0d', 'ecstasy', 0),
(4259, 'steam:11000013c898d0d', 'ketamine', 0),
(4260, 'steam:11000013c898d0d', 'billet_pooch', 0),
(4261, 'steam:11000010f09e1f9', 'shark', 0),
(4262, 'steam:11000010f09e1f9', 'metreshooter', 0),
(4263, 'steam:11000010f09e1f9', 'jagercerbere', 0),
(4264, 'steam:11000010f09e1f9', 'bulletproof', 0),
(4265, 'steam:11000010f09e1f9', 'petrol_raffin', 0),
(4266, 'steam:11000010f09e1f9', 'whiskycoca', 0),
(4267, 'steam:11000010f09e1f9', 'packaged_chicken', 0),
(4268, 'steam:11000010f09e1f9', 'lockpick', 0),
(4269, 'steam:11000010f09e1f9', 'camera', 0),
(4270, 'steam:11000010f09e1f9', 'grand_cru', 0),
(4271, 'steam:11000010f09e1f9', 'pizza', 0),
(4272, 'steam:11000010f09e1f9', 'lowgradefert', 0),
(4273, 'steam:11000010f09e1f9', 'fish', 0),
(4274, 'steam:11000010f09e1f9', 'caisseketchup', 0),
(4275, 'steam:11000010f09e1f9', 'ketamine', 0),
(4276, 'steam:11000010f09e1f9', 'crack_pooch', 0),
(4277, 'steam:11000010f09e1f9', 'shirt', 0),
(4278, 'steam:11000010f09e1f9', 'opium_pooch', 0),
(4279, 'steam:11000010f09e1f9', 'macka', 0),
(4280, 'steam:11000010f09e1f9', 'fabric', 0),
(4281, 'steam:11000010f09e1f9', 'silvermedal_run', 0),
(4282, 'steam:11000010f09e1f9', 'gold', 0),
(4283, 'steam:11000010f09e1f9', 'cutted_wood', 0),
(4284, 'steam:11000010f09e1f9', 'billet_pooch', 0),
(4285, 'steam:11000010f09e1f9', 'acetone', 0),
(4286, 'steam:11000010f09e1f9', 'sachetketchup', 0),
(4287, 'steam:11000010f09e1f9', 'bagofdope', 0),
(4288, 'steam:11000010f09e1f9', 'energy', 0),
(4289, 'steam:11000010f09e1f9', 'bolnoixcajou', 0),
(4290, 'steam:11000010f09e1f9', 'firstaidkit', 0),
(4291, 'steam:11000010f09e1f9', 'cheese', 0),
(4292, 'steam:11000010f09e1f9', 'chips', 0),
(4293, 'steam:11000010f09e1f9', 'phonecassé', 0),
(4294, 'steam:11000010f09e1f9', 'ecstasy', 0),
(4295, 'steam:11000010f09e1f9', 'laptop', 0),
(4296, 'steam:11000010f09e1f9', 'jewels', 0),
(4297, 'steam:11000010f09e1f9', 'cheesebows', 0),
(4298, 'steam:11000010f09e1f9', 'book', 0),
(4299, 'steam:11000010f09e1f9', 'brune', 0),
(4300, 'steam:11000010f09e1f9', 'meth_pooch', 0),
(4301, 'steam:11000010f09e1f9', 'golem', 0),
(4302, 'steam:11000010f09e1f9', 'jumelles', 0),
(4303, 'steam:11000010f09e1f9', 'fishingrod', 0),
(4304, 'steam:11000010f09e1f9', 'alive_chicken', 0),
(4305, 'steam:11000010f09e1f9', 'bolchips', 0),
(4306, 'steam:11000010f09e1f9', 'phone', 1),
(4307, 'steam:11000010f09e1f9', 'drugscales', 0),
(4308, 'steam:11000010f09e1f9', 'tabacblondsec', 0),
(4309, 'steam:11000010f09e1f9', 'wool', 0),
(4310, 'steam:11000010f09e1f9', 'highrim', 0),
(4311, 'steam:11000010f09e1f9', 'Marabou Mjölkchoklad', 0),
(4312, 'steam:11000010f09e1f9', 'jus_raisin', 0),
(4313, 'steam:11000010f09e1f9', 'sprite', 0),
(4314, 'steam:11000010f09e1f9', 'water', 7),
(4315, 'steam:11000010f09e1f9', 'clip', 0),
(4316, 'steam:11000010f09e1f9', 'cocacola', 0),
(4317, 'steam:11000010f09e1f9', 'jager', 0),
(4318, 'steam:11000010f09e1f9', 'rhum', 0),
(4319, 'steam:11000010f09e1f9', 'icetea', 5),
(4320, 'steam:11000010f09e1f9', 'bandage', 0),
(4321, 'steam:11000010f09e1f9', 'medikit', 0),
(4322, 'steam:11000010f09e1f9', 'turtlebait', 0),
(4323, 'steam:11000010f09e1f9', 'ice', 0),
(4324, 'steam:11000010f09e1f9', 'fanta', 0),
(4325, 'steam:11000010f09e1f9', 'ring', 0),
(4326, 'steam:11000010f09e1f9', 'malbora', 0),
(4327, 'steam:11000010f09e1f9', 'highgrademaleseed', 0),
(4328, 'steam:11000010f09e1f9', 'blonde', 0),
(4329, 'steam:11000010f09e1f9', 'ecstasy_pooch', 0),
(4330, 'steam:11000010f09e1f9', 'mojito', 0),
(4331, 'steam:11000010f09e1f9', 'tequila', 0),
(4332, 'steam:11000010f09e1f9', 'cigarett', 0),
(4333, 'steam:11000010f09e1f9', 'coke_pooch', 0),
(4334, 'steam:11000010f09e1f9', 'wateringcan', 0),
(4335, 'steam:11000010f09e1f9', 'speaker', 0),
(4336, 'steam:11000010f09e1f9', 'copper', 0),
(4337, 'steam:11000010f09e1f9', 'c4_bank', 0),
(4338, 'steam:11000010f09e1f9', 'orange', 0),
(4339, 'steam:11000010f09e1f9', 'necklace', 0),
(4340, 'steam:11000010f09e1f9', 'opium', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(4341, 'steam:11000010f09e1f9', 'dopebag', 0),
(4342, 'steam:11000010f09e1f9', 'martini', 0),
(4343, 'steam:11000010f09e1f9', 'bolpistache', 0),
(4344, 'steam:11000010f09e1f9', 'fixkit', 0),
(4345, 'steam:11000010f09e1f9', 'poudre', 0),
(4346, 'steam:11000010f09e1f9', 'lighter', 0),
(4347, 'steam:11000010f09e1f9', 'lithium', 0),
(4348, 'steam:11000010f09e1f9', 'hifi', 0),
(4349, 'steam:11000010f09e1f9', 'hat', 0),
(4350, 'steam:11000010f09e1f9', 'trimmedweed', 0),
(4351, 'steam:11000010f09e1f9', 'limonade', 0),
(4352, 'steam:11000010f09e1f9', 'jusfruit', 0),
(4353, 'steam:11000010f09e1f9', 'purifiedwater', 0),
(4354, 'steam:11000010f09e1f9', 'methlab', 0),
(4355, 'steam:11000010f09e1f9', 'cocaine_cut', 0),
(4356, 'steam:11000010f09e1f9', 'wood', 0),
(4357, 'steam:11000010f09e1f9', 'weed_untrimmed', 0),
(4358, 'steam:11000010f09e1f9', 'mixapero', 0),
(4359, 'steam:11000010f09e1f9', 'vodkafruit', 0),
(4360, 'steam:11000010f09e1f9', 'xanax', 0),
(4361, 'steam:11000010f09e1f9', 'tabacblond', 0),
(4362, 'steam:11000010f09e1f9', 'lowgrademaleseed', 0),
(4363, 'steam:11000010f09e1f9', 'crack', 0),
(4364, 'steam:11000010f09e1f9', 'carbon', 0),
(4365, 'steam:11000010f09e1f9', 'acier', 0),
(4366, 'steam:11000010f09e1f9', 'washed_stone', 0),
(4367, 'steam:11000010f09e1f9', 'weed_packaged', 0),
(4368, 'steam:11000010f09e1f9', 'weed', 0),
(4369, 'steam:11000010f09e1f9', 'blowtorch', 0),
(4370, 'steam:11000010f09e1f9', 'watch', 0),
(4371, 'steam:11000010f09e1f9', 'highradio', 0),
(4372, 'steam:11000010f09e1f9', 'meth_raw', 0),
(4373, 'steam:11000010f09e1f9', 'cocaine_packaged', 0),
(4374, 'steam:11000010f09e1f9', 'loka', 0),
(4375, 'steam:11000010f09e1f9', 'meth', 0),
(4376, 'steam:11000010f09e1f9', 'burger', 5),
(4377, 'steam:11000010f09e1f9', 'coke', 0),
(4378, 'steam:11000010f09e1f9', 'steak', 0),
(4379, 'steam:11000010f09e1f9', 'turtle', 0),
(4380, 'steam:11000010f09e1f9', 'douille', 0),
(4381, 'steam:11000010f09e1f9', 'gazbottle', 0),
(4382, 'steam:11000010f09e1f9', 'toothpaste', 0),
(4383, 'steam:11000010f09e1f9', 'plantpot', 0),
(4384, 'steam:11000010f09e1f9', 'tabacbrun', 0),
(4385, 'steam:11000010f09e1f9', 'thermite', 0),
(4386, 'steam:11000010f09e1f9', 'lokalizator', 0),
(4387, 'steam:11000010f09e1f9', 'goldmedal_run', 0),
(4388, 'steam:11000010f09e1f9', 'clothe', 0),
(4389, 'steam:11000010f09e1f9', 'stockrim', 0),
(4390, 'steam:11000010f09e1f9', 'pants', 0),
(4391, 'steam:11000010f09e1f9', 'sorted_money', 0),
(4392, 'steam:11000010f09e1f9', 'grapperaisin', 0),
(4393, 'steam:11000010f09e1f9', 'vine', 0),
(4394, 'steam:11000010f09e1f9', 'slaughtered_chicken', 0),
(4395, 'steam:11000010f09e1f9', 'soda', 0),
(4396, 'steam:11000010f09e1f9', 'saucisson', 0),
(4397, 'steam:11000010f09e1f9', 'petrol', 0),
(4398, 'steam:11000010f09e1f9', 'menthe', 0),
(4399, 'steam:11000010f09e1f9', 'schorange', 0),
(4400, 'steam:11000010f09e1f9', 'saffron', 0),
(4401, 'steam:11000010f09e1f9', 'rhumfruit', 0),
(4402, 'steam:11000010f09e1f9', 'raspberry', 0),
(4403, 'steam:11000010f09e1f9', 'vodka', 0),
(4404, 'steam:11000010f09e1f9', 'repartel', 0),
(4405, 'steam:11000010f09e1f9', 'rhumcoca', 0),
(4406, 'steam:11000010f09e1f9', 'meth_packaged', 0),
(4407, 'steam:11000010f09e1f9', 'teqpaf', 0),
(4408, 'steam:11000010f09e1f9', 'poubelle', 0),
(4409, 'steam:11000010f09e1f9', 'houblon', 0),
(4410, 'steam:11000010f09e1f9', 'essence', 0),
(4411, 'steam:11000010f09e1f9', 'shoes', 0),
(4412, 'steam:11000010f09e1f9', 'blowpipe', 0),
(4413, 'steam:11000010f09e1f9', 'stone', 0),
(4414, 'steam:11000010f09e1f9', 'bread', 0),
(4415, 'steam:11000010f09e1f9', 'pastacarbonara', 0),
(4416, 'steam:11000010f09e1f9', 'net_cracker', 0),
(4417, 'steam:11000010f09e1f9', 'packaged_plank', 0),
(4418, 'steam:11000010f09e1f9', 'fishbait', 0),
(4419, 'steam:11000010f09e1f9', 'whisky', 0),
(4420, 'steam:11000010f09e1f9', 'lotteryticket', 0),
(4421, 'steam:11000010f09e1f9', 'jagerbomb', 0),
(4422, 'steam:11000010f09e1f9', 'weed_pooch', 0),
(4423, 'steam:11000010f09e1f9', 'cut_money', 0),
(4424, 'steam:11000010f09e1f9', 'croquettes', 0),
(4425, 'steam:11000010f09e1f9', 'airbag', 0),
(4426, 'steam:11000010f09e1f9', 'highgradefert', 0),
(4427, 'steam:11000010f09e1f9', 'raisin', 0),
(4428, 'steam:11000010f09e1f9', 'fixtool', 0),
(4429, 'steam:11000010f09e1f9', 'battery', 0),
(4430, 'steam:11000010f09e1f9', 'bronzemedal_run', 0),
(4431, 'steam:11000010f09e1f9', 'coupon', 0),
(4432, 'steam:11000010f09e1f9', 'lowgradefemaleseed', 0),
(4433, 'steam:11000010f09e1f9', 'handcuffs', 0),
(4434, 'steam:11000010f09e1f9', 'drill', 0),
(4435, 'steam:11000010f09e1f9', 'oxygen_mask', 0),
(4436, 'steam:11000010f09e1f9', 'lowradio', 0),
(4437, 'steam:11000010f09e1f9', 'iron', 0),
(4438, 'steam:11000010f09e1f9', 'billet', 0),
(4439, 'steam:11000010f09e1f9', 'contrat', 0),
(4440, 'steam:11000010f09e1f9', 'cocaine_uncut', 0),
(4441, 'steam:11000010f09e1f9', 'gitanes', 0),
(4442, 'steam:11000010f09e1f9', 'diamond', 0),
(4443, 'steam:11000010f09e1f9', 'bolcacahuetes', 0),
(4444, 'steam:11000010f09e1f9', 'vodkaenergy', 0),
(4445, 'steam:11000010f09e1f9', 'drpepper', 0),
(4446, 'steam:11000010f09e1f9', 'bag', 0),
(4447, 'steam:11000010f09e1f9', 'highgradefemaleseed', 0),
(4448, 'steam:11000010f09e1f9', 'ketamine_pooch', 0),
(4449, 'steam:11000010f09e1f9', 'carotool', 5),
(4450, 'steam:11000010f09e1f9', 'tabacbrunsec', 0),
(4451, 'steam:11000010f09e1f9', 'carokit', 0),
(4452, 'steam:1100001120b6603', 'journal', 0),
(4453, 'steam:1100001120b6603', 'journaux', 0),
(4454, 'steam:11000013f8236cf', 'journaux', 0),
(4455, 'steam:11000013f8236cf', 'journal', 0),
(4456, 'steam:11000010f09e1f9', 'journal', 0),
(4457, 'steam:11000010f09e1f9', 'journaux', 0),
(4458, 'steam:1100001120b6603', 'vbread', 0),
(4459, 'steam:1100001120b6603', 'nuggets10', 0),
(4460, 'steam:1100001120b6603', 'tomato', 0),
(4461, 'steam:1100001120b6603', 'ccheese', 0),
(4462, 'steam:1100001120b6603', 'vhamburger', 0),
(4463, 'steam:1100001120b6603', 'fvburger', 0),
(4464, 'steam:1100001120b6603', 'lettuce', 0),
(4465, 'steam:1100001120b6603', 'nuggets4', 0),
(4466, 'steam:1100001120b6603', 'nugget', 0),
(4467, 'steam:1100001120b6603', 'shamburger', 0),
(4468, 'steam:1100001120b6603', 'potato', 0),
(4469, 'steam:1100001120b6603', 'fburger', 0),
(4470, 'steam:1100001120b6603', 'ctomato', 0),
(4471, 'steam:1100001120b6603', 'clettuce', 0),
(4472, 'steam:11000013f8236cf', 'tomato', 0),
(4473, 'steam:11000013f8236cf', 'vhamburger', 0),
(4474, 'steam:11000013f8236cf', 'vbread', 0),
(4475, 'steam:11000013f8236cf', 'ccheese', 0),
(4476, 'steam:11000013f8236cf', 'nuggets10', 0),
(4477, 'steam:11000013f8236cf', 'fburger', 0),
(4478, 'steam:11000013f8236cf', 'shamburger', 0),
(4479, 'steam:11000013f8236cf', 'lettuce', 0),
(4480, 'steam:11000013f8236cf', 'fvburger', 0),
(4481, 'steam:11000013f8236cf', 'nugget', 0),
(4482, 'steam:11000013f8236cf', 'ctomato', 0),
(4483, 'steam:11000013f8236cf', 'potato', 0),
(4484, 'steam:11000013f8236cf', 'nuggets4', 0),
(4485, 'steam:11000013f8236cf', 'clettuce', 0),
(4486, 'steam:11000010f09e1f9', 'nuggets10', 0),
(4487, 'steam:11000010f09e1f9', 'ccheese', 0),
(4488, 'steam:11000010f09e1f9', 'tomato', 0),
(4489, 'steam:11000010f09e1f9', 'vbread', 0),
(4490, 'steam:11000010f09e1f9', 'vhamburger', 0),
(4491, 'steam:11000010f09e1f9', 'lettuce', 0),
(4492, 'steam:11000010f09e1f9', 'fburger', 0),
(4493, 'steam:11000010f09e1f9', 'fvburger', 0),
(4494, 'steam:11000010f09e1f9', 'shamburger', 0),
(4495, 'steam:11000010f09e1f9', 'nugget', 0),
(4496, 'steam:11000010f09e1f9', 'potato', 0),
(4497, 'steam:11000010f09e1f9', 'nuggets4', 0),
(4498, 'steam:11000010f09e1f9', 'clettuce', 0),
(4499, 'steam:11000010f09e1f9', 'ctomato', 0),
(4500, 'steam:110000109d07b07', 'nuggets10', 0),
(4501, 'steam:110000109d07b07', 'tomato', 0),
(4502, 'steam:110000109d07b07', 'ccheese', 0),
(4503, 'steam:110000109d07b07', 'vbread', 0),
(4504, 'steam:110000109d07b07', 'vhamburger', 0),
(4505, 'steam:110000109d07b07', 'fburger', 0),
(4506, 'steam:110000109d07b07', 'fvburger', 0),
(4507, 'steam:110000109d07b07', 'shamburger', 0),
(4508, 'steam:110000109d07b07', 'lettuce', 0),
(4509, 'steam:110000109d07b07', 'journal', 0),
(4510, 'steam:110000109d07b07', 'nuggets4', 0),
(4511, 'steam:110000109d07b07', 'journaux', 0),
(4512, 'steam:110000109d07b07', 'ctomato', 0),
(4513, 'steam:110000109d07b07', 'potato', 0),
(4514, 'steam:110000109d07b07', 'nugget', 0),
(4515, 'steam:110000109d07b07', 'clettuce', 0),
(4516, 'steam:11000010572fcd6', 'bagofdope', 0),
(4517, 'steam:11000010572fcd6', 'wool', 0),
(4518, 'steam:11000010572fcd6', 'ring', 0),
(4519, 'steam:11000010572fcd6', 'bolcacahuetes', 0),
(4520, 'steam:11000010572fcd6', 'acier', 0),
(4521, 'steam:11000010572fcd6', 'c4_bank', 0),
(4522, 'steam:11000010572fcd6', 'metreshooter', 0),
(4523, 'steam:11000010572fcd6', 'jusfruit', 0),
(4524, 'steam:11000010572fcd6', 'jumelles', 0),
(4525, 'steam:11000010572fcd6', 'alive_chicken', 0),
(4526, 'steam:11000010572fcd6', 'book', 0),
(4527, 'steam:11000010572fcd6', 'bandage', 0),
(4528, 'steam:11000010572fcd6', 'bolpistache', 0),
(4529, 'steam:11000010572fcd6', 'teqpaf', 0),
(4530, 'steam:11000010572fcd6', 'opium_pooch', 0),
(4531, 'steam:11000010572fcd6', 'carbon', 0),
(4532, 'steam:11000010572fcd6', 'firstaidkit', 0),
(4533, 'steam:11000010572fcd6', 'bolnoixcajou', 0),
(4534, 'steam:11000010572fcd6', 'drpepper', 0),
(4535, 'steam:11000010572fcd6', 'Marabou Mjölkchoklad', 0),
(4536, 'steam:11000010572fcd6', 'cigarett', 0),
(4537, 'steam:11000010572fcd6', 'battery', 0),
(4538, 'steam:11000010572fcd6', 'highgradefemaleseed', 0),
(4539, 'steam:11000010572fcd6', 'jewels', 0),
(4540, 'steam:11000010572fcd6', 'tabacblond', 0),
(4541, 'steam:11000010572fcd6', 'fabric', 0),
(4542, 'steam:11000010572fcd6', 'grand_cru', 0),
(4543, 'steam:11000010572fcd6', 'contrat', 0),
(4544, 'steam:11000010572fcd6', 'weed_packaged', 0),
(4545, 'steam:11000010572fcd6', 'pants', 0),
(4546, 'steam:11000010572fcd6', 'water', 5),
(4547, 'steam:11000010572fcd6', 'plantpot', 0),
(4548, 'steam:11000010572fcd6', 'weed', 0),
(4549, 'steam:11000010572fcd6', 'copper', 0),
(4550, 'steam:11000010572fcd6', 'highgradefert', 0),
(4551, 'steam:11000010572fcd6', 'dopebag', 0),
(4552, 'steam:11000010572fcd6', 'coke', 0),
(4553, 'steam:11000010572fcd6', 'potato', 0),
(4554, 'steam:11000010572fcd6', 'cheesebows', 0),
(4555, 'steam:11000010572fcd6', 'drugscales', 0),
(4556, 'steam:11000010572fcd6', 'gold', 0),
(4557, 'steam:11000010572fcd6', 'silvermedal_run', 0),
(4558, 'steam:11000010572fcd6', 'billet_pooch', 0),
(4559, 'steam:11000010572fcd6', 'saucisson', 0),
(4560, 'steam:11000010572fcd6', 'fish', 0),
(4561, 'steam:11000010572fcd6', 'cocacola', 0),
(4562, 'steam:11000010572fcd6', 'cut_money', 0),
(4563, 'steam:11000010572fcd6', 'speaker', 0),
(4564, 'steam:11000010572fcd6', 'oxygen_mask', 0),
(4565, 'steam:11000010572fcd6', 'gitanes', 0),
(4566, 'steam:11000010572fcd6', 'lighter', 0),
(4567, 'steam:11000010572fcd6', 'vodkafruit', 0),
(4568, 'steam:11000010572fcd6', 'rhumcoca', 0),
(4569, 'steam:11000010572fcd6', 'pizza', 0),
(4570, 'steam:11000010572fcd6', 'highrim', 0),
(4571, 'steam:11000010572fcd6', 'douille', 0),
(4572, 'steam:11000010572fcd6', 'lettuce', 0),
(4573, 'steam:11000010572fcd6', 'xanax', 0),
(4574, 'steam:11000010572fcd6', 'billet', 0),
(4575, 'steam:11000010572fcd6', 'camera', 0),
(4576, 'steam:11000010572fcd6', 'wood', 0),
(4577, 'steam:11000010572fcd6', 'jagerbomb', 0),
(4578, 'steam:11000010572fcd6', 'clip', 0),
(4579, 'steam:11000010572fcd6', 'airbag', 0),
(4580, 'steam:11000010572fcd6', 'jager', 0),
(4581, 'steam:11000010572fcd6', 'bag', 0),
(4582, 'steam:11000010572fcd6', 'shamburger', 0),
(4583, 'steam:11000010572fcd6', 'phonecassé', 0),
(4584, 'steam:11000010572fcd6', 'petrol_raffin', 0),
(4585, 'steam:11000010572fcd6', 'whiskycoca', 0),
(4586, 'steam:11000010572fcd6', 'opium', 0),
(4587, 'steam:11000010572fcd6', 'hifi', 0),
(4588, 'steam:11000010572fcd6', 'tomato', 0),
(4589, 'steam:11000010572fcd6', 'cheese', 0),
(4590, 'steam:11000010572fcd6', 'net_cracker', 0),
(4591, 'steam:11000010572fcd6', 'medikit', 0),
(4592, 'steam:11000010572fcd6', 'tequila', 0),
(4593, 'steam:11000010572fcd6', 'brune', 0),
(4594, 'steam:11000010572fcd6', 'ctomato', 0),
(4595, 'steam:11000010572fcd6', 'watch', 0),
(4596, 'steam:11000010572fcd6', 'highgrademaleseed', 0),
(4597, 'steam:11000010572fcd6', 'caisseketchup', 0),
(4598, 'steam:11000010572fcd6', 'drill', 0),
(4599, 'steam:11000010572fcd6', 'vine', 0),
(4600, 'steam:11000010572fcd6', 'fixtool', 0),
(4601, 'steam:11000010572fcd6', 'rhumfruit', 0),
(4602, 'steam:11000010572fcd6', 'tabacblondsec', 0),
(4603, 'steam:11000010572fcd6', 'lowgrademaleseed', 0),
(4604, 'steam:11000010572fcd6', 'turtlebait', 0),
(4605, 'steam:11000010572fcd6', 'vhamburger', 0),
(4606, 'steam:11000010572fcd6', 'vbread', 0),
(4607, 'steam:11000010572fcd6', 'macka', 0),
(4608, 'steam:11000010572fcd6', 'bulletproof', 0),
(4609, 'steam:11000010572fcd6', 'coupon', 0),
(4610, 'steam:11000010572fcd6', 'meth_pooch', 0),
(4611, 'steam:11000010572fcd6', 'turtle', 0),
(4612, 'steam:11000010572fcd6', 'ecstasy_pooch', 0),
(4613, 'steam:11000010572fcd6', 'whisky', 0),
(4614, 'steam:11000010572fcd6', 'packaged_chicken', 0),
(4615, 'steam:11000010572fcd6', 'clothe', 0),
(4616, 'steam:11000010572fcd6', 'toothpaste', 0),
(4617, 'steam:11000010572fcd6', 'weed_untrimmed', 0),
(4618, 'steam:11000010572fcd6', 'methlab', 0),
(4619, 'steam:11000010572fcd6', 'meth', 0),
(4620, 'steam:11000010572fcd6', 'bolchips', 0),
(4621, 'steam:11000010572fcd6', 'tabacbrun', 0),
(4622, 'steam:11000010572fcd6', 'poudre', 0),
(4623, 'steam:11000010572fcd6', 'stone', 0),
(4624, 'steam:11000010572fcd6', 'stockrim', 0),
(4625, 'steam:11000010572fcd6', 'tabacbrunsec', 0),
(4626, 'steam:11000010572fcd6', 'carotool', 0),
(4627, 'steam:11000010572fcd6', 'sorted_money', 0),
(4628, 'steam:11000010572fcd6', 'hat', 0),
(4629, 'steam:11000010572fcd6', 'golem', 0),
(4630, 'steam:11000010572fcd6', 'sprite', 0),
(4631, 'steam:11000010572fcd6', 'coke_pooch', 0),
(4632, 'steam:11000010572fcd6', 'soda', 0),
(4633, 'steam:11000010572fcd6', 'shoes', 0),
(4634, 'steam:11000010572fcd6', 'loka', 0),
(4635, 'steam:11000010572fcd6', 'slaughtered_chicken', 0),
(4636, 'steam:11000010572fcd6', 'shark', 0),
(4637, 'steam:11000010572fcd6', 'meth_raw', 0),
(4638, 'steam:11000010572fcd6', 'laptop', 0),
(4639, 'steam:11000010572fcd6', 'schorange', 0),
(4640, 'steam:11000010572fcd6', 'shirt', 0),
(4641, 'steam:11000010572fcd6', 'iron', 0),
(4642, 'steam:11000010572fcd6', 'diamond', 0),
(4643, 'steam:11000010572fcd6', 'rhum', 0),
(4644, 'steam:11000010572fcd6', 'sachetketchup', 0),
(4645, 'steam:11000010572fcd6', 'necklace', 0),
(4646, 'steam:11000010572fcd6', 'raisin', 0),
(4647, 'steam:11000010572fcd6', 'purifiedwater', 0),
(4648, 'steam:11000010572fcd6', 'repartel', 0),
(4649, 'steam:11000010572fcd6', 'raspberry', 0),
(4650, 'steam:11000010572fcd6', 'lockpick', 0),
(4651, 'steam:11000010572fcd6', 'handcuffs', 0),
(4652, 'steam:11000010572fcd6', 'orange', 0),
(4653, 'steam:11000010572fcd6', 'carokit', 0),
(4654, 'steam:11000010572fcd6', 'steak', 0),
(4655, 'steam:11000010572fcd6', 'poubelle', 0),
(4656, 'steam:11000010572fcd6', 'petrol', 0),
(4657, 'steam:11000010572fcd6', 'phone', 2),
(4658, 'steam:11000010572fcd6', 'fanta', 0),
(4659, 'steam:11000010572fcd6', 'cocaine_uncut', 0),
(4660, 'steam:11000010572fcd6', 'blowtorch', 0),
(4661, 'steam:11000010572fcd6', 'malbora', 0),
(4662, 'steam:11000010572fcd6', 'grapperaisin', 0),
(4663, 'steam:11000010572fcd6', 'ccheese', 0),
(4664, 'steam:11000010572fcd6', 'pastacarbonara', 0),
(4665, 'steam:11000010572fcd6', 'acetone', 0),
(4666, 'steam:11000010572fcd6', 'wateringcan', 0),
(4667, 'steam:11000010572fcd6', 'burger', 0),
(4668, 'steam:11000010572fcd6', 'journal', 0),
(4669, 'steam:11000010572fcd6', 'packaged_plank', 0),
(4670, 'steam:11000010572fcd6', 'nugget', 0),
(4671, 'steam:11000010572fcd6', 'nuggets10', 0),
(4672, 'steam:11000010572fcd6', 'mojito', 0),
(4673, 'steam:11000010572fcd6', 'vodka', 0),
(4674, 'steam:11000010572fcd6', 'nuggets4', 0),
(4675, 'steam:11000010572fcd6', 'ketamine_pooch', 0),
(4676, 'steam:11000010572fcd6', 'ketamine', 0),
(4677, 'steam:11000010572fcd6', 'clettuce', 0),
(4678, 'steam:11000010572fcd6', 'mixapero', 0),
(4679, 'steam:11000010572fcd6', 'jagercerbere', 0),
(4680, 'steam:11000010572fcd6', 'lithium', 0),
(4681, 'steam:11000010572fcd6', 'weed_pooch', 0),
(4682, 'steam:11000010572fcd6', 'thermite', 0),
(4683, 'steam:11000010572fcd6', 'ecstasy', 0),
(4684, 'steam:11000010572fcd6', 'houblon', 0),
(4685, 'steam:11000010572fcd6', 'vodkaenergy', 0),
(4686, 'steam:11000010572fcd6', 'saffron', 0),
(4687, 'steam:11000010572fcd6', 'martini', 0),
(4688, 'steam:11000010572fcd6', 'jus_raisin', 0),
(4689, 'steam:11000010572fcd6', 'bread', 5),
(4690, 'steam:11000010572fcd6', 'lowradio', 0),
(4691, 'steam:11000010572fcd6', 'cocaine_packaged', 0),
(4692, 'steam:11000010572fcd6', 'lotteryticket', 0),
(4693, 'steam:11000010572fcd6', 'lowgradefemaleseed', 0),
(4694, 'steam:11000010572fcd6', 'gazbottle', 0),
(4695, 'steam:11000010572fcd6', 'croquettes', 0),
(4696, 'steam:11000010572fcd6', 'menthe', 0),
(4697, 'steam:11000010572fcd6', 'limonade', 0),
(4698, 'steam:11000010572fcd6', 'ice', 0),
(4699, 'steam:11000010572fcd6', 'fishingrod', 0),
(4700, 'steam:11000010572fcd6', 'trimmedweed', 0),
(4701, 'steam:11000010572fcd6', 'energy', 0),
(4702, 'steam:11000010572fcd6', 'highradio', 0),
(4703, 'steam:11000010572fcd6', 'essence', 0),
(4704, 'steam:11000010572fcd6', 'chips', 0),
(4705, 'steam:11000010572fcd6', 'fishbait', 0),
(4706, 'steam:11000010572fcd6', 'icetea', 0),
(4707, 'steam:11000010572fcd6', 'fixkit', 0),
(4708, 'steam:11000010572fcd6', 'bronzemedal_run', 0),
(4709, 'steam:11000010572fcd6', 'crack', 0),
(4710, 'steam:11000010572fcd6', 'blonde', 0),
(4711, 'steam:11000010572fcd6', 'fvburger', 0),
(4712, 'steam:11000010572fcd6', 'meth_packaged', 0),
(4713, 'steam:11000010572fcd6', 'washed_stone', 0),
(4714, 'steam:11000010572fcd6', 'cocaine_cut', 0),
(4715, 'steam:11000010572fcd6', 'lokalizator', 0),
(4716, 'steam:11000010572fcd6', 'fburger', 0),
(4717, 'steam:11000010572fcd6', 'blowpipe', 0),
(4718, 'steam:11000010572fcd6', 'cutted_wood', 0),
(4719, 'steam:11000010572fcd6', 'goldmedal_run', 0),
(4720, 'steam:11000010572fcd6', 'crack_pooch', 0),
(4721, 'steam:11000010572fcd6', 'lowgradefert', 0),
(4722, 'steam:11000010572fcd6', 'journaux', 0),
(4723, 'steam:1100001365cefc7', 'wool', 0),
(4724, 'steam:1100001365cefc7', 'acier', 0),
(4725, 'steam:1100001365cefc7', 'bagofdope', 0),
(4726, 'steam:1100001365cefc7', 'ring', 0),
(4727, 'steam:1100001365cefc7', 'bolcacahuetes', 0),
(4728, 'steam:1100001365cefc7', 'c4_bank', 0),
(4729, 'steam:1100001365cefc7', 'alive_chicken', 0),
(4730, 'steam:1100001365cefc7', 'jusfruit', 0),
(4731, 'steam:1100001365cefc7', 'jumelles', 0),
(4732, 'steam:1100001365cefc7', 'metreshooter', 0),
(4733, 'steam:1100001365cefc7', 'teqpaf', 0),
(4734, 'steam:1100001365cefc7', 'book', 0),
(4735, 'steam:1100001365cefc7', 'bolpistache', 0),
(4736, 'steam:1100001365cefc7', 'opium_pooch', 0),
(4737, 'steam:1100001365cefc7', 'bolnoixcajou', 0),
(4738, 'steam:1100001365cefc7', 'drpepper', 0),
(4739, 'steam:1100001365cefc7', 'firstaidkit', 0),
(4740, 'steam:1100001365cefc7', 'bandage', 0),
(4741, 'steam:1100001365cefc7', 'carbon', 0),
(4742, 'steam:1100001365cefc7', 'battery', 0),
(4743, 'steam:1100001365cefc7', 'cigarett', 0),
(4744, 'steam:1100001365cefc7', 'jewels', 0),
(4745, 'steam:1100001365cefc7', 'highgradefemaleseed', 0),
(4746, 'steam:1100001365cefc7', 'Marabou Mjölkchoklad', 0),
(4747, 'steam:1100001365cefc7', 'tabacblond', 0),
(4748, 'steam:1100001365cefc7', 'grand_cru', 0),
(4749, 'steam:1100001365cefc7', 'weed_packaged', 0),
(4750, 'steam:1100001365cefc7', 'contrat', 0),
(4751, 'steam:1100001365cefc7', 'pants', 0),
(4752, 'steam:1100001365cefc7', 'weed', 0),
(4753, 'steam:1100001365cefc7', 'water', 0),
(4754, 'steam:1100001365cefc7', 'fabric', 0),
(4755, 'steam:1100001365cefc7', 'highgradefert', 0),
(4756, 'steam:1100001365cefc7', 'plantpot', 0),
(4757, 'steam:1100001365cefc7', 'coke', 0),
(4758, 'steam:1100001365cefc7', 'copper', 0),
(4759, 'steam:1100001365cefc7', 'potato', 0),
(4760, 'steam:1100001365cefc7', 'cheesebows', 0),
(4761, 'steam:1100001365cefc7', 'drugscales', 0),
(4762, 'steam:1100001365cefc7', 'billet_pooch', 0),
(4763, 'steam:1100001365cefc7', 'silvermedal_run', 0),
(4764, 'steam:1100001365cefc7', 'dopebag', 0),
(4765, 'steam:1100001365cefc7', 'saucisson', 0),
(4766, 'steam:1100001365cefc7', 'gold', 0),
(4767, 'steam:1100001365cefc7', 'oxygen_mask', 0),
(4768, 'steam:1100001365cefc7', 'fish', 0),
(4769, 'steam:1100001365cefc7', 'gitanes', 0),
(4770, 'steam:1100001365cefc7', 'cocacola', 0),
(4771, 'steam:1100001365cefc7', 'cut_money', 0),
(4772, 'steam:1100001365cefc7', 'highrim', 0),
(4773, 'steam:1100001365cefc7', 'rhumcoca', 0),
(4774, 'steam:1100001365cefc7', 'speaker', 0),
(4775, 'steam:1100001365cefc7', 'pizza', 0),
(4776, 'steam:1100001365cefc7', 'lighter', 0),
(4777, 'steam:1100001365cefc7', 'douille', 0),
(4778, 'steam:1100001365cefc7', 'vodkafruit', 0),
(4779, 'steam:1100001365cefc7', 'xanax', 0),
(4780, 'steam:1100001365cefc7', 'billet', 0),
(4781, 'steam:1100001365cefc7', 'lettuce', 0),
(4782, 'steam:1100001365cefc7', 'camera', 0),
(4783, 'steam:1100001365cefc7', 'jagerbomb', 0),
(4784, 'steam:1100001365cefc7', 'airbag', 0),
(4785, 'steam:1100001365cefc7', 'wood', 0),
(4786, 'steam:1100001365cefc7', 'phonecassé', 0),
(4787, 'steam:1100001365cefc7', 'whiskycoca', 0),
(4788, 'steam:1100001365cefc7', 'jager', 0),
(4789, 'steam:1100001365cefc7', 'clip', 0),
(4790, 'steam:1100001365cefc7', 'bag', 0),
(4791, 'steam:1100001365cefc7', 'net_cracker', 0),
(4792, 'steam:1100001365cefc7', 'cheese', 0),
(4793, 'steam:1100001365cefc7', 'tomato', 0),
(4794, 'steam:1100001365cefc7', 'shamburger', 0),
(4795, 'steam:1100001365cefc7', 'petrol_raffin', 0),
(4796, 'steam:1100001365cefc7', 'opium', 0),
(4797, 'steam:1100001365cefc7', 'hifi', 0),
(4798, 'steam:1100001365cefc7', 'brune', 0),
(4799, 'steam:1100001365cefc7', 'watch', 0),
(4800, 'steam:1100001365cefc7', 'tequila', 0),
(4801, 'steam:1100001365cefc7', 'medikit', 0),
(4802, 'steam:1100001365cefc7', 'highgrademaleseed', 0),
(4803, 'steam:1100001365cefc7', 'ctomato', 0),
(4804, 'steam:1100001365cefc7', 'caisseketchup', 0),
(4805, 'steam:1100001365cefc7', 'drill', 0),
(4806, 'steam:1100001365cefc7', 'tabacblondsec', 0),
(4807, 'steam:1100001365cefc7', 'fixtool', 0),
(4808, 'steam:1100001365cefc7', 'lowgrademaleseed', 0),
(4809, 'steam:1100001365cefc7', 'vhamburger', 0),
(4810, 'steam:1100001365cefc7', 'vine', 0),
(4811, 'steam:1100001365cefc7', 'meth_pooch', 0),
(4812, 'steam:1100001365cefc7', 'vbread', 0),
(4813, 'steam:1100001365cefc7', 'turtlebait', 0),
(4814, 'steam:1100001365cefc7', 'rhumfruit', 0),
(4815, 'steam:1100001365cefc7', 'macka', 0),
(4816, 'steam:1100001365cefc7', 'coupon', 0),
(4817, 'steam:1100001365cefc7', 'whisky', 0),
(4818, 'steam:1100001365cefc7', 'bulletproof', 0),
(4819, 'steam:1100001365cefc7', 'turtle', 0),
(4820, 'steam:1100001365cefc7', 'clothe', 0),
(4821, 'steam:1100001365cefc7', 'packaged_chicken', 0),
(4822, 'steam:1100001365cefc7', 'ecstasy_pooch', 0),
(4823, 'steam:1100001365cefc7', 'meth', 0),
(4824, 'steam:1100001365cefc7', 'bolchips', 0),
(4825, 'steam:1100001365cefc7', 'toothpaste', 0),
(4826, 'steam:1100001365cefc7', 'stone', 0),
(4827, 'steam:1100001365cefc7', 'tabacbrunsec', 0),
(4828, 'steam:1100001365cefc7', 'tabacbrun', 0),
(4829, 'steam:1100001365cefc7', 'weed_untrimmed', 0),
(4830, 'steam:1100001365cefc7', 'methlab', 0),
(4831, 'steam:1100001365cefc7', 'hat', 0),
(4832, 'steam:1100001365cefc7', 'carotool', 0),
(4833, 'steam:1100001365cefc7', 'sprite', 0),
(4834, 'steam:1100001365cefc7', 'poudre', 0),
(4835, 'steam:1100001365cefc7', 'stockrim', 0),
(4836, 'steam:1100001365cefc7', 'shoes', 0),
(4837, 'steam:1100001365cefc7', 'slaughtered_chicken', 0),
(4838, 'steam:1100001365cefc7', 'soda', 0),
(4839, 'steam:1100001365cefc7', 'sorted_money', 0),
(4840, 'steam:1100001365cefc7', 'golem', 0),
(4841, 'steam:1100001365cefc7', 'shark', 0),
(4842, 'steam:1100001365cefc7', 'shirt', 0),
(4843, 'steam:1100001365cefc7', 'laptop', 0),
(4844, 'steam:1100001365cefc7', 'coke_pooch', 0),
(4845, 'steam:1100001365cefc7', 'loka', 0),
(4846, 'steam:1100001365cefc7', 'iron', 0),
(4847, 'steam:1100001365cefc7', 'sachetketchup', 0),
(4848, 'steam:1100001365cefc7', 'diamond', 0),
(4849, 'steam:1100001365cefc7', 'schorange', 0),
(4850, 'steam:1100001365cefc7', 'meth_raw', 0),
(4851, 'steam:1100001365cefc7', 'repartel', 0),
(4852, 'steam:1100001365cefc7', 'raspberry', 0),
(4853, 'steam:1100001365cefc7', 'rhum', 0),
(4854, 'steam:1100001365cefc7', 'lockpick', 0),
(4855, 'steam:1100001365cefc7', 'necklace', 0),
(4856, 'steam:1100001365cefc7', 'steak', 0),
(4857, 'steam:1100001365cefc7', 'purifiedwater', 0),
(4858, 'steam:1100001365cefc7', 'raisin', 0),
(4859, 'steam:1100001365cefc7', 'poubelle', 0),
(4860, 'steam:1100001365cefc7', 'handcuffs', 0),
(4861, 'steam:1100001365cefc7', 'phone', 0),
(4862, 'steam:1100001365cefc7', 'cocaine_uncut', 0),
(4863, 'steam:1100001365cefc7', 'fanta', 0),
(4864, 'steam:1100001365cefc7', 'orange', 0),
(4865, 'steam:1100001365cefc7', 'carokit', 0),
(4866, 'steam:1100001365cefc7', 'blowtorch', 0),
(4867, 'steam:1100001365cefc7', 'pastacarbonara', 0),
(4868, 'steam:1100001365cefc7', 'malbora', 0),
(4869, 'steam:1100001365cefc7', 'petrol', 0),
(4870, 'steam:1100001365cefc7', 'ccheese', 0),
(4871, 'steam:1100001365cefc7', 'packaged_plank', 0),
(4872, 'steam:1100001365cefc7', 'acetone', 0),
(4873, 'steam:1100001365cefc7', 'wateringcan', 0),
(4874, 'steam:1100001365cefc7', 'grapperaisin', 0),
(4875, 'steam:1100001365cefc7', 'journal', 0),
(4876, 'steam:1100001365cefc7', 'nugget', 0),
(4877, 'steam:1100001365cefc7', 'mojito', 0),
(4878, 'steam:1100001365cefc7', 'burger', 0),
(4879, 'steam:1100001365cefc7', 'nuggets10', 0),
(4880, 'steam:1100001365cefc7', 'nuggets4', 0),
(4881, 'steam:1100001365cefc7', 'lithium', 0),
(4882, 'steam:1100001365cefc7', 'vodka', 0),
(4883, 'steam:1100001365cefc7', 'ketamine', 0),
(4884, 'steam:1100001365cefc7', 'mixapero', 0),
(4885, 'steam:1100001365cefc7', 'ketamine_pooch', 0),
(4886, 'steam:1100001365cefc7', 'clettuce', 0),
(4887, 'steam:1100001365cefc7', 'houblon', 0),
(4888, 'steam:1100001365cefc7', 'jagercerbere', 0),
(4889, 'steam:1100001365cefc7', 'vodkaenergy', 0),
(4890, 'steam:1100001365cefc7', 'ecstasy', 0),
(4891, 'steam:1100001365cefc7', 'saffron', 0),
(4892, 'steam:1100001365cefc7', 'thermite', 0),
(4893, 'steam:1100001365cefc7', 'martini', 0),
(4894, 'steam:1100001365cefc7', 'weed_pooch', 0),
(4895, 'steam:1100001365cefc7', 'jus_raisin', 0),
(4896, 'steam:1100001365cefc7', 'lowradio', 0),
(4897, 'steam:1100001365cefc7', 'bread', 0),
(4898, 'steam:1100001365cefc7', 'lowgradefemaleseed', 0),
(4899, 'steam:1100001365cefc7', 'croquettes', 0),
(4900, 'steam:1100001365cefc7', 'gazbottle', 0),
(4901, 'steam:1100001365cefc7', 'cocaine_packaged', 0),
(4902, 'steam:1100001365cefc7', 'limonade', 0),
(4903, 'steam:1100001365cefc7', 'ice', 0),
(4904, 'steam:1100001365cefc7', 'lotteryticket', 0),
(4905, 'steam:1100001365cefc7', 'menthe', 0),
(4906, 'steam:1100001365cefc7', 'trimmedweed', 0),
(4907, 'steam:1100001365cefc7', 'highradio', 0),
(4908, 'steam:1100001365cefc7', 'fishingrod', 0),
(4909, 'steam:1100001365cefc7', 'essence', 0),
(4910, 'steam:1100001365cefc7', 'energy', 0),
(4911, 'steam:1100001365cefc7', 'icetea', 0),
(4912, 'steam:1100001365cefc7', 'fishbait', 0),
(4913, 'steam:1100001365cefc7', 'fixkit', 0),
(4914, 'steam:1100001365cefc7', 'bronzemedal_run', 0),
(4915, 'steam:1100001365cefc7', 'chips', 0),
(4916, 'steam:1100001365cefc7', 'cocaine_cut', 0),
(4917, 'steam:1100001365cefc7', 'blonde', 0),
(4918, 'steam:1100001365cefc7', 'washed_stone', 0),
(4919, 'steam:1100001365cefc7', 'crack', 0),
(4920, 'steam:1100001365cefc7', 'fvburger', 0),
(4921, 'steam:1100001365cefc7', 'blowpipe', 0),
(4922, 'steam:1100001365cefc7', 'meth_packaged', 0),
(4923, 'steam:1100001365cefc7', 'lokalizator', 0),
(4924, 'steam:1100001365cefc7', 'crack_pooch', 0),
(4925, 'steam:1100001365cefc7', 'goldmedal_run', 0),
(4926, 'steam:1100001365cefc7', 'fburger', 0),
(4927, 'steam:1100001365cefc7', 'lowgradefert', 0),
(4928, 'steam:1100001365cefc7', 'cutted_wood', 0),
(4929, 'steam:1100001365cefc7', 'journaux', 0),
(4930, 'steam:11000013ddca410', 'limonade', 0),
(4931, 'steam:11000013ddca410', 'drugscales', 0),
(4932, 'steam:11000013ddca410', 'bag', 0),
(4933, 'steam:11000013ddca410', 'dopebag', 0),
(4934, 'steam:11000013ddca410', 'airbag', 0),
(4935, 'steam:11000013ddca410', 'fish', 0),
(4936, 'steam:11000013ddca410', 'tomato', 0),
(4937, 'steam:11000013ddca410', 'carotool', 0),
(4938, 'steam:11000013ddca410', 'energy', 0),
(4939, 'steam:11000013ddca410', 'lighter', 0),
(4940, 'steam:11000013ddca410', 'douille', 0),
(4941, 'steam:11000013ddca410', 'cheesebows', 0),
(4942, 'steam:11000013ddca410', 'jus_raisin', 0),
(4943, 'steam:11000013ddca410', 'blowpipe', 0),
(4944, 'steam:11000013ddca410', 'hifi', 0),
(4945, 'steam:11000013ddca410', 'cocacola', 0),
(4946, 'steam:11000013ddca410', 'highradio', 0),
(4947, 'steam:11000013ddca410', 'water', 0),
(4948, 'steam:11000013ddca410', 'battery', 0),
(4949, 'steam:11000013ddca410', 'Marabou Mjölkchoklad', 0),
(4950, 'steam:11000013ddca410', 'lithium', 0),
(4951, 'steam:11000013ddca410', 'jager', 0),
(4952, 'steam:11000013ddca410', 'grand_cru', 0),
(4953, 'steam:11000013ddca410', 'wateringcan', 0),
(4954, 'steam:11000013ddca410', 'ecstasy', 0),
(4955, 'steam:11000013ddca410', 'lokalizator', 0),
(4956, 'steam:11000013ddca410', 'ice', 0),
(4957, 'steam:11000013ddca410', 'opium', 0),
(4958, 'steam:11000013ddca410', 'packaged_chicken', 0),
(4959, 'steam:11000013ddca410', 'tabacbrun', 0),
(4960, 'steam:11000013ddca410', 'blowtorch', 0),
(4961, 'steam:11000013ddca410', 'fabric', 0),
(4962, 'steam:11000013ddca410', 'contrat', 0),
(4963, 'steam:11000013ddca410', 'raisin', 0),
(4964, 'steam:11000013ddca410', 'weed', 0),
(4965, 'steam:11000013ddca410', 'cigarett', 0),
(4966, 'steam:11000013ddca410', 'vbread', 0),
(4967, 'steam:11000013ddca410', 'fixkit', 0),
(4968, 'steam:11000013ddca410', 'highrim', 0),
(4969, 'steam:11000013ddca410', 'lowgrademaleseed', 0),
(4970, 'steam:11000013ddca410', 'meth_packaged', 0),
(4971, 'steam:11000013ddca410', 'potato', 0),
(4972, 'steam:11000013ddca410', 'sorted_money', 0),
(4973, 'steam:11000013ddca410', 'alive_chicken', 0),
(4974, 'steam:11000013ddca410', 'cutted_wood', 0),
(4975, 'steam:11000013ddca410', 'net_cracker', 0),
(4976, 'steam:11000013ddca410', 'methlab', 0),
(4977, 'steam:11000013ddca410', 'petrol', 0),
(4978, 'steam:11000013ddca410', 'firstaidkit', 0),
(4979, 'steam:11000013ddca410', 'poudre', 0),
(4980, 'steam:11000013ddca410', 'bolchips', 0),
(4981, 'steam:11000013ddca410', 'thermite', 0),
(4982, 'steam:11000013ddca410', 'steak', 0),
(4983, 'steam:11000013ddca410', 'cocaine_cut', 0),
(4984, 'steam:11000013ddca410', 'laptop', 0),
(4985, 'steam:11000013ddca410', 'stone', 0),
(4986, 'steam:11000013ddca410', 'icetea', 0),
(4987, 'steam:11000013ddca410', 'shoes', 0),
(4988, 'steam:11000013ddca410', 'vodkafruit', 0),
(4989, 'steam:11000013ddca410', 'loka', 0),
(4990, 'steam:11000013ddca410', 'repartel', 0),
(4991, 'steam:11000013ddca410', 'turtle', 0),
(4992, 'steam:11000013ddca410', 'lowradio', 0),
(4993, 'steam:11000013ddca410', 'vine', 0),
(4994, 'steam:11000013ddca410', 'pastacarbonara', 0),
(4995, 'steam:11000013ddca410', 'cheese', 0),
(4996, 'steam:11000013ddca410', 'wool', 0),
(4997, 'steam:11000013ddca410', 'highgradefert', 0),
(4998, 'steam:11000013ddca410', 'lotteryticket', 0),
(4999, 'steam:11000013ddca410', 'whiskycoca', 0),
(5000, 'steam:11000013ddca410', 'malbora', 0),
(5001, 'steam:11000013ddca410', 'metreshooter', 0),
(5002, 'steam:11000013ddca410', 'fishingrod', 0),
(5003, 'steam:11000013ddca410', 'hat', 0),
(5004, 'steam:11000013ddca410', 'drpepper', 0),
(5005, 'steam:11000013ddca410', 'xanax', 0),
(5006, 'steam:11000013ddca410', 'coke_pooch', 0),
(5007, 'steam:11000013ddca410', 'wood', 0),
(5008, 'steam:11000013ddca410', 'whisky', 0),
(5009, 'steam:11000013ddca410', 'brune', 0),
(5010, 'steam:11000013ddca410', 'jagercerbere', 0),
(5011, 'steam:11000013ddca410', 'caisseketchup', 0),
(5012, 'steam:11000013ddca410', 'weed_packaged', 0),
(5013, 'steam:11000013ddca410', 'weed_untrimmed', 0),
(5014, 'steam:11000013ddca410', 'gold', 0),
(5015, 'steam:11000013ddca410', 'book', 0),
(5016, 'steam:11000013ddca410', 'bronzemedal_run', 0),
(5017, 'steam:11000013ddca410', 'bolnoixcajou', 0),
(5018, 'steam:11000013ddca410', 'rhum', 0),
(5019, 'steam:11000013ddca410', 'weed_pooch', 0),
(5020, 'steam:11000013ddca410', 'washed_stone', 0),
(5021, 'steam:11000013ddca410', 'vodka', 0),
(5022, 'steam:11000013ddca410', 'mojito', 0),
(5023, 'steam:11000013ddca410', 'turtlebait', 0),
(5024, 'steam:11000013ddca410', 'billet_pooch', 0),
(5025, 'steam:11000013ddca410', 'clip', 0),
(5026, 'steam:11000013ddca410', 'watch', 0),
(5027, 'steam:11000013ddca410', 'vhamburger', 0),
(5028, 'steam:11000013ddca410', 'fburger', 0),
(5029, 'steam:11000013ddca410', 'trimmedweed', 0),
(5030, 'steam:11000013ddca410', 'toothpaste', 0),
(5031, 'steam:11000013ddca410', 'journaux', 0),
(5032, 'steam:11000013ddca410', 'petrol_raffin', 0),
(5033, 'steam:11000013ddca410', 'silvermedal_run', 0),
(5034, 'steam:11000013ddca410', 'tabacbrunsec', 0),
(5035, 'steam:11000013ddca410', 'tabacblondsec', 0),
(5036, 'steam:11000013ddca410', 'sprite', 0),
(5037, 'steam:11000013ddca410', 'pizza', 0),
(5038, 'steam:11000013ddca410', 'stockrim', 0),
(5039, 'steam:11000013ddca410', 'mixapero', 0),
(5040, 'steam:11000013ddca410', 'drill', 0),
(5041, 'steam:11000013ddca410', 'ketamine', 0),
(5042, 'steam:11000013ddca410', 'highgradefemaleseed', 0),
(5043, 'steam:11000013ddca410', 'nugget', 0),
(5044, 'steam:11000013ddca410', 'ccheese', 0),
(5045, 'steam:11000013ddca410', 'slaughtered_chicken', 0),
(5046, 'steam:11000013ddca410', 'chips', 0),
(5047, 'steam:11000013ddca410', 'necklace', 0),
(5048, 'steam:11000013ddca410', 'shirt', 0),
(5049, 'steam:11000013ddca410', 'croquettes', 0),
(5050, 'steam:11000013ddca410', 'shark', 0),
(5051, 'steam:11000013ddca410', 'carbon', 0),
(5052, 'steam:11000013ddca410', 'gitanes', 0),
(5053, 'steam:11000013ddca410', 'cocaine_packaged', 0),
(5054, 'steam:11000013ddca410', 'bulletproof', 0),
(5055, 'steam:11000013ddca410', 'saucisson', 0),
(5056, 'steam:11000013ddca410', 'cocaine_uncut', 0),
(5057, 'steam:11000013ddca410', 'schorange', 0),
(5058, 'steam:11000013ddca410', 'lowgradefert', 0),
(5059, 'steam:11000013ddca410', 'handcuffs', 0),
(5060, 'steam:11000013ddca410', 'sachetketchup', 0),
(5061, 'steam:11000013ddca410', 'grapperaisin', 0),
(5062, 'steam:11000013ddca410', 'saffron', 0),
(5063, 'steam:11000013ddca410', 'meth_pooch', 0),
(5064, 'steam:11000013ddca410', 'coupon', 0),
(5065, 'steam:11000013ddca410', 'highgrademaleseed', 0),
(5066, 'steam:11000013ddca410', 'rhumcoca', 0),
(5067, 'steam:11000013ddca410', 'golem', 0),
(5068, 'steam:11000013ddca410', 'acetone', 0),
(5069, 'steam:11000013ddca410', 'ring', 0),
(5070, 'steam:11000013ddca410', 'bolcacahuetes', 0),
(5071, 'steam:11000013ddca410', 'purifiedwater', 0),
(5072, 'steam:11000013ddca410', 'raspberry', 0),
(5073, 'steam:11000013ddca410', 'jewels', 0),
(5074, 'steam:11000013ddca410', 'coke', 0),
(5075, 'steam:11000013ddca410', 'phonecassé', 0),
(5076, 'steam:11000013ddca410', 'teqpaf', 0),
(5077, 'steam:11000013ddca410', 'martini', 0),
(5078, 'steam:11000013ddca410', 'diamond', 0),
(5079, 'steam:11000013ddca410', 'vodkaenergy', 0),
(5080, 'steam:11000013ddca410', 'medikit', 0),
(5081, 'steam:11000013ddca410', 'oxygen_mask', 0),
(5082, 'steam:11000013ddca410', 'packaged_plank', 0),
(5083, 'steam:11000013ddca410', 'pants', 0),
(5084, 'steam:11000013ddca410', 'gazbottle', 0),
(5085, 'steam:11000013ddca410', 'nuggets10', 0),
(5086, 'steam:11000013ddca410', 'meth_raw', 0),
(5087, 'steam:11000013ddca410', 'bolpistache', 0),
(5088, 'steam:11000013ddca410', 'nuggets4', 0),
(5089, 'steam:11000013ddca410', 'speaker', 0),
(5090, 'steam:11000013ddca410', 'phone', 0),
(5091, 'steam:11000013ddca410', 'billet', 0),
(5092, 'steam:11000013ddca410', 'opium_pooch', 0),
(5093, 'steam:11000013ddca410', 'tabacblond', 0),
(5094, 'steam:11000013ddca410', 'ctomato', 0),
(5095, 'steam:11000013ddca410', 'clothe', 0),
(5096, 'steam:11000013ddca410', 'lowgradefemaleseed', 0),
(5097, 'steam:11000013ddca410', 'cut_money', 0),
(5098, 'steam:11000013ddca410', 'clettuce', 0),
(5099, 'steam:11000013ddca410', 'fanta', 0),
(5100, 'steam:11000013ddca410', 'orange', 0),
(5101, 'steam:11000013ddca410', 'fixtool', 0),
(5102, 'steam:11000013ddca410', 'bagofdope', 0),
(5103, 'steam:11000013ddca410', 'iron', 0),
(5104, 'steam:11000013ddca410', 'bandage', 0),
(5105, 'steam:11000013ddca410', 'camera', 0),
(5106, 'steam:11000013ddca410', 'lettuce', 0),
(5107, 'steam:11000013ddca410', 'ketamine_pooch', 0),
(5108, 'steam:11000013ddca410', 'crack', 0),
(5109, 'steam:11000013ddca410', 'tequila', 0),
(5110, 'steam:11000013ddca410', 'crack_pooch', 0),
(5111, 'steam:11000013ddca410', 'bread', 0),
(5112, 'steam:11000013ddca410', 'c4_bank', 0),
(5113, 'steam:11000013ddca410', 'burger', 0),
(5114, 'steam:11000013ddca410', 'houblon', 0),
(5115, 'steam:11000013ddca410', 'essence', 0),
(5116, 'steam:11000013ddca410', 'fishbait', 0),
(5117, 'steam:11000013ddca410', 'plantpot', 0),
(5118, 'steam:11000013ddca410', 'macka', 0),
(5119, 'steam:11000013ddca410', 'fvburger', 0),
(5120, 'steam:11000013ddca410', 'blonde', 0),
(5121, 'steam:11000013ddca410', 'copper', 0),
(5122, 'steam:11000013ddca410', 'acier', 0),
(5123, 'steam:11000013ddca410', 'menthe', 0),
(5124, 'steam:11000013ddca410', 'carokit', 0),
(5125, 'steam:11000013ddca410', 'shamburger', 0),
(5126, 'steam:11000013ddca410', 'jusfruit', 0),
(5127, 'steam:11000013ddca410', 'jumelles', 0),
(5128, 'steam:11000013ddca410', 'rhumfruit', 0),
(5129, 'steam:11000013ddca410', 'ecstasy_pooch', 0),
(5130, 'steam:11000013ddca410', 'soda', 0),
(5131, 'steam:11000013ddca410', 'jagerbomb', 0),
(5132, 'steam:11000013ddca410', 'meth', 0),
(5133, 'steam:11000013ddca410', 'journal', 0),
(5134, 'steam:11000013ddca410', 'goldmedal_run', 0),
(5135, 'steam:11000013ddca410', 'lockpick', 0),
(5136, 'steam:11000013ddca410', 'poubelle', 0),
(5137, 'steam:11000010572fcd6', 'sim', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_lastcharacter`
--

CREATE TABLE `user_lastcharacter` (
  `steamid` varchar(255) NOT NULL,
  `charid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
(16, 'weapon', 'steam:110000109d07b07'),
(17, 'weapon', 'steam:110000109d07b07'),
(18, 'dmv', 'steam:1100001120b6603'),
(19, 'dmv', 'steam:1100001120b6603'),
(21, 'weapon', 'steam:11000013f8236cf'),
(22, 'weapon', 'steam:11000010f09e1f9');

-- --------------------------------------------------------

--
-- Structure de la table `user_policearmory`
--

CREATE TABLE `user_policearmory` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `weapons` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `user_tenue`
--

CREATE TABLE `user_tenue` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `tenue` longtext COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `user_tenue`
--

INSERT INTO `user_tenue` (`id`, `identifier`, `tenue`, `label`) VALUES
(1, 'steam:110000117709c63', '{\"makeup_4\":0,\"chest_3\":0,\"chain_1\":0,\"moles_2\":0,\"beard_4\":0,\"beard_3\":0,\"moles_1\":0,\"bracelets_2\":0,\"age_1\":0,\"bodyb_2\":0,\"hair_2\":0,\"hair_color_1\":29,\"arms_2\":0,\"watches_2\":0,\"helmet_2\":0,\"eye_color\":0,\"pants_1\":24,\"blush_1\":0,\"hair_color_2\":0,\"complexion_1\":0,\"blemishes_1\":0,\"chain_2\":0,\"beard_2\":0,\"blush_3\":0,\"eyebrows_1\":0,\"chest_2\":0,\"face\":4,\"makeup_3\":0,\"sun_2\":0,\"hair_1\":73,\"sex\":0,\"eyebrows_4\":0,\"lipstick_3\":0,\"chest_1\":0,\"glasses_1\":0,\"bproof_1\":0,\"torso_1\":20,\"tshirt_1\":21,\"watches_1\":-1,\"shoes_1\":6,\"complexion_2\":0,\"eyebrows_2\":0,\"blush_2\":0,\"tshirt_2\":0,\"bodyb_1\":0,\"ears_2\":0,\"beard_1\":0,\"makeup_1\":0,\"lipstick_1\":0,\"bags_1\":0,\"skin\":3,\"makeup_2\":0,\"age_2\":0,\"mask_1\":0,\"decals_1\":0,\"eyebrows_3\":0,\"ears_1\":-1,\"lipstick_4\":0,\"lipstick_2\":0,\"bags_2\":0,\"bproof_2\":0,\"glasses_2\":0,\"bracelets_1\":-1,\"helmet_1\":-1,\"pants_2\":0,\"mask_2\":0,\"arms\":19,\"blemishes_2\":0,\"sun_1\":0,\"shoes_2\":0,\"torso_2\":0,\"decals_2\":0}', 'Tenue P8UTE'),
(2, 'steam:110000117709c63', '{\"makeup_4\":0,\"chest_3\":0,\"chain_1\":0,\"moles_2\":0,\"beard_4\":0,\"beard_3\":0,\"moles_1\":0,\"bracelets_2\":0,\"age_1\":0,\"bodyb_2\":0,\"hair_2\":0,\"hair_color_1\":29,\"arms_2\":0,\"watches_2\":0,\"helmet_2\":0,\"eye_color\":0,\"pants_1\":24,\"blush_1\":0,\"hair_color_2\":0,\"complexion_1\":0,\"blemishes_1\":0,\"chain_2\":0,\"beard_2\":0,\"blush_3\":0,\"eyebrows_1\":0,\"chest_2\":0,\"face\":4,\"makeup_3\":0,\"sun_2\":0,\"hair_1\":73,\"sex\":0,\"eyebrows_4\":0,\"lipstick_3\":0,\"chest_1\":0,\"glasses_1\":0,\"bproof_1\":0,\"torso_1\":273,\"tshirt_1\":21,\"watches_1\":-1,\"shoes_1\":6,\"complexion_2\":0,\"eyebrows_2\":0,\"blush_2\":0,\"tshirt_2\":0,\"bodyb_1\":0,\"ears_2\":0,\"beard_1\":0,\"makeup_1\":0,\"lipstick_1\":0,\"bags_1\":0,\"skin\":3,\"makeup_2\":0,\"age_2\":0,\"mask_1\":0,\"decals_1\":0,\"eyebrows_3\":0,\"ears_1\":-1,\"lipstick_4\":0,\"lipstick_2\":0,\"bags_2\":0,\"bproof_2\":0,\"glasses_2\":0,\"bracelets_1\":-1,\"helmet_1\":-1,\"pants_2\":0,\"mask_2\":0,\"arms\":19,\"blemishes_2\":0,\"sun_1\":0,\"shoes_2\":0,\"torso_2\":1,\"decals_2\":0}', 'Tenue zgeg'),
(3, 'steam:11000013e699150', '{\"chest_3\":0,\"decals_1\":0,\"beard_3\":0,\"shoes_1\":3,\"ears_2\":0,\"hair_1\":16,\"watches_1\":-1,\"eye_color\":0,\"beard_2\":10,\"sex\":0,\"makeup_4\":0,\"chain_1\":0,\"tshirt_1\":15,\"pants_2\":2,\"sun_1\":0,\"eyebrows_3\":0,\"watches_2\":0,\"moles_1\":0,\"bracelets_2\":0,\"chest_2\":0,\"helmet_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"bracelets_1\":-1,\"lipstick_3\":0,\"helmet_1\":-1,\"beard_4\":0,\"eyebrows_1\":0,\"bags_2\":0,\"age_1\":0,\"bproof_1\":0,\"arms\":0,\"bproof_2\":0,\"arms_2\":0,\"bodyb_2\":0,\"tshirt_2\":0,\"lipstick_1\":0,\"blemishes_1\":0,\"hair_2\":0,\"decals_2\":0,\"ears_1\":-1,\"age_2\":0,\"bodyb_1\":0,\"shoes_2\":9,\"sun_2\":0,\"complexion_1\":0,\"mask_1\":0,\"lipstick_4\":0,\"eyebrows_4\":0,\"torso_1\":93,\"hair_color_1\":0,\"hair_color_2\":15,\"blush_2\":0,\"mask_2\":0,\"face\":0,\"lipstick_2\":0,\"torso_2\":1,\"bags_1\":44,\"pants_1\":16,\"blush_3\":0,\"skin\":5,\"eyebrows_2\":0,\"blush_1\":0,\"glasses_1\":0,\"beard_1\":4,\"chain_2\":0,\"moles_2\":0,\"makeup_3\":0,\"complexion_2\":0,\"blemishes_2\":0,\"makeup_2\":0,\"chest_1\":0}', 'bg'),
(4, 'steam:1100001120b6603', '{\"eye_color\":0,\"chest_1\":0,\"chain_2\":0,\"bags_2\":0,\"face\":4,\"bodyb_1\":0,\"ears_2\":0,\"hair_color_1\":0,\"ears_1\":2,\"complexion_2\":0,\"blemishes_1\":0,\"shoes_2\":0,\"tshirt_2\":0,\"eyebrows_3\":0,\"shoes_1\":6,\"chain_1\":0,\"blush_3\":0,\"torso_1\":132,\"bodyb_2\":0,\"bproof_2\":0,\"eyebrows_1\":0,\"hair_2\":0,\"watches_1\":-1,\"tshirt_1\":15,\"glasses_2\":0,\"age_1\":0,\"hair_1\":9,\"lipstick_2\":0,\"blemishes_2\":0,\"blush_1\":0,\"pants_1\":4,\"helmet_1\":-1,\"bproof_1\":0,\"hair_color_2\":0,\"bracelets_2\":0,\"beard_3\":0,\"eyebrows_4\":0,\"age_2\":0,\"helmet_2\":0,\"chest_3\":0,\"makeup_4\":0,\"lipstick_3\":0,\"bracelets_1\":-1,\"mask_2\":0,\"glasses_1\":0,\"bags_1\":0,\"mask_1\":0,\"eyebrows_2\":0,\"decals_1\":8,\"lipstick_1\":0,\"blush_2\":0,\"sun_2\":0,\"moles_2\":0,\"watches_2\":0,\"sun_1\":0,\"torso_2\":0,\"arms_2\":0,\"lipstick_4\":0,\"beard_4\":0,\"beard_2\":0,\"makeup_3\":0,\"beard_1\":0,\"complexion_1\":0,\"chest_2\":0,\"decals_2\":3,\"moles_1\":0,\"makeup_1\":0,\"pants_2\":0,\"skin\":4,\"sex\":0,\"makeup_2\":0,\"arms\":41}', 'Pablo'),
(5, 'steam:110000134884e5b', '{\"lipstick_4\":0,\"blemishes_2\":0,\"moles_1\":0,\"arms_2\":0,\"moles_2\":0,\"skin\":5,\"lipstick_1\":0,\"sun_2\":0,\"bproof_1\":0,\"shoes_2\":1,\"bodyb_2\":0,\"glasses_2\":3,\"chest_1\":0,\"beard_2\":10,\"makeup_4\":0,\"hair_1\":21,\"tshirt_2\":5,\"helmet_2\":0,\"makeup_3\":0,\"chain_2\":0,\"blush_2\":0,\"helmet_1\":-1,\"mask_1\":0,\"beard_4\":0,\"glasses_1\":5,\"blush_3\":0,\"watches_2\":0,\"eyebrows_3\":41,\"face\":44,\"sex\":0,\"decals_2\":0,\"blemishes_1\":0,\"torso_2\":0,\"hair_color_1\":22,\"bags_2\":0,\"eyebrows_1\":12,\"age_2\":0,\"decals_1\":0,\"bproof_2\":0,\"shoes_1\":31,\"watches_1\":-1,\"eye_color\":2,\"hair_color_2\":21,\"torso_1\":166,\"arms\":17,\"pants_1\":4,\"complexion_1\":0,\"bodyb_1\":0,\"lipstick_2\":0,\"beard_3\":0,\"eyebrows_2\":10,\"tshirt_1\":1,\"hair_2\":1,\"mask_2\":0,\"ears_2\":0,\"makeup_2\":0,\"age_1\":0,\"sun_1\":0,\"chest_3\":0,\"chest_2\":0,\"bracelets_2\":0,\"eyebrows_4\":0,\"complexion_2\":0,\"bracelets_1\":-1,\"bags_1\":41,\"makeup_1\":0,\"blush_1\":0,\"lipstick_3\":0,\"beard_1\":10,\"ears_1\":7,\"pants_2\":1,\"chain_1\":0}', 'Normal'),
(6, 'steam:110000134884e5b', '{\"lipstick_4\":0,\"blemishes_2\":0,\"moles_1\":0,\"arms_2\":0,\"moles_2\":0,\"skin\":5,\"torso_1\":49,\"sun_2\":0,\"bproof_1\":0,\"shoes_2\":1,\"bodyb_2\":0,\"glasses_2\":3,\"chest_1\":0,\"beard_2\":10,\"makeup_4\":0,\"hair_1\":21,\"tshirt_2\":1,\"helmet_2\":0,\"makeup_3\":0,\"chain_2\":0,\"blush_2\":0,\"helmet_1\":-1,\"mask_1\":0,\"beard_4\":0,\"glasses_1\":5,\"blush_3\":0,\"watches_2\":0,\"eyebrows_3\":41,\"face\":44,\"sex\":0,\"decals_2\":0,\"blemishes_1\":0,\"torso_2\":0,\"hair_color_1\":22,\"bags_2\":0,\"eyebrows_1\":12,\"age_2\":0,\"decals_1\":0,\"bproof_2\":0,\"shoes_1\":12,\"ears_1\":7,\"eye_color\":2,\"hair_color_2\":21,\"watches_1\":-1,\"arms\":17,\"pants_1\":102,\"complexion_1\":0,\"bodyb_1\":0,\"lipstick_2\":0,\"beard_3\":0,\"eyebrows_2\":10,\"tshirt_1\":56,\"hair_2\":1,\"mask_2\":0,\"lipstick_1\":0,\"ears_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"makeup_2\":0,\"chest_2\":0,\"chest_3\":0,\"eyebrows_4\":0,\"complexion_2\":0,\"bracelets_1\":-1,\"bags_1\":41,\"makeup_1\":0,\"age_1\":0,\"blush_1\":0,\"lipstick_3\":0,\"beard_1\":10,\"pants_2\":0,\"chain_1\":0}', 'Ms13'),
(7, 'steam:1100001120b6603', '{\"hair_1\":9,\"glasses_1\":0,\"glasses_2\":0,\"watches_1\":-1,\"skin\":4,\"arms_2\":0,\"chest_2\":0,\"chest_3\":0,\"eyebrows_1\":0,\"bproof_1\":0,\"complexion_2\":0,\"face\":4,\"beard_2\":0,\"chain_2\":0,\"shoes_1\":6,\"chest_1\":0,\"bodyb_1\":0,\"bproof_2\":0,\"hair_2\":0,\"blush_3\":0,\"sex\":0,\"eyebrows_3\":0,\"decals_2\":3,\"chain_1\":0,\"eyebrows_4\":0,\"torso_1\":279,\"bags_1\":0,\"makeup_2\":0,\"arms\":14,\"shoes_2\":0,\"beard_1\":0,\"blemishes_2\":0,\"lipstick_1\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"ears_2\":0,\"beard_3\":0,\"blemishes_1\":0,\"ears_1\":2,\"beard_4\":0,\"helmet_2\":0,\"mask_2\":0,\"eyebrows_2\":0,\"bracelets_1\":-1,\"moles_1\":0,\"makeup_3\":0,\"decals_1\":8,\"bodyb_2\":0,\"tshirt_2\":0,\"age_1\":0,\"sun_2\":0,\"makeup_4\":0,\"tshirt_1\":15,\"mask_1\":0,\"lipstick_2\":0,\"blush_1\":0,\"blush_2\":0,\"bags_2\":0,\"hair_color_2\":0,\"lipstick_4\":0,\"eye_color\":0,\"bracelets_2\":0,\"age_2\":0,\"complexion_1\":0,\"watches_2\":0,\"moles_2\":0,\"torso_2\":1,\"pants_1\":24,\"sun_1\":0,\"hair_color_1\":0,\"pants_2\":0,\"makeup_1\":0}', '6ixnine'),
(8, 'steam:1100001120b6603', '{\"tshirt_2\":0,\"blush_3\":0,\"bracelets_1\":-1,\"hair_2\":0,\"moles_1\":0,\"face\":0,\"pants_2\":0,\"watches_2\":0,\"eyebrows_3\":0,\"complexion_2\":0,\"chest_3\":0,\"sex\":0,\"shoes_2\":0,\"makeup_2\":0,\"bodyb_1\":0,\"mask_1\":0,\"age_2\":0,\"shoes_1\":70,\"decals_1\":0,\"beard_3\":0,\"bags_2\":0,\"makeup_3\":0,\"age_1\":0,\"skin\":11,\"blush_1\":0,\"bags_1\":0,\"eyebrows_2\":0,\"mask_2\":0,\"torso_1\":15,\"lipstick_4\":0,\"hair_color_2\":0,\"chain_2\":0,\"eyebrows_4\":0,\"beard_4\":0,\"ears_1\":-1,\"eye_color\":0,\"eyebrows_1\":0,\"pants_1\":97,\"hair_color_1\":0,\"glasses_1\":0,\"complexion_1\":0,\"makeup_1\":0,\"beard_1\":7,\"hair_1\":5,\"beard_2\":10,\"arms\":15,\"chest_1\":0,\"chest_2\":0,\"chain_1\":0,\"helmet_2\":0,\"lipstick_2\":0,\"bproof_1\":27,\"bodyb_2\":0,\"watches_1\":-1,\"ears_2\":0,\"arms_2\":0,\"tshirt_1\":55,\"decals_2\":0,\"blemishes_1\":0,\"sun_2\":0,\"bracelets_2\":0,\"glasses_2\":0,\"sun_1\":0,\"lipstick_1\":0,\"helmet_1\":-1,\"makeup_4\":0,\"torso_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"blemishes_2\":0,\"moles_2\":0,\"blush_2\":0}', 'Tenue'),
(9, 'steam:11000010e736395', '{\"ears_2\":0,\"helmet_2\":2,\"bracelets_2\":0,\"lipstick_3\":0,\"sun_1\":0,\"bodyb_1\":0,\"skin\":5,\"blush_2\":0,\"mask_2\":0,\"face\":44,\"hair_color_2\":11,\"bodyb_2\":0,\"pants_1\":24,\"arms_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"lipstick_2\":0,\"complexion_1\":0,\"age_2\":0,\"moles_2\":0,\"chest_2\":0,\"eyebrows_2\":10,\"pants_2\":0,\"torso_2\":0,\"lipstick_1\":0,\"ears_1\":-1,\"makeup_4\":0,\"bproof_1\":0,\"shoes_2\":0,\"bracelets_1\":-1,\"bags_2\":0,\"chain_1\":0,\"beard_3\":0,\"blemishes_2\":0,\"lipstick_4\":0,\"eye_color\":0,\"beard_2\":10,\"tshirt_1\":15,\"sun_2\":0,\"mask_1\":0,\"makeup_2\":0,\"bproof_2\":0,\"beard_1\":10,\"glasses_1\":5,\"blush_3\":0,\"glasses_2\":9,\"eyebrows_1\":2,\"arms\":19,\"age_1\":0,\"decals_1\":0,\"tshirt_2\":0,\"moles_1\":0,\"complexion_2\":0,\"blush_1\":0,\"makeup_1\":0,\"chest_3\":0,\"chain_2\":0,\"sex\":0,\"hair_2\":0,\"beard_4\":0,\"watches_1\":10,\"blemishes_1\":0,\"shoes_1\":2,\"hair_1\":57,\"watches_2\":1,\"helmet_1\":-1,\"torso_1\":50,\"decals_2\":0,\"chest_1\":0,\"hair_color_1\":2,\"eyebrows_4\":0,\"bags_1\":40}', 'Flic'),
(10, 'steam:11000010e736395', '{\"ears_2\":0,\"helmet_2\":2,\"bracelets_2\":0,\"lipstick_3\":0,\"sun_1\":0,\"bodyb_1\":0,\"skin\":5,\"blush_2\":0,\"mask_2\":0,\"face\":44,\"hair_color_2\":11,\"bodyb_2\":0,\"pants_1\":24,\"arms_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"lipstick_2\":0,\"complexion_1\":0,\"age_2\":0,\"moles_2\":0,\"chest_2\":0,\"eyebrows_2\":10,\"pants_2\":0,\"torso_2\":0,\"lipstick_1\":0,\"ears_1\":-1,\"makeup_4\":0,\"bproof_1\":0,\"shoes_2\":0,\"bracelets_1\":-1,\"bags_2\":0,\"chain_1\":0,\"beard_3\":0,\"blemishes_2\":0,\"lipstick_4\":0,\"eye_color\":0,\"beard_2\":10,\"tshirt_1\":15,\"sun_2\":0,\"mask_1\":0,\"makeup_2\":0,\"bproof_2\":0,\"beard_1\":10,\"glasses_1\":5,\"blush_3\":0,\"glasses_2\":9,\"eyebrows_1\":2,\"arms\":19,\"age_1\":0,\"decals_1\":0,\"tshirt_2\":0,\"moles_1\":0,\"complexion_2\":0,\"blush_1\":0,\"makeup_1\":0,\"chest_3\":0,\"chain_2\":0,\"sex\":0,\"hair_2\":0,\"beard_4\":0,\"watches_1\":10,\"blemishes_1\":0,\"shoes_1\":2,\"hair_1\":57,\"watches_2\":1,\"helmet_1\":-1,\"torso_1\":50,\"decals_2\":0,\"chest_1\":0,\"hair_color_1\":2,\"eyebrows_4\":0,\"bags_1\":40}', 'Marshall'),
(11, 'steam:11000010e736395', '{\"chain_2\":0,\"mask_1\":0,\"ears_1\":-1,\"tshirt_1\":15,\"beard_2\":10,\"hair_color_1\":2,\"watches_2\":1,\"eyebrows_1\":2,\"chest_2\":0,\"torso_1\":50,\"bracelets_2\":0,\"hair_color_2\":11,\"beard_4\":0,\"moles_1\":0,\"mask_2\":0,\"face\":44,\"moles_2\":0,\"sex\":0,\"hair_2\":0,\"blemishes_2\":0,\"decals_1\":0,\"pants_1\":24,\"lipstick_3\":0,\"eye_color\":0,\"blemishes_1\":0,\"bodyb_1\":0,\"eyebrows_4\":0,\"glasses_1\":5,\"arms\":19,\"makeup_4\":0,\"bproof_2\":0,\"bracelets_1\":-1,\"beard_3\":0,\"age_2\":0,\"age_1\":0,\"skin\":5,\"bags_2\":0,\"makeup_2\":0,\"chest_3\":0,\"hair_1\":57,\"pants_2\":0,\"ears_2\":0,\"bodyb_2\":0,\"eyebrows_2\":10,\"complexion_1\":0,\"decals_2\":0,\"eyebrows_3\":0,\"bags_1\":40,\"arms_2\":0,\"sun_1\":0,\"watches_1\":10,\"lipstick_4\":0,\"lipstick_2\":0,\"helmet_2\":2,\"complexion_2\":0,\"glasses_2\":9,\"chain_1\":0,\"bproof_1\":0,\"tshirt_2\":0,\"sun_2\":0,\"blush_2\":0,\"blush_1\":0,\"beard_1\":10,\"torso_2\":0,\"makeup_3\":0,\"blush_3\":0,\"chest_1\":0,\"lipstick_1\":0,\"helmet_1\":-1,\"makeup_1\":0,\"shoes_1\":7,\"shoes_2\":0}', 'test'),
(12, 'steam:1100001120b6603', '{\"complexion_2\":0,\"helmet_2\":0,\"watches_2\":0,\"chest_3\":0,\"tshirt_1\":58,\"lipstick_4\":0,\"hair_color_2\":0,\"bracelets_1\":-1,\"chest_1\":0,\"complexion_1\":0,\"bodyb_1\":0,\"eyebrows_3\":0,\"shoes_1\":70,\"pants_2\":0,\"moles_1\":0,\"bags_1\":0,\"lipstick_1\":0,\"torso_1\":133,\"blush_3\":0,\"beard_3\":0,\"makeup_2\":0,\"age_2\":0,\"mask_2\":0,\"decals_2\":0,\"ears_2\":0,\"watches_1\":5,\"bodyb_2\":0,\"lipstick_3\":0,\"eyebrows_1\":0,\"helmet_1\":-1,\"eyebrows_4\":0,\"face\":3,\"chain_1\":0,\"shoes_2\":0,\"chain_2\":0,\"makeup_4\":0,\"eyebrows_2\":0,\"hair_color_1\":6,\"sun_2\":0,\"hair_1\":65,\"pants_1\":81,\"bracelets_2\":0,\"sex\":0,\"blemishes_2\":0,\"glasses_1\":0,\"skin\":14,\"hair_2\":0,\"bags_2\":0,\"arms\":19,\"beard_4\":0,\"bproof_2\":0,\"age_1\":0,\"ears_1\":-1,\"torso_2\":0,\"decals_1\":0,\"blemishes_1\":0,\"bproof_1\":37,\"beard_2\":10,\"glasses_2\":0,\"blush_2\":0,\"lipstick_2\":0,\"sun_1\":0,\"mask_1\":0,\"beard_1\":7,\"tshirt_2\":0,\"makeup_1\":0,\"moles_2\":0,\"makeup_3\":0,\"chest_2\":0,\"arms_2\":0,\"eye_color\":0,\"blush_1\":0}', 'Tenue LSPD'),
(13, 'steam:110000134884e5b', '{\"complexion_2\":0,\"helmet_2\":0,\"watches_2\":0,\"chest_3\":0,\"tshirt_1\":1,\"lipstick_4\":0,\"hair_color_2\":21,\"bracelets_1\":-1,\"chest_1\":0,\"complexion_1\":0,\"bodyb_1\":0,\"eyebrows_3\":41,\"shoes_1\":31,\"pants_2\":0,\"moles_1\":0,\"bags_1\":41,\"lipstick_1\":0,\"torso_1\":181,\"blush_3\":0,\"beard_3\":0,\"makeup_2\":0,\"age_2\":0,\"mask_2\":0,\"decals_2\":0,\"ears_2\":0,\"watches_1\":-1,\"bodyb_2\":0,\"lipstick_3\":0,\"eyebrows_1\":12,\"lipstick_2\":0,\"eyebrows_4\":0,\"torso_2\":0,\"chain_1\":0,\"shoes_2\":1,\"chain_2\":0,\"makeup_4\":0,\"eyebrows_2\":10,\"makeup_1\":0,\"sun_1\":0,\"hair_1\":21,\"beard_1\":10,\"bracelets_2\":0,\"glasses_1\":5,\"blemishes_2\":0,\"bproof_1\":0,\"skin\":5,\"hair_2\":1,\"bags_2\":0,\"sun_2\":0,\"beard_4\":0,\"bproof_2\":0,\"age_1\":0,\"ears_1\":7,\"eye_color\":2,\"face\":44,\"blemishes_1\":0,\"helmet_1\":-1,\"chest_2\":0,\"glasses_2\":3,\"decals_1\":0,\"pants_1\":26,\"beard_2\":10,\"mask_1\":0,\"sex\":0,\"tshirt_2\":5,\"blush_2\":0,\"moles_2\":0,\"makeup_3\":0,\"arms\":12,\"arms_2\":0,\"hair_color_1\":22,\"blush_1\":0}', 'nORMAL'),
(14, 'steam:11000010e736395', '{\"complexion_2\":0,\"helmet_2\":2,\"watches_2\":1,\"chest_3\":0,\"tshirt_1\":15,\"lipstick_4\":0,\"hair_color_2\":11,\"bracelets_1\":-1,\"chest_1\":0,\"complexion_1\":0,\"sun_2\":0,\"beard_1\":10,\"shoes_1\":7,\"pants_2\":0,\"moles_1\":0,\"bags_1\":40,\"lipstick_1\":0,\"torso_1\":50,\"blush_3\":0,\"beard_3\":0,\"bproof_1\":0,\"age_2\":0,\"mask_2\":0,\"decals_2\":0,\"ears_2\":0,\"watches_1\":10,\"bodyb_2\":0,\"lipstick_3\":0,\"eyebrows_1\":2,\"lipstick_2\":0,\"eyebrows_4\":0,\"decals_1\":0,\"chain_1\":0,\"shoes_2\":0,\"chain_2\":0,\"makeup_4\":0,\"eyebrows_2\":10,\"makeup_1\":0,\"face\":44,\"hair_1\":57,\"hair_color_1\":2,\"bracelets_2\":0,\"eye_color\":0,\"blemishes_2\":0,\"sex\":0,\"skin\":5,\"hair_2\":0,\"bags_2\":0,\"helmet_1\":-1,\"beard_4\":0,\"bproof_2\":0,\"age_1\":0,\"ears_1\":-1,\"blush_2\":0,\"mask_1\":0,\"blemishes_1\":0,\"torso_2\":0,\"glasses_1\":5,\"glasses_2\":9,\"makeup_2\":0,\"bodyb_1\":0,\"beard_2\":10,\"pants_1\":24,\"eyebrows_3\":0,\"tshirt_2\":0,\"sun_1\":0,\"moles_2\":0,\"makeup_3\":0,\"chest_2\":0,\"arms_2\":0,\"arms\":19,\"blush_1\":0}', 'Tenue');

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Porsche 911 S', '911turboS', 60929, 'import'),
('Mercedes A45', 'a45', 57178, 'import'),
('Adder', 'adder', 220000, 'super'),
('Akuma', 'AKUMA', 23496, 'motorcycles'),
('Alpha', 'alpha', 35000, 'sports'),
('Asea', 'asea', 4700, 'sedans'),
('Autarch', 'autarch', 165000, 'super'),
('Avarus', 'avarus', 21686, 'motorcycles'),
('Bagger', 'bagger', 18898, 'motorcycles'),
('Baller', 'baller2', 32225, 'suvs'),
('Baller Sport', 'baller3', 42225, 'suvs'),
('Banshee 900R', 'banshee2', 45800, 'super'),
('Bati 801', 'bati', 22528, 'motorcycles'),
('Bati 801RR', 'bati2', 22649, 'motorcycles'),
('Bestia GTS', 'bestiagts', 26000, 'sports'),
('BF400', 'bf400', 21923, 'motorcycles'),
('Bf Injection', 'bfinjection', 22671, 'offroad'),
('Bifta', 'bifta', 22550, 'offroad'),
('Bison', 'bison', 24600, 'vans'),
('Blade', 'blade', 21692, 'muscle'),
('Blazer', 'blazer', 20130, 'offroad'),
('Blazer Sport', 'blazer4', 20856, 'offroad'),
('blazer5', 'blazer5', 20251, 'offroad'),
('Blista', 'blista', 15000, 'compacts'),
('BMX (velo)', 'bmx', 200, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 15400, 'vans'),
('Brawler', 'brawler', 24728, 'offroad'),
('Brioso R/A', 'brioso', 15500, 'compacts'),
('Btype', 'btype', 55200, 'sportsclassics'),
('Buccaneer', 'buccaneer', 22176, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 29040, 'muscle'),
('Buffalo', 'buffalo', 34600, 'sports'),
('Bullet', 'bullet', 19800, 'super'),
('Burrito', 'burrito3', 36700, 'vans'),
('Camper', 'camper', 80000, 'vans'),
('Carbonizzare', 'carbonizzare', 27500, 'sports'),
('Carbon RS', 'carbonrs', 22165, 'motorcycles'),
('Casco', 'casco', 24500, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 26400, 'suvs'),
('Cheetah', 'cheetah', 74500, 'super'),
('Chimera', 'chimera', 19382, 'motorcycles'),
('Chino', 'chino', 19151, 'muscle'),
('Chino Luxe', 'chino2', 24915, 'muscle'),
('Cliffhanger', 'cliffhanger', 22891, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 38000, 'coupes'),
('Cognoscenti', 'cognoscenti', 34600, 'sedans'),
('Comet', 'comet2', 42300, 'sports'),
('Contender', 'contender', 36100, 'suvs'),
('Coquette', 'coquette', 46015, 'sports'),
('Coquette Classic', 'coquette2', 30200, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 23265, 'muscle'),
('Cruiser (velo)', 'cruiser', 150, 'motorcycles'),
('Cyclone', 'cyclone', 24310, 'super'),
('Daemon', 'daemon', 21923, 'motorcycles'),
('Daemon High', 'daemon2', 20592, 'motorcycles'),
('Defiler', 'defiler', 22770, 'motorcycles'),
('Dominator', 'dominator', 24112, 'muscle'),
('Double T', 'double', 22407, 'motorcycles'),
('Dubsta', 'dubsta', 52600, 'suvs'),
('Bubsta 6x6', 'dubsta3', 22187, 'offroad'),
('Dukes', 'dukes', 23023, 'muscle'),
('Dune Buggy', 'dune', 21340, 'offroad'),
('Elegy', 'elegy2', 35400, 'sports'),
('Emperor', 'emperor', 19800, 'sedans'),
('Enduro', 'enduro', 19261, 'motorcycles'),
('Entity XF', 'entityxf', 120500, 'super'),
('Esskey', 'esskey', 21923, 'motorcycles'),
('Exemplar', 'exemplar', 38953, 'coupes'),
('F620', 'f620', 40777, 'coupes'),
('Faction', 'faction', 23023, 'muscle'),
('Faction Rider', 'faction2', 21813, 'muscle'),
('Faction XL', 'faction3', 19756, 'muscle'),
('Faggio', 'faggio', 7452, 'motorcycles'),
('Vespa', 'faggio2', 9532, 'motorcycles'),
('Felon', 'felon', 39391, 'coupes'),
('Felon GT', 'felon2', 37543, 'coupes'),
('Feltzer', 'feltzer2', 34250, 'sports'),
('Stirling GT', 'feltzer3', 115200, 'sportsclassics'),
('Fixter (velo)', 'fixter', 183, 'motorcycles'),
('FMJ', 'fmj', 97500, 'super'),
('Fugitive', 'fugitive', 21500, 'sedans'),
('Furore GT', 'furoregt', 43600, 'sports'),
('Fusilade', 'fusilade', 39000, 'sports'),
('Gargoyle', 'gargoyle', 22770, 'motorcycles'),
('Gauntlet', 'gauntlet', 22902, 'muscle'),
('Burrito', 'gburrito2', 42300, 'vans'),
('Glendale', 'glendale', 24500, 'sedans'),
('Grabger', 'granger', 32000, 'suvs'),
('Gresley', 'gresley', 27500, 'suvs'),
('GT 500', 'gt500', 26400, 'sportsclassics'),
('Guardian', 'guardian', 21582, 'offroad'),
('Hakuchou', 'hakuchou', 22165, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 24101, 'motorcycles'),
('Hermes', 'hermes', 21571, 'muscle'),
('Hexer', 'hexer', 20471, 'motorcycles'),
('Huntley S', 'huntley', 35600, 'suvs'),
('Infernus', 'infernus', 84200, 'super'),
('Innovation', 'innovation', 36058, 'motorcycles'),
('Intruder', 'intruder', 22500, 'sedans'),
('Issi', 'issi2', 15600, 'compacts'),
('Jackal', 'jackal', 38698, 'coupes'),
('Jester', 'jester', 62430, 'sports'),
('Journey', 'journey', 25800, 'vans'),
('Khamelion', 'khamelion', 45632, 'sports'),
('Kuruma', 'kuruma', 29600, 'sports'),
('Landstalker', 'landstalker', 42000, 'suvs'),
('RE-7B', 'le7b', 190000, 'super'),
('Lynx', 'lynx', 45000, 'sports'),
('Mamba', 'mamba', 75000, 'sports'),
('Manana', 'manana', 25000, 'sportsclassics'),
('Manchez', 'manchez', 21802, 'motorcycles'),
('Massacro', 'massacro', 35200, 'sports'),
('Mesa', 'mesa', 30500, 'suvs'),
('Minivan', 'minivan', 6500, 'vans'),
('Monroe', 'monroe', 44600, 'sportsclassics'),
('Moonbeam', 'moonbeam', 32500, 'vans'),
('Nemesis', 'nemesis', 28765, 'motorcycles'),
('Neon', 'neon', 54200, 'sports'),
('Nightblade', 'nightblade', 28226, 'motorcycles'),
('Nightshade', 'nightshade', 20603, 'muscle'),
('Oracle XS', 'oracle2', 38698, 'coupes'),
('Osiris', 'osiris', 123000, 'super'),
('Panto', 'panto', 14900, 'compacts'),
('Paradise', 'paradise', 22500, 'vans'),
('Patriot', 'patriot', 47500, 'suvs'),
('PCJ-600', 'pcj', 19745, 'motorcycles'),
('Penumbra', 'penumbra', 26000, 'sports'),
('Pfister', 'pfister811', 200000, 'super'),
('Phoenix', 'phoenix', 22660, 'muscle'),
('Picador', 'picador', 20420, 'muscle'),
('Pigalle', 'pigalle', 22300, 'sportsclassics'),
('Prairie', 'prairie', 15200, 'compacts'),
('Premier', 'premier', 8500, 'sedans'),
('Primo Custom', 'primo2', 10500, 'sedans'),
('X80 Proto', 'prototipo', 420500, 'super'),
('Radius', 'radi', 34500, 'suvs'),
('raiden', 'raiden', 45800, 'sports'),
('Rapid GT', 'rapidgt', 75600, 'sports'),
('Rapid GT3', 'rapidgt3', 100000, 'sportsclassics'),
('Reaper', 'reaper', 225000, 'super'),
('Rebel', 'rebel2', 27335, 'offroad'),
('Regina', 'regina', 16400, 'sedans'),
('Retinue', 'retinue', 25600, 'sportsclassics'),
('Revolter', 'revolter', 32500, 'sports'),
('riata', 'riata', 22429, 'offroad'),
('Rocoto', 'rocoto', 34500, 'suvs'),
('Audi RS6', 'rs615', 61611, 'import'),
('Audi RS7', 'RS72020', 75933, 'import'),
('Ruffian', 'ruffian', 22044, 'motorcycles'),
('Rumpo', 'rumpo', 32800, 'vans'),
('Sabre Turbo', 'sabregt', 25300, 'muscle'),
('Sabre GT', 'sabregt2', 29865, 'muscle'),
('Sanchez', 'sanchez', 18898, 'motorcycles'),
('Sanctus', 'sanctus', 36265, 'motorcycles'),
('Sandking', 'sandking', 21219, 'offroad'),
('Savestra', 'savestra', 23750, 'sportsclassics'),
('SC 1', 'sc1', 325000, 'super'),
('Schafter', 'schafter2', 26800, 'sedans'),
('Schafter V12', 'schafter3', 28600, 'sports'),
('Scorcher (velo)', 'scorcher', 150, 'motorcycles'),
('Seminole', 'seminole', 32200, 'suvs'),
('Sentinel', 'sentinel', 37081, 'coupes'),
('Sentinel XS', 'sentinel2', 38005, 'coupes'),
('Sentinel3', 'sentinel3', 33200, 'sports'),
('Seven 70', 'seven70', 65000, 'sports'),
('ETR1', 'sheava', 85600, 'super'),
('Slam Van', 'slamvan3', 23144, 'muscle'),
('Sovereign', 'sovereign', 27940, 'motorcycles'),
('Stinger', 'stinger', 89200, 'sportsclassics'),
('Streiter', 'streiter', 22500, 'sports'),
('Sultan', 'sultan', 32000, 'sports'),
('Sultan RS', 'sultanrs', 36000, 'super'),
('Super Diamond', 'superd', 25750, 'sedans'),
('Surano', 'surano', 32750, 'sports'),
('Surfer', 'surfer', 18015, 'vans'),
('T20', 't20', 160000, 'super'),
('Tailgater', 'tailgater', 18125, 'sedans'),
('Tampa', 'tampa', 21328, 'muscle'),
('Thrust', 'thrust', 23012, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 140, 'motorcycles'),
('Trophy Truck', 'trophytruck', 23034, 'offroad'),
('Turismo R', 'turismor', 225200, 'super'),
('Tyrus', 'tyrus', 360200, 'super'),
('Vacca', 'vacca', 1750000, 'super'),
('Vader', 'vader', 20834, 'motorcycles'),
('Verlierer', 'verlierer2', 74200, 'sports'),
('Vigero', 'vigero', 22902, 'muscle'),
('Virgo', 'virgo', 19514, 'muscle'),
('Viseris', 'viseris', 115000, 'sportsclassics'),
('Visione', 'visione', 342000, 'super'),
('Voodoo', 'voodoo', 20119, 'muscle'),
('Vortex', 'vortex', 25036, 'motorcycles'),
('Warrener', 'warrener', 4260, 'sedans'),
('Washington', 'washington', 9890, 'sedans'),
('Windsor', 'windsor', 40546, 'coupes'),
('Woflsbane', 'wolfsbane', 19019, 'motorcycles'),
('XLS', 'xls', 33250, 'suvs'),
('X Max', 'xmax', 84117, 'import'),
('Yosemite', 'yosemite', 21087, 'muscle'),
('Youga', 'youga', 22030, 'vans'),
('Z190', 'z190', 138000, 'sportsclassics'),
('Zentorno', 'zentorno', 386200, 'super'),
('Zion', 'zion', 38929, 'coupes'),
('Zombie', 'zombiea', 28105, 'motorcycles'),
('Z-Type', 'ztype', 65200, 'sportsclassics');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('import', 'Véhicule Importés'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vehicle_sold`
--

INSERT INTO `vehicle_sold` (`client`, `model`, `plate`, `soldby`, `date`) VALUES
('Vasco Mancini', 'blista', 'FRJ 853', 'Pablo Gavir', '2020-05-27 19:47'),
('Vasco Mancini', 'blade', 'GBY 677', 'Pablo Gavir', '2020-05-26 12:11'),
('Edward Levingston', 'blista', 'KSG 287', 'Prenom Gavir', '2020-05-31 16:42'),
('Luke Remondis', 'dbs08', 'SEP 007', 'Vasco Mancini', '2020-05-23 09:56'),
('Bartholomew Winchester', '911turboS', 'TNA 377', 'Vasco Mancini', '2020-05-22 18:37'),
('Prenom Gavir', 'blista', 'ZYV 941', 'Diogo Perez', '2020-06-03 01:27');

-- --------------------------------------------------------

--
-- Structure de la table `warrants_list`
--

CREATE TABLE `warrants_list` (
  `id` int(11) NOT NULL,
  `json_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `weashops`
--

INSERT INTO `weashops` (`id`, `name`, `item`, `price`) VALUES
(3, 'GunShop', 'WEAPON_FLASHLIGHT', 500),
(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 500),
(5, 'GunShop', 'WEAPON_MACHETE', 900),
(6, 'BlackWeashop', 'WEAPON_MACHETE', 900),
(9, 'GunShop', 'WEAPON_BAT', 1000),
(10, 'BlackWeashop', 'WEAPON_BAT', 1000),
(53, 'GunShop', 'weapon_knuckle', 300),
(54, 'BlackWeashop', 'weapon_knuckle', 500),
(55, 'GunShop', 'weapon_switchblade', 300),
(56, 'BlackWeashop', 'weapon_switchblade', 500),
(57, 'GunShop', 'weapon_switchblade', 300),
(58, 'BlackWeashop', 'weapon_switchblade', 500),
(59, 'GunShop', 'WEAPON_PISTOL', 300),
(60, 'BlackWeashop', 'WEAPON_PISTOL', 500),
(61, 'GunShop', 'WEAPON_FLASHLIGHT', 60),
(62, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 70),
(63, 'GunShop', 'WEAPON_MACHETE', 90),
(64, 'BlackWeashop', 'WEAPON_MACHETE', 110),
(65, 'GunShop', 'WEAPON_NIGHTSTICK', 150),
(66, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 150),
(67, 'GunShop', 'WEAPON_BAT', 100),
(68, 'BlackWeashop', 'WEAPON_BAT', 100),
(69, 'GunShop', 'WEAPON_STUNGUN', 50),
(70, 'BlackWeashop', 'WEAPON_STUNGUN', 50),
(71, 'GunShop', 'WEAPON_MICROSMG', 1400),
(72, 'BlackWeashop', 'WEAPON_MICROSMG', 1700),
(73, 'GunShop', 'WEAPON_PUMPSHOTGUN', 3400),
(74, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 3500),
(75, 'GunShop', 'WEAPON_ASSAULTRIFLE', 10000),
(76, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 11000),
(77, 'GunShop', 'WEAPON_SPECIALCARBINE', 15000),
(78, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 16500),
(79, 'GunShop', 'WEAPON_SNIPERRIFLE', 22000),
(80, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 24000),
(81, 'GunShop', 'WEAPON_FIREWORK', 18000),
(82, 'BlackWeashop', 'WEAPON_FIREWORK', 20000),
(83, 'GunShop', 'WEAPON_GRENADE', 500),
(84, 'BlackWeashop', 'WEAPON_GRENADE', 650),
(85, 'GunShop', 'WEAPON_BZGAS', 200),
(86, 'BlackWeashop', 'WEAPON_BZGAS', 350),
(87, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 100),
(88, 'BlackWeashop', 'WEAPON_FIREEXTINGUISHER', 100),
(89, 'GunShop', 'WEAPON_BALL', 50),
(90, 'BlackWeashop', 'WEAPON_BALL', 50),
(91, 'GunShop', 'WEAPON_SMOKEGRENADE', 100),
(92, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 100),
(93, 'BlackWeashop', 'WEAPON_APPISTOL', 1100),
(94, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 12000),
(95, 'BlackWeashop', 'WEAPON_HEAVYSNIPER', 30000),
(96, 'BlackWeashop', 'WEAPON_MINIGUN', 45000),
(97, 'BlackWeashop', 'WEAPON_RAILGUN', 50000),
(98, 'BlackWeashop', 'WEAPON_STICKYBOMB', 500);

-- --------------------------------------------------------

--
-- Structure de la table `yellow_tweets`
--

CREATE TABLE `yellow_tweets` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `yellow_tweets`
--

INSERT INTO `yellow_tweets` (`id`, `phone_number`, `firstname`, `lastname`, `message`, `time`) VALUES
(830, '471-5401', 'Pablo', 'Gavir', 'au dd', '2020-05-23 00:56:31'),
(831, '116-0872', 'Rayan', 'DeLaMoula', 'JE VOUS BAISE', '2020-05-23 00:57:01'),
(832, '747-0013', 'Max', 'Walker', 'd', '2020-06-07 09:40:21');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Index pour la table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Index pour la table `arrests_list`
--
ALTER TABLE `arrests_list`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `baninfo`
--
ALTER TABLE `baninfo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `banlist`
--
ALTER TABLE `banlist`
  ADD PRIMARY KEY (`license`);

--
-- Index pour la table `banlisthistory`
--
ALTER TABLE `banlisthistory`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `boats`
--
ALTER TABLE `boats`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `boat_categories`
--
ALTER TABLE `boat_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `bolos_list`
--
ALTER TABLE `bolos_list`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `criminal_records`
--
ALTER TABLE `criminal_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Index pour la table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_ballas`
--
ALTER TABLE `fine_types_ballas`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_cammora`
--
ALTER TABLE `fine_types_cammora`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_cosanostra`
--
ALTER TABLE `fine_types_cosanostra`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_families`
--
ALTER TABLE `fine_types_families`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_vagos`
--
ALTER TABLE `fine_types_vagos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `insto_accounts`
--
ALTER TABLE `insto_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `insto_instas`
--
ALTER TABLE `insto_instas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_insto_instas_insto_accounts` (`authorId`);

--
-- Index pour la table `insto_likes`
--
ALTER TABLE `insto_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_insto_likes_insto_accounts` (`authorId`),
  ADD KEY `FK_insto_likes_insto_instas` (`inapId`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jsfour_criminalrecord`
--
ALTER TABLE `jsfour_criminalrecord`
  ADD PRIMARY KEY (`offense`);

--
-- Index pour la table `jsfour_criminaluserinfo`
--
ALTER TABLE `jsfour_criminaluserinfo`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `jsfour_logs`
--
ALTER TABLE `jsfour_logs`
  ADD PRIMARY KEY (`pk`);

--
-- Index pour la table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Index pour la table `marathon_times`
--
ALTER TABLE `marathon_times`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `open_car`
--
ALTER TABLE `open_car`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `organisation_moneywash`
--
ALTER TABLE `organisation_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`),
  ADD KEY `vehsowned` (`owner`);

--
-- Index pour la table `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IsDead` (`identifier`);

--
-- Index pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_ch_reddit`
--
ALTER TABLE `phone_ch_reddit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_reddit`
--
ALTER TABLE `phone_reddit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_shops`
--
ALTER TABLE `phone_shops`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `truck_inventory`
--
ALTER TABLE `truck_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item` (`item`,`plate`);

--
-- Index pour la table `truck_inventory2`
--
ALTER TABLE `truck_inventory2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Index pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Index pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `user_accessories`
--
ALTER TABLE `user_accessories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_policearmory`
--
ALTER TABLE `user_policearmory`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `user_tenue`
--
ALTER TABLE `user_tenue`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `warrants_list`
--
ALTER TABLE `warrants_list`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `yellow_tweets`
--
ALTER TABLE `yellow_tweets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `arrests_list`
--
ALTER TABLE `arrests_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `baninfo`
--
ALTER TABLE `baninfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `banlisthistory`
--
ALTER TABLE `banlisthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT pour la table `bolos_list`
--
ALTER TABLE `bolos_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `criminal_records`
--
ALTER TABLE `criminal_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT pour la table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT pour la table `fine_types_ballas`
--
ALTER TABLE `fine_types_ballas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `fine_types_cammora`
--
ALTER TABLE `fine_types_cammora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `fine_types_cosanostra`
--
ALTER TABLE `fine_types_cosanostra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `fine_types_families`
--
ALTER TABLE `fine_types_families`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `fine_types_vagos`
--
ALTER TABLE `fine_types_vagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `insto_accounts`
--
ALTER TABLE `insto_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `insto_instas`
--
ALTER TABLE `insto_instas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT pour la table `insto_likes`
--
ALTER TABLE `insto_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT pour la table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=431;

--
-- AUTO_INCREMENT pour la table `jsfour_logs`
--
ALTER TABLE `jsfour_logs`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `marathon_times`
--
ALTER TABLE `marathon_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `open_car`
--
ALTER TABLE `open_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `organisation_moneywash`
--
ALTER TABLE `organisation_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `pet`
--
ALTER TABLE `pet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `phone_ch_reddit`
--
ALTER TABLE `phone_ch_reddit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `phone_reddit`
--
ALTER TABLE `phone_reddit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `phone_shops`
--
ALTER TABLE `phone_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT pour la table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `truck_inventory`
--
ALTER TABLE `truck_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `truck_inventory2`
--
ALTER TABLE `truck_inventory2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT pour la table `user_accessories`
--
ALTER TABLE `user_accessories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5138;

--
-- AUTO_INCREMENT pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `user_tenue`
--
ALTER TABLE `user_tenue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `warrants_list`
--
ALTER TABLE `warrants_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT pour la table `yellow_tweets`
--
ALTER TABLE `yellow_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=833;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `insto_instas`
--
ALTER TABLE `insto_instas`
  ADD CONSTRAINT `FK_insto_instas_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `insto_accounts` (`id`);

--
-- Contraintes pour la table `insto_likes`
--
ALTER TABLE `insto_likes`
  ADD CONSTRAINT `FK_insto_likes_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `insto_accounts` (`id`),
  ADD CONSTRAINT `FK_insto_likes_insto_instas` FOREIGN KEY (`inapId`) REFERENCES `insto_instas` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
