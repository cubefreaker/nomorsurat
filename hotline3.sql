-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 16, 2014 at 08:09 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hotline3`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE IF NOT EXISTS `dokter` (
  `ID_dokter` int(6) NOT NULL AUTO_INCREMENT,
  `no_dokter` varchar(6) NOT NULL,
  `nama_dokter` varchar(15) NOT NULL,
  `hari_praktek` varchar(10) NOT NULL,
  PRIMARY KEY (`ID_dokter`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100004 ;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`ID_dokter`, `no_dokter`, `nama_dokter`, `hari_praktek`) VALUES
(100001, 'DTR001', 'dr. Azhari', '-'),
(100002, 'DTR002', 'dr. Temmy', '-'),
(100003, 'DTR003', 'dr. Erwin', '-');

-- --------------------------------------------------------

--
-- Table structure for table `konseling`
--

CREATE TABLE IF NOT EXISTS `konseling` (
  `ID_konseling` int(6) NOT NULL AUTO_INCREMENT,
  `no_konseling` varchar(6) NOT NULL,
  `tanggal_konseling` date NOT NULL,
  `keluhan` text NOT NULL,
  `solusi` text NOT NULL,
  `ID_penelepon` int(6) NOT NULL,
  `ID_konselor` int(6) NOT NULL,
  PRIMARY KEY (`ID_konseling`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=200059 ;

--
-- Dumping data for table `konseling`
--

INSERT INTO `konseling` (`ID_konseling`, `no_konseling`, `tanggal_konseling`, `keluhan`, `solusi`, `ID_penelepon`, `ID_konselor`) VALUES
(200001, 'K00001', '2012-01-02', 'CIUMAN SAMBIL PEGANG PAYUDARA, APA BISA TERTULAR HIV?', 'MENJELASKAN CARA PENULARAN HIV.', 700001, 300001),
(200002, 'K00002', '2012-01-02', 'HIV POSITIF, APA HARUS BUKA STATUS KEPADA PACAR?', 'PERTIMBANGKAN UNTUNG & RUGINYA JIKA MEMBUKA STATUS, TETAPI TETAP JAGA PERILAKU AMAN.', 700002, 300001),
(200003, 'K00003', '2012-01-03', 'AKHIR-AKHIR INI MENSTRUASI BANYAK DAN LAMA, BIASANYA ENGGA. KENAPA?', 'FAKTOR-AKTOR YANG MEMPENGARUHI : ASUPAN GIZI, STRES, KELELAHAN ATAUPUN ADA GANGGUAN LAIN.', 700003, 300001),
(200004, 'K00004', '2012-01-03', 'MAU KETEMU DENGAN ORANG TUA PASANGAN, TAPIKHAWATIR DITANYA TENTANG STATUS.', 'SIAP LEBIH BAIK DITUNDA DULU, ATAU BAHAS HAL YANG LEBIH MENARIK.', 700002, 300001),
(200005, 'K00005', '2012-01-03', 'SUDAH KETEMU ORANG TUA PASANGAN DAN MEMBAHAS HOBI DAN PEKERJAAN. TERIMA KASIH MASUKKANNYA.', '-', 700002, 300001),
(200006, 'K00006', '2012-01-07', 'PERNAH PUNYA MASALAH YANG BERESIKO, TAPI SUDAH TIGA TAHUN YANG LALU DAN SAMPAI SEKARANG SEMUANYA BAIK-BAIK SAJA.', 'JENIS RESIKO DAN TAHAP PERJALANAN HIV. ORANG YANG TERINFEKSI TIDAK BISA DICIRIKAN SECARA FISIK.', 700004, 300001),
(200007, 'K00007', '2012-01-07', 'TES HIV DIMANA, DAN BERAPA BIAYANYA?', 'PRODIA, ICR, DAN BEBERAPA TEMPAT LAINNYA. SEKITAR 100-200 RIBU.', 700005, 300001),
(200008, 'K00008', '2012-01-07', 'MASIHKAH ADA HARAPAN HIDUP NORMAL UNTUK ODHA?', 'ADA, KENAPA TIDAK?', 700006, 300001),
(200009, 'K00009', '2012-01-10', 'SELALU PAKAI KONSOM KENAPA TIBA-TIBA HAMIL?', 'CEK ULANG DULU. JELASKAN CARA MEMAKAI KONDOM YANG BENAR.', 700007, 300001),
(200010, 'K00010', '2012-01-22', 'JIKA POSITIF HIV, APA HARUS MINUM OBAT SEUMUR HIDUP?', '-', 700008, 300001),
(200011, 'K00011', '2012-01-24', 'APA SUDAH PASTI ANAK TIDAK TERTULAR (UMUR 10 TAHUN, SUDAH DI TES 2 KALI), TAPI ISTRI JUGA POSITIF HIV.', 'JELASKAN RESIKO PENULARAN HIV. PASTI NEGATIF, NAMUN TIDAK BERLAKU SEUMUR HIDUP.', 700009, 300001),
(200012, 'K00012', '2012-02-04', 'SUAMI POSITIF, DIA SUDAH TES BERKALA SELAMA 6 BULAN. TERAKHIR SUDAH TIDAK TERDETEKSI (NEGATIF). APA ANAK-ANAK HARUS DITES?', 'ANAK HANYA TERTULAR DARI IBU. JIKA IBU NEGATIF, ANAK PASTI NEGATIF. JIKA IBU POSITIF, ADA KEMUNGKINAN ANAK JUGA POSITIF.', 700010, 300001),
(200013, 'K00013', '2012-02-07', 'HIV POSITIF DAN DAPAT TAWARAN STUDY DI SINGAPURA, APA BISA?', 'SINGAPURA NEGARA YANG PALING MENDISKRIMINASIKAN. PASTI KETAHUAN DAN DIDEPORTASI.', 700011, 300001),
(200014, 'K00014', '2012-02-07', 'ONANI BAHAYA NGGAK?', 'TIDAK.', 700012, 300001),
(200015, 'K00015', '2012-02-08', 'EMANG ROKOK SAMA DENGAN NARKOBA? HABIS IKUT SEMINAR JADI BINGUNG.', 'ROKOK PINTU GERBANG NARKOBA, KARENA MENIMBULKAN KECANDUAN DAN BIASANYA AKAN MENINGKAT KE TAHAP YANG LEBIH TINGGI.', 700013, 300001),
(200016, 'K00016', '2012-03-05', 'SUDAH TES HIV DAN HASILNYA NEGATIF, TAPI KENAPA ADA TANDA-TANDA SEPERTI ORANG AIDS?', 'JANGAN PANIK. SARIAWAN BELUM TENTU DIA TERKENA AIDS WALAUPUN SARIAWAN BISA JADI MERUPAKAN GEJALA AIDS.', 700014, 300001),
(200017, 'K00017', '2012-03-06', 'ADAKAH FASILITAS CD4 DAN VL DI KLINIK YPI?', 'PENGAMBILAN DARAH BISA, TAPI KEMUDIAN DIKIRIM KE RS DHARMAIS ATAU RSCM.', 700015, 300001),
(200018, 'K00018', '2012-03-06', 'MINUM ARV TERATUR TAPI KENAPA BADAN TETAP KURUS DAN KENA BRONCHITIS PADAHAL TIDAK TERDETEKSI VL?', 'BISA SAJA KENA BRONCHITIS WALAU VL TIDAK TERDETEKSI. ORANG YANG TIDAK KENA HIV PUN BISA KENA BRONCHITIS.', 700016, 300001),
(200019, 'K00019', '2012-03-10', 'ADAKAH BANTUAN CESSAR UNTUK ODHA HAMIL YANG TIDAK MAMPU?', 'ADA, DAN MEMERLUKAN SKTM.', 700017, 300001),
(200020, 'K00020', '2012-03-14', 'SEBELUM MENIKAH TES HIV DAN HASILNYA NEGATIVE-POSITIVE INTERMEDIATE.', 'TES ULANG.', 700018, 300001),
(200021, 'K00021', '2012-03-17', 'CMV BISA DIOBATI NGGAK DALAM KONDISI CD4 DIATAS 100?', 'BIASANYA KALAU BELUM URGENT NAIKKAN CD4 JADI DIATAS 150.', 700019, 300001),
(200022, 'K00022', '2012-03-17', 'DI SURABAYA ADA YPI NGGAK? INGIN JADI RELAWAN DAN SIAP-SIAP SHARING.', 'YPI TIDAK ADA, NAMUN ADA LEMBAGA SEJENIS YPI DISANA.', 700009, 300001),
(200023, 'K00023', '2012-03-28', 'INGIN KETEMU TEMAN-TEMAN SESAMA ODHA, APA ADA WADAHNYA? BAYAR NGGAK?', 'DATANG KE ACARA OBRASS TANGGAL 31 MARET 2012, GRATIS.', 700020, 300001),
(200024, 'K00024', '2012-03-30', 'SUDAH SUNTIK, KENAPA MASIH BURAM PENGLIHATANNYA?', 'SABAR. CD4 TURUN DAN PROSESNYA LAMA.', 700021, 300001),
(200025, 'K00025', '2012-03-30', 'PACAR DUDA TANPA ANAK. ISTRI POSITIF KENA AIDS, APAKAH DIA PASTI TERTULAR? SUDAH TES HASILNYA NEGATIF.', 'JELASKAN PENULARAN HIV DAN PERJALANAN INFEKSI HIV.', 700022, 300001),
(200026, 'K00026', '2012-04-02', 'PUNYA TEMAN SUAMI POSITIF AIDS, SUDAH TES REAKTIF. SETELAH BEROBAT DITES LAGI NAMUN HASILNYA TETAP REAKTIF.', 'OBAT AIDS TIDAK MENGHILANGKAN HIV SECARA TOTAL, HANYA SEBAGAI ANTIBODY.', 700023, 300001),
(200027, 'K00027', '2012-04-18', 'APA ARTI HASIL TES REAKTIF?', 'ARTINYA PADA TUBUH SESEORANG TELAH TERBENTUK ANTIBODY TERHADAP HIV.', 700024, 300001),
(200028, 'K00028', '2012-04-19', 'SEDANG MINUM ARV, BOLEHKAH MINUM OBAT PENENANG JUGA?', 'JIKA OBABT TERSEBUT ADALAH RESEP DOKTER, DAN DOKTERNYA MENGETAHUI OBAT APA SAJA YANG SEDANG DIKONSUMSI, BOLEH-BOLEH SAJA.', 700025, 300001),
(200029, 'K00029', '2012-04-27', 'SETELAH MINUM OBAT ARV MALAH SEPERTI KENA CACAR AIR.', 'KEMUNGKINAN ALERGI, COBA PERIKSA KE DOKTER.', 700026, 300001),
(200030, 'K00030', '2012-05-02', 'HABIS MINUM KOPI SUSU (30 MENIT YANG LALU), BOLEHKAH MINUM ARV?', 'BOLEH.', 700021, 300001),
(200031, 'K00031', '2012-05-02', 'KALAU ODHA YANG LEMAH MINUM OBAT TBC DAN ARV BERBARENGAN BAHAYA GA?', 'TENTU BAHAYA KALAU TIDAK DALAM PENGAWASAN DOKTER. LEBIH BAIK KONSULTASIKAN KE DOKTER.', 700027, 300001),
(200032, 'K00032', '2012-05-05', 'APAKAH TES HIV BISA DITUNGGU HASILNYA? BERAPA BAYARNYA?', 'TIDAK, SENIN-KAMIS DENGAN PERJANJIAN, SABTU-MINGGU LABORATORIUM TUTUP.', 700028, 300001),
(200033, 'K00033', '2012-05-16', 'BAGAIMANA CARANYA MENJADI RELAWAN?', 'DATANG DAN IKUTI PELATIHAN DAN KEGIATAN YANG ADA DI LEMBAGA.', 700029, 300001),
(200034, 'K00034', '2012-06-05', 'SUDAH 10 TAHUN TERDIAGNOSA HIV, TIDAK MINUM ARV. SEKARANG MULAI MINUM ARV, TAPI KENAPA KONDISINYA MAKIN BURUK. MATA SEBELAH KIRI SUDAH TIDAK BISA MELIHAT.', 'KONDISI BURUK YANG SEKARANG ANDA RASAKAN BUKAN KARENA ARVNYA, TAPI KARENA PERJALANAN PENYAKITNYA. SERING-SERING DATANG KE ACARA-ACARA YANG DIADAKAN AGAR TIDAK MERASA SENDIRI.', 700030, 300001),
(200035, 'K00036', '2012-06-18', 'DI KEMALUANNYA ADA SEMACAM KUTIL TAPI NGGAK SAKIT.', '-', 700032, 300001),
(200036, 'K00037', '2012-06-19', 'MAU AKSES ARV DI JAKARTA BAGAIMANA CARANYA?', 'MINTA SURAT RUJUKAN, BAWA HASIL-HASIL YANG ADA, CATAT OBAT YANG DIMINUM, DAN DATANG KE KLINIK.', 700033, 300001),
(200037, 'K00038', '2012-06-19', 'GELISAH DENGAN KABAR ARV TIDAK GRATIS LAGI', 'WACANA YANG TIDAK PERLU DIBUAT GALAU.', 700034, 300001),
(200038, 'K00039', '2012-06-19', 'GELISAH DENGAN KABAR ARV TIDAK GRATIS LAGI', 'WACANA YANG TIDAK PERLU DIBUAT GALAU.', 700035, 300001),
(200039, 'K00040', '2012-06-19', 'GELISAH DENGAN KABAR ARV TIDAK GRATIS LAGI', 'WACANA YANG TIDAK PERLU DIBUAT GALAU.', 700036, 300001),
(200040, 'K00041', '2012-06-19', 'GELISAH DENGAN KABAR ARV TIDAK GRATIS LAGI', 'WACANA YANG TIDAK PERLU DIBUAT GALAU.', 700037, 300001),
(200041, 'K00042', '2012-06-19', 'GELISAH DENGAN KABAR ARV TIDAK GRATIS LAGI', 'WACANA YANG TIDAK PERLU DIBUAT GALAU.', 700038, 300001),
(200042, 'K00043', '2012-06-23', 'INGIN HAMIL TAPI TIDAK HAMIL.', '-', 700039, 300001),
(200043, 'K00044', '2012-06-23', 'INGIN HAMIL TAPI TIDAK HAMIL.', '-', 700040, 300001),
(200044, 'K00045', '2012-07-03', '-', '-', 700041, 300001),
(200045, 'K00046', '2012-08-07', 'ARV BISA SEBABKAN GANGGUAN TIDUR, HATI, DAN WARNA KULIT.', 'LEBIH BESAR MANFAATNYA.', 700042, 300001),
(200046, 'K00047', '2012-08-10', 'TERLANJUR HUBUNGAN TAPI TIDAK SAMPAI INTERCOURSE, BISA TERTULAR HIV TIDAK?', 'JELASKAN PENULARAN HIV DAN PERJALANAN INFEKSI HIV.', 700043, 300001),
(200047, 'K00048', '2012-08-12', 'BETUL NGGAK ORANG YANG HIV BISA DILIHAT DARI PERILAKUNYA?', '-', 700044, 300001),
(200048, 'K00049', '2014-01-23', 'INGIN MENGETAHUI STATUS.', 'DATANG DENGAN PERJANJIAN.', 700045, 300001),
(200049, 'K00050', '2014-01-23', 'CD4 TURUN TERUS, PADAHAL TIDAK PERNAH LUPA MINUM OBAT. RESISTEN KAH?', 'BISA IYA, BISA TIDAK. CEK CD4, VL DAN  BB SERTA KELUHAN.', 700046, 300001),
(200050, 'K00051', '2014-01-24', 'DIRABA-RABA SAMPAI KELUAR, TIDAK COPOT BAJU. BISA TERTULAR HIV NGGAK KALAU DIA TERNYATA HIV POSITIF?', 'HIV TIDAK BEGITU MUDAH MENULAR WALAU BERESIKO DENGAN KEGIATAN TERSEBUT.', 700047, 300001);

-- --------------------------------------------------------

--
-- Table structure for table `konselor`
--

CREATE TABLE IF NOT EXISTS `konselor` (
  `ID_konselor` int(6) NOT NULL AUTO_INCREMENT,
  `ID_user` int(6) NOT NULL,
  `no_konselor` varchar(6) NOT NULL,
  `nama_konselor` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_konselor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=300005 ;

--
-- Dumping data for table `konselor`
--

INSERT INTO `konselor` (`ID_konselor`, `ID_user`, `no_konselor`, `nama_konselor`) VALUES
(300001, 110001, 'KSL001', 'ATIK'),
(300003, 0, 'KSL002', 'JUJU'),
(300004, 0, 'KSL003', 'ELOK SATITI');

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan_pasien`
--

