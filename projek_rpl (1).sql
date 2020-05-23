-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Bulan Mei 2020 pada 04.46
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek_rpl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemohon`
--

CREATE TABLE `pemohon` (
  `id_pemohon` int(10) NOT NULL,
  `pw_pemohon` varchar(20) NOT NULL,
  `nama_pemohon` varchar(50) NOT NULL,
  `jk_pemohon` varchar(10) NOT NULL,
  `alamat_pemohon` varchar(50) NOT NULL,
  `nohp_pemohon` varchar(20) NOT NULL,
  `email_pemohon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemohon`
--

INSERT INTO `pemohon` (`id_pemohon`, `pw_pemohon`, `nama_pemohon`, `jk_pemohon`, `alamat_pemohon`, `nohp_pemohon`, `email_pemohon`) VALUES
(1, 'ina', 'Inayah', 'Perempuan', 'Yogyakarta', '08121519407', 'ina@gmail.com'),
(4, 'emir', 'Emir', 'Laki-laki', 'Jakarta', '08723099178', 'emir@gmail.com'),
(10, 'adinda', 'Adinda', 'Perempuan', 'Bekasi', '08543921071', 'adinda@gmail.com'),
(11, 'dhany', 'Ramadhany', 'Laki-laki', 'Wonosobo', '08293841872', 'dhany@gmail.com'),
(17, 'wayan', 'Wayan', 'Laki-laki', 'Tangerang', '08239818091', 'wayan@gmail.com'),
(21, 'karin', 'Karin', 'Perempuan', 'Jakarta', '08192839121', 'karin@gmail.com'),
(24, 'dini', 'Dini', 'Perempuan', 'Solo', '08548092318', 'dini@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permohonan`
--

