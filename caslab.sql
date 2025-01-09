-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 09 Jan 2025 pada 04.28
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caslab`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kandidat`
--

CREATE TABLE `kandidat` (
  `nim_caslab` bigint(20) NOT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `kontak_caslab` varchar(255) DEFAULT NULL,
  `prodi` varchar(255) DEFAULT NULL,
  `fakultas` varchar(255) DEFAULT NULL,
  `rumpun_lab` varchar(255) DEFAULT NULL,
  `status_seleksi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kandidat`
--

INSERT INTO `kandidat` (`nim_caslab`, `nama_lengkap`, `kontak_caslab`, `prodi`, `fakultas`, `rumpun_lab`, `status_seleksi`) VALUES
(6701220081, 'Ova Syadhira Pramondari', '6289682945619', 'D3 Sistem Informasi', 'Fakultas Ilmu Terapan', 'Komputer', 2),
(6701220147, 'Muhammad Raihan', '6289624582079', 'D3 Sistem Informasi', 'Fakultas Ilmu Terapan', 'Komputer', 2),
(6701223022, 'Maheswari Maharani Mahfud', '6282297795905', 'D3 Sistem Informasi', 'Fakultas Ilmu Terapan', 'Komputer', 2),
(6706223032, 'Andi Rimba Manggala Putra', '628111434331', 'D3 Rekayasa Perangkat Lunak Aplikasi', 'Fakultas Ilmu Terapan', 'Komputer', 2),
(6706223118, 'Humam Ibadillah Fakhri', '6282113933635', 'D3 Rekayasa Perangkat Lunak Aplikasi', 'Fakultas Ilmu Terapan', 'Komputer', 1),
(6706223135, 'Muhammad Atthariq Mauilana', '62895703076986', 'D3 Rekayasa Perangkat Lunak Aplikasi', 'Fakultas Ilmu Terapan', 'Komputer', 1),
(103012380494, 'Hifdzi Hisan', '6288211533438', 'S1 Informatika', 'Fakultas Informatika', 'Komputer', 2),
(103052300066, 'Benedict Brian Joel Purba', '6283808864310', 'S1 Data Science', 'Fakultas Informatika', 'Komputer', 2),
(607012300027, 'Varel Galih Partiyano', '6281526812169', 'D3 Sistem Informasi', 'Fakultas Ilmu Terapan', 'Komputer', 2),
(607012300050, 'Muhammad Hafid Sukarno', '62895355213293', 'D3 Sistem Informasi', 'Fakultas Ilmu Terapan', 'Komputer', 2),
(607012300134, 'Bagas Permana', '6282293333064', 'D3 Sistem Informasi', 'Fakultas Ilmu Terapan', 'Komputer', 2),
(607032300094, 'Jouvan Augusto Purba', '6285264315875', 'D3 Sistem Informasi Akuntansi', 'Fakultas Ilmu Terapan', 'Komputer', 2),
(607062300050, 'Daffa Akhadi Yoga Perdana', '6282190116233', 'D3 Rekayasa Perangkat Lunak Aplikasi', 'Fakultas Ilmu Terapan', 'Komputer', 2),
(607062300051, 'Rickardo Satrio', '6282118447293', 'D3 Rekayasa Perangkat Lunak Aplikasi', 'Fakultas Ilmu Terapan', 'Komputer', 2),
(607062300080, 'Yusuf Surya Mulyawan', '6285866438046', 'D3 Rekayasa Perangkat Lunak Aplikasi', 'Fakultas Ilmu Terapan', 'Komputer', 2),
(607062300105, 'Andry Adi Satriya', '6281917926078', 'D3 Rekayasa Perangkat Lunak Aplikasi', 'Fakultas Ilmu Terapan', 'Komputer', 2),
(607062330084, 'Muhammad Rizky Sendiko', '6282241626760', 'D3 Rekayasa Perangkat Lunak Aplikasi', 'Fakultas Ilmu Terapan', 'Komputer', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kandidat`
--
ALTER TABLE `kandidat`
  ADD PRIMARY KEY (`nim_caslab`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
