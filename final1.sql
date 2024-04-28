-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2024 at 01:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final1`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `kode_anggota` varchar(10) NOT NULL,
  `nama_anggota` text NOT NULL,
  `email_anggota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `kode_anggota`, `nama_anggota`, `email_anggota`) VALUES
(2, 'A-01', 'michele', 'michelel@gmail.com'),
(3, 'AG-0002', 'chandra', 'chandra@gmail.com'),
(4, 'AG-0003', 'hendrik', 'hendrik@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(4, 'BR001', 8, 'Pro Plus G2', 'Orca', '5000000', '6000000', 'PCS', '13', '3 April 2024, 1:28', '17 April 2024, 9:26'),
(6, 'BR002', 11, 'ARB INNOVA', 'ARB', '500000', '1000000', 'PCS', '1', '14 April 2024, 22:22', '16 April 2024, 11:20'),
(7, 'BR003', 11, 'ARB PAJERO', 'ARB', '500000', '1000000', 'PCS', '8', '14 April 2024, 22:24', NULL),
(8, 'BR004', 14, 'Solar Gard 20%', 'Solar Gard', '2000000', '3000000', 'PCS', '10', '16 April 2024, 11:17', '16 April 2024, 22:50'),
(9, 'BR005', 14, 'V-Kool 60%', 'V-Kool', '4500000', '6000000', 'PCS', '6', '16 April 2024, 22:49', NULL),
(10, 'BR006', 16, 'Comfort Honda HR-V', 'Comfort', '2000000', '3000000', 'PCS', '17', '16 April 2024, 22:51', '16 April 2024, 22:56'),
(11, 'BR007', 16, 'Maxmat 5D', 'Maxmat', '1400000', '2590000', 'PCS', '7', '16 April 2024, 22:53', NULL),
(12, 'BR008', 16, 'Comfort Honda City Hatchback', 'Comfort', '700000', '1725000', 'PCS', '7', '16 April 2024, 22:56', '17 April 2024, 8:45'),
(13, 'BR009', 16, 'Maxmat 7D', 'Maxmat', '1500000', '2290000', 'PCS', '8', '16 April 2024, 22:57', NULL),
(14, 'BR010', 29, 'HELLA KEONG CHROME TWIN TONE', 'HELLA KEONG', '100000', '299000', 'PCS', '30', '16 April 2024, 22:59', NULL),
(15, 'BR011', 17, 'Wiper Mobil Toyota Camry', 'Bosch Advantage', '60000', '128000', 'PCS', '10', '16 April 2024, 23:00', NULL),
(16, 'BR012', 17, 'Wiper Mobil Suzuki Baleno', 'Bosch Advantage', '60000', '128000', 'PCS', '-17', '16 April 2024, 23:02', NULL),
(17, 'BR013', 22, 'Kamera 360 3D Pro ', 'ENIGMA', '2500000', '4799000', 'PCS', '9', '16 April 2024, 23:04', NULL),
(18, 'BR014', 16, 'comfortzz city hatcbck', 'comfrtzz', '2000000', '3000000', 'PCS', '13', '17 April 2024, 9:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `kode_buku` varchar(10) DEFAULT NULL,
  `judul_buku` text NOT NULL,
  `pengarang_buku` text NOT NULL,
  `status_buku` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `kode_buku`, `judul_buku`, `pengarang_buku`, `status_buku`) VALUES
(1, 'P-zrx-01', 'algoritma', 'benz', 'Tersedia'),
(2, 'P-zrx-02', 'java ', 'budi', 'Tersedia'),
(4, 'BK-22-0003', 'lego', 'moana', 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(8, 'Head Unit', '3 April 2024, 1:28'),
(11, 'Bumper Depan', '14 April 2024, 22:22'),
(12, 'Bumper Belakang', '14 April 2024, 22:22'),
(14, 'Kaca Film', '16 April 2024, 11:17'),
(15, 'Roof Box', '16 April 2024, 22:05'),
(16, 'Karpet', '16 April 2024, 22:05'),
(17, 'Wiper', '16 April 2024, 22:05'),
(18, 'Sensor Parkir', '16 April 2024, 22:05'),
(20, 'Kamera Dashcam', '16 April 2024, 22:07'),
(22, 'kamera', '16 April 2024, 22:23'),
(23, 'Cross Bar', '16 April 2024, 22:25'),
(24, 'Stop Lamp', '16 April 2024, 22:38'),
(25, 'Power Back Door', '16 April 2024, 22:39'),
(26, '4x4 - Roll Bar', '16 April 2024, 22:42'),
(29, 'Klakson', '16 April 2024, 22:58'),
(30, 'Bodykit', '17 April 2024, 9:24');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'owen4lu', 'e10adc3949ba59abbe56e057f20f883e', 2),
(2, 'kayla', '827ccb0eea8a706c4c34a16891f84e7b', 3),
(3, 'salim', 'e10adc3949ba59abbe56e057f20f883e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL,
  `levelrole` enum('Owner','Pembelian','Penjualan') NOT NULL DEFAULT 'Owner'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`, `levelrole`) VALUES
(1, 'Salim', 'Jalan Anggur', '082160558223', 'salim223@gmail.com', '', '', 'Owner'),
(2, 'Owen', 'Jalan Glugur', '081918928888', 'owenlu500@gmail.com', '', '', 'Owner'),
(3, 'Kayla', 'Jalan Setiabudi', '081377008997', 'kaylaa@gmail.com', '', '', 'Owner');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(1, 'BR001', 2, '2', '12000000', '3 April 2024, 1:40', '04-2024'),
(2, 'BR001', 2, '1', '6000000', '3 April 2024, 9:34', '04-2024'),
(3, 'BR001', 2, '2', '12000000', '16 April 2024, 12:18', '04-2024'),
(4, 'BR002', 2, '1', '1000000', '16 April 2024, 12:19', '04-2024'),
(5, 'BR001', 2, '2', '12000000', '16 April 2024, 12:18', '04-2024'),
(6, 'BR002', 2, '1', '1000000', '16 April 2024, 12:19', '04-2024'),
(7, 'BR004', 2, '1', '7000000', '16 April 2024, 15:10', '04-2024'),
(8, 'BR013', 1, '1', '4799000', '16 April 2024, 23:08', '04-2024'),
(9, 'BR012', 1, '1', '128000', '16 April 2024, 23:10', '04-2024'),
(10, 'BR002', 1, '1', '1000000', '16 April 2024, 23:10', '04-2024'),
(11, 'BR007', 1, '1', '2590000', '16 April 2024, 23:10', '04-2024'),
(12, 'BR012', 1, '1', '128000', '16 April 2024, 23:10', '04-2024'),
(13, 'BR002', 1, '1', '1000000', '16 April 2024, 23:10', '04-2024'),
(14, 'BR007', 1, '1', '2590000', '16 April 2024, 23:10', '04-2024'),
(15, 'BR012', 1, '1', '128000', '17 April 2024, 8:47', '04-2024'),
(16, 'BR010', 1, '1', '299000', '17 April 2024, 8:48', '04-2024'),
(17, 'BR012', 1, '3', '384000', '17 April 2024, 9:27', '04-2024'),
(18, 'BR002', 1, '1', '1000000', '17 April 2024, 9:27', '04-2024'),
(19, 'BR012', 1, '3', '384000', '17 April 2024, 9:27', '04-2024'),
(20, 'BR002', 1, '1', '1000000', '17 April 2024, 9:27', '04-2024'),
(21, 'BR012', 1, '3', '384000', '17 April 2024, 9:27', '04-2024'),
(22, 'BR002', 1, '1', '1000000', '17 April 2024, 9:27', '04-2024'),
(23, 'BR012', 1, '3', '384000', '17 April 2024, 9:27', '04-2024'),
(24, 'BR002', 1, '1', '1000000', '17 April 2024, 9:27', '04-2024'),
(25, 'BR012', 1, '3', '384000', '17 April 2024, 9:27', '04-2024'),
(26, 'BR002', 1, '1', '1000000', '17 April 2024, 9:27', '04-2024'),
(27, 'BR012', 1, '3', '384000', '17 April 2024, 9:27', '04-2024'),
(28, 'BR002', 1, '1', '1000000', '17 April 2024, 9:27', '04-2024'),
(29, 'BR012', 1, '3', '384000', '17 April 2024, 9:27', '04-2024'),
(30, 'BR002', 1, '1', '1000000', '17 April 2024, 9:27', '04-2024'),
(31, 'BR012', 1, '3', '384000', '17 April 2024, 9:27', '04-2024'),
(32, 'BR002', 1, '1', '1000000', '17 April 2024, 9:27', '04-2024');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `no_peminjaman` varchar(10) DEFAULT NULL,
  `id_anggota` varchar(15) DEFAULT NULL,
  `id_buku` varchar(15) DEFAULT NULL,
  `status_pengembalian` int(11) DEFAULT 0 COMMENT '0 = Belum Dikembalikan, 1 = Sudah Dikembalikan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `no_peminjaman`, `id_anggota`, `id_buku`, `status_pengembalian`) VALUES
(1, 'PJ-0001', '2', '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `no_pengembalian` varchar(10) DEFAULT NULL,
  `id_peminjaman` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id_pengembalian`, `no_pengembalian`, `id_peminjaman`) VALUES
(1, 'KB-1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
(13, 'BR012', 1, '3', '384000', '17 April 2024, 9:27'),
(14, 'BR002', 1, '1', '1000000', '17 April 2024, 9:27');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `kode_staff` varchar(10) DEFAULT NULL,
  `username_staff` text DEFAULT NULL,
  `password_staff` text DEFAULT NULL,
  `nama_staff` text DEFAULT NULL,
  `email_staff` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `kode_staff`, `username_staff`, `password_staff`, `nama_staff`, `email_staff`) VALUES
(7, 'STF-0002', 'salim', '74cff1e3a25c5189ea51ee3808328b7e', 'salim ariantou', 'salim@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'Cemerlang Motor', 'Medan', '082231313112', 'Cemerlang Motor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
