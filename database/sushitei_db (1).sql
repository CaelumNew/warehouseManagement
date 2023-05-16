-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 03:00 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sushitei_db`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `detailbarang`
-- (See below for the actual view)
--
CREATE TABLE `detailbarang` (
`kd_barang` varchar(7)
,`nama_barang` varchar(40)
,`kd_merek` varchar(7)
,`kd_distributor` varchar(7)
,`tanggal_masuk` date
,`harga_barang` int(7)
,`stok_barang` int(4)
,`gambar` varchar(255)
,`keterangan` varchar(200)
,`merek` varchar(30)
,`foto_merek` varchar(50)
,`nama_distributor` varchar(40)
,`no_telp` varchar(13)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `detailtransaksi`
-- (See below for the actual view)
--
CREATE TABLE `detailtransaksi` (
`kd_pretransaksi` varchar(7)
,`kd_transaksi` varchar(7)
,`kd_barang` varchar(11)
,`jumlah` int(4)
,`sub_total` int(8)
,`nama_barang` varchar(40)
,`harga_barang` int(7)
,`jumlah_beli` int(4)
,`total_harga` int(8)
,`tanggal_beli` date
);

-- --------------------------------------------------------

--
-- Table structure for table `table_barang`
--

CREATE TABLE `table_barang` (
  `kd_barang` varchar(7) NOT NULL,
  `nama_barang` varchar(40) NOT NULL,
  `kd_merek` varchar(7) NOT NULL,
  `kd_distributor` varchar(7) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `harga_barang` int(7) NOT NULL,
  `stok_barang` int(4) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_barang`
--

INSERT INTO `table_barang` (`kd_barang`, `nama_barang`, `kd_merek`, `kd_distributor`, `tanggal_masuk`, `harga_barang`, `stok_barang`, `gambar`, `keterangan`) VALUES
('BR002', 'Wagyu A3', 'ME001', 'DS001', '2023-04-27', 1000000, 8, 'wagyu-mentah_169.jpeg', 'Limited, harga per 1kg'),
('BR003', 'Ikan Salmon Fresh', 'ME002', 'DS001', '2023-04-27', 500000, 20, '1682571443987.jpg', 'Tersedia, harga per 1 ekor'),
('BR004', 'Nasi Sushi', 'ME003', 'DS003', '2023-04-27', 200000, 30, '168257157874.jpg', 'Ready, Harga per karung'),
('BR005', 'Kyuri(Timun)', 'ME004', 'DS002', '2023-04-27', 50000, 100, '1682571672117.jpg', 'Tersedia, harga per kg'),
('BR006', 'Aonori', 'ME003', 'DS003', '2023-04-27', 50000, 30, '1682572413818.jpeg', 'tersedia, per pack'),
('BR007', 'Wasabi', 'ME003', 'DS003', '2023-04-27', 150000, 12, '168257245445.jpg', 'per pack'),
('BR008', 'Black Caviar B+', 'ME003', 'DS003', '2023-04-27', 200000, 34, '1682572507839.png', 'Tersedia, per 100gram'),
('BR009', 'Ebi/Udang', 'ME003', 'DS001', '2023-04-27', 200000, 24, '1682572560880.jpg', 'tersedia, harga per kg'),
('BR010', 'Mie Ramen', 'ME003', 'DS003', '2023-04-27', 25000, 250, '1682572607133.jpg', 'tersedia, per pack'),
('BR011', 'Ikura ( telur Ikan Salmon)', 'ME002', 'DS001', '2023-04-27', 150000, 65, '1682572659636.jpg', 'Tersedia, harga per 100gram'),
('BR012', 'Kani Stick', 'ME003', 'DS003', '2023-04-27', 100000, 84, '1682572707834.jpg', 'tersedia, Harga per pack'),
('BR013', 'Sushi Shoyu', 'ME005', 'DS004', '2023-04-27', 120000, 19, '1682572751715.jpg', 'Tersedia, Harga per 1botol'),
('BR014', 'Ikan Maguro ( Tuna)', 'ME002', 'DS001', '2023-04-27', 110000, 40, '1682572815521.jpg', 'Tersedia, harga Per Kg'),
('BR015', 'Gari', 'ME005', 'DS004', '2023-04-27', 130000, 17, '168257285366.jpg', 'tersedia, per pack'),
('BR016', 'Nori ( Rumput Laut)', 'ME003', 'DS003', '2023-04-27', 70000, 130, '1682572901202.jpg', 'Tersedia, harga per 100gram'),
('BR017', 'Bumbu Dapur Hot Kitchen', 'ME005', 'DS004', '2023-04-27', 100000, 182, '1682572963636.jpg', 'Tersedia, Harga per 1botol'),
('BR018', 'Ikan Shimaaji', 'ME002', 'DS001', '2023-04-27', 870000, 7, '1682573012649.jpg', 'Limited, Harga per 1 ekor ikan'),
('BR019', 'Mie Soba', 'ME003', 'DS003', '2023-04-27', 30000, 97, '1682573044437.jpg', 'tersedia, per pack'),
('BR020', 'Sweet Sauce', 'ME005', 'DS004', '2023-04-27', 60000, 21, '1682573089208.jpg', 'Tersedia, Harga per 1botol'),
('BR021', 'Tobiko(Flying Fish Roe)', 'ME002', 'DS001', '2023-04-27', 120000, 52, '1682573138788.jpg', 'Ter'),
('BR022', 'Togarashi', 'ME005', 'DS004', '2023-04-27', 115000, 21, '1682573170326.jpg', 'Ter'),
('BR023', 'Mie Udon', 'ME003', 'DS003', '2023-04-27', 29000, 98, '1682573200884.jpg', 'Ter'),
('BR024', 'Sea Urchin (Uni)', 'ME002', 'DS001', '2023-04-27', 450000, 19, '1682573253557.jpg', 'Tersedia,Harga per 100gram');

