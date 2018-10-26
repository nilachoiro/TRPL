-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2017 at 05:52 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sifings`
--

-- --------------------------------------------------------

--
-- Table structure for table `calon_pegawai`
--

CREATE TABLE `calon_pegawai` (
  `ID_Calon_Pegawai` int(11) NOT NULL,
  `Nama_Pegawai` varchar(20) NOT NULL,
  `Jenis_Kelamin` varchar(10) NOT NULL,
  `Agama` varchar(15) NOT NULL,
  `Tanggal_Lahir` varchar(20) NOT NULL,
  `Alamat` varchar(15) NOT NULL,
  `Kota` varchar(15) NOT NULL,
  `No_Telp` varchar(13) NOT NULL,
  `Keterampilan` varchar(50) NOT NULL,
  `Keterbatasan` varchar(50) NOT NULL,
  `Alasan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calon_pegawai`
--

INSERT INTO `calon_pegawai` (`ID_Calon_Pegawai`, `Nama_Pegawai`, `Jenis_Kelamin`, `Agama`, `Tanggal_Lahir`, `Alamat`, `Kota`, `No_Telp`, `Keterampilan`, `Keterbatasan`, `Alasan`) VALUES
(1, 'Abdul khohar', 'Laki-laki', 'Islam', '2017-10-03 00:00:00', 'Jangkar', 'Situbondo', '08991078366', 'Menguasai bidang marketing sales', 'Keterbatasan publik speaking', 'ingin memperoleh ilmu baru dan pengalaman baru'),
(2, 'Abdus Somat', 'Laki-laki', 'Islam', '03 Okt 17 0:05:33', 'Palangan', 'Situbondo', '08903849278', 'Menguasi bidang komputer', 'Belum bisa mengoprasikan kompu', 'ingin mencari banyak teman'),
(4, 'Safira anggun parawi', 'Perempuan', 'Kristen', '13 Okt 17 0:08:52', 'Sempusari', 'Jember', '08792191181', 'Menguasi bidang komputer', 'Tidak suka membaur sesama', 'ingin menyelesaikan masalah keluarga'),
(5, 'Sofia muntia isabela', 'Perempuan', 'Budha', '13 Sep 17 0:16:37', 'Buleleng', 'Bali', '089769769988', 'Mampu bekerja team dengan baik', 'Tidak suka membaur sesama', 'mencari pengalaman baru'),
(6, 'Solihin komar', 'Laki-laki', 'Islam', '20 Okt 17 16:55:06', 'Tapen ', 'Jember', '0838428329', 'Menguasi bidang komputer', 'Keterbatasan Public speaking', 'mIngin menambang wawasan baru'),
(7, 'Rika anggraini', 'Laki-laki', 'Islam', '16 Okt 17 16:57:08', 'Jelbuk', 'Jember', '092304924', 'Mampu bekerja team dengan baik', 'Tidak suka membaur sesama', 'Ingin Membahagiakan ortu saya'),
(8, 'Miranda ', 'Perempuan', 'Kristen', '20 Okt 17 21:49:18', 'Kencong', 'Jember', '08773645352', 'Mampu bekerja team dengan baik', 'Keterbatasan Public speaking', 'Membantu kondisi perekonomian keluarga');

-- --------------------------------------------------------

--
-- Table structure for table `distribusi`
--

CREATE TABLE `distribusi` (
  `ID_Distribusi` int(11) NOT NULL,
  `ID_Konsumen` int(11) NOT NULL,
  `ID_Pegawai` int(11) NOT NULL,
  `Tanggal_Distribusi` datetime NOT NULL,
  `Alamat_Pengiriman` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--
//updaujgasjfbnlkasdmjk
CREATE TABLE `konsumen` (
  `ID_Konsumen` int(11) NOT NULL,
  `Nama_Konsumen` varchar(25) NOT NULL,
  `Alamat` varchar(20) NOT NULL,
  `Jenis_Kelamin` varchar(10) NOT NULL,
  `No_Telp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `ID_Distribusi` int(11) NOT NULL,
  `ID_Produk` int(11) NOT NULL,
  `Harga` varchar(10) NOT NULL,
  `Jml_Pesanan` int(11) NOT NULL,
  `Discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `ID_Pegawai` int(11) NOT NULL,
  `Nama_Pegawai` varchar(20) NOT NULL,
  `Username` varchar(15) DEFAULT NULL,
  `Password` varchar(15) DEFAULT NULL,
  `Jenis_kelamin` varchar(12) NOT NULL,
  `Agama` varchar(10) NOT NULL,
  `Jabatan` varchar(15) DEFAULT NULL,
  `Tanggal_Lahir` varchar(25) NOT NULL,
  `Alamat` varchar(15) NOT NULL,
  `Kota` varchar(10) NOT NULL,
  `Photo` varchar(25) DEFAULT NULL,
  `No_Telp` varchar(13) NOT NULL,
  `Catatan` varchar(15) DEFAULT NULL,
  `Status_pegawai` enum('calon pegawai','pegawai tetap') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`ID_Pegawai`, `Nama_Pegawai`, `Username`, `Password`, `Jenis_kelamin`, `Agama`, `Jabatan`, `Tanggal_Lahir`, `Alamat`, `Kota`, `Photo`, `No_Telp`, `Catatan`, `Status_pegawai`) VALUES
(1, 'Ferry', 'ferry', 'lalala', 'Laki-laki', 'Islam', 'Direktur', '1997-07-25 00:00:00', 'jember', 'situbondo', 'dsfsdfsdfsd', '123414324', 'Tingkatkan', 'pegawai tetap'),
(2, 'Nila', 'nila', 'lalala', 'Perempuan', 'Islam', 'HRD', '2017-10-10 00:00:00', 'Jember Kidul', 'Jember', 'ajkbsdj', '089216969629', 'Fighters', 'pegawai tetap'),
(3, 'Bahri', 'bahri', 'lalala', 'Laki-laki', 'Islam', 'Sales', '2017-04-19 00:00:00', 'Bondowoso', 'Jember', 'asjldjlj', '087657657649', 'Desainer', 'pegawai tetap'),
(4, 'Stanis', 'satan', 'lalala', 'Laki-laki', 'Kristen', 'Sales', '2017-02-20 00:00:00', 'Karimata', 'Jember', 'kdlksa', '085878758787', 'Keepeer', 'pegawai tetap'),
(5, 'Loadhi', 'loadhi', 'lalala', 'Laki-laki', 'Islam', 'Sales', '2017-10-18 00:00:00', 'Jln PB Sudirman', 'Jember', 'ldksda;', '089876758768', 'host', 'pegawai tetap'),
(6, 'Soleh', 'soleh', 'bacot', 'Laki-laki', 'Islam', 'Calon Karyawan', '2017-10-31 00:00:00', 'Jelbuk', 'Jember', 'kdfbjbdf', '0853268763823', 'Tingkatkan', 'calon pegawai'),
(7, 'dsas', NULL, NULL, 'Laki-laki', 'Islam', NULL, '2017-10-03 00:00:00', 'sad', 'ads', '', '234242', NULL, 'calon pegawai'),
(8, 'nama', NULL, NULL, 'Laki-laki', 'Islam', NULL, '03 Okt 17 0:00:00', 'alamat', 'kota', NULL, '28349282', NULL, 'calon pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `ID_Produk` int(11) NOT NULL,
  `Nama_Produk` int(11) NOT NULL,
  `ID_Suplier` int(11) NOT NULL,
  `Harga` int(11) NOT NULL,
  `Persediaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calon_pegawai`
--
ALTER TABLE `calon_pegawai`
  ADD PRIMARY KEY (`ID_Calon_Pegawai`);

--
-- Indexes for table `distribusi`
--
ALTER TABLE `distribusi`
  ADD PRIMARY KEY (`ID_Distribusi`),
  ADD KEY `ID_Pegawai` (`ID_Pegawai`),
  ADD KEY `ID_Konsumen` (`ID_Konsumen`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`ID_Konsumen`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`ID_Distribusi`),
  ADD KEY `ID_Produk` (`ID_Produk`),
  ADD KEY `ID_Distribusi` (`ID_Distribusi`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`ID_Pegawai`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ID_Produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calon_pegawai`
--
ALTER TABLE `calon_pegawai`
  MODIFY `ID_Calon_Pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `distribusi`
--
ALTER TABLE `distribusi`
  MODIFY `ID_Distribusi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `konsumen`
--
ALTER TABLE `konsumen`
  MODIFY `ID_Konsumen` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `ID_Distribusi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `ID_Pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `distribusi`
--
ALTER TABLE `distribusi`
  ADD CONSTRAINT `distribusi_ibfk_1` FOREIGN KEY (`ID_Pegawai`) REFERENCES `pegawai` (`ID_Pegawai`) ON UPDATE CASCADE,
  ADD CONSTRAINT `distribusi_ibfk_2` FOREIGN KEY (`ID_Konsumen`) REFERENCES `konsumen` (`ID_Konsumen`) ON UPDATE CASCADE;

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`ID_Produk`) REFERENCES `produk` (`ID_Produk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`ID_Distribusi`) REFERENCES `distribusi` (`ID_Distribusi`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
