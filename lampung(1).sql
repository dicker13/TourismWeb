-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2017 at 12:38 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lampung`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(3) NOT NULL,
  `judul` varchar(40) NOT NULL,
  `isi` text NOT NULL,
  `tanggal` varchar(12) NOT NULL,
  `gambar` blob NOT NULL,
  `author` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `isi`, `tanggal`, `gambar`, `author`) VALUES
(1, 'Lampung Borong Penghargaan Harganas XXII', '<p style="text-align: justify">\r\n	<strong>radarlampung.co.id</strong> &ndash; Hasil kerja Pemerintah Provinsi Lampung kembali mendapatkan apresiasi dari Pemerintah Pusat.</p>\r\n<p style="text-align: justify">\r\n	Dari rilis Humas Pemprov Lampung yang dikirim ke radarlampung.co.id, Badan Koordinasi Keluarga Berencana Nasional (BKKBN) memberikan penghargaan Manggala Karya Kencana kepada Gubernur Lampung M.Ridho Ficardo dan Ketua Tim Penggerak PKK Provinsi Lampung Aprilani Yustin Ridho Ficardo.</p>\r\n<p style="text-align: justify">\r\n	Penghargaan diberikan pada Puncak Peringatan Hari Keluarga Nasional yang diadakan di Ballroom Aston Hotel, Kupang, Nusa Tenggara Timur pada Rabu (28/7).</p>\r\n<p style="text-align: justify">\r\n	Gubernur Lampung Ridho Ficardo dan Aprilani Yustin Ficardo menerima langsung penghargaan tersebut dari Kepala BKKBN Surya Chandra Surapaty yang didampingi Ketua Tim Penggerak PKK Pusat Erni Tjahjo Kumolo.</p>\r\n<p style="text-align: justify">\r\n	Penghargaan ini diperoleh Provinsi Lampung karena dinilai mempunyai dedikasi tinggi terhadap program pengendalian penduduk, khususnya pembangunan keluarga sejahtera di Provinsi Lampung.</p>\r\n<p style="text-align: justify">\r\n	Selain Gubernur dan Ketua Tim Penggerak PKK, pemberian penghargaan bidang keluarga berencana dan sejahtera ini juga diberikan kepada Bupati Tulangbawang Hanan A Rozak, Bupati Lampung Utara Agung Ilmu Mangkunegara, Bupati Pringsewu Sujadi.</p>\r\n', '2016-30-07', 0x33343462622d6b622d363936783433372d312d2e6a7067, 'admin'),
(3, 'Kemeriahan Festival Krakatau', '<p>\r\n	Festival krakatau merupakan sebuah perayaan yang diadakan oleh Pemerintah Provinsi Lampung untuk memperkenalkan dan &nbsp;mempromosikan budaya, tradisi, serta potensi pariwisata yang ada di Provinsi Lampung. Festival Krakatau ini diadakan sejak tahun 1991, dan di rayakan terus setiap tahun nya hingga sekarang. Dulu pada awalnya acara &nbsp;&nbsp;ini dibuat &nbsp;bertujuan untuk memperingati kejadian letusan gunung krakatau yang meletus pada tahun 1883&nbsp; yang menghasilkan letusan besar&nbsp; yang memakan korban sebanyak&nbsp; 36.000 jiwa. Dan biasanya Festival ini diselenggarakan pada bulan Agustus.</p>\r\n<p>\r\n	<img alt="" src="C:\\xampp\\htdocs\\lampung\\assets\\image\\festival krakatau2.jpg" /></p>\r\n<p>\r\n	<br />\r\n	Festival yang diramaikan dengan karnaval, atraksi seni tradisional, pameran, dan berbagai lomba ini mulai diadakan sejak tahun 1990. Dalam perjalanannya, terdapat banyak variasi yang dilakukan. Karenanya, dari tahun ke tahun, terdapat perbedaan pada konten acara yang ditampilkan. Bagian acara yang selalu mendapat perhatian besar adalah karnaval karena melibatkan partisipasi dari semua lapisan masyarakat.<br />\r\n	Festival Krakatau ini biasanya menghadirkan sebuah kerajinan, adat dan budaya serta seni kontemporer yang di miliki di setiap masing-masing daerah di Provinsi Lampung ini, Bagian acara yang selalu mendapat perhatian besar adalah karnaval karena melibatkan partisipasi dari semua lapisan masyarakat.<br />\r\n	<br />\r\n	Karnaval diisi dengan parade busana tradisional dari dua suku besar di Lampung, yaitu Sai Batin dan Pepadun. Ditampilkan pula kesenian topeng tradisional tupping dan sekura yang menjadi salah satu kekhasan seni tradisional Lampung. Karnaval juga dimeriahkan peragaan busana kreasi kontemporer dari bahan kain tapis. Selain itu, atraksi unik seperti parade baris berbaris polisi cilik, marching band, dan gajah-gajah dari Taman Nasional Way Kambas juga ikut meramaikan Festival Krakatau.</p>\r\n', '2016-07-08', 0x63383931302d666573746976616c2d6b72616b61746175332e6a7067, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `destinasi`
--

CREATE TABLE `destinasi` (
  `id_destinasi` int(3) NOT NULL,
  `judul` varchar(45) NOT NULL,
  `isi` text NOT NULL,
  `gambar` blob NOT NULL,
  `video` longblob,
  `kategori` varchar(20) NOT NULL,
  `lokasi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destinasi`
--

INSERT INTO `destinasi` (`id_destinasi`, `judul`, `isi`, `gambar`, `video`, `kategori`, `lokasi`) VALUES
(3, 'Mari Mengenal Pulau Pasaran', '<p>\r\n	Asal mula pulau ini dinamakan Pulau Pasaran karena dulu banyak pengolah ikan yang bertransaksi hasil laut mereka di dermaga, sehingga terlihat seperti pasar. Tahun 1970 pulau pasaran dihuni oleh orang suku buton sebelah barat dan bugis (Pak Yusuf, Pak Tanjung). Kemudian pada tahun 1988 banyak masyarakat berdatangan ke pulau pasaran dan menetap, dikarenakan terjadi kebakaran hebat di gudang lelang pada tanggal 1 oktober 1988. Dulu luas tanah pulau pasaran hanya sebesar 3,5 hektar. Seriring dengan berkembanganya zaman dan pertambahan penduduk, Pulau Pasaran memperluas wilayahnya dengan mempondasi batu karang yang tidak berfungsi sebagai pijakan lahan tempat tinggal dan berkehidupan. Kini luas Pulau Pasaran telah menjadi 12 hektar.&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Sekarang ini Pulau Pasaran merupakan tempat sentra usaha pengeringan hasil laut khusunya teri yang terbesar se-Sumatra. Ketika masa pengeringan ikan teri tiba maka ratusan kilogram teri asin dapat diproduksi dari tempat ini. Selai sebagai sentra usaha, Pulau Pasaran juga dikembangkan oleh pemerintah Kota Bandar Lampung sebagai suatu destinasi &quot;Wisata Bahari&quot; dan juga sebagai &quot;Wisata Minat Khusus&quot;. Dan Pulau Pasaran pun memiliki Visi dan Misi nya untuk kemajuan nya, yaitu.</p>\r\n<p>\r\n	<strong>Visi</strong></p>\r\n<p>\r\n	Terwujudnya peningkatan pelayanan masyarakat dan kinerja aparatur melalui partisipasi masyarakat dalam pembangunan</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<strong>Misi</strong></p>\r\n<ol>\r\n	<li>\r\n		Meningkatkan tertib adminstrasi yang berkualitas dinamis dan bertanggungjawab</li>\r\n	<li>\r\n		Meyelenggarakan pemeritah yang bersih berwibawa,jujur dan partisipatif</li>\r\n	<li>\r\n		Meningkatkan peran serta masyarakat dalam pembangunan yang demokratis berkeadilan dan berkelanjut.</li>\r\n</ol>\r\n<p>\r\n	&nbsp;</p>\r\n<table align="center" border="0" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<div style="clear:both;">\r\n	&nbsp;</div>\r\n<p>\r\n	Pulau ini terletak di RT 09, yang dikepalai oleh Pak Subur, Kelurahan Kota Karang, Kecamatan Teluk Betung Timur, Bandarlampung. Pada tahun 2009, pulau ini memiliki luas wilayah sebesar 12 hektar. Kemudian diadakan penambahan lahan secara berala, sehingga sekarang mencapai 12,5 hektar. Saat ini terdapat 1167 penduduk yang menempati pulau ini. Terdapat 11 kelompok masyarakat, dengan beberapa pimpinan kelompok yaitu Pak Rosyidin, Pak Toto, dan Bu Sukanti.</p>\r\n<p>\r\n	Sebelum tahun 1998 pengolah ikan yang berada di pulau ini mengolah ikan di pulau, namun dengan perkembangan yang ada, sekarang para pengolah ikan merubah system pengolahan mereka dengan merebus langsung ikan yang merka tangkap di perahu atau kapal mereka. Dengan tujuan agar dapat menjaga kualitas ikan dan kebersihan pulau pun bisa terjaga.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Salah satu wilayah penghasil ikan teri kering di Provinsi Lampung adalah di Pulau Pasaran Kota Bandar Lampung, produk teri kering yang menjadi prioritas pengolah terdiri dari teri nasi, teri nilon, dan teri jengki. Produk teri nasi di pulau ini mempunyai potensi ekspor yang cukup besar, karena dalam satu siklus produksi (sehari semalam) dapat menghasilkan sekitar 10-30 ton teri. Di samping itu ketersediaan bahan baku ikan teri di kawasan ini selalu terjaga karena dukungan wilayah pencarian ikan di Teluk Lampung, yang tidak terlalu dipengaruhi oleh perubahan angin musim.</p>\r\n<table align="center" border="0" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<div style="clear:both;">\r\n	&nbsp;</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 0x31663235342d6473635f3239393666622e6a7067, NULL, '4', '1'),
(4, 'Mengetahui Sejarah di Museum Lampung', '<p>\r\n	<span style="color:#000000;">Museum Negeri Lampung atau Museum Lampung, adalah sebuah museum</span><span style="color:#000000;"> yang terletak&nbsp; Bandar Lampung di</span><span style="color:#000000;"> yang beralamat di Jalan ZA Pagar Alam No.64 Bandar Lampung. Museum ini merupakan museum pertama dan terbesar di provinsi Lampung </span><span style="color:#000000;">dan merupakan kebanggaan masyarakat provinsi Lampung, letak museum ini cukup strategis sebab tak jauh dari pusat kota Bandar Lampung</span><span style="color:#000000;">, yakni hanya 15 menit perjalanan.</span></p>\r\n<p>\r\n	<span style="color:#000000;">Pembangunan Museum Lampung telah dimulai tahun 1975 dan peletakan batu pertama dilaksanakan tahun 1978. Akan tetapi, peresmiannya baru dilaksanakan pada 24 September 1988 dan diresmikan oleh Menteri Pendidikan dan Kebudayaan kala itu, Prof. Dr. Fuad Hasan. Peresmian tersebut bertepatan dengan peringatan Hari Aksara Internasional yang dipusatkan di PKOR Way Halim.</span></p>\r\n<p>\r\n	<br />\r\n	<span style="color:#000000;">Ruwa Jurai yang diabadikan sebagai nama museum ini diambil dari tulisan Sai Bumi Ruwa Jurai dalam logo resmi Provinsi Lampung diresmikan penggunaannya sejak 1 April 1990. Memasuki era otonomi daerah, museum ini beralih status menjadi UPTD di bawah Dinas Pendidikan Provinsi Lampung.</span></p>\r\n<p>\r\n	<span style="color:#000000;">Museum Lampung adalah salah satu tempat kunjungan wisata sejarah sebagai sarana pendidikan, penelitian dan rekreasi. Di halaman museum, bahkan beberapa koleksi unik museum ini akan sudah menyambut setiap pengunjung. Tampak meriam kuno peninggalan masa penjajahan menjadi salah satu ikon dari Museum Lampung itu sendiri.</span></p>\r\n<p>\r\n	<span style="color:#000000;">Selain meriam, replika rumah adat Lampung juga berdiri di halaman museum. Rumah adat lampung dikenal berbentuk panggung yang dimaksudkan untuk melindungi si pemilik rumah dari binatang buas. Di tambah lagi, ada juga bola besi pembuka lahan. Bola besi ini identik dengan identitas Lampung sebagai daerah tujuan transmigrasi pada 1953-1956. Bola besi ini digunakan untuk membuka lahan transmigrasi di wilayah Lampung Timur, Raman Utara dan Purbolinggo, Kabupaten Lampung Timur, Seputih Banyak, dan Seputih Raman.</span></p>\r\n<p>\r\n	<span style="color:#000000;">Adapun cara pengoperasiannya adalah dengan ditarik dua traktor guna menumbangkan pohon dan semak di areal tanah datar yang akan menjadi lokasi transmigrasi.</span></p>\r\n<p>\r\n	<span style="color:#000000;">Sementara di dalam museum, koleksi yang ditampilkan, antara lain koleksi benda budaya yang mewakili dua kelompok adat yang dominan di Lampung, yakni Sai Bathin (Peminggir) dan Pepadun. Kedua kelompok adat ini masing-masing memiliki kekhasan dalam hal ritual adat dan perangkat atau aksesori adat, seperti kain tradisional khas Lampung, kain tapis. Rangkaian ritual kedua kelompok adat masing-masing ditampilkan berurutan, mulai dari ritual kelahiran, asah gigi menjelang dewasa, pernikahan, hingga ritual kematian.</span></p>\r\n<p>\r\n	<span style="color:#000000;">koleksi benda-benda sejarah untuk sarana pendidikan, penelitian dan rekreasi. Koleksi yang dapat dilihat adalah benda-benda hasil seni, keramik dari negeri Siam dan negeri Cina dari jaman Dinasti Ming, stempel dan mata uang kuno berasal dari masa penjajahan Belanda. Koleksi museum berjumlah 4652 buah, terdiri dari geologika 71 buah, biologika 55 buah numismatika/heraldika 1347 buah, filoqika 44 buah, keramologika 666 buah, seni rupa 8 buah dan teknologika 23 buah. Koleksi langka unggulan berupa bejana perunggu yang ditemukan di Sri Minosari Labuhan Maringgai, Kabupaten Lampung Timur. Informasi kunjungan dan pelayanan dapat menghubungi Seksi Pelayanan Telp. (0721) 783688 Fax (0721) 701164.</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n', 0x39393139662d6d757365756d2d6c616d70756e672e6a7067, NULL, '5', '1'),
(5, 'Pantai Tirtayasa', '<p>\r\n	Pantai Tirtayasa terletak di Gang Harnas dusun Way Tataan Kelurahan Sukamaju Kecamatan Teluk Betung Timur, Bandar Lampung. Masyarakat sekitar lebih mengenal kawasan pantai ini dengan Harnas yang tak lain diambil dari nama gang masuk pantai ini. Jarak tempuh dari pusat kota pun tak terlalu jauh, kita hanya membutuhkan waktu sekitar 20-30 menit untuk bisa mengunjungi pantai cantik ini. Jalanan yang dilalui hingga pantai ini pun relatif halus. Letaknya yang strategis membuat pantai ini cukup dikenal warga Lampung. Apalagi di bagian pintu gerbang pantai ini ada plang besar yang memuat nama pantai ini.</p>\r\n<p>\r\n	Tarif masuk pantai Tirtayasa cukup murah yaitu Rp. 5000 untuk setiap orang, pantai yang telah dibuka sejak tahun 80-an ini masih tergolong alami tidak banyak bangunan, Walau telah dibuka sebagai tempat hiburan puluhan tahun lalu namun pantai ini masih tetap terjaga keaslian nya , dan tak banyak sampah di sini. Pengunjung juga tak terlalu banyak. Hanya saat-saat akhir pekan saja pantai ini biasanya ramai dikunjungi wisatawan. Jadi, pantai ini cocok untuk Anda yang ingin berlibur bersama keluarga.</p>\r\n<p>\r\n	<img alt="pantai tirtayasa hd" src="http://1.bp.blogspot.com/-uB6SfyfuAPU/VbXFx-DE1sI/AAAAAAAAEBQ/aV3u0Q23AFs/s640/IMG_0660.JPG" style="width: 560px; height: 450px;" /></p>\r\n<p>\r\n	Ada banyak aktivitas yang bisa kita lakukan di pantai ini. Ombak yang cenderung tenang membuat pantai ini cocok untuk melakukan aktivitas di air &nbsp;Pantai berpasir putih ini memiliki tekstur&nbsp; yang tak terlalu banyak karangnya sehingga nyaman saat berenang. Pantai ini juga banyak memiliki batuan kecil yang tersebar di sepanjang pantai, bagi yang suka dengan fotografi tempat ini cocok untuk mendapatkan foto landscape di kerenakan ombak nya yang tidak begitu besar.&nbsp;</p>\r\n<p>\r\n	Selain berenang, aktivitas lainnya yang bisa Anda nikmati adalah memancing. Anda bisa memancing di beberapa titik yang memang cocok untuk memancing. Di tempat ini pun pengelola pantati menyewakan gazebo yang mengarah ke pantai juka kita ingin bersantai , tariff menyewa nya pun cukup murah yaitu Rp.15000 untuk sehari.&nbsp;</p>\r\n<p>\r\n	Tak jauh dari pantai Tirtayasa ada sebuah pulau yang bernama Pulau Kubur. Letak nya pun sangat dekat dengan pantai ini, pulau ini dinamakan dengan pulau kubur karena di puncak bukit pualu itu terdapat kuburan. Dan akhirnya warga setempat menyebutnya dengan pulau kubur. Pulau tak berpenghuni ini bisa ditempuh dengan waktu sekitar 10-20 menit dari pantai ini dengan perahu, banyak warga yang menyewakan jasa penyebrangan ke pulau kubur dengan perahu. Jika penumpang mencapai lebih dari 10 orang masing-masing penumpang dikenai tarif sebesar Rp 10ribu &ndash; Rp 15ribu. Namun, jika hanya 2 penumpang biaya yang dikenakan sebesar Rp 50ribu.&nbsp;</p>\r\n', 0x39643336612d70616e7461692d7469727461796173612e6a7067, NULL, '1', '1'),
(6, 'Melihat Lumba Lumba di Teluk Kiluan', '<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Teluk Kiluan &nbsp;ini terletak di Kabupaten Tangamus adalah sebuah teluk dengan potensi nya di bidang wisata Bahari yang sangat indah, di teluk kiluan ini &nbsp;memiliki keunikan tersendiri yaitu kita bisa melihat Lumba-lumba jenis hidung karena teluk ini merupakan salah satu jalur melintas nya lumba lumba ini.</p>\r\n<p>\r\n	Jarak teluk kiluan dari pusat ibu kota Bandar Lampung berjarak 73 km atau bisa di tempuh dengan 3 jam perjalanan. Waktu yang tepat untuk melihat lumba lumba di teluk kiluan yaitu mulai pukul 06.00 sampai 09.00 karena pada waktu itu lumba lumba mulai melintasi teluk ini, jadi di sarankan bagi wisatawan untuk menginap di guest house yang sudah di sediakan oleh penduduk sekitar, tarif penyewaan perahu untuk melihat lumba lumba berkisar antara Rp.200.000 &ndash; 300.000 tergantung seberapa lama dan jauh nya kita mencari lumba lumba tersebut , karena terkadang lumba lumba susah untuk ditemui di karena kan cuaca yang tidak baik</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Tarif menginap nya pun cukup murah yaitu dari Rp. 200.000- 400.000 /permalam, dan disini pun kita bisa memesan makanan dari para pengelola harga makanan nya berkisar Rp. 20.000 , namun disarankan bagi para wisatawan untuk membawa power bank atau sudah mengisi daya barang elektronik nya di karenakan di sini sering terjadi pemadaman listrik yang cukup lama.</p>\r\n<p>\r\n	Disini juga terdapat pantai pasir putih yang jernih dan kita pun bisa snorkeling disini karena masih terdapat terumbu karang dan keasrian yang masih terjaga.Masyarakat di sekitar teluk kiluan ini cukup ramah mereka merupakan perpaduan dari suku Bali, Bugis, jawa, dan Lampung.</p>\r\n<p>\r\n	<br />\r\n	ini merupakan daftar akomadasi dan penginapan di area teluk kiluan.</p>\r\n<ol>\r\n	<li>\r\n		Pondok Pulau Kiluan , 7 kamar , yang terletak di Pulau Kiluan. Akses dengan perahu jukung CP. Pak Dirhamsyah 081369991340.</li>\r\n	<li>\r\n		Pondok Maimun (sunset view) 081272284134, 082178218575 dicapai dengan perahu jukung.</li>\r\n	<li>\r\n		Pondok Lamban Sai Batin , (sunset view) Tatang 082185393027, 081369661601, dicapai dengan Perahu Jukung.</li>\r\n	<li>\r\n		Pondok Anak Abah, (sunset view) Amin 081379087598; dicapai dengan perahu jukung.</li>\r\n	<li>\r\n		Pondok Ekowisata Solihin (homestay) 081369997831, berjalan kaki 300 M dari Dusun Bandung Jaya.</li>\r\n	<li>\r\n		Pondok Dhio CP: (area parkir luas), kamar mandi di dalam, Dhio 08127218117.</li>\r\n	<li>\r\n		Pondok BAAM Dusun Bandung Jaya , (homestay) 081379930669.</li>\r\n	<li>\r\n		Pondok Rusdi Dusun Bandung Jaya (homestay Pak Kadus) 085267211951.</li>\r\n	<li>\r\n		Perahu untuk dolphin tour : Robis 082179964398, Amir 085384212070:</li>\r\n</ol>\r\n', 0x61313235642d74656c756b2d6b696c75616e2d332e6a7067, NULL, '1', '6'),
(9, 'Berburu barang khas di pasar Bambu Kuning', '<p>\r\n	Pasar Bambu Kuning berada di Jalan Imam Bonjol nomor 1, Bandar Lampung. Pasar Bambu Kuning ini termasuk pasar tradisional tertua selain pasar bawah dan pasar cimeng yang letaknya di pusat jantung Bandar Lampung.</p>\r\n<p>\r\n	Sejarah mencatat, pasar yang pernah menjadi kebanggaan masyarakat Lampung ini, mulai ramai pada tahun 1963. Masyarakat Jawa dan Sumatera berbaur mencari penghidupan dengan berjualan. Bedanya, masyarakat Jawa lebih pada usaha perdagangan hasil bumi dan sayur mayur, Kalaupun ada keturunan Tionghoa dan India yang mendiami Bambu Kuning tempo dulu, mereka berjualan emas dan hasil bumi, seperti tembakau dan cengkih. Sejarah mencatat pula, tahun 1974, Pasar Bambu Kuning pertama kali direnovasi. Waktu itu, tidak lebih dari 257 pedagang toko dan 150-an PKL mendiami kawasan ini.</p>\r\n<p>\r\n	Pasar Bambu Kuning kini berubah menjadi pasar modern yang berdiri kokoh dengan tiga lantai. Di masa lalu, di lokasi Bambu Kuning pernah berdiri Kantor Wali Kota Bandar Lampung.&nbsp;Pasar BK atau Bambu Kuning ini mulai beroperasi sejak tahun 1950-an, hingga kini menjadi sebuah pasar tradisional yang banyak menjadi tempat idola untuk berbelanja bagi masyarakat di Bandar Lampung.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Sumber:</p>\r\n<p>\r\n	https://dedisutomo.wordpress.com</p>\r\n<div>\r\n	<p>\r\n		http://www.medialampung.com/</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 0x34623438632d62616d62752d6b756e696e672e6a7067, NULL, '5', '1'),
(10, 'Danau Way Jepara yang Indah', '<p>\r\n	Dananu Way Jepara terletak di kecamatan di Kabupaten Lampung Timur,Way Jepara sendiri terkenal dengan kebun dan hutannya yang masih asri. Namun siapa sangka dibalik itu terdapat potensi alam yang menabjubkan bila dipandang mata. Yaitu sebuah danau .</p>\r\n<p>\r\n	Danau ini&nbsp; jaraknya lebih kurang 70 kilometer dari Bandar Lampung atau&nbsp; 15 kilometer dari Taman Nasional Way Kambas. Akses ke Danau Way Jepara yang paling direkomendasikan melalui jalan lintas tengah lalu ke arah metro, setelah sampai metro dilanjutkan perjalanan ke sukadana lalu ada lampu merah pertama di sukadana belok kanan lalu ikuti jalan sampai kota way jepara, dari kota way jepara sekita 1 kilometer sebelum ada penunjuk arah. Kondisi jalan cukup mulus, hanya agak sedikit curam dan menikung.</p>\r\n<p>\r\n	Tidak Ada biaya masuk ke lokasi ini, meski begitu Pemerintahan Kabupaten Lampung Timur tetap menjaga kondisi danau yang masih alami ini.Tumbuh-tumbuhan berumur di atas 10 tahun masih terlihat tegar dan kondisinya sangat sejuk dan bersih. Airnya terlihat biru kehijauan dan tenang. Danau sekitar 100 ha ini dikelilingi berbagai tumbuhan seperti pohon sonokeling dan jati.</p>\r\n<p>\r\n	Sepanjang jalan menuju danau terasa sejuk karena dikelilingi pepohonan. Tak hanya elok dipandang, danau ini menyimpan berbagai jenis ikan tawar seperti nila, betutu. Jadi, yang hobi memancing asyik banget liburan ke danau dengan kedalaman diperkirakan 80 meter itu.</p>\r\n<p>\r\n	Danau Way Jepara merupakan salah satu danau wisata yang memiliki panorama pemandangan alam yang indah. Danau ini memiliki nuansa alam yang masih asli dengan air danau yang jernih. Kegiatan yang dapat dilakukan adalah bersantai, memancing, naik perahu dan petualangan alam. Fasilitas yang tersedia adalah tempat pemancingan dan perahu danau. Di kawasan ini merupakan salah satu pusat kegiatan perkemahan yang kerap digunakan, mengingat fasilitas sudah cukup lengkap, termasuk toko-toko yang menyediakan cinderamata, seperti ukiran gajah, anyaman bambu dan lain-lain.</p>\r\n', 0x36373132392d64616e61752d7761792d6a65706172612e6a7067, NULL, '3', '4'),
(11, '', '', '', NULL, '', ''),
(12, 'Air Terjun Curup Paten', '<p>\r\n	Air terjun ini berada di Desa Suka Menanti, Kecamatan Bukit Kemuning, Kabupaten Lampung Utara, Provinsi Lampung, dengan jarak tempuh dari Kota Bumi kurang lebih sekitar 40km.<br />\r\n	<br />\r\n	Di lokasi ini wisatawan dapat menikmati keindahan air terjun yang meluncur dari ketinggian sekitar 4 meter. Curup Paten memiliki tiga tingkatan air terjun.<br />\r\n	<br />\r\n	Di kawasan wisata tirta yang satu ini wisatawan dapat bersantai dan bermain air. Udara sejuk yang berasal dari pepohonan sekitar air terjun dijamin mampu membuat Anda berlama-lama di sini. Air Terjun Curup Paten biasanya ramai dikunjungi pada hari libur dan hari Minggu.<br />\r\n	<br />\r\n	Untuk menambah kenyamanan pengunjung, pengelola mulai membangun beberapa fasilitas, seperti tempat mandi untuk membilas tubuh setelah bermain di air terjun.<br />\r\n	<br />\r\n	Untuk menuju Air Terjun Curup Paten dapat di tempuh dari Kota Bumi. Jarak yang ditempuh untuk sampai di lokasi sekitar 40 kilometer. Perjalanan ini bisa ditempuh menggunakan kendaraan pribadi atau carteran. Wisatawan akan disambut dengan gemuruh air terjun yang diiringi dengan suara dedaunan yang tertiup angin.</p>\r\n', 0x61393139342d6169722d7465726a756e2d63757275702d706174656e2e6a7067, NULL, '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `restoran`
--

CREATE TABLE `restoran` (
  `id_restoran` int(7) NOT NULL,
  `Nama_Restoran` varchar(30) NOT NULL,
  `Alamat` varchar(60) NOT NULL,
  `Telp` varchar(20) NOT NULL,
  `gambar` blob NOT NULL,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restoran`
