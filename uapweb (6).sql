-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2024 at 04:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uapweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('moza', '12');

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `idfak` varchar(100) NOT NULL,
  `namafak` varchar(100) NOT NULL,
  `iduniv` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`idfak`, `namafak`, `iduniv`) VALUES
('1', 'FMIPA', '1'),
('2', 'FKIP', '2');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `idjur` varchar(100) NOT NULL,
  `namajur` varchar(100) NOT NULL,
  `akreditasijur` varchar(100) DEFAULT NULL,
  `dayatampung` int(11) NOT NULL,
  `idfak` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`idjur`, `namajur`, `akreditasijur`, `dayatampung`, `idfak`) VALUES
('1', 'Ilmu Komputer', 'A', 100, '1'),
('2', 'Biologi', 'A', 100, '1'),
('3', 'Matematika', 'A', 100, '1');

-- --------------------------------------------------------

--
-- Table structure for table `pendataan`
--

CREATE TABLE `pendataan` (
  `idpendataan` varchar(100) NOT NULL,
  `nisn` varchar(100) DEFAULT NULL,
  `idjur` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendataan`
--

INSERT INTO `pendataan` (`idpendataan`, `nisn`, `idjur`) VALUES
('1', '1000000002', '1'),
('2', '1000000004', '2');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `nilaiakhir` decimal(5,2) GENERATED ALWAYS AS ((`bing` + `bindo` + `mtk` + `kimia` + `fisika` + `biologi`) / 6) STORED,
  `tanggallahir` date NOT NULL,
  `bing` decimal(10,2) DEFAULT NULL,
  `bindo` decimal(10,2) DEFAULT NULL,
  `mtk` decimal(10,2) DEFAULT NULL,
  `kimia` decimal(10,2) DEFAULT NULL,
  `fisika` decimal(10,2) DEFAULT NULL,
  `biologi` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nama`, `kelas`, `tanggallahir`, `bing`, `bindo`, `mtk`, `kimia`, `fisika`, `biologi`) VALUES
