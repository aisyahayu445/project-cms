-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2024 at 01:35 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `caraousel`
--

CREATE TABLE `caraousel` (
  `id_caraousel` int NOT NULL,
  `judul` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `caraousel`
--

INSERT INTO `caraousel` (`id_caraousel`, `judul`, `foto`) VALUES
(6, '1', '20241208120608.jpg'),
(8, '2', '20241210061212.jpg'),
(9, '3', '20241210062257.jpg'),
(10, '4', '20241210062309.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `nama_kategori` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(5, 'MAKANAN'),
(6, 'MINUMAN');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int NOT NULL,
  `judul_website` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `profil_website` text COLLATE utf8mb4_general_ci NOT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `facebook` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `no_wa` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `judul_website`, `profil_website`, `instagram`, `facebook`, `email`, `alamat`, `no_wa`) VALUES
(1, 'Aishh', 'haiiiiiiiiiiiiiiiiiiiii', 'https://instagram/_.aissyh', 'facebook/aiisyy', 'ayua84673@gmail.com', 'Karanganyar', '089644016072');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_konten` int NOT NULL,
  `judul` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `id_kategori` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_general_ci NOT NULL,
  `jam_operasional` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `judul`, `keterangan`, `foto`, `slug`, `id_kategori`, `tanggal`, `username`, `harga`, `alamat`, `jam_operasional`) VALUES
(18, 'GUDEG YU DJUM WIJILAN 167', 'Gudeg adalah makanan khas Yogyakarta yang terkenal di seluruh Indonesia. Hidangan ini berbahan dasar nangka muda (gori) yang dimasak dengan santan dan bumbu rempah selama berjam-jam hingga menghasilkan cita rasa yang manis, gurih, dan aroma khas. Gudeg biasanya berwarna cokelat kemerahan, yang didapat dari penggunaan daun jati saat proses memasak. Teksturnya lembut dan sedikit berserat karena menggunakan nangka muda yang dimasak lama.              ', '20241126065445.jpg', 'GUDEG-YU-DJUM-WIJILAN-167', '5', '2024-11-26', 'aisyah', 'Rp. 15.000 ', 'Gudeg Yu Djum Wijilan 167 (Jl. Wijilan No.167, Panembahan, Kecamatan Kraton, Yogyakarta)        ', ' 06.00 WIB hingga 22.00 WIB    '),
(19, 'SATE KLATHAK PAK PONG', 'Sate Klathak adalah sate daging kambing yang dimasak dengan cara unik, yaitu hanya dibumbui garam dan dipanggang di atas besi jeruji. Disajikan dengan kuah gulai yang gurih, memberikan pengalaman rasa yang berbeda dari sate pada umumnya.      ', '20241126065836.jpg', 'SATE-KLATHAK-PAK-PONG', '5', '2024-11-26', 'aisyah', 'Rp. 27.000', ' Sate Klathak Pak Pong (Jalan Imogiri Timur KM 10, Wonokromo, Pleret, Bantul)    ', '10.00 hingga 01.00 WIB'),
(20, 'OSENG MERCON BU NARTI', 'Oseng-oseng mercon adalah salah satu kuliner khas Yogyakarta yang terkenal dengan rasa pedas ekstremnya. Nama mercon yang berarti petasan menggambarkan sensasi \"meledak\" akibat kepedasan dari hidangan ini. Kuliner ini dibuat dari potongan daging sapi (biasanya bagian sandung lamur atau tetelan), yang ditumis bersama campuran cabai rawit merah dalam jumlah besar, bawang merah, bawang putih, lengkuas, daun salam, dan kecap manis.     ', '20241126070812.jpg', 'OSENG-MERCON-BU-NARTI', '5', '2024-11-26', 'aisyah', 'Rp. 20.000', '  Oseng Mercon Bu Narti (Jl. KH. Ahmad Dahlan, Purwodiningratan, Kota Yogyakarta)    ', '10:00 WIB hingga 21:00 WIB'),
(21, 'SEGO KUCING', 'Sego Kucing adalah hidangan ini terdiri dari nasi dalam porsi kecil dengan lauk sederhana seperti teri, tempe, atau sambal. Biasanya dijual di warung angkringan yang tersebar di Yogyakarta. Harganya pun sangat murah     ', '20241126071040.jpg', 'SEGO-KUCING', '5', '2024-11-26', 'aisyah', 'Rp. 11.000', ' Angkringan Sego Kucing (Jl. Sidobali, Purwodiningratan, Yogyakarta)    ', '16:00 WIB hingga 23:00 WIB'),
(22, 'MIE LETHEK KANG SUM', 'Mie Lethek adalah kuliner khas Bantul, Yogyakarta, yang memiliki keunikan tersendiri. Disebut \"lethek\" yang berarti kusam dalam bahasa Jawa, mie ini berwarna keruh kecokelatan karena tidak menggunakan pewarna atau pengawet dalam proses pembuatannya. Mie lethek terbuat dari tepung tapioka dan singkong, berbeda dari mie pada umumnya yang berbahan dasar gandum.     ', '20241126071310.jpg', 'MIE-LETHEK-KANG-SUM', '5', '2024-11-26', 'aisyah', 'Rp. 15.000', ' Mie Lethek Kang Sum (Jl. Raya Godean KM 12, Yogyakarta)    ', '10:00 WIB hingga 21:00 WIB'),
(23, 'MANGUT LELE MBAH MARTO', 'Mangut Lele adalah kuliner khas Yogyakarta yang berbahan dasar lele, diolah dalam kuah santan pedas dengan bumbu rempah-rempah yang khas. Terdapat dua cara utama untuk mengolah mangut lele: lele goreng dan lele asap. Lele yang diasap memberikan cita rasa khas dengan aroma smokey, sedangkan lele goreng memiliki tekstur lebih renyah. Hidangan ini biasanya disajikan dengan nasi hangat, menambah kenikmatannya.    ', '20241126071507.jpg', 'MANGUT-LELE-MBAH-MARTO', '5', '2024-11-26', 'aisyah', 'Rp. 30.000', ' Mangut Lele Mbah Marto (Jl. Raya Bantul No. 79, Godean, Bantul, Yogyakarta)   ', '09:00 WIB hingga 20:00 WIB'),
(24, 'AYAM GEPREK BU RUM', 'Ayam Geprek adalah hidangan khas Indonesia, khususnya populer di Yogyakarta. Hidangan ini terdiri dari ayam goreng tepung yang diulek atau digeprek bersama sambal bawang yang pedas. Ayam geprek memiliki cita rasa pedas dan gurih yang memanjakan lidah pecinta kuliner pedas, dengan tekstur ayam yang renyah berpadu sambal yang segar dan menyengat.    ', '20241126071644.jpg', 'AYAM-GEPREK-BU-RUM', '5', '2024-11-26', 'aisyah', 'Rp. 20.000', ' Ayam Geprek Bu Rum (Jl. Wulung, Papringan, Caturtunggal, Kecamatan Depok, Sleman, Yogyakarta)   ', ' 10:00 WIB hingga 21:00 WIB'),
(25, 'TENGKLENG GAJAH', 'engkleng Gajah adalah hidangan khas Yogyakarta berupa sup kambing yang mirip dengan gulai namun kuahnya lebih encer. Meskipun namanya \"Gajah,\" hidangan ini tidak mengandung daging gajah; nama tersebut hanya merujuk pada porsinya yang besar atau jumbo. Tengkleng Gajah terdiri dari potongan daging, tulang kambing, serta jeroan yang dimasak selama berjam-jam agar bumbu meresap sempurna. Rasanya gurih dan kaya rempah, cocok dinikmati dalam keadaan hangat.    ', '20241126071944.jpg', 'TENGKLENG-GAJAH', '5', '2024-11-26', 'aisyah', 'Rp. 35.000', ' Warung Tengkleng Gajah (Jl. Kaliurang Km. 9,3, Gantalan, Ngaglik, Sleman, Yogyakarta)   ', '10:00 WIB hingga 21:00 WIB'),
(26, 'SATE KERE BU DIBYO', 'Sate Kere adalah sate sederhana dari potongan tempe, gembus, atau tahu yang disajikan dengan bumbu kacang. Cocok sebagai alternatif sate daging dan rasanya khas dengan sentuhan rempah-rempah lokal.     ', '20241126072146.jpg', 'SATE-KERE-BU-DIBYO', '5', '2024-11-26', 'aisyah', 'Rp5.000', ' Sate Kere Bu Dibyo (Jl. Pabringan No.16, Ngupasan, Kec. Gondomanan)   ', '09:00 WIB hingga 20:00 WIB'),
(27, 'BAKMI JAWA MBAH GITO', 'Bakmi Jawa adalah hidangan mie khas Yogyakarta yang terbuat dari mie kuning dengan bumbu sederhana namun kaya rasa. Biasanya, mie ini dimasak dengan kaldu ayam yang gurih, ditambahkan dengan telur, suwiran ayam, kol, dan bawang goreng. Terkadang, bihun juga ditambahkan untuk variasi tekstur. Bakmi Jawa bisa dinikmati dalam dua versi: bakmi goreng atau bakmi kuah.    ', '20241126072329.jpg', 'BAKMI-JAWA-MBAH-GITO', '5', '2024-11-26', 'aisyah', 'Rp. 22.000', ' Bakmi Jawa Mbah Gito (Jl. Nyi Ageng Nis 9, Peleman-Rejowinangun, Kotagede)   ', '09:00 WIB hingga 21:00 WIB'),
(28, 'SOTO LENTHOK PAK GARENG', 'Soto Lenthok adalah makanan khas Yogyakarta yang memiliki ciri khas perpaduan antara kuah soto yang gurih dengan lenthok, yaitu kue singkong goreng yang bertekstur renyah. Soto ini menggunakan kuah ayam yang kaya rempah, seperti kunyit, jahe, dan bawang putih, dengan tambahan daging ayam suwir, telur rebus, dan berbagai pelengkap lainnya.     ', '20241126073214.jpg', 'SOTO-LENTHOK-PAK-GARENG', '5', '2024-11-26', 'aisyah', 'Rp. 12.000', ' Soto Lenthok Pak Gareng (Jl. Godean Km 7, No. 68, Gesikan, Sidoarum, Godean, Sleman, Yogyakarta)   ', ' 08:00 WIB hingga 15:00 WIB'),
(31, 'SATE KELINCI MBAH GANIS', 'Sate Kelinci adalah Sate dengan bahan dasar daging kelinci, yang biasanya memiliki tekstur empuk dan rasa yang gurih. Hidangan ini bisa ditemukan di daerah pegunungan, seperti Kaliurang.     ', '20241126074200.jpg', 'SATE-KELINCI-MBAH-GANIS', '5', '2024-11-26', 'aisyah', 'Rp. 18.500', ' Warung Sate Kelinci Mbah Ganis (Jl. Candi Gebang No. 15, Mlati, Sleman, Yogyakarta)   ', ' 10:00 WIB hingga 20:00 WIB'),
(32, 'PECEL BU RAMELAN', 'Pecel adalah salah satu hidangan tradisional Indonesia yang terkenal, khususnya di wilayah Jawa. Hidangan ini terbuat dari berbagai sayuran yang direbus, seperti bayam, tauge, kacang panjang, daun kemangi, dan daun turi. Sayuran tersebut kemudian disiram dengan sambal kacang yang kaya rasa, terbuat dari kacang tanah, cabai, kencur, daun jeruk purut, asam jawa, dan bahan lainnya. Pecel biasanya disajikan dengan nasi putih hangat, tempe goreng, rempeyek, atau lempeng beras.    ', '20241126074502.jpg', 'PECEL-BU-RAMELAN', '5', '2024-11-26', 'aisyah', 'Rp. 6.000', ' Pecel Bu Ramelan (Jl. Laksda Adisucipto No. 6A, Ambarukmo, Caturtunggal, Sleman, Yogyakarta)   ', ' 08:00 WIB hingga 20:00 WIB'),
(34, 'WEDANG UWUH IMOGIRI', 'Wedang Uwuh adalah minuman tradisional khas Yogyakarta yang terbuat dari campuran berbagai rempah, seperti jahe, kayu secang, cengkeh, kayu manis, bunga lawang, dan daun-daun seperti daun jeruk dan daun pandan. Minuman ini memiliki warna merah yang pekat, yang berasal dari kayu secang, dan dikenal karena aroma yang wangi dan rasanya yang hangat. Selain memberikan rasa yang segar, Wedang Uwuh juga dikenal memiliki banyak manfaat kesehatan. Beberapa di antaranya adalah meningkatkan sistem imun, memperlancar peredaran darah, dan membantu pencernaan.    ', '20241126075035.jpg', 'WEDANG-UWUH-IMOGIRI', '6', '2024-11-26', 'aisyah', 'Rp. 3.000', ' Wedang Uwuh Imogiri (Imogiri, Yogyakarta)   ', ' 08:00 WIB hingga 17:00 WIB'),
(35, 'WEDANG RONDE MBAH PAYEM', 'Wedang ronde adalah minuman khas dari Yogyakarta dan Jawa Tengah yang terkenal dengan rasa hangat dan menyegarkan, cocok dinikmati pada malam hari atau cuaca dingin. Minuman ini terbuat dari kuah jahe yang diberi campuran rempah seperti serai dan cengkeh, serta bola ketan (ronde) yang biasanya diisi dengan kacang tanah. Dalam penyajiannya, wedang ronde juga dilengkapi dengan bahan pelengkap seperti potongan roti tawar, kolang-kaling, dan kacang sangrai.    ', '20241126075337.jpg', 'WEDANG-RONDE-MBAH-PAYEM', '6', '2024-11-26', 'aisyah', 'Rp. 10.000', ' Wedang Ronde Mbah Payem (Jalan Kauman, sebelah barat Alun-Alun Utara Keraton Yogyakarta)   ', ' 17:00 WIB hingga 23:00 WIB'),
(36, 'ES DAWET MBAH HARI', 'Es Dawet adalah minuman segar khas Yogyakarta yang terkenal karena kelezatannya. Terbuat dari cendol berwarna hijau yang terbuat dari tepung beras atau aren, es dawet disajikan dengan santan kental dan siraman gula merah manis. Beberapa kedai legendaris yang menyajikan es dawet ayu ini memiliki cita rasa unik yang khas, termasuk es dawet di Pasar Beringharjo yang sudah ada sejak 1965.     ', '20241126075723.jpg', 'ES-DAWET-MBAH-HARI', '6', '2024-11-26', 'aisyah', 'Rp. 5.000', ' Es Dawet Mbah Hari (Pasar Beringharjo)   ', ' 08:00 WIB hingga 16:00 WIB'),
(37, 'ES KOPYOR PAK SUBRO', 'Es kopyor adalah minuman khas Indonesia yang terbuat dari kelapa muda dengan daging kelapa yang terlepas atau \"kopyor\", yang memberikan tekstur lembut dan kenyal. Biasanya, kelapa kopyor ini digantikan dengan bahan sintetis seperti agar-agar untuk menciptakan tekstur yang serupa. Minuman ini disajikan dengan es batu, sirup cocopandan, dan susu kental manis, memberikan rasa manis dan segar.    ', '20241126075841.jpg', 'ES-KOPYOR-PAK-SUBRO', '6', '2024-11-26', 'aisyah', 'Rp. 10.000', ' Es Kopyor Pak Subro (Jalan Imogiri Timur)   ', ' 09:00 WIB hingga 17:00 WIB'),
(38, 'ES TAPE KETAN PAK MANTO', 'Es tape ketan adalah minuman segar yang terbuat dari tape ketan (fermentasi ketan) yang diberi tambahan bahan-bahan seperti susu kental manis, sirup, dan es batu. Minuman ini sangat populer di Yogyakarta dan daerah sekitarnya. Pada umumnya, es tape ketan disajikan dengan berbagai variasi, termasuk campuran santan, sirup leci, dan bahan-bahan lain yang memberikan rasa manis dan segar.    ', '20241126081337.jpg', 'ES-TAPE-KETAN-PAK-MANTO', '6', '2024-11-26', 'aisyah', 'Rp. 7.000', ' Es Tape Ketan Pak Manto (Jalan Malioboro)   ', ' 09.00 WIB hingga 22.00 WIB');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `username` varchar(70) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `level` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `nama`, `password`, `level`) VALUES
(9, 'aisyah', 'aish', '4a07524cda8bcbe5e9811a8a38289b7c', 'Admin'),
(11, 'kontributor', 'kontributor', '67cfd69a4e5fb27fc4aeb0fa8383161e', 'kontributor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caraousel`
--
ALTER TABLE `caraousel`
  ADD PRIMARY KEY (`id_caraousel`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caraousel`
--
ALTER TABLE `caraousel`
  MODIFY `id_caraousel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
