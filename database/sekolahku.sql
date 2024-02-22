-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Feb 2024 pada 07.21
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolahku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `guru_id` int(5) NOT NULL,
  `nip` varchar(16) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `mata_pelajaran` varchar(50) NOT NULL,
  `tingkat_pengajaran` varchar(20) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`guru_id`, `nip`, `nama`, `jenis_kelamin`, `mata_pelajaran`, `tingkat_pengajaran`, `alamat`) VALUES
(1, '1208070001', 'Budiman, SPd', 'Laki-laki', 'Matematika', 'XII-TKRO', 'Medan'),
(2, '12243233765', 'Rahmat Putra', 'Laki-laki', 'Bahasa Indonesia', 'XI-TKRO', 'Medan Helvetia'),
(3, '243546755444', 'Robertus Ndruru', 'Laki-laki', 'PPKN', 'XII', 'Dangagari'),
(4, '2564869785', 'Anjelina Gulo', 'Perempuan', 'Geografi', 'XI', 'Loloanaa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `komentar_id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`komentar_id`, `nama`, `email`, `pesan`, `date`) VALUES
(2, 'Budi', 'budi@gmail.com', 'Secara desain sudah bisa, tetapi sebaiknya dilakukan update secara berkala pada website agar lebih informatif ', '2023-12-18 03:05:51'),
(3, 'Delta', 'delta@yahoo.com', 'Tes saja ', '2023-12-18 03:06:29'),
(0, 'Arlena', 'Arlena@gmail.com', 'Dapat membantu mendaftar tanpa datang ke sekolah langsung', '2024-02-22 06:05:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `pendaftaran_id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `alamat` text NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `asal_sekolah` varchar(50) NOT NULL,
  `nomor_hp` varchar(15) NOT NULL,
  `pilihan_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`pendaftaran_id`, `nama`, `jenis_kelamin`, `alamat`, `tanggal_lahir`, `tempat_lahir`, `asal_sekolah`, `nomor_hp`, `pilihan_jurusan`) VALUES
(1, 'Budi Dudung', 'Laki-Laki', 'Medan', '2002-12-05', 'Medan', 'SMP N 1 Medan', '081265564364', 'Ilmu Pengetahuan Alam'),
(4, 'Rahmat', 'Laki-Laki', 'Kisaran', '2000-12-05', 'Jakarta', 'SMP N 1 Jakarta', '081265564364', 'Ilmu Pengetahuan Alam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `siswa_id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `jenis_kelamin` text NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `telepon` text NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`siswa_id`, `nama`, `nis`, `jenis_kelamin`, `tanggal_lahir`, `jurusan`, `kelas`, `telepon`, `alamat`) VALUES
(1, 'Delita Gulo', 'Perempuan', 'Perempuan', '2024-01-15', 'Ilmu Pengetahuan Alam', 'X', '081267646754', 'Onolimbu'),
(2, 'Anjel gulo', '234767', 'Perempuan', '2004-03-23', 'Ilmu Pengetahuan Sosial', 'XII', '0813875864865', 'Medan'),
(3, 'Desna natalia Gulo', '2549687', 'Perempuan', '2003-04-01', 'Ilmu Pengetahuan Sosial', 'XII', '0832654373846', 'hiliduho'),
(4, 'Donatus waruwu', '2940586', 'Laki-laki', '2002-09-14', 'Ilmu Pengetahuan Alam', 'XI', '05867463643', 'Dangagari'),
(5, 'Refilia Ndruru', '21835689', 'Laki-laki', '2005-04-02', 'Ilmu Pengetahuan Sosial', 'X', '082358958756', 'loloanaa'),
(6, 'Tetilia buulolo', '362542902', 'Perempuan', '1998-09-12', 'Ilmu Pengetahuan Sosial', 'x', '081345980978', 'hiligeo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(254) NOT NULL,
  `email` varchar(50) NOT NULL,
  `token` char(128) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `last_login` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `token`, `status`, `last_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'anjelinagulo@@gmail.com', 'c0e024d9200b5705bc4804722636378a', '1', '2024-02-22 13:07:05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`pendaftaran_id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `guru_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `pendaftaran_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `siswa_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
