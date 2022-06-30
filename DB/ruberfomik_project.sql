-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2022 at 05:26 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruberfomik_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@ruberfomik.com', '$2y$10$rL13nvDdrA5NJWkfHN.j1efbLHHV5GH2PELZHOUn.uCsMgoV9Wnhe', 'admin.png', '', NULL, '2022-06-29 14:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_on_menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `show_on_menu`, `category_order`, `created_at`, `updated_at`) VALUES
(1, 'Tahukah kamu?', 'Show', '3', '2022-06-29 20:09:27', '2022-06-29 20:09:27'),
(2, 'Informasi', 'Show', '3', '2022-06-29 20:16:04', '2022-06-29 20:16:04'),
(3, 'Tips', 'Show', '3', '2022-06-29 20:20:30', '2022-06-29 20:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_18_035205_create_admins_table', 1),
(6, '2022_06_20_173141_create_categories_table', 2),
(7, '2022_06_21_201432_create_sub_categories_table', 3),
(8, '2022_06_22_071224_create_posts_table', 4),
(9, '2022_06_22_072755_create_tags_table', 5),
(10, '2022_06_27_004333_create_settings_table', 6),
(11, '2022_06_29_063247_create_photos_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `caption`, `created_at`, `updated_at`) VALUES
(2, 'photo_1656529734.jpg', 'Perpustakaan', '2022-06-29 12:08:55', '2022-06-29 12:14:41'),
(3, 'photo_1656529825.jpg', 'Laboratorium', '2022-06-29 12:10:25', '2022-06-29 12:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitors` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `is_share` int(11) NOT NULL,
  `is_comment` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `sub_category_id`, `post_title`, `post_detail`, `post_photo`, `visitors`, `author_id`, `admin_id`, `is_share`, `is_comment`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tahukah Kalian, Membaca Bisa Bikin Kita Sehat!', '<p style=\"margin: 20px 0px; line-height: 25px; font-family: &quot;Open Sans&quot;, sans-serif;\">Kapan terakhir kali kamu&nbsp;<a href=\"https://www.teen.co.id/read/6107/suka-baca-buku-ternyata-bisa-buat-kita-berumur-lebih-panjang\" style=\"transition-duration: 0.2s; color: rgb(0, 0, 0); border-bottom: 1px solid rgb(87, 190, 181);\">membaca buku,</a><em><a href=\"https://www.teen.co.id/read/6107/suka-baca-buku-ternyata-bisa-buat-kita-berumur-lebih-panjang\" style=\"transition-duration: 0.2s; color: rgb(0, 0, 0); border-bottom: 1px solid rgb(87, 190, 181);\">&nbsp;</a>Teens</em>? Pasti banyak yang sekarang malas membaca buku, karena lebih mudah memperoleh informasi dari media sosial dan situs-situs yang diakses dengan cepat melalui koneksi internet. Tapi tahukah kamu, membaca buku memiliki keunggulan lain selain untuk mendapatkan pengetahuan atau informasi baru. Termasuk untuk kesehatan mental.</p><p style=\"margin: 20px 0px; line-height: 25px; font-family: &quot;Open Sans&quot;, sans-serif;\"><a href=\"https://www.teen.co.id/read/5978/hobi-baca-buku-remaja-19-tahun-ini-bakal-jadi-dokter-termuda-di-malaysia\" style=\"transition-duration: 0.2s; color: rgb(0, 0, 0); border-bottom: 1px solid rgb(87, 190, 181);\">Membaca&nbsp;</a>setiap hari teruji mampu mencegah alzheimer dan demensia. Karena dengan membaca, otak akan terbiasa aktif. Seperti halnya otot yang butuh dilatih agar tetap sehat dan kuat, otak juga butuh membaca agar tidak mudah mengalami penurunan kemampuan</p><p style=\"margin: 20px 0px; line-height: 25px; font-family: &quot;Open Sans&quot;, sans-serif;\"><a href=\"https://www.teen.co.id/read/3731/4-cara-ini-bakal-bikin-kamu-selalu-ingat-isi-dari-buku-yang-sudah-dibaca\" style=\"transition-duration: 0.2s; color: rgb(0, 0, 0); border-bottom: 1px solid rgb(87, 190, 181);\">Membaca</a>&nbsp;juga membuat kita tidak mudah stres. Misalnya dengan membaca novel, akan membuat kita merasa pergi ke tempat lain, merasakan suasana baru, dan mengalihkan perhatian kita dari rutinitas yang membosankan. Cara ini juga akan membuat kita lebih rileks. Terutama dengan membaca hal-hal yang menggembirakan dan inspiratif.</p><p style=\"margin: 20px 0px; line-height: 25px; font-family: &quot;Open Sans&quot;, sans-serif;\">Dengan buku yang tepat, ternyata juga bisa menurunkan tekanan darah dan menimbulkan rasa tenang dan damai. Membaca buku-buku motivasi dan&nbsp;<em>self-help</em>&nbsp;juga telah terbukti membantu penderita gangguan&nbsp;<em>mood</em>&nbsp;dan mereka yang menderita penyakit mental ringan.</p><p style=\"margin: 20px 0px; line-height: 25px; font-family: &quot;Open Sans&quot;, sans-serif;\">Buku juga merupakan hiburan yang murah,<em>&nbsp;Teens.</em>&nbsp;Dibandingkan traveling atau berbelanja, membaca buku jauh lebih bermanfaat. Jadi, mulailah mencari bacaan yang bagus dan palingkan perhatianmu dari media sosial dan mulai untuk membaca buku yang berbobot ya,&nbsp;<em>Teens.</em></p><p style=\"margin: 20px 0px; line-height: 25px; font-family: &quot;Open Sans&quot;, sans-serif;\">Yuk<i>,</i>&nbsp;makin sering membaca biar sehat!&nbsp;</p>', 'post_photo_1656558769.jpg', 1, 0, 1, 1, 1, '2022-06-29 20:12:49', '2022-06-29 20:12:49'),
(2, 1, 'Era Digital, Pramuka Dituntut Jadi Agen Kebaikan', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Quicksand, sans-serif; font-size: 18.098px;\"><span style=\"font-weight: 700;\">Slawi</span>&nbsp;– Pada era digital ini, Pramuka tidak hanya dituntut untuk mengamalkan dasa dharma di kehidupan sehari-hari, namun juga menjadi “agen kebaikan” yang aktif menyampaikan pesan-pesan positif melalui media sosial. Sosok pramuka yang bertanggung jawab dan dapat dipercaya tentu tidak akan menyebarluaskan berita bohong atau hoaks di tengah masyarakat.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Quicksand, sans-serif; font-size: 18.098px;\">“Kalau kita menjadi orang yang bertanggung jawab terhadap diri, keluarga, masyarakat bangsa dan negara, kita tidak akan saling menyakiti atau membuat fitnah-fitnah. Ketika pikiran, perkataan, dan perbuatan jadi satu sikap, maka tidak akan ada hoaks dan saling membenci,” terang Gubernur Jawa Tengah H. Ganjar Pranowo, SH MIP saat memimpin Upacara Peringatan Hari Pramuka di Bumi Perkemahan Martoloyo, Jumat (21/9).</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Quicksand, sans-serif; font-size: 18.098px;\">Orang nomor satu di Jawa Tengah itu menegaskan, era digital seperti saat ini harus diisi dengan prestasi. Pramuka sebagai generasi muda yang sehari-hari bergelut dengan teknologi informasi dan komunikasi (TIK) hendaknya menularkan keterampilannya itu kepada masyarakat yang tinggal di sekelilingnya. Pasalnya, kehadiran TIK dapat dimanfaatkan untuk membangun sistem informasi desa yang baik hingga mengembangkan usaha secara online.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Quicksand, sans-serif; font-size: 18.098px;\">Ditambahkan, Pramuka adalah generasi muda luar biasa yang terus bergelut dengan teknologi informasi dan komunikasi. Mereka akan membuat Saka milenial.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Quicksand, sans-serif; font-size: 18.098px;\">“Mereka akan membangun sistem informasi dan di situ akan melatih siapapun yang tertarik untuk menggunakan teknologi informasi. Mudah-mudahan Kwarnas, Kwarda, Kwarcab bisa mengakomodasi itu dan ini menjadi yang pertama di Indonesia, inisiatif anak-anak Jawa Tengah,” ujar gubernur.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Quicksand, sans-serif; font-size: 18.098px;\">Alumnus UGM itu berharap, pramuka dapat mengajak masyarakat untuk menyambut tahun politik secara damai. Pramuka diminta untuk memberi contoh cara berdemokrasi yang baik.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Quicksand, sans-serif; font-size: 18.098px;\">“Ibu Bupati Tegal menyampaikan kepada saya akhir tahun ini ada pilkades serentak. Maka memilih seorang kepala desa pun pramuka juga akan bisa memberikan contoh bagaimana berdemokrasi yang baik. Memilih bupati, gubernur dan sebentar lagi memilih presiden serta legislatif. Jangan hoaks, jangan fitnah, ambil hal positif dari para kandidat yang ada,” pesannya.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Quicksand, sans-serif; font-size: 18.098px;\">Pada rangkaian upacara peringatan Hari Pramuka di Bumi Perkemahan Martoloyo itu, Gubernur Ganjar Pranowo juga memperoleh Tanda Penghargaan Dharma Bhakti. Mantan anggota DPR RI itu mengaku, sejak duduk di bangku SD hingga SMA dirinya memang aktif mengikuti kegiatan kepanduan tersebut.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Quicksand, sans-serif; font-size: 18.098px;\">“Saya menyampaikan terima kasih kepada Kwarda Jateng dan Kwartir Nasional atas Tanda Penghargaan Dharma Bakti yang saya terima sesaat sebelum upacara ini berlangsung. Mudah-mudahan ini mampu memicu saya sendiri untuk terus bersama-sama gerakan Pramuka memajukan Indonesia,” ucapnya.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Quicksand, sans-serif; font-size: 18.098px;\">Sementara itu, Plt Bupati Tegal Dra Umi Azizah meyakini, pramuka adalah wadah kreativitas pembentuk karakter bangsa.<br>Untuk itu, gerakan pramuka harus menjadi teladan, menjadi contoh gerakan perubahan.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Quicksand, sans-serif; font-size: 18.098px;\">“Gerakan Pramuka harus menjadi pelopor perwujudan nilai-nilai integritas, nilai-nilai kesantunan, tata krama dan budaya saling menghargai,” pungkasnya.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Quicksand, sans-serif; font-size: 18.098px;\">Sebagai informasi, rangkaian kegiatan Perkemahan Satuan Antar Karya atau Peransaka digelar selama enam hari berturut-turut mulai 16-21 September di Bumi Perkemahan Martoloyo sebagai peringatan Hari Pramuka ke-57. Kegiatan Peransaka mencakup berbagai aktivitas kreatif, produktif, edukatif, inovatif dan rekreatif ini diikuti oleh hampir seribu orang peserta dan pembina pendamping dari berbagai kontingen cabang se-Jawa Tengah.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Quicksand, sans-serif; font-size: 18.098px;\">Penulis: Ar, Humas jateng</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Quicksand, sans-serif; font-size: 18.098px;\">Editor : Ul, Diskominfo Jateng</p>', 'post_photo_1656559056.jpg', 1, 0, 1, 1, 1, '2022-06-29 20:17:36', '2022-06-29 20:17:36'),
(3, 3, 'Tips Menjaga Kesehatan Mental Bagi Pelajar', '<p style=\"margin: 10px 0px 12px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">Mental health atau kesehatan mental menjadi isu yang hangat diperbincangkan tidak hanya di masyarakat secara umum, tetapi juga di dunia pendidikan. Perubahan pola pembelajaran, kesulitan beradaptasi, tingkat penguasaan teknologi, dan ketidaksiapan menghadapi segala keterbatasan memunculkan tekanan-tekanan dan juga tantangan. Keadaan yang serta-merta terjadi ini sangat mempengaruhi tidak hanya kesehatan mental guru, tetapi juga kesehatan mental siswa/pelajar. Pelajar yang notabene berada pada usia anak-anak dan remaja masih menjadi golongan paling tinggi yang mengalami stres.<br>Seperti kesehatan fisik, kesehatan mental juga sangat perlu untuk dijaga dan dipelihara. Keadaan penuh tekanan yang membuat orang stres dapat menginterupsi kemampuan seseorang untuk mengarahkan perhatian, membuat perencanaan, dan mengelola emosi sehingga sulit untuk berpikir dengan jernih. Jika hal ini terjadi pada pelajar kemudian dibiarkan berlarut-larut, akan menimbulkan akibat yang fatal.<br>Menjaga kesehatan mental adalah kunci utama dalam menjalani kehidupan sehari-hari. Kesehatan mental yang terjaga dengan baik dapat membuat pelajar mampu menjalani aktivitas belajar dengan lebih optimal. Mental health atau kesehatan mental menjadi isu yang hangat diperbincangkan tidak hanya di masyarakat secara umum, tetapi juga di dunia pendidikan. Perubahan pola pembelajaran, kesulitan beradaptasi, tingkat penguasaan teknologi, dan ketidaksiapan menghadapi segala keterbatasan memunculkan tekanan-tekanan dan juga tantangan. Keadaan yang serta–merta terjadi ini sangat mempengaruhi tidak hanya kesehatan mental gutu tetapi juga siswa atau pelajar yang bersangkutan.<br>Salah satu tips/cara yang dapat diterapkan untuk meningkatkan kesehatan mental khususnya bagi pelajar dalam lembaga pendidikan yaitu penerapan 5T. 5T ini adalah Talking, Training, Teaching, Tools, dan Taking Care. 5T dapat diterapkan agar stres mereka tak makin menumpuk dan menjadi depresi.<br>T pertama adalah Talking about mental health. Para pelajar harus diedukasi dan dirangkul agar mudah mengungkapkan tentang kondisi kesehatan jiwa dan mentalnya. Hal ini bertujuan agar mereka memiliki kesadaran untuk meminta bantuan pada profesional dan mengurangi stigma yang ada pada masyarakat.<br>“Dengan edukasi dan keterbukaan untuk para pelajar, maka masalah yang dihadapi dapat terselesaikan dengan tepat dan baik. Pada dasarnya gangguan jiwa ini sama dengan penyakit lain. Jika diketahui diagnosanya sedari dini, dapat diberi penanganan yang tepat.”<br>T kedua adalah Training, yaitu memberikan pelatihan-pelatihan kepada tenaga pendidik di sekolah. Hal ini dibutuhkan agar tenaga pendidik bisa memberikan informasi yang benar kepada para pelajar. Selain itu, hal ini juga dapat mengurangi disinformasi dan tidak menimbulkan kebingungan pada siswa.</p><p style=\"margin: 10px 0px 12px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">Ketiga, Teaching, yaitu mengintegrasikan sistem pembelajaran dalam kurikulum sekolah ataupun dalam pembelajaran mengenai kesehatan mental.</p><p style=\"margin: 10px 0px 12px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">Keempat adalah Tools, yaitu tersedianya infrastruktur untuk menyalurkan beban mental yang dialami siswa. Misalnya dengan menyediakan saluran curhat, ruang rekreatif di sekolah, atau sejenisnya.</p><p style=\"margin: 10px 0px 12px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">Terakhir, Taking care yang ditujukan kepada para tenaga pendidik untuk peduli dengan kesehatan mental dirinya dan siswa. Kedua belah pihak harus saling menjaga. Dengan begitu, stakeholder di sekolah dari atas hingga bawah memiliki kesadaran yang baik tentang pentingnya menjaga kesehatan mental.</p><p style=\"margin: 10px 0px 12px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">Poin terakhir itu juga sangat menentukan, karena tenaga pendidik adalah agen utama. Jadi, pihak sekolah juga perlu meningkatkan kesehatan jiwa tenaga pendidiknya.<br>Untuk menjaga kesehatan mental pelajar, diperlukan kerja sama antara pihak sekolah, orang tua, dan juga keterbukaan dari pelajar itu sendiri.</p>', 'post_photo_1656559325.jpg', 3, 0, 1, 1, 1, '2022-06-29 20:22:05', '2022-06-29 20:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_ticker_total` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_ticker_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `news_ticker_total`, `news_ticker_status`, `created_at`, `updated_at`) VALUES
(1, '3', 'Show', NULL, '2022-06-29 14:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_on_menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_on_home` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Show',
  `sub_category_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `sub_category_name`, `show_on_menu`, `show_on_home`, `sub_category_order`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Tahukah Kamu?', 'Show', 'Show', '3', 1, '2022-06-29 20:10:05', '2022-06-29 20:10:05'),
(2, 'Informasi', 'Show', 'Show', '3', 2, '2022-06-29 20:16:31', '2022-06-29 20:16:31'),
(3, 'Tips', 'Show', 'Show', '3', 3, '2022-06-29 20:20:53', '2022-06-29 20:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `post_id`, `tag_name`, `created_at`, `updated_at`) VALUES
(34, 11, 'ipsum', '2022-06-26 19:01:45', '2022-06-26 19:01:45'),
(35, 12, 'lorem ipsum', '2022-06-26 19:12:19', '2022-06-26 19:12:19'),
(36, 10, 'anonymous', '2022-06-26 21:05:37', '2022-06-26 21:05:37'),
(37, 10, 'hacker', '2022-06-26 21:05:37', '2022-06-26 21:05:37'),
(38, 1, 'membaca', '2022-06-27 19:09:43', '2022-06-27 19:09:43'),
(39, 1, 'buku', '2022-06-27 19:09:43', '2022-06-27 19:09:43'),
(40, 2, 'debat', '2022-06-27 19:17:17', '2022-06-27 19:17:17'),
(41, 5, 'penerimaan beasiswa', '2022-06-29 15:12:15', '2022-06-29 15:12:15'),
(42, 5, 'beasiswa', '2022-06-29 15:12:15', '2022-06-29 15:12:15'),
(43, 1, 'tahukah kamu?', '2022-06-29 20:12:49', '2022-06-29 20:12:49'),
(44, 1, 'manfaat', '2022-06-29 20:12:49', '2022-06-29 20:12:49'),
(45, 1, 'membaca', '2022-06-29 20:12:49', '2022-06-29 20:12:49'),
(46, 1, 'sehat', '2022-06-29 20:12:49', '2022-06-29 20:12:49'),
(47, 2, 'berita', '2022-06-29 20:17:36', '2022-06-29 20:17:36'),
(48, 2, 'informasi', '2022-06-29 20:17:36', '2022-06-29 20:17:36'),
(49, 2, 'pramuka', '2022-06-29 20:17:36', '2022-06-29 20:17:36'),
(50, 3, 'tips', '2022-06-29 20:22:05', '2022-06-29 20:22:05'),
(51, 3, 'mental', '2022-06-29 20:22:05', '2022-06-29 20:22:05'),
(52, 3, 'pelajar', '2022-06-29 20:22:05', '2022-06-29 20:22:05'),
(53, 3, 'kesehatan', '2022-06-29 20:22:05', '2022-06-29 20:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
