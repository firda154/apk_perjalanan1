-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Des 2022 pada 08.48
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jalan-jalan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `catatan`
--

CREATE TABLE `catatan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `lokasi` varchar(128) NOT NULL,
  `suhu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `catatan`
--

INSERT INTO `catatan` (`id`, `tanggal`, `jam`, `lokasi`, `suhu`) VALUES
(1, '2022-11-14', '06:40:00', 'jember', 36),
(3, '2022-11-20', '08:00:00', 'surabaya', 36),
(4, '2022-12-01', '06:00:00', 'Probolinggo', 36),
(5, '2022-12-05', '01:00:00', 'Situbondo', 37),
(16, '2022-04-20', '14:45:00', 'jember', 35),
(17, '2022-11-30', '09:17:00', 'semboro', 35);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(112) NOT NULL,
  `name` varchar(128) NOT NULL,
  `nik` int(16) NOT NULL,
  `password` varchar(128) NOT NULL,
  `image` varchar(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `nik`, `password`, `image`, `role_id`, `is_active`, `date_created`) VALUES
(12, 'andy@gmail.com', 'HamzahAndyZulkarnaen', 987654321, '$2y$10$bIlaIquUsvBBSr8ue.eDqu33FLXeYEuS0HGKwu.mqqX4zZkdaRPDq', 'default.jpg', 2, 1, 1667225886),
(13, 'divaoliviya@gmail.com', 'Diva Oliviyaaa', 998768954, '$2y$10$I9vDLCVLFJFn.CLTiEbwvO/EwPmdHC3dfme1McaTs7UoV6ES.krl.', 'default.jpg', 2, 1, 1668393498),
(14, 'maulailman@gmail.com', 'Ngelman', 2147483647, '$2y$10$zUzY5uRCtXw8aXCz2m2AXuco46zg0.Si/O9NDBQ3jcAIC5XznY1DC', 'default.jpg', 2, 1, 1669598650),
(15, 'ilman@gmail.com', 'ilman617', 2147483647, '$2y$10$1lsydD0BnR2Oc.7//RRbgeexoBUOoyF/Jx7AVhaafq06Ay1RnuljG', 'default.jpg', 2, 1, 1669598740);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `catatan`
--
ALTER TABLE `catatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `catatan`
--
ALTER TABLE `catatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
