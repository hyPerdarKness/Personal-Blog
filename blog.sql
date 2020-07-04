-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Tem 2020, 22:39:58
-- Sunucu sürümü: 10.4.13-MariaDB
-- PHP Sürümü: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `baslik` varchar(100) COLLATE utf8_bin NOT NULL,
  `resim` varchar(100) COLLATE utf8_bin NOT NULL,
  `icerik` longtext COLLATE utf8_bin NOT NULL,
  `tarih` datetime NOT NULL,
  `sefurl` varchar(120) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfalar`
--

CREATE TABLE `sayfalar` (
  `id` int(11) NOT NULL,
  `sira` int(11) NOT NULL,
  `baslik` varchar(100) COLLATE utf8_bin NOT NULL,
  `icon` varchar(10) COLLATE utf8_bin NOT NULL,
  `icerik` longtext COLLATE utf8_bin NOT NULL,
  `sefurl` varchar(120) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `siteadi_title` varchar(200) COLLATE utf8_bin NOT NULL,
  `siteadi_sidebar` varchar(100) COLLATE utf8_bin NOT NULL,
  `siteadi_head` varchar(100) COLLATE utf8_bin NOT NULL,
  `siteadi_intro` text COLLATE utf8_bin NOT NULL,
  `keywords` varchar(200) COLLATE utf8_bin NOT NULL,
  `description` varchar(200) COLLATE utf8_bin NOT NULL,
  `analytics` text COLLATE utf8_bin NOT NULL,
  `color` int(11) NOT NULL,
  `about` text COLLATE utf8_bin NOT NULL,
  `facebook` varchar(100) COLLATE utf8_bin NOT NULL,
  `twitter` varchar(100) COLLATE utf8_bin NOT NULL,
  `instagram` varchar(100) COLLATE utf8_bin NOT NULL,
  `youtube` varchar(100) COLLATE utf8_bin NOT NULL,
  `linkedin` varchar(100) COLLATE utf8_bin NOT NULL,
  `pinterest` varchar(100) COLLATE utf8_bin NOT NULL,
  `github` varchar(100) COLLATE utf8_bin NOT NULL,
  `stackoverflow` varchar(100) COLLATE utf8_bin NOT NULL,
  `codepen` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`siteadi_title`, `siteadi_sidebar`, `siteadi_head`, `siteadi_intro`, `keywords`, `description`, `analytics`, `color`, `about`, `facebook`, `twitter`, `instagram`, `youtube`, `linkedin`, `pinterest`, `github`, `stackoverflow`, `codepen`) VALUES
('Kişisel Blog Scripti', 'hyPer darKness', '8 Renk Seçenekli, Basit, Mobil Uyumlu Blog Scripti', 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir.', '#', '#', '', 1, 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir.', '#', '#', '#', '#', '#', '#', '#', '#', '#');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetim`
--

CREATE TABLE `yonetim` (
  `id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_bin NOT NULL,
  `password` varchar(32) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Tablo döküm verisi `yonetim`
--

INSERT INTO `yonetim` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sayfalar`
--
ALTER TABLE `sayfalar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yonetim`
--
ALTER TABLE `yonetim`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sayfalar`
--
ALTER TABLE `sayfalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `yonetim`
--
ALTER TABLE `yonetim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
