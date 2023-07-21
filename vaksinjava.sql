-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 06:10 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vaksinjava`
--

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `nik` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `umur` int(5) NOT NULL,
  `telp` int(16) NOT NULL,
  `jKelamin` varchar(50) NOT NULL,
  `jVaksin` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`nik`, `nama`, `umur`, `telp`, `jKelamin`, `jVaksin`, `alamat`) VALUES
(10001, 'Adli Evander P', 20, 62896, 'Perempuan', 'Vaksin 2 ( Kedua )', 'Depok'),
(10002, 'Janua', 17, 62895, 'Laki - laki', 'Vaksin 1 ( Pertama )', 'Jakarta'),
(10004, 'Dimas Aulia', 17, 62894, 'Laki - laki', 'Vaksin 3 ( Ketiga )', 'Jakarta'),
(10005, 'Faris Almasyah', 17, 62895, 'Laki - laki', 'Vaksin 3 ( Ketiga )', 'Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(123, 'Adli', '123', 'admin'),
(213, 'Pangaribuan', '213', 'user'),
(321, 'Evan', '321', 'petugas'),
(1234, 'petugas', '321', 'petugas'),
(4321, 'admin', '123', 'admin'),
(32123, 'User', '122', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
