-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 04:35 AM
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
-- Database: `dmm28`
--

-- --------------------------------------------------------

--
-- Table structure for table `datapelanggan`
--

CREATE TABLE `datapelanggan` (
  `id_pelanggan` int(30) NOT NULL,
  `pemesan` varchar(120) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `sewaMobil` varchar(120) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `noKtp` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `noHp` varchar(50) NOT NULL,
  `tglPesan` varchar(50) NOT NULL,
  `tglBalik` varchar(50) NOT NULL,
  `fotoKtp` varchar(100) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datapelanggan`
--

INSERT INTO `datapelanggan` (`id_pelanggan`, `pemesan`, `merk`, `sewaMobil`, `nama`, `noKtp`, `alamat`, `noHp`, `tglPesan`, `tglBalik`, `fotoKtp`, `status`) VALUES
(82, 'rendra', 'Toyota Agya ', '350000 ', 'Safira Anggraini Irawan', '1232719362714421', 'Jalan Banjarbaru', '6285775144906', '10-02-2023', '15-02-2023', 'ktp_1000.jpg', 1),
(83, 'rendra', 'Toyota Calya  ', '350000 ', 'Raka aji pratama', '923917231797312', 'Perum Saphire Estate blok C8', '6285775144906', '15-02-2023', '22-02-2023', 'ktp_1000.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `detailmobil`
--

CREATE TABLE `detailmobil` (
  `id_mobil` int(11) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `detail` varchar(1000) NOT NULL,
  `namaMobil` varchar(50) NOT NULL,
  `biayaSewa` varchar(50) NOT NULL,
  `tampilMobil` varchar(100) NOT NULL,
  `interMobil1` varchar(100) NOT NULL,
  `interMobil2` varchar(100) NOT NULL,
  `interMobil3` varchar(100) NOT NULL,
  `exterMobil1` varchar(100) NOT NULL,
  `exterMobil2` varchar(100) NOT NULL,
  `exterMobil3` varchar(100) NOT NULL,
  `transmisiMobil` varchar(50) NOT NULL,
  `bahanBakar` varchar(50) NOT NULL,
  `mesinMobil` varchar(50) NOT NULL,
  `tempatDuduk` varchar(50) NOT NULL,
  `gambarReview` varchar(100) NOT NULL,
  `reviewMobil` varchar(5000) NOT NULL,
  `linkReviewUser` varchar(100) NOT NULL,
  `videoReview1` varchar(500) NOT NULL,
  `videoReview2` varchar(500) NOT NULL,
  `videoReview3` varchar(500) NOT NULL,
  `videoReview4` varchar(500) NOT NULL,
  `textReview1` varchar(200) NOT NULL,
  `textReview2` varchar(200) NOT NULL,
  `textReview3` varchar(200) NOT NULL,
  `textReview4` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detailmobil`
--

INSERT INTO `detailmobil` (`id_mobil`, `gambar`, `detail`, `namaMobil`, `biayaSewa`, `tampilMobil`, `interMobil1`, `interMobil2`, `interMobil3`, `exterMobil1`, `exterMobil2`, `exterMobil3`, `transmisiMobil`, `bahanBakar`, `mesinMobil`, `tempatDuduk`, `gambarReview`, `reviewMobil`, `linkReviewUser`, `videoReview1`, `videoReview2`, `videoReview3`, `videoReview4`, `textReview1`, `textReview2`, `textReview3`, `textReview4`) VALUES
(7, 'Agya.png', 'Jenis Transmisi Matic dan Bahan Bakar Bensin', 'Toyota Agya', '350000', 'tampilAgya.jpg', 'InteriorAgya-1.jpg', 'InteriorAgya-2.jpg', 'InteriorAgya-3.jpg', 'ExteriorAgya-1.jpg', 'ExteriorAgya-2.jpg', 'ExteriorAgya-3.jpg', 'Otomatis', 'Solar', '1200 ', '2', 'reviewAgya.jpg', '<p>PT Toyota Astra Motor (TAM) selaku Agen Pemegang Merek Toyota di Indonesia resmi meluncurkan salah satu mobil LCGC (Low Cost Green Car) mereka, yaitu Toyota Agya versi facelift.  Mobil ini diluncurkan pada tahun 2013 lalu dan telah mendapatkan pembaruan pada beberapa bagian, seperti pada sisi eksterior dan interiornya yang kini tampak lebih modern, serta fitur-fitur yang disematkan pun juga lebih canggih.</p> <p>Toyota Agya terbaru ini dinilai dapat terus meningkatkan penjualan kendaraan mobil Toyota karena mobil LCGC tersebut bisa mencapai pangsa pasar hingga 30% pada tahun 2016 lalu. Selain itu, Toyota Agya dibanderol dengan harga yang terjangkau dan dibekali beragam fitur yang cukup mumpuni guna menambah kenyamanan bagi pengemudi dan penumpang mobil tersebut. Konsep desainnya sendiri mengikuti selera anak-anak muda yang kekinian.</p>', 'https://www.oto.com/mobil-baru/toyota/agya/review-pengguna', 'https://www.youtube.com/embed/8k_oB1keFJg', 'https://www.youtube.com/embed/_cOsmgq6N_I', 'https://www.youtube.com/embed/bNdo3Q6wC4Y', 'https://www.youtube.com/embed/JKdFmbNi010', 'Toyota Agya 2020 | Review Indonesia | OtoDriver by Oto Driver', 'Toyota Agya TRD S 2018 Review Indonesia | OtoDriver | Supported by MBtech', 'Toyota AGYA 2020 jadi modern', 'Review Toyota Agya 1.200 cc test drive by AutonetMagz'),
(8, 'Calya.png', 'Jenis Transmisi Manual dan Bahan Bakar Bensin', 'Toyota Calya ', '350000', 'tampilCalya.jfif', 'interiorCalya-1.jfif', 'interiorCalya-2.jfif', 'interiorCalya-3.jfif', 'exteriorCalya-1.jfif', 'exteriorCalya-2.jfif', 'exteriorCalya-3.jfif', 'Manual', 'Bensin', '1200 ', '7', 'reviewCalya.jfif', 'Setelah sukses dengan Kijang dan Avanza, PT Toyota Astra Motor (TAM) resmi meluncurkan mobil MPV (Multi Purpose Vehicle), yaitu Toyota Calya pada tahun 2016 lalu. Mobil ini termasuk kategori mobil murah berkapasitas 7 penumpang yang menjadi penerus dari Toyota Avanza sebagai mobil sejuta umat. Pada tahun 2019, pihak Toyota kembali meluncurkan Calya terbaru versi facelift, bersamaan dengan peluncuran Daihatsu Sigra versi facelift. Jika melihat kedua mobil ini, terdapat pembaruan yang cukup signifikan pada bagian eksterior, interior, maupun fitur-fiturnya yang kini lebih canggih.  Penyegaran pada Toyota Calya terbaru lebih mengedepankan sisi fleksibilitas karena mengusung slogan baru, yaitu Partner in Times. Mobil yang termasuk LCGC (Low Cost Green Car) ini juga digadang-gadang sebagai The Next Big Thing yang dinilai bakal merajai pasar otomotif di Tanah air. Ini dilihat dari data penjualan Calya yang memuaskan selama sebulan setelah peluncurannya pada ajang Gaikindo Indonesia International Auto Show (GIIAS)', 'https://www.oto.com/mobil-baru/toyota/calya/review-pengguna', 'https://www.youtube.com/embed/eJcRjDSF66E', 'https://www.youtube.com/embed/-yi0z_mBDN8', 'https://www.youtube.com/embed/pZzsJM4XHII', 'https://www.youtube.com/embed/F_van08y0EY', 'Toyota Calya Review by AutonetMagz', 'Toyota Calya (Facelift 2019) FULL REVIEW: Alasan Bisa Sangat Laku', 'Ga Ada Lawan, 7 Seater TERMURAH Toyota Makin Keren! Ini Bedanya Calya Facelift 2022!', 'Bongkar !! Toyota New Calya Facelift 2022 Tipe G || Review Exterior & Interior Terbaru'),
(9, 'Avanza FC.png', 'Jenis Transmisi Manual dan Bahan Bakar Bensin ', 'Toyota Avanza', '400000', 'tampilAvanza.jpg', 'interiorAvanza-1.jpg', 'interiorAvanza-2.jpg', 'interiorAvanza-3.jpg', 'exteriorAvanza-1.jpg', 'exteriorAvanza-2.jpg', 'exteriorAvanza-3.jpg', 'Manual', 'Bensin', '1300', '7', 'reviewAvanza.png', '<p>All New Avanza dan Veloz akhirnya secara resmi diluncurkan oleh PT Toyota-Astra Motor (TAM) untuk konsumen di Indonesia dengan harga yang sedikit mengalami perbedaan dibandingkan generasi sebelumnya. </p> <p>Seremonial peluncuran dari dua model andalan Toyota itu dilakukan secara virtual pada Rabu, (10/11/2021). Peluncuran keduanya sekaligus menandai debut All New Avanza dan Veloz di pasar global. </p> <p>Sebagai generasi terbaru, kedua mobil ini hadir dengan serangkaian ubahan yang terlihat sangat signifikan, mulai dari bagian ekterior, interior, hingga bagian mesin. </p> <p>Pembaruan yang dilakukan oleh Toyota secara otomatis membuat harga jual All New Avanza dan Veloz mengalami kenaikan. Bahkan, Veloz varian tertinggi mendekati harga Rp300 juta. </p>', 'https://www.carmudi.co.id/journal/infografis-toyota-grand-avanza-2018/', 'https://www.youtube.com/embed/U64zWtmrxoY', 'https://www.youtube.com/embed/_sMQRyIRoVk', 'https://www.youtube.com/embed/DcuGmVX3Grw', 'https://www.youtube.com/embed/klx-BWR2O6A', 'Toyota All New Avanza & Veloz 2022 | First Drive | OtoDriver', 'Toyota AVANZA & VELOZ 2022 berubah total!', 'Bongkar !! Toyota All New Avanza Tipe G Manual 2022', 'Mau Avanza Baru? Wajib Tahu 10 HAL Ini Dulu!'),
(10, 'Brio Satya.png', 'Jenis Transmisi Matic dan Bahan Bakar Bensin ', 'Honda Brio', '350000', 'tampilBrio.jpg', 'interiorBrio-1.jpg', 'interiorBrio-2.jpg', 'interiorBrio-3.jpg', 'exteriorBrio-1.jpg', 'exteriorBrio-2.jpg', 'exteriorBrio-3.jpg', 'Otomatis', 'Bensin', '1199', '5', 'reviewBrio.jpg', '<p>PT. Honda Prospect Motor (HPM) telah meluncurkan Honda Brio model terbaru. Honda Brio ini merupakan generasi kedua setelah diperkenalkan di Indonesia pada tahun 2013 silam. Mobil ini ditawarkan dalam lima varian yang terdiri dari tipe Honda Brio E M/T, Honda Brio E CVT, Honda Brio RS M/T, Honda Brio RS CVT, dan Honda Brio Satya M/T. </p> <p>Terdapat perubahan pada Brio, salah satunya desain mobil yang kini terlihat lebih sporty dengan dimensi yang besar, serta ruang bagasi dan kabin yang lebih luas. Mobil ini juga memiliki fitur-fitur lebih kompleks, dan memiliki tingkat fungsionalitas yang tinggi untuk memberikan kenyamanan maksimal kepada pengendara maupun penumpang. </p> <p>Generasi kedua Honda Brio dirancang menjadi lebih sporty dan stylish. Honda Brio ini memiliki panjang mobil 3815 mm, lebar 1680 mm, dan tinggi 1485 mm. Selain itu, mobil ini juga memiliki ground clearance sebesar 165 mm. Mesin dan Performa Honda Brio 2019 Mobil ini memiliki mesin 1.2 Liter i-VTEC yang memiliki tenaga maksimum sebesar 90 PS pada 6.000 rpm. Sedangkan, torsinya mencapai 110 Nm pada 4.800 rpm. Karena itu, Brio memiliki mesin yang hemat bahan bakar. </p> <p>Agar performa mesin lebih optimal, pihak Honda melengkapi mobil ini dengan sistem elektronik Drive By Wire untuk mengontrol buka tutup throttle valve, sehingga kemampuan akselerasinya semakin optimal, dan tetap hemat bahan bakar. Selain itu, mesin Brio juga dioptimalkan dengan sistem pembakaran PGM-FI, sehingga mobil ini semakin irit bahan bakar. </p>', 'https://www.oto.com/mobil-baru/honda/brio/review-pengguna', 'https://www.youtube.com/embed/vmUV0zNRERA', 'https://www.youtube.com/embed/KbKkYx9WFzc', 'https://www.youtube.com/embed/vmUV0zNRERA', 'https://www.youtube.com/embed/97bE9lcMIFo', 'Review Honda Brio RS 2022 City Car Paling Laris', 'Bongkar !! Honda Brio 1.2 RS 2022 - 2023 || Review Exterior & Interior Terbaru', 'Review Honda Brio RS 2022 City Car Paling Laris', 'Honda Brio Satya E (2022) - POV Test Drive Indonesia'),
(11, 'Mobilio.png', 'Jenis Transmisi Manual dan Bahan Bakar Bensin ', 'Honda Mobilio', '400000', 'tampilMobilio.jpg', 'interiorMobilio-1.jpg', 'interiorMobilio-2.jpg', 'interiorMobilio-3.jpg', 'exteriorMobilio-1.jpg', 'exteriorMobilio-2.jpg', 'exteriorMobilio-3.jpg', 'Manual', 'Bensin', '1500', '7', 'reviewMobilio.jpg', '<p>PT Honda Prospect Motor (HPM) meluncurkan Honda Mobilio generasi terbaru pada tahun 2019 ini. MPV andalan Honda tersebut diperkenalkan pertama kali di Indonesia pada tahun 2014 lalu dan kini tampil dengan berbagai pembaruan pada sisi eksterior maupun interiornya. Sebagai informasi, penyegaran yang dilakukan pada Honda Mobilio ini merupakan tipe facelift generasi kedua sejak pembaruan pertama pada tahun 2017 lalu. Mobil ini dinilai memiliki daya tarik tersendiri bagi para calon konsumen di Tanah Air. PT HPM kali ini memberikan sentuhan pada Honda Mobilio dengan mengedepankan konsep yang lebih stylish dan dibekali fitur-fitur terbaru yang canggih. </p> <p>Dari segi desain, MPV andalan Honda tersebut hadir dengan tampilan yang lebih stylish serta modern. Selain itu, Mobilio terbaru sudah mendapatkan pembaruan pada sisi interiornya. Seperti, adanya Head Unit dengan layar sentuh resistive 6.2 inci yang dapat menunjang kenyamanan saat berkendara. Di dalamnya, terdapat fitur Hands Free Telephone, Bluetooth Connection, Rear Camera, serta pemutar CD dan DVD. Ditambah, Honda Mobilio terbaru dibekali dengan beberapa fitur handal untuk menjamin kenyamanan dan keselamatan penumpang. Seperti, rem ABS dan ABD, sistem rangka G-CON dan ACE TM dengan SL, serta beberapa fitur konektivitas yang lengkap. </p> <p>Untuk mesin Honda Mobilio terbaru, tampaknya masih mengandalkan teknologi yang sama dengan varian sebelumnya, yaitu mesin tipe 1.5 Liter SOHC 4 Silinder Tunggal Segaris berteknologi i-VTEC+DBW yang diklaim mampu memberikan tenaga besar dan akselerasi mumpuni. Tidak adanya perubahan pada mesin Mobilio dinilai karena sumber tenaga yang digunakan sudah yang terbaik di kelasnya. Mesin tersebut mampu mengeluarkan tenaga maksimal hingga 88 Kw pada putaran 6.600 rpm, serta mencapai torsi maksimum 145 Nm pada putaran mesin 4.600 rpm. </p>', 'https://www.oto.com/mobil-baru/honda/mobilio/review-pengguna', 'https://www.youtube.com/embed/4huDsqPX7Io', 'https://www.youtube.com/embed/XXO2sYDrr4E', 'https://www.youtube.com/embed/ncHMR6GbQbY', 'https://www.youtube.com/embed/lJb_sUwFZdk', 'Review Honda Mobilio RS facelift 2017 supported by HSR Wheel', 'Kenapa Harus Memilih Ini Dibanding Xpander atau Ertiga?', 'Honda Mobilio 2016 Review Indonesia - OtoDriver', 'Review Honda Mobilio 1.5L RS CVT 2021- Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `email`, `password`, `userType`) VALUES
(1, 'Usman Pamungkas', 'usmanpamungkas30@gmail.com', '$2y$10$Ee6Nglf4anNQpV002v/N4Oo8vQ2V1KREg9mkRdjPBEifbrd45Z8Iy', 'admin'),
(2, 'dias aji', 'dias@gmail.com', '$2y$10$jf41HXcemEvmNVNpmyf50ujCcipDUc0qHBZmlio7/fPpjjkDvsYeO', 'user'),
(17, 'tejo subekti', 'Tejosubekti@gmail.com', '$2y$10$UPYv0SvBwLnQdhg8SaxdJeSpGBRrbZcczYQXOs/Ej0IZKK6Up3uVe', 'user'),
(18, 'pamungkas', '20102162@ittelkom-pwt.ac.id', '$2y$10$YXKpjdaVup.gaBqjW.guwOBNrwjs6p6tGA6yJKJdIVoZRnTMt1P7C', 'user'),
(20, 'rendra', 'rendra@gmail.com', '$2y$10$KMkoAH96PFO2sKQyQ52ctOBJtnRzuK7i93tS27DtX31MFZurkXV/i', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datapelanggan`
--
ALTER TABLE `datapelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `detailmobil`
--
ALTER TABLE `detailmobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datapelanggan`
--
ALTER TABLE `datapelanggan`
  MODIFY `id_pelanggan` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `detailmobil`
--
ALTER TABLE `detailmobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
