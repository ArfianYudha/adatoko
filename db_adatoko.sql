-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Des 2022 pada 01.09
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_adatoko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `berat` int(11) NOT NULL,
  `deskripsi` mediumtext DEFAULT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `id_kategori`, `harga`, `berat`, `deskripsi`, `gambar`) VALUES
(5, 'Indomie', 4, 3000, 251, 'Mie Mie terus', 'indomie1.jpeg'),
(6, 'Mie Sedap ', 4, 3000, 100, 'Mie sedap goreng original', 'miesedap.jpeg'),
(7, 'Indomie Hype Abis', 4, 3000, 100, 'Indomie Hype Abis', 'hypeabis.jpeg'),
(8, 'Indomie Ayam POP', 4, 3000, 85, 'Indomie rasa baru ayam pop', 'ayampop.jpeg'),
(9, 'Indomie Hot Spicy', 4, 3000, 90, 'Indomie Hot Spicy', 'hotspicy.jpeg'),
(10, 'Indomie Soto', 4, 3000, 85, 'Indomie Soto', 'soto.jpeg'),
(11, 'Royco', 5, 5500, 108, 'Royco berisi 12 sachet ', 'Royco.jpeg'),
(12, 'Bawang Putih', 5, 27500, 1000, 'Berat 1 kg', 'bawangputih.jpeg'),
(13, 'Bawang Merah', 5, 27500, 1000, 'Berat 1kg', 'bawang_merah.jpeg'),
(14, 'Ajinomoto', 5, 5000, 125, 'Dengan mengonsumsi micin secara berlebihan kita dapat menjadi pintar', 'ajinomoto.jpeg'),
(15, 'Sasa', 5, 6000, 250, 'Dengan mengonsumsi micin secara berlebihan kita dapat menjadi pintar', 'sasa1.jpeg'),
(16, 'Ladaku', 5, 1000, 10, 'Ladaku Merica Bubuk', 'ladaku.jpeg'),
(17, 'Sandal Swallo', 6, 13750, 250, 'Sandal legendaris yang hampir dimiliki seluruh rakyat indonesia', 'swallo.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `gambar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hero`
--

CREATE TABLE `hero` (
  `id_hero` int(11) NOT NULL,
  `file_foto` text DEFAULT NULL,
  `status_foto` enum('disetujui','belum_disetujui') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `hero`
--

INSERT INTO `hero` (`id_hero`, `file_foto`, `status_foto`) VALUES
(1, 'buy.jpg', 'disetujui'),
(2, 'toko.jpg', 'disetujui'),
(3, 'toko2.jpg', 'disetujui'),
(16, 'slider1.jpg', 'disetujui'),
(18, 'robert-shunev-mS1nlYbq1kA-unsplash.jpg', 'belum_disetujui'),
(19, 'dollar-gill-fcnbIO5axMI-unsplash.jpg', 'belum_disetujui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(2, 'Obat'),
(3, 'Es Krim'),
(4, 'Makanan'),
(5, 'Bumbu Dapur'),
(6, 'Sandal'),
(7, 'Sabun Shampoo Detergen'),
(8, 'Minuman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `email`, `password`, `foto`) VALUES
(1, 'ARFIAN YUDHA PAMUNGKAS', 'arfianyudha66@gmail.com', 'yudha1', 'foto.jpg'),
(2, 'Parjo', 'parjo@pmail.com', 'parjo', 'foto.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `atas_nama` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `nama_bank`, `no_rek`, `atas_nama`) VALUES
(1, 'BRI', '123456789', 'Arfian Yudha'),
(2, 'BNI', '987654321', 'Arfian Yudha Pamungkas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rincian`
--

CREATE TABLE `rincian` (
  `id_rincian` int(11) NOT NULL,
  `no_order` varchar(25) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `rincian`
--

INSERT INTO `rincian` (`id_rincian`, `no_order`, `id_barang`, `qty`) VALUES
(2, '20221208HZGPRMXY', 5, 1),
(3, '20221208HZGPRMXY', 3, 2),
(4, '20221208FYEDFXBI', 5, 2),
(5, '20221208FYEDFXBI', 3, 2),
(6, '20221208PJUXBKA0', 5, 2),
(7, '20221208PJUXBKA0', 3, 2),
(8, '20221208PJUXBKA0', 2, 1),
(9, '20221208PJUXBKA0', 1, 1),
(10, '20221208LK5KMGWL', 5, 1),
(11, '20221208LK5KMGWL', 3, 1),
(12, '20221208JOZXN3UP', 5, 1),
(13, '20221208JOZXN3UP', 3, 1),
(14, '20221208DGF5QXUU', 5, 1),
(15, '20221208DGF5QXUU', 3, 1),
(16, '20221208KVDJWBGX', 2, 1),
(17, '20221212XNTUJZZC', 17, 1),
(18, '20221212XNTUJZZC', 16, 1),
(19, '20221212XNTUJZZC', 12, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(1) NOT NULL,
  `nama_toko` varchar(20) DEFAULT NULL,
  `lokasi` int(11) DEFAULT NULL,
  `alamat_toko` text DEFAULT NULL,
  `no_telp` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `lokasi`, `alamat_toko`, `no_telp`) VALUES
(1, 'AdaToko', 497, 'Jl. Persada, Pule, Selogiri, Wonogiri, Jawa Tengah.', '089516253714');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `no_order` varchar(25) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `nama_penerima` varchar(45) DEFAULT NULL,
  `hp_penerima` varchar(15) DEFAULT NULL,
  `provinsi` varchar(25) DEFAULT NULL,
  `kota` varchar(25) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kode_pos` varchar(8) DEFAULT NULL,
  `expedisi` varchar(45) DEFAULT NULL,
  `paket` varchar(45) DEFAULT NULL,
  `estimasi` varchar(45) DEFAULT NULL,
  `ongkir` int(11) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `status_bayar` int(1) DEFAULT NULL,
  `bukti_bayar` text DEFAULT NULL,
  `atas_nama` varchar(25) DEFAULT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `status_order` int(1) DEFAULT NULL,
  `no_resi` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `no_order`, `tanggal`, `nama_penerima`, `hp_penerima`, `provinsi`, `kota`, `alamat`, `kode_pos`, `expedisi`, `paket`, `estimasi`, `ongkir`, `grand_total`, `berat`, `total_bayar`, `status_bayar`, `bukti_bayar`, `atas_nama`, `nama_bank`, `no_rek`, `status_order`, `no_resi`) VALUES
(17, 1, '20221212XNTUJZZC', '2022-12-12', 'Azril', '089512345679', 'Jawa Tengah', 'Karanganyar', 'Tempat tak tahu arah', '57652', 'jne', 'REG', '3-6 Hari', 6000, 42250, 1260, 48250, 1, 'slider1.jpg', 'Puan Maharani', 'BNI', '1545-001-2002', 3, 'KYR20221208');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `level_user` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`, `level_user`) VALUES
(1, 'Arfian', 'admin', 'admin', 1),
(2, 'Yudha', 'user', 'user', 2),
(3, 'Pamungkas', 'user', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `fk_barang_id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gambar`),
  ADD KEY `fk_gambar_id_barang` (`id_barang`);

--
-- Indeks untuk tabel `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`id_hero`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indeks untuk tabel `rincian`
--
ALTER TABLE `rincian`
  ADD PRIMARY KEY (`id_rincian`),
  ADD KEY `fk_barang_id_barang` (`id_barang`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `hero`
--
ALTER TABLE `hero`
  MODIFY `id_hero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `rincian`
--
ALTER TABLE `rincian`
  MODIFY `id_rincian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `fk_barang_id_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD CONSTRAINT `fk_gambar_id_barang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
