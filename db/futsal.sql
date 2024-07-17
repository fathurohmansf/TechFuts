-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2024 at 03:52 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `futsal`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `nama_album` char(50) NOT NULL,
  `slug_album` char(50) NOT NULL,
  `foto` text NOT NULL,
  `created_by` char(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `nama_album`, `slug_album`, `foto`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'Latihan Universitas Nusa Mandiri', 'latihan-universitas-nusa-mandiri', 'latihan-universitas-nusa-mandiri20240526210157.jpg', 'superadmin', '2018-04-11 06:14:08', 'superadmin', '2024-07-04 19:11:32'),
(2, 'Lapangan Sintetis (Outdoor)', 'lapangan-sintetis-outdoor', 'lapangan-f20240526210214.jpg', 'superadmin', '2018-04-11 06:20:52', 'superadmin', '2024-07-04 22:59:16'),
(3, 'Lapangan Polypropylene', 'lapangan-polypropylene', 'lapangan-e20240526210041.jpg', 'superadmin', '2018-04-11 06:23:01', 'superadmin', '2024-07-04 22:59:44'),
(4, 'Lapangan Parquete', 'lapangan-parquete', 'lapangan-d20240526210019.jpg', 'superadmin', '2018-04-11 06:23:11', 'superadmin', '2024-07-04 23:00:00'),
(5, 'Lapangan Sintetis', 'lapangan-sintetis', 'lapangan-c20240526205959.jpg', 'superadmin', '2018-04-14 19:16:46', 'superadmin', '2024-07-04 23:00:23'),
(6, 'Lapangan Vinil', 'lapangan-vinil', 'lapangan-b20240526205938.jpg', 'superadmin', '2018-04-14 19:17:05', 'superadmin', '2024-07-04 23:01:04'),
(7, 'Lapangan Karpet', 'lapangan-karpet', 'lapangan-a20240526205924.jpg', 'superadmin', '2018-04-14 19:17:19', 'superadmin', '2024-07-04 23:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(11) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `atas_nama` varchar(100) NOT NULL,
  `norek` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id_bank`, `nama_bank`, `atas_nama`, `norek`, `logo`) VALUES
(1, 'BNI', 'Rafli', '12345678', 'bni.png'),
(2, 'BRI', 'Rafli', '87873412323', 'bri.png'),
(3, 'Mandiri', 'Rafli', '778734098', 'mandiri.png'),
(4, 'BCA', 'Rafli', '998980342487', 'bca.png');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_desc` text NOT NULL,
  `company_address` text NOT NULL,
  `company_maps` text NOT NULL,
  `company_phone` char(30) NOT NULL,
  `company_phone2` char(30) NOT NULL,
  `company_fax` char(30) NOT NULL,
  `company_email` char(30) NOT NULL,
  `foto` text NOT NULL,
  `foto_type` char(10) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL,
  `created_by` char(50) NOT NULL,
  `modified_by` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id_company`, `company_name`, `company_desc`, `company_address`, `company_maps`, `company_phone`, `company_phone2`, `company_fax`, `company_email`, `foto`, `foto_type`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 'TechFuts (Technopark Futsal)', 'Rancangan sewa lapangan futsal berbasis web (TechFuts)  adalah suatu sistem yang dirancang untuk memudahkan proses penyewaan lapangan futsal secara online. Sistem ini memungkinkan pengguna untuk melihat informasi tentang lapangan futsal, melakukan pemesanan, dan melakukan pembayaran secara online.', 'no 2 kelurahan kecamatan cipayung, Jl. Perintis, RT.5/RW.5, Ceger, Jakarta timur, DKI Jakarta, Daerah Khusus Ibukota Jakarta 13820', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d16327777.649419477!2d108.84621849858628!3d-2.415291213289622!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2c4c07d7496404b7%3A0xe37b4de71badf485!2sIndonesia!5e0!3m2!1sen!2sid!4v1506312173230\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '081241412', '0711412402', '12414', 'techfuts@gmail.com', 'techfuts-technopark-futsal20240625121724', '.png', '2017-11-09 06:45:34', NULL, 'superadmin', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `diskon`
--

CREATE TABLE `diskon` (
  `id` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diskon`
--

INSERT INTO `diskon` (`id`, `harga`) VALUES
(1, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `nama_event` varchar(100) NOT NULL,
  `slug_event` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `foto_type` char(10) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `modified_by` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id_event`, `nama_event`, `slug_event`, `deskripsi`, `kategori`, `foto`, `foto_type`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(5, 'BSI FLASH 2023', 'bsi-flash-2023', '<p>BSI FLASH 2023<br>Tournament futsal anter siswa SMK/SMA yang di adakan oleh universitas BSI</p>', 1, 'bsi-flash-202320240523151328', '.jpg', '2018-04-03 10:03:54', 'superadmin', '2024-07-04 19:11:07', 'superadmin'),
(6, 'Dinus Futsal Club', 'dinus-futsal-club', '<p>JADWAL PELAKSANAAN</p>\r\n<p>Technical Meeting<br>Hari, Tanggal : Sabtu, 20 Januari 2024<br>Tempat : I5.3 UDINUS<br>Opening Ceremony<br>Hari, Tanggal : Sabtu, 27 Januari 2024<br>Jam : 07.00<br>Tempat : GOR Patriot Semarang<br>Acara : Pembukaan (Sambutan – sambutan)<br>Pengucapan Janji (Wasit dan Atlet)<br>Penutupan<br>Dinus Futsal Cup 2024<br>Hari, Tanggal : Sabtu – Minggu, 27- 28 Januari 2024<br>Jam : 08.00 WIB – selesai<br>Tempat : GOR Patriot Semarang<br>Sistem Pertandingan : Sistem group<br>Closing Ceremony<br>Hari, Tanggal : Sabtu, 28 Januari 2024<br>Tempat : GOR Patriot Semarang<br>Acara : Penyerahan simbolis juara 1, 2, 3 serta best player, top score, best GK, juara 1 dan 2 best supporter<br>PERSYARATAN PEMAIN</p>\r\n<p>Setiap pemain wajib:<br>Melampirkan 1 lembar asli dan fotocopy Kartu Tanda Pelajar atau rapot lembar depan.<br>Surat Keterangan/ Rekomendasi siswa aktif dari SMA/SMK/MA/MAK Sederajat<br>2 lembar foto 3×4 berwarna<br>Persyaratan pemain point 1 dapat menunjukkan copy dan aslinya pada saat pertandingan. Peraturan ini di dibuat untuk menghindari kecurangan yang dilakukan oleh setiap tim (pemain) yang mendaftarkan diri. Apabila ditemukan kecurangan di dalam persayaratan tersebut, maka pihak panitia berhak menolak tim (pemain) tersebut bertanding (DISKUALIFIKASI), serta diberitakan buruk di media cetak dan elektronik karena melakukan suatu tindakan pidana.<br>PERSYARATAN TEAM</p>\r\n<p>Melengkapi daftar susunan 12 Pemain & 2 Official yang telah diberikan oleh pihak panitia.<br>Setiap tim wajib mengisi & menanda tangani Surat Pernyataan, yang diberikan panpel dan surat pernyataan tersebut wajib di tanda tangani oleh Manager Tim (Pembina) & bermaterai 10.000,-.<br>Setiap sekolah dilarang keras menggunakan pemain yang tidak didaftarkan dalam sekolah atau pemain dari sekolah lain.<br>Seluruh persyaratan tersebut diatas wajib dilengkapi dan di serahkan paling lambat saat Technical Meeting dan bila tim peserta tidak dapat menyerahkan persyaratan pada tanggal yang telah di tentukan panitia penyelenggara, maka tim tersebut di anggap mengundurkan diri.<br>PEMAIN DAN OFFICIAL</p>\r\n<p>Pemain dan Official terdaftar dalam surat keabsahan / daftar susunan 12 pemain dan 2 orang official yang ditandatangani oleh Manager Tim (Penanggung jawab) dari tim yang bersangkutan.<br>Dilarang keras menggunakan pemain yang tidak terdaftar dalam formulir pendaftaran.<br>Official adalah anggota tim peserta yang berfungsi sebagai Manager Tim, Pelatih, Ass Pelatih atau Penanggung Jawab Tim.<br>PERATURAN KHUSUS PERTANDINGAN</p>\r\n<p>Sistematika Pertandingan :<br>PUTERA<br>24 tim yang dibagi menjadi 8 grup<br>Setiap Tim bermain 2 x di fase grup<br>Juara Grup di akhir klasemen berhak melaju ke babak selanjutnya 8 besar.<br>Babak 8 besar dilakukan secara Knock Out (Gugur).<br>Perhitungan Klasemen, antara lain :<br>Nilai / Point<br>Selisih Gol<br>Memasukan Gol Lebih Banyak ( + )<br>Kemasukan Gol Lebih Sedikit ( – )<br>Pertemuan Tim / Head To Head<br>Perhitungan kartu kuning dan kartu merah<br>Gol tercepat<br>Waktu Pertandingan : 2 x 10 menit kotor , dengan waktu istirahat / jeda pertandingan 5 menit, dan Saat Time Out waktu pertandingan berhenti (waktu pertandingan menggunakan waktu yang terdapat pada wasit serta menggunakan scoring table manual dan stop watch sebagai report catatan pertandingan), dan waktu berhenti apabila ada permintaan dari wasit (cidera berat & yang dianggap perlu oleh wasit)<br>Waktu WO : Adalah 10 menit dari jadwal pertandingan ( disesuaikan ). Tim peserta dinyatakan kalah WO bila tidak dapat mengisi FORMULIR LINE UP pemain dengan jumlah pemain minimal 4 orang pada akhir waktu 10 menit tersebut ( saat kick off ) dengan skor 10 – 0 untuk tim lawan<br>Pelanggaran kartu kuning dan kartu merah<br>Sangsi akumulasi Kartu Kuning :<br>Pemain yang mendapatkan 2 kartu kuning pada saat pertandingan yang berbeda, pemain tersebut mendapatkan hukuman tidak diperbolehkan bermain pada 1 pertandingan berikutnya<br>Pemain yang mendapatkan 2 kartu kuning pada saat pertandingan yang sama ( Secara otomatis langsung mendapatkan kartu merah ), pemain tersebut akan mendapatkan hukuman tidak diperbolehkan bermain pada 1 pertandingan berikutnya.</p>', 1, 'dinus-futsal-club20240523150832', '.jpg', '2018-04-03 11:08:48', 'superadmin', '2024-07-04 19:11:13', 'superadmin'),
(7, 'Battle Futsal With Intern Campus 2022', 'battle-futsal-with-intern-campus-2022', '<p>Battle Futsal With Intern Campus 2022, Ajang Kompetisi Futsal Besutan Mata Kuliah Event Mahasiswa<br>25 Juni 2022<br>Bandung – Sabtu, 25 Juni 2022, Event Organizer mengadakan Event Futsal “Battle Futsal With Intern Campus” yang bertujuan untuk memfasilitasi dan menjalin silaturahmi mahasiswa UNIBI yang memiliki minat di bidang olahraga, khususnya Futsal. Event ini diadakan untuk memenuhi tugas Ujian Akhir Semester 6 mata kuliah Event & Liaison Manajement Program Studi Ilmu Komunikasi. Event futsal ini dilaksanakan dengan sistem fourfeo yang diikuti oleh 4 team dari berbagai prodi UNIBI, yaitu prodi Sistem Informasi, prodi Akuntansi, prodi Desain Komunikasi Visual dan prodi Manajemen. Dihadiri oleh Ibu Shinta Hartini Putri S.I.Kom., M.Si selaku Ketua Prodi Ilmu Komunikasi yang memberikan sambutan di awal acara, Team Pocari Sweat yang memberikan presentasi materi dan penampilan guest star Shafira Qurrotu Aini yang menyanyikan 2 lagu. Hasil dari pertandingan futsal ini, dimenangkan oleh Team dari Prodi Sistem Informasi sebagai Juara Champion dengan hadiah uang tunai Rp 500.000, Team dari Prodi Akuntansi sebagai Juara Runner Up dengan hadiah uang tunai Rp 300.000, Team dari Prodi Desain Komunikasi Visual dengan hadiah uang tunai Rp 200.000 dan Team dari Prodi Manajemen dengan hadiah Vest. <br> <br>Event ini disupport oleh PT Segitiga Satu Arah, Pocari Sweat, Ayam Bang Dava, Ghold Apparel, Keza Hijab, PT Kahatex, dan Sikumbahclean.</p>\r\n<div id=\"gtx-trans\"> </div>', 1, 'battle-futsal-with-intern-campus-202220240523150436', '.jpg', '2018-04-03 11:11:51', 'superadmin', '2024-07-04 19:11:15', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `nama_foto` char(100) NOT NULL,
  `slug_foto` char(100) NOT NULL,
  `foto` text NOT NULL,
  `created_by` char(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(20) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`id_foto`, `album_id`, `nama_foto`, `slug_foto`, `foto`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 1, 'Testing Saja Cuis', 'testing-saja-cuis', 'testing-saja-cuis20180411025319.jpg', 'superadmin', '2018-04-11 07:41:29', 'superadmin', '2024-07-04 19:10:26'),
(2, 4, 'Foto Lagi Coba', 'foto-lagi-coba', 'foto-lagi-coba20180411024503.jpg', 'superadmin', '2018-04-11 07:45:03', 'superadmin', '2024-07-04 19:10:35'),
(3, 3, 'Foto Coba Lagi Saja', 'foto-coba-lagi-saja', 'foto-coba-lagi-saja20180411024712.jpg', 'superadmin', '2018-04-11 07:47:12', 'superadmin', '2024-07-04 19:10:39'),
(4, 1, 'Teasdasd', 'teasdasd', 'teasdasd20180414101405.png', 'superadmin', '2018-04-14 15:13:17', 'superadmin', '2024-07-04 19:10:41'),
(5, 3, 'Agains', 'agains', 'agains20180414101428.jpg', 'superadmin', '2018-04-14 15:14:29', 'superadmin', '2024-07-04 19:10:45'),
(6, 4, 'Waasd', 'waasd', 'waasd20180414101515.jpg', 'superadmin', '2018-04-14 15:15:15', 'superadmin', '2024-07-04 19:10:47'),
(7, 1, 'ASczxc', 'asczxc', 'asczxc20180414101545.jpg', 'superadmin', '2018-04-14 15:15:45', 'superadmin', '2024-07-04 19:10:50'),
(8, 1, 'ASXzc', 'asxzc', 'asxzc20180414101604.jpg', 'superadmin', '2018-04-14 15:16:05', 'superadmin', '2024-07-04 19:10:53'),
(9, 2, 'ASczxcacasc', 'asczxcacasc', 'asczxcacasc20180414101613.png', 'superadmin', '2018-04-14 15:16:13', 'superadmin', '2024-07-04 19:10:56');

-- --------------------------------------------------------

--
-- Table structure for table `jam`
--

CREATE TABLE `jam` (
  `id` int(11) NOT NULL,
  `jam` varchar(50) NOT NULL,
  `is_available` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jam`
--

INSERT INTO `jam` (`id`, `jam`, `is_available`) VALUES
(1, '06:00:00', 1),
(2, '07:00:00', 1),
(3, '08:00:00', 1),
(4, '09:00:00', 1),
(5, '10:00:00', 1),
(6, '11:00:00', 1),
(7, '12:00:00', 1),
(8, '13:00:00', 1),
(9, '14:00:00', 1),
(10, '15:00:00', 1),
(11, '16:00:00', 1),
(12, '17:00:00', 1),
(13, '18:00:00', 1),
(14, '19:00:00', 1),
(15, '20:00:00', 1),
(16, '21:00:00', 1),
(17, '22:00:00', 1),
(18, '23:00:00', 1),
(19, '24:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL,
  `slug_kat` varchar(20) NOT NULL,
  `created_by` char(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `slug_kat`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'Turnamen', 'turnamen', 'superadmin', '2018-07-23 08:38:39', 'superadmin', '2024-07-04 19:13:10'),
(2, 'Kerja Sama', 'kerja-sama', 'superadmin', '2018-07-23 08:38:39', 'superadmin', '2024-07-04 19:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama_kontak` char(50) NOT NULL,
  `nohp` char(50) NOT NULL,
  `created_by` char(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `nama_kontak`, `nohp`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(2, 'Rafli', '6285695034120', 'superadmin', '2018-07-23 11:16:57', 'superadmin', '2024-07-04 19:13:23'),
(3, 'Ahmad Fathurohman', '628815665834', 'superadmin', '2018-07-23 11:20:44', 'superadmin', '2024-07-04 19:13:26');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(11) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `provinsi_id`, `nama_kota`) VALUES
(1, 21, 'Aceh Barat'),
(2, 21, 'Aceh Barat Daya'),
(3, 21, 'Aceh Besar'),
(4, 21, 'Aceh Jaya'),
(5, 21, 'Aceh Selatan'),
(6, 21, 'Aceh Singkil'),
(7, 21, 'Aceh Tamiang'),
(8, 21, 'Aceh Tengah'),
(9, 21, 'Aceh Tenggara'),
(10, 21, 'Aceh Timur'),
(11, 21, 'Aceh Utara'),
(12, 32, 'Agam'),
(13, 23, 'Alor'),
(14, 19, 'Ambon'),
(15, 34, 'Asahan'),
(16, 24, 'Asmat'),
(17, 1, 'Badung'),
(18, 13, 'Balangan'),
(19, 15, 'Balikpapan'),
(20, 21, 'Banda Aceh'),
(21, 18, 'Bandar Lampung'),
(22, 9, 'Bandung'),
(23, 9, 'Bandung'),
(24, 9, 'Bandung Barat'),
(25, 29, 'Banggai'),
(26, 29, 'Banggai Kepulauan'),
(27, 2, 'Bangka'),
(28, 2, 'Bangka Barat'),
(29, 2, 'Bangka Selatan'),
(30, 2, 'Bangka Tengah'),
(31, 11, 'Bangkalan'),
(32, 1, 'Bangli'),
(33, 13, 'Banjar'),
(34, 9, 'Banjar'),
(35, 13, 'Banjarbaru'),
(36, 13, 'Banjarmasin'),
(37, 10, 'Banjarnegara'),
(38, 28, 'Bantaeng'),
(39, 5, 'Bantul'),
(40, 33, 'Banyuasin'),
(41, 10, 'Banyumas'),
(42, 11, 'Banyuwangi'),
(43, 13, 'Barito Kuala'),
(44, 14, 'Barito Selatan'),
(45, 14, 'Barito Timur'),
(46, 14, 'Barito Utara'),
(47, 28, 'Barru'),
(48, 17, 'Batam'),
(49, 10, 'Batang'),
(50, 8, 'Batang Hari'),
(51, 11, 'Batu'),
(52, 34, 'Batu Bara'),
(53, 30, 'Bau-Bau'),
(54, 9, 'Bekasi'),
(55, 9, 'Bekasi'),
(56, 2, 'Belitung'),
(57, 2, 'Belitung Timur'),
(58, 23, 'Belu'),
(59, 21, 'Bener Meriah'),
(60, 26, 'Bengkalis'),
(61, 12, 'Bengkayang'),
(62, 4, 'Bengkulu'),
(63, 4, 'Bengkulu Selatan'),
(64, 4, 'Bengkulu Tengah'),
(65, 4, 'Bengkulu Utara'),
(66, 15, 'Berau'),
(67, 24, 'Biak Numfor'),
(68, 22, 'Bima'),
(69, 22, 'Bima'),
(70, 34, 'Binjai'),
(71, 17, 'Bintan'),
(72, 21, 'Bireuen'),
(73, 31, 'Bitung'),
(74, 11, 'Blitar'),
(75, 11, 'Blitar'),
(76, 10, 'Blora'),
(77, 7, 'Boalemo'),
(78, 9, 'Bogor'),
(79, 9, 'Bogor'),
(80, 11, 'Bojonegoro'),
(81, 31, 'Bolaang Mongondow (Bolmong)'),
(82, 31, 'Bolaang Mongondow Selatan'),
(83, 31, 'Bolaang Mongondow Timur'),
(84, 31, 'Bolaang Mongondow Utara'),
(85, 30, 'Bombana'),
(86, 11, 'Bondowoso'),
(87, 28, 'Bone'),
(88, 7, 'Bone Bolango'),
(89, 15, 'Bontang'),
(90, 24, 'Boven Digoel'),
(91, 10, 'Boyolali'),
(92, 10, 'Brebes'),
(93, 32, 'Bukittinggi'),
(94, 1, 'Buleleng'),
(95, 28, 'Bulukumba'),
(96, 16, 'Bulungan (Bulongan)'),
(97, 8, 'Bungo'),
(98, 29, 'Buol'),
(99, 19, 'Buru'),
(100, 19, 'Buru Selatan'),
(101, 30, 'Buton'),
(102, 30, 'Buton Utara'),
(103, 9, 'Ciamis'),
(104, 9, 'Cianjur'),
(105, 10, 'Cilacap'),
(106, 3, 'Cilegon'),
(107, 9, 'Cimahi'),
(108, 9, 'Cirebon'),
(109, 9, 'Cirebon'),
(110, 34, 'Dairi'),
(111, 24, 'Deiyai (Deliyai)'),
(112, 34, 'Deli Serdang'),
(113, 10, 'Demak'),
(114, 1, 'Denpasar'),
(115, 9, 'Depok'),
(116, 32, 'Dharmasraya'),
(117, 24, 'Dogiyai'),
(118, 22, 'Dompu'),
(119, 29, 'Donggala'),
(120, 26, 'Dumai'),
(121, 33, 'Empat Lawang'),
(122, 23, 'Ende'),
(123, 28, 'Enrekang'),
(124, 25, 'Fakfak'),
(125, 23, 'Flores Timur'),
(126, 9, 'Garut'),
(127, 21, 'Gayo Lues'),
(128, 1, 'Gianyar'),
(129, 7, 'Gorontalo'),
(130, 7, 'Gorontalo'),
(131, 7, 'Gorontalo Utara'),
(132, 28, 'Gowa'),
(133, 11, 'Gresik'),
(134, 10, 'Grobogan'),
(135, 5, 'Gunung Kidul'),
(136, 14, 'Gunung Mas'),
(137, 34, 'Gunungsitoli'),
(138, 20, 'Halmahera Barat'),
(139, 20, 'Halmahera Selatan'),
(140, 20, 'Halmahera Tengah'),
(141, 20, 'Halmahera Timur'),
(142, 20, 'Halmahera Utara'),
(143, 13, 'Hulu Sungai Selatan'),
(144, 13, 'Hulu Sungai Tengah'),
(145, 13, 'Hulu Sungai Utara'),
(146, 34, 'Humbang Hasundutan'),
(147, 26, 'Indragiri Hilir'),
(148, 26, 'Indragiri Hulu'),
(149, 9, 'Indramayu'),
(150, 24, 'Intan Jaya'),
(151, 6, 'Jakarta Barat'),
(152, 6, 'Jakarta Pusat'),
(153, 6, 'Jakarta Selatan'),
(154, 6, 'Jakarta Timur'),
(155, 6, 'Jakarta Utara'),
(156, 8, 'Jambi'),
(157, 24, 'Jayapura'),
(158, 24, 'Jayapura'),
(159, 24, 'Jayawijaya'),
(160, 11, 'Jember'),
(161, 1, 'Jembrana'),
(162, 28, 'Jeneponto'),
(163, 10, 'Jepara'),
(164, 11, 'Jombang'),
(165, 25, 'Kaimana'),
(166, 26, 'Kampar'),
(167, 14, 'Kapuas'),
(168, 12, 'Kapuas Hulu'),
(169, 10, 'Karanganyar'),
(170, 1, 'Karangasem'),
(171, 9, 'Karawang'),
(172, 17, 'Karimun'),
(173, 34, 'Karo'),
(174, 14, 'Katingan'),
(175, 4, 'Kaur'),
(176, 12, 'Kayong Utara'),
(177, 10, 'Kebumen'),
(178, 11, 'Kediri'),
(179, 11, 'Kediri'),
(180, 24, 'Keerom'),
(181, 10, 'Kendal'),
(182, 30, 'Kendari'),
(183, 4, 'Kepahiang'),
(184, 17, 'Kepulauan Anambas'),
(185, 19, 'Kepulauan Aru'),
(186, 32, 'Kepulauan Mentawai'),
(187, 26, 'Kepulauan Meranti'),
(188, 31, 'Kepulauan Sangihe'),
(189, 6, 'Kepulauan Seribu'),
(190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)'),
(191, 20, 'Kepulauan Sula'),
(192, 31, 'Kepulauan Talaud'),
(193, 24, 'Kepulauan Yapen (Yapen Waropen)'),
(194, 8, 'Kerinci'),
(195, 12, 'Ketapang'),
(196, 10, 'Klaten'),
(197, 1, 'Klungkung'),
(198, 30, 'Kolaka'),
(199, 30, 'Kolaka Utara'),
(200, 30, 'Konawe'),
(201, 30, 'Konawe Selatan'),
(202, 30, 'Konawe Utara'),
(203, 13, 'Kotabaru'),
(204, 31, 'Kotamobagu'),
(205, 14, 'Kotawaringin Barat'),
(206, 14, 'Kotawaringin Timur'),
(207, 26, 'Kuantan Singingi'),
(208, 12, 'Kubu Raya'),
(209, 10, 'Kudus'),
(210, 5, 'Kulon Progo'),
(211, 9, 'Kuningan'),
(212, 23, 'Kupang'),
(213, 23, 'Kupang'),
(214, 15, 'Kutai Barat'),
(215, 15, 'Kutai Kartanegara'),
(216, 15, 'Kutai Timur'),
(217, 34, 'Labuhan Batu'),
(218, 34, 'Labuhan Batu Selatan'),
(219, 34, 'Labuhan Batu Utara'),
(220, 33, 'Lahat'),
(221, 14, 'Lamandau'),
(222, 11, 'Lamongan'),
(223, 18, 'Lampung Barat'),
(224, 18, 'Lampung Selatan'),
(225, 18, 'Lampung Tengah'),
(226, 18, 'Lampung Timur'),
(227, 18, 'Lampung Utara'),
(228, 12, 'Landak'),
(229, 34, 'Langkat'),
(230, 21, 'Langsa'),
(231, 24, 'Lanny Jaya'),
(232, 3, 'Lebak'),
(233, 4, 'Lebong'),
(234, 23, 'Lembata'),
(235, 21, 'Lhokseumawe'),
(236, 32, 'Lima Puluh Koto/Kota'),
(237, 17, 'Lingga'),
(238, 22, 'Lombok Barat'),
(239, 22, 'Lombok Tengah'),
(240, 22, 'Lombok Timur'),
(241, 22, 'Lombok Utara'),
(242, 33, 'Lubuk Linggau'),
(243, 11, 'Lumajang'),
(244, 28, 'Luwu'),
(245, 28, 'Luwu Timur'),
(246, 28, 'Luwu Utara'),
(247, 11, 'Madiun'),
(248, 11, 'Madiun'),
(249, 10, 'Magelang'),
(250, 10, 'Magelang'),
(251, 11, 'Magetan'),
(252, 9, 'Majalengka'),
(253, 27, 'Majene'),
(254, 28, 'Makassar'),
(255, 11, 'Malang'),
(256, 11, 'Malang'),
(257, 16, 'Malinau'),
(258, 19, 'Maluku Barat Daya'),
(259, 19, 'Maluku Tengah'),
(260, 19, 'Maluku Tenggara'),
(261, 19, 'Maluku Tenggara Barat'),
(262, 27, 'Mamasa'),
(263, 24, 'Mamberamo Raya'),
(264, 24, 'Mamberamo Tengah'),
(265, 27, 'Mamuju'),
(266, 27, 'Mamuju Utara'),
(267, 31, 'Manado'),
(268, 34, 'Mandailing Natal'),
(269, 23, 'Manggarai'),
(270, 23, 'Manggarai Barat'),
(271, 23, 'Manggarai Timur'),
(272, 25, 'Manokwari'),
(273, 25, 'Manokwari Selatan'),
(274, 24, 'Mappi'),
(275, 28, 'Maros'),
(276, 22, 'Mataram'),
(277, 25, 'Maybrat'),
(278, 34, 'Medan'),
(279, 12, 'Melawi'),
(280, 8, 'Merangin'),
(281, 24, 'Merauke'),
(282, 18, 'Mesuji'),
(283, 18, 'Metro'),
(284, 24, 'Mimika'),
(285, 31, 'Minahasa'),
(286, 31, 'Minahasa Selatan'),
(287, 31, 'Minahasa Tenggara'),
(288, 31, 'Minahasa Utara'),
(289, 11, 'Mojokerto'),
(290, 11, 'Mojokerto'),
(291, 29, 'Morowali'),
(292, 33, 'Muara Enim'),
(293, 8, 'Muaro Jambi'),
(294, 4, 'Muko Muko'),
(295, 30, 'Muna'),
(296, 14, 'Murung Raya'),
(297, 33, 'Musi Banyuasin'),
(298, 33, 'Musi Rawas'),
(299, 24, 'Nabire'),
(300, 21, 'Nagan Raya'),
(301, 23, 'Nagekeo'),
(302, 17, 'Natuna'),
(303, 24, 'Nduga'),
(304, 23, 'Ngada'),
(305, 11, 'Nganjuk'),
(306, 11, 'Ngawi'),
(307, 34, 'Nias'),
(308, 34, 'Nias Barat'),
(309, 34, 'Nias Selatan'),
(310, 34, 'Nias Utara'),
(311, 16, 'Nunukan'),
(312, 33, 'Ogan Ilir'),
(313, 33, 'Ogan Komering Ilir'),
(314, 33, 'Ogan Komering Ulu'),
(315, 33, 'Ogan Komering Ulu Selatan'),
(316, 33, 'Ogan Komering Ulu Timur'),
(317, 11, 'Pacitan'),
(318, 32, 'Padang'),
(319, 34, 'Padang Lawas'),
(320, 34, 'Padang Lawas Utara'),
(321, 32, 'Padang Panjang'),
(322, 32, 'Padang Pariaman'),
(323, 34, 'Padang Sidempuan'),
(324, 33, 'Pagar Alam'),
(325, 34, 'Pakpak Bharat'),
(326, 14, 'Palangka Raya'),
(327, 33, 'Palembang'),
(328, 28, 'Palopo'),
(329, 29, 'Palu'),
(330, 11, 'Pamekasan'),
(331, 3, 'Pandeglang'),
(332, 9, 'Pangandaran'),
(333, 28, 'Pangkajene Kepulauan'),
(334, 2, 'Pangkal Pinang'),
(335, 24, 'Paniai'),
(336, 28, 'Parepare'),
(337, 32, 'Pariaman'),
(338, 29, 'Parigi Moutong'),
(339, 32, 'Pasaman'),
(340, 32, 'Pasaman Barat'),
(341, 15, 'Paser'),
(342, 11, 'Pasuruan'),
(343, 11, 'Pasuruan'),
(344, 10, 'Pati'),
(345, 32, 'Payakumbuh'),
(346, 25, 'Pegunungan Arfak'),
(347, 24, 'Pegunungan Bintang'),
(348, 10, 'Pekalongan'),
(349, 10, 'Pekalongan'),
(350, 26, 'Pekanbaru'),
(351, 26, 'Pelalawan'),
(352, 10, 'Pemalang'),
(353, 34, 'Pematang Siantar'),
(354, 15, 'Penajam Paser Utara'),
(355, 18, 'Pesawaran'),
(356, 18, 'Pesisir Barat'),
(357, 32, 'Pesisir Selatan'),
(358, 21, 'Pidie'),
(359, 21, 'Pidie Jaya'),
(360, 28, 'Pinrang'),
(361, 7, 'Pohuwato'),
(362, 27, 'Polewali Mandar'),
(363, 11, 'Ponorogo'),
(364, 12, 'Pontianak'),
(365, 12, 'Pontianak'),
(366, 29, 'Poso'),
(367, 33, 'Prabumulih'),
(368, 18, 'Pringsewu'),
(369, 11, 'Probolinggo'),
(370, 11, 'Probolinggo'),
(371, 14, 'Pulang Pisau'),
(372, 20, 'Pulau Morotai'),
(373, 24, 'Puncak'),
(374, 24, 'Puncak Jaya'),
(375, 10, 'Purbalingga'),
(376, 9, 'Purwakarta'),
(377, 10, 'Purworejo'),
(378, 25, 'Raja Ampat'),
(379, 4, 'Rejang Lebong'),
(380, 10, 'Rembang'),
(381, 26, 'Rokan Hilir'),
(382, 26, 'Rokan Hulu'),
(383, 23, 'Rote Ndao'),
(384, 21, 'Sabang'),
(385, 23, 'Sabu Raijua'),
(386, 10, 'Salatiga'),
(387, 15, 'Samarinda'),
(388, 12, 'Sambas'),
(389, 34, 'Samosir'),
(390, 11, 'Sampang'),
(391, 12, 'Sanggau'),
(392, 24, 'Sarmi'),
(393, 8, 'Sarolangun'),
(394, 32, 'Sawah Lunto'),
(395, 12, 'Sekadau'),
(396, 28, 'Selayar (Kepulauan Selayar)'),
(397, 4, 'Seluma'),
(398, 10, 'Semarang'),
(399, 10, 'Semarang'),
(400, 19, 'Seram Bagian Barat'),
(401, 19, 'Seram Bagian Timur'),
(402, 3, 'Serang'),
(403, 3, 'Serang'),
(404, 34, 'Serdang Bedagai'),
(405, 14, 'Seruyan'),
(406, 26, 'Siak'),
(407, 34, 'Sibolga'),
(408, 28, 'Sidenreng Rappang/Rapang'),
(409, 11, 'Sidoarjo'),
(410, 29, 'Sigi'),
(411, 32, 'Sijunjung (Sawah Lunto Sijunjung)'),
(412, 23, 'Sikka'),
(413, 34, 'Simalungun'),
(414, 21, 'Simeulue'),
(415, 12, 'Singkawang'),
(416, 28, 'Sinjai'),
(417, 12, 'Sintang'),
(418, 11, 'Situbondo'),
(419, 5, 'Sleman'),
(420, 32, 'Solok'),
(421, 32, 'Solok'),
(422, 32, 'Solok Selatan'),
(423, 28, 'Soppeng'),
(424, 25, 'Sorong'),
(425, 25, 'Sorong'),
(426, 25, 'Sorong Selatan'),
(427, 10, 'Sragen'),
(428, 9, 'Subang'),
(429, 21, 'Subulussalam'),
(430, 9, 'Sukabumi'),
(431, 9, 'Sukabumi'),
(432, 14, 'Sukamara'),
(433, 10, 'Sukoharjo'),
(434, 23, 'Sumba Barat'),
(435, 23, 'Sumba Barat Daya'),
(436, 23, 'Sumba Tengah'),
(437, 23, 'Sumba Timur'),
(438, 22, 'Sumbawa'),
(439, 22, 'Sumbawa Barat'),
(440, 9, 'Sumedang'),
(441, 11, 'Sumenep'),
(442, 8, 'Sungaipenuh'),
(443, 24, 'Supiori'),
(444, 11, 'Surabaya'),
(445, 10, 'Surakarta (Solo)'),
(446, 13, 'Tabalong'),
(447, 1, 'Tabanan'),
(448, 28, 'Takalar'),
(449, 25, 'Tambrauw'),
(450, 16, 'Tana Tidung'),
(451, 28, 'Tana Toraja'),
(452, 13, 'Tanah Bumbu'),
(453, 32, 'Tanah Datar'),
(454, 13, 'Tanah Laut'),
(455, 3, 'Tangerang'),
(456, 3, 'Tangerang'),
(457, 3, 'Tangerang Selatan'),
(458, 18, 'Tanggamus'),
(459, 34, 'Tanjung Balai'),
(460, 8, 'Tanjung Jabung Barat'),
(461, 8, 'Tanjung Jabung Timur'),
(462, 17, 'Tanjung Pinang'),
(463, 34, 'Tapanuli Selatan'),
(464, 34, 'Tapanuli Tengah'),
(465, 34, 'Tapanuli Utara'),
(466, 13, 'Tapin'),
(467, 16, 'Tarakan'),
(468, 9, 'Tasikmalaya'),
(469, 9, 'Tasikmalaya'),
(470, 34, 'Tebing Tinggi'),
(471, 8, 'Tebo'),
(472, 10, 'Tegal'),
(473, 10, 'Tegal'),
(474, 25, 'Teluk Bintuni'),
(475, 25, 'Teluk Wondama'),
(476, 10, 'Temanggung'),
(477, 20, 'Ternate'),
(478, 20, 'Tidore Kepulauan'),
(479, 23, 'Timor Tengah Selatan'),
(480, 23, 'Timor Tengah Utara'),
(481, 34, 'Toba Samosir'),
(482, 29, 'Tojo Una-Una'),
(483, 29, 'Toli-Toli'),
(484, 24, 'Tolikara'),
(485, 31, 'Tomohon'),
(486, 28, 'Toraja Utara'),
(487, 11, 'Trenggalek'),
(488, 19, 'Tual'),
(489, 11, 'Tuban'),
(490, 18, 'Tulang Bawang'),
(491, 18, 'Tulang Bawang Barat'),
(492, 11, 'Tulungagung'),
(493, 28, 'Wajo'),
(494, 30, 'Wakatobi'),
(495, 24, 'Waropen'),
(496, 18, 'Way Kanan'),
(497, 10, 'Wonogiri'),
(498, 10, 'Wonosobo'),
(499, 24, 'Yahukimo'),
(500, 24, 'Yalimo'),
(501, 5, 'Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `lapangan`
--

CREATE TABLE `lapangan` (
  `id_lapangan` int(11) NOT NULL,
  `nama_lapangan` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `foto` text NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` varchar(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lapangan`
--

INSERT INTO `lapangan` (`id_lapangan`, `nama_lapangan`, `harga`, `foto`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'Lapangan Karpet', 100000, 'lapangan-a20180610164236.jpg', 'superadmin', '2018-06-10 15:37:43', 'superadmin', '2024-07-04 19:13:46'),
(2, 'Lapangan Vinil', 150000, 'lapangan-b20180610164255.jpg', 'superadmin', '2018-06-10 16:02:44', 'superadmin', '2024-07-04 19:13:49'),
(3, 'Lapangan Sintetis', 80000, 'lapangan-a20180610164250.jpg', 'superadmin', '2018-06-10 16:16:17', 'superadmin', '2024-07-04 19:13:52'),
(4, 'Lapangan Parquete', 100000, 'lapangan-b20180610164305.jpg', 'superadmin', '2018-06-10 16:25:05', 'superadmin', '2024-07-04 19:13:55'),
(5, 'Lapangan Polypropylene', 100000, 'lapangan-c20180610164320.jpg', 'superadmin', '2018-06-10 16:38:10', 'superadmin', '2024-07-04 19:13:59'),
(6, 'Lapangan Sintetis (Outdoor)', 200000, 'lapangan-c20180610164329.jpg', 'superadmin', '2018-06-10 16:54:28', 'superadmin', '2024-07-04 19:14:01');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 NOT NULL,
  `login` varchar(100) CHARACTER SET utf8 NOT NULL,
  `time` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id_page` int(11) NOT NULL,
  `judul_page` varchar(50) NOT NULL,
  `judul_seo` varchar(50) NOT NULL,
  `isi_page` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id_page`, `judul_page`, `judul_seo`, `isi_page`, `gambar`) VALUES
(1, 'Home', 'home', '', ''),
(2, 'Download', 'download', 'download', ''),
(3, 'Kontak', 'kontak', '<p style=\"text-align: center;\">&nbsp;<img src=\"http://localhost/tol/assets/images/upload/whatsapp.png\" /><br /><strong>SMS/ Call/ Whatsapp</strong></p>\r\n<p style=\"text-align: center;\">0853-6873-3631</p>\r\n<p style=\"text-align: center;\">0822-8155-1666</p>', ''),
(4, 'Profil', 'profil', '<p style=\"text-align: justify;\">Kami merupakan toko yang menyediakan berbagai macam parfum, obat-obatan herbal, baju koko, dan aksesoris muslim lainnya. Toko kami beralamat di Jl. Dr. M. Isa No.1109, Kuto Batu, Ilir Tim. II, Kota Palembang, Sumatera Selatan 30114.</p>\r\n<p style=\"text-align: justify;\">Berikut adalah foto toko kami:</p>', ''),
(5, 'Order', 'order', '<p>Anda dapat menghubungi&nbsp;kami melalui tombol order via whatsapp di masing-masing produk atau melalui customer service/ kontak yang telah disediakan di sisi kanan website ini</p>', '');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
(1, 'Bali'),
(2, 'Bangka Belitung'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nanggroe Aceh Darussalam (NAD)'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `nama_slider` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `foto` text NOT NULL,
  `foto_type` char(10) NOT NULL,
  `foto_size` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `modified_by` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `no_urut`, `nama_slider`, `link`, `foto`, `foto_type`, `foto_size`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(1, 1, 'Slider 1', 'http://www.yahoo.com ', '120240625122451', '.jpg', 203, '2017-11-25 08:05:03', 'superadmin', '2024-07-04 19:14:37', 'superadmin'),
(2, 2, 'Slider 2', 'http://www.google.com ', '220240625122502', '.jpg', 833, '2017-11-25 08:05:03', 'superadmin', '2024-07-04 19:14:40', 'superadmin'),
(3, 3, 'Slider 3', 'http://www.facebook.com', '320240625122511', '.jpg', 167, '2017-11-25 08:05:03', 'superadmin', '2024-07-04 19:29:55', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id_subscriber` int(11) NOT NULL,
  `email` char(20) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_trans` int(11) NOT NULL,
  `id_invoice` char(15) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `deadline` datetime NOT NULL,
  `catatan` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_trans`, `id_invoice`, `user_id`, `subtotal`, `diskon`, `grand_total`, `deadline`, `catatan`, `status`, `created_date`, `created_time`) VALUES
(1, 'J-210517-0001', 3, 100000, 0, 100000, '2021-05-17 21:03:57', '', 2, '2021-05-17', '08:03:19'),
(2, 'J-210517-0002', 4, 260000, 50000, 210000, '2021-05-17 21:10:50', 'takada', 2, '2021-05-17', '08:09:54'),
(3, 'J-210516-0003', 3, 300000, 0, 300000, '2021-05-16 21:20:17', '', 2, '2021-05-16', '08:20:09'),
(4, 'J-210408-0001', 3, 330000, 0, 330000, '2021-04-08 21:21:53', '', 2, '2021-04-08', '08:21:35'),
(5, 'J-210408-0002', 3, 150000, 0, 150000, '2021-04-08 21:22:35', '', 2, '2021-04-08', '08:22:29'),
(6, 'J-210408-0003', 3, 300000, 0, 300000, '2021-04-08 21:23:15', '', 2, '2021-04-08', '08:23:09'),
(7, 'J-210410-0004', 3, 300000, 0, 300000, '2021-04-10 21:24:07', '', 2, '2021-04-10', '08:23:52'),
(8, 'J-210517-0003', 3, 150000, 0, 150000, '2021-05-17 21:23:05', '', 1, '2021-05-17', '08:23:01'),
(9, 'J-240419-0001', 5, 200000, 0, 200000, '2024-04-19 21:27:52', '', 1, '2024-04-19', '08:25:49'),
(10, 'J-240420-0002', 5, 150000, 0, 150000, '2024-04-20 10:47:30', 'lapangan sesuai', 2, '2024-04-20', '09:46:48'),
(11, 'J-240521-0001', 6, 250000, 0, 250000, '2024-05-23 21:22:58', 'lapangan sesuai', 1, '2024-05-21', '10:13:55'),
(12, 'J-240526-0002', 1, 0, 0, 0, '0000-00-00 00:00:00', '', 0, '2024-05-26', '09:23:05'),
(13, 'J-240628-0001', 6, 100000, 0, 100000, '2024-06-28 09:42:10', 'fatur', 1, '2024-06-28', '08:41:32'),
(14, 'J-240628-0002', 6, 100000, 0, 100000, '2024-07-04 23:44:31', 'mau bayar', 1, '2024-06-28', '09:12:43'),
(15, 'J-240704-0001', 6, 200000, 0, 200000, '2024-07-04 23:50:19', 'belanja', 1, '2024-07-04', '10:50:07'),
(16, 'J-240705-0002', 6, 0, 0, 0, '0000-00-00 00:00:00', '', 0, '2024-07-05', '08:49:02'),
(17, 'J-240705-0003', 9, 250000, 0, 250000, '2024-07-05 11:21:27', '', 2, '2024-07-05', '10:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transdet` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `lapangan_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time DEFAULT NULL,
  `durasi` int(11) NOT NULL,
  `jam_selesai` time DEFAULT NULL,
  `harga_jual` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transdet`, `trans_id`, `lapangan_id`, `tanggal`, `jam_mulai`, `durasi`, `jam_selesai`, `harga_jual`, `total`, `created_at`) VALUES
(1, 1, 1, '2021-05-18', '07:00:00', 1, '08:00:00', 100000, 100000, '2021-05-17 20:03:19'),
(2, 2, 1, '2021-05-18', '08:00:00', 1, '09:00:00', 100000, 100000, '2021-05-17 20:09:54'),
(3, 2, 3, '2021-05-17', '10:00:00', 2, '12:00:00', 80000, 160000, '2021-05-17 20:09:55'),
(4, 3, 4, '2021-05-16', '13:00:00', 3, '16:00:00', 100000, 300000, '2021-05-16 20:20:09'),
(5, 4, 1, '2021-04-09', '22:00:00', 1, '23:00:00', 100000, 100000, '2021-04-08 20:21:35'),
(6, 4, 2, '2021-04-11', '21:00:00', 1, '22:00:00', 150000, 150000, '2021-04-08 20:21:36'),
(7, 4, 3, '2021-04-13', '21:00:00', 1, '22:00:00', 80000, 80000, '2021-04-08 20:21:36'),
(8, 5, 6, '2021-04-08', '10:00:00', 1, '11:00:00', 150000, 150000, '2021-04-08 20:22:29'),
(9, 6, 2, '2021-04-10', '10:00:00', 2, '12:00:00', 150000, 300000, '2021-04-08 20:23:09'),
(10, 7, 2, '2021-04-10', '08:00:00', 2, '10:00:00', 150000, 300000, '2021-04-10 20:23:52'),
(11, 8, 2, '2021-05-18', '10:00:00', 1, '11:00:00', 150000, 150000, '2021-05-17 20:23:01'),
(12, 9, 5, '2024-04-19', '17:00:00', 1, '18:00:00', 200000, 200000, '2024-04-19 20:25:49'),
(13, 10, 2, '2024-04-21', '19:00:00', 1, '20:00:00', 150000, 150000, '2024-04-20 09:46:48'),
(14, 11, 2, '2024-05-24', '16:00:00', 1, '17:00:00', 150000, 150000, '2024-05-21 22:13:55'),
(15, 11, 1, '2024-05-25', '20:00:00', 1, '21:00:00', 100000, 100000, '2024-05-23 20:18:27'),
(16, 12, 1, '0000-00-00', NULL, 0, NULL, 100000, 100000, '2024-05-26 21:23:05'),
(17, 13, 1, '2024-06-29', '16:00:00', 1, '17:00:00', 100000, 100000, '2024-06-28 08:41:32'),
(18, 14, 4, '2024-07-05', '13:00:00', 1, '14:00:00', 100000, 100000, '2024-06-28 09:12:43'),
(19, 12, 6, '0000-00-00', NULL, 0, NULL, 200000, 200000, '2024-07-04 19:31:50'),
(20, 12, 4, '0000-00-00', NULL, 0, NULL, 100000, 100000, '2024-07-04 21:28:55'),
(21, 15, 6, '2024-07-05', '18:00:00', 1, '19:00:00', 200000, 200000, '2024-07-04 22:50:07'),
(22, 16, 4, '0000-00-00', NULL, 0, NULL, 100000, 100000, '2024-07-05 08:49:02'),
(23, 17, 2, '2024-07-06', '16:00:00', 1, '17:00:00', 150000, 150000, '2024-07-05 10:19:37'),
(24, 17, 5, '2024-07-07', '16:00:00', 1, '17:00:00', 100000, 100000, '2024-07-05 10:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `provinsi` int(11) DEFAULT NULL,
  `kota` int(11) DEFAULT NULL,
  `address` text CHARACTER SET utf8 NOT NULL,
  `usertype` int(11) NOT NULL,
  `active` tinyint(3) UNSIGNED DEFAULT NULL,
  `photo` text CHARACTER SET utf8 DEFAULT NULL,
  `photo_type` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 NOT NULL,
  `salt` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `activation_code` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `forgotten_password_code` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `forgotten_password_time` int(10) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `last_login` int(11) DEFAULT NULL,
  `created_on` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `phone`, `provinsi`, `kota`, `address`, `usertype`, `active`, `photo`, `photo_type`, `ip_address`, `salt`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `last_login`, `created_on`, `modified`) VALUES
(1, 'SuperAdmin', 'superadmin', '$2y$08$TWMdtdacqPE5yEz9n1LwFuhEVmiDTTsupl12M45tCQihzF1tu2N/6', 'superadmin@gmail.com', '081228289766', 6, 151, 'asdasdasdsa', 1, 1, 'mazmi20180205001726', '.jpg', '::1', NULL, NULL, NULL, NULL, NULL, 1720149867, 2147483647, '2024-07-05 10:24:27'),
(2, 'Admin', 'administrator', '$2y$08$rnCngWyQhFLdVJijctNDKuwJZ8o9VfcSsZ9IM9XN71ugxIpQFeCWe', 'administrator@gmail.com', '08124124', NULL, NULL, 'kaldjlas', 2, 1, 'admin20180424102408', '.jpeg', '::1', NULL, NULL, NULL, NULL, NULL, 1716456137, 1524551716, '2024-05-23 16:22:17'),
(3, 'Batistuta', 'batistuta', '$2y$08$EET6QMLoCBIqmL.SySLUF.1TwJS0xP9WavXqNgycYurV/vq4azLuu', 'batistuta@gmail.com', '0812412414', 33, 327, 'Jl. Skdlajsdlasjkdl', 4, 1, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 1716731535, 1528634033, '2024-05-26 20:52:15'),
(4, 'User Premium', 'userpremium', '$2y$08$Wv3MA.DnwTNzBeF62o9neuSXeVdIA/bjlxOzSxtD6DtgStEBn//s.', 'userpremium@gmail.com', '0812412412', 3, 106, 'kaljdklasjdkl', 3, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1621252638, 1531807819, '2021-05-17 18:57:18'),
(5, 'Ahmad Fathurohman', 'fathurrhm808', '$2y$08$cvbTwrICzeuvEi2Rf23kpe0R.fMnZFVncjfd4F9ZouLPYCHlfsKs.', 'fathurrhm808@gmail.com', '08815665834', 3, 403, 'LINK KEBAHARAN', 4, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1718791570, 1713522968, '2024-06-19 17:06:10'),
(6, 'Lentera', 'lenterahendra552', '$2y$08$n0nsiR3lqSN/t.bajmYgrO0V9PJzTzR7momNWWz.pVsTBe/KxUw6S', 'lenterahendra552@gmail.com', '087871095538', 3, 402, 'Jl.Serang-Banten, Kebaharan Masjid Al-Manar Rt.01 Rw.08 No.45', 4, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1720146744, 1714807403, '2024-07-05 09:32:24'),
(7, 'test', 'test', '$2y$08$8WZJwGPjfbdq/.vQK7qUM.xqSfbJY/we1GYwnhwfnmF8A.f8l3wv.', 'test@gmail.com', '08888888', 3, 402, 'test', 4, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, NULL, 1714812512, NULL),
(8, 'salmanblack', 'black', '$2y$08$RT6YMcK08yp2wb5Tuyuwve2Q6oa7ITMKABh2FZBWpu2LytNtg8D1u', 'salmanganteng@gmail.com', '08261752517', 3, 106, 'Jl.Serang-Banten, Kebaharan Masjid Al-Manar Rt.01 Rw.08 No.45', 4, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, NULL, 1720145895, NULL),
(9, 'Rafli', 'rafli', '$2y$08$fsWrKauAUTK5/26kHYi2jOm0PrDpAjQiEJLkvtWYHSWGZo/SZpvEy', 'rafli@gmail.com', '08781095538', 9, 115, 'Margonda', 4, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1720149377, 1720149326, '2024-07-05 10:16:17');

-- --------------------------------------------------------

--
-- Table structure for table `users_group`
--

CREATE TABLE `users_group` (
  `id_group` int(11) NOT NULL,
  `name_group` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_group`
--

INSERT INTO `users_group` (`id_group`, `name_group`) VALUES
(1, 'SuperAdmin'),
(2, 'Administrator'),
(3, 'Member Premium'),
(4, 'Member Biasa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`);

--
-- Indexes for table `diskon`
--
ALTER TABLE `diskon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `foto_FK` (`album_id`);

--
-- Indexes for table `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `lapangan`
--
ALTER TABLE `lapangan`
  ADD PRIMARY KEY (`id_lapangan`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id_page`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id_subscriber`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_trans`),
  ADD KEY `transaksi_FK` (`user_id`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transdet`),
  ADD KEY `transaksi_detail_FK` (`lapangan_id`),
  ADD KEY `transaksi_detail_FK_1` (`trans_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_group`
--
ALTER TABLE `users_group`
  ADD PRIMARY KEY (`id_group`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jam`
--
ALTER TABLE `jam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lapangan`
--
ALTER TABLE `lapangan`
  MODIFY `id_lapangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id_subscriber` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_trans` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transdet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_group`
--
ALTER TABLE `users_group`
  MODIFY `id_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_FK` FOREIGN KEY (`album_id`) REFERENCES `album` (`id_album`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `transaksi_detail_FK` FOREIGN KEY (`lapangan_id`) REFERENCES `lapangan` (`id_lapangan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_detail_FK_1` FOREIGN KEY (`trans_id`) REFERENCES `transaksi` (`id_trans`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
