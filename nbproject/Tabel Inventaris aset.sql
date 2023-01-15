-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jan 2023 pada 14.34
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_pbo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_transaksi_aset`
--

CREATE TABLE `daftar_transaksi_aset` (
  `id_transaksi` int(3) NOT NULL,
  `id_aset` varchar(200) NOT NULL,
  `tanggal_transaksi` varchar(30) NOT NULL,
  `keterangan_transksi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `daftar_transaksi_aset`
--

INSERT INTO `daftar_transaksi_aset` (`id_transaksi`, `id_aset`, `tanggal_transaksi`, `keterangan_transksi`) VALUES
(1, 'Zikri', '2023-01-18', 'renovasi rumah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_aset`
--

CREATE TABLE `t_aset` (
  `id_aset` int(3) NOT NULL,
  `nama_aset` varchar(200) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `harga_pembelian` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_aset`
--

INSERT INTO `t_aset` (`id_aset`, `nama_aset`, `tanggal_pembelian`, `harga_pembelian`) VALUES
(1, 'Zikri', '2023-01-04', '100000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kategori_aset`
--

CREATE TABLE `t_kategori_aset` (
  `id_kategori` int(3) NOT NULL,
  `nama_kategori` varchar(200) NOT NULL,
  `deskripsi_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_kategori_aset`
--

INSERT INTO `t_kategori_aset` (`id_kategori`, `nama_kategori`, `deskripsi_kategori`) VALUES
(1, 'Zikri', 'Rumah bertingkat');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
