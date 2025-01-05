-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2025 at 10:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_file`
--

-- --------------------------------------------------------

--
-- Table structure for table `dok_kerja`
--

CREATE TABLE `dok_kerja` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_file` text NOT NULL,
  `date_upload` date NOT NULL,
  `date_edit` date NOT NULL,
  `jam_upload` time NOT NULL,
  `jam_edit` time NOT NULL,
  `file_upload` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dok_pribadi`
--

CREATE TABLE `dok_pribadi` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_file` text NOT NULL,
  `date_upload` date NOT NULL,
  `date_edit` date NOT NULL,
  `jam_upload` time NOT NULL,
  `jam_edit` time NOT NULL,
  `file_upload` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lap_bulanan`
--

CREATE TABLE `lap_bulanan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_file` text NOT NULL,
  `date_upload` date NOT NULL,
  `date_edit` date NOT NULL,
  `jam_upload` time NOT NULL,
  `jam_edit` time NOT NULL,
  `file_upload` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lap_harian`
--

CREATE TABLE `lap_harian` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_file` text NOT NULL,
  `date_upload` date NOT NULL,
  `date_edit` date NOT NULL,
  `jam_upload` time NOT NULL,
  `jam_edit` time NOT NULL,
  `file_upload` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lap_harian`
--

INSERT INTO `lap_harian` (`id`, `id_user`, `nama_file`, `date_upload`, `date_edit`, `jam_upload`, `jam_edit`, `file_upload`) VALUES
(28, 20, '', '2025-01-04', '2025-01-04', '03:46:50', '03:48:10', 'Panduan_Final_Project_Perancangan_Keamaan_Sistem_dan_Jaringan_(2).pdf');

-- --------------------------------------------------------

--
-- Table structure for table `lap_lain`
--

CREATE TABLE `lap_lain` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_file` text NOT NULL,
  `date_upload` date NOT NULL,
  `date_edit` date NOT NULL,
  `jam_upload` time NOT NULL,
  `jam_edit` time NOT NULL,
  `file_upload` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lap_lain`
--

INSERT INTO `lap_lain` (`id`, `id_user`, `nama_file`, `date_upload`, `date_edit`, `jam_upload`, `jam_edit`, `file_upload`) VALUES
(21, 16, 'sister', '2025-01-03', '0000-00-00', '11:36:53', '00:00:00', 'Panduan_Final_Project_-_Sistem_Terdistribusi1.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `lap_tahunan`
--

CREATE TABLE `lap_tahunan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_file` text NOT NULL,
  `date_upload` date NOT NULL,
  `date_edit` date NOT NULL,
  `jam_upload` time NOT NULL,
  `jam_edit` time NOT NULL,
  `file_upload` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `role_id` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`id`, `nama`, `username`, `password`, `image`, `role_id`, `date_created`, `is_active`) VALUES
(16, 'Rika Cintia', 'rika', '$2y$10$.WoLEK3epVl1HQ1AN2QX5ujaG6BisVSwfBCRs851ehw01op1iESIu', '2.jpg', 2, '2024-12-31', 1),
(19, 'Cindi Claudia', 'cindi', '$2y$10$HxmTaAeCd9OMrrW4ANGon.K1pGij9aFJr9NZtHqMjk0fV/AyaE5yS', '3.jpg', 2, '2024-12-31', 1),
(20, 'Monalisa', 'mona', '$2y$10$p/WA52QsRFKTmOQgHkDSsuXeWs7BRHaP2mr8RZZLfiUY4sPZqWdnC', '4.jpg', 2, '2025-01-02', 1),
(21, 'M. Rifqi', 'admin', '$2y$10$oYwX9wv6p8SdZAHNYPJzW.retSLQJNvzoZWI.DR5YM.Tj7I7NytsW', '11.jpg', 1, '2025-01-04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `scan_pendukung`
--

CREATE TABLE `scan_pendukung` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_file` text NOT NULL,
  `date_upload` date NOT NULL,
  `date_edit` date NOT NULL,
  `jam_upload` time NOT NULL,
  `jam_edit` time NOT NULL,
  `file_upload` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scan_utama`
--

CREATE TABLE `scan_utama` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_file` text NOT NULL,
  `date_upload` date NOT NULL,
  `date_edit` date NOT NULL,
  `jam_upload` time NOT NULL,
  `jam_edit` time NOT NULL,
  `file_upload` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dok_kerja`
--
ALTER TABLE `dok_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dok_pribadi`
--
ALTER TABLE `dok_pribadi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lap_bulanan`
--
ALTER TABLE `lap_bulanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lap_harian`
--
ALTER TABLE `lap_harian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lap_lain`
--
ALTER TABLE `lap_lain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lap_tahunan`
--
ALTER TABLE `lap_tahunan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scan_pendukung`
--
ALTER TABLE `scan_pendukung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scan_utama`
--
ALTER TABLE `scan_utama`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dok_kerja`
--
ALTER TABLE `dok_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `dok_pribadi`
--
ALTER TABLE `dok_pribadi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `lap_bulanan`
--
ALTER TABLE `lap_bulanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `lap_harian`
--
ALTER TABLE `lap_harian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `lap_lain`
--
ALTER TABLE `lap_lain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `lap_tahunan`
--
ALTER TABLE `lap_tahunan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `scan_pendukung`
--
ALTER TABLE `scan_pendukung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `scan_utama`
--
ALTER TABLE `scan_utama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
