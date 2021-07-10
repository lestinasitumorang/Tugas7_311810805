-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2021 at 12:42 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_11`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_administrasi`
--

CREATE TABLE `tb_administrasi` (
  `id_administrasi` int(6) NOT NULL,
  `nama_administrasi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_administrasi`
--

INSERT INTO `tb_administrasi` (`id_administrasi`, `nama_administrasi`) VALUES
(110, 'pajak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` varchar(50) NOT NULL,
  `id_administrasi` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `id_administrasi`, `nama_barang`) VALUES
('123', 110, 'mouse'),
('1298', 111, 'handphone'),
('67', 112, 'tas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_administrasi` int(11) NOT NULL,
  `kode_transaksi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `id_barang`, `id_administrasi`, `kode_transaksi`) VALUES
(100, 101, 102, '4452');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_administrasi`
--
ALTER TABLE `tb_administrasi`
  ADD PRIMARY KEY (`id_administrasi`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