-- --------------------------------------------------------

--
-- Table structure for table `table_distributor`
--

CREATE TABLE `table_distributor` (
  `kd_distributor` varchar(7) NOT NULL,
  `nama_distributor` varchar(40) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_distributor`
--

INSERT INTO `table_distributor` (`kd_distributor`, `nama_distributor`, `alamat`, `no_telp`) VALUES
('DS001', 'PT.Daging segar', 'Medan Polonia', '081234567890'),
('DS002', 'PT.SAYUR SEGAR', 'Berastagi', '083812991999'),
('DS003', 'PT. JAPAN FOOD', 'Marelan', '08121212121'),
('DS004', 'PT.SEASONING', 'Berastagi', '08929393939');

-- --------------------------------------------------------

--
-- Table structure for table `table_merek`
--

CREATE TABLE `table_merek` (
  `kd_merek` varchar(7) NOT NULL,
  `merek` varchar(30) NOT NULL,
  `foto_merek` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_merek`
--

INSERT INTO `table_merek` (`kd_merek`, `merek`, `foto_merek`) VALUES
('ME001', 'Quality Beef A++', '1682571055318.png'),
('ME002', 'Salmon Company', '1682571297761.jpg'),
('ME003', 'Japanfood', '1682571262571.jpg'),
('ME004', 'Vegetables A++', '1682571126755.png'),
('ME005', 'Seasoning', '168257117157.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `table_pretransaksi`
--

CREATE TABLE `table_pretransaksi` (
  `kd_pretransaksi` varchar(7) NOT NULL,
  `kd_transaksi` varchar(7) NOT NULL,
  `kd_barang` varchar(11) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `sub_total` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_pretransaksi`
--

INSERT INTO `table_pretransaksi` (`kd_pretransaksi`, `kd_transaksi`, `kd_barang`, `jumlah`, `sub_total`) VALUES
('AN001', 'TR001', 'BR001', 2, 3000),
('AN002', 'TR001', 'BR002', 6, 1500),
('AN003', 'TR002', 'BR003', 2, 5000),
('AN004', 'TR002', 'BR002', 2, 1000),
('AN005', 'TR003', 'BR002', 2, 1000),
('AN006', 'TR003', 'BR003', 2, 5000),
('AN007', 'TR004', 'BR001', 9, 10500),
('AN008', 'TR005', 'BR002', 20, 1000000),
('AN009', 'TR006', 'BR003', 22, 55000),
('AN010', 'TR007', 'BR002', 2, 2000000),
('AN011', 'TR007', 'BR007', 3, 450000),
('AN012', 'TR007', 'BR008', 1, 200000);

--
-- Triggers `table_pretransaksi`
--
DELIMITER $$
CREATE TRIGGER `batal_beli` AFTER DELETE ON `table_pretransaksi` FOR EACH ROW UPDATE table_barang SET
stok_barang = stok_barang + OLD.jumlah
WHERE kd_barang = OLD.kd_barang
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `transaksi` AFTER INSERT ON `table_pretransaksi` FOR EACH ROW UPDATE table_barang SET
stok_barang = stok_barang - new.jumlah
WHERE kd_barang = new.kd_barang
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_beli` AFTER UPDATE ON `table_pretransaksi` FOR EACH ROW UPDATE table_barang SET
stok_barang = stok_barang + OLD.jumlah - NEW.jumlah
WHERE kd_barang = new.kd_barang
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `table_transaksi`
--

CREATE TABLE `table_transaksi` (
  `kd_transaksi` varchar(7) NOT NULL,
  `kd_user` varchar(7) NOT NULL,
  `jumlah_beli` int(4) NOT NULL,
  `total_harga` int(8) NOT NULL,
  `tanggal_beli` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_transaksi`
--

INSERT INTO `table_transaksi` (`kd_transaksi`, `kd_user`, `jumlah_beli`, `total_harga`, `tanggal_beli`) VALUES
('TR001', 'US003', 8, 4500, '2023-04-16'),
('TR002', 'US003', 4, 6000, '2023-04-25'),
('TR003', 'US003', 4, 6000, '2023-01-30'),
('TR004', 'US003', 9, 10500, '2023-03-16'),
('TR005', 'US003', 20, 1000000, '2023-04-25'),
('TR006', 'US003', 22, 55000, '2023-04-25'),
('TR007', 'US003', 6, 2650000, '2023-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `table_user`
--

CREATE TABLE `table_user` (
  `kd_user` varchar(7) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `foto_user` varchar(50) NOT NULL,
  `level` enum('Admin','Kasir','Manager') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_user`
--

INSERT INTO `table_user` (`kd_user`, `nama_user`, `username`, `password`, `foto_user`, `level`) VALUES
('US001', 'Manager ', 'manager', 'bWFuYWdlcjEyMw==', '1682573498666.png', 'Manager'),
('US002', 'Dicky Nainggolan', 'admin123', 'YWRtaW4xMjM=', '1684230719150.jpg', 'Admin'),
('US003', 'Kasir Warehouse ST', 'kasir123', 'a2FzaXIxMjM=', '1682573719845.png', 'Kasir');

-- --------------------------------------------------------

--
-- Stand-in structure for view `transaksi`
-- (See below for the actual view)
--
CREATE TABLE `transaksi` (
`kd_pretransaksi` varchar(7)
,`kd_transaksi` varchar(7)
,`kd_barang` varchar(11)
,`jumlah` int(4)
,`sub_total` int(8)
,`nama_barang` varchar(40)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `transaksi_terbaru`
-- (See below for the actual view)
--
CREATE TABLE `transaksi_terbaru` (
`kd_transaksi` varchar(7)
,`kd_user` varchar(7)
,`jumlah_beli` int(4)
,`total_harga` int(8)
,`tanggal_beli` date
,`nama_user` varchar(20)
);

-- --------------------------------------------------------

--
-- Structure for view `detailbarang`
--
DROP TABLE IF EXISTS `detailbarang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detailbarang`  AS  select `table_barang`.`kd_barang` AS `kd_barang`,`table_barang`.`nama_barang` AS `nama_barang`,`table_barang`.`kd_merek` AS `kd_merek`,`table_barang`.`kd_distributor` AS `kd_distributor`,`table_barang`.`tanggal_masuk` AS `tanggal_masuk`,`table_barang`.`harga_barang` AS `harga_barang`,`table_barang`.`stok_barang` AS `stok_barang`,`table_barang`.`gambar` AS `gambar`,`table_barang`.`keterangan` AS `keterangan`,`table_merek`.`merek` AS `merek`,`table_merek`.`foto_merek` AS `foto_merek`,`table_distributor`.`nama_distributor` AS `nama_distributor`,`table_distributor`.`no_telp` AS `no_telp` from ((`table_barang` join `table_merek` on((`table_barang`.`kd_merek` = `table_merek`.`kd_merek`))) join `table_distributor` on((`table_barang`.`kd_distributor` = `table_distributor`.`kd_distributor`))) ;

-- --------------------------------------------------------

--
-- Structure for view `detailtransaksi`
--
DROP TABLE IF EXISTS `detailtransaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detailtransaksi`  AS  select `table_pretransaksi`.`kd_pretransaksi` AS `kd_pretransaksi`,`table_pretransaksi`.`kd_transaksi` AS `kd_transaksi`,`table_pretransaksi`.`kd_barang` AS `kd_barang`,`table_pretransaksi`.`jumlah` AS `jumlah`,`table_pretransaksi`.`sub_total` AS `sub_total`,`table_barang`.`nama_barang` AS `nama_barang`,`table_barang`.`harga_barang` AS `harga_barang`,`table_transaksi`.`jumlah_beli` AS `jumlah_beli`,`table_transaksi`.`total_harga` AS `total_harga`,`table_transaksi`.`tanggal_beli` AS `tanggal_beli` from ((`table_pretransaksi` join `table_barang` on((`table_pretransaksi`.`kd_barang` = `table_barang`.`kd_barang`))) join `table_transaksi` on((`table_transaksi`.`kd_transaksi` = `table_pretransaksi`.`kd_transaksi`))) ;

-- --------------------------------------------------------

--
-- Structure for view `transaksi`
--
DROP TABLE IF EXISTS `transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `transaksi`  AS  select `table_pretransaksi`.`kd_pretransaksi` AS `kd_pretransaksi`,`table_pretransaksi`.`kd_transaksi` AS `kd_transaksi`,`table_pretransaksi`.`kd_barang` AS `kd_barang`,`table_pretransaksi`.`jumlah` AS `jumlah`,`table_pretransaksi`.`sub_total` AS `sub_total`,`table_barang`.`nama_barang` AS `nama_barang` from (`table_pretransaksi` join `table_barang` on((`table_pretransaksi`.`kd_barang` = `table_barang`.`kd_barang`))) ;

-- --------------------------------------------------------

--
-- Structure for view `transaksi_terbaru`
--
DROP TABLE IF EXISTS `transaksi_terbaru`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `transaksi_terbaru`  AS  select `table_transaksi`.`kd_transaksi` AS `kd_transaksi`,`table_transaksi`.`kd_user` AS `kd_user`,`table_transaksi`.`jumlah_beli` AS `jumlah_beli`,`table_transaksi`.`total_harga` AS `total_harga`,`table_transaksi`.`tanggal_beli` AS `tanggal_beli`,`table_user`.`nama_user` AS `nama_user` from (`table_transaksi` join `table_user` on((`table_transaksi`.`kd_user` = `table_user`.`kd_user`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_barang`
--
ALTER TABLE `table_barang`
  ADD PRIMARY KEY (`kd_barang`),
  ADD KEY `kd_distributor` (`kd_distributor`),
  ADD KEY `kd_merek` (`kd_merek`);

--
-- Indexes for table `table_distributor`
--
ALTER TABLE `table_distributor`
  ADD PRIMARY KEY (`kd_distributor`);

--
-- Indexes for table `table_merek`
--
ALTER TABLE `table_merek`
  ADD PRIMARY KEY (`kd_merek`);

--
-- Indexes for table `table_pretransaksi`
--
ALTER TABLE `table_pretransaksi`
  ADD PRIMARY KEY (`kd_pretransaksi`);

--
-- Indexes for table `table_transaksi`
--
ALTER TABLE `table_transaksi`
  ADD PRIMARY KEY (`kd_transaksi`),
  ADD KEY `kd_user` (`kd_user`);

--
-- Indexes for table `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`kd_user`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_transaksi`
--
ALTER TABLE `table_transaksi`
  ADD CONSTRAINT `table_transaksi_ibfk_1` FOREIGN KEY (`kd_user`) REFERENCES `table_user` (`kd_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
