-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2022 at 05:29 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjadwalan`
--

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `conf_id` int(11) NOT NULL,
  `conf_name` varchar(200) DEFAULT NULL,
  `conf_value` varchar(100) DEFAULT NULL,
  `conf_tipe` varchar(3) DEFAULT '0' COMMENT '0:text, 1:cbox'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`conf_id`, `conf_name`, `conf_value`, `conf_tipe`) VALUES
(1, 'item_per_page', '500', '0'),
(2, 'semester_aktif', 'ganjil', '1'),
(3, 'min_persen_kelas', '10', '0'),
(4, 'th_akademik', '2022/2023', '0'),
(5, 'kepsek', 'Drs. Suharto, M.Pd.', '0'),
(6, 'waka_kurikulum', 'Cicilia Isni Hariyati, S.Pd', '0');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `guru_id` int(10) NOT NULL,
  `guru_nip` varchar(20) DEFAULT NULL,
  `guru_nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`guru_id`, `guru_nip`, `guru_nama`) VALUES
(1, '1', 'Mira Khoirunisa, S.pdi.'),
(2, '2', 'Barozi Eko Triyono, S.E'),
(3, '3', 'Dra. Ngadiyana'),
(4, '4', 'Hetty Widiyana, S.Th'),
(5, '5', 'Drs. Tugimin'),
(6, '6', 'Ambar Pratitis, S.Pd.'),
(7, '7', 'Dra. Dwi Ganiwati'),
(8, '8', 'Drs. Hananto'),
(9, '9', 'Sri Suharti, S.Pd.'),
(10, '10', 'Drs. Sukur'),
(11, '11', 'Dra. S. Try Budiyati, M.Hum.'),
(12, '12', 'Cicilia Isni Hariyanti, S.Pd.'),
(13, '13', 'Sudaryati, S.Pd.'),
(14, '14', 'Yulianti Prihdiyastuti, S.Pd.'),
(15, '15', 'Dra. Sri Maesarini Kn.'),
(16, '16', 'Sunarmi, S.Pd.'),
(17, '17', 'Eni Purwantini'),
(18, '18', 'Efi Triana Ningrum, S.Pd.'),
(19, '19', 'T. Prangripta Wibawa, S.Pd.'),
(20, '20', 'Drs. Susiyanta'),
(21, '21', 'Dwi Risyanto, S.Pd.'),
(22, '22', 'Dra. Wisnandari'),
(23, '23', 'Ninik Kurniawati, S.Pd.'),
(24, '24', 'Sri Saptina Haryanti, S.Pd.'),
(25, '25', 'Kurmianto, S.Pd.'),
(26, '26', 'Sri Mulyani, S.Pd.'),
(27, '27', 'Drs. Arum Triharjana'),
(28, '28', 'Tio Setyo Kuncoro, S.Pd.'),
(29, '29', 'Febryardini Dian P.R, S.S.'),
(30, '30', 'Dra. Veni Pro Deo'),
(31, '31', 'Dra. Sri Netty Purwaningsih'),
(32, '1101', 'Mio Konniciwa');

-- --------------------------------------------------------

--
-- Table structure for table `guru_kelas`
--

