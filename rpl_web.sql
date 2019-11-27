-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Nov 2019 pada 13.58
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rpl_web`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `img` varchar(128) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `kode` varchar(128) NOT NULL,
  `pengarang` varchar(128) NOT NULL,
  `penerbit` varchar(128) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `deskripsi` varchar(526) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `book`
--

INSERT INTO `book` (`id`, `img`, `judul`, `kode`, `pengarang`, `penerbit`, `tahun`, `deskripsi`) VALUES
(7, 'book_1.jpg', 'Sebuah Seni Untuk Bersikap Bodo Amat', 'PSS-001', 'Mark Manson', 'Gramdedia', '2017', 'Ini buku bodo amat'),
(8, 'book_2.jpg', 'Nerworking for Dummies', 'PSS-002', 'Eric Geier', 'Db EBooks ', '2014', 'Ini buku seputar pembelajaran jaringan bagi pemula'),
(9, 'book_3.jpg', 'Another', 'PSS-003', 'Ayatsuji Yukito', 'Japan Production', '2007', 'Ini novel anime horror'),
(10, 'book_4.jpg', 'Miss Peregrine\'s Home For Peculiar Children', 'PSS-004', 'Ransom Riggs', 'American Production', '2014', 'Ini horror juga kayaknya'),
(11, 'book_5.jpg', 'Santet Realita di Balik Fakta', 'PSS-005', 'Budi Daruputra', 'B Production', '2016', 'Ini santet menyantet, tidak ada tutorial mandiri, dosa.'),
(12, 'book_6.jpg', 'The Walking Dead The Road to Woodbury', 'PSS-006', 'Robert Rickman & Jay Donansinga', 'New York Times', '2013', 'ini ceritanya rick grimes lawan zombie dan semacam organisasi baru woodbury');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(5, 'Awang Laga', 'iwanglaga@student.ub.ac.id', 'luna2.jpg', '$2y$10$xxTipRmgBLTvKcpWcDZM0OKRkigxCurInmdua/VAhWRKF2eqV/msO', 1, 1, 1574140025),
(7, 'Lunavreya Nox Fleuret', 'lunavreya12@student.ub.ac.id', 'luna.jpg', '$2y$10$22SrLSrxdEVdG2gEHqmt.uDgSl2Vb0yUm1x0zBZDs6O9EcHGyt.c6', 2, 1, 1574242902),
(11, 'Iwang Laga Sukma', 'iwanglaga17@gmail.com', 'deadpool.png', '$2y$10$KlzoTNf8UwUhAEDfmtdHEOqonRp5JNMR7a4mLm0TNL6XpQyigAyUS', 2, 1, 1574633635),
(18, 'Lunavreya Nox Fleuret', 'lunafreyanox00@gmail.com', 'luna1.jpg', '$2y$10$nVELOlZiNvV7vKHRS0smJ.W3kh4N6DGa4IC8TtRNGMB3MDB8ARoI2', 2, 1, 1574653937);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(9, 2, 2),
(20, 1, 3),
(21, 2, 4),
(22, 1, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(4, 'Buku');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(11, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(15, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(16, 2, 'Change Password', 'user/changepass', 'fas fa-fw fa-key', 1),
(17, 1, 'List User', 'admin/listuser', 'fas fa-fw fa-users', 1),
(19, 4, 'List Book', 'buku', 'fas fa-fw fa-book', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(7, 'iwanglaga17@gmail.com', '6noad/iAmsHP1uWVw2GNbVeEk42fiKPB9FvWxU/CYPs=', 1574633808),
(8, 'lunafreyanox00@gmail.com', 'RD+vPD/Oun0QT6hORPbmaufLBXwPlAxzvUxUJwgQWm8=', 1574662736),
(9, 'lunafreyanox00@gmail.com', 'g8DXUdl8UYLuVddNCT3g4SHTN/MfefqeXXM4i5sPrcQ=', 1574672270),
(10, 'lunafreyanox00@gmail.com', 'OMV9FHL7Sb2mAA1TQXqnSI0be3MEof4PgGebAgODS+Y=', 1574742834),
(11, 'lunafreyanox00@gmail.com', 'rVZF0pK27zCwah8RP5bN+W7VjDOD2zDCL51cbAbYnlM=', 1574770891);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
