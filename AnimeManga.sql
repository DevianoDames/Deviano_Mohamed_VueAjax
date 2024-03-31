-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 31, 2024 at 07:10 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `AnimeManga`
--

-- --------------------------------------------------------

--
-- Table structure for table `mangakas`
--

CREATE TABLE `mangakas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mangakas`
--

INSERT INTO `mangakas` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Masashi Kishimoto', 'Masashi.Kishimoto@live.com', '2024-03-31 18:42:13', '2024-03-31 18:42:13'),
(2, 'Eiichiro Oda', 'eiichiro.oda@live.com', '2024-03-31 18:45:30', '2024-03-31 18:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `mangas`
--

CREATE TABLE `mangas` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `mangaka_id` int(11) NOT NULL,
  `published_date` date NOT NULL,
  `manga_image` varchar(125) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mangas`
--

INSERT INTO `mangas` (`id`, `title`, `mangaka_id`, `published_date`, `manga_image`, `created_at`, `updated_at`) VALUES
(1, 'Uzumaki Naruto', 1, '2000-03-03', 'Naruto_vol1.jpg', '2024-03-31 19:02:21', '2024-03-31 19:02:35'),
(2, 'One Piece - East Blue', 2, '1997-07-19', 'Onepiece_vol1.jpg', '2024-03-31 19:05:55', '2024-03-31 19:05:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mangakas`
--
ALTER TABLE `mangakas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mangas`
--
ALTER TABLE `mangas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mangakas`
--
ALTER TABLE `mangakas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mangas`
--
ALTER TABLE `mangas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
