-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 05 jan 2023 om 16:27
-- Serverversie: 10.4.27-MariaDB
-- PHP-versie: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `world_cup_2022`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `goalscorers`
--

CREATE TABLE `goalscorers` (
  `goalscorer_id` double DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `home_team` varchar(100) DEFAULT NULL,
  `away_team` varchar(100) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `scorer` varchar(100) DEFAULT NULL,
  `minute` double DEFAULT NULL,
  `own_goal` varchar(100) DEFAULT NULL,
  `penalty` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `goalscorers`
--

INSERT INTO `goalscorers` (`goalscorer_id`, `date`, `home_team`, `away_team`, `team`, `scorer`, `minute`, `own_goal`, `penalty`) VALUES
(1, '2022-11-20', 'Qatar', 'Ecuador', 'Ecuador', 'Enner Valencia', 16, 'false', 'true'),
(2, '2022-11-20', 'Qatar', 'Ecuador', 'Ecuador', 'Enner Valencia', 31, 'false', 'false'),
(3, '2022-11-21', 'England', 'Iran', 'England', 'Jude Bellingham', 35, 'false', 'false'),
(4, '2022-11-21', 'England', 'Iran', 'England', 'Bukayo Saka', 43, 'false', 'false'),
(5, '2022-11-21', 'England', 'Iran', 'England', 'Raheem Sterling', 45, 'false', 'false'),
(6, '2022-11-21', 'England', 'Iran', 'England', 'Bukayo Saka', 62, 'false', 'false'),
(7, '2022-11-21', 'England', 'Iran', 'Iran', 'Mehdi Taremi', 65, 'false', 'false'),
(8, '2022-11-21', 'England', 'Iran', 'England', 'Marcus Rashford', 71, 'false', 'false'),
(9, '2022-11-21', 'England', 'Iran', 'England', 'Jack Grealish', 90, 'false', 'false'),
(10, '2022-11-21', 'England', 'Iran', 'Iran', 'Mehdi Taremi', 90, 'false', 'true'),
(11, '2022-11-21', 'Senegal', 'Netherlands', 'Netherlands', 'Cody Gakpo', 84, 'false', 'false'),
(12, '2022-11-21', 'Senegal', 'Netherlands', 'Netherlands', 'Davy Klaassen', 90, 'false', 'false'),
(13, '2022-11-21', 'United States', 'Wales', 'United States', 'Timothy Weah', 36, 'false', 'false'),
(14, '2022-11-21', 'United States', 'Wales', 'Wales', 'Gareth Bale', 82, 'false', 'true'),
(15, '2022-11-22', 'Argentina', 'Saudi Arabia', 'Argentina', 'Lionel Messi', 10, 'false', 'true'),
(16, '2022-11-22', 'Argentina', 'Saudi Arabia', 'Saudi Arabia', 'Saleh Al-Shehri', 48, 'false', 'false'),
(17, '2022-11-22', 'Argentina', 'Saudi Arabia', 'Saudi Arabia', 'Salem Al-Dawsari', 53, 'false', 'false'),
(18, '2022-11-22', 'France', 'Australia', 'Australia', 'Craig Goodwin', 9, 'false', 'false'),
(19, '2022-11-22', 'France', 'Australia', 'France', 'Adrien Rabiot', 27, 'false', 'false'),
(20, '2022-11-22', 'France', 'Australia', 'France', 'Olivier Giroud', 32, 'false', 'false'),
(21, '2022-11-22', 'France', 'Australia', 'France', 'Kylian Mbappé', 68, 'false', 'false'),
(22, '2022-11-22', 'France', 'Australia', 'France', 'Olivier Giroud', 71, 'false', 'false'),
(23, '2022-11-23', 'Belgium', 'Canada', 'Belgium', 'Michy Batshuayi', 44, 'false', 'false'),
(24, '2022-11-23', 'Germany', 'Japan', 'Germany', 'İlkay Gündoğan', 33, 'false', 'true'),
(25, '2022-11-23', 'Germany', 'Japan', 'Japan', 'Ritsu Dōan', 75, 'false', 'false'),
(26, '2022-11-23', 'Germany', 'Japan', 'Japan', 'Takuma Asano', 83, 'false', 'false'),
(27, '2022-11-23', 'Spain', 'Costa Rica', 'Spain', 'Dani Olmo', 11, 'false', 'false'),
(28, '2022-11-23', 'Spain', 'Costa Rica', 'Spain', 'Marco Asensio', 21, 'false', 'false'),
(29, '2022-11-23', 'Spain', 'Costa Rica', 'Spain', 'Ferran Torres', 31, 'false', 'true'),
(30, '2022-11-23', 'Spain', 'Costa Rica', 'Spain', 'Ferran Torres', 54, 'false', 'false'),
(31, '2022-11-23', 'Spain', 'Costa Rica', 'Spain', 'Gavi', 74, 'false', 'false'),
(32, '2022-11-23', 'Spain', 'Costa Rica', 'Spain', 'Carlos Soler', 90, 'false', 'false'),
(33, '2022-11-23', 'Spain', 'Costa Rica', 'Spain', 'Álvaro Morata', 90, 'false', 'false'),
(34, '2022-11-24', 'Brazil', 'Serbia', 'Brazil', 'Richarlison', 62, 'false', 'false'),
(35, '2022-11-24', 'Brazil', 'Serbia', 'Brazil', 'Richarlison', 73, 'false', 'false'),
(36, '2022-11-24', 'Portugal', 'Ghana', 'Portugal', 'Cristiano Ronaldo', 65, 'false', 'true'),
(37, '2022-11-24', 'Portugal', 'Ghana', 'Ghana', 'André Ayew', 73, 'false', 'false'),
(38, '2022-11-24', 'Portugal', 'Ghana', 'Portugal', 'João Félix', 78, 'false', 'false'),
(39, '2022-11-24', 'Portugal', 'Ghana', 'Portugal', 'Rafael Leão', 80, 'false', 'false'),
(40, '2022-11-24', 'Portugal', 'Ghana', 'Ghana', 'Osman Bukari', 89, 'false', 'false'),
(41, '2022-11-24', 'Switzerland', 'Cameroon', 'Switzerland', 'Breel Embolo', 48, 'false', 'false'),
(42, '2022-11-25', 'Netherlands', 'Ecuador', 'Netherlands', 'Cody Gakpo', 6, 'false', 'false'),
(43, '2022-11-25', 'Netherlands', 'Ecuador', 'Ecuador', 'Enner Valencia', 49, 'false', 'false'),
(44, '2022-11-25', 'Qatar', 'Senegal', 'Senegal', 'Boulaye Dia', 41, 'false', 'false'),
(45, '2022-11-25', 'Qatar', 'Senegal', 'Senegal', 'Famara Diédhiou', 48, 'false', 'false'),
(46, '2022-11-25', 'Qatar', 'Senegal', 'Qatar', 'Mohammed Muntari', 78, 'false', 'false'),
(47, '2022-11-25', 'Qatar', 'Senegal', 'Senegal', 'Bamba Dieng', 84, 'false', 'false'),
(48, '2022-11-25', 'Wales', 'Iran', 'Iran', 'Rouzbeh Cheshmi', 90, 'false', 'false'),
(49, '2022-11-25', 'Wales', 'Iran', 'Iran', 'Ramin Rezaeian', 90, 'false', 'false'),
(50, '2022-11-26', 'Argentina', 'Mexico', 'Argentina', 'Lionel Messi', 64, 'false', 'false'),
(51, '2022-11-26', 'Argentina', 'Mexico', 'Argentina', 'Enzo Fernández', 87, 'false', 'false'),
(52, '2022-11-26', 'France', 'Denmark', 'France', 'Kylian Mbappé', 61, 'false', 'false'),
(53, '2022-11-26', 'France', 'Denmark', 'Denmark', 'Andreas Christensen', 68, 'false', 'false'),
(54, '2022-11-26', 'France', 'Denmark', 'France', 'Kylian Mbappé', 86, 'false', 'false'),
(55, '2022-11-26', 'Poland', 'Saudi Arabia', 'Poland', 'Piotr Zieliński', 39, 'false', 'false'),
(56, '2022-11-26', 'Poland', 'Saudi Arabia', 'Poland', 'Robert Lewandowski', 82, 'false', 'false'),
(57, '2022-11-26', 'Tunisia', 'Australia', 'Australia', 'Mitchell Duke', 23, 'false', 'false'),
(58, '2022-11-27', 'Belgium', 'Morocco', 'Morocco', 'Romain Saïss', 73, 'false', 'false'),
(59, '2022-11-27', 'Belgium', 'Morocco', 'Morocco', 'Zakaria Aboukhlal', 90, 'false', 'false'),
(60, '2022-11-27', 'Croatia', 'Canada', 'Canada', 'Alphonso Davies', 2, 'false', 'false'),
(61, '2022-11-27', 'Croatia', 'Canada', 'Croatia', 'Andrej Kramarić', 36, 'false', 'false'),
(62, '2022-11-27', 'Croatia', 'Canada', 'Croatia', 'Marko Livaja', 44, 'false', 'false'),
(63, '2022-11-27', 'Croatia', 'Canada', 'Croatia', 'Andrej Kramarić', 70, 'false', 'false'),
(64, '2022-11-27', 'Croatia', 'Canada', 'Croatia', 'Lovro Majer', 90, 'false', 'false'),
(65, '2022-11-27', 'Japan', 'Costa Rica', 'Costa Rica', 'Keysher Fuller', 81, 'false', 'false'),
(66, '2022-11-27', 'Spain', 'Germany', 'Spain', 'Álvaro Morata', 62, 'false', 'false'),
(67, '2022-11-27', 'Spain', 'Germany', 'Germany', 'Niclas Füllkrug', 83, 'false', 'false'),
(68, '2022-11-28', 'Brazil', 'Switzerland', 'Brazil', 'Casemiro', 83, 'false', 'false'),
(69, '2022-11-28', 'Cameroon', 'Serbia', 'Cameroon', 'Jean-Charles Castelletto', 29, 'false', 'false'),
(70, '2022-11-28', 'Cameroon', 'Serbia', 'Serbia', 'Strahinja Pavlović', 45, 'false', 'false'),
(71, '2022-11-28', 'Cameroon', 'Serbia', 'Serbia', 'Sergej Milinković-Savić', 45, 'false', 'false'),
(72, '2022-11-28', 'Cameroon', 'Serbia', 'Serbia', 'Aleksandar Mitrović', 53, 'false', 'false'),
(73, '2022-11-28', 'Cameroon', 'Serbia', 'Cameroon', 'Vincent Aboubakar', 63, 'false', 'false'),
(74, '2022-11-28', 'Cameroon', 'Serbia', 'Cameroon', 'Eric Maxim Choupo-Moting', 66, 'false', 'false'),
(75, '2022-11-28', 'Portugal', 'Uruguay', 'Portugal', 'Bruno Fernandes', 54, 'false', 'false'),
(76, '2022-11-28', 'Portugal', 'Uruguay', 'Portugal', 'Bruno Fernandes', 90, 'false', 'true'),
(77, '2022-11-28', 'South Korea', 'Ghana', 'Ghana', 'Mohammed Salisu', 24, 'false', 'false'),
(78, '2022-11-28', 'South Korea', 'Ghana', 'Ghana', 'Mohammed Kudus', 34, 'false', 'false'),
(79, '2022-11-28', 'South Korea', 'Ghana', 'South Korea', 'Cho Gue-sung', 58, 'false', 'false'),
(80, '2022-11-28', 'South Korea', 'Ghana', 'South Korea', 'Cho Gue-sung', 61, 'false', 'false'),
(81, '2022-11-28', 'South Korea', 'Ghana', 'Ghana', 'Mohammed Kudus', 68, 'false', 'false'),
(82, '2022-11-29', 'Ecuador', 'Senegal', 'Senegal', 'Ismaïla Sarr', 44, 'false', 'true'),
(83, '2022-11-29', 'Ecuador', 'Senegal', 'Ecuador', 'Moisés Caicedo', 67, 'false', 'false'),
(84, '2022-11-29', 'Ecuador', 'Senegal', 'Senegal', 'Kalidou Koulibaly', 70, 'false', 'false'),
(85, '2022-11-29', 'Iran', 'United States', 'United States', 'Christian Pulisic', 38, 'false', 'false'),
(86, '2022-11-29', 'Qatar', 'Netherlands', 'Netherlands', 'Cody Gakpo', 26, 'false', 'false'),
(87, '2022-11-29', 'Qatar', 'Netherlands', 'Netherlands', 'Frenkie de Jong', 49, 'false', 'false'),
(88, '2022-11-29', 'Wales', 'England', 'England', 'Marcus Rashford', 50, 'false', 'false'),
(89, '2022-11-29', 'Wales', 'England', 'England', 'Phil Foden', 51, 'false', 'false'),
(90, '2022-11-29', 'Wales', 'England', 'England', 'Marcus Rashford', 68, 'false', 'false'),
(91, '2022-11-30', 'Australia', 'Denmark', 'Australia', 'Mathew Leckie', 60, 'false', 'false'),
(92, '2022-11-30', 'Poland', 'Argentina', 'Argentina', 'Alexis Mac Allister', 46, 'false', 'false'),
(93, '2022-11-30', 'Poland', 'Argentina', 'Argentina', 'Julián Álvarez', 67, 'false', 'false'),
(94, '2022-11-30', 'Saudi Arabia', 'Mexico', 'Mexico', 'Henry Martín', 47, 'false', 'false'),
(95, '2022-11-30', 'Saudi Arabia', 'Mexico', 'Mexico', 'Luis Chávez', 52, 'false', 'false'),
(96, '2022-11-30', 'Saudi Arabia', 'Mexico', 'Saudi Arabia', 'Salem Al-Dawsari', 90, 'false', 'false'),
(97, '2022-11-30', 'Tunisia', 'France', 'Tunisia', 'Wahbi Khazri', 58, 'false', 'false'),
(98, '2022-12-01', 'Canada', 'Morocco', 'Morocco', 'Hakim Ziyech', 4, 'false', 'false'),
(99, '2022-12-01', 'Canada', 'Morocco', 'Morocco', 'Youssef En-Nesyri', 23, 'false', 'false'),
(100, '2022-12-01', 'Canada', 'Morocco', 'Canada', 'Nayef Aguerd', 40, 'true', 'false'),
(101, '2022-12-01', 'Costa Rica', 'Germany', 'Germany', 'Serge Gnabry', 10, 'false', 'false'),
(102, '2022-12-01', 'Costa Rica', 'Germany', 'Costa Rica', 'Yeltsin Tejeda', 58, 'false', 'false'),
(103, '2022-12-01', 'Costa Rica', 'Germany', 'Costa Rica', 'Juan Pablo Vargas', 70, 'false', 'false'),
(104, '2022-12-01', 'Costa Rica', 'Germany', 'Germany', 'Kai Havertz', 73, 'false', 'false'),
(105, '2022-12-01', 'Costa Rica', 'Germany', 'Germany', 'Kai Havertz', 85, 'false', 'false'),
(106, '2022-12-01', 'Costa Rica', 'Germany', 'Germany', 'Niclas Füllkrug', 89, 'false', 'false'),
(107, '2022-12-01', 'Japan', 'Spain', 'Spain', 'Álvaro Morata', 11, 'false', 'false'),
(108, '2022-12-01', 'Japan', 'Spain', 'Japan', 'Ritsu Dōan', 48, 'false', 'false'),
(109, '2022-12-01', 'Japan', 'Spain', 'Japan', 'Ao Tanaka', 51, 'false', 'false'),
(110, '2022-12-02', 'Cameroon', 'Brazil', 'Cameroon', 'Vincent Aboubakar', 90, 'false', 'false'),
(111, '2022-12-02', 'Ghana', 'Uruguay', 'Uruguay', 'Giorgian de Arrascaeta', 26, 'false', 'false'),
(112, '2022-12-02', 'Ghana', 'Uruguay', 'Uruguay', 'Giorgian de Arrascaeta', 32, 'false', 'false'),
(113, '2022-12-02', 'Serbia', 'Switzerland', 'Switzerland', 'Xherdan Shaqiri', 20, 'false', 'false'),
(114, '2022-12-02', 'Serbia', 'Switzerland', 'Serbia', 'Aleksandar Mitrović', 26, 'false', 'false'),
(115, '2022-12-02', 'Serbia', 'Switzerland', 'Serbia', 'Dušan Vlahović', 35, 'false', 'false'),
(116, '2022-12-02', 'Serbia', 'Switzerland', 'Switzerland', 'Breel Embolo', 44, 'false', 'false'),
(117, '2022-12-02', 'Serbia', 'Switzerland', 'Switzerland', 'Remo Freuler', 48, 'false', 'false'),
(118, '2022-12-02', 'South Korea', 'Portugal', 'Portugal', 'Ricardo Horta', 5, 'false', 'false'),
(119, '2022-12-02', 'South Korea', 'Portugal', 'South Korea', 'Kim Young-gwon', 27, 'false', 'false'),
(120, '2022-12-02', 'South Korea', 'Portugal', 'South Korea', 'Hwang Hee-chan', 90, 'false', 'false'),
(121, '2022-12-03', 'Argentina', 'Australia', 'Argentina', 'Lionel Messi', 35, 'false', 'false'),
(122, '2022-12-03', 'Argentina', 'Australia', 'Argentina', 'Julián Álvarez', 57, 'false', 'false'),
(123, '2022-12-03', 'Argentina', 'Australia', 'Australia', 'Enzo Fernández', 77, 'true', 'false'),
(124, '2022-12-03', 'Netherlands', 'United States', 'Netherlands', 'Memphis Depay', 10, 'false', 'false'),
(125, '2022-12-03', 'Netherlands', 'United States', 'Netherlands', 'Daley Blind', 45, 'false', 'false'),
(126, '2022-12-03', 'Netherlands', 'United States', 'United States', 'Haji Wright', 76, 'false', 'false'),
(127, '2022-12-03', 'Netherlands', 'United States', 'Netherlands', 'Denzel Dumfries', 81, 'false', 'false'),
(128, '2022-12-04', 'England', 'Senegal', 'England', 'Jordan Henderson', 38, 'false', 'false'),
(129, '2022-12-04', 'England', 'Senegal', 'England', 'Harry Kane', 45, 'false', 'false'),
(130, '2022-12-04', 'England', 'Senegal', 'England', 'Bukayo Saka', 57, 'false', 'false'),
(131, '2022-12-04', 'France', 'Poland', 'France', 'Olivier Giroud', 44, 'false', 'false'),
(132, '2022-12-04', 'France', 'Poland', 'France', 'Kylian Mbappé', 74, 'false', 'false'),
(133, '2022-12-04', 'France', 'Poland', 'France', 'Kylian Mbappé', 90, 'false', 'false'),
(134, '2022-12-04', 'France', 'Poland', 'Poland', 'Robert Lewandowski', 90, 'false', 'true'),
(135, '2022-12-05', 'Brazil', 'South Korea', 'Brazil', 'Vinícius Júnior', 7, 'false', 'false'),
(136, '2022-12-05', 'Brazil', 'South Korea', 'Brazil', 'Neymar', 13, 'false', 'true'),
(137, '2022-12-05', 'Brazil', 'South Korea', 'Brazil', 'Richarlison', 29, 'false', 'false'),
(138, '2022-12-05', 'Brazil', 'South Korea', 'Brazil', 'Lucas Paquetá', 36, 'false', 'false'),
(139, '2022-12-05', 'Brazil', 'South Korea', 'South Korea', 'Paik Seung-ho', 76, 'false', 'false'),
(140, '2022-12-05', 'Japan', 'Croatia', 'Japan', 'Daizen Maeda', 43, 'false', 'false'),
(141, '2022-12-05', 'Japan', 'Croatia', 'Croatia', 'Ivan Perišić', 55, 'false', 'false'),
(142, '2022-12-06', 'Portugal', 'Switzerland', 'Portugal', 'Gonçalo Ramos', 17, 'false', 'false'),
(143, '2022-12-06', 'Portugal', 'Switzerland', 'Portugal', 'Pepe', 33, 'false', 'false'),
(144, '2022-12-06', 'Portugal', 'Switzerland', 'Portugal', 'Gonçalo Ramos', 51, 'false', 'false'),
(145, '2022-12-06', 'Portugal', 'Switzerland', 'Portugal', 'Raphaël Guerreiro', 55, 'false', 'false'),
(146, '2022-12-06', 'Portugal', 'Switzerland', 'Switzerland', 'Manuel Akanji', 58, 'false', 'false'),
(147, '2022-12-06', 'Portugal', 'Switzerland', 'Portugal', 'Gonçalo Ramos', 67, 'false', 'false'),
(148, '2022-12-06', 'Portugal', 'Switzerland', 'Portugal', 'Rafael Leão', 90, 'false', 'false');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `results`
--

CREATE TABLE `results` (
  `result_id` double DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `home_team` varchar(100) DEFAULT NULL,
  `away_team` varchar(100) DEFAULT NULL,
  `home_score` double DEFAULT NULL,
  `away_score` double DEFAULT NULL,
  `tournament` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `neutral` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `results`
--

INSERT INTO `results` (`result_id`, `date`, `home_team`, `away_team`, `home_score`, `away_score`, `tournament`, `city`, `country`, `neutral`) VALUES
(1, '2022-11-20', 'Qatar', 'Ecuador', 0, 2, 'FIFA World Cup', 'Al Khor', 'Qatar', 'false'),
(2, '2022-11-21', 'Senegal', 'Netherlands', 0, 2, 'FIFA World Cup', 'Doha', 'Qatar', 'true'),
(3, '2022-11-21', 'England', 'Iran', 6, 2, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(4, '2022-11-21', 'United States', 'Wales', 1, 1, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(5, '2022-11-22', 'Argentina', 'Saudi Arabia', 1, 2, 'FIFA World Cup', 'Lusail', 'Qatar', 'true'),
(6, '2022-11-22', 'Mexico', 'Poland', 0, 0, 'FIFA World Cup', 'Doha', 'Qatar', 'true'),
(7, '2022-11-22', 'Denmark', 'Tunisia', 0, 0, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(8, '2022-11-22', 'France', 'Australia', 4, 1, 'FIFA World Cup', 'Al Wakrah', 'Qatar', 'true'),
(9, '2022-11-23', 'Germany', 'Japan', 1, 2, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(10, '2022-11-23', 'Spain', 'Costa Rica', 7, 0, 'FIFA World Cup', 'Doha', 'Qatar', 'true'),
(11, '2022-11-23', 'Morocco', 'Croatia', 0, 0, 'FIFA World Cup', 'Al Khor', 'Qatar', 'true'),
(12, '2022-11-23', 'Belgium', 'Canada', 1, 0, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(13, '2022-11-24', 'Switzerland', 'Cameroon', 1, 0, 'FIFA World Cup', 'Al Wakrah', 'Qatar', 'true'),
(14, '2022-11-24', 'Brazil', 'Serbia', 2, 0, 'FIFA World Cup', 'Lusail', 'Qatar', 'true'),
(15, '2022-11-24', 'Uruguay', 'South Korea', 0, 0, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(16, '2022-11-24', 'Portugal', 'Ghana', 3, 2, 'FIFA World Cup', 'Doha', 'Qatar', 'true'),
(17, '2022-11-25', 'Qatar', 'Senegal', 1, 3, 'FIFA World Cup', 'Doha', 'Qatar', 'false'),
(18, '2022-11-25', 'Netherlands', 'Ecuador', 1, 1, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(19, '2022-11-25', 'Wales', 'Iran', 0, 2, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(20, '2022-11-25', 'England', 'United States', 0, 0, 'FIFA World Cup', 'Al Khor', 'Qatar', 'true'),
(21, '2022-11-26', 'Poland', 'Saudi Arabia', 2, 0, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(22, '2022-11-26', 'Argentina', 'Mexico', 2, 0, 'FIFA World Cup', 'Lusail', 'Qatar', 'true'),
(23, '2022-11-26', 'Tunisia', 'Australia', 0, 1, 'FIFA World Cup', 'Al Wakrah', 'Qatar', 'true'),
(24, '2022-11-26', 'France', 'Denmark', 2, 1, 'FIFA World Cup', 'Doha', 'Qatar', 'true'),
(25, '2022-11-27', 'Japan', 'Costa Rica', 0, 1, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(26, '2022-11-27', 'Spain', 'Germany', 1, 1, 'FIFA World Cup', 'Al Khor', 'Qatar', 'true'),
(27, '2022-11-27', 'Belgium', 'Morocco', 0, 2, 'FIFA World Cup', 'Doha', 'Qatar', 'true'),
(28, '2022-11-27', 'Croatia', 'Canada', 4, 1, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(29, '2022-11-28', 'Cameroon', 'Serbia', 3, 3, 'FIFA World Cup', 'Al Wakrah', 'Qatar', 'true'),
(30, '2022-11-28', 'Brazil', 'Switzerland', 1, 0, 'FIFA World Cup', 'Doha', 'Qatar', 'true'),
(31, '2022-11-28', 'South Korea', 'Ghana', 2, 3, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(32, '2022-11-28', 'Portugal', 'Uruguay', 2, 0, 'FIFA World Cup', 'Lusail', 'Qatar', 'true'),
(33, '2022-11-29', 'Ecuador', 'Senegal', 1, 2, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(34, '2022-11-29', 'Qatar', 'Netherlands', 0, 2, 'FIFA World Cup', 'Al Khor', 'Qatar', 'false'),
(35, '2022-11-29', 'Wales', 'England', 0, 3, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(36, '2022-11-29', 'Iran', 'United States', 0, 1, 'FIFA World Cup', 'Doha', 'Qatar', 'true'),
(37, '2022-11-30', 'Poland', 'Argentina', 0, 2, 'FIFA World Cup', 'Doha', 'Qatar', 'true'),
(38, '2022-11-30', 'Saudi Arabia', 'Mexico', 1, 2, 'FIFA World Cup', 'Lusail', 'Qatar', 'true'),
(39, '2022-11-30', 'Australia', 'Denmark', 1, 0, 'FIFA World Cup', 'Al Wakrah', 'Qatar', 'true'),
(40, '2022-11-30', 'Tunisia', 'France', 1, 0, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(41, '2022-12-01', 'Japan', 'Spain', 2, 1, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(42, '2022-12-01', 'Costa Rica', 'Germany', 2, 4, 'FIFA World Cup', 'Al Khor', 'Qatar', 'true'),
(43, '2022-12-01', 'Croatia', 'Belgium', 0, 0, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(44, '2022-12-01', 'Canada', 'Morocco', 1, 2, 'FIFA World Cup', 'Doha', 'Qatar', 'true'),
(45, '2022-12-02', 'Serbia', 'Switzerland', 2, 3, 'FIFA World Cup', 'Doha', 'Qatar', 'true'),
(46, '2022-12-02', 'Cameroon', 'Brazil', 1, 0, 'FIFA World Cup', 'Lusail', 'Qatar', 'true'),
(47, '2022-12-02', 'Ghana', 'Uruguay', 0, 2, 'FIFA World Cup', 'Al Wakrah', 'Qatar', 'true'),
(48, '2022-12-02', 'South Korea', 'Portugal', 2, 1, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(49, '2022-12-03', 'Netherlands', 'United States', 3, 1, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(50, '2022-12-03', 'Argentina', 'Australia', 2, 1, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(51, '2022-12-04', 'France', 'Poland', 3, 1, 'FIFA World Cup', 'Doha', 'Qatar', 'true'),
(52, '2022-12-04', 'England', 'Senegal', 3, 0, 'FIFA World Cup', 'Al Khor', 'Qatar', 'true'),
(53, '2022-12-05', 'Japan', 'Croatia', 1, 1, 'FIFA World Cup', 'Al Wakrah', 'Qatar', 'true'),
(54, '2022-12-05', 'Brazil', 'South Korea', 4, 1, 'FIFA World Cup', 'Doha', 'Qatar', 'true'),
(55, '2022-12-06', 'Morocco', 'Spain', 0, 0, 'FIFA World Cup', 'Al Rayyan', 'Qatar', 'true'),
(56, '2022-12-06', 'Portugal', 'Switzerland', 6, 1, 'FIFA World Cup', 'Lusail', 'Qatar', 'true');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `shootouts`
--

CREATE TABLE `shootouts` (
  `shootout_id` double DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `home_team` varchar(100) DEFAULT NULL,
  `away_team` varchar(100) DEFAULT NULL,
  `winner` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `shootouts`
--

INSERT INTO `shootouts` (`shootout_id`, `date`, `home_team`, `away_team`, `winner`) VALUES
(1, '2022-12-05', 'Japan', 'Croatia', 'Croatia'),
(2, '2022-12-06', 'Morocco', 'Spain', 'Morocco');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