--

INSERT INTO `restoran` (`id_restoran`, `Nama_Restoran`, `Alamat`, `Telp`, `gambar`, `latitude`, `longitude`) VALUES
(1, 'Nama Restoran', 'Calamba Road Sungay East, Tagaytay City, Philippines', '+63 46 860 0216', 0x62303731322d62616e74656e2d6c616d70756e672e6a7067, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(3) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@localhost');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(3) NOT NULL,
  `judul` varchar(40) NOT NULL,
  `isi` text NOT NULL,
  `video` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `judul`, `isi`, `video`) VALUES
(1, 'Keindahan Lampung', '<p>\r\n	Lampung merupakan salah satu jalur masuk utama dari Pulau Jawa dan Daerah Indonesia Lainya. Namun banyak wisatawan lokal maupun mancanegara belom tahu potensi besar pariwisata yang di miliki&nbsp; Provinsi Lampung. dan video ini memberikan informasi secara singkat pariwisata yang tersedia . mulai dari pantai, pulau, taman wisata, dll.</p>\r\n', 0x33633766662d766964656f2e6d7034),
(2, 'test1', '<p>\r\n	asdsadasdsa</p>\r\n', 0x63316634302d6c616d70756e672d73656c6174616e2d746f757269736d2e6d7034);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `destinasi`
--
ALTER TABLE `destinasi`
  ADD PRIMARY KEY (`id_destinasi`);

--
-- Indexes for table `restoran`
--
ALTER TABLE `restoran`
  ADD PRIMARY KEY (`id_restoran`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `destinasi`
--
ALTER TABLE `destinasi`
  MODIFY `id_destinasi` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `restoran`
--
ALTER TABLE `restoran`
  MODIFY `id_restoran` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
