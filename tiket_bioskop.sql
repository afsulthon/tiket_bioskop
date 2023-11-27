SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `tiket_bioskop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tiket_bioskop`;

CREATE TABLE IF NOT EXISTS `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(1000) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2);

ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

COMMIT;