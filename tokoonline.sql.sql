-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13 Des 2021 pada 05.10
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoonline`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tokoonline_categories`
--

CREATE TABLE `tokoonline_categories` (
  `id` int(6) UNSIGNED NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tokoonline_categories`
--

INSERT INTO `tokoonline_categories` (`id`, `category`) VALUES
(1, 'Pakaian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tokoonline_config`
--

CREATE TABLE `tokoonline_config` (
  `id` int(6) UNSIGNED NOT NULL,
  `config` varchar(150) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tokoonline_config`
--

INSERT INTO `tokoonline_config` (`id`, `config`, `value`) VALUES
(1, 'cfg', '{\"websitetitle\":\"Otaku Shop\",\"maincolor\":\"#F28433\",\"secondcolor\":\"#FFB98A\",\"about\":\"<p>Toko online simple yang bisa memenuhi hasrat Kewibuan anda<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"language\":\"id\",\"thumbnailmode\":\"0\",\"logo\":\"\",\"adminwhatsapp\":\"+6281276678863\",\"currencysymbol\":\"Rp.\",\"baseurl\":\"http:\\/\\/localhost\\/M.%20Hanif%20Abdurrohman\\/tokoonline\\/\",\"enablerecentpostsliders\":\"1\",\"enablefacebookcomment\":\"1\",\"enablepublishdate\":\"1\",\"disabledecimals\":\"0\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tokoonline_messages`
--

CREATE TABLE `tokoonline_messages` (
  `id` int(6) UNSIGNED NOT NULL,
  `date` varchar(50) NOT NULL,
  `message` varchar(1300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tokoonline_messages`
--

INSERT INTO `tokoonline_messages` (`id`, `date`, `message`) VALUES
(1, '1639367165239', 'ORDER ID: 2914/2021-12-13 10:45:45\nDATE: Mon Dec 13 2021 10:45:45 GMT+0700 (Western Indonesia Time)\n- Kaos custom x 1 = Rp. 50000.00\nTotal Semua = Rp. 50000.00\nNama: ggg\nHape: 99\nAlamat: ii\nMetode Pengiriman: Home Delivery\nORDER NOTES: kk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tokoonline_posts`
--

CREATE TABLE `tokoonline_posts` (
  `id` int(6) UNSIGNED NOT NULL,
  `postid` varchar(70) NOT NULL,
  `catid` int(6) NOT NULL,
  `normalprice` float NOT NULL,
  `discountprice` float NOT NULL,
  `title` varchar(300) NOT NULL,
  `time` varchar(150) NOT NULL,
  `options` varchar(200) NOT NULL,
  `picture` varchar(300) NOT NULL,
  `moreimages` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tokoonline_posts`
--

INSERT INTO `tokoonline_posts` (`id`, `postid`, `catid`, `normalprice`, `discountprice`, `title`, `time`, `options`, `picture`, `moreimages`, `content`) VALUES
(1, 'ecwbktzhkg', 1, 50000, 0, 'Kaos custom', '1639366588816', '', 'eurcrf0tsq.jpg', '', '<p>Bisa custom kaos bergambar anime kesukaan kalian, kualitas dijamin harga oke dan juga stylish pastinya</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tokoonline_categories`
--
ALTER TABLE `tokoonline_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokoonline_config`
--
ALTER TABLE `tokoonline_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokoonline_messages`
--
ALTER TABLE `tokoonline_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokoonline_posts`
--
ALTER TABLE `tokoonline_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tokoonline_categories`
--
ALTER TABLE `tokoonline_categories`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tokoonline_config`
--
ALTER TABLE `tokoonline_config`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tokoonline_messages`
--
ALTER TABLE `tokoonline_messages`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tokoonline_posts`
--
ALTER TABLE `tokoonline_posts`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