CREATE TABLE IF NOT EXISTS `kunjungan_pasien` (
  `ID_kunjungan` int(6) NOT NULL AUTO_INCREMENT,
  `no_kunjungan` varchar(6) NOT NULL,
  `ID_dokter` int(6) NOT NULL,
  `ID_pasien` int(6) NOT NULL,
  `ID_obat` int(6) NOT NULL,
  `tanggal_kunjungan` date NOT NULL,
  `diagnosa_pasien` text NOT NULL,
  `keterangan` text,
  `resep_obat` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_kunjungan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE IF NOT EXISTS `obat` (
  `ID_obat` int(6) NOT NULL AUTO_INCREMENT,
  `no_obat` varchar(6) NOT NULL,
  `nama_obat` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_obat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=500048 ;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`ID_obat`, `no_obat`, `nama_obat`) VALUES
(500001, 'OB0001', 'AMOXICILLIN 500mg'),
(500002, 'OB0002', 'ALLOPURINOL'),
(500003, 'OB0003', 'AMBROXOL 30mg'),
(500004, 'OB0004', 'AMBROXOL SYRUP'),
(500005, 'OB0005', 'AMOXICILLIN SYRUP'),
(500006, 'OB0006', 'ANTASIDA DOEN'),
(500007, 'OB0007', 'ANTASIDA SYRUP'),
(500008, 'OB0008', 'ASAM MEFENAMAT'),
(500009, 'OB0009', 'CAPTOPRIL 12,5mg'),
(500010, 'OB0010', 'CAPTOPRIL 25mg'),
(500011, 'OB0011', 'CAVIPLEX'),
(500012, 'OB0012', 'CIPROFLOXACIN'),
(500013, 'OB0013', 'CETIRIZINE'),
(500014, 'OB0014', 'COTRIMOKSAZOLE'),
(500015, 'OB0015', 'CURCUMA TABLET'),
(500016, 'OB0016', 'DEPOPROGESTIN 3ml (u'),
(500017, 'OB0017', 'DEXTEEM PLUS'),
(500018, 'OB0018', 'DEXTRAL'),
(500019, 'OB0019', 'ETABION TABLET'),
(500020, 'OB0020', 'FG TROCES'),
(500021, 'OB0021', 'FLUDANE PLUS'),
(500022, 'OB0022', 'GASTRUCID SYRUP'),
(500023, 'OB0023', 'GASTRUCID TABLET'),
(500024, 'OB0024', 'IBUPROFEN 400mg'),
(500025, 'OB0025', 'KALMETHASONE'),
(500026, 'OB0026', 'KETOCONAZOLE'),
(500027, 'OB0027', 'LEVOFLOXACIN'),
(500028, 'OB0028', 'LIBROZYM'),
(500029, 'OB0029', 'LORATADINE'),
(500030, 'OB0030', 'MELOXICAM'),
(500031, 'OB0031', 'MOLEXFLU'),
(500032, 'OB0032', 'NEORODEX'),
(500033, 'OB0033', 'NEOUROPYRON-V'),
(500034, 'OB0034', 'NEW DIATABS'),
(500035, 'OB0035', 'OBH COMBI SYRUP'),
(500036, 'OB0036', 'OMEPRAZOLE 20mg'),
(500037, 'OB0037', 'PARACETAMOL'),
(500038, 'OB0038', 'PIROXICAM 10mg'),
(500039, 'OB0039', 'PREDNISON'),
(500040, 'OB0040', 'PROPRANOLOL 10mg'),
(500041, 'OB0041', 'PROTIFED'),
(500042, 'OB0042', 'PYRAZINAMIDE'),
(500043, 'OB0043', 'RANITIDINE'),
(500044, 'OB0044', 'SPASMINAL'),
(500045, 'OB0045', 'TRAMADOL 50mg'),
(500046, 'OB0046', 'TRANSAMIN 500mg'),
(500047, 'OB0047', 'VITAZYM');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE IF NOT EXISTS `pasien` (
  `ID_pasien` int(6) NOT NULL AUTO_INCREMENT,
  `no_rm` varchar(6) NOT NULL,
  `nama_pasien` varchar(15) NOT NULL,
  `umur` varchar(2) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `alamat_pasien` varchar(100) NOT NULL,
  `riwayat_pasien` text,
  `asal_rujukan` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID_pasien`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=600006 ;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`ID_pasien`, `no_rm`, `nama_pasien`, `umur`, `jenis_kelamin`, `alamat_pasien`, `riwayat_pasien`, `asal_rujukan`) VALUES
(600001, 'RM0808', 'SUPRIYANTO', '22', 'L', 'LAP. TENIS KOMP. TRILOKA', '-', 'UMUM'),
(600003, 'RM0809', 'YUDI', '30', 'L', 'KOMP. PLN DUREN TIGA RT.012/02', '-', 'UMUM'),
(600004, 'RM0810', 'RIFDA A.', '5', 'P', 'JL. SARINAH I NO. 8 PENGADE', '-', 'UMUM'),
(600005, 'RM5154', 'TN. JEFRY PANDE', '-', 'L', 'JL. NUSA I RT.01/03 NO.18 CILILITAN', '-', 'UMUM');

-- --------------------------------------------------------

--
-- Table structure for table `penelepon`
--

CREATE TABLE IF NOT EXISTS `penelepon` (
  `ID_penelepon` int(6) NOT NULL AUTO_INCREMENT,
  `no_penelepon` varchar(6) NOT NULL,
  `nama_penelepon` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `umur` varchar(2) NOT NULL,
  `asal_rujukan` varchar(25) NOT NULL,
  `riwayat_penelepon` text NOT NULL,
  PRIMARY KEY (`ID_penelepon`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=700048 ;

--
-- Dumping data for table `penelepon`
--

INSERT INTO `penelepon` (`ID_penelepon`, `no_penelepon`, `nama_penelepon`, `jenis_kelamin`, `umur`, `asal_rujukan`, `riwayat_penelepon`) VALUES
(700001, 'P00001', 'TANADI', 'L', '33', '-', '-'),
(700002, 'P00002', 'FRED', 'L', '25', '-', '-'),
(700003, 'P00003', 'INTAN', '1', 'P', '-', '-'),
(700004, 'P00004', 'LINDA', 'P', '27', '-', '-'),
(700005, 'P00005', 'DANNY', 'L', '35', '-', '-'),
(700006, 'P00006', 'YANTI', 'L', '32', '-', '-'),
(700007, 'P00007', 'ANNE', 'P', '22', '-', '-'),
(700008, 'P00008', 'NINA', 'P', '30', '-', '-'),
(700009, 'P00009', 'JACKY', 'L', '35', '-', '-'),
(700010, 'P00010', 'LISA', 'P', '36', '-', '-'),
(700011, 'P00011', 'IMAM', 'L', '19', '-', '-'),
(700012, 'P00012', 'INDRA', 'L', '14', '-', '-'),
(700013, 'P00013', 'ANDI', 'L', '15', '-', '-'),
(700014, 'P00014', 'EDO', 'L', '22', '-', '-'),
(700015, 'P00015', 'LIM', 'L', '43', '-', '-'),
(700016, 'P00016', 'LYDIA', 'P', '49', '-', '-'),
(700017, 'P00017', 'WIDI', 'P', '27', '-', '-'),
(700018, 'P00018', 'AR', 'L', '-', '-', '-'),
(700019, 'P00019', 'JAYA S.', 'L', '29', '-', '-'),
(700020, 'P00020', 'JALI RAMA', 'L', '26', '-', '-'),
(700021, 'P00021', 'JACK', 'L', '36', '-', '-'),
(700022, 'P00022', 'LIA', 'P', '26', '-', '-'),
(700023, 'P00023', 'GITA', 'P', '28', '-', '-'),
(700024, 'P00024', 'DEWI', 'P', '30', '-', '-'),
(700025, 'P00025', 'NONI', 'P', '64', '-', '-'),
(700026, 'P00026', 'DIANA', 'P', '43', '-', '-'),
(700027, 'P00027', 'IKA', 'P', '24', '-', '-'),
(700028, 'P00028', 'ARTA', 'L', '28', '-', '-'),
(700029, 'P00029', 'ELLY', 'P', '19', '-', '-'),
(700030, 'P00030', 'DADANG', 'L', '36', '-', '-'),
(700031, 'P00031', 'ITANG', 'L', '22', '-', '-'),
(700032, 'P00032', 'ACHONG', 'L', '28', '-', '-'),
(700033, 'P00033', 'TOMMY', 'L', '37', '-', '-'),
(700034, 'P00034', 'TIA', 'P', '20', '-', '-'),
(700035, 'P00035', 'ERIK', 'L', '22', '-', '-'),
(700036, 'P00036', 'DONI', 'L', '24', '-', '-'),
(700037, 'P00037', 'SOFA', 'P', '26', '-', '-'),
(700038, 'P00038', 'FAJAR', 'L', '28', '-', '-'),
(700039, 'P00039', 'ELY', 'P', '27', '-', '-'),
(700040, 'P00040', 'LISA', 'P', '37', '-', '-'),
(700041, 'P00041', 'RHS', 'L', '47', '-', '-'),
(700042, 'P00042', 'FERY', 'L', '43', '-', '-'),
(700043, 'P00043', 'ANA', 'P', '20', '-', '-'),
(700044, 'P00044', 'EGA', 'L', '14', '-', '-'),
(700045, 'P00045', 'ANDI', 'L', '40', '-', '-'),
(700046, 'P00046', 'FERDI', 'L', '47', '-', '-'),
(700047, 'P00047', 'PIPIH', 'P', '18', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `rekam_medis`
--

CREATE TABLE IF NOT EXISTS `rekam_medis` (
  `ID_rm` int(6) NOT NULL AUTO_INCREMENT,
  `tanggal_rm` date NOT NULL,
  `no_rm` varchar(6) NOT NULL,
  `ID_pasien` int(6) NOT NULL,
  `riwayat_pasien` text NOT NULL,
  PRIMARY KEY (`ID_rm`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=800002 ;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_penelepon`
--

CREATE TABLE IF NOT EXISTS `riwayat_penelepon` (
  `ID_rp` int(6) NOT NULL AUTO_INCREMENT,
  `no_rp` varchar(6) NOT NULL,
  `ID_penelepon` int(6) NOT NULL,
  `riwayat_penelepon` text NOT NULL,
  `tanggal_rp` date NOT NULL,
  PRIMARY KEY (`ID_rp`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=900002 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID_user` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level_user` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'logout',
  `last_login` datetime NOT NULL,
  `last_logout` datetime NOT NULL,
  PRIMARY KEY (`ID_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=110002 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID_user`, `username`, `password`, `level_user`, `status`, `last_login`, `last_logout`) VALUES
(110001, 'admin', '309de4acba3a7d9b7738f78d786ac0b9', 'konselor', 'login', '2014-02-16 07:02:27', '2014-02-08 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
