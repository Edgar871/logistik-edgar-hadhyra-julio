-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2024 at 05:59 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ami`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_mutu_internals`
--

CREATE TABLE `audit_mutu_internals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_indikator` bigint(20) UNSIGNED DEFAULT NULL,
  `id_user_auditee` bigint(20) UNSIGNED DEFAULT NULL,
  `id_user_auditor_ketua` bigint(20) UNSIGNED DEFAULT NULL,
  `id_user_auditor_anggota_1` bigint(20) UNSIGNED DEFAULT NULL,
  `id_user_auditor_anggota_2` bigint(20) UNSIGNED DEFAULT NULL,
  `tanggal_audit` date NOT NULL,
  `id_status_audit` bigint(20) UNSIGNED DEFAULT NULL,
  `id_user_manajemen` bigint(20) UNSIGNED DEFAULT NULL,
  `id_user_administrator` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_mutu_internals`
--

INSERT INTO `audit_mutu_internals` (`id`, `id_indikator`, `id_user_auditee`, `id_user_auditor_ketua`, `id_user_auditor_anggota_1`, `id_user_auditor_anggota_2`, `tanggal_audit`, `id_status_audit`, `id_user_manajemen`, `id_user_administrator`, `created_at`, `updated_at`) VALUES
(23, 33, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-23 23:30:12', '2024-06-23 23:30:12'),
(24, 35, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-23 23:31:13', '2024-06-23 23:31:13'),
(25, 37, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-23 23:32:21', '2024-06-23 23:32:21'),
(26, 38, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-23 23:32:56', '2024-06-23 23:32:56'),
(27, 39, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-23 23:33:44', '2024-06-23 23:33:44'),
(28, 40, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-23 23:34:23', '2024-06-23 23:34:23'),
(29, 41, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 17:39:45', '2024-06-24 17:39:45'),
(30, 42, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 17:45:42', '2024-06-24 17:45:42'),
(31, 43, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 17:47:54', '2024-06-24 17:47:54'),
(32, 44, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 17:48:32', '2024-06-24 17:48:32'),
(33, 45, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 17:49:20', '2024-06-24 17:49:20'),
(34, 46, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 17:50:08', '2024-06-24 17:50:08'),
(35, 47, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 17:51:06', '2024-06-24 17:51:06'),
(36, 48, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 17:52:25', '2024-06-24 17:52:25'),
(37, 49, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 17:53:39', '2024-06-24 17:53:39'),
(38, 50, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 17:54:53', '2024-06-24 17:54:53'),
(39, 51, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 17:55:35', '2024-06-24 17:55:35'),
(40, 52, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 17:56:33', '2024-06-24 17:56:33'),
(41, 53, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 17:58:19', '2024-06-24 17:58:19'),
(42, 54, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 17:58:46', '2024-06-24 17:58:46'),
(43, 55, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 17:59:31', '2024-06-24 17:59:31'),
(44, 56, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 18:00:12', '2024-06-24 18:00:12'),
(45, 57, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 18:00:52', '2024-06-24 18:00:52'),
(46, 58, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 18:01:58', '2024-06-24 18:01:58'),
(47, 59, 8, 9, 10, 11, '2022-12-07', NULL, 7, 1, '2024-06-24 18:02:35', '2024-06-24 18:02:35');

-- --------------------------------------------------------

--
-- Table structure for table `bagians`
--

CREATE TABLE `bagians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bagian` varchar(255) NOT NULL,
  `nama_bagian` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bagians`
--

