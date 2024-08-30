-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 30, 2024 at 03:27 PM
-- Server version: 10.6.18-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quranapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `reciters`
--

CREATE TABLE `reciters` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `photo` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reciters`
--

INSERT INTO `reciters` (`id`, `name`, `photo`) VALUES
(1, 'Abdulbasit Abdulsamad', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Abdelbasset-abdessamad-27.jpg/333px-Abdelbasset-abdessamad-27.jpg'),
(2, 'Ahmad Al-Ajmy', 'https://upload.wikimedia.org/wikipedia/commons/e/e5/Ahmad_bin_Ali_Al-Ajmi.png'),
(3, 'Abdelbari Al-Toubayti', 'http://fr.assabile.com/media/person/200x256/abdul-bari-ath-thobaity.png'),
(4, 'Abdul Aziz Al-Ahmad', 'https://ia600707.us.archive.org/11/items/abdel-kabir-el-hadidi-001-al-fatiha-20111-6484_201811/AbdelAzizAlAhmed.jpg?cnt=0'),
(5, 'Abdulbari Mohammad', 'http://www.assabile.com/media/person/200x256/abdul-bari-mohamed.png'),
(6, 'Abdulhadi Kanakeri', 'http://fr.assabile.com/media/person/200x256/abdulhadi-kanakeri.png'),
(7, 'Abdullah Albuajan', 'https://static.old.islamway.net/uploads/scholars/aabouijan.jpg'),
(8, 'Abdullah Al-Burimi', 'http://www.assajda.com/media/person/square/abdullah-al-buraimi.jpg'),
(9, 'Abdullah Al-Johany', 'https://cdns-images.dzcdn.net/images/artist/bca2513e8f30b36ddc685810ebffb582/264x264.jpg'),
(10, 'Abdullah Al-Kandari', 'https://tvquran.com/uploads/authors/images/%D9%81%D9%87%D8%AF%20%D8%A7%D9%84%D9%83%D9%86%D8%AF%D8%B1%D9%8A.jpeg'),
(11, 'Abdullah Al-Mattrod', 'http://fr.assabile.com/media/person/200x256/abdallah-matroud.png'),
(12, 'Abdullah Basfer', 'http://fr.assabile.com/media/person/200x256/abdullah-ibn-ali-basfar.png'),
(13, 'Abdullah Khayyat', 'http://fr.assabile.com/media/person/200x256/abdullah-al-khayat.png'),
(14, 'Abdullah Qaulan', 'http://fr.assabile.com/media/person/200x256/abdullah-ghailan.png'),
(15, 'Abdulmohsen Al-Qasim', 'http://fr.assabile.com/media/person/200x256/abdulmohsen-al-qasim.png'),
(16, 'Abdulmohsin Al-Askar', 'https://tvquran.com/uploads/authors/images/%D8%B9%D8%A8%D8%AF%D8%A7%D9%84%D9%85%D8%AD%D8%B3%D9%86%20%D8%A7%D9%84%D8%B9%D8%B3%D9%83%D8%B1.jpg'),
(17, 'Abdulrahman Alsudaes', 'http://fr.assabile.com/media/person/200x256/abdul-rahman-al-sudais.png'),
(18, 'Abdulrasheed Soufi', 'https://i.pinimg.com/564x/cc/6e/e7/cc6ee7c4ab5333bbb50512c20c1b11d4.jpg'),
(19, 'Abdulwadood Haneef', 'http://fr.assabile.com/media/person/200x256/abdul-wadud-haneef.png'),
(20, 'Abdulwali Al-Arkani', 'http://fr.assabile.com/media/person/200x256/abdul-wali-al-arkani.png'),
(21, 'Abu Bakr Al Shatri', 'http://www.wliconline.org/uploads/artpic02GI3.jpg'),
(22, 'Addokali Mohammad Alalim', 'http://www.assajda.com/media/person/square/muhammad-al-aalim-al-dokali.jpg'),
(23, 'Adel Al-Khalbany', 'https://en.islamzoom.com/add/upload/files/picture_quran/full_size/adel-al-kalbani-136.jpg'),
(24, 'Adel Ryyan', 'https://uongofu.com/wp-content/uploads/2021/06/adil-rian.jpg'),
(25, 'Ibrahim Aldosari', 'http://quran.com.kw/en/wp-content/uploads/Ibrahim-Al-Dosary.jpg'),
(26, 'Ahmad Al-Hawashi', 'https://static.old.islamway.net/uploads/scholars/ahmad-bin-mohammad-alhawashi.jpg'),
(27, 'Ahmad Alhuthaifi', 'https://tvquran.com/uploads/authors/images/%D8%A3%D8%AD%D9%85%D8%AF%20%D8%A7%D9%84%D8%AD%D8%B0%D9%8A%D9%81%D9%8A.jpg'),
(28, 'Khaled Al-Qahtani', 'http://fr.assabile.com/media/person/200x256/khaled-al-qahtani.png'),
(29, 'Khalid Abdulkafi', 'http://www.assabile.com/media/person/200x256/khaled-abdelkafi.png'),
(30, 'Maher Al Meaqli', 'http://fr.assabile.com/media/person/200x256/maher-al-mueaqly.png'),
(31, 'Mahmood Al rifai', 'http://fr.assabile.com/media/person/200x256/mahmood-al-rifai.png'),
(32, 'Mahmoud Ali Albanna', 'http://fr.assabile.com/media/person/200x256/mahmud-ali-al-banna.png'),
(33, 'Mahmoud Khalil Al-Hussary', 'http://fr.assabile.com/media/person/200x256/mahmoud-khalil-al-hussary.png'),
(34, 'Mishary Alafasi', 'http://fr.assabile.com/media/person/200x256/mishary-rashid-alafasy.png'),
(35, 'Mohammad AlMonshed', 'https://tvquran.com/uploads/authors/images/%D9%85%D8%AD%D9%85%D8%AF%20%D8%A7%D9%84%D9%85%D9%86%D8%B4%D8%AF.jpg'),
(36, 'Mohammad Al-Tablaway', 'http://fr.assabile.com/media/person/200x256/mohamed-tablawi.png'),
(37, 'Mohammed Al-Barrak', 'https://tvquran.com/uploads/authors/images/%D9%85%D8%AD%D9%85%D8%AF%20%D8%A7%D9%84%D8%A8%D8%B1%D8%A7%D9%83.jpg'),
(38, 'Mohammed Jibreel', 'http://www.assabile.com/media/person/200x256/muhammad-jebril.png'),
(39, 'Mohammed Siddiq Al-Minshawi', 'https://static.qurancdn.com/images/reciters/7/mohamed-siddiq-el-minshawi-profile.jpeg'),
(40, 'Mohammed Siddiq Al-Minshawi_Almusshaf Al Mojawwad', 'https://3.bp.blogspot.com/-GE4lprnnGvo/XDS-I8WBqOI/AAAAAAAABMg/Aj4ApMWqXWE2vKXk_sobkujvGcclOy0fACLcBGAs/s1600/mohamed-seddik-el-menchaoui.png'),
(41, 'Mustafa Ismail', 'http://fr.assabile.com/media/person/200x256/mustapha-ismail.png'),
(42, 'Nabil Al Rifay', 'http://fr.assabile.com/media/person/200x256/nabil-ar-rifai.png'),
(43, 'Omar Al-Qazabri', 'http://fr.assabile.com/media/person/200x256/omar-al-kazabri.png'),
(44, 'Othman Al-Ansary', 'https://i1.sndcdn.com/artworks-1AFc5jiZTlO1sMf7-fnvC1g-t500x500.jpg'),
(45, 'Saad Al-Ghamdi', 'http://fr.assabile.com/media/person/200x256/saad-el-ghamidi.png'),
(46, 'Sami Al-Dosari', 'http://fr.assabile.com/media/person/200x256/sami-al-dosari.png'),
(47, 'Saud Al-Shuraim', 'https://fr.wikipedia.org/wiki/Saoud_Shuraim#/media/Fichier:Saud_Shuraim_doing_the_Khutbah.png'),
(48, 'Abdulaziz Az-Zahrani', 'https://i.pinimg.com/564x/9e/1e/c9/9e1ec9894c3a07416441444f432df88f.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reciters`
--
ALTER TABLE `reciters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reciters`
--
ALTER TABLE `reciters`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