CREATE TABLE `permohonan` (
  `id_acara` int(10) NOT NULL,
  `id_pemohon` int(10) NOT NULL,
  `id_ustaz` int(10) NOT NULL,
  `nama_acara` varchar(50) NOT NULL,
  `tema_acara` varchar(50) NOT NULL,
  `tempat_acara` varchar(50) NOT NULL,
  `tanggal_acara` varchar(30) NOT NULL,
  `waktu_acara` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `permohonan`
--

INSERT INTO `permohonan` (`id_acara`, `id_pemohon`, `id_ustaz`, `nama_acara`, `tema_acara`, `tempat_acara`, `tanggal_acara`, `waktu_acara`, `status`) VALUES
(49, 1, 2, 'Pengajian Mingguan', 'Ramadhan', 'Masjid An-Nuur', '04/24/2020', '07.00-08.00 WIB', 'Proses'),
(51, 1, 7, 'Baitul Arqam', 'Menjadi Kader Militan', 'Grand Puri', '04/25/2020', '08.00-12.00 WIB', 'Diterima'),
(52, 1, 7, 'Pengajian Mingguan', 'Aqidah', 'Masjid As-Salam', '04/29/2020', '17.00-18.00 WIB', 'Proses'),
(53, 1, 12, 'Pengajian Bulanan', 'Akhlakul Karimah', 'Masjid Al-Amin', '04/24/2020', '07.00-08.00 WIB', 'Proses'),
(54, 1, 13, 'Pengajian Mingguan', 'Adab Makan', 'Masjid As-Salam', '04/30/2020', '15.00-17.00 WIB', 'Diterima'),
(55, 1, 3, 'Kuliah Subuh', 'Adab Menjenguk Orang Sakit', 'Masjid As-Salam', '04/21/2020', 'Waktu Salat Subuh', 'Proses'),
(56, 10, 7, 'Kajian Rutin', 'Teladan Rasul', 'Masjid Baiturrahman', '2020/04/30', '09.00-12.00 WIB', 'Diterima'),
(57, 11, 7, 'Pengajian Bulanan', 'Adab Menjenguk Orang Sakit', 'Masjid Al-Amin', '2020/05/05', '08.00-09.00 WIB', 'Diterima'),
(59, 17, 7, 'Pengajian Mingguan', 'Birrul Walidain', 'Masjid Al-Huda', '2020/06/03', '16.00-17.00 WIB', 'Ditolak'),
(60, 1, 7, 'Kajian Akbar', 'Maulid Nabi', 'Masjid As-Salam', '2020/08/09', '09.00-12.00 WIB', 'Diterima'),
(62, 10, 7, 'Kuliah Subuh', 'Rukun Haji', 'Masjid Ar-Rahim', '05/09/2020', '07.00-08.00 WIB', 'Proses'),
(63, 11, 7, 'Pengajian Bulanan', 'Tafsir', 'Masjid An-Nuur', '2020/06/02', '13.00-14.00 WIB', 'Proses'),
(64, 4, 7, 'Kajian Mingguan', 'Puasa', 'Masjid Al-Amin', '2020/05/03', '13.00-14.00 WIB', 'Diterima'),
(65, 1, 7, 'Pengajian Bulanan', 'Hari Raya', 'Masjid As-Salam', '2020/04/20', '08.00-09.00 WIB', 'Proses'),
(66, 1, 7, 'Pengajian', 'Ramadhan', 'Masjid As-Salam', '04/28/2020', '09.00-10.00 WIB', 'Diterima'),
(67, 10, 7, 'Pengajian Bulanan', 'Akhlakul Karimah', 'Masjid An-Nuur', '2020/04/20', '18.00-19.0 WIB', 'Proses'),
(69, 21, 7, 'Pengajian Mingguan', 'Puasa', 'Masjid As-Salam', '04/25/2020', '15.00-17.00 WIB', 'Diterima'),
(70, 24, 10, 'Pengajian Mingguan', 'Menyambut Idul Ftri', 'Masjid As-Salam', '05/18/2020', '20.00-21.00', 'Diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ustaz`
--

CREATE TABLE `ustaz` (
  `id_ustaz` int(10) NOT NULL,
  `pw_ustaz` varchar(20) NOT NULL,
  `nama_ustaz` varchar(50) NOT NULL,
  `jk_ustaz` varchar(10) NOT NULL,
  `alamat_ustaz` varchar(50) NOT NULL,
  `nohp_ustaz` varchar(20) NOT NULL,
  `email_ustaz` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ustaz`
--

INSERT INTO `ustaz` (`id_ustaz`, `pw_ustaz`, `nama_ustaz`, `jk_ustaz`, `alamat_ustaz`, `nohp_ustaz`, `email_ustaz`) VALUES
(2, 'kai', 'Kai', 'Laki-laki', 'Yogyakarta', '08128930283', 'kai@gmail.com'),
(3, 'omar', 'Omar', 'Laki-laki', 'Jakarta', '085398233071', 'omar@gmail.com'),
(7, 'raka', 'Raka Ananda', 'Laki-laki', 'Bandung', '081328019342', 'raka@gmail.com'),
(8, 'abdul', 'Abdul', 'Laki-laki', 'Bandung', '08485928301', 'abdul@gmail.com'),
(9, 'ghani', 'Ghani', 'Laki-laki', 'Yogyakarta', '08183748390', 'ghani@gmail.com'),
(10, 'umar', 'Umar', 'Laki-laki', 'Yogyakarta', '08134798432', 'umar@gmail.com'),
(11, 'amira', 'Amira', 'Perempuan', 'Bekasi', '08234901283', 'amira@gmail.com'),
(12, 'budi', 'Budi', 'Laki-laki', 'Jakarta', '08192835729', 'budi@gmail.com'),
(13, 'taufiq', 'Taufiqurrahman', 'Laki-laki', 'Bandung', '08534829830', 'taufiq@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pemohon`
--
ALTER TABLE `pemohon`
  ADD PRIMARY KEY (`id_pemohon`);

--
-- Indeks untuk tabel `permohonan`
--
ALTER TABLE `permohonan`
  ADD PRIMARY KEY (`id_acara`),
  ADD KEY `fkid_pemohon` (`id_pemohon`),
  ADD KEY `fkid_ustaz` (`id_ustaz`);

--
-- Indeks untuk tabel `ustaz`
--
ALTER TABLE `ustaz`
  ADD PRIMARY KEY (`id_ustaz`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pemohon`
--
ALTER TABLE `pemohon`
  MODIFY `id_pemohon` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `permohonan`
--
ALTER TABLE `permohonan`
  MODIFY `id_acara` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `ustaz`
--
ALTER TABLE `ustaz`
  MODIFY `id_ustaz` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `permohonan`
--
ALTER TABLE `permohonan`
  ADD CONSTRAINT `fkid_pemohon` FOREIGN KEY (`id_pemohon`) REFERENCES `pemohon` (`id_pemohon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkid_ustaz` FOREIGN KEY (`id_ustaz`) REFERENCES `ustaz` (`id_ustaz`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