INSERT INTO `bagians` (`id`, `bagian`, `nama_bagian`, `created_at`, `updated_at`) VALUES
(4, 'Pusat', 'Akademik dan Kemahasiswaan', '2024-06-05 18:51:18', '2024-06-05 18:51:18'),
(5, 'Pusat', 'TU, Keuangan dan Anggaran', '2024-06-12 00:19:01', '2024-06-12 00:19:01'),
(6, 'Pusat', 'Penelitian dan Pengabdian Kepada Masyarakat', '2024-06-12 04:14:23', '2024-06-12 04:14:23'),
(7, 'Pusat', 'Peningkatan Mutu Pembelajaran', '2024-06-12 04:15:31', '2024-06-12 04:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indikators`
--

CREATE TABLE `indikators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pernyataan_standar` bigint(20) UNSIGNED NOT NULL,
  `no_butir_standar` varchar(255) DEFAULT NULL,
  `indikator` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `indikators`
--

INSERT INTO `indikators` (`id`, `id_pernyataan_standar`, `no_butir_standar`, `indikator`, `created_at`, `updated_at`) VALUES
(33, 1, '1.1', '<div><strong>Tersedia</strong> dokumen berisi:&nbsp;</div><ol><li>rumusan program/kegiatan berkelanjutan secara bertahap akan dicapai pada kurun waktu tertentu;&nbsp;</li><li>indikator capaian yang ditargetkan per tahunnya;</li><li>mekanisme kontrol ketercapaian/realisasi dan tindakan perbaikan untuk menjamin tahap-tahap pelaksanaan untuk merealisasikan program/kegiatan</li></ol>', '2022-06-16 10:11:56', '2022-06-16 10:11:56'),
(35, 1, '1.2', '<div>Ada bukti yang handal sebesar &gt;80% dari program/kegiatan yang direncanakan terealisasi pada tahun yang sama.</div>', '2022-06-19 06:59:33', '2022-06-19 06:59:33'),
(37, 23, '2.1', '<div>Struktur organisasi unit kerja dilengkapi dengan deskripsi tertulis yang jelas tentang tugas, fungsi, wewenang, dan tanggung jawab, serta ada bukti dilaksanankan dengan konsisten.</div>', '2022-06-23 22:55:15', '2022-06-23 22:55:15'),
(38, 23, '2.2', '<div>Ada bukti&nbsp; unit kerja memiliki karakteristik kepemimpinan yang kuat di kepemimpinan operasional dan kepemimpinan organisasi.<br>&nbsp;<br>&nbsp;Catatan:</div><ul><li>&nbsp;Kepemimpinan operasional : kemampuan menjabarkan visi, misi dan tujuan strategis dalam renstra dan RKAT</li><li>&nbsp;Kepemimpinan&nbsp; organisasional : pemahaman tata kerja unit dalam organisasi dan mengimplementasikannya (WT, tata kerja organisasi, mekanisme/prosedur kerja)</li></ul>', '2022-06-23 22:56:00', '2022-06-23 22:56:00'),
(39, 23, '2.3', '<div>Ada bukti yang handal sistem pengelolaan fungsional dan operasional unit kerja mencakup fungsi pengelolaan (planning, organizing, actuating, dan controlling) yang dilaksanakan secara efektif untuk mewujudkan visi dan melaksanakan misi serta pencapaian tujuan institusi.</div>', '2022-06-23 22:56:32', '2022-06-23 22:56:32'),
(40, 23, '2.4', '<div>Ada bukti yang handal sistem pengelolaan fungsional dan operasional unit kerja mencakup fungsi pengelolaan (planning, organizing, actuating, dan controlling) yang dilaksanakan secara efektif untuk mewujudkan visi dan melaksanakan misi serta pencapaian tujuan institusi.</div>', '2022-06-23 22:56:59', '2022-06-23 22:56:59'),
(41, 24, '3.1', '<div>Tersedia dokumen prosedur yang lengkap terkait pelayanan terhadap civitas akademika.</div>', '2022-06-24 07:01:02', '2022-06-24 07:01:02'),
(42, 24, '3.2', '<div>Tersedia bukti sosialisasi prosedur layanan terhadap civitas akademika.</div>', '2022-06-24 07:01:21', '2022-06-24 07:01:21'),
(43, 24, '3.3', '<div>Tersedia bukti pelaksanaan layanan sesuai dengan prosedur.</div>', '2022-06-24 07:01:51', '2022-06-24 07:01:51'),
(44, 24, '3.4', '<div>Tersedia bukti evaluasi layanan secara berkala.</div>', '2022-06-24 07:02:26', '2022-06-24 07:02:26'),
(45, 25, '4.1', '<div>Tersedia dokumen peraturan dan pedoman pendidikan untuk semua jenjang yang sahih;</div>', '2022-06-24 07:03:03', '2022-06-24 07:03:03'),
(46, 25, '4.2', '<div>Tersedia dokumen formal dan pedoman pengelolaan pengembangan suasana akademik dan otonomi keilmuan;</div>', '2022-06-24 07:03:44', '2022-06-24 07:03:44'),
(47, 25, '4.3', '<div>Tersedia bukti sahih tentang implementasi kebijakan dan pedoman pengelolaan pengambangan suasana akademik dan otonomi keilmuan;</div>', '2022-06-24 07:04:08', '2022-06-24 07:04:08'),
(48, 26, '5.1', '<div>Tersedia dokumen mutu pedoman penerimaan mahasiswa baru (untuk semua jalur) yang memuat unsur-unsur berikut:<br>(1) Kebijakan/pendekatan penerimaan mahasiswa baru<br>(2) Kriteria/syarat penerimaan mahasiswa baru&nbsp;<br>(3) Prosedur penerimaan mahasiswa baru<br>(4) Instrumen; penerimaan mahasiswa baru&nbsp;<br>(5) Sistem pengambilan keputusan</div>', '2022-06-24 07:05:36', '2022-06-24 07:05:36'),
(49, 26, '5.2', '<div>Tersedia bukti pelaksanaan penerimaan mahasiswa baru yang sesuai dengan prosedur</div>', '2022-06-24 07:06:00', '2022-06-24 07:06:00'),
(50, 26, '5.3', '<div>Tersedia bukti sahih penetapan penerimaan mahasiswa baru yang disosialisasikan kepada pihak terkait (misalnya Jurusan, Program Studi)</div>', '2022-06-24 07:06:24', '2022-06-24 07:06:24'),
(51, 26, '5.4', '<div>Rasio jumlah calon mahasiswa yang ikut seleksi (Na) terhadap jumlah calon mahasiswa yang lulus seleksi (Nb).<br>&nbsp;<br>Rasio = (Na / Nb) ≥ 5</div>', '2022-06-24 07:06:59', '2022-06-24 07:06:59'),
(52, 26, '5.5', '<div>Persentase mahasiswa yang mendaftar ulang (Nc) terhadap jumlah mahasiswa yang lulus seleksi (Nb).<br>&nbsp;<br>Rasio = (NC/Nb) x 100% ≥ 95%</div>', '2022-06-24 07:07:32', '2022-06-24 07:07:32'),
(53, 27, '6.1', '<div>Terdapat sistem informasi untuk layanan akademik yang terintegrasi, terbukti efektif, mudah diakses, dan lengkap.</div>', '2022-06-24 07:07:52', '2022-06-24 07:07:52'),
(54, 27, '6.2', '<div>Tersedia bukti evaluasi sistem informasi layanan akademik yang dilakukan secara berkala dan hasilnya ditindak lanjuti untuk pengambilan keputusan serta penyempurnaan sistem informasi.</div>', '2022-06-24 07:08:15', '2022-06-24 07:08:15'),
(55, 28, '7.1', '<div>&nbsp;Rata-rata lama studi lulusan (LSL) dalam tiga tahun terakhir.<br>&nbsp;1) LSL D-I ≤ 1 tahun;<br>&nbsp;2) LSL D-II ≤ 2 tahun;<br>&nbsp;3) LSL DIII ≤ 3 tahun;&nbsp;<br>&nbsp;4) LSL DIV ≤ 4 tahun</div>', '2022-06-24 07:08:38', '2022-06-24 07:08:38'),
(56, 28, '7.2', '<div>&nbsp;Persentase kelulusan tepat waktu (KTW) untuk semua program studi.<br>&nbsp;<br>&nbsp;KTW ≥ 90%</div>', '2022-06-24 07:09:06', '2022-06-24 07:09:06'),
(57, 28, '7.3', '<div>Rata-rata IPK (RIPK) lulusan dalam tiga tahun terakhir.<br>&nbsp;<br>RIPK ≥ 3.3</div>', '2022-06-24 07:09:28', '2022-06-24 07:09:28'),
(58, 29, '8.1', '<div>&nbsp;Tersedia dokumen terkait penyelenggaraan wisuda yang memuat unsur-unsur berikut:<br>&nbsp;(1) Dasar hukum penyelenggaraan wisuda<br>&nbsp;(2) Prosedur pelaksanaan wisuda</div>', '2022-06-24 07:09:46', '2022-06-24 07:09:46'),
(59, 29, '8.2', '<div>Tersedia bukti pelaksanaan wisuda yang sesuai dengan prosedur</div>', '2022-06-24 07:10:04', '2022-06-24 07:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `instrumen_audits`
--

CREATE TABLE `instrumen_audits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_audit_mutu_internal` bigint(20) UNSIGNED DEFAULT NULL,
  `deskripsi_temuan` text DEFAULT NULL,
  `link_dokumen_bukti` varchar(255) DEFAULT NULL,
  `ketercapaian_auditee` varchar(255) DEFAULT NULL,
  `akar_penyebab_masalah` varchar(255) DEFAULT NULL,
  `akibat` varchar(255) DEFAULT NULL,
  `hasil_audit_dokumen` varchar(255) DEFAULT NULL,
  `hasil_temuan_audit` varchar(255) DEFAULT NULL,
  `ketercapaian_auditor` varchar(255) DEFAULT NULL,
  `rekomendasi_auditor` varchar(255) DEFAULT NULL,
  `tanggapan_auditee` varchar(255) DEFAULT NULL,
  `rencana_perbaikan` varchar(255) DEFAULT NULL,
  `jadwal_penyelesaian` date DEFAULT NULL,
  `penanggung_jawab` varchar(255) DEFAULT NULL,
  `link_bukti_tindak_lanjut` varchar(255) DEFAULT NULL,
  `id_status_audit` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instrumen_audits`
--

INSERT INTO `instrumen_audits` (`id`, `id_audit_mutu_internal`, `deskripsi_temuan`, `link_dokumen_bukti`, `ketercapaian_auditee`, `akar_penyebab_masalah`, `akibat`, `hasil_audit_dokumen`, `hasil_temuan_audit`, `ketercapaian_auditor`, `rekomendasi_auditor`, `tanggapan_auditee`, `rencana_perbaikan`, `jadwal_penyelesaian`, `penanggung_jawab`, `link_bukti_tindak_lanjut`, `id_status_audit`, `created_at`, `updated_at`) VALUES
(21, 23, 'Sudah tersedia matrik monitoring kegiatan akademik dan bukti dokumen matrik dan sudah dilaksanakan per tahun 2022', NULL, 'Mencapai', NULL, NULL, NULL, NULL, 'Mencapai', NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-23 23:30:12', '2024-06-26 00:48:43'),
(22, 24, 'Hanya ada 1 kegiatan dari 9 kegiatan yang belum tercapai sehingga sudah >80%. Pembuatan kartu mahasiswa belum mencapai karena menggunakan pihak ketiga (bank) dalam pengadaannya dengan beberapa kendala: bank perlu membuat no rekening mahasiswa', NULL, 'Mencapai', 'Pergantian kepala cabang yang memicu lamanya pembukaan rekening mahasiswa;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-23 23:31:13', '2024-06-26 00:54:21'),
(23, 25, 'Sudah tersedia struktur organisasi unit kerja dilengkapi dengan deskripsi tertulis yang jelas tentang tugas, fungsi, wewenang, dan tanggung jawab, serta ada bukti dilaksanankan dengan konsisten.', NULL, 'Mencapai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-23 23:32:21', '2024-06-26 00:54:59'),
(24, 26, 'Sudah ada bukti unit kerja memiliki karakteristik kepemimpinan yang kuat di kepemimpinan operasional dan kepemimpinan organisasi (SKP)', NULL, 'Mencapai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-23 23:32:57', '2024-06-26 00:55:19'),
(25, 27, 'Sudah tersedia bukti yang handal sistem pengelolaan fungsional dan operasional unit kerja mencakup fungsi pengelolaan (planning, organizing, actuating, dan controlling) yang dilaksanakan secara efektif untuk mewujudkan visi dan melaksanakan misi serta pencapaian tujuan institusi.', NULL, 'Mencapai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-23 23:33:44', '2024-06-26 00:55:41'),
(26, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-23 23:34:23', '2024-06-23 23:34:23'),
(27, 29, 'Sudah tersedia dokumen prosedur yang lengkap terkait pelayanan terhadap civitas akademika', NULL, 'Mencapai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-24 17:39:45', '2024-06-26 00:56:17'),
(28, 30, 'Sudah ada bukti sosialisasi prosedur layanan terhadap civitas akademika yang dapat diakses di web surat.akademik.pnj.ac.id namun perlu diperbaiki terkait kemudahan akses di pnj.ac.id', NULL, 'Mencapai', NULL, NULL, NULL, NULL, NULL, 'meningkatkan kemudahan akses untuk layanan akademik oleh para mahasiswa melalui web pnj', NULL, 'penambahan fitur pada web pnj', NULL, '8', NULL, 2, '2024-06-24 17:45:42', '2024-06-26 00:56:46'),
(29, 31, 'Sudah Tersedia bukti pelaksanaan layanan sesuai dengan prosedur', NULL, 'Mencapai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-24 17:47:54', '2024-06-26 00:58:06'),
(30, 32, 'Belum adanya evalusi layanan secara berkala seperti kuisioner layanan', NULL, 'Belum Mencapai', 'belum adanya evaluasi layanan seperti kuisioner sehingga belum terukur secara kuantitatif', NULL, NULL, NULL, NULL, 'buatkan kuisioner layanan,', NULL, 'buatkan kuisioner layanan,', '2022-12-30', NULL, NULL, 3, '2024-06-24 17:48:33', '2024-06-26 00:58:29'),
(31, 33, 'Sudah Tersedia dokumen peraturan dan pedoman pendidikan untuk semua jenjang yang sahih;', NULL, 'Mencapai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-24 17:49:21', '2024-06-26 00:58:56'),
(32, 34, 'Bukan di bidang ini, konfirmasi ke UPMP/Bid 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-24 17:50:08', '2024-06-24 23:08:57'),
(33, 35, 'Bukan di bidang ini, konfirmasi ke UPMP/Bid 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-24 17:51:07', '2024-06-24 23:09:21'),
(34, 36, 'Sudah Tersedia dokumen mutu pedoman penerimaan mahasiswa baru (untuk semua jalur) yang memuat unsur-unsur berikut:  (1) Kebijakan/pendekatan penerimaan mahasiswa baru  (2) Kriteria/syarat penerimaan mahasiswa baru  (3) Prosedur penerimaan mahasiswa baru  (4) Instrumen; penerimaan mahasiswa baru  (5) Sistem pengambilan keputusan', NULL, 'Mencapai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-24 17:52:26', '2024-06-26 00:59:41'),
(35, 37, 'Sudah Tersedia bukti pelaksanaan penerimaan mahasiswa baru yang sesuai dengan prosedur', NULL, 'Mencapai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-24 17:53:39', '2024-06-26 01:00:23'),
(36, 38, 'Sudah Tersedia bukti sahih penetapan penerimaan mahasiswa baru yang disosialisasikan kepada pihak terkait (misalnya Jurusan, Program Studi)', NULL, 'Mencapai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-24 17:54:53', '2024-06-26 01:00:50'),
(37, 39, 'Rasio jumlah calon mahasiswa yang ikut seleksi (Na) terhadap jumlah calon mahasiswa yang lulus seleksi (Nb) adalah 6', NULL, 'Mencapai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-24 17:55:36', '2024-06-26 01:01:29'),
(38, 40, 'Persentase mahasiswa yang mendaftar ulang (Nc) terhadap jumlah mahasiswa yang lulus seleksi (Nb) 81%', NULL, 'Belum Mencapai', 'karena tidak memenuhi kuota program kerja sama RPL D1 pasca sarjana', NULL, NULL, NULL, NULL, 'disampaikan ke bidang 1 dan humas agar perlu adanya promosi untuk program kerjasama, RPL, D1 dan pasca sarjana', NULL, NULL, '2022-12-30', NULL, NULL, 3, '2024-06-24 17:56:33', '2024-06-26 01:02:04'),
(39, 41, 'sudah Terdapat sistem informasi untuk layanan akademik yang terintegrasi, terbukti efektif, mudah diakses, dan lengkap.', NULL, 'Mencapai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-24 17:58:19', '2024-06-26 01:02:30'),
(40, 42, 'Belum Tersedia bukti evaluasi sistem informasi layanan akademik yang dilakukan secara berkala dan hasilnya ditindak lanjuti untuk pengambilan keputusan serta penyempurnaan sistem informasi.', NULL, 'Belum Mencapai', NULL, NULL, NULL, NULL, NULL, 'perlu dibuat gfrom', NULL, NULL, '2022-12-30', NULL, NULL, 3, '2024-06-24 17:58:47', '2024-06-26 01:03:01'),
(41, 43, 'bid 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-24 17:59:31', '2024-06-24 23:13:54'),
(42, 44, 'bid 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-24 18:00:12', '2024-06-24 23:14:27'),
(43, 45, 'bid 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-24 18:00:52', '2024-06-24 23:14:09'),
(44, 46, 'Sudah Tersedia dokumen terkait penyelenggaraan wisuda yang memuat unsur-unsur berikut: (1)        Dasar hukum penyelenggaraan wisuda (2)        Prosedur pelaksanaan wisuda', NULL, 'Mencapai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-24 18:01:58', '2024-06-26 01:03:27'),
(45, 47, 'sudah Tersedia bukti pelaksanaan wisuda yang sesuai dengan prosedur', NULL, 'Mencapai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-24 18:02:35', '2024-06-26 01:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2024_05_16_020805_create_roles_table', 2),
(9, '2024_06_03_022757_create_bagians_table', 3),
(10, '2014_10_12_000000_create_users_table', 4),
(21, '2024_06_03_065825_create_pernyataan_standars_table', 5),
(22, '2024_06_03_070001_create_indikators_table', 5),
(23, '2024_06_03_074148_create_status_audits_table', 5),
(24, '2024_06_03_074312_create_audit_mutu_internals_table', 5),
(25, '2024_06_04_013020_create_instrumen_audits_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pernyataan_standars`
--

CREATE TABLE `pernyataan_standars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_bagian` bigint(20) UNSIGNED DEFAULT NULL,
  `no_pernyataan_standar` varchar(255) NOT NULL,
  `pernyataan_standar` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pernyataan_standars`
--

INSERT INTO `pernyataan_standars` (`id`, `id_bagian`, `no_pernyataan_standar`, `pernyataan_standar`, `created_at`, `updated_at`) VALUES
(1, 4, '1', 'Bagian/Unit kerja memiliki rencana operasional sebagai penjabaran atau pelaksanaan renstra institusi.', '2022-06-05 18:51:56', '2022-06-05 18:51:56'),
(23, 4, '2', '<div>Unit kerja memiliki dokumen struktur organisasi dan tata kerja (SOTK) yang memuat tugas, fungsi, dan wewenang yang telah ditetapkan.</div>', '2022-06-23 22:14:39', '2022-06-23 22:14:39'),
(24, 4, '3', '<div>Unit memiliki prosedur lengkap dalam memberikan layanan kepada civitas akademika yang disosialisasikan dan dievaluasi setiap tahun.</div>', '2022-06-24 06:55:16', '2022-06-24 06:55:16'),
(25, 4, '4', '<div>Unit memiliki memiliki bukti yang sahih (dokumen formal kebijakan dan peraturan) guna menjamin integritas dan kualitas institusi yang dilaksanakan secara konsisten, efektif dan efisien.</div>', '2022-06-24 06:55:39', '2022-06-24 06:55:39'),
(26, 4, '5', '<div>Sistem penerimaan&nbsp; mahasiswa baru disusun secara lengkap (kebijakan, kriteria, prosedur, instrumen, sistem pengambilan keputusan) dan konsistensi pelaksanaannya.</div>', '2022-06-24 06:55:59', '2022-06-24 06:55:59'),
(27, 4, '6', '<div>Ketersediaan Sistem Informasi untuk mengumpulkan data yang akuran, dapat dipertanggungjawabkan dan terjaga kerahasiaannya, serta dievaluasi secara berkala.</div>', '2022-06-24 06:56:19', '2022-06-24 06:56:19'),
(28, 4, '7', '<div>Prestasi mahasiswa bidang akademik dan non akademik.</div>', '2022-06-24 06:56:40', '2022-06-24 06:56:40'),
(29, 4, '8', '<div>PNJ memiliki sistem penyelenggaraan wisuda yang disusun secara lengkap.</div>', '2022-06-24 06:56:55', '2022-06-24 06:56:55'),
(30, 5, '1', '<div>Bagian/Unit kerja memiliki rencana operasional sebagai penjabaran atau pelaksanaan renstra institusi.</div>', '2022-06-24 20:28:17', '2022-06-24 20:28:17'),
(31, 5, '2', '<div>Pelaksanaan tata pamong unit kerja sesuai dengan dokumen struktur organisasi dan tata kerja (SOTK) yang telah ditetapkan.</div>', '2022-06-24 20:28:49', '2022-06-24 20:28:49'),
(32, 5, '3', '<div>Unit memiliki prosedur lengkap dalam memberikan layanan kepada civitas akademika yang disosialisasikan dan dievaluasi setiap tahun.</div>', '2022-06-24 20:29:07', '2022-06-24 20:29:07'),
(33, 5, '4', '<div>Unit mempersiapkan operasional penyelenggaraan tridarma secara memadai.</div>', '2022-06-24 20:29:28', '2022-06-24 20:29:28'),
(34, 5, '5', '<div>PNJ menyusun dan menetapkan Rencana Anggaran Pendapatan dan Belanja (RAPB) tahunan berdasarkan standar satuan biaya operasional pendidikan tinggi dan sumber biaya pendidikan lain.</div>', '2022-06-24 20:29:52', '2022-06-24 20:29:52'),
(35, 5, '6', '<div>PNJ/Unit menetapkan komponen dan besaran biaya investasi pendidikan tinggi yang merupakan bagian dari biaya pendidikan tinggi dalam rangka pemenuhan capaian pembelajaran.</div>', '2022-06-24 20:30:08', '2022-06-24 20:30:08'),
(36, 5, '7', '<div>PNJ /Unit menetapkan Komponen dan besaran biaya operasional pendidikan tinggi yang merupakan bagian dari biaya pendidikan tinggi dalam rangka pemenuhan capaian pembelajaran.</div>', '2022-06-24 20:30:24', '2022-06-24 20:30:24'),
(37, 5, '8', '<div>PNJ melaksanakan proses akuntansi/pembukuan untuk mencatat penerimaan dan biaya sesuai dengan ketentuan perundang-undangan yang berlaku, serta dilakukan monev atau audit oleh pihak internal dan eksternal.</div>', '2022-06-24 20:30:42', '2022-06-24 20:30:42'),
(38, 5, '9', '<div>PNJ memiliki sumber pendanaan dan pembiayaan PkM yang berasal dari internal maupun eksternal untuk pelaksanaan pengabdian sehingga diperoleh proses dan hasil PkM yang bermutu.</div>', '2022-06-24 20:30:56', '2022-06-24 20:30:56'),
(39, 5, '10', '<div>PNJ memiliki rancangan alokasi dana kegiatan dan pengelolaa PkM sehingga diperoleh proses dan hasil PkM yang bermutu.</div>', '2022-06-24 20:31:15', '2022-06-24 20:31:15'),
(40, 5, '11', '<div>PT memiliki sumber pendanaan&nbsp; dan pembiayaan penelitian yang berasal dari sumber internal maupun sumber eksternal untuk pelaksanaan penelitan sehingga diperoleh hasil penelitian yang bermutu.</div>', '2022-06-24 20:31:32', '2022-06-24 20:31:32'),
(41, 5, '12', '<div>Pimpinan wajib mengalokasikan anggaran pengembangan dan peningkatan layanan perpustakaan, peningkatan kualifikasi dan kompetensi sumber daya manusia di perpustakaan, koleksi perpustakaan, sarana prasarana dan reputasi perpustakaan yang dievaluasi secara berkala.</div>', '2022-06-24 20:32:23', '2022-06-24 20:32:23'),
(42, 5, '13', '<div>Pimpinan wajib memastikan ketersediaan Sistem TIK (Teknologi Informasi dan Komunikasi) untuk mengumpulkan data yang akurat, dapat dipertanggung jawabkan dan terjaga kerahasiaannya (misal: Sistem Informasi Manajemen Perguruan Tinggi/ SIMPT).</div>', '2022-06-24 20:32:41', '2022-06-24 20:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(5, 'Admin', '2024-06-06 01:55:15', '2024-06-06 01:55:15'),
(6, 'Auditee', '2024-06-06 01:55:20', '2024-06-06 01:55:20'),
(7, 'Auditor', '2024-06-06 01:55:25', '2024-06-06 01:55:25'),
(8, 'Manajemen', '2024-06-06 01:55:31', '2024-06-06 01:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `status_audits`
--

CREATE TABLE `status_audits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_status_audit` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_audits`
--

INSERT INTO `status_audits` (`id`, `nama_status_audit`, `created_at`, `updated_at`) VALUES
(1, 'Melampaui', '2024-06-16 17:33:17', '2024-06-16 17:33:17'),
(2, 'Mencapai', '2024-06-16 17:34:31', '2024-06-16 17:34:31'),
(3, 'Belum Mencapai', '2024-06-16 17:35:02', '2024-06-16 17:35:02'),
(4, 'Menyimpang', '2024-06-16 17:35:29', '2024-06-16 17:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'inactive',
  `signature` varchar(255) DEFAULT NULL,
  `id_bagian` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `nip`, `role`, `status`, `signature`, `id_bagian`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@pnj.ac.id', '$2y$10$.wGKo0NsYse1mYXVb4WTGOxVNe1xyjdQ3Mjs/jbvUbaR74tMd9haS', '1234567890', 'Admin', 'active', NULL, NULL, NULL, NULL, '2024-06-03 19:11:28', '2024-06-13 20:46:55'),
(2, 'Edgar Hadhyra Julio', 'edgar.hadhyrajulio.tik20@mhsw.pnj.ac.id', '$2y$10$Sbamdw7E6jxmZWGmxy0o1eKWaUvEr/OnIjCqbZDbE5J61CWshTPgG', '2007412008', 'Auditee', 'active', NULL, NULL, NULL, NULL, '2024-06-06 01:57:02', '2024-07-01 23:48:51'),
(4, 'Auditor', 'auditor@pnj.ac.id', '$2y$10$N9rCW.NRvtHLk/A89FYceeLtko4cdpOlphBayGpPK4LH5weesgbCu', '0987654321', 'Auditor', 'active', NULL, NULL, NULL, NULL, '2024-06-11 18:46:29', '2024-06-11 18:46:29'),
(6, 'Auditee', 'auditee@pnj.ac.id', '$2y$10$Ll7PAOgC6YHSyKYoBUvArOS1eXp3KgLQEqFwDCZCMPAg3188ff1Qu', '11333355555577777777', 'Auditee', 'active', NULL, NULL, NULL, NULL, '2024-06-12 19:56:25', '2024-06-12 19:56:25'),
(7, 'Manajemen', 'manajemen@pnj.ac.id', '$2y$10$hpLY26HWJ5Kd0q6jgcy/He3goQ1XgcFxGiEMmuksPU7uWJ8WpGOf2', '1234567891', 'Manajemen', 'active', NULL, NULL, NULL, NULL, '2024-06-13 18:06:57', '2024-06-13 18:06:57'),
(8, 'Lis Purnamawati, S.Sos.', 'lis.purnamawati@pnj.ac.id', '$2y$10$cii0yvDK1S24uY6qnJjE7.E8Nmgg6agJRU7LlqKEg.OvuZOTOMjIW', '1234567892', 'Auditee', 'active', NULL, NULL, NULL, NULL, '2024-06-23 22:07:40', '2024-06-23 22:07:40'),
(9, 'Vina Nanda Garjati, S.T., M.T.', 'vina.nandagarjati@pnj.ac.id', '$2y$10$zBvvRPmPhuZhUaUSaubDVeHXNf5ZG2OFnc75tfS82tkW6Q2srz7ES', '1234567893', 'Auditor', 'active', 'tFro278yyea7xTxdkYOkOGCr9YyOMt9VIzz4pSlj.jpg', NULL, NULL, NULL, '2024-06-23 22:10:29', '2024-07-02 18:27:12'),
(10, 'Maria Agustin, S.Kom., M.Kom.', 'maria.agustin@pnj.ac.id', '$2y$10$LmKWR8vWkqQP3PCoOfo2M.8VD8qvlaPA3z4mbEOqohHgk3m0GXEf2', '1234567894', 'Auditor', 'active', '79fxCUWuH3jXz3i11Sz0zNdEzy6V7z6vMV4Oow4Q.jpg', NULL, NULL, NULL, '2024-06-23 22:11:59', '2024-06-24 20:02:48'),
(11, 'Sulis Setiowati, S.Pd., M.Eng.', 'sulis.setiowati@pnj.ac.id', '$2y$10$AoNhqqRZXcvScogoO8/E1eBp.pXd0lFh/yGHQ9hzIFsq97aI7nncu', '1234567895', 'Auditor', 'active', '7u9socbTwAJ2Wphue4iU7gYdn49dkDulRXOzBiHH.jpg', NULL, NULL, NULL, '2024-06-23 22:12:45', '2024-06-24 20:22:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_mutu_internals`
--
ALTER TABLE `audit_mutu_internals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_mutu_internals_id_indikator_foreign` (`id_indikator`),
  ADD KEY `audit_mutu_internals_id_user_auditee_foreign` (`id_user_auditee`),
  ADD KEY `audit_mutu_internals_id_user_auditor_ketua_foreign` (`id_user_auditor_ketua`),
  ADD KEY `audit_mutu_internals_id_user_auditor_anggota_1_foreign` (`id_user_auditor_anggota_1`),
  ADD KEY `audit_mutu_internals_id_user_auditor_anggota_2_foreign` (`id_user_auditor_anggota_2`),
  ADD KEY `audit_mutu_internals_id_status_audit_foreign` (`id_status_audit`),
  ADD KEY `audit_mutu_internals_id_user_manajemen_foreign` (`id_user_manajemen`),
  ADD KEY `audit_mutu_internals_id_user_administrator_foreign` (`id_user_administrator`);

--
-- Indexes for table `bagians`
--
ALTER TABLE `bagians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `indikators`
--
ALTER TABLE `indikators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indikators_id_pernyataan_standar_foreign` (`id_pernyataan_standar`);

--
-- Indexes for table `instrumen_audits`
--
ALTER TABLE `instrumen_audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrumen_audits_id_audit_mutu_internal_foreign` (`id_audit_mutu_internal`),
  ADD KEY `instrumen_audits_id_status_audit_foreign` (`id_status_audit`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pernyataan_standars`
--
ALTER TABLE `pernyataan_standars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pernyataan_standars_id_bagian_foreign` (`id_bagian`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_audits`
--
ALTER TABLE `status_audits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_bagian_foreign` (`id_bagian`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_mutu_internals`
--
ALTER TABLE `audit_mutu_internals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `bagians`
--
ALTER TABLE `bagians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `indikators`
--
ALTER TABLE `indikators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `instrumen_audits`
--
ALTER TABLE `instrumen_audits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pernyataan_standars`
--
ALTER TABLE `pernyataan_standars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `status_audits`
--
ALTER TABLE `status_audits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit_mutu_internals`
--
ALTER TABLE `audit_mutu_internals`
  ADD CONSTRAINT `audit_mutu_internals_id_indikator_foreign` FOREIGN KEY (`id_indikator`) REFERENCES `indikators` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `audit_mutu_internals_id_status_audit_foreign` FOREIGN KEY (`id_status_audit`) REFERENCES `status_audits` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `audit_mutu_internals_id_user_administrator_foreign` FOREIGN KEY (`id_user_administrator`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `audit_mutu_internals_id_user_auditee_foreign` FOREIGN KEY (`id_user_auditee`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `audit_mutu_internals_id_user_auditor_anggota_1_foreign` FOREIGN KEY (`id_user_auditor_anggota_1`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `audit_mutu_internals_id_user_auditor_anggota_2_foreign` FOREIGN KEY (`id_user_auditor_anggota_2`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `audit_mutu_internals_id_user_auditor_ketua_foreign` FOREIGN KEY (`id_user_auditor_ketua`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `audit_mutu_internals_id_user_manajemen_foreign` FOREIGN KEY (`id_user_manajemen`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `indikators`
--
ALTER TABLE `indikators`
  ADD CONSTRAINT `indikators_id_pernyataan_standar_foreign` FOREIGN KEY (`id_pernyataan_standar`) REFERENCES `pernyataan_standars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `instrumen_audits`
--
ALTER TABLE `instrumen_audits`
  ADD CONSTRAINT `instrumen_audits_id_audit_mutu_internal_foreign` FOREIGN KEY (`id_audit_mutu_internal`) REFERENCES `audit_mutu_internals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `instrumen_audits_id_status_audit_foreign` FOREIGN KEY (`id_status_audit`) REFERENCES `status_audits` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pernyataan_standars`
--
ALTER TABLE `pernyataan_standars`
  ADD CONSTRAINT `pernyataan_standars_id_bagian_foreign` FOREIGN KEY (`id_bagian`) REFERENCES `bagians` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_bagian_foreign` FOREIGN KEY (`id_bagian`) REFERENCES `bagians` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
