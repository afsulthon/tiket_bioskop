-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 11:00 AM
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
-- Database: `tiket_bioskop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(1000) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(7, 'THE LAST OF US', '27/11 18.15 - Regular - 6 Jam  - Action -  D17+', 'Lorem ipsum dolor sit amet consectetur. At lorem commodo facilisis faucibus. Pharetra vel ultricies amet donec porttitor et ut viverra et. Rhoncus a at cursus auctor mi et enim vulputate. Pulvinar et cursus id risus quis egestas. Lacus facilisi pharetra nec enim faucibus suspendisse hendrerit. Ut orci amet ligula suscipit dignissim a.', 125000, 60, 'tlou.jpg'),
(8, 'GAMPANG CUAN', '28/11 15.30 - Regular - 110 Menit - Komedi - R13+', 'Film GAMPANG CUAN mengisahkan tentang Sultan, laki-laki dan anak sulung di keluarga, yang merantau ke Jakarta dari Sukabumi. Suatu hari adik perempuannya, Bilqis menyusul sang kakak untuk ikut mengadu nasib dan di saat yang bersamaan mereka mengetahui bahwa mendiang ayahnya meninggalkan hutang Rp300 juta yang harus segera dilunasi. Film Gampang Cuan mengangkat lika-liku soal keuangan yang sering dihadapi oleh masyarakat, mulai dari hutang sampai investasi saham yang dibungkus dengan nuansa drama komedi.', 40000, 50, 'gc.jpg'),
(9, 'JOHN WICK : CHAPTER 4', '28/11 19.30 - Regular - 169 Menit - Action - D17+', 'Lorem ipsum dolor sit amet consectetur. At lorem commodo facilisis faucibus. Pharetra vel ultricies amet donec porttitor et ut viverra et. Rhoncus a at cursus auctor mi et enim vulputate. Pulvinar et cursus id risus quis egestas. Lacus facilisi pharetra nec enim faucibus suspendisse hendrerit. Ut orci amet ligula suscipit dignissim a.', 50000, 45, 'jw4.jpg'),
(10, 'SUZUME', '27/11 16.45 - Regular - 125 Menit - Slice of Life - SU', 'Lorem ipsum dolor sit amet consectetur. At lorem commodo facilisis faucibus. Pharetra vel ultricies amet donec porttitor et ut viverra et. Rhoncus a at cursus auctor mi et enim vulputate. Pulvinar et cursus id risus quis egestas. Lacus facilisi pharetra nec enim faucibus suspendisse hendrerit. Ut orci amet ligula suscipit dignissim a.', 35000, 50, 'szm.jpg'),
(11, 'JJBA : STONE OCEAN', '29/11 09.00 - Regular - 6 Jam - Action - D17+', 'Lorem ipsum dolor sit amet consectetur. At lorem commodo facilisis faucibus. Pharetra vel ultricies amet donec porttitor et ut viverra et. Rhoncus a at cursus auctor mi et enim vulputate. Pulvinar et cursus id risus quis egestas. Lacus facilisi pharetra nec enim faucibus suspendisse hendrerit. Ut orci amet ligula suscipit dignissim a.', 60000, 40, 'jojo.jpg'),
(12, 'PENGABDI SETAN 2 : COMMUNION', '29/11 20.00 - Regular - 135 Menit - Horror - R13+', 'Lorem ipsum dolor sit amet consectetur. At lorem commodo facilisis faucibus. Pharetra vel ultricies amet donec porttitor et ut viverra et. Rhoncus a at cursus auctor mi et enim vulputate. Pulvinar et cursus id risus quis egestas. Lacus facilisi pharetra nec enim faucibus suspendisse hendrerit. Ut orci amet ligula suscipit dignissim a.', 55000, 50, 'ps2.jpg'),
(13, 'INVINCIBLE SEASON 1', '29/11 12.00 - Regular - 4 Jam - Adventure - D17+', 'Lorem ipsum dolor sit amet consectetur. At lorem commodo facilisis faucibus. Pharetra vel ultricies amet donec porttitor et ut viverra et. Rhoncus a at cursus auctor mi et enim vulputate. Pulvinar et cursus id risus quis egestas. Lacus facilisi pharetra nec enim faucibus suspendisse hendrerit. Ut orci amet ligula suscipit dignissim a.', 80000, 50, 'inv.jpg'),
(14, 'JUJUTSU KAISEN SEASON 2', '29/11 12.15 - Regular - 7 Jam - Action - D17+', 'Lorem ipsum dolor sit amet consectetur. At lorem commodo facilisis faucibus. Pharetra vel ultricies amet donec porttitor et ut viverra et. Rhoncus a at cursus auctor mi et enim vulputate. Pulvinar et cursus id risus quis egestas. Lacus facilisi pharetra nec enim faucibus suspendisse hendrerit. Ut orci amet ligula suscipit dignissim a.', 75000, 50, 'jjk.jpg'),
(15, 'AVATAR 2', '28/11 19.15 - Regular - 180 Menit - Story - R13+', 'Lorem ipsum dolor sit amet consectetur. At lorem commodo facilisis faucibus. Pharetra vel ultricies amet donec porttitor et ut viverra et. Rhoncus a at cursus auctor mi et enim vulputate. Pulvinar et cursus id risus quis egestas. Lacus facilisi pharetra nec enim faucibus suspendisse hendrerit. Ut orci amet ligula suscipit dignissim a.', 45000, 45, 'avatar.jpg'),
(16, 'ANTMAN : QUANTUMANIA', '27/11 18.00 - Regular - 125 Menit - Action - R13+', 'Lorem ipsum dolor sit amet consectetur. At lorem commodo facilisis faucibus. Pharetra vel ultricies amet donec porttitor et ut viverra et. Rhoncus a at cursus auctor mi et enim vulputate. Pulvinar et cursus id risus quis egestas. Lacus facilisi pharetra nec enim faucibus suspendisse hendrerit. Ut orci amet ligula suscipit dignissim a.', 40000, 40, 'am.jpg'),
(17, 'SPIRITED AWAY', '29/11 20.00 - Regular - 120 Menit - Fiksi - SU', 'Lorem ipsum dolor sit amet consectetur. At lorem commodo facilisis faucibus. Pharetra vel ultricies amet donec porttitor et ut viverra et. Rhoncus a at cursus auctor mi et enim vulputate. Pulvinar et cursus id risus quis egestas. Lacus facilisi pharetra nec enim faucibus suspendisse hendrerit. Ut orci amet ligula suscipit dignissim a.', 50000, 55, 'sa.jpg'),
(18, 'SRIMULAT', '30/11 15.00 - Regular - 130 Menit - Komedi - SU', 'Lorem ipsum dolor sit amet consectetur. At lorem commodo facilisis faucibus. Pharetra vel ultricies amet donec porttitor et ut viverra et. Rhoncus a at cursus auctor mi et enim vulputate. Pulvinar et cursus id risus quis egestas. Lacus facilisi pharetra nec enim faucibus suspendisse hendrerit. Ut orci amet ligula suscipit dignissim a.', 40000, 60, 'Srimulat.jpg'),
(19, 'Gampang Cuan', '29/11 10.00 - Regular - 120 Menit - Komedi - SU', 'Lorem ipsum dolor sit amet consectetur. At lorem commodo facilisis faucibus. Pharetra vel ultricies amet donec porttitor et ut viverra et. Rhoncus a at cursus auctor mi et enim vulputate. Pulvinar et cursus id risus quis egestas. Lacus facilisi pharetra nec enim faucibus suspendisse hendrerit. Ut orci amet ligula suscipit dignissim a.', 35000, 40, 'gc.jpg'),
(20, 'Sang Pemimpi', '30/11 12.00 - Regular - 120 Menit - Drama - SU', 'Lorem ipsum dolor sit amet consectetur. At lorem commodo facilisis faucibus. Pharetra vel ultricies amet donec porttitor et ut viverra et. Rhoncus a at cursus auctor mi et enim vulputate. Pulvinar et cursus id risus quis egestas. Lacus facilisi pharetra nec enim faucibus suspendisse hendrerit. Ut orci amet ligula suscipit dignissim a.', 40000, 40, 'sangpemimpi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