('1000000002', 'Meloda Nurramdhani', '12 B', '2000-01-02', 93.20, 78.40, 89.60, 93.10, 86.30, 90.00),
('1000000003', 'Nabilah Ratna Ayu', '12 C', '2000-01-03', 80.30, 79.20, 90.40, 94.70, 87.20, 82.30),
('1000000004', 'Jessica Veranda', '12 D', '2000-01-04', 81.60, 80.10, 91.50, 95.30, 88.10, 83.10),
('1000000005', 'Haruka Nakagawa', '12 E', '2000-01-05', 82.70, 81.50, 92.70, 96.20, 89.40, 84.20),
('1000000006', 'Devi Kinal Putri', '12 A', '2000-01-06', 83.20, 82.40, 93.80, 97.10, 90.50, 85.30),
('1000000007', 'Ghaida Farisya', '12 B', '2000-01-07', 84.30, 83.60, 94.20, 98.30, 91.20, 86.10),
('1000000008', 'Ratu Vienny Fitrilya', '12 C', '2000-01-08', 85.20, 84.50, 95.10, 99.20, 92.30, 87.40),
('1000000009', 'Yona Feni Fitriyanti', '12 D', '2000-01-09', 86.40, 85.60, 96.30, 100.10, 93.40, 88.20),
('1000000010', 'Shani Indira Natio', '12 E', '2000-01-10', 87.50, 86.40, 97.20, 101.30, 94.50, 89.50),
('1000000011', 'Beby Chaesara Anadila', '12 A', '2000-01-11', 78.60, 77.50, 88.30, 92.40, 85.70, 80.30),
('1000000012', 'Michelle Christo Kusnadi', '12 B', '2000-01-12', 79.40, 78.30, 89.20, 93.20, 86.20, 81.20),
('1000000013', 'Ayana Shahab', '12 C', '2000-01-13', 80.50, 79.40, 90.10, 94.50, 87.40, 82.40),
('1000000014', 'Nadila Cindi Wantari', '12 D', '2000-01-14', 81.30, 80.70, 91.40, 95.40, 88.60, 83.50),
('1000000015', 'Ratu Vienny Fitrilya', '12 E', '2000-01-15', 82.60, 81.80, 92.50, 96.70, 89.30, 84.10),
('1000000016', 'Elaine Hartanto', '12 A', '2000-01-16', 83.70, 82.50, 93.40, 97.80, 90.70, 85.20),
('1000000017', 'Dena Siti Rohyati', '12 B', '2000-01-17', 84.80, 83.30, 94.30, 98.90, 91.30, 86.30),
('1000000018', 'Frieska Anastasia Laksani', '12 C', '2000-01-18', 85.50, 84.40, 95.50, 99.70, 92.60, 87.50),
('1000000019', 'Jessica Vania', '12 D', '2000-01-19', 86.70, 85.20, 96.70, 100.30, 93.50, 88.40),
('1000000020', 'Lidya Maulida Djuhandar', '12 E', '2000-01-20', 87.40, 86.30, 97.60, 101.20, 94.60, 89.20),
('1000000021', 'Thalia Ivanka', '12 A', '2000-01-21', 78.90, 77.30, 88.10, 92.70, 85.40, 80.70),
('1000000022', 'Shinta Naomi', '12 B', '2000-01-22', 79.20, 78.20, 89.50, 93.60, 86.10, 81.10),
('1000000023', 'Dwi Putri Bonita', '12 C', '2000-01-23', 80.10, 79.60, 90.60, 94.30, 87.50, 82.20),
('1000000024', 'Viviyona Apriani', '12 D', '2000-01-24', 81.90, 80.90, 91.30, 95.80, 88.20, 83.80),
('1000000025', 'Alicia Chanzia', '12 E', '2000-01-25', 82.40, 81.70, 92.80, 96.90, 89.50, 84.30),
('1000000026', 'Maria Genoveva Natalia Desy Purnamasari Gunawan', '12 A', '2000-01-26', 83.10, 82.80, 93.90, 97.40, 90.80, 85.50),
('1000000027', 'Sendy Ariani', '12 B', '2000-01-27', 84.20, 83.50, 94.40, 98.70, 91.90, 86.60),
('1000000028', 'Jessica Veranda', '12 C', '2000-01-28', 85.10, 84.10, 95.20, 99.40, 92.20, 87.40),
('1000000029', 'Gabriela Margareth Warouw', '12 D', '2000-01-29', 86.30, 85.40, 96.60, 100.40, 93.70, 88.10),
('1000000030', 'Saktia Oktapyani', '12 E', '2000-01-30', 87.10, 86.90, 97.30, 101.70, 94.30, 89.60),
('1000000031', 'Annisa Athia', '12 A', '2000-01-31', 78.70, 77.10, 88.00, 92.20, 85.10, 80.80),
('1000000032', 'Nadhifa Karimah', '12 B', '2000-02-01', 79.60, 78.50, 89.70, 93.30, 86.40, 81.30),
('1000000033', 'Rina Chikano', '12 C', '2000-02-02', 80.80, 79.70, 90.90, 94.60, 87.70, 82.50),
('1000000034', 'Elaine Hartanto', '12 D', '2000-02-03', 81.40, 80.50, 91.60, 95.30, 88.50, 83.90),
('123', 'Moza Surya Putra', '12 A', '2003-12-27', 100.00, 100.00, 100.00, 100.00, 100.00, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `univ`
--

CREATE TABLE `univ` (
  `iduniv` varchar(100) NOT NULL,
  `namauniv` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `akreditasi` varchar(100) NOT NULL,
  `peringkat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `univ`
--

INSERT INTO `univ` (`iduniv`, `namauniv`, `alamat`, `website`, `akreditasi`, `peringkat`) VALUES
('1', 'Universitas Lampung', 'Jalur dua Univeristas Lampung, Jalan Prof. Dr Jl. Prof. Dr. Ir. Sumantri Brojonegoro No.1, Kota Band', 'https://www.unila.ac.id/', 'A', '25'),
('2', 'ITERA', 'Jauh Di itera sana', 'https://www.itera.ac.id/', 'A', '20'),
('3', 'Universitas Bandar Lampung', 'Rajabasa, Kedaton', 'ubl.com', 'A', '12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`idfak`),
  ADD KEY `fk_univ` (`iduniv`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`idjur`),
  ADD KEY `fk_fakultas` (`idfak`);

--
-- Indexes for table `pendataan`
--
ALTER TABLE `pendataan`
  ADD PRIMARY KEY (`idpendataan`),
  ADD KEY `fk_idjur` (`idjur`),
  ADD KEY `fk_nisn` (`nisn`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `univ`
--
ALTER TABLE `univ`
  ADD PRIMARY KEY (`iduniv`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD CONSTRAINT `fk_univ` FOREIGN KEY (`iduniv`) REFERENCES `univ` (`iduniv`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD CONSTRAINT `fk_fakultas` FOREIGN KEY (`idfak`) REFERENCES `fakultas` (`idfak`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pendataan`
--
ALTER TABLE `pendataan`
  ADD CONSTRAINT `fk_idjur` FOREIGN KEY (`idjur`) REFERENCES `jurusan` (`idjur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nisn` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
