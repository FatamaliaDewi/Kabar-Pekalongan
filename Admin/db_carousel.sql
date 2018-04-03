-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2017 at 09:48 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_carousel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbberita`
--

CREATE TABLE `tbberita` (
  `id_berita` int(3) NOT NULL,
  `kd_kat` int(4) NOT NULL,
  `tanggal` date NOT NULL,
  `judul` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `isi_berita` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbberita`
--

INSERT INTO `tbberita` (`id_berita`, `kd_kat`, `tanggal`, `judul`, `isi_berita`, `gambar`) VALUES
(9, 115, '2017-10-14', 'KOTA PEKALONGAN GELAR KARNAVAL BATIK 2017', 'KONTEN KARNAVAL', '20170805_125240.jpg'),
(8, 0, '2017-10-11', '', '', ''),
(10, 116, '2017-10-14', 'AKN KAJEN GELAR DONOR DARAH', 'KONTEN BERITA', 'img22.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbkategori`
--

CREATE TABLE `tbkategori` (
  `kd_kat` int(4) NOT NULL,
  `kategori` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbkategori`
--

INSERT INTO `tbkategori` (`kd_kat`, `kategori`) VALUES
(115, 'Politik'),
(116, 'Kesehatan'),
(117, 'Hiburan'),
(118, 'Pendidikan'),
(119, 'Satlantas');

-- --------------------------------------------------------

--
-- Table structure for table `tblogin`
--

CREATE TABLE `tblogin` (
  `id_log` int(11) NOT NULL,
  `id_user` char(5) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `device` varchar(75) NOT NULL,
  `browser` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblogin`
--

INSERT INTO `tblogin` (`id_log`, `id_user`, `ip_address`, `device`, `browser`, `time`) VALUES
(1, 'ID001', '127.0.0.1', 'localhost', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) G', '2017-05-15 04:43:53'),
(2, 'ID001', '127.0.0.1', 'localhost', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) G', '2017-05-15 04:50:08'),
(3, 'ID001', '127.0.0.1', 'localhost', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) G', '2017-05-15 07:53:03'),
(4, 'ID001', '127.0.0.1', 'localhost', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) G', '2017-05-15 08:33:54'),
(5, 'ID001', '127.0.0.1', 'localhost', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) G', '2017-05-15 23:53:32'),
(6, 'ID001', '127.0.0.1', 'localhost', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) G', '2017-05-16 14:38:34'),
(7, 'ID001', '127.0.0.1', 'localhost', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) G', '2017-05-17 10:09:39'),
(8, 'ID001', '127.0.0.1', 'localhost', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) G', '2017-05-17 10:09:58'),
(9, 'ID001', '127.0.0.1', 'localhost', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) G', '2017-05-17 10:12:08'),
(10, 'ID001', '127.0.0.1', 'localhost', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) G', '2017-05-17 10:16:43'),
(11, 'ID001', '127.0.0.1', 'localhost', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) G', '2017-05-17 10:16:50'),
(12, 'ID001', '127.0.0.1', 'localhost', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) G', '2017-05-17 10:18:13'),
(13, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:39.0) Geck', '2017-05-31 07:49:04'),
(14, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:39.0) Geck', '2017-05-31 07:49:48'),
(15, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:39.0) Geck', '2017-05-31 07:52:04'),
(16, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:39.0) Geck', '2017-05-31 07:54:02'),
(17, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:39.0) Geck', '2017-05-31 07:55:03'),
(18, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:39.0) Geck', '2017-05-31 08:06:05'),
(19, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:39.0) Geck', '2017-06-03 14:36:59'),
(20, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:39.0) Geck', '2017-06-06 16:58:09'),
(21, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:39.0) Geck', '2017-06-07 01:20:30'),
(22, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:39.0) Geck', '2017-06-07 01:25:33'),
(23, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', '2017-06-07 01:33:32'),
(24, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:39.0) Geck', '2017-06-07 02:20:47'),
(25, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:39.0) Geck', '2017-06-07 05:24:48'),
(26, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:39.0) Geck', '2017-06-07 07:56:48'),
(27, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:39.0) Geck', '2017-06-09 23:38:33'),
(28, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Geck', '2017-09-26 12:45:31'),
(29, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Geck', '2017-09-27 01:57:37'),
(30, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Geck', '2017-09-27 22:47:32'),
(31, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Geck', '2017-09-27 22:53:02'),
(32, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Geck', '2017-09-27 23:13:19'),
(33, 'ID001', '127.0.0.1', 'DESKTOP-VQHLCGF', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Geck', '2017-10-03 06:07:47'),
(34, 'id001', '::1', 'Echo', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2017-10-08 12:09:35'),
(35, 'ID001', '::1', 'user-PC', 'Mozilla/5.0 (Windows NT 6.1; rv:24.0) Gecko/201001', '2017-10-11 01:27:07'),
(36, 'ID001', '::1', 'user-PC', 'Mozilla/5.0 (Windows NT 6.1; rv:24.0) Gecko/201001', '2017-10-11 02:41:30'),
(37, 'ID001', '::1', 'user-PC', 'Mozilla/5.0 (Windows NT 6.1; rv:24.0) Gecko/201001', '2017-10-14 07:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `id_user` char(5) NOT NULL,
  `nama_user` varchar(45) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `lev_user` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`id_user`, `nama_user`, `pass`, `lev_user`) VALUES
('ID001', 'Code Breaker', '0192023a7bbd73250516f069df18b500', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbberita`
--
ALTER TABLE `tbberita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `tbkategori`
--
ALTER TABLE `tbkategori`
  ADD PRIMARY KEY (`kd_kat`);

--
-- Indexes for table `tblogin`
--
ALTER TABLE `tblogin`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbberita`
--
ALTER TABLE `tbberita`
  MODIFY `id_berita` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tblogin`
--
ALTER TABLE `tblogin`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
