-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 12, 2024 at 01:50 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webnghenhac`
--

-- --------------------------------------------------------

--
-- Table structure for table `bai_hat`
--

DROP TABLE IF EXISTS `bai_hat`;
CREATE TABLE IF NOT EXISTS `bai_hat` (
  `Ma_Bai_Hat` int(11) NOT NULL AUTO_INCREMENT,
  `Ten_Bai_Hat` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Ngay_Phat_Hanh` date NOT NULL,
  `Luot_nghe` int(11) NOT NULL,
  `Anh_Bia` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `Thoi_Luong` int(255) NOT NULL,
  `path` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Ma_The_Loai` int(11) NOT NULL,
  `Ma_Quoc_GIa` int(11) NOT NULL,
  PRIMARY KEY (`Ma_Bai_Hat`),
  KEY `Ma_Quoc_GIa` (`Ma_Quoc_GIa`),
  KEY `Ma_The_Loai` (`Ma_The_Loai`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bai_hat`
--

INSERT INTO `bai_hat` (`Ma_Bai_Hat`, `Ten_Bai_Hat`, `Ngay_Phat_Hanh`, `Luot_nghe`, `Anh_Bia`, `Thoi_Luong`, `path`, `Ma_The_Loai`, `Ma_Quoc_GIa`) VALUES
(2, 'Bài Hát Của Mưa', '2023-12-12', 555, 'https://photo-resize-zmp3.zmdcdn.me/w256_r1x1_jpeg/cover/b/b/6/7/bb67102c742721586937244a3883a475.jpg', 297, 'https://vnso-pt-24-tf-a128-zmp3.zmdcdn.me/fed8de39e89a7e92d50c0fbe7a902802?authen=exp=1703733316~acl=/fed8de39e89a7e92d50c0fbe7a902802/*~hmac=31d3fc2bcb895709c4453ce7938405e1', 2, 1),
(3, 'Vui Vẻ', '2023-12-12', 918, 'https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/04/6f/81/046f815e-0e4a-db2c-7d18-4dfc82944c8a/23UM1IM14926.rgb.jpg/1200x1200bf-60.jpg', 213, 'https://vnso-pt-24-tf-a128-zmp3.zmdcdn.me/f1f2fcd8dd4a1fa26e9389649768014d?authen=exp=1703733346~acl=/f1f2fcd8dd4a1fa26e9389649768014d/*~hmac=30923a112dc9787a9fdfe3436aacc226', 2, 1),
(4, 'Nhất Lộ Sinh Hoa', '2023-11-01', 130, 'https://i.ytimg.com/vi/pwOGAJbSOag/maxresdefault.jpg', 253, 'https://vnso-zn-23-tf-a128-zmp3.zmdcdn.me/89a1d54a37b2eb5bb044aa9245b9ecf5?authen=exp=1703392573~acl=/89a1d54a37b2eb5bb044aa9245b9ecf5/*~hmac=bdcdfb6a192b1865b7657016345a9c33', 3, 4),
(16, 'Liên Hoa', '2023-12-05', 33, 'https://i.ytimg.com/vi/OrS8e2CZxkQ/maxresdefault.jpg', 268, 'https://vnso-pt-24-tf-a128-zmp3.zmdcdn.me/3290b9635400c449a87340bbce05022c?authen=exp=1703733420~acl=/3290b9635400c449a87340bbce05022c/*~hmac=90b1a871cbdbc01e66768fa3094e32a3', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bxh`
--

DROP TABLE IF EXISTS `bxh`;
CREATE TABLE IF NOT EXISTS `bxh` (
  `Ma_BXH` int(11) NOT NULL AUTO_INCREMENT,
  `Ten_BXH` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `So_Luong_Nhac` int(50) NOT NULL,
  PRIMARY KEY (`Ma_BXH`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bxh`
--

INSERT INTO `bxh` (`Ma_BXH`, `Ten_BXH`, `So_Luong_Nhac`) VALUES
(2, 'Được nghe nhiều', 10);

-- --------------------------------------------------------

--
-- Table structure for table `co`
--

DROP TABLE IF EXISTS `co`;
CREATE TABLE IF NOT EXISTS `co` (
  `Ma_Bai_Hat` int(11) NOT NULL,
  `Ma_BXH` int(11) NOT NULL,
  PRIMARY KEY (`Ma_Bai_Hat`,`Ma_BXH`),
  KEY `Ma_BXH` (`Ma_BXH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `duyet`
--

DROP TABLE IF EXISTS `duyet`;
CREATE TABLE IF NOT EXISTS `duyet` (
  `Ten_Bai_Hat` varchar(30) NOT NULL,
  `Ngay_Phat_Hanh` date NOT NULL,
  `Anh_Bia` varchar(255) NOT NULL,
  `Thoi_Luong` int(255) NOT NULL,
  `Ma_The_Loai` int(11) NOT NULL,
  `Ma_Quoc_GIa` int(11) NOT NULL,
  `Ma_Duyet` int(11) NOT NULL AUTO_INCREMENT,
  `Ma_ND` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  PRIMARY KEY (`Ma_Duyet`),
  UNIQUE KEY `Ma_The_Loai` (`Ma_The_Loai`,`Ma_Quoc_GIa`),
  KEY `Ma_Quoc_GIa` (`Ma_Quoc_GIa`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `duyet`
--

INSERT INTO `duyet` (`Ten_Bai_Hat`, `Ngay_Phat_Hanh`, `Anh_Bia`, `Thoi_Luong`, `Ma_The_Loai`, `Ma_Quoc_GIa`, `Ma_Duyet`, `Ma_ND`, `path`, `trang_thai`) VALUES
('mua dong khong lanh', '2023-12-25', 'imgUpload/test.jpg', 123, 4, 3, 21, 9, 'fileUpload/RoiEmSeGapMotChangTraiKhacFeatHippohappy-TheMaskedSinger-12419077 (1).mp3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `luot_nghe`
--

DROP TABLE IF EXISTS `luot_nghe`;
CREATE TABLE IF NOT EXISTS `luot_nghe` (
  `Ma` int(11) NOT NULL AUTO_INCREMENT,
  `Ngay_Nghe` date DEFAULT NULL,
  `Ma_Bai_Hat` int(11) NOT NULL,
  PRIMARY KEY (`Ma`),
  KEY `Ma_Bai_Hat` (`Ma_Bai_Hat`)
) ENGINE=InnoDB AUTO_INCREMENT=684 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `luot_nghe`
--

INSERT INTO `luot_nghe` (`Ma`, `Ngay_Nghe`, `Ma_Bai_Hat`) VALUES
(462, '2023-11-17', 4),
(463, '2023-12-20', 3),
(464, '2023-09-21', 3),
(465, '2023-12-20', 4),
(466, '2023-12-20', 3),
(467, '2023-12-20', 4),
(468, '2023-12-20', 2),
(469, '2023-12-21', 2),
(470, '2023-12-21', 3),
(471, '2023-12-21', 3),
(472, '2023-12-21', 3),
(473, '2023-12-21', 3),
(474, '2023-12-21', 3),
(475, '2023-12-21', 3),
(476, '2023-12-21', 3),
(477, '2023-12-21', 3),
(478, '2023-12-21', 3),
(479, '2023-12-21', 3),
(480, '2023-12-21', 3),
(481, '2023-12-21', 3),
(482, '2023-12-21', 3),
(483, '2023-12-21', 3),
(484, '2023-12-21', 3),
(485, '2023-12-21', 3),
(486, '2023-12-21', 3),
(487, '2023-12-21', 3),
(488, '2023-12-21', 3),
(489, '2023-12-21', 3),
(490, '2023-12-21', 3),
(491, '2023-12-21', 3),
(492, '2023-12-21', 3),
(493, '2023-12-21', 3),
(494, '2023-12-21', 3),
(495, '2023-12-21', 3),
(496, '2023-12-21', 3),
(497, '2023-12-21', 3),
(498, '2023-12-21', 3),
(499, '2023-12-21', 3),
(500, '2023-12-21', 2),
(501, '2023-12-21', 3),
(502, '2023-12-21', 2),
(503, '2023-12-21', 4),
(504, '2023-12-21', 3),
(505, '2023-12-21', 3),
(506, '2023-12-21', 3),
(507, '2023-12-21', 2),
(508, '2023-12-21', 3),
(509, '2023-12-21', 2),
(510, '2023-12-21', 2),
(511, '2023-12-21', 3),
(512, '2023-12-21', 2),
(513, '2023-12-21', 2),
(514, '2023-12-21', 2),
(515, '2023-12-21', 3),
(516, '2023-12-21', 2),
(517, '2023-12-21', 2),
(518, '2023-12-21', 2),
(519, '2023-12-21', 2),
(520, '2023-12-21', 3),
(521, '2023-12-21', 2),
(522, '2023-12-21', 2),
(523, '2023-12-21', 2),
(524, '2023-12-21', 2),
(525, '2023-12-21', 2),
(526, '2023-12-21', 3),
(527, '2023-12-21', 2),
(528, '2023-12-21', 2),
(529, '2023-12-21', 2),
(530, '2023-12-21', 2),
(531, '2023-12-21', 2),
(532, '2023-12-21', 2),
(533, '2023-12-21', 3),
(534, '2023-12-21', 2),
(535, '2023-12-21', 2),
(536, '2023-12-21', 2),
(537, '2023-12-21', 2),
(538, '2023-12-21', 2),
(539, '2023-12-21', 2),
(540, '2023-12-21', 2),
(541, '2023-12-21', 3),
(542, '2023-12-21', 2),
(543, '2023-12-21', 2),
(544, '2023-12-21', 2),
(545, '2023-12-21', 2),
(546, '2023-12-21', 2),
(547, '2023-12-21', 2),
(548, '2023-12-21', 2),
(549, '2023-12-21', 2),
(550, '2023-12-21', 3),
(551, '2023-12-21', 2),
(552, '2023-12-21', 2),
(553, '2023-12-21', 2),
(554, '2023-12-21', 3),
(555, '2023-12-21', 3),
(556, '2023-12-21', 3),
(557, '2023-12-21', 2),
(558, '2023-12-21', 3),
(559, '2023-12-21', 2),
(560, '2023-12-21', 4),
(561, '2023-12-21', 3),
(562, '2023-12-21', 2),
(563, '2023-12-21', 4),
(564, '2023-12-21', 3),
(565, '2023-12-21', 3),
(566, '2023-12-21', 3),
(567, '2023-12-21', 3),
(568, '2023-12-21', 3),
(569, '2023-12-21', 3),
(570, '2023-12-21', 3),
(571, '2023-12-21', 3),
(572, '2023-12-21', 3),
(573, '2023-12-21', 3),
(574, '2023-12-21', 3),
(575, '2023-12-21', 3),
(576, '2023-12-21', 3),
(577, '2023-12-21', 2),
(578, '2023-12-21', 3),
(579, '2023-12-21', 3),
(580, '2023-12-21', 3),
(581, '2023-12-21', 3),
(582, '2023-12-21', 2),
(583, '2023-12-21', 3),
(584, '2023-12-21', 2),
(585, '2023-12-21', 3),
(586, '2023-12-21', 3),
(587, '2023-12-21', 2),
(588, '2023-12-21', 3),
(589, '2023-12-21', 3),
(590, '2023-12-21', 4),
(591, '2023-12-21', 4),
(592, '2023-12-21', 3),
(593, '2023-12-21', 4),
(594, '2023-12-21', 2),
(595, '2023-12-21', 3),
(596, '2023-12-21', 3),
(597, '2023-12-21', 3),
(598, '2023-12-21', 3),
(599, '2023-12-21', 2),
(600, '2023-12-22', 16),
(601, '2023-12-22', 16),
(602, '2023-12-22', 16),
(603, '2023-12-22', 16),
(604, '2023-12-22', 16),
(605, '2023-12-22', 16),
(606, '2023-12-22', 16),
(607, '2023-12-23', 3),
(608, '2023-12-23', 4),
(609, '2023-12-25', 3),
(610, '2023-12-25', 3),
(611, '2023-12-25', 4),
(612, '2023-12-25', 3),
(613, '2023-12-25', 4),
(614, '2023-12-25', 16),
(615, '2023-12-26', 2),
(616, '2023-12-26', 2),
(617, '2023-12-26', 2),
(618, '2023-12-26', 2),
(619, '2023-12-26', 2),
(620, '2023-12-26', 16),
(621, '2023-12-26', 16),
(622, '2023-12-26', 2),
(623, '2023-12-26', 16),
(624, '2023-12-26', 16),
(625, '2023-12-26', 3),
(626, '2023-12-26', 16),
(627, '2023-12-26', 16),
(628, '2023-12-26', 16),
(629, '2023-12-26', 16),
(630, '2023-12-26', 2),
(631, '2023-12-26', 16),
(632, '2023-12-26', 16),
(633, '2023-12-26', 16),
(634, '2023-12-26', 4),
(635, '2023-12-26', 16),
(636, '2023-12-26', 4),
(637, '2023-12-26', 3),
(638, '2023-12-26', 16),
(639, '2023-12-26', 4),
(640, '2023-12-26', 3),
(641, '2023-12-26', 2),
(642, '2023-12-26', 3),
(643, '2023-12-26', 3),
(644, '2023-12-26', 16),
(645, '2023-12-26', 3),
(646, '2023-12-26', 16),
(647, '2023-12-26', 4),
(648, '2023-12-26', 3),
(649, '2023-12-26', 16),
(650, '2023-12-26', 4),
(651, '2023-12-26', 2),
(652, '2023-12-26', 3),
(653, '2023-12-26', 16),
(654, '2023-12-26', 4),
(655, '2023-12-26', 2),
(656, '2023-12-26', 3),
(657, '2023-12-26', 3),
(658, '2023-12-26', 16),
(659, '2023-12-26', 4),
(660, '2023-12-26', 2),
(661, '2023-12-26', 3),
(662, '2023-12-26', 2),
(663, '2023-12-26', 3),
(664, '2023-12-26', 3),
(665, '2023-12-26', 16),
(666, '2023-12-26', 3),
(667, '2023-12-26', 16),
(668, '2023-12-26', 4),
(669, '2023-12-26', 3),
(670, '2023-12-26', 16),
(671, '2023-12-26', 4),
(672, '2023-12-26', 4),
(673, '2023-12-26', 3),
(674, '2023-12-26', 16),
(675, '2023-12-26', 4),
(676, '2023-12-26', 4),
(677, '2023-12-26', 4),
(678, '2023-12-26', 3),
(679, '2023-12-26', 16),
(680, '2023-12-26', 4),
(681, '2023-12-26', 16),
(682, '2023-12-26', 4),
(683, '2023-12-26', 4);

-- --------------------------------------------------------

--
-- Table structure for table `nghesi`
--

DROP TABLE IF EXISTS `nghesi`;
CREATE TABLE IF NOT EXISTS `nghesi` (
  `Luot_Theo_Doi` int(11) NOT NULL,
  `Ten_Ca_Si` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Ma_NS` int(11) NOT NULL AUTO_INCREMENT,
  `Ma_ND` int(11) NOT NULL,
  PRIMARY KEY (`Ma_NS`),
  KEY `Ma_ND` (`Ma_ND`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nghesi`
--

INSERT INTO `nghesi` (`Luot_Theo_Doi`, `Ten_Ca_Si`, `Ma_NS`, `Ma_ND`) VALUES
(1, 'Táo', 1, 9),
(1, 'Nguyễn Văn Chung', 2, 10),
(1, 'Ôn Dịch Tân', 3, 13),
(1, 'Phương Mỹ Chi', 5, 14),
(1, 'ngtnam2', 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_dung`
--

DROP TABLE IF EXISTS `nguoi_dung`;
CREATE TABLE IF NOT EXISTS `nguoi_dung` (
  `Ten_Dang_Nhap` varchar(30) CHARACTER SET latin1 NOT NULL,
  `Ngay_Sinh` date NOT NULL,
  `Gioi_Tinh` int(11) NOT NULL,
  `Phan_Quyen` int(11) NOT NULL,
  `Mat_Khau` varchar(30) CHARACTER SET latin1 NOT NULL,
  `Ma_ND` int(11) NOT NULL AUTO_INCREMENT,
  `Anh_dai_dien` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`Ma_ND`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`Ten_Dang_Nhap`, `Ngay_Sinh`, `Gioi_Tinh`, `Phan_Quyen`, `Mat_Khau`, `Ma_ND`, `Anh_dai_dien`) VALUES
('admin', '2023-12-13', 0, 2, '1234', 1, NULL),
('ngtnam', '2023-11-08', 1, 0, '12', 3, NULL),
('ngtnam2', '2023-11-08', 1, 1, '1', 4, NULL),
('ngtnam1', '2023-12-22', 1, 0, '1', 5, NULL),
('nghesi1', '2023-12-01', 1, 1, '1', 9, 'https://event.mediacdn.vn/2020/9/8/tao-p-1599557896383206069668.jpg'),
('nghesi2', '2023-12-01', 1, 1, '1', 10, NULL),
('nghesi3', '2023-12-27', 1, 1, '1', 13, NULL),
('nghesi5', '2023-12-13', 1, 1, '1', 14, 'https://cdn.tuoitre.vn/thumb_w/480/471584752817336320/2023/9/11/phuong-my-chi-001-16944253065651106645328.jpeg'),
('ngtnam222', '2023-12-07', 1, 0, '1', 16, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
CREATE TABLE IF NOT EXISTS `playlist` (
  `So_Luong` int(11) DEFAULT NULL,
  `Ma_Playlist` int(11) NOT NULL AUTO_INCREMENT,
  `Ma_ND` int(11) NOT NULL,
  `Ten_playlist` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `bia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Ma_Playlist`),
  KEY `Ma_ND` (`Ma_ND`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`So_Luong`, `Ma_Playlist`, `Ma_ND`, `Ten_playlist`, `bia`) VALUES
(10, 1, 1, 'Nhạc Việt ', 'https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/04/6f/81/046f815e-0e4a-db2c-7d18-4dfc82944c8a/23UM1IM14926.rgb.jpg/1200x1200bf-60.jpg'),
(10, 2, 1, 'Nhạc Hoa', 'https://i.ytimg.com/vi/pwOGAJbSOag/maxresdefault.jpg'),
(0, 15, 3, 'ppp', '	\r\nimgUpload/avtPl.jpg'),
(0, 17, 3, 'zzzz', '	\r\nimgUpload/avtPl.jpg'),
(0, 19, 4, 'kkkk', NULL),
(0, 22, 1, 'test', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quocgia`
--

DROP TABLE IF EXISTS `quocgia`;
CREATE TABLE IF NOT EXISTS `quocgia` (
  `Ma_Quoc_GIa` int(11) NOT NULL AUTO_INCREMENT,
  `Ten_Quoc_Gia` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Ma_Quoc_GIa`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quocgia`
--

INSERT INTO `quocgia` (`Ma_Quoc_GIa`, `Ten_Quoc_Gia`) VALUES
(1, 'Việt Nam'),
(3, 'Lào'),
(4, 'Trung Quốc'),
(5, 'Hàn Quốc'),
(6, 'Mỹ');

-- --------------------------------------------------------

--
-- Table structure for table `sang_tac`
--

DROP TABLE IF EXISTS `sang_tac`;
CREATE TABLE IF NOT EXISTS `sang_tac` (
  `Ma_Bai_Hat` int(11) NOT NULL AUTO_INCREMENT,
  `Ma_Tac_Gia` int(11) NOT NULL,
  PRIMARY KEY (`Ma_Bai_Hat`,`Ma_Tac_Gia`),
  KEY `Ma_Tac_Gia` (`Ma_Tac_Gia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tac_gia`
--

DROP TABLE IF EXISTS `tac_gia`;
CREATE TABLE IF NOT EXISTS `tac_gia` (
  `Ma_Tac_Gia` int(11) NOT NULL AUTO_INCREMENT,
  `Ten_Tac_Gia` varchar(30) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `Ngay_Sinh` date NOT NULL,
  `Gioi_Tinh` int(11) NOT NULL,
  PRIMARY KEY (`Ma_Tac_Gia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theo_doi`
--

DROP TABLE IF EXISTS `theo_doi`;
CREATE TABLE IF NOT EXISTS `theo_doi` (
  `Ma_NS` int(11) NOT NULL,
  `Ma_ND` int(11) NOT NULL,
  PRIMARY KEY (`Ma_NS`,`Ma_ND`),
  KEY `Ma_ND` (`Ma_ND`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `the_loai`
--

DROP TABLE IF EXISTS `the_loai`;
CREATE TABLE IF NOT EXISTS `the_loai` (
  `Ma_The_Loai` int(11) NOT NULL AUTO_INCREMENT,
  `Ten` varchar(30) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `Ma_BXH` int(11) NOT NULL,
  PRIMARY KEY (`Ma_The_Loai`),
  KEY `Ma_BXH` (`Ma_BXH`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `the_loai`
--

INSERT INTO `the_loai` (`Ma_The_Loai`, `Ten`, `Ma_BXH`) VALUES
(2, 'Nhạc Việt', 2),
(3, 'Nhạc Trung', 2),
(4, 'Dân Ca', 2),
(5, 'Âu-Mỹ', 2);

-- --------------------------------------------------------

--
-- Table structure for table `thuoc`
--

DROP TABLE IF EXISTS `thuoc`;
CREATE TABLE IF NOT EXISTS `thuoc` (
  `Ma_Bai_Hat` int(11) NOT NULL,
  `Ma_Playlist` int(11) NOT NULL,
  PRIMARY KEY (`Ma_Bai_Hat`,`Ma_Playlist`),
  KEY `Ma_Playlist` (`Ma_Playlist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thuoc`
--

INSERT INTO `thuoc` (`Ma_Bai_Hat`, `Ma_Playlist`) VALUES
(2, 1),
(3, 1),
(4, 2),
(3, 15),
(2, 17),
(2, 19),
(2, 22),
(3, 22),
(4, 22);

-- --------------------------------------------------------

--
-- Table structure for table `trinhbay`
--

DROP TABLE IF EXISTS `trinhbay`;
CREATE TABLE IF NOT EXISTS `trinhbay` (
  `Ma_NS` int(11) NOT NULL,
  `Ma_Bai_Hat` int(11) NOT NULL,
  PRIMARY KEY (`Ma_NS`,`Ma_Bai_Hat`),
  KEY `Ma_Bai_Hat` (`Ma_Bai_Hat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trinhbay`
--

INSERT INTO `trinhbay` (`Ma_NS`, `Ma_Bai_Hat`) VALUES
(2, 2),
(1, 3),
(3, 4),
(5, 16);

-- --------------------------------------------------------

--
-- Table structure for table `yeu_thich`
--

DROP TABLE IF EXISTS `yeu_thich`;
CREATE TABLE IF NOT EXISTS `yeu_thich` (
  `Ma_Bai_Hat` int(11) NOT NULL,
  `Ma_ND` int(11) NOT NULL,
  PRIMARY KEY (`Ma_Bai_Hat`,`Ma_ND`),
  KEY `Ma_ND` (`Ma_ND`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yeu_thich`
--

INSERT INTO `yeu_thich` (`Ma_Bai_Hat`, `Ma_ND`) VALUES
(2, 3),
(4, 3),
(2, 4),
(4, 5),
(2, 16);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bai_hat`
--
ALTER TABLE `bai_hat`
  ADD CONSTRAINT `bai_hat_ibfk_1` FOREIGN KEY (`Ma_Quoc_GIa`) REFERENCES `quocgia` (`Ma_Quoc_GIa`) ON DELETE CASCADE,
  ADD CONSTRAINT `bai_hat_ibfk_2` FOREIGN KEY (`Ma_The_Loai`) REFERENCES `the_loai` (`Ma_The_Loai`) ON DELETE CASCADE;

--
-- Constraints for table `co`
--
ALTER TABLE `co`
  ADD CONSTRAINT `co_ibfk_1` FOREIGN KEY (`Ma_Bai_Hat`) REFERENCES `bai_hat` (`Ma_Bai_Hat`) ON DELETE CASCADE,
  ADD CONSTRAINT `co_ibfk_2` FOREIGN KEY (`Ma_BXH`) REFERENCES `bxh` (`Ma_BXH`) ON DELETE CASCADE;

--
-- Constraints for table `duyet`
--
ALTER TABLE `duyet`
  ADD CONSTRAINT `duyet_ibfk_1` FOREIGN KEY (`Ma_Quoc_GIa`) REFERENCES `quocgia` (`Ma_Quoc_GIa`) ON DELETE CASCADE,
  ADD CONSTRAINT `duyet_ibfk_2` FOREIGN KEY (`Ma_The_Loai`) REFERENCES `the_loai` (`Ma_The_Loai`) ON DELETE CASCADE;

--
-- Constraints for table `luot_nghe`
--
ALTER TABLE `luot_nghe`
  ADD CONSTRAINT `luot_nghe_ibfk_1` FOREIGN KEY (`Ma_Bai_Hat`) REFERENCES `bai_hat` (`Ma_Bai_Hat`) ON DELETE CASCADE;

--
-- Constraints for table `nghesi`
--
ALTER TABLE `nghesi`
  ADD CONSTRAINT `nghesi_ibfk_1` FOREIGN KEY (`Ma_ND`) REFERENCES `nguoi_dung` (`Ma_ND`) ON DELETE CASCADE;

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`Ma_ND`) REFERENCES `nguoi_dung` (`Ma_ND`) ON DELETE CASCADE;

--
-- Constraints for table `sang_tac`
--
ALTER TABLE `sang_tac`
  ADD CONSTRAINT `sang_tac_ibfk_1` FOREIGN KEY (`Ma_Tac_Gia`) REFERENCES `tac_gia` (`Ma_Tac_Gia`) ON DELETE CASCADE,
  ADD CONSTRAINT `sang_tac_ibfk_2` FOREIGN KEY (`Ma_Bai_Hat`) REFERENCES `bai_hat` (`Ma_Bai_Hat`) ON DELETE CASCADE;

--
-- Constraints for table `theo_doi`
--
ALTER TABLE `theo_doi`
  ADD CONSTRAINT `theo_doi_ibfk_1` FOREIGN KEY (`Ma_ND`) REFERENCES `nguoi_dung` (`Ma_ND`) ON DELETE CASCADE,
  ADD CONSTRAINT `theo_doi_ibfk_2` FOREIGN KEY (`Ma_NS`) REFERENCES `nghesi` (`Ma_NS`) ON DELETE CASCADE;

--
-- Constraints for table `the_loai`
--
ALTER TABLE `the_loai`
  ADD CONSTRAINT `the_loai_ibfk_1` FOREIGN KEY (`Ma_BXH`) REFERENCES `bxh` (`Ma_BXH`) ON DELETE CASCADE;

--
-- Constraints for table `thuoc`
--
ALTER TABLE `thuoc`
  ADD CONSTRAINT `thuoc_ibfk_1` FOREIGN KEY (`Ma_Playlist`) REFERENCES `playlist` (`Ma_Playlist`) ON DELETE CASCADE,
  ADD CONSTRAINT `thuoc_ibfk_2` FOREIGN KEY (`Ma_Bai_Hat`) REFERENCES `bai_hat` (`Ma_Bai_Hat`) ON DELETE CASCADE;

--
-- Constraints for table `trinhbay`
--
ALTER TABLE `trinhbay`
  ADD CONSTRAINT `trinhbay_ibfk_1` FOREIGN KEY (`Ma_NS`) REFERENCES `nghesi` (`Ma_NS`) ON DELETE CASCADE,
  ADD CONSTRAINT `trinhbay_ibfk_2` FOREIGN KEY (`Ma_Bai_Hat`) REFERENCES `bai_hat` (`Ma_Bai_Hat`) ON DELETE CASCADE;

--
-- Constraints for table `yeu_thich`
--
ALTER TABLE `yeu_thich`
  ADD CONSTRAINT `yeu_thich_ibfk_1` FOREIGN KEY (`Ma_ND`) REFERENCES `nguoi_dung` (`Ma_ND`) ON DELETE CASCADE,
  ADD CONSTRAINT `yeu_thich_ibfk_2` FOREIGN KEY (`Ma_Bai_Hat`) REFERENCES `bai_hat` (`Ma_Bai_Hat`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