CREATE TABLE `guru_kelas` (
  `grkls_id` int(10) NOT NULL,
  `grkls_gr_id` int(10) DEFAULT NULL,
  `grkls_kls_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_kelas`
--

INSERT INTO `guru_kelas` (`grkls_id`, `grkls_gr_id`, `grkls_kls_id`) VALUES
(388, 2, 292),
(276, 2, 293),
(389, 2, 294),
(390, 2, 295),
(277, 2, 296),
(278, 2, 297),
(391, 2, 298),
(392, 2, 299),
(279, 2, 300),
(280, 2, 301),
(393, 2, 302),
(394, 2, 303),
(291, 3, 339),
(292, 3, 340),
(399, 3, 341),
(400, 3, 342),
(324, 5, 384),
(367, 5, 385),
(325, 5, 386),
(368, 5, 387),
(326, 5, 388),
(369, 5, 389),
(270, 6, 280),
(271, 6, 281),
(382, 6, 282),
(383, 6, 283),
(272, 6, 284),
(273, 6, 285),
(384, 6, 286),
(385, 6, 287),
(274, 6, 288),
(275, 6, 289),
(386, 6, 290),
(387, 6, 291),
(284, 7, 329),
(346, 7, 330),
(285, 7, 331),
(347, 7, 332),
(286, 7, 333),
(348, 7, 334),
(287, 7, 335),
(288, 7, 336),
(289, 7, 337),
(290, 7, 338),
(312, 8, 306),
(355, 8, 307),
(313, 8, 308),
(356, 8, 309),
(314, 8, 310),
(357, 8, 311),
(315, 10, 312),
(358, 10, 313),
(316, 10, 314),
(359, 10, 315),
(317, 10, 316),
(360, 10, 317),
(293, 11, 343),
(294, 11, 344),
(295, 11, 345),
(296, 11, 346),
(401, 11, 347),
(402, 11, 348),
(318, 12, 318),
(361, 12, 319),
(319, 12, 320),
(362, 12, 321),
(320, 12, 322),
(363, 12, 323),
(281, 12, 324),
(282, 12, 325),
(397, 12, 326),
(398, 12, 327),
(283, 12, 328),
(395, 14, 304),
(396, 14, 305),
(297, 15, 349),
(298, 15, 350),
(299, 15, 351),
(300, 15, 352),
(403, 15, 353),
(404, 15, 354),
(405, 15, 355),
(406, 15, 356),
(336, 17, 408),
(379, 17, 409),
(337, 17, 410),
(380, 17, 411),
(338, 17, 412),
(381, 17, 413),
(330, 18, 396),
(373, 18, 397),
(331, 18, 398),
(374, 18, 399),
(332, 18, 400),
(375, 18, 401),
(333, 18, 402),
(376, 18, 403),
(334, 18, 404),
(377, 18, 405),
(335, 18, 406),
(378, 18, 407),
(321, 20, 357),
(364, 20, 358),
(322, 20, 359),
(365, 20, 360),
(323, 20, 361),
(366, 20, 362),
(407, 20, 363),
(408, 20, 364),
(409, 20, 365),
(410, 20, 366),
(327, 21, 390),
(370, 21, 391),
(328, 21, 392),
(371, 21, 393),
(329, 21, 394),
(372, 21, 395),
(419, 22, 379),
(420, 22, 380),
(339, 22, 381),
(421, 22, 382),
(305, 22, 383),
(415, 30, 372),
(416, 30, 373),
(417, 30, 374),
(418, 30, 375),
(302, 30, 376),
(303, 30, 377),
(304, 30, 378),
(411, 31, 367),
(412, 31, 368),
(413, 31, 369),
(414, 31, 370),
(301, 31, 371),
(340, 32, 414),
(343, 32, 415),
(341, 32, 416),
(344, 32, 417),
(342, 32, 418),
(345, 32, 419);

-- --------------------------------------------------------

--
-- Table structure for table `guru_waktu`
--

CREATE TABLE `guru_waktu` (
  `grwkt_id` int(10) NOT NULL,
  `grwkt_gr_id` int(10) DEFAULT NULL,
  `grwkt_wkt_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_waktu`
--

INSERT INTO `guru_waktu` (`grwkt_id`, `grwkt_gr_id`, `grwkt_wkt_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_pelajaran`
--

CREATE TABLE `jadwal_pelajaran` (
  `jp_id` int(10) NOT NULL,
  `jp_kls_id` int(10) DEFAULT NULL,
  `jp_wkt_id` int(10) DEFAULT NULL,
  `jp_ru_id` int(10) DEFAULT NULL,
  `jp_period` int(6) DEFAULT NULL,
  `jp_label` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_pelajaran`
--

INSERT INTO `jadwal_pelajaran` (`jp_id`, `jp_kls_id`, `jp_wkt_id`, `jp_ru_id`, `jp_period`, `jp_label`) VALUES
(2902, 306, 10, 1, 2, 'IPA, selasa 09:45:00-11:15:00'),
(2903, 307, 4, 5, 2, 'IPA, senin 12:30:00-14:00:00'),
(2904, 308, 30, 1, 2, 'IPA, kamis 14:00:00-15:30:00'),
(2905, 309, 34, 7, 2, 'IPS, jumat 09:30:00-11:00:00'),
(2906, 310, 1, 5, 2, 'IPA, senin 08:00:00-09:30:00'),
(2907, 311, 32, 6, 2, 'IPA, jumat 07:00:00-08:30:00'),
(2908, 312, 18, 1, 2, 'IPA, rabu 09:45:00-11:15:00'),
(2909, 312, 2, 1, 2, 'IPA, senin 09:45:00-11:15:00'),
(2910, 313, 30, 5, 2, 'IPA, kamis 14:00:00-15:30:00'),
(2911, 313, 10, 5, 2, 'IPA, selasa 09:45:00-11:15:00'),
(2912, 314, 1, 1, 2, 'IPA, senin 08:00:00-09:30:00'),
(2913, 314, 8, 1, 2, 'IPA, selasa 07:15:00-08:45:00'),
(2914, 315, 22, 7, 2, 'IPS, rabu 14:00:00-15:30:00'),
(2915, 315, 14, 7, 2, 'IPS, selasa 14:00:00-15:30:00'),
(2916, 316, 32, 5, 2, 'IPA, jumat 07:00:00-08:30:00'),
(2917, 316, 26, 5, 2, 'IPA, kamis 09:45:00-11:15:00'),
(2918, 317, 16, 6, 2, 'IPA, rabu 07:15:00-08:45:00'),
(2919, 317, 28, 6, 2, 'IPA, kamis 12:30:00-14:00:00'),
(2920, 318, 34, 1, 2, 'IPA, jumat 09:30:00-11:00:00'),
(2921, 319, 2, 5, 2, 'IPA, senin 09:45:00-11:15:00'),
(2922, 320, 14, 1, 2, 'IPA, selasa 14:00:00-15:30:00'),
(2923, 321, 30, 7, 2, 'IPS, kamis 14:00:00-15:30:00'),
(2924, 322, 22, 5, 2, 'IPA, rabu 14:00:00-15:30:00'),
(2925, 323, 4, 6, 2, 'IPA, senin 12:30:00-14:00:00'),
(2926, 329, 20, 1, 2, 'IPA, rabu 12:30:00-14:00:00'),
(2927, 329, 28, 1, 2, 'IPA, kamis 12:30:00-14:00:00'),
(2928, 330, 14, 5, 2, 'IPA, selasa 14:00:00-15:30:00'),
(2929, 330, 24, 5, 2, 'IPA, kamis 07:15:00-08:45:00'),
(2930, 331, 26, 1, 2, 'IPA, kamis 09:45:00-11:15:00'),
(2931, 331, 6, 1, 2, 'IPA, senin 14:00:00-15:30:00'),
(2932, 332, 1, 7, 2, 'IPS, senin 08:00:00-09:30:00'),
(2933, 332, 16, 7, 2, 'IPS, rabu 07:15:00-08:45:00'),
(2934, 333, 18, 5, 2, 'IPA, rabu 09:45:00-11:15:00'),
(2935, 333, 8, 5, 2, 'IPA, selasa 07:15:00-08:45:00'),
(2936, 334, 12, 6, 2, 'IPA, selasa 12:30:00-14:00:00'),
(2937, 334, 30, 6, 2, 'IPA, kamis 14:00:00-15:30:00'),
(2938, 357, 24, 1, 2, 'IPA, kamis 07:15:00-08:45:00'),
(2939, 358, 34, 5, 2, 'IPA, jumat 09:30:00-11:00:00'),
(2940, 359, 22, 1, 2, 'IPA, rabu 14:00:00-15:30:00'),
(2941, 360, 2, 7, 2, 'IPS, senin 09:45:00-11:15:00'),
(2942, 361, 12, 5, 2, 'IPA, selasa 12:30:00-14:00:00'),
(2943, 362, 8, 6, 2, 'IPA, selasa 07:15:00-08:45:00'),
(2944, 384, 32, 1, 2, 'IPA, jumat 07:00:00-08:30:00'),
(2945, 385, 28, 5, 2, 'IPA, kamis 12:30:00-14:00:00'),
(2946, 386, 4, 1, 2, 'IPA, senin 12:30:00-14:00:00'),
(2947, 387, 6, 7, 2, 'IPS, senin 14:00:00-15:30:00'),
(2948, 388, 20, 5, 2, 'IPA, rabu 12:30:00-14:00:00'),
(2949, 389, 2, 6, 2, 'IPA, senin 09:45:00-11:15:00'),
(2950, 390, 16, 1, 2, 'IPA, rabu 07:15:00-08:45:00'),
(2951, 391, 6, 5, 2, 'IPA, senin 14:00:00-15:30:00'),
(2952, 392, 12, 1, 2, 'IPA, selasa 12:30:00-14:00:00'),
(2953, 393, 20, 7, 2, 'IPS, rabu 12:30:00-14:00:00'),
(2954, 395, 22, 6, 2, 'IPA, rabu 14:00:00-15:30:00'),
(2955, 396, 1, 3, 2, 'IPA, senin 08:00:00-09:30:00'),
(2956, 397, 16, 5, 2, 'IPA, rabu 07:15:00-08:45:00'),
(2957, 398, 31, 1, 1, 'IPA, kamis 14:45:00-15:30:00'),
(2958, 399, 5, 5, 1, 'IPA, senin 12:30:00-13:15:00'),
(2959, 400, 20, 12, 2, 'IPS, rabu 12:30:00-14:00:00'),
(2960, 401, 12, 7, 2, 'IPS, selasa 12:30:00-14:00:00'),
(2961, 402, 33, 1, 1, 'IPA, jumat 08:30:00-09:15:00'),
(2962, 403, 9, 7, 1, 'IPS, selasa 08:45:00-09:30:00'),
(2963, 404, 34, 4, 2, 'IPA, jumat 09:30:00-11:00:00'),
(2964, 405, 10, 6, 2, 'IPA, selasa 09:45:00-11:15:00'),
(2965, 406, 11, 5, 1, 'IPA, selasa 11:15:00-12:00:00'),
(2966, 407, 27, 6, 1, 'IPA, kamis 11:15:00-12:00:00'),
(2967, 408, 30, 2, 2, 'IPA, kamis 14:00:00-15:30:00'),
(2968, 409, 32, 10, 2, 'IPS, jumat 07:00:00-08:30:00'),
(2969, 410, 18, 9, 2, 'IPS, rabu 09:45:00-11:15:00'),
(2970, 411, 10, 7, 2, 'IPS, selasa 09:45:00-11:15:00'),
(2971, 412, 14, 2, 2, 'IPA, selasa 14:00:00-15:30:00'),
(2972, 413, 24, 6, 2, 'IPA, kamis 07:15:00-08:45:00'),
(2973, 414, 4, 7, 2, 'IPS, senin 12:30:00-14:00:00'),
(2974, 415, 26, 8, 2, 'IPS, kamis 09:45:00-11:15:00'),
(2975, 416, 10, 10, 2, 'IPS, selasa 09:45:00-11:15:00'),
(2976, 417, 24, 7, 2, 'IPS, kamis 07:15:00-08:45:00'),
(2977, 418, 2, 11, 2, 'IPS, senin 09:45:00-11:15:00'),
(2978, 419, 18, 6, 2, 'IPA, rabu 09:45:00-11:15:00'),
(2979, 280, 22, 9, 2, 'IPS, rabu 14:00:00-15:30:00'),
(2980, 281, 11, 1, 1, 'IPA, selasa 11:15:00-12:00:00'),
(2981, 282, 18, 2, 2, 'IPA, rabu 09:45:00-11:15:00'),
(2982, 283, 36, 5, 1, 'IPA, jumat 13:00:00-13:45:00'),
(2983, 284, 28, 7, 2, 'IPS, kamis 12:30:00-14:00:00'),
(2984, 285, 27, 1, 1, 'IPA, kamis 11:15:00-12:00:00'),
(2985, 286, 8, 7, 2, 'IPS, selasa 07:15:00-08:45:00'),
(2986, 287, 29, 7, 1, 'IPS, kamis 12:30:00-13:15:00'),
(2987, 288, 16, 2, 2, 'IPA, rabu 07:15:00-08:45:00'),
(2988, 289, 33, 5, 1, 'IPA, jumat 08:30:00-09:15:00'),
(2989, 290, 20, 6, 2, 'IPA, rabu 12:30:00-14:00:00'),
(2990, 291, 21, 6, 1, 'IPA, rabu 13:15:00-14:00:00'),
(2991, 293, 36, 1, 1, 'IPA, jumat 13:00:00-13:45:00'),
(2992, 294, 1, 6, 2, 'IPA, senin 08:00:00-09:30:00'),
(2993, 295, 31, 5, 1, 'IPA, kamis 14:45:00-15:30:00'),
(2994, 296, 16, 12, 2, 'IPS, rabu 07:15:00-08:45:00'),
(2995, 297, 13, 1, 1, 'IPA, selasa 12:30:00-13:15:00'),
(2996, 298, 32, 7, 2, 'IPS, jumat 07:00:00-08:30:00'),
(2997, 299, 23, 7, 1, 'IPS, rabu 14:45:00-15:30:00'),
(2998, 300, 6, 11, 2, 'IPS, senin 14:00:00-15:30:00'),
(2999, 301, 3, 5, 1, 'IPA, senin 11:15:00-12:00:00'),
(3000, 302, 26, 6, 2, 'IPA, kamis 09:45:00-11:15:00'),
(3001, 303, 5, 6, 1, 'IPA, senin 12:30:00-13:15:00'),
(3002, 304, 34, 6, 2, 'IPA, jumat 09:30:00-11:00:00'),
(3003, 305, 19, 6, 1, 'IPA, rabu 11:15:00-12:00:00'),
(3004, 324, 26, 10, 2, 'IPS, kamis 09:45:00-11:15:00'),
(3005, 325, 23, 1, 1, 'IPA, rabu 14:45:00-15:30:00'),
(3006, 326, 12, 4, 2, 'IPA, selasa 12:30:00-14:00:00'),
(3007, 327, 7, 5, 1, 'IPA, senin 13:15:00-14:00:00'),
(3008, 328, 32, 2, 2, 'IPA, jumat 07:00:00-08:30:00'),
(3009, 328, 24, 10, 2, 'IPS, kamis 07:15:00-08:45:00'),
(3010, 336, 7, 1, 1, 'IPA, senin 13:15:00-14:00:00'),
(3011, 337, 34, 3, 2, 'IPA, jumat 09:30:00-11:00:00'),
(3012, 337, 2, 12, 2, 'IPS, senin 09:45:00-11:15:00'),
(3013, 338, 4, 3, 2, 'IPA, senin 12:30:00-14:00:00'),
(3014, 338, 10, 11, 2, 'IPS, selasa 09:45:00-11:15:00'),
(3015, 339, 12, 10, 2, 'IPS, selasa 12:30:00-14:00:00'),
(3016, 340, 35, 1, 1, 'IPA, jumat 11:00:00-11:45:00'),
(3017, 341, 8, 10, 2, 'IPS, selasa 07:15:00-08:45:00'),
(3018, 342, 13, 5, 1, 'IPA, selasa 12:30:00-13:15:00'),
(3019, 344, 29, 1, 1, 'IPA, kamis 12:30:00-13:15:00'),
(3020, 346, 24, 3, 2, 'IPA, kamis 07:15:00-08:45:00'),
(3021, 347, 20, 10, 2, 'IPS, rabu 12:30:00-14:00:00'),
(3022, 348, 25, 5, 1, 'IPA, kamis 08:45:00-09:30:00'),
(3023, 349, 6, 2, 2, 'IPA, senin 14:00:00-15:30:00'),
(3024, 350, 5, 1, 1, 'IPA, senin 12:30:00-13:15:00'),
(3025, 352, 30, 3, 2, 'IPA, kamis 14:00:00-15:30:00'),
(3026, 353, 22, 11, 2, 'IPS, rabu 14:00:00-15:30:00'),
(3027, 354, 23, 5, 1, 'IPA, rabu 14:45:00-15:30:00'),
(3028, 355, 26, 7, 2, 'IPS, kamis 09:45:00-11:15:00'),
(3029, 355, 18, 7, 2, 'IPS, rabu 09:45:00-11:15:00'),
(3030, 356, 14, 6, 2, 'IPA, selasa 14:00:00-15:30:00'),
(3031, 364, 15, 5, 1, 'IPA, selasa 14:00:00-14:45:00'),
(3032, 365, 28, 12, 2, 'IPS, kamis 12:30:00-14:00:00'),
(3033, 365, 4, 9, 2, 'IPS, senin 12:30:00-14:00:00'),
(3034, 366, 6, 6, 2, 'IPA, senin 14:00:00-15:30:00'),
(3035, 368, 27, 5, 1, 'IPA, kamis 11:15:00-12:00:00'),
(3036, 370, 1, 2, 2, 'IPA, senin 08:00:00-09:30:00'),
(3037, 371, 28, 4, 2, 'IPA, kamis 12:30:00-14:00:00'),
(3038, 375, 29, 5, 1, 'IPA, kamis 12:30:00-13:15:00'),
(3039, 376, 14, 9, 2, 'IPS, selasa 14:00:00-15:30:00'),
(3040, 377, 17, 1, 1, 'IPA, rabu 08:45:00-09:30:00'),
(3041, 380, 19, 5, 1, 'IPA, rabu 11:15:00-12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kls_id` int(10) NOT NULL,
  `kls_kode_prodi` varchar(15) DEFAULT NULL,
  `kls_mpkur_id` int(10) DEFAULT NULL,
  `kls_nama` varchar(20) DEFAULT NULL,
  `kls_kode_paralel` varchar(6) DEFAULT NULL,
  `kls_jml_peserta_prediksi` int(6) DEFAULT NULL,
  `kls_jadwal_merata` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kls_id`, `kls_kode_prodi`, `kls_mpkur_id`, `kls_nama`, `kls_kode_paralel`, `kls_jml_peserta_prediksi`, `kls_jadwal_merata`) VALUES
(280, 'IPA', 7, 'IPA-MA001', NULL, 30, 0),
(281, 'IPA', 8, 'IPA-MA002', NULL, 30, 0),
(282, 'IPS', 9, 'IPS-MS001', NULL, 30, 0),
(283, 'IPS', 10, 'IPS-MS002', NULL, 30, 0),
(284, 'IPA', 11, 'IPA-MA003', NULL, 30, 0),
(285, 'IPA', 12, 'IPA-MA004', NULL, 30, 0),
(286, 'IPS', 13, 'IPS-MS003', NULL, 30, 0),
(287, 'IPS', 14, 'IPS-MS004', NULL, 30, 0),
(288, 'IPA', 15, 'IPA-MA005', NULL, 30, 0),
(289, 'IPA', 16, 'IPA-MA006', NULL, 30, 0),
(290, 'IPS', 17, 'IPS-MS005', NULL, 30, 0),
(291, 'IPS', 18, 'IPS-MS006', NULL, 30, 0),
(292, 'IPS', 19, 'IPS-MS007', NULL, 30, 0),
(293, 'IPA', 20, 'IPA-MA007', NULL, 30, 0),
(294, 'IPS', 21, 'IPS-MS008', NULL, 30, 0),
(295, 'IPS', 22, 'IPS-MS009', NULL, 30, 0),
(296, 'IPA', 23, 'IPA-MA008', NULL, 30, 0),
(297, 'IPA', 24, 'IPA-MA009', NULL, 30, 0),
(298, 'IPS', 25, 'IPS-MS010', NULL, 30, 0),
(299, 'IPS', 26, 'IPS-MS011', NULL, 30, 0),
(300, 'IPA', 27, 'IPA-MA010', NULL, 30, 0),
(301, 'IPA', 28, 'IPA-MA011', NULL, 30, 0),
(302, 'IPS', 29, 'IPS-MS012', NULL, 30, 0),
(303, 'IPS', 30, 'IPS-MS013', NULL, 30, 0),
(304, 'IPS', 31, 'IPS-MS014', NULL, 30, 0),
(305, 'IPS', 32, 'IPS-MS015', NULL, 30, 0),
(306, 'IPA', 33, 'IPA-MAS007', NULL, 30, 1),
(307, 'IPS', 33, 'IPS-MAS007', NULL, 30, 1),
(308, 'IPA', 34, 'IPA-MAS008', NULL, 30, 1),
(309, 'IPS', 34, 'IPS-MAS008', NULL, 30, 1),
(310, 'IPA', 35, 'IPA-MAS009', NULL, 30, 1),
(311, 'IPS', 35, 'IPS-MAS009', NULL, 30, 1),
(312, 'IPA', 36, 'IPA-MAS010', NULL, 30, 1),
(313, 'IPS', 36, 'IPS-MAS010', NULL, 30, 1),
(314, 'IPA', 37, 'IPA-MAS011', NULL, 30, 1),
(315, 'IPS', 37, 'IPS-MAS011', NULL, 30, 1),
(316, 'IPA', 38, 'IPA-MAS012', NULL, 30, 1),
(317, 'IPS', 38, 'IPS-MAS012', NULL, 30, 1),
(318, 'IPA', 39, 'IPA-MAS013', NULL, 30, 1),
(319, 'IPS', 39, 'IPS-MAS013', NULL, 30, 1),
(320, 'IPA', 40, 'IPA-MAS014', NULL, 30, 1),
(321, 'IPS', 40, 'IPS-MAS014', NULL, 30, 1),
(322, 'IPA', 41, 'IPA-MAS015', NULL, 30, 1),
(323, 'IPS', 41, 'IPS-MAS015', NULL, 30, 1),
(324, 'IPA', 42, 'IPA-MA011', NULL, 30, 0),
(325, 'IPA', 43, 'IPA-MA012', NULL, 30, 0),
(326, 'IPS', 44, 'IPS-MS016', NULL, 30, 0),
(327, 'IPS', 45, 'IPS-MS017', NULL, 30, 0),
(328, 'IPA', 46, 'IPA-MA013', NULL, 30, 0),
(329, 'IPA', 47, 'IPA-MA014', NULL, 30, 1),
(330, 'IPS', 47, 'IPS-MA014', NULL, 30, 1),
(331, 'IPA', 48, 'IPA-MA015', NULL, 30, 1),
(332, 'IPS', 48, 'IPS-MA015', NULL, 30, 1),
(333, 'IPA', 49, 'IPA-MA016', NULL, 30, 1),
(334, 'IPS', 49, 'IPS-MA016', NULL, 30, 1),
(335, 'IPA', 50, 'IPA-MA017', NULL, 30, 0),
(336, 'IPA', 51, 'IPA-MA018', NULL, 30, 0),
(337, 'IPA', 52, 'IPA-MA019', NULL, 30, 0),
(338, 'IPA', 53, 'IPA-MA020', NULL, 30, 0),
(339, 'IPA', 54, 'IPA-MA021', NULL, 30, 0),
(340, 'IPA', 55, 'IPA-MA022', NULL, 30, 0),
(341, 'IPS', 56, 'IPS-MS018', NULL, 30, 0),
(342, 'IPS', 57, 'IPS-MS019', NULL, 30, 0),
(343, 'IPA', 58, 'IPA-MA023', NULL, 30, 0),
(344, 'IPA', 59, 'IPA-MA024', NULL, 30, 0),
(345, 'IPA', 60, 'IPA-MA025', NULL, 30, 0),
(346, 'IPA', 61, 'IPA-MA026', NULL, 30, 0),
(347, 'IPS', 62, 'IPS-MS020', NULL, 30, 0),
(348, 'IPS', 63, 'IPS-MS021', NULL, 30, 0),
(349, 'IPA', 64, 'IPA-MA027', NULL, 30, 0),
(350, 'IPA', 65, 'IPA-MA028', NULL, 30, 0),
(351, 'IPA', 66, 'IPA-MA029', NULL, 30, 0),
(352, 'IPA', 67, 'IPA-MA030', NULL, 30, 0),
(353, 'IPS', 68, 'IPS-MS022', NULL, 30, 0),
(354, 'IPS', 69, 'IPS-MS023', NULL, 30, 0),
(355, 'IPS', 70, 'IPS-MS024', NULL, 30, 0),
(356, 'IPS', 71, 'IPS-MS025', NULL, 30, 0),
(357, 'IPA', 72, 'IPA-MAS016', NULL, 30, 1),
(358, 'IPS', 72, 'IPS-MAS016', NULL, 30, 1),
(359, 'IPA', 73, 'IPA-MAS017', NULL, 30, 1),
(360, 'IPS', 73, 'IPS-MAS017', NULL, 30, 1),
(361, 'IPA', 74, 'IPA-MAS018', NULL, 30, 1),
(362, 'IPS', 74, 'IPS-MAS018', NULL, 30, 1),
(363, 'IPS', 75, 'IPS-MS026', NULL, 30, 0),
(364, 'IPS', 76, 'IPS-MS027', NULL, 30, 0),
(365, 'IPS', 77, 'IPS-MS028', NULL, 30, 0),
(366, 'IPS', 78, 'IPS-MS029', NULL, 30, 0),
(367, 'IPS', 79, 'IPS-MS030', NULL, 30, 0),
(368, 'IPS', 80, 'IPS-MS031', NULL, 30, 0),
(369, 'IPS', 81, 'IPS-MS032', NULL, 30, 0),
(370, 'IPS', 82, 'IPS-MS033', NULL, 30, 0),
(371, 'IPA', 83, 'IPA-MA031', NULL, 30, 0),
(372, 'IPS', 84, 'IPS-MS034', NULL, 30, 0),
(373, 'IPS', 85, 'IPS-MS035', NULL, 30, 0),
(374, 'IPS', 86, 'IPS-MS036', NULL, 30, 0),
(375, 'IPS', 87, 'IPS-MS037', NULL, 30, 0),
(376, 'IPA', 88, 'IPA-MA032', NULL, 30, 0),
(377, 'IPA', 89, 'IPA-MA033', NULL, 30, 0),
(378, 'IPA', 90, 'IPA-MA034', NULL, 30, 0),
(379, 'IPS', 91, 'IPS-MS038', NULL, 30, 0),
(380, 'IPS', 92, 'IPS-MS039', NULL, 30, 0),
(381, 'IPA', 93, 'IPA-MS040', NULL, 30, 0),
(382, 'IPS', 94, 'IPS-MS041', NULL, 30, 0),
(383, 'IPA', 95, 'IPA-MA035', NULL, 30, 0),
(384, 'IPA', 96, 'IPA-MAS019', NULL, 30, 1),
(385, 'IPS', 96, 'IPS-MAS019', NULL, 30, 1),
(386, 'IPA', 97, 'IPA-MAS020', NULL, 30, 1),
(387, 'IPS', 97, 'IPS-MAS020', NULL, 30, 1),
(388, 'IPA', 98, 'IPA-MAS021', NULL, 30, 1),
(389, 'IPS', 98, 'IPS-MAS021', NULL, 30, 1),
(390, 'IPA', 99, 'IPA-MAS022', NULL, 30, 1),
(391, 'IPS', 99, 'IPS-MAS022', NULL, 30, 1),
(392, 'IPA', 100, 'IPA-MAS023', NULL, 30, 1),
(393, 'IPS', 100, 'IPS-MAS023', NULL, 30, 1),
(394, 'IPA', 101, 'IPA-MAS024', NULL, 30, 1),
(395, 'IPS', 101, 'IPS-MAS024', NULL, 30, 1),
(396, 'IPA', 102, 'IPA-MAS025', NULL, 30, 1),
(397, 'IPS', 102, 'IPS-MAS025', NULL, 30, 1),
(398, 'IPA', 103, 'IPA-MAS026', NULL, 30, 1),
(399, 'IPS', 103, 'IPS-MAS026', NULL, 30, 1),
(400, 'IPA', 104, 'IPA-MAS027', NULL, 30, 1),
(401, 'IPS', 104, 'IPS-MAS027', NULL, 30, 1),
(402, 'IPA', 105, 'IPA-MAS028', NULL, 30, 1),
(403, 'IPS', 105, 'IPS-MAS028', NULL, 30, 1),
(404, 'IPA', 106, 'IPA-MAS029', NULL, 30, 1),
(405, 'IPS', 106, 'IPS-MAS029', NULL, 30, 1),
(406, 'IPA', 107, 'IPA-MAS030', NULL, 30, 1),
(407, 'IPS', 107, 'IPS-MAS030', NULL, 30, 1),
(408, 'IPA', 108, 'IPA-MAS031', NULL, 30, 1),
(409, 'IPS', 108, 'IPS-MAS031', NULL, 30, 1),
(410, 'IPA', 109, 'IPA-MAS032', NULL, 30, 1),
(411, 'IPS', 109, 'IPS-MAS032', NULL, 30, 1),
(412, 'IPA', 110, 'IPA-MAS033', NULL, 30, 1),
(413, 'IPS', 110, 'IPS-MAS033', NULL, 30, 1),
(414, 'IPA', 111, 'IPA-MSJ01', NULL, 30, 1),
(415, 'IPS', 111, 'IPS-MSJ01', NULL, 30, 1),
(416, 'IPA', 112, 'IPA-MSJ02', NULL, 30, 1),
(417, 'IPS', 112, 'IPS-MSJ02', NULL, 30, 1),
(418, 'IPA', 113, 'IPA-MSJ03', NULL, 30, 1),
(419, 'IPS', 113, 'IPS-MSJ03', NULL, 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mapel_kurikulum`
--

CREATE TABLE `mapel_kurikulum` (
  `mpkur_id` int(10) NOT NULL,
  `mpkur_kode` varchar(10) DEFAULT NULL,
  `mpkur_nama` varchar(50) DEFAULT NULL,
  `mpkur_sks` int(5) DEFAULT NULL,
  `mpkur_semester` varchar(10) DEFAULT NULL COMMENT 'Genjil, Genap',
  `mpkur_sifat` varchar(3) DEFAULT NULL COMMENT 'W:Wajib,P:Pilihan',
  `mpkur_paket_semester` varchar(5) DEFAULT NULL,
  `mpkur_prod_jml_peminat` int(10) DEFAULT 30,
  `mpkur_jumlah_pert` int(1) DEFAULT 1,
  `mpkur_is_universal` tinyint(1) DEFAULT 0 COMMENT '1 : Universal',
  `mpkur_maks_kelas` int(10) DEFAULT 30 COMMENT 'maks peserta kelas',
  `mpkur_jns` int(11) NOT NULL DEFAULT 0 COMMENT '1 : Praktikum'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel_kurikulum`
--

INSERT INTO `mapel_kurikulum` (`mpkur_id`, `mpkur_kode`, `mpkur_nama`, `mpkur_sks`, `mpkur_semester`, `mpkur_sifat`, `mpkur_paket_semester`, `mpkur_prod_jml_peminat`, `mpkur_jumlah_pert`, `mpkur_is_universal`, `mpkur_maks_kelas`, `mpkur_jns`) VALUES
(7, 'MA001', 'Pendidikan Agama Khatolik', 2, 'ganjil', 'w', '1', 30, 1, 0, 30, 0),
(8, 'MA002', 'Pendidikan Agama Khatolik', 1, 'ganjil', 'w', '1', 30, 1, 0, 30, 0),
(9, 'MS001', 'Pendidikan Agama Khatolik', 2, 'ganjil', 'w', '1', 30, 1, 0, 30, 0),
(10, 'MS002', 'Pendidikan Agama Khatolik', 1, 'ganjil', 'w', '1', 30, 1, 0, 30, 0),
(11, 'MA003', 'Pendidikan Agama Khatolik', 2, 'ganjil', 'w', '3', 30, 1, 0, 30, 0),
(12, 'MA004', 'Pendidikan Agama Khatolik', 1, 'ganjil', 'w', '3', 30, 1, 0, 30, 0),
(13, 'MS003', 'Pendidikan Agama Khatolik', 2, 'ganjil', 'w', '3', 30, 1, 0, 30, 0),
(14, 'MS004', 'Pendidikan Agama Khatolik', 1, 'ganjil', 'w', '3', 30, 1, 0, 30, 0),
(15, 'MA005', 'Pendidikan Agama Khatolik', 2, 'ganjil', 'w', '5', 30, 1, 0, 30, 0),
(16, 'MA006', 'Pendidikan Agama Khatolik', 1, 'ganjil', 'w', '5', 30, 1, 0, 30, 0),
(17, 'MS005', 'Pendidikan Agama Khatolik', 2, 'ganjil', 'w', '5', 30, 1, 0, 30, 0),
(18, 'MS006', 'Pendidikan Agama Khatolik', 1, 'ganjil', 'w', '5', 30, 1, 0, 30, 0),
(19, 'MS007', 'Pendidikan Agama Kristen', 2, 'ganjil', 'w', '1', 30, 0, 0, 30, 0),
(20, 'MA007', 'Pendidikan Agama Kristen', 1, 'ganjil', 'w', '1', 30, 1, 0, 30, 0),
(21, 'MS008', 'Pendidikan Agama Kristen', 2, 'ganjil', 'w', '1', 30, 1, 0, 30, 0),
(22, 'MS009', 'Pendidikan Agama Kristen', 1, 'ganjil', 'w', '1', 30, 1, 0, 30, 0),
(23, 'MA008', 'Pendidikan Agama Kristen', 2, 'ganjil', 'w', '3', 30, 1, 0, 30, 0),
(24, 'MA009', 'Pendidikan Agama Kristen', 1, 'ganjil', 'w', '3', 30, 1, 0, 30, 0),
(25, 'MS010', 'Pendidikan Agama Kristen', 2, 'ganjil', 'w', '3', 30, 1, 0, 30, 0),
(26, 'MS011', 'Pendidikan Agama Kristen', 1, 'ganjil', 'w', '3', 30, 1, 0, 30, 0),
(27, 'MA010', 'Pendidikan Agama Kristen', 2, 'ganjil', 'w', '5', 30, 1, 0, 30, 0),
(28, 'MA011', 'Pendidikan Agama Kristen', 1, 'ganjil', 'w', '5', 30, 1, 0, 30, 0),
(29, 'MS012', 'Pendidikan Agama Kristen', 2, 'ganjil', 'w', '5', 30, 1, 0, 30, 0),
(30, 'MS013', 'Pendidikan Agama Kristen', 1, 'ganjil', 'w', '5', 30, 1, 0, 30, 0),
(31, 'MS014', 'Pendidikan Agama Hindu', 2, 'ganjil', 'w', '5', 30, 1, 0, 30, 0),
(32, 'MS015', 'Pendidikan Agama Hindu', 1, 'ganjil', 'w', '5', 30, 1, 0, 30, 0),
(33, 'MAS007', 'PKn', 2, 'ganjil', 'w', '1', 30, 1, 1, 30, 0),
(34, 'MAS008', 'PKN', 2, 'ganjil', 'w', '3', 30, 1, 1, 50, 0),
(35, 'MAS009', 'PKn', 2, 'ganjil', 'w', '5', 30, 1, 1, 30, 0),
(36, 'MAS010', 'Bahasa Indonesia', 2, 'ganjil', 'w', '1', 30, 2, 1, 30, 0),
(37, 'MAS011', 'Bahasa Indonesia', 2, 'ganjil', 'w', '3', 30, 2, 1, 30, 0),
(38, 'MAS012', 'Bahasa Indonesia', 2, 'ganjil', 'w', '5', 30, 2, 1, 30, 0),
(39, 'MAS013', 'Bahasa Inggris', 2, 'ganjil', 'w', '1', 30, 1, 1, 30, 0),
(40, 'MAS014', 'Bahasa Inggris', 2, 'ganjil', 'w', '3', 30, 1, 1, 30, 0),
(41, 'MAS015', 'Bahasa Inggris', 2, 'ganjil', 'w', '5', 30, 1, 1, 30, 0),
(42, 'MA011', 'Bhs & Sastra Inggris', 2, 'ganjil', 'w', '1', 30, 1, 0, 30, 0),
(43, 'MA012', 'Bhs & Sastra Inggris', 1, 'ganjil', 'w', '1', 30, 1, 0, 30, 0),
(44, 'MS016', 'Bhs & Sastra Inggris', 2, 'ganjil', 'w', '1', 30, 1, 0, 30, 0),
(45, 'MS017', 'Bhs & Sastra Inggris', 1, 'ganjil', 'w', '1', 30, 1, 0, 30, 0),
(46, 'MA013', 'Bhs & Sastra Inggris', 2, 'ganjil', 'w', '3', 30, 2, 0, 30, 0),
(47, 'MA014', 'Matematika', 2, 'ganjil', 'w', '1', 30, 2, 1, 30, 0),
(48, 'MA015', 'Matematika', 2, 'ganjil', 'w', '3', 30, 2, 1, 30, 0),
(49, 'MA016', 'Matematika', 2, 'ganjil', 'w', '5', 30, 2, 1, 30, 0),
(50, 'MA017', 'Matematika', 2, 'ganjil', 'w', '1', 30, 1, 0, 50, 0),
(51, 'MA018', 'Matematika', 1, 'ganjil', 'w', '1', 30, 1, 0, 50, 0),
(52, 'MA019', 'Matematika', 2, 'ganjil', 'w', '3', 30, 2, 0, 50, 0),
(53, 'MA020', 'Matematika', 2, 'ganjil', 'w', '5', 30, 2, 0, 50, 0),
(54, 'MA021', 'Fisika', 2, 'ganjil', 'w', '1', 30, 1, 0, 50, 0),
(55, 'MA022', 'Fisika', 1, 'ganjil', 'w', '1', 30, 1, 0, 50, 0),
(56, 'MS018', 'Fisika', 2, 'ganjil', 'p', '1', 30, 1, 0, 50, 0),
(57, 'MS019', 'Fisika', 1, 'ganjil', 'p', '1', 30, 1, 0, 50, 0),
(58, 'MA023', 'Biologi', 2, 'ganjil', 'w', '1', 30, 1, 0, 50, 0),
(59, 'MA024', 'Biologi', 1, 'ganjil', 'w', '1', 30, 1, 0, 50, 0),
(60, 'MA025', 'Biologi', 2, 'ganjil', 'w', '3', 30, 2, 0, 50, 0),
(61, 'MA026', 'Biologi', 2, 'ganjil', 'w', '5', 30, 2, 0, 50, 0),
(62, 'MS020', 'Biologi', 2, 'ganjil', 'p', '1', 30, 1, 0, 50, 0),
(63, 'MS021', 'Biologi', 1, 'ganjil', 'p', '1', 30, 1, 0, 50, 0),
(64, 'MA027', 'Kimia', 2, 'ganjil', 'w', '1', 30, 1, 0, 50, 0),
(65, 'MA028', 'Kimia', 1, 'ganjil', 'w', '1', 30, 1, 0, 50, 0),
(66, 'MA029', 'Kimia', 2, 'ganjil', 'w', '3', 30, 2, 0, 50, 0),
(67, 'MA030', 'Kimia', 2, 'ganjil', 'w', '5', 30, 2, 0, 50, 0),
(68, 'MS022', 'Kimia', 2, 'ganjil', 'p', '1', 30, 1, 0, 50, 0),
(69, 'MS023', 'Kimia', 1, 'ganjil', 'p', '1', 30, 1, 0, 50, 0),
(70, 'MS024', 'Kimia', 2, 'ganjil', 'p', '3', 30, 2, 0, 50, 0),
(71, 'MS025', 'Kimia', 2, 'ganjil', 'p', '5', 30, 2, 0, 50, 0),
(72, 'MAS016', 'Sejarah', 2, 'ganjil', 'w', '1', 30, 1, 1, 50, 0),
(73, 'MAS017', 'Sejarah', 2, 'ganjil', 'w', '3', 30, 1, 1, 50, 0),
(74, 'MAS018', 'Sejarah', 2, 'ganjil', 'w', '5', 30, 1, 1, 50, 0),
(75, 'MS026', 'Sejarah', 2, 'ganjil', 'w', '1', 30, 1, 0, 50, 0),
(76, 'MS027', 'Sejarah', 1, 'ganjil', 'w', '1', 30, 1, 0, 50, 0),
(77, 'MS028', 'Sejarah', 2, 'ganjil', 'w', '3', 30, 2, 0, 50, 0),
(78, 'MS029', 'Sejarah', 2, 'ganjil', 'w', '5', 30, 2, 0, 50, 0),
(79, 'MS030', 'Geografi', 2, 'ganjil', 'w', '1', 30, 1, 0, 50, 0),
(80, 'MS031', 'Geografi', 1, 'ganjil', 'w', '1', 30, 1, 0, 50, 0),
(81, 'MS032', 'Geografi', 2, 'ganjil', 'w', '3', 30, 1, 0, 50, 0),
(82, 'MS033', 'Geografi', 2, 'ganjil', 'w', '5', 30, 1, 0, 50, 0),
(83, 'MA031', 'Geografi', 2, 'ganjil', 'p', '5', 30, 1, 0, 50, 0),
(84, 'MS034', 'Prakarya', 2, 'ganjil', 'w', '3', 30, 2, 0, 50, 0),
(85, 'MS035', 'Prakarya', 2, 'ganjil', 'w', '5', 30, 2, 0, 50, 0),
(86, 'MS036', 'Prakarya', 2, 'ganjil', 'w', '1', 30, 1, 0, 50, 0),
(87, 'MS037', 'Prakarya', 1, 'ganjil', 'w', '1', 30, 1, 0, 50, 0),
(88, 'MA032', 'Prakarya', 2, 'ganjil', 'p', '1', 30, 2, 0, 50, 0),
(89, 'MA033', 'Prakarya', 1, 'ganjil', 'p', '1', 30, 1, 0, 50, 0),
(90, 'MA034', 'Prakarya', 2, 'ganjil', 'p', '3', 30, 1, 0, 50, 0),
(91, 'MS038', 'Sosiologi', 2, 'ganjil', 'w', '1', 30, 1, 0, 50, 0),
(92, 'MS039', 'Sosiologi', 1, 'ganjil', 'w', '1', 30, 1, 0, 50, 0),
(93, 'MS040', 'Sosiologi', 2, 'ganjil', 'w', '3', 30, 1, 0, 50, 0),
(94, 'MS041', 'Sosiologi', 2, 'ganjil', 'w', '5', 30, 1, 0, 50, 0),
(95, 'MA035', 'Sosiologi', 2, 'ganjil', 'p', '5', 30, 1, 0, 50, 0),
(96, 'MAS019', 'Kesenian', 2, 'ganjil', 'w', '1', 30, 1, 1, 50, 0),
(97, 'MAS020', 'Kesenian', 2, 'ganjil', 'w', '3', 30, 1, 1, 50, 0),
(98, 'MAS021', 'Kesenian', 2, 'ganjil', 'w', '5', 30, 1, 1, 50, 0),
(99, 'MAS022', 'PKWU', 2, 'ganjil', 'w', '1', 30, 1, 1, 50, 0),
(100, 'MAS023', 'PKWU', 2, 'ganjil', 'w', '3', 30, 1, 1, 50, 0),
(101, 'MAS024', 'PKWU', 2, 'ganjil', 'w', '5', 30, 1, 1, 50, 0),
(102, 'MAS025', 'Penjaskes', 2, 'ganjil', 'w', '1', 30, 1, 1, 50, 0),
(103, 'MAS026', 'Penjaskes', 1, 'ganjil', 'w', '1', 30, 1, 1, 50, 0),
(104, 'MAS027', 'Penjaskes', 2, 'ganjil', 'w', '3', 30, 1, 1, 50, 0),
(105, 'MAS028', 'Penjaskes', 1, 'ganjil', 'w', '3', 30, 1, 1, 50, 0),
(106, 'MAS029', 'Penjaskes', 2, 'ganjil', 'w', '5', 30, 1, 1, 50, 0),
(107, 'MAS030', 'Penjaskes', 1, 'ganjil', 'w', '5', 30, 1, 1, 50, 0),
(108, 'MAS031', 'Bahasa Melayu', 2, 'ganjil', 'w', '1', 30, 1, 1, 50, 0),
(109, 'MAS032', 'Bahasa Melayu', 2, 'ganjil', 'w', '3', 30, 1, 1, 50, 0),
(110, 'MAS033', 'Bahasa Melayu', 2, 'ganjil', 'w', '5', 30, 1, 0, 50, 0),
(111, 'MSJ01', 'Bahasa Jepang', 2, 'ganjil', 'w', '1', 30, 1, NULL, 50, 0),
(112, 'MSJ02', 'Bahasa Jepang', 2, 'ganjil', 'w', '3', 30, 1, NULL, 50, 0),
(113, 'MSJ03', 'Bahasa Jepang', 2, 'ganjil', 'w', '5', 30, 1, NULL, 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mapel_kur_prodi`
--

CREATE TABLE `mapel_kur_prodi` (
  `mpkprod_id` int(10) NOT NULL,
  `mpkprod_mpkur_id` int(10) DEFAULT NULL,
  `mpkprod_prodi_id` int(10) DEFAULT NULL,
  `mpkprod_related_id` int(10) DEFAULT 0 COMMENT 'if kelas gabung, isi dgn mkkprod_id yg udah ada before',
  `mpkprod_porsi_kelas` int(10) DEFAULT 1 COMMENT 'porsi kelas dari jumlah total peserta makul'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel_kur_prodi`
--

INSERT INTO `mapel_kur_prodi` (`mpkprod_id`, `mpkprod_mpkur_id`, `mpkprod_prodi_id`, `mpkprod_related_id`, `mpkprod_porsi_kelas`) VALUES
(42, 57, 2, 0, 1),
(43, 42, 1, 0, 1),
(44, 32, 2, 0, 1),
(45, 31, 2, 0, 1),
(46, 30, 2, 0, 1),
(47, 29, 2, 0, 1),
(48, 28, 1, 0, 1),
(49, 27, 1, 0, 1),
(50, 26, 2, 0, 1),
(51, 25, 2, 0, 1),
(52, 43, 1, 0, 1),
(53, 44, 2, 0, 1),
(54, 56, 2, 0, 1),
(55, 55, 1, 0, 1),
(56, 54, 1, 0, 1),
(57, 53, 1, 0, 1),
(58, 52, 1, 0, 1),
(59, 51, 1, 0, 1),
(60, 50, 1, 0, 1),
(61, 46, 1, 0, 1),
(62, 45, 2, 0, 1),
(63, 19, 2, 0, 1),
(64, 24, 1, 0, 1),
(65, 23, 1, 0, 1),
(66, 22, 2, 0, 1),
(67, 7, 1, 0, 1),
(68, 8, 1, 0, 1),
(69, 9, 2, 0, 1),
(70, 10, 2, 0, 1),
(71, 11, 1, 0, 1),
(72, 12, 1, 0, 1),
(73, 13, 2, 0, 1),
(74, 15, 1, 0, 1),
(75, 18, 2, 0, 1),
(76, 17, 2, 0, 1),
(77, 16, 1, 0, 1),
(78, 14, 2, 0, 1),
(79, 20, 1, 0, 1),
(80, 21, 2, 0, 1),
(81, 62, 2, 0, 1),
(82, 63, 2, 0, 1),
(83, 61, 1, 0, 2),
(84, 60, 1, 0, 2),
(85, 59, 1, 0, 2),
(86, 58, 1, 0, 2),
(87, 71, 2, 0, 2),
(88, 70, 2, 0, 2),
(89, 69, 2, 0, 1),
(90, 68, 2, 0, 1),
(91, 67, 1, 0, 2),
(92, 66, 1, 0, 2),
(93, 65, 1, 0, 2),
(94, 64, 1, 0, 2),
(95, 78, 2, 0, 2),
(96, 77, 2, 0, 2),
(97, 76, 2, 0, 2),
(98, 75, 2, 0, 2),
(99, 82, 2, 0, 2),
(100, 81, 2, 0, 2),
(101, 80, 2, 0, 2),
(102, 79, 2, 0, 2),
(103, 83, 1, 0, 1),
(105, 84, 2, 0, 2),
(106, 85, 2, 0, 2),
(111, 91, 2, 0, 2),
(112, 92, 2, 0, 2),
(113, 93, 1, 0, 1),
(114, 95, 1, 0, 1),
(115, 94, 2, 0, 2),
(116, 86, 2, 0, 2),
(117, 87, 2, 0, 2),
(118, 88, 1, 0, 2),
(119, 89, 1, 0, 2),
(120, 90, 1, 0, 2),
(121, 112, 1, 0, 1),
(122, 112, 2, 0, 1),
(123, 111, 1, 0, 1),
(124, 111, 2, 123, 1),
(125, 113, 1, 0, 1),
(126, 113, 2, 125, 1);

-- --------------------------------------------------------

--
-- Table structure for table `program_studi`
--

CREATE TABLE `program_studi` (
  `prodi_id` int(10) NOT NULL,
  `prodi_kode` varchar(10) DEFAULT NULL,
  `prodi_nama` varchar(50) DEFAULT NULL,
  `prodi_prefix_mp` varchar(4) DEFAULT NULL COMMENT 'prefix mapel',
  `prodi_smt` varchar(11) DEFAULT NULL,
  `prodi_jml_siswa` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program_studi`
--

INSERT INTO `program_studi` (`prodi_id`, `prodi_kode`, `prodi_nama`, `prodi_prefix_mp`, `prodi_smt`, `prodi_jml_siswa`) VALUES
(1, 'IPA', 'ILMU PENGETAHUAN ALAM', 'A', '1;2;3;4;5;6', '30;30;30;30;30;30'),
(2, 'IPS', 'ILMU PENGETAHUAN SOSIAL', 'S', '1;2;3;4;5;6', '30;30;30;30;30;30');

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `ru_id` int(10) NOT NULL,
  `ru_kode` varchar(6) DEFAULT NULL,
  `ru_prodi_id` int(10) DEFAULT NULL,
  `ru_nama` varchar(20) DEFAULT NULL,
  `ru_kapasitas` int(6) DEFAULT NULL,
  `ru_jenis` tinyint(1) DEFAULT 0 COMMENT '1=Praktikum'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`ru_id`, `ru_kode`, `ru_prodi_id`, `ru_nama`, `ru_kapasitas`, `ru_jenis`) VALUES
(1, 'RB001', 1, 'IPA', 30, 0),
(2, 'RB002', 1, 'IPA', 30, 0),
(3, 'RB003', 1, 'IPA', 30, 0),
(4, 'RB004', 1, 'IPA', 30, 0),
(5, 'RB005', 1, 'IPA', 30, 0),
(6, 'RB006', 1, 'IPA', 30, 0),
(7, 'RB007', 2, 'IPS', 30, 0),
(8, 'RB008', 2, 'IPS', 30, 0),
(9, 'RB009', 2, 'IPS', 30, 0),
(10, 'RB010', 2, 'IPS', 30, 0),
(11, 'RB011', 2, 'IPS', 30, 0),
(12, 'RB012', 2, 'IPS', 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(20) DEFAULT NULL,
  `user_email` varchar(20) DEFAULT NULL,
  `user_pwd` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `user_level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_email`, `user_pwd`, `user_level`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `waktu`
--

CREATE TABLE `waktu` (
  `waktu_id` int(10) NOT NULL,
  `waktu_hari` varchar(10) DEFAULT NULL,
  `waktu_jam_mulai` time DEFAULT NULL,
  `waktu_jam_selesai` time DEFAULT NULL,
  `waktu_is_belajar` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `waktu`
--

INSERT INTO `waktu` (`waktu_id`, `waktu_hari`, `waktu_jam_mulai`, `waktu_jam_selesai`, `waktu_is_belajar`) VALUES
(1, 'senin', '08:00:00', '09:30:00', 2),
(2, 'senin', '09:45:00', '11:15:00', 2),
(3, 'senin', '11:15:00', '12:00:00', 1),
(4, 'senin', '12:30:00', '14:00:00', 2),
(5, 'senin', '12:30:00', '13:15:00', 1),
(6, 'senin', '14:00:00', '15:30:00', 2),
(7, 'senin', '13:15:00', '14:00:00', 1),
(8, 'selasa', '07:15:00', '08:45:00', 2),
(9, 'selasa', '08:45:00', '09:30:00', 1),
(10, 'selasa', '09:45:00', '11:15:00', 2),
(11, 'selasa', '11:15:00', '12:00:00', 1),
(12, 'selasa', '12:30:00', '14:00:00', 2),
(13, 'selasa', '12:30:00', '13:15:00', 1),
(14, 'selasa', '14:00:00', '15:30:00', 2),
(15, 'selasa', '14:00:00', '14:45:00', 1),
(16, 'rabu', '07:15:00', '08:45:00', 2),
(17, 'rabu', '08:45:00', '09:30:00', 1),
(18, 'rabu', '09:45:00', '11:15:00', 2),
(19, 'rabu', '11:15:00', '12:00:00', 1),
(20, 'rabu', '12:30:00', '14:00:00', 2),
(21, 'rabu', '13:15:00', '14:00:00', 1),
(22, 'rabu', '14:00:00', '15:30:00', 2),
(23, 'rabu', '14:45:00', '15:30:00', 1),
(24, 'kamis', '07:15:00', '08:45:00', 2),
(25, 'kamis', '08:45:00', '09:30:00', 1),
(26, 'kamis', '09:45:00', '11:15:00', 2),
(27, 'kamis', '11:15:00', '12:00:00', 1),
(28, 'kamis', '12:30:00', '14:00:00', 2),
(29, 'kamis', '12:30:00', '13:15:00', 1),
(30, 'kamis', '14:00:00', '15:30:00', 2),
(31, 'kamis', '14:45:00', '15:30:00', 1),
(32, 'jumat', '07:00:00', '08:30:00', 2),
(33, 'jumat', '08:30:00', '09:15:00', 1),
(34, 'jumat', '09:30:00', '11:00:00', 2),
(35, 'jumat', '11:00:00', '11:45:00', 1),
(36, 'jumat', '13:00:00', '13:45:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`conf_id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indexes for table `guru_kelas`
--
ALTER TABLE `guru_kelas`
  ADD PRIMARY KEY (`grkls_id`),
  ADD KEY `FK_guru_kelas_2` (`grkls_kls_id`) USING BTREE,
  ADD KEY `grkls_key` (`grkls_gr_id`,`grkls_kls_id`) USING BTREE;

--
-- Indexes for table `guru_waktu`
--
ALTER TABLE `guru_waktu`
  ADD PRIMARY KEY (`grwkt_id`),
  ADD KEY `dsnwkt_key` (`grwkt_gr_id`,`grwkt_wkt_id`),
  ADD KEY `FK_dosen_waktu_2` (`grwkt_wkt_id`);

--
-- Indexes for table `jadwal_pelajaran`
--
ALTER TABLE `jadwal_pelajaran`
  ADD PRIMARY KEY (`jp_id`),
  ADD KEY `FK_jadwal_kuliah_` (`jp_wkt_id`),
  ADD KEY `FK_jadwal_kuliah_2` (`jp_ru_id`),
  ADD KEY `FK_jadwal_kuliah` (`jp_kls_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kls_id`),
  ADD KEY `kls_mkkur_id_key` (`kls_mpkur_id`);

--
-- Indexes for table `mapel_kurikulum`
--
ALTER TABLE `mapel_kurikulum`
  ADD PRIMARY KEY (`mpkur_id`);

--
-- Indexes for table `mapel_kur_prodi`
--
ALTER TABLE `mapel_kur_prodi`
  ADD PRIMARY KEY (`mpkprod_id`),
  ADD UNIQUE KEY `mkprodi_key` (`mpkprod_mpkur_id`,`mpkprod_prodi_id`),
  ADD KEY `FK_mkkur_prodi_FK2` (`mpkprod_prodi_id`);

--
-- Indexes for table `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`prodi_id`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`ru_id`),
  ADD KEY `ruang_ibfk_1` (`ru_prodi_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `waktu`
--
ALTER TABLE `waktu`
  ADD PRIMARY KEY (`waktu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `conf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `guru_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `guru_kelas`
--
ALTER TABLE `guru_kelas`
  MODIFY `grkls_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT for table `guru_waktu`
--
ALTER TABLE `guru_waktu`
  MODIFY `grwkt_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jadwal_pelajaran`
--
ALTER TABLE `jadwal_pelajaran`
  MODIFY `jp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3042;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `kls_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT for table `mapel_kurikulum`
--
ALTER TABLE `mapel_kurikulum`
  MODIFY `mpkur_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `mapel_kur_prodi`
--
ALTER TABLE `mapel_kur_prodi`
  MODIFY `mpkprod_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `program_studi`
--
ALTER TABLE `program_studi`
  MODIFY `prodi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `ru_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `waktu`
--
ALTER TABLE `waktu`
  MODIFY `waktu_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `guru_kelas`
--
ALTER TABLE `guru_kelas`
  ADD CONSTRAINT `FK_dosen_kelas` FOREIGN KEY (`grkls_gr_id`) REFERENCES `guru` (`guru_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_dosen_kelas_kls` FOREIGN KEY (`grkls_kls_id`) REFERENCES `kelas` (`kls_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `guru_waktu`
--
ALTER TABLE `guru_waktu`
  ADD CONSTRAINT `FK_dosen_waktu` FOREIGN KEY (`grwkt_gr_id`) REFERENCES `guru` (`guru_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_dosen_waktu_2` FOREIGN KEY (`grwkt_wkt_id`) REFERENCES `waktu` (`waktu_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jadwal_pelajaran`
--
ALTER TABLE `jadwal_pelajaran`
  ADD CONSTRAINT `FK_jadwal_kuliah_` FOREIGN KEY (`jp_wkt_id`) REFERENCES `waktu` (`waktu_id`),
  ADD CONSTRAINT `FK_jadwal_kuliah_2` FOREIGN KEY (`jp_ru_id`) REFERENCES `ruang` (`ru_id`),
  ADD CONSTRAINT `FK_jadwal_kuliah_kls` FOREIGN KEY (`jp_kls_id`) REFERENCES `kelas` (`kls_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`kls_mpkur_id`) REFERENCES `mapel_kurikulum` (`mpkur_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mapel_kur_prodi`
--
ALTER TABLE `mapel_kur_prodi`
  ADD CONSTRAINT `FK_mkkur_prodi_FK2` FOREIGN KEY (`mpkprod_prodi_id`) REFERENCES `program_studi` (`prodi_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mkkur_prodi_mk` FOREIGN KEY (`mpkprod_mpkur_id`) REFERENCES `mapel_kurikulum` (`mpkur_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ruang`
--
ALTER TABLE `ruang`
  ADD CONSTRAINT `ruang_ibfk_1` FOREIGN KEY (`ru_prodi_id`) REFERENCES `program_studi` (`prodi_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
