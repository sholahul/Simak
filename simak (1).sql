-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2017 at 08:36 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simak`
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
  `no_hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `password`, `jurusan`, `alamat`, `no_hp`) VALUES
('02123', 'saipul', '12345', 'Teknik Informatika', 'Indralaya', '217473479');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nip_dosen` varchar(13) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nip_dosen`, `nama`, `password`, `alamat`, `no_hp`) VALUES
('274859376', 'Agusti', '567890', 'Indralaya', '294723'),
('283792793', 'Billy ', '123456', 'Palembang', '2187624');

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
  `nim` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `alamat` text,
  `no_hp` varchar(13) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `kode_jurusan` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `password`, `alamat`, `no_hp`, `Tanggal_Lahir`, `kode_jurusan`) VALUES
('9021231', 'sabatia', '12345', 'JL GUB H A BASTARI 442 RT 11 RW 03 KEL 8 ULU KEC SU1 PALEMBANG', '082179161876', '1997-08-17', 1),
('9021232', 'sabatia', '12345', 'JL GUB H A BASTARI 442 RT 11 RW 03 KEL 8 ULU KEC SU1 PALEMBANG', '082179161876', '1997-08-17', 1),
('90213233', 'ipul', '111213', 'ea', '082281036974', '1998-05-30', 2);

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
