-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 02:16 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `izin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bk`
--

CREATE TABLE `bk` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bk`
--

INSERT INTO `bk` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Bangun Parikesit, S.Pd.', 'bk_1', 'guru_bk1'),
(2, 'Sri Yunianti, S.Pd.', 'bk_2', 'guru_bk2'),
(3, 'Rismiyanti, S.Pd.', 'bk_3', 'guru_bk3');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `mapel` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `NIP` varchar(25) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `mapel`, `username`, `password`, `NIP`, `foto`) VALUES
(1, 'Dra. Sri Eko Handayani Ratnawati', 'matematika', 'mtk_1', 'guru_mtk1', '19681024 199403 2 003', 'mtk1.jpg'),
(2, 'Dra. Catarina Setyawati Marsiana', 'sejarah', 'sej_1', 'guru_sej1', '19650801 200501 2 003', 'sej1.jpg'),
(3, 'Rr. Retna Trimantaraningsih, S.T.', 'SIJA', 'sija_1', 'guru_sija1', '19700627 202121 2 002', 'sija1.jpg'),
(4, 'Eka Nur Ahmad Romadhoni, S.Pd.', 'SIJA', 'sija_2', 'guru_sija2', '19930301 201903 1 011', 'sija2.jpg'),
(5, ' Ambar Budi Santoso, S.Pd.Jas.', 'PJOK', 'pjok_1', 'guru_pjok1', '19800116 200902 1 004', 'pjok1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `izin`
--

CREATE TABLE `izin` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `guru_id` int(11) DEFAULT NULL,
  `bk_id` int(11) DEFAULT NULL,
  `alasan` varchar(200) NOT NULL,
  `waktu` varchar(8) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `is_approved` int(11) NOT NULL DEFAULT 0,
  `file_pendukung` varchar(100) DEFAULT NULL,
  `kode` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `izin`
--

INSERT INTO `izin` (`id`, `siswa_id`, `guru_id`, `bk_id`, `alasan`, `waktu`, `tanggal`, `is_approved`, `file_pendukung`, `kode`) VALUES
(1, 2, 1, 1, 'membuat SIM', '5-10', '2024-02-07 08:10:47', 2, '', ''),
(2, 2, 4, 3, 'sakit', '6-10', '2024-02-15 09:20:25', 2, '', '1'),
(3, 2, 3, 2, 'mau makan bakso', '6-10', '2024-02-14 08:18:47', 3, '', '3');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `nama_setting` varchar(20) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `nama_setting`, `value`) VALUES
(1, 'pembatasan', '12');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `nis` varchar(6) NOT NULL,
  `jurusan` varchar(5) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `kelas`, `nis`, `jurusan`, `username`, `password`, `foto`) VALUES
(1, 'Yumna Putri Nurjanah', '11', '20458', 'SIJA', '35yumna', '11sijab35', 'yumna.jpg'),
(2, 'Zulaykha Kusuma Wardhani', '11', '20459', 'SIJA', '36zula', '11sijab36', 'zula.jpg'),
(3, 'Nur Chesya Puspitasari', '11', '20437', 'SIJA', '14chesya', '11sijab14', 'chesya.jpg'),
(4, 'Tsabita Irene Adielia', '11', '20455', 'SIJA', '32tsabita', '11sijab32', 'bita.jpg'),
(5, 'Maharani Khusnul Khotimah', '11', '19993', 'KA', '36maharani', '11kaa36', 'maharani.jpg'),
(6, 'Zaky Malika Naufal ', '11', '19778', 'DPIB', '35zaky', '11dpibb35', 'malika.jpg'),
(7, 'Muhammad Rania Widyadana', '11', '20145', 'TFLM', '10rania', '11tflmb10', 'widyadana.jpg'),
(8, 'Haifa Annur Lathifa', '11', '20063', 'TKI', '33haifa', '11tkia33', 'haifa.jpg'),
(9, 'Surya Andhika Putri', '11', '20453', 'SIJA', '30surya', '11sijab30', 'aya.jpg'),
(10, 'Nafisya Rhea Prayasti', '11', '20433', 'SIJA', '10rhea', '11sijab10', 'rhea.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bk`
--
ALTER TABLE `bk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `izin`
--
ALTER TABLE `izin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bk`
--
ALTER TABLE `bk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `izin`
--
ALTER TABLE `izin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
