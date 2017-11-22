-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2017 at 04:33 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hoho`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `password`, `jurusan`, `alamat`, `no_hp`) VALUES
('02123', 'saipul', '12345', 'Teknik Informatika', 'Indralaya', 217473479);

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nip_dosen` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nip_dosen`, `nama`, `password`, `alamat`, `no_hp`) VALUES
(274859376, 'Agusti', '567890', 'Indralaya', 294723),
(283792793, 'Billy ', '123456', 'Palembang', 2187624);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `kode` char(50) NOT NULL,
  `matkul` char(50) NOT NULL,
  `sks` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`kode`, `matkul`, `sks`) VALUES
('001', 'Pemrograman Game', 4),
('002', 'Algoritma Pemrograman 1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `kode` char(50) NOT NULL,
  `matkul` char(50) NOT NULL,
  `nip_dosen` char(50) NOT NULL,
  `jam` time NOT NULL,
  `hari` char(50) NOT NULL,
  `ruang` char(50) NOT NULL,
  `sks` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` int(20) NOT NULL,
  `alamat` text,
  `no_hp` varchar(13) NOT NULL,
  `TTL` date NOT NULL,
  `thn_masuk` int(5) NOT NULL,
  `tgl_yudisum` date NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `dosen_pa` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `password`, `alamat`, `no_hp`, `TTL`, `thn_masuk`, `tgl_yudisum`, `jurusan`, `dosen_pa`) VALUES
(9021231, 'sabatia', 12345, 'JL GUB H A BASTARI 442 RT 11 RW 03 KEL 8 ULU KEC SU1 PALEMBANG', '082179161876', '1997-08-17', 2015, '0000-00-00', 'TEKNIK INFORMATIKA', '13'),
(9021232, 'FARHAN', 67890, 'MATA MERAH', '081378083214', '1997-11-06', 2015, '0000-00-00', 'TEKNIK INFORMATIKA', '15');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `kode` char(50) NOT NULL,
  `nim` int(50) NOT NULL,
  `nip` int(50) NOT NULL,
  `nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transkip_nilai`
--

CREATE TABLE `transkip_nilai` (
  `kode` char(50) NOT NULL,
  `jmlh_pngmbilan` int(5) NOT NULL,
  `huruf_mutu` char(2) NOT NULL,
  `angka_mutu` int(2) NOT NULL,
  `kredit` int(2) NOT NULL,
  `mutu` int(2) NOT NULL,
  `jumlah_mutu` int(5) NOT NULL,
  `jumlah_km` int(5) NOT NULL,
  `ipk` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip_dosen`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
