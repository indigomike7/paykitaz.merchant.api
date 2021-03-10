-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2020 at 09:51 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `dasarprasaranajalan`
--

CREATE TABLE `dasarprasaranajalan` (
  `iddasarprasaranajalan` int(11) NOT NULL,
  `no_ruas` varchar(12) DEFAULT NULL,
  `namaruas` varchar(150) DEFAULT NULL,
  `kecamatan_yang_dilalui` varchar(70) DEFAULT NULL,
  `panjang_ruas` double DEFAULT NULL,
  `aspalkm` double DEFAULT NULL,
  `aspalpersen` double DEFAULT NULL,
  `betonkm` double DEFAULT NULL,
  `betonpersen` double DEFAULT NULL,
  `kerikilkm` double DEFAULT NULL,
  `kerikilpersen` double DEFAULT NULL,
  `belumtembuskm` double DEFAULT NULL,
  `belumtembuspersen` double DEFAULT NULL,
  `kmbaik` double DEFAULT NULL,
  `persenbaik` double DEFAULT NULL,
  `kmsedang` double DEFAULT NULL,
  `persensedang` double DEFAULT NULL,
  `kmringan` double DEFAULT NULL,
  `persenringan` double DEFAULT NULL,
  `kmberat` double DEFAULT NULL,
  `persenberat` double DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL,
  `nama_pengguna` varchar(50) DEFAULT NULL,
  `filegambar` varchar(100) DEFAULT NULL,
  `filevideo` varchar(45) DEFAULT NULL,
  `namapaket` text,
  `jalankmtarget` varchar(45) DEFAULT NULL,
  `jlnprodukakhir` varchar(45) DEFAULT NULL,
  `jembatan` varchar(45) DEFAULT NULL,
  `produkakhirjbt` varchar(45) DEFAULT NULL,
  `nilaikontrak` varchar(45) DEFAULT NULL,
  `kabupaten` varchar(100) DEFAULT NULL,
  `filegambardua` varchar(100) DEFAULT NULL,
  `kategori` enum('status','nonstatus') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dasarprasaranajalan`
--

INSERT INTO `dasarprasaranajalan` (`iddasarprasaranajalan`, `no_ruas`, `namaruas`, `kecamatan_yang_dilalui`, `panjang_ruas`, `aspalkm`, `aspalpersen`, `betonkm`, `betonpersen`, `kerikilkm`, `kerikilpersen`, `belumtembuskm`, `belumtembuspersen`, `kmbaik`, `persenbaik`, `kmsedang`, `persensedang`, `kmringan`, `persenringan`, `kmberat`, `persenberat`, `tahun`, `nama_pengguna`, `filegambar`, `filevideo`, `namapaket`, `jalankmtarget`, `jlnprodukakhir`, `jembatan`, `produkakhirjbt`, `nilaikontrak`, `kabupaten`, `filegambardua`, `kategori`) VALUES
(1, '1', 'Arfai - Pami', 'Manokwari Barat', 32.77, 16.4, 50.04, 0, 0, 16.37, 49.96, NULL, 0, 16.4, 50.04, 0.84, 2.55, 15.54, 47.41, 0, 0, 2018, 'Faris', '1_2018.jpg', '', '', '', '', '', '', '', '', '1_2018_2.jpg', NULL),
(2, '2', 'Bts Kota Manokwari  - Sibuni', 'Masni', 42.36, 42.36, 100, 0, 0, 0, 0, 0, 0, 35.02, 82.67, 7.25, 17.11, 0.09, 0.22, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '002-11-K', 'Jln. Poros Susweni (Manokwari)', 'Manokwari Timur', 9.14, 9.14, 100, 0, 0, 0, 0, 0, 0, 9.07, 99.23, 0.07, 0.77, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '002-12-K', 'Jln. Amban Pantai', 'Manokwari Timur', 9.87, 2.04, 20.69, 1.59, 16.08, 6.24, 63.23, 0, 0, 2.16, 21.87, 7.71, 78.13, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '002-13-K', 'Jln.  Pasir Putih (Manokwari)', 'Manokwari Timur', 8.01, 8.01, 100, 0, 0, 0, 0, 0, 0, 7.88, 98.35, 0, 0, 0.13, 1.65, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '002-14-K', 'Jln. Brawijaya', 'Manokwari Barat', 2.79, 2.79, 100, 0, 0, 0, 0, 0, 0, 2.79, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '002-15-K', 'Jln. Gunung Salju (Manokwari)', 'Manokwari Barat', 3.57, 3.57, 100, 0, 0, 0, 0, NULL, 0, 3.57, 100, 0, 0, 0, 0, 0, 0, 2018, 'Delina', '002-15-K_2018.jpeg', NULL, '', '', '', '', '', '', '', NULL, NULL),
(8, '002-16-K', 'Jln. Reremi Puncak', 'Manokwari Barat', 4.44, 4.44, 100, 0, 0, 0, 0, 0, 0, 4.44, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '002-17-K', 'Jln. Lingkar RS Provinsi Papua Barat', 'Manokwari Barat', 2.5, 2.5, 100, 0, 0, 0, 0, 0, 0, 2.5, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '002-18-K', 'Jln. Reremi Permai', 'Manokwari Barat', 2.18, 2.18, 100, 0, 0, 0, 0, 0, 0, 2.18, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '002-19-K', 'Jln. Sujarwo Condronegoro', 'Manokwari Barat', 1.15, 1.15, 100, 0, 0, 0, 0, 0, 0, 1.15, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '002-20-K', 'Jln. Pahlawan', 'Manokwari Barat', 1.49, 1.49, 100, 0, 0, 0, 0, 0, 0, 1.49, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '002-1A-K', 'Jln. Lingkar Teluk Sawaibu', 'Manokwari Barat', 2.5, 0.58, 23.32, 0.35, 14.08, 0, 0, 1.57, 62.6, 0.3, 12.04, 0.1, 4.04, 0.53, 21.32, 1.57, 62.6, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '002-1B-K', 'Jln. Pasir', 'Manokwari Barat', 1.05, 1.05, 100, 0, 0, 0, 0, 0, 0, 1.05, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '002-1C-K', 'Jln. Soribo', 'Manokwari Barat', 4.01, 0, 0, 0, 0, 4.01, 100, 0, 0, 0, 0, 4.01, 100, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '002-1D-K', 'Jln. Sowi Gunung', 'Manokwari Barat', 5.2, 5.2, 100, 0, 0, 0, 0, 0, 0, 5.2, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '3', 'Jln. Lingkar Pulau Mansinam', 'Manokwari Timur', 9, 0, 0, 9, 100, 0, 0, 0, 0, 9, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '4', 'Sibuni - Masni', 'Masni', 20.43, 19.06, 93.26, 0, 0, 1.38, 6.74, 0, 0, 10.43, 51.04, 10.01, 48.96, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '5', 'Masni - SP 5', 'Masni', 10.31, 10.31, 100, 0, 0, 0, 0, 0, 0, 7.6, 73.72, 0, 0, 2.71, 26.28, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '6', 'SP 5 - Sibuni', 'Masni', 14.34, 2.7, 18.82, 0, 0, 11.64, 81.18, 0, 0, 2.7, 18.82, 0, 0, 11.64, 81.18, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '7', 'Masni - Wariori', 'Sidey', 7.36, 5.18, 70.46, 0, 0, 2.17, 29.54, 0, 0, 5.29, 71.85, 0, 0, 2.07, 28.15, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '8', 'Maripi - SP 1', 'Prafi', 19.13, 19.13, 100, 0, 0, 0, 0, 0, 0, 8.16, 42.67, 3.8, 19.89, 7.16, 37.44, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '9', 'Prafi - Bts Kab Pegaf (Mokwam)', 'Prafi', 16.91, 3.95, 23.36, 0, 0, 12.96, 76.64, 0, 0, 3.81, 22.5, 0, 0, 13.11, 77.5, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '10', 'Bts Kab Pegaf  - Menyambouw', 'Menyambouw', 9.09, 2.13, 23.4, 0, 0, 6.96, 76.6, 0, 0, 2.13, 23.4, 6.96, 76.6, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '11', 'Minyambouw - Bts Kota Pegaf', 'Menyambouw', 21.13, 5.12, 24.24, 0, 0, 16.01, 75.76, 0, 0, 5.12, 24.24, 16.01, 75.76, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '011-11-K', 'Jln. Drs Dominggus Mandacan (Pegaf)', 'Hink', 14.39, 0, 0, 0, 0, 14.39, 100, 0, 0, 0, 0, 14.39, 100, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '12', 'Jln. Lingkar Anggi Gigi', 'Sururey', 24.97, 1.1, 4.4, 0, 0, 23.87, 95.6, 0, 0, 1.1, 4.4, 23.87, 95.6, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '13', 'Jln. Lingkar Anggi Gida', 'Sururey', 14.07, 0, 0, 0, 0, 14.07, 100, 0, 0, 0, 0, 6.13, 43.54, 7.94, 56.46, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '14', 'Bts Kota Pegaf - Bts Kab Mansel (Sakumi)', 'Neney', 47.34, 11.2, 23.66, 0, 0, 36.14, 76.34, 0, 0, 11.2, 23.66, 36.14, 76.34, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '15', 'Sururey - Bts Kab Manokwari Selatan', 'Neney', 26.21, 0, 0, 0, 0, 2.4, 9.16, 23.81, 90.84, 0, 0, 2.4, 9.16, 0, 0, 23.81, 90.84, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '16', 'Bts Kab Manokwari Selatan - Umousi', 'Ransiki', 11.2, 0, 0, 0, 0, 7.2, 64.27, 4, 35.73, 0, 0, 7, 62.49, 0, 0, 4.2, 37.51, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '17', 'Ransiki - Bts. Kab. Pegaf (Sakumi)', 'Ransiki', 11.88, 11.88, 100, 0, 0, 0, 0, 0, 0, 1.4, 11.79, 8.13, 68.43, 2.35, 19.78, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '18', 'Jln. Pelabuhan Oransbari (Mansel)', 'Oransbari', 6.35, 6.06, 95.43, 0, 0, 0.29, 4.57, 0, 0, 6.04, 95.13, 0, 0, 0.31, 4.87, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '19', 'Isim - Umousi', 'Ransiki', 28.32, 0, 0, 0, 0, 28.32, 100, 0, 0, 0, 0, 0, 0, 28.32, 100, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '20', 'Umousi - Bts Kab Teluk Bintuni', 'Ransiki', 21.61, 0, 0, 0, 0, 21.61, 100, 0, 0, 0, 0, 0, 0, 21.61, 100, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '21', 'Bts Kab. Teluk Bintuni - Merdey', 'Merdey', 35.97, 0, 0, 0, 0, 35.97, 100, 0, 0, 0, 0, 0, 0, 0, 0, 35.97, 100, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '22', 'Merdey - Mogoi', 'Merdey', 22.47, 0, 0, 0, 0, 22.47, 100, 0, 0, 0, 0, 0, 0, 22.47, 100, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '23', 'Bintuni - Tuhiba', 'Tuhiba', 25.19, 25, 99.22, 0.15, 0.61, 0.04, 0.17, 0, 0, 25.15, 99.82, 0, 0, 0.04, 0.17, 0, 0.01, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '24', 'Tuhiba - Meyerga', 'Tuhiba', 108.85, 0, 0, 0, 0, 108.85, 100, 0, 0, 0, 0, 0, 0, 108.85, 100, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '25', 'Meyerga - Susumuk', 'Moskona Barat', 101.71, 28.89, 28.4, 0, 0, 72.83, 71.6, 0, 0, 19.45, 19.13, 82.26, 80.87, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '26', 'Tandia - Batas Kota Rasiei', 'Wasior Selatan', 8.6, 8.3, 96.58, 0, 0, 0.29, 3.42, 0, 0, 6.72, 78.12, 1.59, 18.46, 0.14, 1.58, 0.16, 1.84, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '026-11-K', 'Jln Poros Rasiei', 'Wasior Selatan', 20.4, 19.75, 96.81, 0, 0, 0.65, 3.19, 0, 0, 18.3, 89.7, 1.33, 6.51, 0.77, 3.79, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '27', 'Batas Kota Rasiei - Yopenggar', 'Wasior Utara', 42.21, 24.35, 57.69, 0.3, 0.72, 2.23, 5.28, 15.32, 36.3, 16.39, 38.82, 5.04, 11.95, 5.28, 12.51, 15.5, 36.73, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '28', 'Windesi - Werianggi - Idor', 'Windesi', 23.61, 8.91, 37.74, 0, 0, 14.7, 62.26, 0, 0, 3.98, 16.86, 4.71, 19.95, 14.92, 63.19, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '29', 'Kaimana - Kiruru', 'Kaimana', 127.93, 4.3, 3.36, 0, 0, 27.15, 21.22, 96.48, 75.42, 0, 0, 4.3, 3.36, 27.15, 21.22, 96.48, 75.42, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '30', 'Wermura - Sisir', 'Kaimana', 18.48, 0, 0, 0, 0, 9.7, 52.49, 8.78, 47.51, 0, 0, 0, 0, 9.7, 52.49, 8.78, 47.51, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '31', 'Bts Kota Fak fak - Sangram', 'Fakfak Timur', 54.61, 49.1, 89.92, 0.05, 0.1, 5.46, 9.99, 0, 0, 43.63, 79.9, 10.98, 20.1, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '32', 'Sangram - Weri', 'Fakfak Timur', 16.1, 1.2, 7.45, 0, 0, 14.9, 92.55, 0, 0, 0, 0, 1.2, 7.45, 14.9, 92.55, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '33', 'Weri - Nusalasi', 'Fakfak Timur', 29.58, 0, 0, 0, 0, 3.75, 12.68, 25.83, 87.32, 0, 0, 0, 0, 3.75, 12.68, 25.83, 87.32, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '34', 'Nusalasi - Bomberay', 'Bomberay', 47.71, 0, 0, 0, 0, 47.71, 100, 0, 0, 0, 0, 0, 0, 47.71, 100, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '35', 'SP 2 - SP 1 - Tomage', 'Bomberay', 37.47, 18.13, 48.38, 0, 0, 19.34, 51.62, 0, 0, 18.13, 48.38, 0, 0, 19.34, 51.62, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '36', 'Bts Kota Fak Fak - Siboru', 'Fakfak Barat', 34.92, 34.92, 100, 0, 0, 0, 0, 0, 0, 25.05, 71.73, 0, 0, 9.87, 28.27, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '37', 'Siboru - Sipatnanam', 'Fakfak Barat', 10.81, 3.7, 34.23, 0, 0, 7.11, 65.77, 0, 0, 3.7, 34.23, 0, 0, 7.11, 65.77, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '38', 'Sipatnanam - Teluk Patipi', 'Teluk Patipi', 65.81, 0, 0, 0, 0, 65.81, 100, 0, 0, 0, 0, 0, 0, 65.81, 100, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '39', 'Teluk Patipi - Kayuni', 'Teluk Patipi', 27.75, 21.04, 75.83, 0.75, 2.72, 5.95, 21.45, 0, 0, 6.45, 23.24, 14.58, 52.53, 6.72, 24.23, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '040-11-K', 'Jln. Jenderal Sudirman (Kota Sorong)', 'Kota Sorong', 5, 5, 100, 0, 0, 0, 0, 0, 0, 5, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '040-12-K', 'Jln Danau Tempe', 'Kota Sorong', 6.5, 4.35, 66.92, 0, 0, 2.15, 33.08, 0, 0, 1.98, 30.43, 2.37, 36.49, 2.15, 33.08, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '040-13-K', 'Jln. Arteri Kota Sorong', 'Kota Sorong', 4.26, 4.26, 100, 0, 0, 0, 0, 0, 0, 4.16, 97.7, 0.1, 2.3, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '41', 'Aimas - Klamalu', 'Aimas', 3.43, 3.43, 100, 0, 0, 0, 0, 0, 0, 3.43, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '42', 'Klamalu - Majener', 'Aimas', 20.75, 17.56, 84.62, 3.19, 15.38, 0, 0, 0, 0, 5.97, 28.77, 9.06, 43.63, 5.73, 27.59, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '43', 'Jln.Yefelio', 'Mayamuk', 3.63, 0, 0, 0, 0, 3.63, 100, 0, 0, 3.63, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '44', 'Majener - Klasari', 'Salawati', 19.77, 19.77, 100, 0, 0, 0, 0, 0, 0, 19.77, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '45', 'Klasari - Seget', 'Salawati', 41.07, 0, 0, 1.12, 2.72, 39.95, 97.28, 0, 0, 1.12, 2.72, 0, 0, 39.95, 97.28, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '46', 'Klamalu - Bandara Segun', 'Aimas', 29.54, 0, 0, 0.43, 1.44, 0.2, 0.67, 28.92, 97.89, 0.43, 1.44, 0.2, 0.67, 0, 0, 28.92, 97.89, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '47', 'Jln. Dermaga Klalin (Kab. Sorong)', 'Aimas', 2.33, 0, 0, 2.33, 100, 0, 0, 0, 0, 2.33, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '48', 'Batu Payung - Hobart - Bts. Sorsel', 'Sayosa', 32.87, 3.78, 11.49, 0, 0, 29.09, 88.51, 0, 0, 3.66, 11.13, 0, 0, 29.21, 88.87, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '49', 'Bts. Sorsel - Sbir', 'Sayosa', 16.81, 5.17, 30.73, 0, 0, 11.64, 69.27, 0, 0, 5.17, 30.73, 0, 0, 11.65, 69.27, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '50', 'Tarsa - Wanurian - Klarion', 'Beraur', 38.95, 0, 0, 0, 0, 20.2, 51.86, 18.75, 48.14, 0, 0, 0, 0, 20.2, 51.86, 18.75, 48.14, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '51', 'Sayosa - Sailala - Klaili', 'Sayosa', 32.52, 0, 0, 6.68, 20.53, 25.84, 79.47, 0, 0, 6.68, 20.53, 0, 0, 25.85, 79.47, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '52', 'Aimas - Klaili', 'Aimas', 28.94, 0, 0, 1.6, 5.53, 27.34, 94.47, 0, 0, 1.6, 5.53, 0, 0, 27.34, 94.47, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '53', 'Klaili - Dela', 'Sayosa', 44.93, 0, 0, 0, 0, 11.93, 26.55, 33, 73.45, 0, 0, 0, 0, 11.93, 26.55, 33, 73.45, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '54', 'Klamit - Bts Kota Teminabuan', 'Sawiat', 39.64, 38.34, 96.71, 1.3, 3.29, 0, 0, 0, 0, 39.13, 98.69, 0.52, 1.31, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '054-11-K', 'Jln Poros Teminabuan', 'Teminabuan', 6.13, 6.13, 100, 0, 0, 0, 0, 0, 0, 6.13, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, '55', 'Bts Kota Teminabuan - Bts Kab Maybrat', 'Wayer,Moswaren', 31.41, 31.3, 99.68, 0, 0, 0.1, 0.32, 0, 0, 29.89, 95.18, 1.51, 4.82, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '56', 'Bts Kab Maybrat - Kambuaya', 'Ayamaru Timur', 12.72, 12.72, 100, 0, 0, 0, 0, 0, 0, 12.67, 99.64, 0.05, 0.36, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '57', 'Fategomi - Athabu', 'Aitinyo Utara', 15.2, 2.3, 15.12, 0, 0, 12.9, 84.88, 0, 0, 2.3, 15.12, 0, 0, 12.91, 84.88, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, '58', 'Fiatsiur - Isas Jitmau', 'Aitinyo Raya', 5, 5, 100, 0, 0, 0, 0, 0, 0, 5, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '59', 'Ayamaru - Sauf - Wehali - Bts. Kab. Sorsel', 'Ayamaru Selatan', 20.33, 17.16, 84.4, 0.15, 0.76, 3.02, 14.85, 0, 0, 17.31, 85.15, 2.73, 13.41, 0.29, 1.44, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '60', 'Bts Kab. Sorsel - Sesor - Boldon - Keyen', 'Ayamaru Selatan', 23.39, 5.61, 23.96, 0, 0, 17.79, 76.04, 0, 0, 1.33, 5.69, 22.06, 94.31, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '61', 'Kambuaya - Yukase - Mapura', 'Ayamaru Utara', 16, 13.3, 83.11, 0, 0, 2.7, 16.89, 0, 0, 13.21, 82.52, 0.12, 0.76, 2.68, 16.72, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '62', 'Mapura - Kumurkek', 'Ayamaru Utara', 31.03, 21.55, 69.46, 0, 0, 9.48, 30.54, 0, 0, 7.3, 23.53, 15.65, 50.44, 8.07, 26.02, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '63', 'Yukase - Kfa', 'Ayamaru Utara', 3.34, 3.34, 100, 0, 0, 0, 0, 0, 0, 3.34, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '64', 'Susumuk - Fuog - Womba', 'Aifat Selatan', 43.23, 4.9, 11.34, 0, 0, 38.33, 88.66, 0, 0, 4.9, 11.34, 0, 0, 38.33, 88.66, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '65', 'Mega - Fef', 'Moraid', 67.16, 1.25, 1.86, 5.66, 8.42, 60.26, 89.72, 0, 0, 4.61, 6.86, 62.56, 93.14, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '66', 'Fef - Siakwa', 'Fef', 46.24, 7.09, 15.33, 0.28, 0.6, 38.88, 84.08, 0, 0, 7.36, 15.92, 38.87, 84.08, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '67', 'Mega - Sausafor -Warmadi', 'Sausapor', 102.22, 7.22, 7.06, 5.98, 5.85, 89.02, 87.09, 0, 0, 7.22, 7.06, 5.98, 5.85, 89.02, 87.09, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '68', 'Warmadi - Saukorem - Arfu', 'Amberbaken', 101.89, 41.22, 40.46, 0, 0, 60.67, 59.54, 0, 0, 41.12, 40.36, 0.48, 0.47, 60.29, 59.17, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '069-11-K', 'Jln Ahmad Yani (Waisai)', 'Waigeo Selatan', 1.9, 1.9, 100, 0, 0, 0, 0, 0, 0, 1.9, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '069-12-K', 'Jln. Basuki Rahmat (Waisai)', 'Waigeo Selatan', 5, 5, 100, 0, 0, 0, 0, 0, 0, 5, 100, 0, 0, 0, 0, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '70', 'Kalobo - Samate - Solol - Kaliyam', 'Salawati Utara', 79.28, 3, 3.78, 0, 0, 76.29, 96.22, 0, 0, 0, 0, 3, 3.78, 76.28, 96.22, 0, 0, 2018, 'Faris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '1', 'Arfai - Pami', 'Manokwari Barat', 32.773, 19.551, 59.656, 0, 0, 13.222, 40.344, NULL, 0, 19.551, 59.656, 0.835, 2.548, 0, 0, 12.387, 37.796, 2019, 'Faris', '1_2019.jpg', '', 'Peningkatan Jalan Arfai - Pami', '3.15', 'HRS Base', '', '', '21508974000', 'Manokwari', NULL, NULL),
(92, '2', 'Bts Kota Manokwari - Sibuni', 'Masni', 42.355, 42.355, 100, 0, 0, 0, 0, 0, 0, 38.343, 90.528, 3.921, 9.257, 0, 0, 0.091, 0.215, 2019, '', '2_2019.jpeg', '', 'Peningkatan Jalan Batas Kota Manokwari - Sibuni', '3.32', 'HRS Base', '', '', '12294700000', 'Manokwari', NULL, NULL),
(93, '002-11-K', 'Jln. Poros Susweni (Manokwari)', 'Manokwari Timur', 9.144, 9.144, 100, 0, 0, 0, 0, 0, 0, 9.074, 99.234, 0.07, 0.766, 0, 0, 0, 0, 2019, '', '002-11-K_2019.jpeg', '', '', '', '', '', '', '', 'Manokwari', NULL, NULL),
(94, '002-12-K', 'Jln. Amban Pantai', 'Manokwari Timur', 9.872, 2.044, 20.705, 1.587, 16.076, 6.241, 63.219, 0, 0, 4.57, 46.293, 1.471, 14.901, 3.831, 38.807, 0, 0, 2019, '', '002-12-K_2019', '', '', '', '', '', '', '', 'Manokwari', NULL, NULL),
(95, '002-13-K', 'Jln. Pasir Putih (Manokwari)', 'Manokwari Timur', 8.01, 8.01, 100, 0, 0, 0, 0, 0, 0, 7.87, 98.252, 0, 0, 0, 0, 0.14, 1.748, 2019, '', '002-13-K_2019', '', '', '', '', '', '', '', 'Manokwari', NULL, NULL),
(96, '002-14-K', 'Jln. Brawijaya', 'Manokwari Barat', 2.789, 2.789, 100, 0, 0, 0, 0, 0, 0, 2.789, 100, 0, 0, 0, 0, 0, 0, 2019, '', '002-14-K_2019', '', '', '', '', '', '', '', 'Manokwari', NULL, NULL),
(97, '002-15-K', 'Jln. Gunung Salju (Manokwari)', 'Manokwari Barat', 3.568, 3.568, 100, 0, 0, 0, 0, 0, 0, 3.568, 100, 0, 0, 0, 0, 0, 0, 2019, '', '002-15-K_2019', '', '', '', '', '', '', '', 'Manokwari', NULL, NULL),
(98, '002-16-K', 'Jln. Reremi Puncak', 'Manokwari Barat', 4.442, 4.442, 100, 0, 0, 0, 0, 0, 0, 4.442, 100, 0, 0, 0, 0, 0, 0, 2019, '', '002-16-K_2019', '', '', '', '', '', '', '', 'Manokwari', NULL, NULL),
(99, '002-17-K', 'Jln. Lingkar RS Provinsi Papua Barat', 'Manokwari Barat', 2.497, 2.497, 100, 0, 0, 0, 0, 0, 0, 2.497, 100, 0, 0, 0, 0, 0, 0, 2019, '', '002-17-K_2019', '', '', '', '', '', '', '', 'Manokwari', NULL, NULL),
(100, '002-18-K', 'Jln. Reremi Permai', 'Manokwari Barat', 2.184, 2.184, 100, 0, 0, 0, 0, 0, 0, 2.184, 100, 0, 0, 0, 0, 0, 0, 2019, '', '002-18-K_2019', '', '', '', '', '', '', '', 'Manokwari', NULL, NULL),
(101, '002-19-K', 'Jln. Sujarwo Condronegoro', 'Manokwari Barat', 1.154, 1.154, 100, 0, 0, 0, 0, 0, 0, 1.154, 100, 0, 0, 0, 0, 0, 0, 2019, '', '002-19-K_2019', '', '', '', '', '', '', '', 'Manokwari', NULL, NULL),
(102, '002-20-K', 'Jln. Pahlawan', 'Manokwari Barat', 1.49, 1.49, 100, 0, 0, 0, 0, 0, 0, 1.49, 100, 0, 0, 0, 0, 0, 0, 2019, '', '002-20-K_2019', '', '', '', '', '', '', '', 'Manokwari', NULL, NULL),
(103, '002-1A-K', 'Jln. Lingkar Teluk Sawaibu', 'Manokwari Barat', 2.5, 0.645, 25.8, 0.352, 14.08, 0, 0, 1.503, 60.12, 0.461, 18.44, 0.101, 4.04, 0.435, 17.4, 1.503, 60.12, 2019, '', '002-1A-K_2019', '', '', '', '', '', '', '', 'Manokwari', NULL, NULL),
(104, '002-1B-K', 'Jln. Pasir', 'Manokwari Barat', 1.045, 1.045, 100, 0, 0, 0, 0, 0, 0, 1.045, 100, 0, 0, 0, 0, 0, 0, 2019, '', '002-1B-K_2019', '', '', '', '', '', '', '', 'Manokwari', NULL, NULL),
(105, '002-1C-K', 'Jln. Soribo', 'Manokwari Barat', 4.008, 1.214, 30.289, 0, 0, 2.794, 69.711, 0, 0, 3.883, 96.881, 0.125, 3.119, 0, 0, 0, 0, 2019, '', '002-1C-K_2019', '', ' Peningkatan Jalan Soribo Manokwari (Lanjutan) ', '0.975', 'HRS Base', '', '', '4771238000', 'Manokwari', NULL, NULL),
(106, '002-1D-K', 'Jln. Sowi Gunung', 'Manokwari Barat', 5.2, 5.2, 100, 0, 0, 0, 0, 0, 0, 5.2, 100, 0, 0, 0, 0, 0, 0, 2019, '', '002-1D-K_2019', '', ' Peningkatan Jalan Sogun - Soribo ', '1.721', 'HRS Base', '', '', '9459643000', 'Manokwari', NULL, NULL),
(107, '3', 'Jln. Lingkar Pulau Mansinam', 'Manokwari Timur', 9, 0, 0, 9, 100, 0, 0, 0, 0, 9, 100, 0, 0, 0, 0, 0, 0, 2019, '', '3_2019', '', '', '', '', '', '', '', 'Manokwari', NULL, NULL),
(108, '4', 'Sibuni - Masni', 'Masni', 20.433, 19.06, 93.28, 0, 0, 1.373, 6.72, 0, 0, 13.631, 66.711, 6.802, 33.289, 0, 0, 0, 0, 2019, '', '4_2019', '', ' Peningkatan Jalan Masni - Sibuni ', '2.025', 'HRS Base', '', '', '9548910000', 'Manokwari', NULL, NULL),
(109, '5', 'Masni - SP 5', 'Masni', 10.312, 10.312, 100, 0, 0, 0, 0, 0, 0, 9.802, 95.054, 0, 0, 0.51, 4.946, 0, 0, 2019, '', '5_2019', '', ' Peningkatan Jalan SP 5 - Masni ', '2.2', 'HRS Base', '', '', '6544158000', 'Manokwari', NULL, NULL),
(110, '6', 'SP 5 - Sibuni', 'Masni', 14.344, 4.775, 33.289, 0, 0, 9.569, 66.711, 0, 0, 11.034, 76.924, 0, 0, 0, 0, 3.31, 23.076, 2019, '', '6_2019', '', ' Peningkatan Jalan SP 5 - Sibuni ', '2.075', 'HRS Base', '', '', '9443500000', 'Manokwari', NULL, NULL),
(111, '7', 'Masni - Wariori', 'Sidey', 7.357, 5.159, 70.124, 0, 0, 2.198, 29.876, 0, 0, 5.286, 71.85, 2.071, 28.15, 0, 0, 0, 0, 2019, '', '7_2019', '', '', '', '', '', '', '', 'Manokwari', NULL, NULL),
(112, '8', 'Maripi - SP 1', 'Prafi', 19.126, 19.126, 100, 0, 0, 0, 0, 0, 0, 9.863, 51.569, 3.803, 19.884, 0, 0, 5.46, 28.548, 2019, '', '8_2019', '', ' Peningkatan Jalan Maripi ? SP1 ', '1.7', 'HRS Base', '', '', '14500000000', 'Manokwari', NULL, NULL),
(113, '9', 'Prafi - Bts Kab Pegaf (Mokwam)', 'Prafi', 16.91, 3.95, 23.359, 0, 0, 12.96, 76.641, 0, 0, 3.804, 22.496, 0, 0, 12.96, 76.641, 0.146, 0.863, 2019, '', '9_2019', '', '', '', '', '', '', '', 'Manokwari', NULL, NULL),
(114, '10', 'Bts Kab Pegaf - Menyambouw', 'Menyambouw', 9.09, 3.327, 36.601, 0, 0, 5.763, 63.399, 0, 0, 3.327, 36.601, 2.463, 27.096, 0, 0, 3.3, 36.304, 2019, '', '10_2019', '', ' Peningkatan Jalan Batas Kabupaten Pegaf - Menyambouw ', '1.2', 'HRS Base', '', '', '9556500000', 'Pegunungan Arfak', NULL, NULL),
(115, '10', 'Bts Kab Pegaf - Menyambouw', 'Menyambouw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', '10', '', ' Peningkatan Jalan Batas Kota Pegaf - Menyambouw ', '1.45', 'HRS Base', '', '', '9554529000', 'Pegunungan Arfak', NULL, NULL),
(116, '11', 'Minyambouw - Bts Kota Pegaf', 'Menyambouw', 21.134, 6.575, 31.111, 0, 0, 14.559, 68.889, 0, 0, 6.575, 31.111, 1.208, 5.716, 0, 0, 13.351, 63.173, 2019, '', '11_2019', '', '', '', '', '', '', '', 'Pegunungan Arfak', NULL, NULL),
(117, '011-11-K', 'Jln. Drs Dominggus Mandacan (Pegaf)', 'Hink', 14.394, 0, 0, 0, 0, 14.394, 100, 0, 0, 0, 0, 14.394, 100, 0, 0, 0, 0, 2019, '', '011-11-K', '', ' Peningkatan Jalan Drs. Dominggus Mandacan (Kab. Pegunungan Arfak) ', '4.618', 'HRS Base', '', '', '38116175000', 'Pegunungan Arfak', NULL, NULL),
(118, '12', 'Jln. Lingkar Anggi Gigi', 'Sururey', 24.973, 1.099, 4.401, 0, 0, 23.874, 95.599, 0, 0, 1.099, 4.401, 4.5, 18.019, 19.374, 77.58, 0, 0, 2019, '', '12_2019', '', ' Peningkatan Jalan Lingkar Danau Anggi - Gidi (DAK) ', '4.5', 'Urpil', '', '', '13871900000', 'Pegunungan Arfak', NULL, NULL),
(119, '13', 'Jln. Lingkar Anggi Gida', 'Sururey', 14.067, 0, 0, 0, 0, 14.067, 100, 0, 0, 0, 0, 4, 28.435, 2.128, 15.128, 7.939, 56.437, 2019, '', '13', '', ' Peningkatan Jalan Lingkar Danau Anggi - Gida (DAK) ', '4.5', 'Urpil', '', '', '13871700000', 'Pegunungan Arfak', NULL, NULL),
(120, '14', 'Bts Kota Pegaf - Bts Kab Mansel (Sakumi)', 'Neney', 47.341, 9.3, 19.645, 0, 0, 38.041, 80.355, 0, 0, 9.3, 19.645, 0, 0, 0, 0, 38.041, 80.355, 2019, '', '14_2019', '', ' Peningkatan Jalan Batas Kota Pegaf - Batas Kab. Mansel ', '1.3', 'HRS Base', '', '', '9552340000', 'Pegunungan Arfak', NULL, NULL),
(121, '14', 'Bts Kota Pegaf - Bts Kab Mansel (Sakumi)', 'Neney', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', '14', '', ' Peningkatan Jalan Batas Kab. Mansel - Batas Kota Pegaf ', '8', 'HRS Base', '', '', '43700000000', 'Pegunungan Arfak', NULL, NULL),
(122, '15', 'Sururey - Bts Kab Manokwari Selatan', 'Neney', 26.206, 0, 0, 0, 0, 0, 0, 26.206, 100, 0, 0, 0, 0, 0, 0, 26.206, 100, 2019, '', '15', '', '', '', '', '', '', '', 'Pegunungan Arfak', NULL, NULL),
(123, '16', 'Bts Kab Manokwari Selatan - Umousi', 'Ransiki', 11.202, 0, 0, 0, 0, 6.403, 57.159, 4.799, 42.841, 0, 0, 4.8, 42.849, 0, 0, 6.402, 57.151, 2019, '', '16', '', ' Pembangunan Jalan  Umoisi - Batas Kabupaten Manokwari Selatan - Sururey ', '4.8', 'Urpil', '', '', '14067771000', 'Manokwari Selatan', NULL, NULL),
(124, '17', 'Ransiki - Bts. Kab. Pegaf (Sakumi)', 'Ransiki', 11.879, 11.879, 100, 0, 0, 0, 0, 0, 0, 3.521, 29.641, 6.009, 50.585, 0, 0, 2.349, 19.774, 2019, '', '17_2019', '', '', '', '', '', '', '', 'Manokwari Selatan', NULL, NULL),
(125, '18', 'Jln. Pelabuhan Oransbari (Mansel)', 'Oransbari', 6.346, 6.056, 95.43, 0, 0, 0.29, 4.57, 0, 0, 6.037, 95.131, 0, 0, 0.29, 4.57, 0.019, 0.299, 2019, '', '18_2019', '', '', '', '', '', '', '', 'Manokwari Selatan', NULL, NULL),
(126, '19', 'Isim - Umousi', 'Ransiki', 28.319, 0, 0, 0, 0, 28.319, 100, 0, 0, 0, 0, 28.319, 100, 0, 0, 0, 0, 2019, '', '19', '', ' Pembangunan Jalan Isim - Tuhugesa - Neney ', '2.5', 'Urpil', '', '', '14286984000', 'Manokwari Selatan', NULL, NULL),
(127, '20', 'Umousi - Bts Kab Teluk Bintuni', 'Ransiki', 21.606, 0, 0, 0, 0, 21.606, 100, 0, 0, 0, 0, 0, 0, 21.606, 100, 0, 0, 2019, '', '20', '', '', '', '', '', '', '', 'Manokwari Selatan', NULL, NULL),
(128, '21', 'Bts Kab. Teluk Bintuni - Merdey', 'Merdey', 35.971, 0, 0, 0, 0, 35.971, 100, 0, 0, 0, 0, 6, 16.68, 0, 0, 29.971, 83.32, 2019, '', '21', '', ' Pembangunan Jalan Batas Kabupaten Teluk Bintuni - Merdey ', '6', 'Urpil', '', '', '14465139000', 'Teluk Bintuni', NULL, NULL),
(129, '22', 'Merdey - Mogoi', 'Merdey', 22.471, 0, 0, 2.7, 12.015, 19.771, 87.985, 0, 0, 2.7, 12.015, 0, 0, 19.771, 87.985, 0, 0, 2019, '', '22_2019', '', ' Peningkatan Jalan Mogoi - Merdey - Kab. Teluk Bintuni ', '2.7', 'Rigid', '', '', '18537780000', 'Teluk Bintuni', NULL, NULL),
(130, '23', 'Bintuni - Tuhiba', 'Tuhiba', 25.193, 24.489, 97.206, 0.16, 0.635, 0.081, 0.322, 0.463, 1.838, 24.626, 97.749, 0.463, 1.838, 0.042, 0.167, 0.062, 0.246, 2019, '', '23_2019', '', '', '', '', '', '', '', 'Teluk Bintuni', NULL, NULL),
(131, '24', 'Tuhiba - Meyerga', 'Tuhiba', 108.851, 0, 0, 0, 0, 108.851, 100, 0, 0, 0, 0, 0, 0, 108.851, 100, 0, 0, 2019, '', '24', '', '', '', '', '', '', '', 'Teluk Bintuni', NULL, NULL),
(132, '25', 'Meyerga - Susumuk', 'Moskona Barat', 101.713, 28.886, 28.4, 0, 0, 72.827, 71.6, 0, 0, 28.886, 28.4, 72.827, 71.6, 0, 0, 0, 0, 2019, '', '25_2019', '', '', '', '', '', '', '', 'Teluk Bintuni', NULL, NULL),
(133, '26', 'Tandia - Batas Kota Rasiei', 'Wasior Selatan', 8.598, 8.304, 96.581, 0, 0, 0.294, 3.419, 0, 0, 8.304, 96.581, 0.136, 1.582, 0, 0, 0.158, 1.838, 2019, '', '26_2019', '', ' Peningkatan Jalan Tandia - Batas Kota Rasiei ', '2.3', 'HRS WC', '', '', '7767953000', 'Teluk Wondama', NULL, NULL),
(134, '026-11-K', 'Jln Poros Rasiei', 'Wasior Selatan', 20.402, 19.757, 96.839, 0, 0, 0.645, 3.161, 0, 0, 18.437, 90.369, 1.67, 8.185, 0, 0, 0.295, 1.446, 2019, '', '026-11-K_2019', '', ' Peningkatan Jalan Wasior - Rasiei ', '4.7', 'HRS WC', '', '', '14258000000', 'Teluk Wondama', NULL, NULL),
(135, '27', 'Batas Kota Rasiei - Yopenggar', 'Wasior Utara', 42.21, 26.02, 61.644, 0.009, 0.021, 2.87, 6.799, 13.311, 31.535, 19.856, 47.041, 4.652, 11.021, 5.951, 14.099, 11.751, 27.839, 2019, '', '27_2019', '', ' Peningkatan Jalan Yopenggar -  Batas Kota Rasiei ', '3.075', 'Lapen', '', '', '14460278000', 'Teluk Wondama', NULL, NULL),
(136, '28', 'Windesi - Werianggi - Idor', 'Windesi', 23.606, 8.908, 37.736, 0, 0, 14.698, 62.264, 0, 0, 3.978, 16.852, 19.409, 82.221, 0, 0, 0.219, 0.928, 2019, '', '28_2019', '', ' Pembangunan Jalan Windesi - Werianggi - Idor (Idor - Leunsy - Bintuni) ', '9', 'Urpil', '', '', '18935878000', 'Teluk Wondama', NULL, NULL),
(137, '29', 'Kaimana - Kiruru', 'Kaimana', 127.928, 4.298, 3.36, 0, 0, 27.152, 21.224, 96.478, 75.416, 0, 0, 9.298, 7.268, 27.152, 21.224, 91.478, 71.507, 2019, '', '29', '', ' Pembangunan Jalan Kaimana - Kiruru ', '2', 'Japat/LC', '', '', '6715000000', 'Kaimana', NULL, NULL),
(138, '29', 'Kaimana - Kiruru', 'Kaimana', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', '29', '', ' Pembangunan Jalan Kiruru - Kaimana ', '3', 'Japat/LC', '', '', '6684000000', 'Kaimana', NULL, NULL),
(139, '30', 'Wermura - Sisir', 'Kaimana', 18.479, 0, 0, 0, 0, 9.699, 52.487, 8.78, 47.513, 0, 0, 0, 0, 9.699, 52.487, 8.78, 47.513, 2019, '', '30', '', '', '', '', '', '', '', 'Kaimana', NULL, NULL),
(140, '31', 'Bts Kota Fak fak - Sangram', 'Fakfak Timur', 54.608, 49.105, 89.923, 0.052, 0.095, 5.451, 9.982, 0, 0, 43.631, 79.899, 10.977, 20.101, 0, 0, 0, 0, 2019, '', '31_2019', '', '', '', '', '', '', '', 'Fakfak', NULL, NULL),
(141, '32', 'Sangram - Weri', 'Fakfak Timur', 16.098, 3.148, 19.555, 0, 0, 12.95, 80.445, 0, 0, 1.95, 12.113, 0, 0, 12.95, 80.445, 1.198, 7.442, 2019, '', '32_2019', '', ' Peningkatan Jalan Weri - Sangram ', '1.95', 'Lapen', '', '', '14207083000', 'Fakfak', NULL, NULL),
(142, '33', 'Weri - Nusalasi', 'Fakfak Timur', 29.577, 0, 0, 0, 0, 3.749, 12.675, 25.828, 87.325, 0, 0, 0, 0, 0, 0, 29.577, 100, 2019, '', '33', '', '', '', '', '', '', '', 'Fakfak', NULL, NULL),
(143, '34', 'Nusalasi - Bomberay', 'Bomberay', 47.711, 1.85, 3.878, 0, 0, 45.861, 96.122, 0, 0, 1.85, 3.878, 7.711, 16.162, 0, 0, 38.15, 79.961, 2019, '', '34_2019', '', ' Peningkatan Jalan Bomberay - Nusalasi ', '1.85', 'HRS Base', '', '', '9561700000', 'Fakfak', NULL, NULL),
(144, '35', 'SP 2 - SP 1 - Tomage', 'Bomberay', 37.469, 21.228, 56.654, 0, 0, 16.241, 43.346, 0, 0, 21.228, 56.654, 0, 0, 16.241, 43.346, 0, 0, 2019, '', '35_2019', '', ' Peningkatan Jalan SP 2 - SP 1 - Tomage ', '3.1', 'HRS Base', '', '', '16138800000', 'Fakfak', NULL, NULL),
(145, '36', 'Bts Kota Fak Fak - Siboru', 'Fakfak Barat', 34.922, 34.922, 100, 0, 0, 0, 0, 0, 0, 25.05, 71.731, 0, 0, 0, 0, 9.872, 28.269, 2019, '', '36_2019', '', '', '', '', '', '', '', 'Fakfak', NULL, NULL),
(146, '37', 'Siboru - Sipatnanam', 'Fakfak Barat', 10.807, 3.699, 34.228, 0, 0, 7.108, 65.772, 0, 0, 3.699, 34.228, 0, 0, 0, 0, 7.108, 65.772, 2019, '', '37_2019', '', '', '', '', '', '', '', 'Fakfak', NULL, NULL),
(147, '38', 'Sipatnanam - Teluk Patipi', 'Teluk Patipi', 65.805, 3.952, 6.006, 0, 0, 61.853, 93.994, 0, 0, 3.952, 6.006, 0, 0, 0, 0, 61.853, 93.994, 2019, '', '38_2019', '', ' Peningkatan Ruas Jalan Teluk Patipi - Sipatnanam ', '3.952', 'Lapen', '', '', '23765000000', 'Fakfak', NULL, NULL),
(148, '39', 'Teluk Patipi - Kayuni', 'Teluk Patipi', 27.748, 22.292, 80.337, 0.754, 2.717, 4.702, 16.945, 0, 0, 7.7, 27.75, 6.019, 21.692, 8.554, 30.827, 5.475, 19.731, 2019, '', '39_2019', '', ' Peningkatan Jalan Kayuni - Teluk Patipi ', '1.25', 'HRS Base', '', '', '6599466000', 'Fakfak', NULL, NULL),
(149, '040-11-K', 'Jln. Jenderal Sudirman (Kota Sorong)', 'Kota Sorong', 5, 5, 100, 0, 0, 0, 0, 0, 0, 5, 100, 0, 0, 0, 0, 0, 0, 2019, '', '040-11-K_2019', '', '', '', '', '', '', '', 'Kota Sorong', NULL, NULL),
(150, '040-12-K', 'Jln Danau Tempe', 'Kota Sorong', 6.5, 4.35, 66.928, 0, 0, 2.15, 33.072, 0, 0, 1.978, 30.43, 0.049, 0.747, 2.324, 35.752, 2.15, 33.072, 2019, '', '040-12-K_2019', '', '', '', '', '', '', '', 'Kota Sorong', NULL, NULL),
(151, '040-13-K', 'Jln. Arteri Kota Sorong', 'Kota Sorong', 4.262, 4.262, 100, 0, 0, 0, 0, 0, 0, 4.163, 97.677, 0.099, 2.323, 0, 0, 0, 0, 2019, '', '040-13-K_2019', '', '', '', '', '', '', '', 'Kota Sorong', NULL, NULL),
(152, '41', 'Aimas - Klamalu', 'Aimas', 3.432, 1.832, 53.38, 1.6, 46.62, 0, 0, 0, 0, 3.432, 100, 0, 0, 0, 0, 0, 0, 2019, '', '41_2019', '', ' Peningkatan Jalan Aimas - Klamalu ', '1.6', 'Rigid', '', '', '9144414000', 'Sorong', NULL, NULL),
(153, '42', 'Klamalu - Majener', 'Aimas', 20.752, 15.091, 72.721, 5.661, 27.279, 0, 0, 0, 0, 8.442, 40.68, 12.257, 59.064, 0, 0, 0.053, 0.255, 2019, '', '42_2019', '', ' Peningkatan Jalan Klamalu - Majener (DAK) ', '2.47', 'Rigid', '', '', '18499390000', 'Sorong', NULL, NULL),
(154, '43', 'Jln.Yefelio', 'Mayamuk', 3.631, 0, 0, 0, 0, 0, 0, 3.631, 100, 0, 0, 0, 0, 0, 0, 3.631, 100, 2019, '', '43', '', '', '', '', '', '', '', 'Sorong', NULL, NULL),
(155, '44', 'Majener - Klasari', 'Salawati', 19.774, 16.324, 82.553, 3.45, 17.447, 0, 0, 0, 0, 19.774, 100, 0, 0, 0, 0, 0, 0, 2019, '', '44_2019', '', ' Peningkatan Jalan Majener - Klasari (DAK) ', '3.45', 'Rigid', '', '', '27795970000', 'Sorong', NULL, NULL),
(156, '45', 'Klasari - Seget', 'Salawati', 41.065, 0, 0, 1.115, 2.715, 39.95, 97.285, 0, 0, 4.415, 10.751, 36.65, 89.249, 0, 0, 0, 0, 2019, '', '45_2019', '', ' Pembangunan Jalan Klasari - Seget ', '3.3', 'Urpil', '', '', '8946660000', 'Sorong', NULL, NULL),
(157, '46', 'Klamalu - Bandara Segun', 'Aimas', 29.543, 0, 0, 0.425, 1.439, 0.199, 0.674, 28.919, 97.888, 0.425, 1.439, 0.199, 0.674, 0, 0, 28.919, 97.888, 2019, '', '46_2019', '', '', '', '', '', '', '', 'Sorong', NULL, NULL),
(158, '47', 'Jln. Dermaga Klalin (Kab. Sorong)', 'Aimas', 2.33, 0, 0, 2.33, 100, 0, 0, 0, 0, 2.33, 100, 0, 0, 0, 0, 0, 0, 2019, '', '47_2019', '', '', '', '', '', '', '', 'Sorong', NULL, NULL),
(159, '48', 'Batu Payung - Hobart - Bts. Sorsel', 'Sayosa', 32.865, 3.776, 11.489, 0, 0, 29.089, 88.511, 0, 0, 3.658, 11.13, 2.729, 8.304, 4.314, 13.126, 22.164, 67.44, 2019, '', '48_2019', '', '', '', '', '', '', '', 'Sorong', NULL, NULL),
(160, '49', 'Bts. Sorsel - Sbir', 'Sayosa', 16.81, 5.168, 30.744, 0, 0, 11.642, 69.256, 0, 0, 5.168, 30.744, 11.642, 69.256, 0, 0, 0, 0, 2019, '', '49_2019', '', '', '', '', '', '', '', 'Sorong', NULL, NULL),
(161, '50', 'Tarsa - Wanurian - Klarion', 'Beraur', 38.949, 0, 0, 0, 0, 38.949, 100, 0, 0, 0, 0, 38.949, 100, 0, 0, 0, 0, 2019, '', '50', '', '', '', '', '', '', '', 'Sorong', NULL, NULL),
(162, '51', 'Sayosa - Sailala - Klaili', 'Sayosa', 32.521, 0, 0, 6.675, 20.525, 25.846, 79.475, 0, 0, 6.675, 20.525, 8.627, 26.527, 0, 0, 17.219, 52.947, 2019, '', '51_2019', '', ' Pembangunan Jalan Sayosa - Sailala - Klaili ', '7.3', 'Urpil', '', '', '8637000000', 'Sorong', NULL, NULL),
(163, '52', 'Aimas - Klaili', 'Aimas', 28.937, 0, 0, 1.6, 5.529, 27.337, 94.471, 0, 0, 1.6, 5.529, 27.337, 94.471, 0, 0, 0, 0, 2019, '', '52_2019', '', '', '', '', '', '', '', 'Sorong', NULL, NULL),
(164, '53', 'Klaili - Dela', 'Sayosa', 44.931, 0, 0, 0, 0, 11.93, 26.552, 33.001, 73.448, 0, 0, 0, 0, 0, 0, 44.931, 100, 2019, '', '53', '', '', '', '', '', '', '', 'Sorong', NULL, NULL),
(165, '54', 'Klamit - Bts Kota Teminabuan', 'Sawiat', 39.644, 38.34, 96.711, 1.304, 3.289, 0, 0, 0, 0, 39.125, 98.691, 0.519, 1.309, 0, 0, 0, 0, 2019, '', '54_2019', '', '', '', '', '', '', '', 'Sorong Selatan', NULL, NULL),
(166, '054-11-K', 'Jln Poros Teminabuan', 'Teminabuan', 6.126, 6.126, 100, 0, 0, 0, 0, 0, 0, 6.126, 100, 0, 0, 0, 0, 0, 0, 2019, '', '054-11-K_2019', '', '', '', '', '', '', '', 'Sorong Selatan', NULL, NULL),
(167, '55', 'Bts Kota Teminabuan - Bts Kab Maybrat', 'Wayer,Moswaren', 31.405, 31.297, 99.656, 0, 0, 0.108, 0.344, 0, 0, 29.893, 95.185, 0.364, 1.159, 1.148, 3.655, 0, 0, 2019, '', '55_2019', '', '', '', '', '', '', '', 'Sorong Selatan', NULL, NULL),
(168, '56', 'Bts Kab Maybrat - Kambuaya', 'Ayamaru Timur', 12.715, 12.715, 100, 0, 0, 0, 0, 0, 0, 12.669, 99.638, 0.046, 0.362, 0, 0, 0, 0, 2019, '', '56_2019', '', '', '', '', '', '', '', 'Maybrat', NULL, NULL),
(169, '57', 'Fategomi - Athabu', 'Aitinyo Utara', 15.203, 4.973, 32.711, 0, 0, 10.23, 67.289, 0, 0, 15.203, 100, 0, 0, 0, 0, 0, 0, 2019, '', '57_2019', '', ' Peningkatan Jalan Athabu - Athinyo - Fategomi ', '2.675', 'Lapen', '', '', '19012100000', 'Maybrat', NULL, NULL),
(170, '58', 'Fiatsiur - Isas Jitmau', 'Aitinyo Raya', 5, 5, 100, 0, 0, 0, 0, 0, 0, 0, 0, 5, 100, 0, 0, 0, 0, 2019, '', '58', '', '', '', '', '', '', '', 'Maybrat', NULL, NULL),
(171, '59', 'Ayamaru - Sauf - Wehali - Bts. Kab. Sorsel', 'Ayamaru Selatan', 20.328, 18.876, 92.857, 0.154, 0.758, 1.298, 6.385, 0, 0, 19.03, 93.615, 1.206, 5.933, 0.092, 0.453, 0, 0, 2019, '', '59_2019', '', ' Peningkatan Jalan Ayamaru - Sauf - Wehali - Batas Kab. Sorsel ', '1.72', 'Lapen', '', '', '4746290000', 'Maybrat', NULL, NULL),
(172, '60', 'Bts Kab. Sorsel - Sesor - Boldon - Keyen', 'Ayamaru Selatan', 23.394, 6.447, 27.558, 0, 0, 16.947, 72.442, 0, 0, 3.172, 13.559, 13.969, 59.712, 6.253, 26.729, 0, 0, 2019, '', '60_2019', '', '', '', '', '', '', '', 'Maybrat', NULL, NULL),
(173, '61', 'Kambuaya - Yukase - Mapura', 'Ayamaru Utara', 16.002, 13.298, 83.102, 0, 0, 2.704, 16.898, 0, 0, 13.203, 82.508, 2.584, 16.148, 0.215, 1.344, 0, 0, 2019, '', '61_2019', '', '', '', '', '', '', '', 'Maybrat', NULL, NULL),
(174, '62', 'Mapura - Kumurkek', 'Ayamaru Utara', 31.026, 20.554, 66.248, 0, 0, 10.472, 33.752, 0, 0, 7.3, 23.529, 13.254, 42.719, 10.472, 33.752, 0, 0, 2019, '', '62_2019', '', '', '', '', '', '', '', 'Maybrat', NULL, NULL),
(175, '63', 'Yukase - Kfa', 'Ayamaru Utara', 3.341, 3.341, 100, 0, 0, 0, 0, 0, 0, 3.341, 100, 0, 0, 0, 0, 0, 0, 2019, '', '63_2019', '', '', '', '', '', '', '', 'Maybrat', NULL, NULL),
(176, '64', 'Susumuk - Fuog - Womba', 'Aifat Selatan', 43.228, 4.903, 11.342, 0, 0, 38.325, 88.658, 0, 0, 4.903, 11.342, 4.402, 10.183, 0, 0, 33.923, 78.475, 2019, '', '64_2019', '', '', '', '', '', '', '', 'Maybrat', NULL, NULL),
(177, '65', 'Mega - Fef', 'Moraid', 67.164, 1.249, 1.86, 5.652, 8.415, 60.263, 89.725, 0, 0, 6.901, 10.275, 44.41, 66.122, 15.853, 23.603, 0, 0, 2019, '', '65_2019', '', '', '', '', '', '', '', 'Tambrauw', NULL, NULL),
(178, '66', 'Fef - Siakwa', 'Fef', 46.236, 8.089, 17.495, 0.276, 0.597, 37.871, 81.908, 0, 0, 8.365, 18.092, 0, 0, 0, 0, 37.871, 81.908, 2019, '', '66_2019', '', ' Peningkatan Jalan Siakwa - Fef (DAK) ', '1.5', 'Lapen', '', '', '12992876000', 'Tambrauw', NULL, NULL),
(179, '67', 'Mega - Sausafor -Warmadi', 'Sausapor', 102.221, 11.321, 11.075, 5.979, 5.849, 84.921, 83.076, 0, 0, 17.3, 16.924, 25.2, 24.652, 25.299, 24.749, 34.422, 33.674, 2019, '', '67_2019', '', ' Peningkatan Jalan Mega - Sausafor ', '2.4', 'HRS Base', '', '', '23981368000', 'Tambrauw', NULL, NULL),
(180, '68', 'Warmadi - Saukorem - Arfu', 'Amberbaken', 101.89, 41.608, 40.836, 0, 0, 60.282, 59.164, 0, 0, 41.123, 40.36, 0.485, 0.476, 60.282, 59.164, 0, 0, 2019, '', '68_2019', '', '', '', '', '', '', '', 'Tambrauw', NULL, NULL),
(181, '069-11-K', 'Jln Ahmad Yani (Waisai)', 'Waigeo Selatan', 1.9, 1.9, 100, 0, 0, 0, 0, 0, 0, 1.9, 100, 0, 0, 0, 0, 0, 0, 2019, '', '069-11-K_2019', '', '', '', '', '', '', '', 'Raja Ampat', NULL, NULL),
(182, '069-12-K', 'Jln. Basuki Rahmat (Waisai)', 'Waigeo Selatan', 5, 5, 100, 0, 0, 0, 0, 0, 0, 5, 100, 0, 0, 0, 0, 0, 0, 2019, '', '069-12-K_2019', '', '', '', '', '', '', '', 'Raja Ampat', NULL, NULL),
(183, '70', 'Kalobo - Samate - Solol - Kaliyam', 'Salawati Utara', 79.283, 2.997, 3.78, 0, 0, 76.286, 96.22, 0, 0, 0, 0, 2.997, 3.78, 76.286, 96.22, 0, 0, 2019, '', '70_2019', '', '', '', '', '', '', '', 'Raja Ampat', NULL, NULL),
(184, 'Non Status', 'Perkantoran Mapolda Papua Barat', ' - ', 1.081, 1.081, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Peningkatan Jalan Perkantoran Mapolda Papua Barat', '1.081', 'HRS Base', '', '', '9475514000', 'Manokwari', NULL, NULL),
(185, 'Non Status', 'Kompleks Kantor Badan Diklat Provinsi Papua Barat', ' - ', 1.947, 1.947, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Peningkatan Jalan Kompleks Kantor Badan Diklat Provinsi Papua Barat', '1.947', 'HRS Base', '', '', '4721950000', 'Manokwari', NULL, NULL),
(186, 'Non Status', 'Kampung Andai', ' - ', 0.13, 0.13, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Peningkatan Jalan Kampung Andai', '0.13', 'HRS Base', '', '', '931050000', 'Manokwari', NULL, NULL),
(187, 'Non Status', 'Kodam XVIII Kasuari', ' - ', 0.219, 0.219, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Peningkatan Jalan Kodam XVIII Kasuari', '0.219', 'HRS Base', '', '', '4847200000', 'Manokwari', NULL, NULL),
(188, 'Non Status', 'Waryori - Wasirawi Distrik Masni', ' - ', 2.278, 0, 0, 0, 0, 2.278, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jalan Waryori - Wasirawi Distrik Masni', '2.278', 'Urpil', '', '', '19088286000', 'Manokwari', NULL, NULL),
(189, 'Non Status', 'Drs. Dominggus Mandacan (Sowi Gunung)', ' - ', 2, 0, 0, 0, 0, 2, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jalan Drs. Dominggus Mandacan (Sowi Gunung)', '2', 'Urpil', '', '', '11142663000', 'Manokwari', NULL, NULL),
(190, 'Non Status', 'Sowi 4 - Perkantoran Gubernur', ' - ', 1.62, 0, 0, 0, 0, 1.62, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jalan Sowi 4 - Perkantoran Gubernur', '1.62', 'Urpil', '', '', '4622500000', 'Manokwari', NULL, NULL),
(191, 'Non Status', 'Dalam Kota di Kabupaten Manokwari Selatan', ' - ', 5.5, 5.5, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Peningkatan Jalan Dalam Kota di Kabupaten Manokwari Selatan', '5.5', 'HRS Base', '', '', '18993409000', 'Manokwari Selatan', NULL, NULL),
(192, 'Non Status', 'Irbos - Tomstera', ' - ', 2.6, 0, 0, 0, 0, 2.6, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Peningkatan Jalan Irbos - Tomstera', '2.6', 'Urpil', '', '', '9505134000', 'Pegunungan Arfak', NULL, NULL),
(193, 'Non Status', 'Dataran Bemes - Pegaf', ' - ', 10, 0, 0, 0, 0, 10, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jalan Dataran Bemes - Pegaf', '10', 'Urpil', '', '', '19404200000', 'Pegunungan Arfak', NULL, NULL),
(194, 'Non Status', 'Taige - Pegaf - Gunung Botak', ' - ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jalan Taige - Pegaf - Gunung Botak', ' - ', '', '', '', '9450008000', 'Pegunungan Arfak', NULL, NULL),
(195, 'Non Status', 'Testega - Moskona Timur', ' - ', 8.5, 0, 0, 0, 0, 8.5, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jalan Testega - Moskona Timur', '8.5', 'Urpil', '', '', '19300000000', 'Pegunungan Arfak', NULL, NULL),
(196, 'Non Status', 'Testega - Assai - Meidogda', ' - ', 1, 0, 0, 0, 0, 0, 0, 1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jalan Testega - Assai - Meidogda', '1', 'Land Clearing', '', '', '4787265000', 'Pegunungan Arfak', NULL, NULL),
(197, 'Non Status', 'Meyof - Testega', ' - ', 4, 0, 0, 0, 0, 4, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jalan Meyof - Testega', '4', 'Urpil + LC', '', '', '9562800000', 'Pegunungan Arfak', NULL, NULL),
(198, 'Non Status', 'Pegaf -  Dataran Bermes ', ' - ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jalan Pegaf -  Dataran Bermes ', ' - ', '', '', '', '19307934000', 'Pegunungan Arfak', NULL, NULL),
(199, 'Non Status', 'Kawasan Pelabuhan ASDP Arar (Kawasan KEK)', ' - ', 0.5, 0.5, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Peningkatan Jalan Kawasan Pelabuhan ASDP Arar (Kawasan KEK)', '0.5', 'Rigid + HRS', '', '', '5732480000', 'Sorong', NULL, NULL),
(200, 'Non Status', 'Kampung Buk - Batu Payung', ' - ', 2.44, 0, 0, 0, 0, 2.44, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jalan Kampung Buk - Batu Payung', '2.44', 'Urpil', '', '', '6394000000', 'Sorong', NULL, NULL),
(201, 'Non Status', 'Katapop Pantai - Pelabuhan Seget (KEK)', ' - ', 17, 0, 0, 0, 0, 17, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jalan Katapop Pantai - Pelabuhan Seget (KEK)', '17', 'Urpil', '', '', '46381391000', 'Sorong', NULL, NULL),
(202, 'Non Status', 'Tofot - Haha (Kakas - Klabot)', ' - ', 7.2, 7.2, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Peningkatan Jalan Tofot - Haha (Kakas - Klabot)', '7.2', 'Lapen', '', '', '19152000000', 'Sorong Selatan', NULL, NULL),
(203, 'Non Status', 'Keyen - Boldon - Sesor', ' - ', 4, 0, 0, 0, 0, 4, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Peningkatan Jalan Keyen - Boldon - Sesor', '4', 'Urpil', '', '', '4620000000', 'Sorong Selatan', NULL, NULL),
(204, 'Non Status', 'Keyen - Boldon - Batas Kabupaten Sorong Selatan', ' - ', 1, 1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Peningkatan Jalan Keyen - Boldon - Batas Kabupaten Sorong Selatan', '1', 'Lapen', '', '', '14507000000', 'Sorong Selatan', NULL, NULL),
(205, 'Non Status', 'Teminabuan - Pelabuhan Wersimar Kab. Sorong Selata', ' - ', 0.75, 0.75, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Peningkatan Jalan Teminabuan - Pelabuhan Wersimar Kab. Sorong Selatan', '0.75', 'Lapen', '', '', '2827000000', 'Sorong Selatan', NULL, NULL),
(206, 'Non Status', 'Konja Seya (Maybrat) - Ases Fef (Tambrauw)', ' - ', 2.4, 2.4, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Peningkatan Jalan Konja Seya (Maybrat) - Ases Fef (Tambrauw)', '2.4', 'Lapen', '', '', '9348288000', 'Maybrat', NULL, NULL),
(207, 'Non Status', 'Ayamaru - Fatigome', ' - ', 5, 0, 0, 0, 0, 5, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jalan Ayamaru - Fatigome', '5', 'Urpil', '', '', '19404558000', 'Maybrat', NULL, NULL),
(208, 'Non Status', 'Usaha Perikanan  Darat Kampung Suwiyam Maybrat ', ' - ', 3, 0, 0, 0, 0, 3, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jalan Usaha Perikanan  Darat Kampung Suwiyam Maybrat ', '3', 'Urpil', '', '', '2832280000', 'Maybrat', NULL, NULL),
(209, 'Non Status', 'Lingkar Danau Uter Tahap I', ' - ', 4.15, 0, 0, 0, 0, 4.15, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jalan Lingkar Danau Uter Tahap I', '4.15', 'Urpil', '', '', '9433152000', 'Maybrat', NULL, NULL),
(210, 'Non Status', 'Suksiar - Seya', ' - ', 4.575, 0, 0, 0, 0, 4.575, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jalan Suksiar - Seya', '4.575', 'Urpil', '', '', '9157800000', 'Maybrat', NULL, NULL),
(211, 'Non Status', 'Ruas Selewok - Baun', ' - ', 7.4, 7.4, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Peningkatan Jalan Ruas Selewok - Baun', '7.4', 'HRS Base', '', '', '43136927000', 'Tambrauw', NULL, NULL),
(212, 'Non Status', 'Ruas Baun - Selewok', ' - ', 5.51, 5.51, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Peningkatan Jalan Ruas Baun - Selewok', '5.51', 'HRS Base', '', '', '28816955000', 'Tambrauw', NULL, NULL),
(213, 'Non Status', 'Meyah ? Feef', ' - ', 2, 2, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Peningkatan Jalan Meyah ? Feef', '2', 'HRS Base', '', '', '14535800000', 'Tambrauw', NULL, NULL);
INSERT INTO `dasarprasaranajalan` (`iddasarprasaranajalan`, `no_ruas`, `namaruas`, `kecamatan_yang_dilalui`, `panjang_ruas`, `aspalkm`, `aspalpersen`, `betonkm`, `betonpersen`, `kerikilkm`, `kerikilpersen`, `belumtembuskm`, `belumtembuspersen`, `kmbaik`, `persenbaik`, `kmsedang`, `persensedang`, `kmringan`, `persenringan`, `kmberat`, `persenberat`, `tahun`, `nama_pengguna`, `filegambar`, `filevideo`, `namapaket`, `jalankmtarget`, `jlnprodukakhir`, `jembatan`, `produkakhirjbt`, `nilaikontrak`, `kabupaten`, `filegambardua`, `kategori`) VALUES
(214, 'Non Status', 'Tembus Kaimana Menuju Kampung Bitsyari Distrik Kai', ' - ', 0.75, 0, 0, 0, 0, 0.75, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jalan Tembus Kaimana Menuju Kampung Bitsyari Distrik Kaimana', '0.75', 'Urpil', '', '', '6720000000', 'Kaimana', NULL, NULL),
(215, 'Non Status', 'Tembus Teluk Triton - Kaimana', ' - ', 4, 0, 0, 0, 0, 4, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jalan Tembus Teluk Triton - Kaimana', '4', 'Urpil', '', '', '7715600000', 'Kaimana', NULL, NULL),
(216, 'Non Status', 'Wombu - Undurara', ' - ', 8.6, 0, 0, 0, 0, 8.6, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jalan Wombu - Undurara', '8.6', 'Urpil', '', '', '22477360000', 'Teluk Wondama', NULL, NULL),
(217, 'Non Status', 'Jembatan Sumber Boga CS Distrik Masni', ' - ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jembatan Sumber Boga CS Distrik Masni', '', '', '0', 'Box Culvert', '2771000000', 'Manokwari', NULL, NULL),
(218, 'Non Status', 'Jembatan Pami Tahap III', ' - ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jembatan Pami Tahap III', '', '', '45', 'Bangunan Atas', '4707500000', 'Manokwari', NULL, NULL),
(219, 'Non Status', 'Jembatan Sibuni 2', ' - ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jembatan Sibuni 2', '', '', '15', 'Bangunan Bawah', '2752836000', 'Manokwari', NULL, NULL),
(220, 'Non Status', 'Jembatan Pami 2', ' - ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jembatan Pami 2', '', '', '0', 'Box Culvert', '4474800000', 'Manokwari', NULL, NULL),
(221, 'Non Status', 'Jembatan Pami 3', ' - ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jembatan Pami 3', '', '', '10', 'Bgn Bawah + Bgn Atas', '4728700000', 'Manokwari', NULL, NULL),
(222, 'Non Status', 'Jembatan Kali Uriyem Kmp. Sogun', ' - ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jembatan Kali Uriyem Kmp. Sogun', '', '', '25', 'Bangunan Bawah', '4622000000', 'Manokwari', NULL, NULL),
(223, 'Non Status', 'Jembatan Sibuni 3', ' - ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jembatan Sibuni 3', '', '', '18', 'Bangunan Bawah', '2754980000', 'Manokwari', NULL, NULL),
(224, 'Non Status', 'Jembatan Iray Tahap II', ' - ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jembatan Iray Tahap II', '', '', '45', 'Bangunan Atas (Rangka baja)', '9501564000', 'Pegunungan Arfak', NULL, NULL),
(225, 'Non Status', 'Jembatan Yabi', ' - ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jembatan Yabi', '', '', '25', 'Bangunan Bawah', '5484500000', 'Maybrat', NULL, NULL),
(226, 'Non Status', 'Jembatan Kali Sayam Tahap III', ' - ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jembatan Kali Sayam Tahap III', '', '', '25', 'Bangunan Atas', '3711491000', 'Tambrauw', NULL, NULL),
(227, 'Non Status', 'Jembatan Manuhama Tahap II', ' - ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019, '', 'Non Status', '', 'Pembangunan Jembatan Manuhama Tahap II', '', '', '15', 'Bangunan Atas', '1922500000', 'Teluk Wondama', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_progress`
--

CREATE TABLE `detail_progress` (
  `iddetail_progress` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `progress_idprogress` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dokumentasi`
--

CREATE TABLE `dokumentasi` (
  `iddokumentasi` int(11) NOT NULL,
  `nomor_kontrak_documentasi` varchar(55) DEFAULT NULL,
  `tanggal_documentasi` date DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL,
  `upload_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dokumentasi`
--

INSERT INTO `dokumentasi` (`iddokumentasi`, `nomor_kontrak_documentasi`, `tanggal_documentasi`, `image`, `description`, `created`, `updated`, `upload_by`, `updated_by`) VALUES
(1, '003.C/KONTR/2020/12A/12B', '2020-12-02', '10613145_1591653237721534_9178283308441872646_n.jpg', 'Sedang Melakukan Cor Jalan', '2020-12-02 15:00:39', NULL, 'Buceks', NULL),
(2, '004.C/KONTR/43.16-BM/600/2020', '2020-12-02', '10613145_1591653237721534_9178283308441872646_n.jpg', 'Sedang Melakukan Cor Jalan', '2020-12-02 15:01:10', NULL, 'Buceks', NULL),
(3, '003.C/KONTR/2020/12A/12B', '2020-12-02', '10613145_1591653237721534_9178283308441872646_n.jpg', 'Sedang Melakukan Cor Jalan', '2020-12-02 15:01:42', NULL, 'Buceks', NULL),
(4, '003.C/KONTR/2020/12A/12B', '2020-12-02', 'doc_003_1606922201.jpg', 'Sedang Melakukan Cor Jalan', '2020-12-02 15:16:41', NULL, 'Buceks', NULL),
(5, '003.C/KONTR/2020/12A/12B', '2020-12-02', 'doc_003_1607509554.jpg', 'Sedang Melakukan Cor Jalan', '2020-12-09 10:25:54', NULL, 'Buceks', NULL),
(6, '003.C/KONTR/2020/12A/12B', '2020-12-02', 'doc_003_1607509592.jpg', 'Sedang Melakukan Cor Jalan', '2020-12-09 10:26:32', NULL, 'Buceks', NULL),
(7, '003.C/KONTR/2020/12A/12B', '2020-12-02', 'doc_003_1607509611.jpg', 'Sedang Melakukan Cor Jalan', '2020-12-09 10:26:51', NULL, 'Buceks', NULL),
(8, '003.C/KONTR/2020/12A/12B', '2020-12-02', 'doc_003_1607509845.jpg', 'Sedang Melakukan Cor Jalan', '2020-12-09 10:30:45', NULL, 'Buceks', NULL),
(9, '003.C/KONTR/2020/12A/12B', '2020-12-02', 'doc_003_1607509857.jpg', 'Sedang Melakukan Cor Jalan', '2020-12-09 10:30:57', NULL, 'Buceks', NULL),
(10, '003.C/KONTR/43.18-BM/008/600/2020', '2020-12-02', 'doc_003_1607513349.jpg', 'Sedang Melakukan Cor Jalan', '2020-12-09 11:29:09', NULL, 'Buceks', NULL),
(11, '003.C/KONTR/43.18-BM/008/600/2020', '2020-12-02', 'doc_003_1607561564.jpg', 'Sedang Melakukan Cor Jalan', '2020-12-10 00:52:44', NULL, 'Buceks', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kab_kota`
--

CREATE TABLE `kab_kota` (
  `no` int(11) NOT NULL,
  `kode` varchar(8) DEFAULT NULL,
  `namadaerah` varchar(100) DEFAULT NULL,
  `pusatkota` varchar(50) DEFAULT NULL,
  `kategori` enum('KAB','KOTA') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kab_kota`
--

INSERT INTO `kab_kota` (`no`, `kode`, `namadaerah`, `pusatkota`, `kategori`) VALUES
(1, '92.01', 'Kabupaten Sorong', 'Aimas', 'KAB'),
(2, '92.02', 'Kabupaten Manokwari', 'Manokwari', 'KAB'),
(3, '92.03', 'Kabupaten Fakfak', 'Fakfak', 'KAB'),
(4, '92.04', 'Kabupaten Sorong Selatan', 'Teminabuan', 'KAB'),
(5, '92.05', 'Kabupaten Raja Ampat', 'Waisai', 'KAB'),
(6, '92.06', 'Kabupaten Teluk Bintuni', 'Bintuni', 'KAB'),
(7, '92.07', 'Kabupaten Teluk Wondama', 'Rasiei', 'KAB'),
(8, '92.08', 'Kabupaten Kaimana', 'Kaimana', 'KAB'),
(9, '92.09', 'Kabupaten Tambrauw', 'Fef', 'KAB'),
(10, '92.10', 'Kabupaten Maybrat', 'Kumurkek', 'KAB'),
(11, '92.11', 'Kabupaten Manokwari Selatan', 'Ransiki', 'KAB'),
(12, '92.12', 'Kabupaten Pegunungan Arfak', 'Anggi', 'KAB'),
(13, '92.71', 'Kota Sorong', '', 'KOTA');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `idkecamatan` int(11) NOT NULL,
  `nama_kecamatan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`idkecamatan`, `nama_kecamatan`) VALUES
(1, 'Manokwari Barat'),
(2, 'Masni'),
(3, 'Manokwari Timur'),
(4, 'Sidey'),
(5, 'Prafi'),
(6, 'Menyambouw'),
(7, 'Hink'),
(8, 'Sururey'),
(9, 'Neney'),
(10, 'Ransiki'),
(11, 'Oransbari'),
(12, 'Merdey'),
(13, 'Tuhiba'),
(14, 'Wasior Selatan'),
(15, 'Wasior Utara'),
(16, 'Windesi'),
(17, 'Kaimana'),
(18, 'Fakfak Timur'),
(19, 'Bomberay'),
(20, 'Fakfak Barat'),
(21, 'Teluk Patipi'),
(22, 'Kota Sorong'),
(23, 'Aimas'),
(24, 'Mayamuk'),
(25, 'Salawati'),
(26, 'Sayosa'),
(27, 'Beraur'),
(28, 'Sawiat'),
(29, 'Teminabuan'),
(30, 'Wayer,Moswaren'),
(31, 'Ayamaru Timur'),
(32, 'Aitinyo Utara'),
(33, 'Aitinyo Raya'),
(34, 'Ayamaru Selatan'),
(35, 'Ayamaru Utara'),
(36, 'Aifat Selatan'),
(37, 'Moraid'),
(38, 'Fef'),
(39, 'Sausapor'),
(40, 'Amberbaken'),
(41, 'Waigeo Selatan'),
(42, 'Salawati Utara');

-- --------------------------------------------------------

--
-- Table structure for table `kodeotp`
--

CREATE TABLE `kodeotp` (
  `id_kodeotp` int(11) NOT NULL,
  `tanggal_buat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `no_hp` varchar(150) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `tanggal_kadaluarsa` datetime NOT NULL,
  `status` char(1) NOT NULL COMMENT 'Y=Aktif,N=Tidak Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kodeotp`
--

INSERT INTO `kodeotp` (`id_kodeotp`, `tanggal_buat`, `no_hp`, `kode`, `tanggal_kadaluarsa`, `status`) VALUES
(8, '2020-12-11 06:24:42', '6281248821877', '9207', '2020-12-11 15:34:42', 'Y'),
(9, '2020-12-08 08:54:28', '6282197465961', '5869', '2020-12-08 18:04:17', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `kontrak`
--

CREATE TABLE `kontrak` (
  `idkontrak` int(11) NOT NULL,
  `nomor_kontrak` varchar(55) DEFAULT NULL,
  `nama_kontrak` text,
  `pengguna_id` int(11) DEFAULT NULL,
  `perusahaan_id` int(11) DEFAULT NULL,
  `tanggal_kontrak` date DEFAULT NULL,
  `waktu_pelaksanaan` int(11) DEFAULT NULL,
  `nilai_kontrak_awal` varchar(45) DEFAULT NULL,
  `sumber_dana` varchar(45) DEFAULT NULL,
  `no_dpa` varchar(45) DEFAULT NULL,
  `tanggal_dpa` date DEFAULT NULL,
  `no_spmk` varchar(45) DEFAULT NULL,
  `tanggal_spmk` date DEFAULT NULL,
  `tanggal_pho` date DEFAULT NULL,
  `produk_akhir_kontrak` varchar(100) DEFAULT NULL,
  `idpaket` varchar(10) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `bulan` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kontrak`
--

INSERT INTO `kontrak` (`idkontrak`, `nomor_kontrak`, `nama_kontrak`, `pengguna_id`, `perusahaan_id`, `tanggal_kontrak`, `waktu_pelaksanaan`, `nilai_kontrak_awal`, `sumber_dana`, `no_dpa`, `tanggal_dpa`, `no_spmk`, `tanggal_spmk`, `tanggal_pho`, `produk_akhir_kontrak`, `idpaket`, `created`, `updated`, `created_by`, `updated_by`, `bulan`) VALUES
(1, '003.C/KONTR/43.18-BM/008/600/2020', 'Pengawasan Peningkatan Jalan Maripi-SP1 (Lanjutan)', 7, 12, '2020-05-28', 180, '346940000', 'DTI', '', NULL, '003.C/SPMK/43.18-BM/008/600/2020', '2020-05-28', '0000-00-00', NULL, '003', '2020-11-29 01:40:07', '2020-11-29 01:40:36', NULL, NULL, NULL),
(2, '003.A/KONTR/43.18-BM/008/600/2020', 'Peningkatan Jalan Maripi-SP1 (Lanjutan)', NULL, 10, '2020-05-28', 180, '135408080', 'DTI', '', NULL, '003.A/SPMK/43.18-BM/008/600/2020', '2020-05-28', '2020-11-23', NULL, '003', '2020-12-05 04:11:37', NULL, NULL, NULL, NULL),
(5, '004.C/KONTR/43.16-BM/600/2020', 'Pengawasan Teknis Peningkatan Jalan Kompleks Perkantoran Mapolda Papua Barat Dan Perumahan Mapolda Soribo', 9, 15, '2020-05-28', 120, '255814875', '', '', NULL, '004.C/SPMK/43.16-BM/600/2020', '2020-05-28', '0000-00-00', NULL, '004', '2020-12-08 08:26:31', NULL, 'Delina', NULL, NULL),
(7, '004.A/KONTR/43.16-BM/600/2020', 'Peningkatan Jalan Kompleks Perkantoran Mapolda Papua Barat Dan Perumahan Mapolda Soribo', NULL, 17, '2020-05-28', 180, '8652664000', '', '', NULL, '004.A/SPMK/43.16-BM/600/2020', '2020-05-28', '2020-11-23', NULL, '004', '2020-12-11 15:51:01', NULL, 'Delina', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `idpaket` varchar(10) NOT NULL,
  `nama_paket` text,
  `wilayah` varchar(45) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`idpaket`, `nama_paket`, `wilayah`, `created`, `updated`, `created_by`, `updated_by`) VALUES
('001', 'Pembangunan Box Culvert Kampung Assai', 'Kabupaten Manokwari', '2020-12-10 08:26:20', '0000-00-00 00:00:00', 'Delina', 'Delina'),
('003', 'Peningkatan Jalan Maripi-SP1 (Lanjutan)', '', '2020-12-07 12:33:44', '0000-00-00 00:00:00', NULL, 'Delina'),
('004', 'Peningkatan Jalan Kompleks Perkantoran Mapolda Papua Barat Dan Perumahan Mapolda Soribo', '', '2020-12-07 12:33:44', NULL, NULL, NULL),
('009', 'Pembangunan Jalan Wariori - Wasarawi Distrik Masni', '', '2020-12-07 12:33:44', NULL, NULL, NULL),
('015', 'Pembangunan Jembatan Kali Uriyem Kmp. Sogun', 'Kabupaten Manokwari', '2020-12-10 08:23:43', NULL, 'Delina', NULL),
('019', 'Peningkatan Jalan Masni - Wariori', 'Kabupaten Manokwari', '2020-12-10 08:15:48', NULL, 'Delina', NULL),
('027', 'Peningkatan Jalan Kodam XVIII Kasuari', 'Kabupaten Manokwari', '2020-12-10 08:09:35', NULL, 'Delina', NULL),
('029', 'Peningkatan Jalan Arfai - Pami', 'Kabupaten Manokwari', '2020-12-10 08:10:27', NULL, 'Delina', NULL),
('038', 'Peningkatan Jalan Kampung Andai', 'Kabupaten Manokwari', '2020-12-10 08:23:09', NULL, 'Delina', NULL),
('049', 'Pembangunan Jalan Drs. Dominggus Mandacan (Sowi Gunung)', 'Kabupaten Manokwari', '2020-12-10 08:11:26', NULL, 'Delina', NULL),
('056', 'Peningkatan Jalan Sowi 4 - Perkantoran Gubernur', 'Kabupaten Manokwari', '2020-12-10 08:16:24', NULL, 'Delina', NULL),
('066', 'Peningkatan Jalan Kampung Dindey & SMA Warmare Dindey (DTI Kab. Manokwari)', 'Kabupaten Manokwari', '2020-12-10 08:27:29', NULL, 'Delina', NULL),
('067', 'Pembangunan Jembatan Bremi I Tahap 2- Upper Strukur (DTI Kab. Manokwari)', 'Kabupaten Manokwari', '2020-12-10 08:25:54', NULL, 'Delina', NULL),
('075', 'Peningkatan Jalan Masni - Sibuni', 'Kabupaten Manokwari', '2020-12-10 08:13:59', NULL, 'Delina', NULL),
('081', 'Peningkatan Jalan SP5 - Masni', 'Kabupaten Manokwari', '2020-12-10 08:12:20', NULL, 'Delina', NULL),
('082', 'Peningkatan Jalan Batas Kota Manokwari - Sibuni', 'Kabupaten Manokwari', '2020-12-10 08:13:10', NULL, 'Delina', NULL),
('083', 'Pembangunan Jembatan Kali Merah', 'Kabupaten Manokwari', '2020-12-10 08:27:01', NULL, 'Delina', NULL),
('092', 'Pembangunan Jalan Pami - Arfai', 'Kabupaten Manokwari', '2020-12-10 08:25:25', NULL, 'Delina', NULL),
('12', 'asdf', 'Kabupaten Teluk Wondama', '2020-12-11 10:32:45', NULL, 'Delina', NULL),
('belumterse', 'Peningkatan Jalan SP5 - Sibuni', 'Kabupaten Manokwari', '2020-12-10 08:15:13', NULL, 'Delina', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pemilik_kerjaan`
--

CREATE TABLE `pemilik_kerjaan` (
  `idpemilik_kerjaan` int(11) NOT NULL,
  `nama_pemilik_kerjaan` varchar(45) DEFAULT NULL,
  `nip` varchar(45) DEFAULT NULL,
  `golongan` varchar(45) DEFAULT NULL,
  `kategori` enum('ppk','pptk','direksi') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `penanggung_jawab`
--

CREATE TABLE `penanggung_jawab` (
  `idpenanggung_jawab` int(11) NOT NULL,
  `pejabat_satu` varchar(100) DEFAULT NULL,
  `pejabat_dua` varchar(100) DEFAULT NULL,
  `pejabat_tiga` varchar(100) DEFAULT NULL,
  `nomor_kontrak` varchar(55) DEFAULT NULL,
  `kategory` varchar(40) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `idpengguna` int(11) NOT NULL,
  `namapengguna` varchar(100) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` enum('admin','staf','user') DEFAULT 'user',
  `fcm` text,
  `status` enum('enable','disable') DEFAULT 'disable',
  `email` varchar(45) DEFAULT NULL,
  `nomorhp` varchar(14) DEFAULT NULL,
  `idpaket` varchar(10) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	';

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`idpengguna`, `namapengguna`, `username`, `password`, `level`, `fcm`, `status`, `email`, `nomorhp`, `idpaket`, `created`) VALUES
(1, 'Delina', 'Delina', '10fc8bc6e462e1fb7205e224eb99a2be', 'admin', NULL, 'enable', NULL, '', '', '2020-12-08 13:14:41'),
(2, 'Buceks', 'bucek', '09f515568387cfbcd791aa81380fce0b', 'admin', NULL, 'enable', NULL, '', '', '2020-12-08 13:14:41'),
(4, 'Anto Dahlan', 'anto', '2c946c0178ec72aaefa54f786540d301', 'user', NULL, 'disable', 'anto@gmail.com', '', '', '2020-12-08 13:14:41'),
(7, 'Sutarman s', 'sutarman', '8d410ac552b55a7ddf020c475f99296d', 'user', NULL, 'enable', 'afar@gmail.com', '6281248821877', '003', '2020-12-08 13:14:41'),
(9, 'Eduward, ST', 'eduwar', 'e10adc3949ba59abbe56e057f20f883e', 'user', NULL, 'disable', 'fzain712@gmail.com', '6282197465961', '004', '2020-12-08 13:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `perpanjangan_kontrak`
--

CREATE TABLE `perpanjangan_kontrak` (
  `idperpanjangan_kontrak` int(11) NOT NULL,
  `nomor_kontrak_add` varchar(55) DEFAULT NULL,
  `tanggal_kontrak_add` date DEFAULT NULL,
  `waktu_pelaksanaan_add` int(11) DEFAULT NULL,
  `bulan_add` int(3) DEFAULT NULL,
  `nilai_kontrak_add` varchar(45) DEFAULT NULL,
  `tanggal_pho_add` date DEFAULT NULL,
  `nomor_kontrak` varchar(55) DEFAULT NULL,
  `kontrak_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perpanjangan_kontrak`
--

INSERT INTO `perpanjangan_kontrak` (`idperpanjangan_kontrak`, `nomor_kontrak_add`, `tanggal_kontrak_add`, `waktu_pelaksanaan_add`, `bulan_add`, `nilai_kontrak_add`, `tanggal_pho_add`, `nomor_kontrak`, `kontrak_id`, `created`, `updated`, `created_by`, `updated_by`) VALUES
(1, '003.A/ADD-I/KONTR/43.18-BM/008/600/2020', '2020-06-26', NULL, NULL, NULL, NULL, '003.A/KONTR/43.18-BM/008/600/2020', 2, '2020-12-05 15:14:13', NULL, 'Delina', NULL),
(3, '003.A/ADD-II/KONTR/43.18-BM/008/600/2020', '2020-07-06', 0, NULL, '', NULL, '003.A/KONTR/43.18-BM/008/600/2020', 2, '2020-12-05 16:10:05', NULL, 'Delina', NULL),
(4, '004.A/ADD-1/KONTR/43.16-BM/600/2020', '2020-12-12', NULL, NULL, NULL, NULL, '004.A/KONTR/43.16-BM/600/2020', 7, '2020-12-11 22:01:47', NULL, 'Delina', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `idperusahaan` int(11) NOT NULL,
  `nama_perusahaan` varchar(200) DEFAULT NULL,
  `nama_direktur` varchar(150) DEFAULT NULL,
  `nama_pengawas` varchar(150) DEFAULT NULL,
  `nomor_hp_pengawas` varchar(15) DEFAULT NULL,
  `alamat` text,
  `kota` varchar(100) DEFAULT NULL,
  `kategori` enum('kontraktor','consultant') DEFAULT NULL,
  `site_manager` varchar(100) DEFAULT NULL,
  `pelaksana` varchar(100) DEFAULT NULL,
  `supervisi_engineer` varchar(100) DEFAULT NULL,
  `quality_engineer` varchar(100) DEFAULT NULL,
  `quantity_engineer` varchar(100) DEFAULT NULL,
  `inspector` varchar(100) DEFAULT NULL,
  `surveyor` varchar(100) DEFAULT NULL,
  `material_tech` varchar(100) DEFAULT NULL,
  `op_comp` varchar(100) DEFAULT NULL,
  `cp_perusahaan` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`idperusahaan`, `nama_perusahaan`, `nama_direktur`, `nama_pengawas`, `nomor_hp_pengawas`, `alamat`, `kota`, `kategori`, `site_manager`, `pelaksana`, `supervisi_engineer`, `quality_engineer`, `quantity_engineer`, `inspector`, `surveyor`, `material_tech`, `op_comp`, `cp_perusahaan`) VALUES
(10, 'PT. Alam Cendrawasih Jaya', 'Veronica Toeante', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'CV. Integral Papua Konsultan', 'Ronald P. Batti, ST', 'Sutarman, ST', '6281248821877', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'PT. Cempaniga Raya Konsultan', 'Irfanto', NULL, '6281248821877', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'CV. Exca Consultant', 'Daryanto, ST', 'Eduward', '6282197465961', '', 'Manokwari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'PT. Tunas Irja', 'Merry Gosal', 'Budi S', '6281248821877', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `progress_kontrak`
--

CREATE TABLE `progress_kontrak` (
  `idprogress_kontrak` int(11) NOT NULL,
  `nomor_kontrak_progress` varchar(55) DEFAULT NULL,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `no_item_div_pekerjaan` varchar(45) DEFAULT NULL,
  `nama_item_pekerjaan` text,
  `description` text,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ruas`
--

CREATE TABLE `ruas` (
  `nomor` int(11) NOT NULL,
  `nomor_ruas` varchar(10) DEFAULT NULL,
  `nama_ruas` varchar(100) DEFAULT NULL,
  `kecamatanyanglalui` varchar(100) DEFAULT NULL,
  `panjang` varchar(9) NOT NULL,
  `gambarpeta` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ruas`
--

INSERT INTO `ruas` (`nomor`, `nomor_ruas`, `nama_ruas`, `kecamatanyanglalui`, `panjang`, `gambarpeta`) VALUES
(1, '1', 'Arfai - Pami', 'Manokwari Barat', '32.77', 'peta_1.jpg'),
(2, '2', 'Bts Kota Manokwari  - Sibuni', 'Masni', '42.36 ', 'peta_2.jpg'),
(3, '002-11-K', 'Jln. Poros Susweni (Manokwari)', 'Manokwari Timur', '9.14 ', 'peta_002-11-K.jpg'),
(4, '002-12-K', 'Jln. Amban Pantai', 'Manokwari Timur', '9.87 ', 'peta_002-12-K.jpg'),
(5, '002-13-K', 'Jln.  Pasir Putih (Manokwari)', 'Manokwari Timur', '8.01 ', 'peta_002-13-K.jpg'),
(6, '002-14-K', 'Jln. Brawijaya', 'Manokwari Barat', '2.79 ', 'peta_002-14-K.jpg'),
(7, '002-15-K', 'Jln. Gunung Salju (Manokwari)', 'Manokwari Barat', '3.57 ', 'peta_002-15-K.jpg'),
(8, '002-16-K', 'Jln. Reremi Puncak', 'Manokwari Barat', '4.44 ', 'peta_002-16-K.jpg'),
(9, '002-17-K', 'Jln. Lingkar RS Provinsi Papua Barat', 'Manokwari Barat', '2.50 ', 'peta_002-17-K.jpg'),
(10, '002-18-K', 'Jln. Reremi Permai', 'Manokwari Barat', '2.18 ', 'peta_002-18-K.jpg'),
(11, '002-19-K', 'Jln. Sujarwo Condronegoro', 'Manokwari Barat', '1.15 ', 'peta_002-19-K.jpg'),
(12, '002-20-K', 'Jln. Pahlawan', 'Manokwari Barat', '1.49 ', 'peta_002-20-K.jpg'),
(13, '002-1A-K', 'Jln. Lingkar Teluk Sawaibu', 'Manokwari Barat', '2.50 ', 'peta_002-1A-K.jpg'),
(14, '002-1B-K', 'Jln. Pasir', 'Manokwari Barat', '1.05 ', 'peta_002-1B-K.jpg'),
(15, '002-1C-K', 'Jln. Soribo', 'Manokwari Barat', '4.01 ', 'peta_002-1C-K.jpg'),
(16, '002-1D-K', 'Jln. Sowi Gunung', 'Manokwari Barat', '5.20 ', 'peta_002-1D-K.jpg'),
(17, '3', 'Jln. Lingkar Pulau Mansinam', 'Manokwari Timur', '9.00 ', 'peta_3.jpg'),
(18, '4', 'Sibuni - Masni', 'Masni', '20.43 ', 'peta_4.jpg'),
(19, '5', 'Masni - SP 5', 'Masni', '10.31 ', 'peta_5.jpg'),
(20, '6', 'SP 5 - Sibuni', 'Masni', '14.34 ', 'peta_6.jpg'),
(21, '7', 'Masni - Wariori', 'Sidey', '7.36 ', 'peta_7.jpg'),
(22, '8', 'Maripi - SP 1', 'Prafi', '19.13 ', 'peta_8.jpg'),
(23, '9', 'Prafi - Bts Kab Pegaf (Mokwam)', 'Prafi', '16.91 ', 'peta_9.jpg'),
(24, '10', 'Bts Kab Pegaf  - Menyambouw', 'Menyambouw', '9.09 ', 'peta_10.jpg'),
(25, '11', 'Minyambouw - Bts Kota Pegaf', 'Menyambouw', '21.13 ', 'peta_11.jpg'),
(26, '011-11-K', 'Jln. Drs Dominggus Mandacan (Pegaf)', 'Hink', '14.39 ', 'peta_011-11-K.jpg'),
(27, '12', 'Jln. Lingkar Anggi Gigi', 'Sururey', '24.97 ', 'peta_12.jpg'),
(28, '13', 'Jln. Lingkar Anggi Gida', 'Sururey', '14.07 ', 'peta_13.jpg'),
(29, '14', 'Bts Kota Pegaf - Bts Kab Mansel (Sakumi)', 'Neney', '47.34 ', 'peta_14.jpg'),
(30, '15', 'Sururey - Bts Kab Manokwari Selatan', 'Neney', '26.21 ', 'peta_15.jpg'),
(31, '16', 'Bts Kab Manokwari Selatan - Umousi', 'Ransiki', '11.20 ', 'peta_16.jpg'),
(32, '17', 'Ransiki - Bts. Kab. Pegaf (Sakumi)', 'Ransiki', '11.88 ', 'peta_17.jpg'),
(33, '18', 'Jln. Pelabuhan Oransbari (Mansel)', 'Oransbari', '6.35 ', 'peta_18.jpg'),
(34, '19', 'Isim - Umousi', 'Ransiki', '28.32 ', 'peta_19.jpg'),
(35, '20', 'Umousi - Bts Kab Teluk Bintuni', 'Ransiki', '21.61 ', 'peta_20.jpg'),
(36, '21', 'Bts Kab. Teluk Bintuni - Merdey', 'Merdey', '35.97 ', 'peta_21.jpg'),
(37, '22', 'Merdey - Mogoi', 'Merdey', '22.47 ', 'peta_22.jpg'),
(38, '23', 'Bintuni - Tuhiba', 'Tuhiba', '25.19 ', 'peta_23.jpg'),
(39, '24', 'Tuhiba - Meyerga', 'Tuhiba', '108.85 ', 'peta_24.jpg'),
(40, '25', 'Meyerga - Susumuk', 'Moskona Barat', '101.71 ', 'peta_25.jpg'),
(41, '26', 'Tandia - Batas Kota Rasiei', 'Wasior Selatan', '8.60 ', 'peta_26.jpg'),
(42, '026-11-K', 'Jln Poros Rasiei', 'Wasior Selatan', '20.40 ', 'peta_026-11-K.jpg'),
(43, '27', 'Batas Kota Rasiei - Yopenggar', 'Wasior Utara', '42.21 ', 'peta_27.jpg'),
(44, '28', 'Windesi - Werianggi - Idor', 'Windesi', '23.61 ', 'peta_28.jpg'),
(45, '29', 'Kaimana - Kiruru', 'Kaimana', '127.93 ', 'peta_29.jpg'),
(46, '30', 'Wermura - Sisir', 'Kaimana', '18.48 ', 'peta_30.jpg'),
(47, '31', 'Bts Kota Fak fak - Sangram', 'Fakfak Timur', '54.61 ', 'peta_31.jpg'),
(48, '32', 'Sangram - Weri', 'Fakfak Timur', '16.10 ', 'peta_32.jpg'),
(49, '33', 'Weri - Nusalasi', 'Fakfak Timur', '29.58 ', 'peta_33.jpg'),
(50, '34', 'Nusalasi - Bomberay', 'Bomberay', '47.71 ', 'peta_34.jpg'),
(51, '35', 'SP 2 - SP 1 - Tomage', 'Bomberay', '37.47 ', 'peta_35.jpg'),
(52, '36', 'Bts Kota Fak Fak - Siboru', 'Fakfak Barat', '34.92 ', 'peta_36.jpg'),
(53, '37', 'Siboru - Sipatnanam', 'Fakfak Barat', '10.81 ', 'peta_37.jpg'),
(54, '38', 'Sipatnanam - Teluk Patipi', 'Teluk Patipi', '65.81 ', 'peta_38.jpg'),
(55, '39', 'Teluk Patipi - Kayuni', 'Teluk Patipi', '27.75 ', 'peta_39.jpg'),
(56, '040-11-K', 'Jln. Jenderal Sudirman (Kota Sorong)', 'Kota Sorong', '5.00 ', 'peta_040-11-K.jpg'),
(57, '040-12-K', 'Jln Danau Tempe', 'Kota Sorong', '6.50 ', 'peta_040-12-K.jpg'),
(58, '040-13-K', 'Jln. Arteri Kota Sorong', 'Kota Sorong', '4.26 ', 'peta_040-13-K.jpg'),
(59, '41', 'Aimas - Klamalu', 'Aimas', '3.43 ', 'peta_41.jpg'),
(60, '42', 'Klamalu - Majener', 'Aimas', '20.75 ', 'peta_42.jpg'),
(61, '43', 'Jln.Yefelio', 'Mayamuk', '3.63 ', 'peta_43.jpg'),
(62, '44', 'Majener - Klasari', 'Salawati', '19.77 ', 'peta_44.jpg'),
(63, '45', 'Klasari - Seget', 'Salawati', '41.07 ', 'peta_45.jpg'),
(64, '46', 'Klamalu - Bandara Segun', 'Aimas', '29.54 ', 'peta_46.jpg'),
(65, '47', 'Jln. Dermaga Klalin (Kab. Sorong)', 'Aimas', '2.33 ', 'peta_47.jpg'),
(66, '48', 'Batu Payung - Hobart - Bts. Sorsel', 'Sayosa', '32.87 ', 'peta_48.jpg'),
(67, '49', 'Bts. Sorsel - Sbir', 'Sayosa', '16.81 ', 'peta_49.jpg'),
(68, '50', 'Tarsa - Wanurian - Klarion', 'Beraur', '38.95 ', 'peta_50.jpg'),
(69, '51', 'Sayosa - Sailala - Klaili', 'Sayosa', '32.52 ', 'peta_51.jpg'),
(70, '52', 'Aimas - Klaili', 'Aimas', '28.94 ', 'peta_52.jpg'),
(71, '53', 'Klaili - Dela', 'Sayosa', '44.93 ', 'peta_53.jpg'),
(72, '54', 'Klamit - Bts Kota Teminabuan', 'Sawiat', '39.64 ', 'peta_54.jpg'),
(73, '054-11-K', 'Jln Poros Teminabuan', 'Teminabuan', '6.13 ', 'peta_054-11-K.jpg'),
(74, '55', 'Bts Kota Teminabuan - Bts Kab Maybrat', 'Wayer,Moswaren', '31.41 ', 'peta_55.jpg'),
(75, '56', 'Bts Kab Maybrat - Kambuaya', 'Ayamaru Timur', '12.72 ', 'peta_56.jpg'),
(76, '57', 'Fategomi - Athabu', 'Aitinyo Utara', '15.20 ', 'peta_57.jpg'),
(77, '58', 'Fiatsiur - Isas Jitmau', 'Aitinyo Raya', '5.00 ', NULL),
(78, '59', 'Ayamaru - Sauf - Wehali - Bts. Kab. Sorsel', 'Ayamaru Selatan', '20.33 ', 'peta_59.jpg'),
(79, '60', 'Bts Kab. Sorsel - Sesor - Boldon - Keyen', 'Ayamaru Selatan', '23.39 ', 'peta_60.jpg'),
(80, '61', 'Kambuaya - Yukase - Mapura', 'Ayamaru Utara', '16.00 ', 'peta_61.jpg'),
(81, '62', 'Mapura - Kumurkek', 'Ayamaru Utara', '31.03 ', 'peta_62.jpg'),
(82, '63', 'Yukase - Kfa', 'Ayamaru Utara', '3.34 ', 'peta_63.jpg'),
(83, '64', 'Susumuk - Fuog - Womba', 'Aifat Selatan', '43.23 ', 'peta_64.jpg'),
(84, '65', 'Mega - Fef', 'Moraid', '67.16 ', 'peta_65.jpg'),
(85, '66', 'Fef - Siakwa', 'Fef', '46.24 ', 'peta_66.jpg'),
(86, '67', 'Mega - Sausafor -Warmadi', 'Sausapor', '102.22 ', 'peta_67.jpg'),
(87, '68', 'Warmadi - Saukorem - Arfu', 'Amberbaken', '101.89 ', 'peta_68.jpg'),
(88, '069-11-K', 'Jln Ahmad Yani (Waisai)', 'Waigeo Selatan', '1.90 ', 'peta_069-11-K.jpg'),
(89, '069-12-K', 'Jln. Basuki Rahmat (Waisai)', 'Waigeo Selatan', '5.00 ', 'peta_069-12-K.jpg'),
(90, '70', 'Kalobo - Samate - Solol - Kaliyam', 'Salawati Utara', '79.28 ', 'peta_70.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_log`
--

CREATE TABLE `tabel_log` (
  `log_id` int(11) NOT NULL,
  `log_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `log_user` varchar(15) DEFAULT NULL,
  `log_tipe` int(11) DEFAULT NULL,
  `log_desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabel_log`
--

INSERT INTO `tabel_log` (`log_id`, `log_time`, `log_user`, `log_tipe`, `log_desc`) VALUES
(3, '2020-11-13 00:46:46', '1', 0, 'Login Aplikasi'),
(4, '2020-11-13 00:49:05', '1', 1, 'Logout Aplikasi'),
(5, '2020-11-13 00:49:10', '1', 0, 'Login Aplikasi'),
(6, '2020-11-13 00:49:18', '1', 1, 'Logout Aplikasi'),
(7, '2020-11-13 00:49:35', '1', 0, 'Login Aplikasi'),
(8, '2020-11-13 00:50:02', '1', 1, 'Logout Aplikasi'),
(9, '2020-11-13 00:50:07', '3', 0, 'Login Aplikasi'),
(10, '2020-11-13 00:51:33', '3', 1, 'Logout Aplikasi'),
(11, '2020-11-13 00:51:37', '3', 0, 'Login Aplikasi'),
(12, '2020-11-13 04:46:48', '1', 0, 'Login Aplikasi'),
(13, '2020-11-13 08:07:16', '1', 0, 'Login Aplikasi'),
(14, '2020-11-13 12:51:46', '1', 0, 'Login Aplikasi'),
(15, '2020-11-13 15:12:05', '1', 1, 'Logout Aplikasi'),
(16, '2020-11-13 22:39:25', '1', 0, 'Login Aplikasi'),
(17, '2020-11-13 23:54:19', '1', 1, 'Logout Aplikasi'),
(18, '2020-11-14 04:58:01', '1', 0, 'Login Aplikasi'),
(19, '2020-11-14 09:40:24', '1', 0, 'Login Aplikasi'),
(20, '2020-11-14 21:23:29', '1', 0, 'Login Aplikasi'),
(21, '2020-11-15 02:33:57', '1', 0, 'Login Aplikasi'),
(22, '2020-11-15 07:20:15', '1', 0, 'Login Aplikasi'),
(23, '2020-11-15 23:39:59', '1', 0, 'Login Aplikasi'),
(24, '2020-11-16 08:22:22', '1', 0, 'Login Aplikasi'),
(25, '2020-11-16 11:30:13', '1', 0, 'Login Aplikasi'),
(26, '2020-11-17 00:00:51', '1', 0, 'Login Aplikasi'),
(27, '2020-11-17 05:06:41', '5', 0, 'Login Aplikasi'),
(28, '2020-11-17 05:06:49', '5', 1, 'Logout Aplikasi'),
(29, '2020-11-17 08:24:54', '1', 0, 'Login Aplikasi'),
(30, '2020-11-17 08:34:18', '1', 1, 'Logout Aplikasi'),
(31, '2020-11-17 08:34:23', '5', 0, 'Login Aplikasi'),
(32, '2020-11-17 08:35:04', '5', 1, 'Logout Aplikasi'),
(33, '2020-11-18 08:11:39', '5', 1, 'Logout Aplikasi'),
(34, '2020-11-23 00:08:20', '5', 0, 'Login Aplikasi'),
(35, '2020-11-23 03:42:03', '5', 0, 'Login Aplikasi'),
(36, '2020-11-23 03:42:07', '5', 1, 'Logout Aplikasi'),
(37, '2020-11-23 03:42:51', '2', 0, 'Login Aplikasi'),
(38, '2020-11-23 03:42:58', '2', 1, 'Logout Aplikasi'),
(39, '2020-11-23 03:43:11', '2', 0, 'Login Aplikasi'),
(40, '2020-11-23 14:07:09', '5', 0, 'Login Aplikasi'),
(41, '2020-11-26 07:34:59', '5', 0, 'Login Aplikasi'),
(42, '2020-11-26 13:37:04', NULL, 1, 'Logout Aplikasi'),
(43, '2020-11-26 13:37:10', '7', 0, 'Login Aplikasi'),
(44, '2020-11-28 12:34:11', '5', 0, 'Login Aplikasi'),
(45, '2020-11-28 12:39:27', '5', 1, 'Logout Aplikasi'),
(46, '2020-11-28 12:39:33', '2', 0, 'Login Aplikasi'),
(47, '2020-11-29 00:54:24', '2', 0, 'Login Aplikasi'),
(48, '2020-11-29 02:13:14', '7', 0, 'Login Aplikasi'),
(49, '2020-11-29 02:17:31', '7', 1, 'Logout Aplikasi'),
(50, '2020-11-29 02:17:35', '7', 0, 'Login Aplikasi'),
(51, '2020-11-29 02:33:06', '7', 1, 'Logout Aplikasi'),
(52, '2020-11-29 02:33:12', '7', 0, 'Login Aplikasi'),
(53, '2020-11-29 02:41:41', '7', 1, 'Logout Aplikasi'),
(54, '2020-12-01 03:01:27', '2', 0, 'Login Aplikasi'),
(55, '2020-12-01 12:06:51', '7', 0, 'Login Aplikasi'),
(56, '2020-12-01 12:07:13', '7', 1, 'Logout Aplikasi'),
(57, '2020-12-01 12:08:52', '7', 0, 'Login Aplikasi'),
(58, '2020-12-01 12:13:14', '7', 1, 'Logout Aplikasi'),
(59, '2020-12-01 12:13:21', '7', 0, 'Login Aplikasi'),
(60, '2020-12-01 12:43:53', '7', 0, 'Login Aplikasi'),
(61, '2020-12-01 14:34:17', '7', 1, 'Logout Aplikasi'),
(62, '2020-12-02 02:05:47', NULL, 1, 'Logout Aplikasi'),
(63, '2020-12-02 02:05:58', NULL, 1, 'Logout Aplikasi'),
(64, '2020-12-02 02:10:22', '7', 0, 'Login Aplikasi'),
(65, '2020-12-02 13:23:09', '2', 0, 'Login Aplikasi'),
(66, '2020-12-04 14:19:32', '2', 0, 'Login Aplikasi'),
(67, '2020-12-05 01:41:10', '1', 0, 'Login Aplikasi'),
(68, '2020-12-05 01:41:17', '1', 1, 'Logout Aplikasi'),
(69, '2020-12-05 01:41:39', '1', 0, 'Login Aplikasi'),
(70, '2020-12-05 08:52:06', '1', 0, 'Login Aplikasi'),
(71, '2020-12-05 12:37:51', '1', 0, 'Login Aplikasi'),
(72, '2020-12-06 01:20:11', '1', 0, 'Login Aplikasi'),
(73, '2020-12-06 05:55:24', '1', 0, 'Login Aplikasi'),
(74, '2020-12-06 11:08:14', '1', 0, 'Login Aplikasi'),
(75, '2020-12-06 15:03:02', NULL, 1, 'Logout Aplikasi'),
(76, '2020-12-06 15:03:06', '1', 0, 'Login Aplikasi'),
(77, '2020-12-07 02:12:17', '1', 0, 'Login Aplikasi'),
(78, '2020-12-07 07:40:18', '1', 0, 'Login Aplikasi'),
(79, '2020-12-07 11:40:09', '1', 0, 'Login Aplikasi'),
(80, '2020-12-07 13:53:04', '1', 0, 'Login Aplikasi'),
(81, '2020-12-08 02:23:21', '1', 0, 'Login Aplikasi'),
(82, '2020-12-08 07:25:27', '1', 0, 'Login Aplikasi'),
(83, '2020-12-08 13:05:10', '1', 0, 'Login Aplikasi'),
(84, '2020-12-09 01:59:25', '1', 0, 'Login Aplikasi'),
(85, '2020-12-09 10:23:29', '1', 0, 'Login Aplikasi'),
(86, '2020-12-10 07:41:25', '1', 0, 'Login Aplikasi'),
(87, '2020-12-10 13:27:45', '7', 0, 'Login Aplikasi'),
(88, '2020-12-11 07:59:57', '1', 0, 'Login Aplikasi'),
(89, '2020-12-11 12:40:02', '1', 0, 'Login Aplikasi'),
(90, '2020-12-11 21:54:59', '1', 0, 'Login Aplikasi'),
(91, '2020-12-12 08:03:34', '7', 0, 'Login Aplikasi'),
(92, '2020-12-13 00:21:23', '7', 0, 'Login Aplikasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dasarprasaranajalan`
--
ALTER TABLE `dasarprasaranajalan`
  ADD PRIMARY KEY (`iddasarprasaranajalan`);

--
-- Indexes for table `detail_progress`
--
ALTER TABLE `detail_progress`
  ADD PRIMARY KEY (`iddetail_progress`);

--
-- Indexes for table `dokumentasi`
--
ALTER TABLE `dokumentasi`
  ADD PRIMARY KEY (`iddokumentasi`);

--
-- Indexes for table `kab_kota`
--
ALTER TABLE `kab_kota`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`idkecamatan`);

--
-- Indexes for table `kodeotp`
--
ALTER TABLE `kodeotp`
  ADD PRIMARY KEY (`id_kodeotp`);

--
-- Indexes for table `kontrak`
--
ALTER TABLE `kontrak`
  ADD PRIMARY KEY (`idkontrak`),
  ADD UNIQUE KEY `nomor_kontrak_UNIQUE` (`nomor_kontrak`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`idpaket`);

--
-- Indexes for table `pemilik_kerjaan`
--
ALTER TABLE `pemilik_kerjaan`
  ADD PRIMARY KEY (`idpemilik_kerjaan`);

--
-- Indexes for table `penanggung_jawab`
--
ALTER TABLE `penanggung_jawab`
  ADD PRIMARY KEY (`idpenanggung_jawab`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`idpengguna`),
  ADD KEY `index` (`namapengguna`);

--
-- Indexes for table `perpanjangan_kontrak`
--
ALTER TABLE `perpanjangan_kontrak`
  ADD PRIMARY KEY (`idperpanjangan_kontrak`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`idperusahaan`);

--
-- Indexes for table `progress_kontrak`
--
ALTER TABLE `progress_kontrak`
  ADD PRIMARY KEY (`idprogress_kontrak`);

--
-- Indexes for table `ruas`
--
ALTER TABLE `ruas`
  ADD PRIMARY KEY (`nomor`);

--
-- Indexes for table `tabel_log`
--
ALTER TABLE `tabel_log`
  ADD PRIMARY KEY (`log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dasarprasaranajalan`
--
ALTER TABLE `dasarprasaranajalan`
  MODIFY `iddasarprasaranajalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `detail_progress`
--
ALTER TABLE `detail_progress`
  MODIFY `iddetail_progress` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dokumentasi`
--
ALTER TABLE `dokumentasi`
  MODIFY `iddokumentasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kab_kota`
--
ALTER TABLE `kab_kota`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `idkecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `kodeotp`
--
ALTER TABLE `kodeotp`
  MODIFY `id_kodeotp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kontrak`
--
ALTER TABLE `kontrak`
  MODIFY `idkontrak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pemilik_kerjaan`
--
ALTER TABLE `pemilik_kerjaan`
  MODIFY `idpemilik_kerjaan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penanggung_jawab`
--
ALTER TABLE `penanggung_jawab`
  MODIFY `idpenanggung_jawab` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `idpengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `perpanjangan_kontrak`
--
ALTER TABLE `perpanjangan_kontrak`
  MODIFY `idperpanjangan_kontrak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `idperusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `progress_kontrak`
--
ALTER TABLE `progress_kontrak`
  MODIFY `idprogress_kontrak` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ruas`
--
ALTER TABLE `ruas`
  MODIFY `nomor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `tabel_log`
--
ALTER TABLE `tabel_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
