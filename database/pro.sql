-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 09, 2021 at 12:57 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `a_id` int(11) NOT NULL,
  `a_user` varchar(20) NOT NULL,
  `a_pass` varchar(20) NOT NULL,
  `a_name` varchar(100) NOT NULL,
  `datesave` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`a_id`, `a_user`, `a_pass`, `a_name`, `datesave`) VALUES
(1, '111', '111', 'nutthapong', '2018-11-16 05:34:50'),
(2, '222', '222', 'rattanan', '2018-11-16 05:34:50'),
(3, '333', '333', 'เพชร', '2018-11-16 05:35:30'),
(13, 'ratt', '40bd001563085fc35165', 'nantarat', '2021-10-30 05:32:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_claim`
--

CREATE TABLE `tbl_claim` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_tel` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_address` text NOT NULL,
  `c_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_status` text NOT NULL,
  `datesave` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_claim`
--

INSERT INTO `tbl_claim` (`c_id`, `c_name`, `c_email`, `c_tel`, `c_address`, `c_detail`, `c_img`, `c_status`, `datesave`) VALUES
(1, 'เพชรมงคล', 'p@gmail.com', '0985556525', '225/78 กรุงเทพ 10700', 'สินค้ามีตำหนิ ชำรุด', 'c_img5414904620211107_215852.jpg', 'อนุมัติ', '2021-11-07 14:58:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `member_id` int(11) NOT NULL,
  `m_user` varchar(20) NOT NULL,
  `m_pass` varchar(20) NOT NULL,
  `m_name` varchar(100) NOT NULL,
  `m_email` varchar(100) NOT NULL,
  `m_tel` varchar(20) NOT NULL,
  `m_address` varchar(200) NOT NULL,
  `date_save` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`member_id`, `m_user`, `m_pass`, `m_name`, `m_email`, `m_tel`, `m_address`, `date_save`) VALUES
(1, '111', '111', 'nutthapong', 'nut@hotmail.com', '1236547895', '181 หมู่ 10 ต.โนนสุง อ.บ้านผือ จ.อุดรธานี 41160', '2018-06-16 01:49:48'),
(2, '222', '222', 'rattanan', 'rat@gmail.com', '0931294710', '28/38-39 ถนนยิงเป้า ต.สนามจันทร์ \r\nอ.เมือง จ.นครปฐม 73000', '2018-06-16 01:52:55'),
(3, '333', '333', 'เพชรมงคล', 'ppp@gmail.com', '025837588', '46/148-9 ม.3 ถ.ศรีสมาน ต.บ้านใหม่ \r\nอ.ปากเกร็ด จ.นนทบุรี 11120', '2018-06-16 02:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `n_id` int(10) NOT NULL,
  `n_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `n_detail` varchar(5000) NOT NULL,
  `n_img` mediumtext NOT NULL,
  `n_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`n_id`, `n_title`, `n_detail`, `n_img`, `n_type`) VALUES
(6, 'สวนรถไฟ', 'สวนจตุจักร หรือ สวนรถไฟ สวนสาธารณะยอดฮิตใจกลางกรุงเทพ ที่ใครๆ ก็ต้องนึกถึงเป็นอันดับแรก\r\n      เมื่อถามว่าไปปั่นจักรยานที่ไหนดี แต่เดิมเคยเป็นสนามกอล์ฟของการรถไฟแห่งประเทศไทย\r\n      ต่อมาจึงเปลี่ยนเป็นสวนสาธารณะเพื่อเพิมพื้นที่สีเขียวให้กับกรุงเทพมหานคร', 'n_img122448881220211109_180854.jpg', 'สถานที่'),
(7, 'การศึกษาพบว่านักปั่นจักรยานมีอารมณ์ผูกพันกับจักรยานของพวกเขา', 'https://rider.in.th/giggle/643-cyclists-are-emotionally-attached-to-their-bikes-study-finds.html', 'n_img9251327620211109_180939.jpg', 'ข่าวสาร'),
(8, 'ส.จักรยานจัดปั่นถนน-เสือภูเขาสนาม3ตัดสินแชมป์ปทท.12-14พ.ย.นี้', 'เสธ.หมึก\" พลเอกเดชา เหมกระศรี นายกสมาคมกีฬาจักรยานแห่งประเทศไทย  เปิดเผยว่า ตามที่สมาคมกีฬาจักรยานฯ กำหนดจัดการแข่งขันจัดการแข่งขันจักรยานประเภทถนน ชิงแชมป์ประเทศไทย ชิงถ้วยพระราชทาน \"คิงส์ภูมิพล\" และการแข่งขันจักรยานประเภทเสือภูเขา ชิงแชมป์ประเทศไทย ชิงถ้วยพระราชทาน พระบาทสมเด็จพระเจ้าอยู่หัว ประจำปี 2564 สนามที่ 3 ในรูปแบบชีวิตวิถีใหม่ New Normal (ไม่มีผู้ชม) ระหว่างวันที่ 12-14 พฤศจิกายน ที่เทศบาลตำบลทับไทร อำเภอโป่งน้ำร้อน จังหวัดจันทบุรี', 'n_img200465463220211109_181029.png', 'ข่าวสาร'),
(9, 'ถนน304', 'เป็นสายทางที่เข้าสู่แหล่งท่องเที่ยวที่สำคัญ อาทิ อุทยานแห่งชาติเขาใหญ่ อุทยานแห่งชาติเขาแผงม้า\r\n      อุทยานแห่งชาติคลองปลากั้ง อ่างเก็บน้ำลำพระเพลิง และอุทยานแห่งชาติทับลาน\r\n      รวมถึงเส้นทางดังกล่าวยังมีแหล่งสินค้าทางการเกษตรที่น่าสนใจ เช่น ผลิตภัณฑ์จากองุ่น ฯลฯ นอกจากนี้\r\n      ยังเป็นโครงข่ายที่เชื่อมระหว่างถนนมิตรภาพ อำเภอปากช่อง ไปยังถนนทางหลวงแผ่นดินหมายเลข 304', 'n_img178353310020211109_181228.jpg', 'สถานที่'),
(10, 'ข่าวววว', 'ข่าวสารรรรรรรรรร', 'n_img112356824920211109_184054.jpg', 'ข่าวสาร');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `or_id` int(11) NOT NULL,
  `member_id` int(50) NOT NULL,
  `total` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `or_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `or_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `or_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slip_img` varchar(220) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_id` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_id` text NOT NULL,
  `date_save` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`or_id`, `member_id`, `total`, `or_name`, `or_address`, `or_tel`, `slip_img`, `s_id`, `post_id`, `date_save`) VALUES
(1, 1, ' 48,000.00', 'nutthapong', '225/25 บางซื่อ กรุงเทพฯ 10800', '0998858885', 'slip_img126205279920211107_215132.png', 'จัดส่งสินค้าเสร็จสิ้น', 'HF12365854215TH', '2021-11-07 14:51:32'),
(2, 2, ' 47,200.00', 'rattanan', '444 งามวงศ์วาน กรุงเทพ ', '0366665855', 'slip_img152953853620211107_215401.png', 'ยกเลิกรายการ', 'ไม่มี', '2021-11-07 14:54:01'),
(3, 3, ' 2,500.00', 'เพชรมงคล', '444 กรุงเทพ 10700', '0777785245', 'slip_img38136335520211107_215627.png', 'จัดส่งสินค้าเสร็จสิ้น', 'GH14523658625TH', '2021-11-07 14:56:27'),
(4, 1, ' 90,000.00', 'nutthapong', 'ttut', '0000000000', 'slip_img55630420820211108_231653.png', 'รอดำเนินการ', '', '2021-11-08 16:16:53'),
(5, 1, ' 90,000.00', 'nutthapong', 'ttut', '0000000000', 'slip_img7100653420211108_231849.png', 'รอดำเนินการ', '', '2021-11-08 16:18:49'),
(6, 1, ' 90,000.00', 'nutthapong', 'tytt', '5555555555', 'slip_img95356246120211108_231905.png', 'รอดำเนินการ', '', '2021-11-08 16:19:05'),
(7, 1, ' 90,000.00', 'nutthapong', 'tytt', '5555555555', 'slip_img181431294320211108_232026.png', 'รอดำเนินการ', '', '2021-11-08 16:20:26'),
(8, 1, ' 90,000.00', 'nutthapong', 'edgdgd', '9999999999', 'slip_img28676812220211108_232040.png', 'รอดำเนินการ', '', '2021-11-08 16:20:40'),
(9, 1, ' 90,000.00', 'nutthapong', 'edgdgd', '9999999999', 'slip_img161560157320211108_232145.png', 'รอดำเนินการ', '', '2021-11-08 16:21:45'),
(10, 1, ' 90,000.00', 'nutthapong', 'edgdgd', '9999999999', 'slip_img194541262120211108_232154.png', 'รอดำเนินการ', '', '2021-11-08 16:21:54'),
(11, 1, ' 90,000.00', 'nutthapong', 'edgdgd', '9999999999', 'slip_img69506904620211108_232211.png', 'รอดำเนินการ', '', '2021-11-08 16:22:11'),
(12, 1, ' 90,000.00', 'nutthapong', 'edgdgd', '9999999999', 'slip_img126851564820211108_232306.png', 'รอดำเนินการ', '', '2021-11-08 16:23:06'),
(13, 1, ' 90,000.00', 'nutthapong', 'edgdgd', '9999999999', 'slip_img71861263820211108_232335.png', 'รอดำเนินการ', '', '2021-11-08 16:23:35'),
(14, 1, ' 90,000.00', 'nutthapong', 'gnfnfgn', '9999999999', 'slip_img57069991420211108_233314.png', 'รอดำเนินการ', '', '2021-11-08 16:33:14'),
(15, 1, ' 90,000.00', 'nutthapong', 'gnfnfgn', '9999999999', 'slip_img25826289020211108_234146.png', 'รอดำเนินการ', '', '2021-11-08 16:41:46'),
(16, 1, ' 90,000.00', 'nutthapong', 'กเกเกเ', '2222222222', 'slip_img59013729820211108_234207.png', 'รอดำเนินการ', '', '2021-11-08 16:42:07'),
(17, 1, ' 90,000.00', 'nutthapong', 'กเกเกเ', '2222222222', 'slip_img198093724220211108_235402.png', 'รอดำเนินการ', '', '2021-11-08 16:54:02'),
(18, 1, ' 90,000.00', 'nutthapong', 'dfhdndf', '3333333333', 'slip_img49316142520211108_235415.png', 'รอดำเนินการ', '', '2021-11-08 16:54:15'),
(19, 1, ' 90,000.00', 'nutthapong', 'dfhdndf', '3333333333', 'slip_img212920936920211108_235702.png', 'รอดำเนินการ', '', '2021-11-08 16:57:02'),
(20, 1, ' 5,850.00', 'nutthapong', 'bfbfdbdf', '5555555555', 'slip_img195117767220211109_000412.png', 'รอดำเนินการ', '', '2021-11-08 17:04:12'),
(21, 1, ' 9,750.00', 'nutthapong', 'dfhnng', '6666666666', 'slip_img23131133420211109_000539.png', 'รอดำเนินการ', '', '2021-11-08 17:05:39'),
(22, 1, ' 15,400.00', 'nutthapong', 'gsgg', '4444444444', 'slip_img39479131520211109_001023.png', 'รอดำเนินการ', '', '2021-11-08 17:10:23'),
(23, 1, ' 15,400.00', 'nutthapong', 'gsgg', '4444444444', 'slip_img68243474020211109_001355.png', 'รอดำเนินการ', '', '2021-11-08 17:13:55'),
(24, 1, ' 13,200.00', 'nutthapong', 'vbbbfbf', '5151511151', 'slip_img195597532420211109_135109.png', 'รอดำเนินการ', '', '2021-11-09 06:51:09'),
(25, 1, ' 13,200.00', 'nutthapong', 'vbbbfbf', '5151511151', 'slip_img131008505420211109_135145.png', 'รอดำเนินการ', '', '2021-11-09 06:51:45'),
(26, 1, ' 13,200.00', 'nutthapong', 'อำกอิหกิ', '5555555555', 'slip_img22016457420211109_140342.png', 'รอดำเนินการ', '', '2021-11-09 07:03:42'),
(27, 1, ' 13,200.00', 'nutthapong', 'ิกดิกดิกดิ', '6666666666', 'slip_img9799722320211109_140600.png', 'รอดำเนินการ', '', '2021-11-09 07:06:00'),
(28, 1, ' 13,200.00', 'nutthapong', 'hdfdfndf', '6666666666', 'slip_img14009525520211109_140841.png', 'รอดำเนินการ', '', '2021-11-09 07:08:41'),
(29, 1, ' 4,400.00', 'nutthapong', 'fndndf', '6666666666', 'slip_img162651581320211109_141000.png', 'รอดำเนินการ', '', '2021-11-09 07:10:00'),
(30, 1, ' 4,400.00', 'nutthapong', 'fndndf', '6666666666', 'slip_img110871012920211109_141439.png', 'รอดำเนินการ', '', '2021-11-09 07:14:39'),
(31, 1, ' 4,400.00', 'nutthapong', 'fndndf', '6666666666', 'slip_img116383560120211109_141447.png', 'รอดำเนินการ', '', '2021-11-09 07:14:47'),
(32, 1, ' 4,400.00', 'nutthapong', 'fndndf', '6666666666', 'slip_img162109017520211109_141450.png', 'รอดำเนินการ', '', '2021-11-09 07:14:50'),
(33, 1, ' 4,400.00', 'nutthapong', 'hhrt', '1111111111', 'slip_img182564234320211109_141656.png', 'รอดำเนินการ', '', '2021-11-09 07:16:56'),
(34, 1, ' 13,200.00', 'nutthapong', 'dsvsdvsd', '5555555555', 'slip_img22090355420211109_141928.png', 'รอดำเนินการ', '', '2021-11-09 07:19:28'),
(35, 1, ' 10,000.00', 'nutthapong', 'bfbbdfb', '7878787877', 'slip_img208573612620211109_142444.png', 'รอดำเนินการ', '', '2021-11-09 07:24:44'),
(36, 1, ' 20,000.00', 'nutthapong', 'dsdgsg', '5655656556', 'slip_img119414765620211109_142708.png', 'รอดำเนินการ', '', '2021-11-09 07:27:08'),
(37, 1, ' 17,500.00', 'nutthapong', 'b sbdfb', '4144848484', 'slip_img57631791520211109_143400.png', 'รอดำเนินการ', '', '2021-11-09 07:34:00'),
(38, 1, ' 7,500.00', 'nutthapong', 'ggerger', '3333333333', 'slip_img213834750720211109_143841.png', 'รอดำเนินการ', '', '2021-11-09 07:38:41'),
(39, 1, ' 7,500.00', 'nutthapong', 'ggerger', '3333333333', 'slip_img100782179720211109_143856.png', 'รอดำเนินการ', '', '2021-11-09 07:38:56'),
(40, 1, ' 15,000.00', 'nutthapong', 'rgrger', '8548848484', 'slip_img212652773920211109_144020.png', 'รอดำเนินการ', '', '2021-11-09 07:40:20'),
(41, 1, ' 8,000.00', 'nutthapong', 'gregerg', '8888888888', 'slip_img204411696720211109_144109.png', 'รอดำเนินการ', '', '2021-11-09 07:41:09'),
(42, 1, ' 8,000.00', 'nutthapong', 'gregerg', '8888888888', 'slip_img45943650120211109_144219.png', 'รอดำเนินการ', '', '2021-11-09 07:42:19'),
(43, 1, ' 8,000.00', 'nutthapong', 'gregerg', '8888888888', 'slip_img190809288720211109_144228.png', 'รอดำเนินการ', '', '2021-11-09 07:42:28'),
(44, 1, ' 8,000.00', 'nutthapong', 'gregerg', '8888888888', 'slip_img157343774720211109_144515.png', 'รอดำเนินการ', '', '2021-11-09 07:45:15'),
(45, 1, ' 8,000.00', 'nutthapong', 'gregerg', '8888888888', 'slip_img154440901820211109_144522.png', 'รอดำเนินการ', '', '2021-11-09 07:45:22'),
(46, 1, ' 2,970.00', 'nutthapong', 'rnnn', '8444444444', 'slip_img139031695820211109_144552.png', 'รอดำเนินการ', '', '2021-11-09 07:45:52'),
(47, 1, ' 2,970.00', 'nutthapong', 'rnnn', '8444444444', 'slip_img201366849320211109_145023.png', 'รอดำเนินการ', '', '2021-11-09 07:50:23'),
(48, 1, ' 2,970.00', 'nutthapong', 'rnnn', '8444444444', 'slip_img25247012720211109_145036.png', 'รอดำเนินการ', '', '2021-11-09 07:50:36'),
(49, 1, ' 2,970.00', 'nutthapong', 'rnnn', '8444444444', 'slip_img47345167820211109_145056.png', 'รอดำเนินการ', '', '2021-11-09 07:50:56'),
(50, 1, ' 2,970.00', 'nutthapong', 'rnnn', '8444444444', 'slip_img206163016920211109_145133.png', 'รอดำเนินการ', '', '2021-11-09 07:51:33'),
(51, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img26812734620211109_145304.png', 'รอดำเนินการ', '', '2021-11-09 07:53:04'),
(52, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img62302815420211109_145323.png', 'รอดำเนินการ', '', '2021-11-09 07:53:23'),
(53, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img149412875120211109_145330.png', 'รอดำเนินการ', '', '2021-11-09 07:53:30'),
(54, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img171009864920211109_145341.png', 'รอดำเนินการ', '', '2021-11-09 07:53:41'),
(55, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img97999253720211109_145359.png', 'รอดำเนินการ', '', '2021-11-09 07:53:59'),
(56, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img169229400020211109_145412.png', 'รอดำเนินการ', '', '2021-11-09 07:54:12'),
(57, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img187249436620211109_145422.png', 'รอดำเนินการ', '', '2021-11-09 07:54:22'),
(58, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img121053394020211109_145504.png', 'รอดำเนินการ', '', '2021-11-09 07:55:04'),
(59, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img3688972520211109_145510.png', 'รอดำเนินการ', '', '2021-11-09 07:55:10'),
(60, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img64851966220211109_145529.png', 'รอดำเนินการ', '', '2021-11-09 07:55:29'),
(61, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img63965374420211109_145551.png', 'รอดำเนินการ', '', '2021-11-09 07:55:51'),
(62, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img165909918120211109_145600.png', 'รอดำเนินการ', '', '2021-11-09 07:56:00'),
(63, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img155859731420211109_145608.png', 'รอดำเนินการ', '', '2021-11-09 07:56:08'),
(64, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img155934015220211109_145711.png', 'รอดำเนินการ', '', '2021-11-09 07:57:11'),
(65, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img138031927420211109_145729.png', 'รอดำเนินการ', '', '2021-11-09 07:57:29'),
(66, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img26611094120211109_145742.png', 'รอดำเนินการ', '', '2021-11-09 07:57:42'),
(67, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img98804985320211109_145756.png', 'รอดำเนินการ', '', '2021-11-09 07:57:56'),
(68, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img70249966220211109_145806.png', 'รอดำเนินการ', '', '2021-11-09 07:58:06'),
(69, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img27775683420211109_145813.png', 'รอดำเนินการ', '', '2021-11-09 07:58:13'),
(70, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img185448662220211109_145921.png', 'รอดำเนินการ', '', '2021-11-09 07:59:21'),
(71, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img138470642520211109_145932.png', 'รอดำเนินการ', '', '2021-11-09 07:59:32'),
(72, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img210804662820211109_150024.png', 'รอดำเนินการ', '', '2021-11-09 08:00:24'),
(73, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img62122229520211109_150035.png', 'รอดำเนินการ', '', '2021-11-09 08:00:35'),
(74, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img159307037620211109_150057.png', 'รอดำเนินการ', '', '2021-11-09 08:00:57'),
(75, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img2387529720211109_150120.png', 'รอดำเนินการ', '', '2021-11-09 08:01:20'),
(76, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img173272125220211109_150136.png', 'รอดำเนินการ', '', '2021-11-09 08:01:36'),
(77, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img150633119320211109_150256.png', 'รอดำเนินการ', '', '2021-11-09 08:02:56'),
(78, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img82980261320211109_150310.png', 'รอดำเนินการ', '', '2021-11-09 08:03:10'),
(79, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img116023725320211109_150347.png', 'รอดำเนินการ', '', '2021-11-09 08:03:47'),
(80, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img5187083220211109_150658.png', 'รอดำเนินการ', '', '2021-11-09 08:06:58'),
(81, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img70730320120211109_150714.png', 'รอดำเนินการ', '', '2021-11-09 08:07:14'),
(82, 1, ' 5,940.00', 'nutthapong', 'fsdfsdf', '9959595959', 'slip_img27837185220211109_150719.png', 'รอดำเนินการ', '', '2021-11-09 08:07:19'),
(83, 1, ' 8,360.00', 'nutthapong', 'bddbdb', '5955959599', 'slip_img92465044420211109_150821.png', 'รอดำเนินการ', '', '2021-11-09 08:08:21'),
(84, 1, ' 2,970.00', 'nutthapong', 'bfbdf', '9999999999', 'slip_img60851928620211109_154548.png', 'รอดำเนินการ', '', '2021-11-09 08:45:48'),
(85, 1, ' 2,970.00', 'nutthapong', 'hrehr', '6666666666', 'slip_img128030986020211109_155056.png', 'รอดำเนินการ', '', '2021-11-09 08:50:56'),
(86, 1, ' 4,400.00', 'nutthapong', 'gdfgd', '6666666666', 'slip_img38456216120211109_155328.png', 'รอดำเนินการ', '', '2021-11-09 08:53:28'),
(87, 1, ' 4,400.00', 'nutthapong', 'gdfgd', '6666666666', 'slip_img162139328220211109_155348.png', 'รอดำเนินการ', '', '2021-11-09 08:53:48'),
(88, 1, ' 2,850.00', 'nutthapong', 'dnfndfn', '6666666666', 'slip_img27813290820211109_155801.png', 'รอดำเนินการ', '', '2021-11-09 08:58:01'),
(89, 1, ' 2,850.00', 'nutthapong', 'hbdfh', '4444444444', 'slip_img65648305020211109_155922.png', 'รอดำเนินการ', '', '2021-11-09 08:59:22'),
(90, 1, ' 5,700.00', 'nutthapong', 'fbdfbdfb', '6666666666', 'slip_img36125488720211109_160037.png', 'รอดำเนินการ', '', '2021-11-09 09:00:37'),
(91, 1, ' 7,600.00', 'nutthapong', 'dbsdbsd', '9999999999', 'slip_img74141704420211109_160220.png', 'รอดำเนินการ', '', '2021-11-09 09:02:20'),
(92, 1, ' 180,000.00', 'nutthapong', 'vdbsbvsdb', '6666666666', 'slip_img1781340220211109_160348.png', 'รอดำเนินการ', '', '2021-11-09 09:03:48'),
(93, 1, ' 114,000.00', 'nutthapong', 'vdvdv', '9999999999', 'slip_img141590666220211109_160617.png', 'รอดำเนินการ', '', '2021-11-09 09:06:17'),
(94, 1, ' 114,000.00', 'nutthapong', 'vdvdv', '9999999999', 'slip_img104142564320211109_160702.png', 'รอดำเนินการ', '', '2021-11-09 09:07:02'),
(95, 1, ' 114,000.00', 'nutthapong', 'vdvdv', '9999999999', 'slip_img11331898020211109_160713.png', 'รอดำเนินการ', '', '2021-11-09 09:07:13'),
(96, 1, ' 114,000.00', 'nutthapong', 'vdvdv', '9999999999', 'slip_img76104082920211109_160734.png', 'รอดำเนินการ', '', '2021-11-09 09:07:34'),
(97, 1, ' 91,200.00', 'nutthapong', 'ิเดกิ้กดกด', '2929929', 'slip_img79130313420211109_170325.png', 'รอดำเนินการ', '', '2021-11-09 10:03:25'),
(98, 1, ' 1,300.00', 'nutthapong', 'vsbfbdfb', '2222222222', 'slip_img104609052820211109_170752.png', 'รอดำเนินการ', '', '2021-11-09 10:07:52'),
(99, 1, ' 800.00', 'nutthapong', 'vdvdvd', '6565656565', 'slip_img137547948720211109_170912.png', 'รอดำเนินการ', '', '2021-11-09 10:09:12'),
(100, 1, ' 800.00', 'nutthapong', 'vdvdvd', '6565656565', 'slip_img63919366720211109_171028.png', 'รอดำเนินการ', '', '2021-11-09 10:10:28'),
(101, 1, ' 800.00', 'nutthapong', 'vdvdvd', '6565656565', 'slip_img187560964220211109_171051.png', 'รอดำเนินการ', '', '2021-11-09 10:10:51'),
(102, 1, ' 35,400.00', 'nutthapong', 'ttttt', '9999999999', 'slip_img213453266920211109_171156.png', 'รอดำเนินการ', '', '2021-11-09 10:11:56'),
(103, 1, ' 7,700.00', 'nutthapong', 'khjkhk', '1111111111', 'slip_img3523575620211109_171344.png', 'รอดำเนินการ', '', '2021-11-09 10:13:44'),
(104, 1, ' 7,700.00', 'nutthapong', 'khjkhk', '1111111111', 'slip_img185544218820211109_171604.png', 'รอดำเนินการ', '', '2021-11-09 10:16:04'),
(105, 1, ' 14,200.00', 'nutthapong', 'hgfhf', '1111111111', 'slip_img166622654720211109_171627.png', 'รอดำเนินการ', '', '2021-11-09 10:16:27'),
(106, 1, ' 14,200.00', 'nutthapong', 'hgfhf', '1111111111', 'slip_img205995763520211109_171838.png', 'รอดำเนินการ', '', '2021-11-09 10:18:38'),
(107, 1, ' 14,200.00', 'nutthapong', 'hgfhf', '1111111111', 'slip_img56602670820211109_171918.png', 'รอดำเนินการ', '', '2021-11-09 10:19:18'),
(108, 1, ' 14,200.00', 'nutthapong', 'hgfhf', '1111111111', 'slip_img91314276920211109_171923.png', 'รอดำเนินการ', '', '2021-11-09 10:19:23'),
(109, 1, ' 46,200.00', 'nutthapong', 'ngnfgm', '1111111111', 'slip_img110140164020211109_172005.png', 'รอดำเนินการ', '', '2021-11-09 10:20:05'),
(110, 1, ' 46,200.00', 'nutthapong', 'gh,gh,gh,', '6666666666', 'slip_img64121759520211109_172831.png', 'รอดำเนินการ', '', '2021-11-09 10:28:31'),
(111, 1, ' 46,200.00', 'nutthapong', 'gh,gh,gh,', '6666666666', 'slip_img178857843420211109_172941.png', 'รอดำเนินการ', '', '2021-11-09 10:29:41'),
(112, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img3666475120211109_173059.png', 'รอดำเนินการ', '', '2021-11-09 10:30:59'),
(113, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img95077331320211109_173133.png', 'รอดำเนินการ', '', '2021-11-09 10:31:33'),
(114, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img118344244820211109_173136.png', 'รอดำเนินการ', '', '2021-11-09 10:31:36'),
(115, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img86706741620211109_173204.png', 'รอดำเนินการ', '', '2021-11-09 10:32:04'),
(116, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img24144965620211109_173235.png', 'รอดำเนินการ', '', '2021-11-09 10:32:35'),
(117, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img200434643620211109_173315.png', 'รอดำเนินการ', '', '2021-11-09 10:33:15'),
(118, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img29400342220211109_173330.png', 'รอดำเนินการ', '', '2021-11-09 10:33:30'),
(119, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img39108730920211109_173344.png', 'รอดำเนินการ', '', '2021-11-09 10:33:44'),
(120, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img198638307920211109_173347.png', 'รอดำเนินการ', '', '2021-11-09 10:33:47'),
(121, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img183732444220211109_173409.png', 'รอดำเนินการ', '', '2021-11-09 10:34:09'),
(122, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img125101948420211109_173433.png', 'รอดำเนินการ', '', '2021-11-09 10:34:33'),
(123, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img182998003220211109_173450.png', 'รอดำเนินการ', '', '2021-11-09 10:34:50'),
(124, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img49351129720211109_173534.png', 'รอดำเนินการ', '', '2021-11-09 10:35:34'),
(125, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img36994296120211109_173548.png', 'รอดำเนินการ', '', '2021-11-09 10:35:48'),
(126, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img180247868320211109_173627.png', 'รอดำเนินการ', '', '2021-11-09 10:36:27'),
(127, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img170054655020211109_173655.png', 'รอดำเนินการ', '', '2021-11-09 10:36:55'),
(128, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img87496663420211109_173744.png', 'รอดำเนินการ', '', '2021-11-09 10:37:44'),
(129, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img156332699120211109_173758.png', 'รอดำเนินการ', '', '2021-11-09 10:37:58'),
(130, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img1940290720211109_173845.png', 'รอดำเนินการ', '', '2021-11-09 10:38:45'),
(131, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img168009180920211109_173847.png', 'รอดำเนินการ', '', '2021-11-09 10:38:47'),
(132, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img113996560320211109_173853.png', 'รอดำเนินการ', '', '2021-11-09 10:38:53'),
(133, 1, ' 6,400.00', 'nutthapong', 'bdbd', '9999999999', 'slip_img18330288120211109_173916.png', 'รอดำเนินการ', '', '2021-11-09 10:39:16'),
(134, 1, ' 7,600.00', 'nutthapong', 'vdvd', '6666666666', 'slip_img157663183620211109_173947.png', 'รอดำเนินการ', '', '2021-11-09 10:39:47'),
(135, 1, ' 7,600.00', 'nutthapong', 'vdvd', '6666666666', 'slip_img19871517220211109_173955.png', 'รอดำเนินการ', '', '2021-11-09 10:39:55'),
(136, 1, ' 7,600.00', 'nutthapong', 'vdvd', '6666666666', 'slip_img67959243620211109_174045.png', 'รอดำเนินการ', '', '2021-11-09 10:40:45'),
(137, 1, ' 7,600.00', 'nutthapong', 'vdvd', '6666666666', 'slip_img54471485820211109_174055.png', 'รอดำเนินการ', '', '2021-11-09 10:40:55'),
(138, 1, ' 7,600.00', 'nutthapong', 'vdvd', '6666666666', 'slip_img140071379320211109_174108.png', 'รอดำเนินการ', '', '2021-11-09 10:41:08'),
(139, 1, ' 7,600.00', 'nutthapong', 'vdvd', '6666666666', 'slip_img105607382020211109_174148.png', 'รอดำเนินการ', '', '2021-11-09 10:41:48'),
(140, 1, ' 7,600.00', 'nutthapong', 'vdvd', '6666666666', 'slip_img24649922920211109_174158.png', 'รอดำเนินการ', '', '2021-11-09 10:41:58'),
(141, 1, ' 181,950.00', 'nutthapong', 'vdvdv', '0999999999', 'slip_img68771915120211109_192236.png', 'รอดำเนินการ', '', '2021-11-09 12:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_item`
--

CREATE TABLE `tbl_order_item` (
  `or_id` int(10) NOT NULL,
  `t_id` int(11) NOT NULL,
  `p_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `p_price` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `quantity` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_order_item`
--

INSERT INTO `tbl_order_item` (`or_id`, `t_id`, `p_name`, `p_price`, `quantity`) VALUES
(1, 1, '2022 DARKWAVE ‑ BROC RAIFORD AUTHENTIC', '48000', 1),
(2, 1, '2022 FORECASTER ‑ AARON ROSS SIGNATURE', '45000', 1),
(2, 2, 'DemolitionMOMENTUM TIRE BLACK 20X2.35', '1100', 2),
(3, 1, 'Animal 4AM 4 PIECE HANDLEBARS BLACK 8.25', '2500', 1),
(4, 1, '2022 EX ‑ ERIK ELSTRAN SIGNATURE', '45000', 2),
(5, 1, '2022 EX ‑ ERIK ELSTRAN SIGNATURE', '45000', 2),
(6, 1, '2022 EX ‑ ERIK ELSTRAN SIGNATURE', '45000', 2),
(7, 1, '2022 EX ‑ ERIK ELSTRAN SIGNATURE', '45000', 2),
(8, 1, '2022 EX ‑ ERIK ELSTRAN SIGNATURE', '45000', 2),
(9, 1, '2022 EX ‑ ERIK ELSTRAN SIGNATURE', '45000', 2),
(10, 1, '2022 EX ‑ ERIK ELSTRAN SIGNATURE', '45000', 2),
(11, 1, '2022 EX ‑ ERIK ELSTRAN SIGNATURE', '45000', 2),
(12, 1, '2022 EX ‑ ERIK ELSTRAN SIGNATURE', '45000', 2),
(13, 1, '2022 EX ‑ ERIK ELSTRAN SIGNATURE', '45000', 2),
(14, 1, '2022 EX ‑ ERIK ELSTRAN SIGNATURE', '45000', 2),
(15, 1, '2022 EX ‑ ERIK ELSTRAN SIGNATURE', '45000', 2),
(16, 1, '2022 EX ‑ ERIK ELSTRAN SIGNATURE', '45000', 2),
(17, 1, '2022 EX ‑ ERIK ELSTRAN SIGNATURE', '45000', 2),
(18, 1, '2022 EX ‑ ERIK ELSTRAN SIGNATURE', '45000', 2),
(19, 1, '2022 EX ‑ ERIK ELSTRAN SIGNATURE', '45000', 2),
(20, 1, 'Pro-Tec CLASSIC (CERTIFIED) HELMET CULT WHITE', '1950', 3),
(21, 1, 'Pro-Tec CLASSIC (CERTIFIED) HELMET GLOSS WHITE', '1950', 5),
(26, 1, 'Pro-Tec CLASSIC (CERTIFIED) HELMET MATTE BLACK', '2200', 6),
(27, 1, 'Pro-Tec CLASSIC (CERTIFIED) HELMET MATTE BLACK', '2200', 6),
(28, 1, 'Pro-Tec CLASSIC (CERTIFIED) HELMET MATTE BLACK', '2200', 6),
(29, 1, 'Pro-Tec CLASSIC (CERTIFIED) HELMET MATTE BLACK', '2200', 2),
(30, 1, 'Pro-Tec CLASSIC (CERTIFIED) HELMET MATTE BLACK', '2200', 2),
(31, 1, 'Pro-Tec CLASSIC (CERTIFIED) HELMET MATTE BLACK', '2200', 2),
(32, 1, 'Pro-Tec CLASSIC (CERTIFIED) HELMET MATTE BLACK', '2200', 2),
(33, 1, 'Pro-Tec CLASSIC (CERTIFIED) HELMET MATTE BLACK', '2200', 2),
(34, 1, 'Pro-Tec CLASSIC (CERTIFIED) HELMET MATTE BLACK', '2200', 6),
(35, 1, 'Pro-Tec FULL CUT (CERTIFIED) HELMET MATTE BLACK', '2500', 4),
(36, 1, 'Pro-Tec FULL CUT (CERTIFIED) HELMET MATTE BLACK', '2500', 8),
(37, 1, 'Pro-Tec FULL CUT (CERTIFIED) HELMET MATTE BLACK', '2500', 7),
(37, 1, 'Pro-Tec FULL CUT (CERTIFIED) HELMET MATTE BLACK', '2500', 7),
(38, 1, 'Pro-Tec FULL CUT (CERTIFIED) HELMET MATTE BLACK', '2500', 3),
(39, 1, 'Pro-Tec FULL CUT (CERTIFIED) HELMET MATTE BLACK', '2500', 3),
(40, 1, 'Pro-Tec FULL CUT (CERTIFIED) HELMET MATTE WHITE', '2500', 6),
(41, 1, 'SHADOW INVISA_LITE SHIN_ANKLE COMBO PADS PAIR', '2200', 2),
(41, 2, 'Pro-Tec STREET ELBOW PADS RETRO', '1200', 3),
(42, 1, 'SHADOW INVISA_LITE SHIN_ANKLE COMBO PADS PAIR', '2200', 2),
(42, 2, 'Pro-Tec STREET ELBOW PADS RETRO', '1200', 3),
(43, 1, 'SHADOW INVISA_LITE SHIN_ANKLE COMBO PADS PAIR', '2200', 2),
(43, 2, 'Pro-Tec STREET ELBOW PADS RETRO', '1200', 3),
(44, 1, 'SHADOW INVISA_LITE SHIN_ANKLE COMBO PADS PAIR', '2200', 2),
(45, 1, 'SHADOW INVISA_LITE SHIN_ANKLE COMBO PADS PAIR', '2200', 2),
(46, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 3),
(47, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 3),
(48, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 3),
(49, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 3),
(50, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 3),
(51, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(52, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(53, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(54, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(55, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(56, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(57, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(58, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(59, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(60, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(61, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(62, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(63, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(64, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(65, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(66, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(67, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(68, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(69, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(70, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(71, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(72, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(73, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(74, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(75, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(76, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(77, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(78, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(79, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(80, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(81, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(82, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 6),
(83, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 4),
(83, 2, 'SHADOW INVISA_LITE SHIN_ANKLE COMBO PADS PAIR', '2200', 2),
(84, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 3),
(85, 1, 'Pro-Tec PRO PAD KNEE PADS BLACK', '990', 3),
(86, 1, 'SHADOW INVISA_LITE SHIN_ANKLE COMBO PADS PAIR', '2200', 2),
(87, 1, 'SHADOW INVISA_LITE SHIN_ANKLE COMBO PADS PAIR', '2200', 2),
(88, 1, 'Fist BLACK STOCKER', '950', 3),
(88, 1, 'Fist BLACK STOCKER', '950', 3),
(89, 1, 'Fist FROSTY FINGERS - REFLECTOR', '950', 3),
(89, 1, 'Fist FROSTY FINGERS - REFLECTOR', '950', 3),
(90, 1, 'Fist PUPPIES', '950', 6),
(90, 1, 'Fist PUPPIES', '950', 6),
(91, 1, 'Fist THE PALMS', '950', 8),
(91, 1, 'Fist THE PALMS', '950', 8),
(92, 1, '2022 FORECASTER ‑ AARON ROSS SIGNATURE', '45000', 4),
(92, 1, '2022 FORECASTER ‑ AARON ROSS SIGNATURE', '45000', 4),
(93, 1, '2022 FORECASTER ‑ BRETT SILVA SIGNATURE', '38000', 3),
(93, 1, '2022 FORECASTER ‑ BRETT SILVA SIGNATURE', '38000', 3),
(94, 1, '2022 FORECASTER ‑ BRETT SILVA SIGNATURE', '38000', 3),
(94, 1, '2022 FORECASTER ‑ BRETT SILVA SIGNATURE', '38000', 3),
(95, 1, '2022 FORECASTER ‑ BRETT SILVA SIGNATURE', '38000', 3),
(95, 1, '2022 FORECASTER ‑ BRETT SILVA SIGNATURE', '38000', 3),
(96, 1, '2022 FORECASTER ‑ BRETT SILVA SIGNATURE', '38000', 3),
(96, 1, '2022 FORECASTER ‑ BRETT SILVA SIGNATURE', '38000', 3),
(97, 1, '2022 FORECASTER ‑ BROC RAIFORD SIGNATURE', '45000', 2),
(97, 2, 'Cult P-121 HALF LINK CHAIN BLACK', '600', 2),
(98, 1, 'Cult P-121 HALF LINK CHAIN GOLD', '800', 1),
(98, 2, 'PYC P121 HALF LINK CHAIN RAW', '500', 1),
(99, 1, 'Cult P-121 HALF LINK CHAIN GOLD', '800', 1),
(100, 1, 'Cult P-121 HALF LINK CHAIN GOLD', '800', 1),
(101, 1, 'Cult P-121 HALF LINK CHAIN GOLD', '800', 1),
(102, 1, 'Shadow INTERLOCK V2 BLACK', '1200', 2),
(102, 2, 'Animal AKIMBO CRANKS BLACK 165MM', '6600', 5),
(103, 1, 'Shadow INTERLOCK V2 BLACK', '1200', 1),
(104, 1, 'Shadow INTERLOCK V2 BLACK', '1200', 1),
(105, 1, 'Shadow INTERLOCK V2 BLACK', '1200', 1),
(106, 1, 'Shadow INTERLOCK V2 BLACK', '1200', 1),
(107, 1, 'Shadow INTERLOCK V2 BLACK', '1200', 1),
(108, 1, 'Shadow INTERLOCK V2 BLACK', '1200', 1),
(109, 1, 'Shadow INTERLOCK V2 BLACK', '1200', 1),
(110, 1, 'Shadow INTERLOCK V2 BLACK', '1200', 1),
(111, 1, 'Shadow INTERLOCK V2 BLACK', '1200', 1),
(111, 2, '2022 FORECASTER ‑ BROC RAIFORD SIGNATURE', '45000', 1),
(112, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(113, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(114, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(115, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(116, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(117, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(118, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(119, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(120, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(121, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(122, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(123, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(124, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(125, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(126, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(127, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(128, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(129, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(130, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(131, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(132, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(133, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(134, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(135, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(136, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(137, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(138, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(139, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(140, 1, 'MISSION HALF LINK CHAIN', '600', 1),
(141, 1, '2022 EX ‑ ERIK ELSTRAN SIGNATURE', '45000', 2),
(141, 2, 'Pro-Tec CLASSIC (CERTIFIED) HELMET GLOSS WHITE', '1950', 1),
(141, 3, '2022 FORECASTER ‑ AARON ROSS SIGNATURE', '45000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `p_price` int(10) NOT NULL,
  `type_id` int(11) NOT NULL,
  `p_detail` text NOT NULL,
  `p_img` varchar(200) NOT NULL,
  `cat` text NOT NULL,
  `amount` int(3) NOT NULL,
  `datesave` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_price`, `type_id`, `p_detail`, `p_img`, `cat`, `amount`, `datesave`) VALUES
(1, '2022 DARKWAVE ‑ BROC RAIFORD AUTHENTIC', 48000, 1, 'Specifications\r\nFrame: Sunday Darkwave, 21.25\" TT, 100% chromoly, aftermarket frame, w/ wave downtube and removable brake hardware\r\nFork: Sunday Darkwave, 100% chromoly, 41-Thermal, aftermarket fork, 28mm offset\r\nHandlebar: Odyssey BROC Bar, 41-Thermal, aftermarket bar\r\nStem: Odyssey BROC V2 Stem, 50mm\r\nHeadset:  Odyssey Pro Conical, 1-1/8\"\r\nHeadset Cap:  Sunday aftermarket, aluminum\r\nBrake Lever:  Odyssey Springfield \r\nBrakes: Odyssey Springfield U-brake \r\nBrake Cable:  Odyssey Linear Quik Slic\r\nGrips: Odyssey Broc Raiford\r\nSeat: Odyssey Broc Raiford Signature, Pivotal\r\nSeat Alternate: Odyssey Big Stitch, Pivotal\r\nSeat post:  Odyssey Pivotal \r\nSeat Clamp: Integrated \r\nSprocket: Odyssey La Guardia Sprocket, 28T\r\nCranks: Odyssey Thunderbolt, 170mm, 100% chromoly, 41-Thermal, LHD \r\nBB Parts: Odyssey Sealed, Mid, 22mm\r\nPedals: Odyssey Twisted PC Pro\r\nRims: Odyssey Hazard Lite, 20\", 36H\r\nFront Hub: Odyssey Vandero Pro, 36H, sealed, 3/8\" female axle, 2 plastic guards \r\nRear Hub: Odyssey Clutch V2 freecoaster, 36H, 14mm female axle w/ 9T driver, LHD, non-drive side plastic guard\r\nSpokes: 14g steel, black \r\nTires: Odyssey Broc Tire, 20 x 2.4\" (F & R)\r\nChain: Odyssey Bluebird Half-Link\r\nApprox. Weight: 24.97lbs (brakeless)\r\n\r\nFrame Geometry \r\nTop Tube Length: 21.25\" \r\nHead Tube Angle: 75.25° \r\nSeat Tube Angle: 71° \r\nChainstay Length: 13.25\"-13.5” \r\nBottom Bracket Height: 11.75\" \r\nStandover: 9.25” \r\n\r\nHandlebar Geometry \r\nRise: 9.8\" \r\nWidth: 29\" \r\nBacksweep: 10° \r\nUpsweep: 2°', 'p_img144726079020211017_214306.jpg', 'bmx', 0, '2021-10-17 14:43:06'),
(2, '2022 EX ‑ ERIK ELSTRAN SIGNATURE', 45000, 1, 'Specifications\r\nFrame: Sunday EX, 20.75\" TT, 100% chromoly frame with wave downtube, w/ removable brake hardware\r\nFork: Sunday EX, 20\", 100% chromoly fork w/ 2-piece steerer tube and welded pre-load, 25mm offset \r\nHandlebar: Sunday, 100% chromoly, 4-piece \r\nStem: Sunday Freeze front load, 48mm \r\nHeadset: FSA integrated conical, 1-1/8\" \r\nAlloy Cap:  Sunday M16, aluminum \r\nBrake Lever:  Odyssey Springfield \r\nBrakes: Odyssey Springfield U-brake \r\nBrake Cable:  Odyssey Quik Slic \r\nGrips: Sunday Jake Seeley \r\nSeat: Sunday Badge, Pivotal \r\nSeat post:  Sunday Pivotal \r\nSeat Clamp: Sunday \r\nSprocket: Sunday Sabertooth v2, 25T, 6061 aluminum \r\nCranks: Sunday Saker, 165mm\r\nBB Parts: Sealed, Mid, 19mm\r\nPedals: Odyssey Twisted PC Pro \r\nRims: Sunday Lightning, 20\", 36H \r\nFront Hub: Sunday, 36H, low-flange, sealed , 3/8\" female axle \r\nRear Hub: Odyssey Clutch V2 FC, 36H, 14mm female axle w/ 9T driver, RHD, non-drive side plastic guard \r\nSpokes: 14g steel, black \r\nTires: Odyssey Path Pro OEM, 20 x 2.4\" (F & R) \r\nChain: KMC Z1 wide\r\nApprox. Weight: 25.75lbs (with brakes)\r\n\r\nFrame Geometry \r\nTop Tube Length: 20.75\" \r\nHead Tube Angle: 75° \r\nSeat Tube Angle: 71° \r\nChainstay Length: 13.2-13.5” \r\nBottom Bracket Height: 11.5\" \r\nStandover: 9\" \r\n\r\nHandlebar Geometry \r\nRise: 9\" \r\nWidth: 29\" \r\nBacksweep: 12° \r\nUpsweep: 3°', 'p_img159210407020211017_214346.jpg', 'bmx', 8, '2021-10-17 14:43:46'),
(3, '2022 FORECASTER ‑ AARON ROSS SIGNATURE', 45000, 1, 'Specifications\r\nFrame: Sunday Forecaster, 20.5\" TT, 100% chromoly frame with integrated 1-1/8\" head tube, and removable brake hardware\r\nFork: Sunday Forecaster, 20\" fork w/ 2-piece chromoly steerer tube and welded pre-load \r\nHandlebar: Sunday, 2-piece \r\nStem: Sunday Freeze front load, 48mm \r\nHeadset:  FSA integrated conical, 1-1/8\" \r\nAlloy Cap: Sunday M16, aluminum \r\nBrake Lever:  Odyssey Springfield \r\nBrakes: Odyssey Springfield U-brake \r\nBrake Cable:  Odyssey Quik Slic \r\nGrips: Odyssey Keyboard v2, dual-compound \r\nSeat: Odyssey Aaron Ross Tie Dye, Pivotal or\r\nSeat Alternate: Odyssey Flora, Pivotal\r\nSeat post:  Sunday Pivotal \r\nSeat Clamp: Sunday \r\nSprocket: Sunday Sabertooth v2, 25T, steel \r\nCranks: 160mm, 3-piece, chromoly \r\nBB Parts: Sealed, Mid, 19mm \r\nPedals: Odyssey Twisted PC Pro \r\nRims: Sunday Lightning, 20\", 36H \r\nFront Hub: Sunday, 36H, low-flange, sealed , 3/8\" female axle \r\nRear Hub: Odyssey Clutch V2 FC, 36H, 14mm female axle w/ 9T driver, RHD, non-drive side plastic guard \r\nSpokes: 14g steel, black \r\nTires: Odyssey Path Pro OEM, 20 x 2.4\" (F & R) \r\nChain: KMC Z1 wide\r\nApprox. Weight: 26.78lbs (with brakes)\r\n\r\nFrame Geometry \r\nTop Tube Length: 20.5\" \r\nHead Tube Angle: 75.5° \r\nSeat Tube Angle: 71° \r\nChainstay Length: 13.2-13.5” \r\nBottom Bracket Height: 11.7\" \r\nStandover: 9\" \r\n\r\nHandlebar Geometry \r\nRise: 9\" \r\nWidth: 28.5\" \r\nBacksweep: 12° \r\nUpsweep: 4° ', 'p_img205806275120211017_214413.jpg', 'bmx', 8, '2021-10-17 14:44:13'),
(4, '2022 FORECASTER ‑ BRETT SILVA SIGNATURE', 38000, 1, 'Specifications\r\nFrame: Sunday Forecaster, 20.75\" TT, 100% chromoly frame with integrated 1-1/8\" head tube, and removable brake hardware\r\nFork: Sunday Forecaster, 20\" fork w/ 2-piece chromoly steerer tube and welded pre-load \r\nHandlebar: Sunday, 2-piece \r\nStem: Sunday Freeze front load, 48mm \r\nHeadset:  FSA integrated conical, 1-1/8\" \r\nAlloy Cap: Sunday M16, aluminum \r\nBrake Lever:  Odyssey Springfield \r\nBrakes: Odyssey Springfield U-brake \r\nBrake Cable:  Odyssey Quik Slic \r\nGrips: Odyssey Broc Raiford \r\nSeat: Sunday Badge, Pivotal \r\nSeat post:  Sunday Pivotal \r\nSeat Clamp: Sunday \r\nSprocket: Sunday Sabertooth v2, 25T, steel \r\nCranks: 170mm, 3-piece, chromoly \r\nBB Parts: Sealed, Mid, 19mm \r\nPedals: Odyssey Twisted PC Pro \r\nRims: Sunday Lightning, 20\", 36H \r\nFront Hub: Sunday, 36H, low-flange, sealed , 3/8\" female axle \r\nRear Hub: Sunday 36H, sealed, 14mm male axle w/ 9T Driver\r\nSpokes: 14g steel, black \r\nTires: Odyssey Path Pro OEM, 20 x 2.4\" (F & R) \r\nChain: KMC Z1 wide\r\nApprox. Weight: 26.78lbs (with brakes)\r\n\r\nFrame Geometry \r\nTop Tube Length: 20.75\" \r\nHead Tube Angle: 75.5° \r\nSeat Tube Angle: 71° \r\nChainstay Length: 13.2-13.5” \r\nBottom Bracket Height: 11.7\" \r\nStandover: 9\" \r\n\r\nHandlebar Geometry \r\nRise: 9\" \r\nWidth: 28.5\" \r\nBacksweep: 12° \r\nUpsweep: 4° ', 'p_img203374343020211017_214442.jpg', 'bmx', 10, '2021-10-17 14:44:42'),
(5, '2022 FORECASTER ‑ BROC RAIFORD SIGNATURE', 45000, 1, 'Specifications\r\nFrame: Sunday Forecaster, 21\" TT, 100% chromoly frame with integrated 1-1/8\" head tube, and removable brake hardware\r\nFork: Sunday Forecaster, 20\" fork w/ 2-piece chromoly steerer tube and welded pre-load \r\nHandlebar: Sunday, 2-piece \r\nStem: Sunday Freeze front load, 48mm \r\nHeadset:  FSA integrated conical, 1-1/8\" \r\nAlloy Cap: Sunday M16, aluminum \r\nBrake Lever:  Odyssey Springfield \r\nBrakes: Odyssey Springfield U-brake \r\nBrake Cable:  Odyssey Quik Slic \r\nGrips: Odyssey Broc Raiford \r\nSeat: Odyssey Broc Raiford Signature, Pivotal\r\nSeat Alternate: Odyssey Big Stitch, Pivotal\r\nSeat Post:  Sunday Pivotal \r\nSeat Clamp: Sunday \r\nSprocket: Sunday Sabertooth v2, 25T, steel \r\nCranks: 170mm, 3-piece, chromoly \r\nBB Parts: Sealed, Mid, 19mm \r\nPedals: Odyssey Twisted PC Pro \r\nRims: Sunday Lightning, 20\", 36H \r\nFront Hub: Sunday, 36H, low-flange, sealed , 3/8\" female axle \r\nRear Hub: Odyssey Clutch v2 freecoaster, 36H, 14mm female axle w/ 9T driver, LHD or RHD, non-drive side plastic guard \r\nSpokes: 14g steel, black \r\nTires: Odyssey Path Pro OEM, 20 x 2.4\" (F & R) \r\nChain: KMC Z1 wide\r\nApprox. Weight: 26.78lbs (with brakes)\r\n\r\nFrame Geometry \r\nTop Tube Length: 21\" \r\nHead Tube Angle: 75.5° \r\nSeat Tube Angle: 71° \r\nChainstay Length: 13.2-13.5” \r\nBottom Bracket Height: 11.7\" \r\nStandover: 9\" \r\n\r\nHandlebar Geometry \r\nRise: 9\" \r\nWidth: 28.5\" \r\nBacksweep: 12° \r\nUpsweep: 4°                           ', '124102370020211017_214708.jpg', 'bmx', 10, '2021-10-17 14:46:10'),
(6, '2022 SCOUT Matte Raw', 35000, 1, 'Specifications\r\nFrame: Sunday Scout, 21\" top tube, integrated 1-1/8\" head tube, chromoly down tube and dropouts\r\nFork: Sunday Scout, 20\" fork w/ 2-piece chromoly steerer tube and welded pre-load \r\nHandlebar: Sunday, 2-piece \r\nStem: Sunday Freeze top load, 48mm \r\nHeadset:  FSA integrated, 1-1/8\" \r\nAlloy Cap:  FSA aluminum cap \r\nBrake Lever:  Odyssey Springfield \r\nBrakes: Odyssey Springfield U-brake \r\nBrake Cable:  Odyssey Quik Slic \r\nGrips: Odyssey Broc Raiford \r\nSeat: Sunday Badge, Pivotal \r\nSeat post: Sunday, Pivotal \r\nSeat Clamp: Sunday \r\nSprocket: Sunday Sabertooth v2, 25T, steel \r\nCranks: 170mm, 3-piece, chromoly \r\nBB Parts: Sealed, Mid, 19mm \r\nPedals: Odyssey Twisted PC Pro \r\nRims: P-7X aluminum, 20\", 20H \r\nFront Hub: Sunday, 36H, low-flange, sealed, 3/8\" axle \r\nRear Hub: Sunday 36H, sealed, 14mm axle w/ 9T Driver \r\nSpokes: 14g steel, black \r\nTires: Odyssey Path Pro OEM, 20 x 2.4\" (F & R) \r\nChain: KMC Z1 wide\r\nApprox. Weight: 26.82lbs (with brakes)\r\n\r\nFrame Geometry \r\nTop Tube Length: 21\" \r\nHead Tube Angle: 75.5° \r\nSeat Tube Angle: 71° \r\nChainstay Length: 13.2-13.5” \r\nBottom Bracket Height: 11.5\" \r\nStandover: 9” \r\n\r\nHandlebar Geometry \r\nRise: 9\" \r\nWidth: 28.5\" \r\nBacksweep: 12° \r\nUpsweep: 4°', 'p_img120756336520211017_214653.jpg', 'bmx', 10, '2021-10-17 14:46:53'),
(7, '2022 SCOUT Matte Trans Purple', 35000, 1, 'Specifications\r\nFrame: Sunday Scout, 20.75\" top tube, integrated 1-1/8\" head tube, chromoly down tube and dropouts\r\nFork: Sunday Scout, 20\" fork w/ 2-piece chromoly steerer tube and welded pre-load \r\nHandlebar: Sunday, 2-piece \r\nStem: Sunday Freeze top load, 48mm \r\nHeadset:  FSA integrated, 1-1/8\" \r\nAlloy Cap:  FSA aluminum cap \r\nBrake Lever:  Odyssey Springfield \r\nBrakes: Odyssey Springfield U-brake \r\nBrake Cable:  Odyssey Quik Slic \r\nGrips: Odyssey Broc Raiford \r\nSeat: Sunday Badge, Pivotal \r\nSeat post: Sunday, Pivotal \r\nSeat Clamp: Sunday \r\nSprocket: Sunday Sabertooth v2, 25T, steel \r\nCranks: 170mm, 3-piece, chromoly \r\nBB Parts: Sealed, Mid, 19mm \r\nPedals: Odyssey Twisted PC Pro \r\nRims: P-7X aluminum, 20\", 20H \r\nFront Hub: Sunday, 36H, low-flange, sealed, 3/8\" axle \r\nRear Hub: Sunday 36H, sealed, 14mm axle w/ 9T Driver \r\nSpokes: 14g steel, black \r\nTires: Odyssey Path Pro OEM, 20 x 2.4\" (F & R) \r\nChain: KMC Z1 wide\r\nApprox. Weight: 26.82lbs (with brakes)\r\n\r\nFrame Geometry \r\nTop Tube Length: 20.75\" \r\nHead Tube Angle: 75.5° \r\nSeat Tube Angle: 71° \r\nChainstay Length: 13.2-13.5” \r\nBottom Bracket Height: 11.5\" \r\nStandover: 9” \r\n\r\nHandlebar Geometry \r\nRise: 9\" \r\nWidth: 28.5\" \r\nBacksweep: 12° \r\nUpsweep: 4°                                       ', '178734442120211017_214954.jpg', 'bmx', 10, '2021-10-17 14:47:37'),
(11, 'Cult P-121 HALF LINK CHAIN BLACK', 600, 2, 'Cult P-121 HALF LINK CHAIN BLACK', 'p_img159942178620211018_114936.jpg', 'bmx', 10, '2021-10-18 04:49:36'),
(12, 'Cult P-121 HALF LINK CHAIN GOLD', 800, 2, 'Cult P-121 HALF LINK CHAIN GOLD', 'p_img35845686620211018_115021.jpg', 'bmx', 10, '2021-10-18 04:50:21'),
(13, 'MISSION HALF LINK CHAIN BLACK', 500, 2, 'MISSION HALF LINK CHAIN BLACK', 'p_img29405243920211018_115040.jpg', 'bmx', 10, '2021-10-18 04:50:40'),
(14, 'MISSION HALF LINK CHAIN', 600, 2, 'MISSION HALF LINK CHAIN', 'p_img56857310020211018_115055.jpg', 'bmx', 10, '2021-10-18 04:50:55'),
(15, 'PYC P121 HALF LINK CHAIN RAW', 500, 2, 'PYC P121 HALF LINK CHAIN RAW', 'p_img5011114520211018_115111.jpg', 'bmx', 10, '2021-10-18 04:51:11'),
(16, 'Shadow INTERLOCK V2 BLACK', 1200, 2, 'Shadow INTERLOCK V2 BLACK', 'p_img67286313820211018_115126.jpg', 'bmx', 10, '2021-10-18 04:51:26'),
(17, 'Animal AKIMBO CRANKS BLACK 165MM', 6600, 23, 'Animal Akimbo Cranks\r\n\r\nThe Animal Akimbo cranks features a 3pc crank design with 4130 heat-treated chromoly arms with Animal logos and includes a 22mm hollow heat-treated chromoly spindle, hollow flush mount bolts, sprocket bolt, crank installation/removal tool, and grease pack.', 'p_img173427002920211018_115306.jpg', 'bmx', 10, '2021-10-18 04:53:06'),
(18, 'THE SET 2PC CRANKS WITH 22MM MID BB BLACK 165MM', 5500, 23, 'Size: 165mm\r\nColour: Black\r\nSpindle Diameter: 22mm\r\nIncludes BB: No\r\nWeight: 884g             ', '157260459420211018_120400.jpg', 'bmx', 10, '2021-10-18 04:54:06'),
(19, 'Cult HAWK V2 (CHASE HAWK SIGNATURE) CRANKS 165MM', 6500, 23, 'Cult Hawk V2 (Chase Hawk Signature) Cranks 165mm\r\n\r\nColour: Black\r\nSpindle Diameter: 22mm\r\nIncludes BB: No\r\nWeight: 872g', 'p_img212632412220211018_115458.jpg', 'bmx', 10, '2021-10-18 04:54:58'),
(20, 'Fiend SEGMENT CRANKS 165MM', 5800, 23, 'Colour: Black\r\nSpindle Diameter: 22mm\r\nIncludes BB: No\r\nWeight: 900g\r\n', 'p_img86348080920211018_115546.jpg', 'bmx', 10, '2021-10-18 04:55:46'),
(21, 'Fit BLUNT CRANKS BLACK 165MM + BB', 6800, 23, 'Colour: Black\r\nSpindle Diameter: 24mm\r\nIncludes BB: Yes\r\nWeight: 900g', 'p_img30385623520211018_115637.jpg', 'bmx', 10, '2021-10-18 04:56:37'),
(22, 'Odyssey CALIBUR V2 CRANKS BLACK 160MM', 5600, 23, 'Colour: Black\r\nSpindle Diameter: 22mm\r\nIncludes BB: No\r\nWeight: 900g', 'p_img200720109120211018_115719.jpg', 'bmx', 10, '2021-10-18 04:57:19'),
(23, 'odyssey THUNDERBOLT CRANKS 165MM LHD', 6800, 23, 'Coulor: Black\r\nSpindle Diameter: 22mm\r\nIncludes BB: No\r\nWeight: 802g', 'p_img77132995420211018_115753.jpg', 'bmx', 10, '2021-10-18 04:57:53'),
(24, 'Fiend THE PROCESS IC FORKS 20MM', 5400, 4, 'Diameter: 10mm\r\nOffset: 26mm\r\nWeight: 1,134g\r\nConstructed from 4130 chromoly tubing featuring a 1-pc internally and externally machined steerer tube with integrated bearing race, Animal Sewer alloy compression bolt, tapered legs with embossed Animal logo end caps and investment cast dropouts available in 15 or 26mm offsets to best fit your riding style.', 'p_img87351315520211018_115919.jpg', 'bmx', 10, '2021-10-18 04:59:19'),
(25, 'Odyssey R15 FORK BLACK 15MM OFFSET', 5600, 4, 'Constructed from 4130 chromoly tubing featuring a 1-pc internally and externally machined steerer tube with integrated bearing race, Animal Sewer alloy compression bolt, tapered legs with embossed Animal logo end caps and investment cast dropouts available in 15 or 26mm offsets to best fit your riding style.', 'p_img42594350120211018_115958.jpg', 'bmx', 10, '2021-10-18 04:59:58'),
(26, 'Odyssey R15 FORK CHROME 15MM OFFSET', 5500, 4, 'Colour:Silver\r\nDiameter: 10mm\r\nOffset: 15mm\r\nWeight: 1,100g\r\nConstructed from 4130 chromoly tubing featuring a 1-pc internally and externally machined steerer tube with integrated bearing race, Animal Sewer alloy compression bolt, tapered legs with embossed Animal logo end caps and investment cast dropouts available in 15 or 26mm offsets to best fit your riding style.', 'p_img184602632620211018_120036.jpg', 'bmx', 10, '2021-10-18 05:00:36'),
(27, 'SHADOW ODIN FORKS BLACK 25MM', 5200, 4, 'Colour: Black\r\nOffset: 18mm \r\nSteerer Length: 162mm \r\nWeight: 1002g/2.21lbs\"\r\n', 'p_img211751273520211018_120109.jpg', 'bmx', 10, '2021-10-18 05:01:09'),
(28, 'Subrosa SIMO ', 5000, 4, 'Dropouts: 5mm Thick , 10mm Axles\r\nOffset : 28mm\r\n             ', 'p_img84299780520211018_120154.jpg', 'bmx', 10, '2021-10-18 05:01:54'),
(29, 'Subrosa SIMO (SIMONE BARRACO SIGNATURE) FORKS BLACK 27MM OFFSET', 4500, 4, 'Constructed from 4130 chromoly tubing featuring a 1-pc internally and externally machined steerer tube with integrated bearing race, Animal Sewer alloy compression bolt, tapered legs with embossed Animal logo end caps and investment cast dropouts available in 15 or 26mm offsets to best fit your riding style.', 'p_img155305015620211018_120243.jpg', 'bmx', 10, '2021-10-18 05:02:43'),
(30, 'BSD ALEX DONNACHIE SIGNATURE ALVX AF FRAME FLAT ICE BLUE 20.3', 13000, 24, 'Top Tube: 20.75″\r\nChainstay: 12.5″ (Slammed)\r\nBB height: 11.7″\r\nSeat Tube height: 9.25″\r\nHead Tube Angle: 75.25°\r\nSeat Tube Angle: 71°\r\nSeat Post: 25.4\r\nWeight: 5 lbs 2 oz (21″)', 'p_img130712930820211018_120530.png', 'bmx', 10, '2021-10-18 05:05:30'),
(31, 'BSD ALEX DONNACHIE SIGNATURE ALVX AF FRAME FLAT RAW 20.6', 12500, 24, 'Top Tube: 20.75″\r\nChainstay: 13″(13.25″ center to center)\r\nBB height: 11.7″\r\nSeat Tube height: 9.25″\r\nHead Tube Angle: 75.25°\r\nSeat Tube Angle: 71°\r\nSeat Post: 25.4\r\nWeight: 5 lbs 2 oz (21″)', 'p_img95370978720211018_120657.png', 'bmx', 10, '2021-10-18 05:06:57'),
(32, 'SUNDAY STREET SWEEPER (JAKE SEELEY SIGNATURE) FRAME HOT PINK 20.75', 14000, 24, 'Top Tube: 20.75″\r\nChainstay: 13″(13.25″ center to center)\r\nBB height: 11.7″\r\nSeat Tube height: 9.25″\r\nHead Tube Angle: 75.25°\r\nSeat Tube Angle: 71°\r\nSeat Post: 25.4\r\nWeight: 5 lbs 2 oz (21″)', 'p_img194353781020211018_120727.jpg', 'bmx', 10, '2021-10-18 05:07:27'),
(33, 'SUNDAY DARKWAVE (BROC RAIFORD SIGNATURE) FRAME TRANS RED 20.75', 13500, 24, 'TT: 20.5″\r\nHT: 75.5*\r\nST: 71*\r\nCS: 13.125\"\r\nStand Over: 9.5″\r\nBB Height: 11.625″\r\n\r\n', 'p_img168930595020211018_120802.jpg', 'bmx', 10, '2021-10-18 05:08:02'),
(34, 'REYNOLDS V2 (GARRET REYNOLDS SIGNATURE) FRAME FLAT MERLOT SPACEDUST 20.75', 12500, 24, 'TT: 20.5″\r\nHT: 75.5*\r\nST: 71*\r\nCS: 13.125\"\r\nStand Over: 9.5″\r\nBB Height: 11.625″', 'p_img51520123520211018_120819.jpg', 'bmx', 10, '2021-10-18 05:08:19'),
(35, 'REYNOLDS V2 (GARRET REYNOLDS SIGNATURE) FRAME ED BLACK 20.5', 12000, 24, 'Top tube length: 20.5”\r\nRear-end length: 12.4”\r\nHead tube angle: 75.5°\r\nHead tube style: Integrated (45°/45°, 41.8mm)\r\nSeat tube angle: 71°\r\nSeat clamp: Integrated\r\nSeat post size: 25.4mm\r\nBB height: 11.7”\r\nBB style: MID\r\nStandover height: 8.75”\r\nBrake mounts: Thread-on\r\nDropouts: 14mm, 4q-baked\r\nGyro tabs: none\r\nWeight: 5 lb / 2.27 Kg (20.75”)', 'p_img175141711920211018_120849.jpg', 'bmx', 10, '2021-10-18 05:08:49'),
(36, 'MILLS (LEWIS MILLS SIGNATURE) FRAME RED 20.5', 13500, 24, 'TT: 20.5″\r\nHT: 75.5*\r\nST: 71*\r\nCS: 13.125\"\r\nStand Over: 9.5″\r\nBB Height: 11.625″\r\n\r\n', 'p_img31812154420211018_120919.jpg', 'bmx', 10, '2021-10-18 05:09:19'),
(37, 'Fit SHORTCUT FRAME GLOSS BLACK ARMY GREEN FADE 20.5', 13000, 24, 'Top Tube: 20.75\"\r\nChainstay: 12.8”- 13.1”\r\nBB height: 11.8″\r\nSeat Tube height: 9.0″\r\nHead Tube Angle: 75.3°\r\nSeat Tube Angle: 71°\"', 'p_img186853106620211018_120949.jpg', 'bmx', 10, '2021-10-18 05:09:49'),
(38, 'Animal 4AM 4 PIECE HANDLEBARS BLACK 8.25', 2500, 17, 'Colour: ED Black\r\nWidth: 29\"\r\nUpsweep: 5°\r\nBacksweep: 11°\r\nWeight: 1.73lbs / 27.4oz', 'p_img196730520420211018_121828.jpg', 'bmx', 10, '2021-10-18 05:18:28'),
(39, 'Animal FOURSOME 4 PIECE HANDLEBARS BLACK 9.5', 2600, 17, 'Rise: 9\"\r\nColour: Ed Black\r\nWidth: 29\"\r\nUpsweep: 5°\r\nBacksweep: 11°', 'p_img5264537320211018_121916.jpg', 'bmx', 10, '2021-10-18 05:19:16'),
(40, 'Volume MAD DOG 4PC HANDLEBARS BLACK 9.25', 2900, 17, 'Colour: Chrome\r\nWidth: 29\"\r\nUpsweep: 5°\r\nBacksweep: 11°\r\n             ', '158508447520211018_122024.jpg', 'bmx', 10, '2021-10-18 05:19:45'),
(41, 'Demolition HEAT WAVE (KEVIN PERAZA SIGNATURE) HANDLEBARS BLACK 9', 2800, 17, 'Colour: ED Black\r\nWidth: 28\"\r\nUpsweep: 5°\r\nBacksweep: 11°\r\nWeight: 1.73lbs / 27.4oz\r\n\r\n', 'p_img142227087620211018_122056.jpg', 'bmx', 10, '2021-10-18 05:20:56'),
(42, 'Colony BLOODY OATH HANDLEBARS BLACK 9', 2500, 17, 'Colour: ED Black\r\nWidth: 28\"\r\nUpsweep: 5°\r\nBacksweep: 11°\r\nWeight: 1.73lbs / 27.4oz\r\n\r\n', 'p_img177670129020211018_122118.jpg', 'bmx', 10, '2021-10-18 05:21:18'),
(43, 'Animal FOURSOME 4 PIECE HANDLEBARS BLACK 9', 2500, 17, 'Colour: ED Black\r\nWidth: 28\"\r\nUpsweep: 5°\r\nBacksweep: 11°\r\nWeight: 1.73lbs / 27.4oz', 'p_img41332067020211018_122146.jpg', 'bmx', 10, '2021-10-18 05:21:46'),
(44, 'Animal RAT TRAP(MARK GRALLA SIGNATURE) PLASTIC PEDALS BLACK', 500, 18, 'Sold in Pairs\r\nDesigned With Team Input\r\n10 Square Molded Pins\r\nHorizontal Concave for Grip\r\nNylon Plastic Body for Extra Life\r\n2 Unsealed Bearings\r\nHeat Treated CRMO Spindle\r\n9/16″ Size Only (Fits Three-Piece Cranks)\r\nWeight: 14.5 oz (pair).', 'p_img150281169220211018_122312.jpg', 'bmx', 10, '2021-10-18 05:23:12'),
(45, 'Demolition TROOPER PLASTIC PEDALS BLACK', 550, 18, 'Sold in Pairs\r\nDesigned With Team Input\r\n10 Square Molded Pins\r\nHorizontal Concave for Grip\r\nNylon Plastic Body for Extra Life\r\n2 Unsealed Bearings\r\nHeat Treated CRMO Spindle\r\n9/16″ Size Only (Fits Three-Piece Cranks)\r\nWeight: 14.5 oz (pair).', 'p_img101929881220211018_122419.jpg', 'bmx', 10, '2021-10-18 05:24:19'),
(46, 'Shadow SURFACE PEDALS SKELATOR', 500, 18, 'The pedal is a key contact point between you and your bike, so Shadow made the new Surface Pedal with performance and function in mind. Shadow started with a wider and longer, slim platform. The wide 105mm x100mm platform is specifically shaped to be thin and stiff while still offering an overall concave shape. Shadow added advanced micro knurling and 12 pins per side for a maximum grip that still allows foot adjustments mid-shred. Made with the same proven nylon composite material as the Ravager pedal, with a heat treated chromoly axle that includes a 6mm broach for ease of installation and high end looks.', 'p_img2222247120211018_122638.jpg', 'bmx', 10, '2021-10-18 05:26:38'),
(47, 'Shadow SURFACE PEDALS NAVY', 550, 18, 'The pedal is a key contact point between you and your bike, so Shadow made the new Surface Pedal with performance and function in mind. Shadow started with a wider and longer, slim platform. The wide 105mm x100mm platform is specifically shaped to be thin and stiff while still offering an overall concave shape. Shadow added advanced micro knurling and 12 pins per side for a maximum grip that still allows foot adjustments mid-shred. Made with the same proven nylon composite material as the Ravager pedal, with a heat treated chromoly axle that includes a 6mm broach for ease of installation and high end looks.', 'p_img11707567620211018_122656.jpg', 'bmx', 10, '2021-10-18 05:26:56'),
(48, 'Demolition TROOPER PLASTIC PEDALS WHITEPURPLE MARBLE', 600, 18, 'Like the original Grandstand, it still features a unique slim profile, a wide platform and a comfortable concave that feels exceptional as soon as you set foot on it. The pedal features a unique bearing configuration that allows a big spindle to be paired with a slim pedal body.', 'p_img49659129420211018_122729.jpg', 'bmx', 10, '2021-10-18 05:27:29'),
(49, 'Demolition TROOPER PLASTIC PEDALS BLACK_WHITE MARBLE', 550, 18, '9/16\" pedal threads\r\nSecond version of the popular Grandstand pedal\r\nHigh strength plastic composite\r\nRedesigned internal configuration to reduce axial movement\r\nProprietary 14mm heat-treated chromoly spindle with 17mm wrench flats and 6mm broach\r\nExtra large contact surface\r\n8 oversized pins per side\r\nGenuinely thin body: 17mm at center with uninterrupted dual concave', 'p_img149218656020211018_122753.jpg', 'bmx', 10, '2021-10-18 05:27:53'),
(50, 'Demolition TROOPER PLASTIC PEDALS BLACK_BROWN MARBLE', 500, 18, '9/16\" pedal threads\r\nSecond version of the popular Grandstand pedal\r\nHigh strength plastic composite\r\nRedesigned internal configuration to reduce axial movement\r\nProprietary 14mm heat-treated chromoly spindle with 17mm wrench flats and 6mm broach\r\nExtra large contact surface\r\n8 oversized pins per side\r\nGenuinely thin body: 17mm at center with uninterrupted dual concave', 'p_img181759864920211018_122817.jpg', 'bmx', 10, '2021-10-18 05:28:17'),
(51, 'sunday LOGO TRIPOD SEAT BLACK', 1500, 19, 'Mid size...just the right amount of padding and made from durable materials, only available in tripod.\r\n\r\nType: Tipod\r\n\r\n', 'p_img57816488220211018_122922.jpg', 'bmx', 10, '2021-10-18 05:29:22'),
(52, 'Odyssey  RIOT HOT SEAT PIVOTAL SEAT', 1400, 19, 'Odyssey Riot Hot Seat Pivotal Seat\r\n\r\nMount: Pivotal', 'p_img163072126020211018_122954.jpg', 'bmx', 10, '2021-10-18 05:29:54'),
(53, 'Odyssey Aitken Nightwolf Mid Pivotal Seat', 1400, 19, 'Odyssey Aitken Nightwolf Mid Pivotal Seat\r\n\r\nMount: Pivotal             ', 'p_img2406723420211018_123015.jpg', 'bmx', 10, '2021-10-18 05:30:15'),
(54, 'Kink ERICSSON STEALTH PIVOTAL SEAT', 1500, 0, 'Kink Ericsson Stealth Pivotal\r\n\r\nMount: Stealth Pivotal', 'p_img62129244420211018_123041.jpg', 'bmx', 10, '2021-10-18 05:30:41'),
(55, 'Kink ERICSSON STEALTH PIVOTAL SEAT', 1500, 19, 'Kink Ericsson Stealth Pivotal\r\n\r\nMount: Stealth Pivotal             ', 'p_img202114262720211018_123110.jpg', 'bmx', 10, '2021-10-18 05:31:10'),
(56, 'Cult MID TIPOD SEAT', 1400, 19, 'Mid size...just the right amount of padding and made from durable materials, only available in tripod.\r\n\r\nType: Tipod', 'p_img12904378820211018_123146.jpg', 'bmx', 10, '2021-10-18 05:31:46'),
(57, 'Animal JUMP OFF FRONT LOAD STEM GOLD', 2400, 20, 'Colour: gold\r\nType: Top Load\r\nReach: 48mm\r\nRise: 22mm\r\nWeight: 311g\r\n\r\n             ', 'p_img116137814320211018_123338.jpg', 'bmx', 10, '2021-10-18 05:33:38'),
(58, 'Animal JUMP OFF FRONT LOAD STEM RAW', 2500, 20, 'Type: Top Load\r\nReach: 48mm\r\nRise: 22mm\r\nWeight: 311g', 'p_img138766018120211018_123419.jpg', 'bmx', 10, '2021-10-18 05:34:19'),
(59, 'Animal POP OFF TOP LOAD STEM BLACK', 2400, 20, 'Type: Top Load\r\nReach: 43mm\r\nRise: 30.6mm\r\nWeight: 311g', 'p_img168601062520211018_123443.jpg', 'bmx', 10, '2021-10-18 05:34:43'),
(60, 'BSD MORROW V3 TOPLOAD STEM BLACK', 2400, 20, 'Type: Top Load\r\nReach: 43mm\r\nRise: 30.6mm\r\nWeight: 311g\r\n\r\n', 'p_img69849959220211018_123500.jpg', 'bmx', 10, '2021-10-18 05:35:00'),
(61, 'Cult REDEMPTION TOPLOAD STEM BLACK 48MM', 2300, 20, 'Type: Top Load\r\nReach: 43mm\r\nRise: 30.6mm\r\nWeight: 311g\r\n\r\n', 'p_img81497509020211018_123520.jpg', 'bmx', 10, '2021-10-18 05:35:20'),
(62, 'Fiend MORROW V3 TOPLOAD STEM BLACK', 2500, 20, 'Type: Top Load\r\nReach: 43mm\r\nRise: 30.6mm\r\nWeight: 311g', 'p_img104564435120211018_123553.jpg', 'bmx', 10, '2021-10-18 05:35:53'),
(63, 'ANIMAL RS RIM BLACK', 2200, 22, 'Material: 6061-T6 Aluminum\r\nWheel Size: 20\"\r\nColour: Black\r\nWidth: 34mm\r\nHeight: 17mm\r\nSpoke Holes: 36h\r\nWeight: 535g / 18.9oz', 'p_img105178422420211018_123736.jpg', 'bmx', 10, '2021-10-18 05:37:36'),
(64, 'BSD NASA RIM BLACK', 2500, 22, 'Material: 6061-T6 Aluminum\r\nWheel Size: 20\"\r\nColour: Black\r\nWidth: 34mm\r\nHeight: 17mm\r\nSpoke Holes: 36h\r\nWeight: 535g / 18.9oz', 'p_img26805550520211018_123756.jpg', 'bmx', 10, '2021-10-18 05:37:56'),
(65, 'Demolition ZERO RIM BLACK', 2700, 22, '20″, 36-Holes\r\nDouble-walled\r\nWelded seam to stay secure and durable\r\nRim Depth: 12mm\r\nERD: 389\r\nWeight: 17.5 oz', 'p_img162498208620211018_123815.jpg', 'bmx', 10, '2021-10-18 05:38:15'),
(66, 'Odyssey PHANTOM (BRANDON BEGIN SIGNATURE) TIRE BLACK 20X2.5', 1200, 21, 'Wheel-Size: 20\"\r\nTire-Width: 2.50\"\r\nTire-Style: Steel Bead\r\nMax. Pressure: 110psi (7.6 Bar)\r\nrecommended for: Street or Park\r\nExtras: Brandon Begin Signature, patented Slidewall to help reduce friction on grinds, section blends into micro-knobs that create a ton of grip', 'p_img56041705220211018_123944.jpg', 'bmx', 10, '2021-10-18 05:39:44'),
(67, 'DemolitionMOMENTUM TIRE BLACK 20X2.35', 1100, 21, 'The Momentum tire is one of the lightest available bead tires available on the market. The Momentum tire features a low profile rectangle tread pattern for grip on any terrain and has a high pressure of 110psi.\r\n\r\nSize: 20X2.35\"\r\nColour: Black\r\nPressure: 110psi\r\nWeight: 538g', 'p_img225313520211018_124047.jpg', 'bmx', 10, '2021-10-18 05:40:47'),
(68, 'Flybikes FUEGO (DEVON SMILLIE SIGNATURE) TIRE RED 20X2.3', 1100, 21, '      Size: 20X2.3\"\r\nColour: RED\r\nPressure: 120 psi\r\nWeight: 800g       ', '152398992920211018_124359.jpg', 'bmx', 10, '2021-10-18 05:42:26'),
(69, 'Cult CULT X VANS TIRE BLUE CAMOUFLAGE 20X2.4', 1290, 21, '20\" version of the Cult X Vans collaboration tyre. After the great success of the Cult X Vans waffle grips Cult have teamed up once again with Vans to bring their legendary waffle design to a tyre.', 'p_img179009113720211018_124442.jpg', 'bmx', 10, '2021-10-18 05:44:42'),
(70, 'Cult CULT X VANS TIRE GREY CAMOUFLAGE 20X2.4', 1290, 21, '20\" version of the Cult X Vans collaboration tyre. After the great success of the Cult X Vans waffle grips Cult have teamed up once again with Vans to bring their legendary waffle design to a tyre.\r\n\r\nSize: 20X2.4\"\r\nColour: Grey Camouflage\r\nPressure: 65psi\r\nWeight: 731g\r\n\r\n', 'p_img169422114020211018_124533.jpg', 'bmx', 10, '2021-10-18 05:45:33'),
(71, 'Sunday STREET SWEEPER V2  TIRE BLACK 20X2.4', 1190, 21, 'Size: 20X2.4\"\r\nColour: Black\r\nPressure: 100 psi', 'p_img125883120820211018_124640.jpg', 'bmx', 10, '2021-10-18 05:46:40'),
(72, 'Cinema WILLIAMS (NATHAN WILLIAMS SIGNATURE) TIRE CREAM WBLACK WALL 20X2.5', 900, 21, 'The Williams tire combines the best of both worlds, with a smooth continuous centerline tread that rolls super-fast and super grippy micro-knurling across the side treads. The 2.5” width adds stability and softens hard landings, while still fitting in most modern frames. Nathan Williams tested and approved.\r\n\r\nSize: 20X2.5\"\r\nColour: Cream w/Black Wall\r\nPressure: 65 psi\r\nWeight: 674g                                       ', 'p_img188502158720211018_124828.jpg', 'bmx', 10, '2021-10-18 05:48:28'),
(84, 'Pro-Tec CLASSIC (CERTIFIED) HELMET CULT WHITE', 1950, 25, 'We’re all about designing the most progressive gear on the market, and the Classic Certified Skate / Bike Helmet sets the benchmark in action sports protection. With multi-sport certification and Pro-Tec’s unmistakable design, the Classic Cert offers performance-focused protection with an iconic style. Our durable but lightweight ABS shell and EPS liner combo provide top-of-the-line impact protection, while the nylon straps and buckle hold everything in place. The heat-sealed comfort liners ensure a snug but comfy fit. Plus, they are easy to remove and wash to keep things fresh. Since all of our products are designed, tested, and inspired by our team of elite skateboarders, you know the Classic Cert can help you take it to the next level.', 'p_img171480025520211018_233850.png', 'Acc', 10, '2021-10-18 16:38:50'),
(85, 'Pro-Tec CLASSIC (CERTIFIED) HELMET GLOSS WHITE', 1950, 25, 'From bowls to half pipes, from skate parks to backyards, Pro-Tec has spent the last 4 decades listening to the needs of skaters all over the world, in order to create the best protection available, period.\r\n\r\nThe Pro-Tec Classic Skate draws its line of design right back to our original helmet model. Our 2-stage soft foam liner and the newly added EVA crown pad keep things comfortable and lightweight, making this the style of choice season after season.', 'p_img115922775420211018_234126.png', 'Acc', 9, '2021-10-18 16:41:26'),
(86, 'Pro-Tec CLASSIC (CERTIFIED) HELMET MATTE BLACK', 2200, 25, 'From bowls to half pipes, from skate parks to backyards, Pro-Tec has spent the last 4 decades listening to the needs of skaters all over the world, in order to create the best protection available, period.\r\n\r\nThe Pro-Tec Classic Skate draws its line of design right back to our original helmet model. Our 2-stage soft foam liner and the newly added EVA crown pad keep things comfortable and lightweight, making this the style of choice season after season', 'p_img179574864520211018_234159.png', 'Acc', 10, '2021-10-18 16:41:59'),
(87, 'Pro-Tec FULL CUT (CERTIFIED) HELMET MATTE BLACK', 2500, 25, 'From bowls to half pipes, from skate parks to backyards, Pro-Tec has spent the last 4 decades listening to the needs of skaters all over the world, in order to create the best protection available, period.\r\n\r\nThe Pro-Tec Classic Skate draws its line of design right back to our original helmet model. Our 2-stage soft foam liner and the newly added EVA crown pad keep things comfortable and lightweight, making this the style of choice season after season.', 'p_img42615253720211018_234246.png', 'Acc', 10, '2021-10-18 16:42:46'),
(88, 'Pro-Tec FULL CUT (CERTIFIED) HELMET MATTE WHITE', 2500, 25, 'From bowls to half pipes, from skate parks to backyards, Pro-Tec has spent the last 4 decades listening to the needs of skaters all over the world, in order to create the best protection available, period.\r\n\r\nThe Pro-Tec Classic Skate draws its line of design right back to our original helmet model. Our 2-stage soft foam liner and the newly added EVA crown pad keep things comfortable and lightweight, making this the style of choice season after season.', 'p_img7044394120211018_234310.png', 'Acc', 10, '2021-10-18 16:43:10'),
(89, 'Pro-Tec FULL CUT (CERTIFIED) HELMET S&M WHITE', 2600, 25, 'From bowls to half pipes, from skate parks to backyards, Pro-Tec has spent the last 4 decades listening to the needs of skaters all over the world, in order to create the best protection available, period.\r\n\r\nThe Pro-Tec Classic Skate draws its line of design right back to our original helmet model. Our 2-stage soft foam liner and the newly added EVA crown pad keep things comfortable and lightweight, making this the style of choice season after season.', 'p_img167278427920211018_234342.png', 'Acc', 10, '2021-10-18 16:43:42'),
(90, 'Pro-Tec PRO PAD KNEE PADS BLACK', 990, 25, 'Pro-Tec Street Knee Pads Black CheckersPro-Tec Street Knee Pads Black CheckersPro-Tec Street Knee Pads Black CheckersPro-Tec Street Knee Pads Black Checkers', 'p_img172788452920211018_234447.png', 'Acc', 10, '2021-10-18 16:44:47'),
(92, 'SHADOW INVISA_LITE SHIN_ANKLE COMBO PADS PAIR', 2200, 25, 'The set comes in a reusable mesh bag to help keep them all together when not in use. Also creating less of that wasteful packaging, being better for the environment.', 'p_img60650075120211018_234725.jpg', 'Acc', 10, '2021-10-18 16:47:25'),
(93, 'Pro-Tec STREET ELBOW PADS RETRO', 1200, 25, 'The set comes in a reusable mesh bag to help keep them all together when not in use. Also creating less of that wasteful packaging, being better for the environment', 'p_img131152331120211018_234807.jpg', 'Acc', 10, '2021-10-18 16:48:07'),
(94, 'Fist BLACK STOCKER', 950, 25, 'Fist BLACK STOCKERFist BLACK STOCKERFist BLACK STOCKERFist BLACK STOCKERFist BLACK STOCKERFist BLACK STOCKER', 'p_img176089902420211018_234831.jpg', 'Acc', 10, '2021-10-18 16:48:31'),
(95, 'Fist FROSTY FINGERS - REFLECTOR', 950, 25, 'Fist FROSTY FINGERS - REFLECTORFist FROSTY FINGERS - REFLECTORFist FROSTY FINGERS - REFLECTORFist FROSTY FINGERS - REFLECTORFist FROSTY FINGERS - REFLECTORFist FROSTY FINGERS - REFLECTOR', 'p_img70983624320211018_234852.jpg', 'Acc', 10, '2021-10-18 16:48:52'),
(96, 'Fist PUPPIES', 950, 25, 'Fist PUPPIESFist PUPPIESFist PUPPIESFist PUPPIESFist PUPPIES', 'p_img19494615420211018_234907.jpg', 'Acc', 10, '2021-10-18 16:49:07'),
(97, 'Fist THE PALMS', 950, 25, 'Fist THE PALMSFist THE PALMSFist THE PALMSFist THE PALMSFist THE PALMS                          ', 'p_img178729395920211018_234925.jpg', 'Acc', 10, '2021-10-18 16:49:25'),
(101, 'KMC X11EL 11-speed Chain', 400, 2, 'The super light X11EL 11-speed chain from KMC without directional dependency and a nickel plated surface for 11-speed derailleur systems.\r\n\r\n                                       ', 'p_img50871602320211019_230249.jpg', 'mtb', 10, '2021-10-19 16:02:49'),
(102, 'Shimano CN-HG701 11-speed Chain with Quick-Link', 599, 2, 'The HG701-11 chain from Shimano is directional and features SIL-TEC treatment on the roller link plate and pin link plate for increased durability. It is compatible with 11-speed road, MTB, and E-BIKES thanks to its reinforced design.\r\n\r\n             ', 'p_img136685602620211019_230932.jpg', 'mtb', 10, '2021-10-19 16:09:32'),
(103, 'Shimano XT CN-M8100 12-speed Chain with Quick-Link', 199, 2, 'The special design of the new Shimano XT CN-M8100 12-speed chain ensures improved shifting performance and smoother running - even in rough terrain. The SM-CN910-12 Quick-Link closure, which is also new, makes installation easy.\r\n                          ', '104484500720211029_144707.JPG', 'mtb', 10, '2021-10-19 16:10:10'),
(104, 'SRAM NX 11-speed Chain PowerChain PC 1110', 559, 2, 'Designed from a long line of dependable, lightweight chains that are \r\nbuilt for toughness, the recommended chain for NX, PC-1110. Designed with SRAM’s trusted XX1 geometry, the PC-1110 features solid pin construction, 11-speed PowerLock® and smooth, efficient shifting that you can count on every time out.\r\n             ', 'p_img77806682520211019_231125.jpg', 'mtb', 10, '2021-10-19 16:11:25'),
(105, 'YBN 10-speed E-Bike Chain S10e S2 136 Links', 699, 2, 'Robust design makes this 10-speed chain extremely powerful and it easily stands up to the high-torque loads of e-bike drives.\r\n\r\n             ', 'p_img151574802720211019_231157.jpg', 'mtb', 10, '2021-10-19 16:11:57'),
(106, 'Race Face Next SL Cinch Crank', 1450, 23, 'Race Face Next SL Cinch Crank\r\nThe lightest becomes lighter with significant improvements in durability and carbon consistency. Built on the proven Next R crank arm shape and spindle insert, the new Next SL jumps back into the ring and becomes Race Face featherweight champion.\r\nManufactured in Canada with American carbon, the Next SL is also stiffer, improves power transmission and gives you the competitive edge on your pedal-based bike. Add the CINCH Power Meter to refine your workout and you have the ultimate crankset.\r\n                          ', '21115389220211019_231528.jpg', 'mtb', 10, '2021-10-19 16:15:14'),
(107, 'Shimano ACERA FC-M361 7/8-speed Crank 42/32/22', 999, 23, 'Shimano ACERA FC-M361 7/8-speed Crank 42/32/22\r\nThe Shimano ACERA FC-M361 3 x 7/8-speed square crank with chain guard offers maximum drive efficiency and ensures optimum rhythm.\r\n', 'p_img12772048120211019_231608.jpg', 'mtb', 10, '2021-10-19 16:16:08'),
(108, 'SRAM XX1 Eagle DUB SL 12-speed Crank 32T', 2600, 23, 'SRAM XX1 Eagle DUB SL 12-speed Crank 32T\r\nThe all-new XX1 Eagle™ CARBON TUNED™ crankset is Sram lightest, stiffest and strongest to date. DUB™ technology enhances this by simplifying the relationship of the spindle to the bottom bracket, and redefining the measure of durability. DUB-powered cranksets deliver simplicity, compatibility and durability.\r\nTrue competitors are always looking for a performance advantage — a relentless pursuit of equipment that is lighter, stiffer, stronger and more durable. To create the best drivetrain possible, we re-examined and re-engineered our crankset design.\r\n', 'p_img86249296020211019_231640.jpg', 'mtb', 10, '2021-10-19 16:16:40'),
(109, 'Truvativ Descendant 6K DUB Eagle 12-speed Crank DM 32T', 1900, 23, 'Truvativ Descendant 6K DUB Eagle 12-speed Crank DM 32T\r\nTrue competitors are always looking for a performance advantage—a relentless pursuit of equipment that is lighter, stiffer and stronger. SRAM DUB™ technology features a better-engineered bottom bracket and a new spindle design.\r\n', 'p_img83875085620211019_231712.jpg', 'mtb', 10, '2021-10-19 16:17:12'),
(110, 'Truvativ Descendant Carbon DUB 12-speed Crankset DM Boost 32T', 1200, 23, 'True competitors are always looking for a performance advantage—a relentless pursuit of equipment that is lighter, stiffer and stronger. Boost-Version with 3 mm outboard chain line.', 'p_img67064715120211019_231809.jpg', 'mtb', 10, '2021-10-19 16:18:09'),
(111, 'Fox Racing 38 K FLOAT  Factory Grip2 Tapered Boost', 5555, 4, 'The Fox 38 K Float 27.5\" Factory Boost with Kashima Coat, improved GRIP2 cartridgeis a lightweight fork with 160 to 180mm travel - designed for Enduro riders.\r\n             ', 'p_img150200987620211019_232041.jpg', 'mtb', 10, '2021-10-19 16:20:41'),
(112, 'Manitou Mezzer Pro  160-180 Tapered Boost', 9000, 4, 'Bigger is Better Featuring 37 mm stanchions and our Reverse Arch design the Mezzer Pro from Manitou is the stiffest Enduro fork on the market… it’s also the lightest. How did we manage to accomplish this you ask?', 'p_img189898046520211019_232106.jpg', 'mtb', 10, '2021-10-19 16:21:06'),
(113, 'RockShox ZEB Ultimate  Debon Air Tapered Boost', 4000, 4, 'ZEB Ultimate is a whole ne0breed of fork, designed to challenge the limits and take on the world’s toughest Enduro tracks. Going Ultimate has its advantages. Featuring an all-new stiff 38mm chassis designed with the Charger 2.1 damper, DebonAir™ air spring technology, SKF Wiper Seals, and Maxima Plush Fluid. RockShox highest performing, athlete-proven technologies matched with premium style plays. An anodized crown and ZEB’s signature color – Slab Grey – make a rocking debut.\r\nราคา6000บาท                          ', 'p_img201531252020211019_232237.jpg', 'mtb', 10, '2021-10-19 16:22:37'),
(114, 'RST Omega TNL  Coil 100 Suspension Fork', 3500, 4, 'The RST Omega TNL with a travel of 100 mm is an ideal suspension fork for cross country beginners, through the adjustable spring preload an individual setup is possible. During long ascents, the fork can be gradually blocked by hydraulic lockout function (TNL) to prevent unnecessary loss of power. The fork is equipped with a post-mount disc mount and thanks to the screwed cable routing, the brake cable can be routed effortlessly.\r\n             ', 'p_img70338567720211019_232318.jpg', 'mtb', 10, '2021-10-19 16:23:18'),
(115, 'DT Swiss F 232 One  Tapered Boost Remote', 6500, 4, 'Pedal to the metal? No matter whether uphill, downhill or flat over rooty trails? If your answer is yes, then the DT Swiss F 232 ONE with Two-in-One Remote lever is the right fork for you. The topology-optimized lower results in a benchmark stiffness-to-weight ratio and is therefore ready for all those steep and gnarly descents.             ', 'p_img88617888320211019_232730.jpg', 'mtb', 10, '2021-10-19 16:27:30'),
(116, 'Faserwerk Baslerstab Carbon Stem-Handlebar-Unit 800mm', 3000, 17, 'Faserwerk Baslerstab Carbon Stem-Handlebar-Unit 800mm\r\nWith stems on mountainbikes only getting shorter, attaching the handlebar directly to the fork seemed like a logical step.Combining the stem and handlebar into one piece is nothing new, but that is not what Faserwerk wanted to do with the Baslerstab. Instead, they wanted to bypass the stem altogether. Faserwerk had to reshape the handlebar so it passes by close to the steerer tube, while keeping the grips in the same relative position as with a traditional handlebar and stem. Acircular cutout attaches directly to the fork, with a clamp bolted on from the back holding it there.\r\n', 'p_img63183003620211019_233228.jpg', 'mtb', 10, '2021-10-19 16:32:28'),
(117, 'Newmen Advanced SL 318.10 Carbon Handlebar 760mm', 2900, 17, 'The newly developed Newmen Advanced SL 318.10 Riser handlebars have a stronger upsweep than usual and therefore achieve a better wrist position for less fatigue without excessive backsweep. Unlike bars with a stronger backsweep (12° or more), the new handlebar geometry allows aggressive downhill positions without wrist misalignment.\r\nThe increased comfort in more neutral positions is nevertheless maintained.                          ', 'p_img96276125620211019_233252.jpg', 'mtb', 10, '2021-10-19 16:32:52'),
(118, 'Race Face Next R Handlebar 35 x 800 mm', 2500, 17, 'The Next R handlebar features 800mm of premium unidirectional carbon.\r\n                          ', 'p_img167725087920211019_233318.jpg', 'mtb', 10, '2021-10-19 16:33:18'),
(119, 'Renthal Fatbar V2 Riser Handlebar 800mm', 4999, 17, 'The 800mm Renthal Fatbar features proven 7° back sweep / 5° up sweep combination and is available in 10, 20, 30 and 40mm rise options, to suit any bike and any rider preference.\r\n', 'p_img79362119020211019_233347.jpg', 'mtb', 10, '2021-10-19 16:33:47'),
(120, 'Ritchey Trail Rizer Handlebar 780x20mm', 1699, 17, 'The trail-worthy 780mm Ritchey Trail Rizer is made of triple butted 7050 aluminum for unbelievable durability, flexibility and precision.\r\n', 'p_img57425925820211019_233900.jpg', 'mtb', 10, '2021-10-19 16:39:00'),
(121, 'rmin Rall  XC200 - Pedal Powermeter-System', 1990, 18, '\r\nGarmin Rally wattmeter pedal systems mount like a traditional bike pedal, making it quick and easy to switch between bikes and help you train and develop more efficiently thanks to advanced Cycling Dynamics. All Rally with bilateral watt measurement (RK200, RS200 and XC200) measure the pedaled power, the cadence, the right / left ratio and give you feedback in which area of the 360° pedal cycle you develop the most power.\r\nThanks to the interchangeable pedal axle, the pedal body can be replaced. This allows you to use the pedals in all facets of cycling, whether on the road, track, mountain bike, graveling or cyclocross. So you can experience the benefits of power measurement all year round and make your training even more efficient.\r\n', 'p_img104943435020211019_234153.jpg', 'mtb', 10, '2021-10-19 16:41:53'),
(122, 'Katana Blade Flat Pedals', 999, 18, 'The flat Katana Blade pedals are made of a sturdy body and are each equipped with 10 Evo pins for the necessary grip on all trails. The aluminium pedal body and the CNC-milled axles in combination with high-quality bearings ensure a long service life in every terrain, even under the toughest conditions. Blade is flat, robust and fast!\r\n', 'p_img38101148420211019_234219.jpg', 'mtb', 10, '2021-10-19 16:42:20'),
(123, 'Shimano XT PD-M8140 Flat Pedals', 845, 18, 'Shimano XT PD-M8140 Flat Pedals\r\nThe Trail and Enduro platform pedals XT PD-M8120 from Shimano are available in small to medium (recommended shoe sizes 36-43) or medium to large (recommended shoe sizes 43-48). This guarantees optimum support and performance tailored to the driver.\r\n', 'p_img126684818820211019_234331.jpg', 'mtb', 10, '2021-10-19 16:43:31'),
(124, 'TRIPLE EIGHT RACE Flat 2.0 Flat Pedals', 505, 18, 'The TRIPLE EIGHT RACE Flat 2.0 is a lightweight flat pedal with low profile, industrial bearings and LSL-Bushing. The pins are replaceable and give the best grip.\r\n', 'p_img160727314720211019_234358.jpg', 'mtb', 10, '2021-10-19 16:43:58'),
(125, 'X-Track Race Carbon', 799, 18, 'X-Track Race Carbon\r\nWeighing just 340 grams, these pedals with an carbon body offer the best performance in any terrain.\r\n', 'p_img175071037120211019_234426.jpg', 'mtb', 10, '2021-10-19 16:44:26'),
(126, 'Ergon SM Pro Men Saddle', 1899, 19, 'Today you no longer need to live with discomfort when seated. The new Ergon SM Men saddles are speciﬁcally tailored to the features of the male anatomy and optimized for the requirements of mountain biking.\r\n', 'p_img203477099720211019_234633.jpg', 'mtb', 10, '2021-10-19 16:46:33'),
(127, 'Natural Fit Venec LITE SPECIAL EDITION Saddle', 1599, 19, 'Comfortable all-round talent! The flexible shell combined with a Natural Fit Designline anatomical channel and high-quality PU covering distribute pressure intelligently to deliver outstanding comfort at unbeatable value for money!\r\n', 'p_img81635444620211019_234655.jpg', 'mtb', 10, '2021-10-19 16:46:55'),
(128, 'Selle Italia SLR Kit Carbonio Flow', 1499, 19, 'Wider seat, comfortable yet minimal padding, ultra thin profile, lightweight, excellent performance. The Selle Italia SLR Kit Carbonio Flow is a unique combination of comfort and aesthetics that distinguishes this timeless legend from so many other saddles.\r\n', 'p_img168370519720211019_234725.jpg', 'mtb', 10, '2021-10-19 16:47:25'),
(129, 'SQlab. 60X Ergowave active Saddle', 1099, 0, 'SQlabs new e-bike saddle 6OX combines the advantages of the successful saddle models ERGOWAVE® and ERGOLUX®. As part of the product development, the shape of the saddle was adapted and perfected for the special use on E-MTBs as well as gravity bikes.\r\n', 'p_img42781527020211019_234751.jpg', 'mtb', 10, '2021-10-19 16:47:51'),
(130, 'WTB Volt Cromoly Saddle', 999, 19, 'The Volt, here as a version with cromoly rails, is WTB‘s most popular mountain saddle. Shaped for speed and comfort, time tested and proven, the Volt makes for an incredibly versatile saddle that has gained endless acclaim among riders.\r\n', 'p_img43279784620211019_234815.jpg', 'mtb', 10, '2021-10-19 16:48:15'),
(131, 'Continental Der Baron 2.4 Projekt ProTection Apex 29x2.4\" Folding', 9999, 21, 'Continental relies with Baron 2.4 Projekt only on the most reliable materials and technologies. Excellent puncture protection and highest stability thanks to ProTection TubelessReady layer and apex reinforcement. The versatile tread pattern design offers good rolling characteristics with sporty weight.\r\n', 'p_img114049495120211019_234942.jpg', 'mtb', 10, '2021-10-19 16:49:43'),
(132, 'Maxxis Ikon Skinwall 29x2.20\" TR EXO 3C MaxxSpeed 60 Folding', 6599, 21, 'A genuine racing tire for true racers. Large-volume, fast, with lots of grip - IKON brings exemplary performance in a wide variety of soil conditions on hard to loose soils. For very rough, rocky terrain, there is the Maxxis IKON in the EXO-Protection version that protects the safe side walls with little extra weight.\r\n', 'p_img62219458720211019_235013.jpg', 'mtb', 10, '2021-10-19 16:50:13'),
(133, 'Maxxis Minion DHR II 29x2.40 WT DD TR 3C MaxxTerra 2x120 Folding Tyre', 1200, 21, 'With its all-new tread pattern, Maxxis Minion DHR II is the ideal tyre for aggressive gravity riding. With the side studs of the legendary DHF, which have been widened a bit for even better cornering grip, it has extreme cornering grip.\r\n                          ', '153720678620211029_144329.jpg', 'mtb', 10, '2021-10-19 16:51:14');
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_price`, `type_id`, `p_detail`, `p_img`, `cat`, `amount`, `datesave`) VALUES
(135, 'Schwalbe Eddy Current Rear Evo Super Gravity 29\" Addix Soft TLE E-50 Folding Tyre', 4999, 21, 'The Schwalbe Eddy Current Front Evo Super Trail is a real E-MTB specialist for All Mountain and Enduro. It allows uncompromising riding even uphill, takes fierce acceleration as well as allowing technical riding on trails. With SnakeSkin and Addix compounds for rich handling and maximum puncture protection on demanding trails uphill and downhill.\r\n', 'p_img147638388020211019_235144.jpg', 'mtb', 10, '2021-10-19 16:51:44'),
(136, 'Schwalbe Magic Mary Evo Super Gravity 29\" Addix E-50 Folding Tyre', 6899, 21, 'The Schwalbe Magic Mary Evo Super Gravity offers everything that increases the fun of the Enduro. With super-gravity carcass and of course Addix compounds for rich handling and maximum puncture protection on demanding trails. Strong shoulder studs and aggressive, open tread design provide maximum braking traction and cornering grip even in extremely muddy terrain.\r\n', 'p_img192879228120211019_235208.jpg', 'mtb', 10, '2021-10-19 16:52:08'),
(137, 'DT Swiss M 1900 Spline  Rearwheel', 2350, 22, 'The lightweight M 1900 SPLINE can withstand the toughest alpine trails. Its tubeless-ready rim has been tested by both professional mountainbikers on the trail and their experts in the lab.DT SWISS has packed more than 20 years of expertise into the lightweight straight pull hub to ensure that you’ll be tearing up the trails for years to come with your M 1900 SPLINE.\r\n', 'p_img140817679020211019_235320.jpg', 'mtb', 10, '2021-10-19 16:53:20'),
(138, 'DT Swiss XMC 1501 Spline® One 30 Carbon CL Boost 29\" Wheelset', 4550, 22, 'Wider and tougher than ever before: DT Swiss presents the XMC 1501 Spline® One Carbon, a mature and well designed all mountain wheel that is light, durable and fast at the same time. With a 30mm rim width, the XMC is wider than its predecessor (but puts less weight on the scales) and therefore offers more tyre support. This allows the tyre pressure to be reduced, which means greater rolling resistance on rough terrain. The XMC 1501 Spline® One is made for all the mountains you dream of!\r\n', 'p_img152831323120211019_235440.jpg', 'mtb', 10, '2021-10-19 16:54:40'),
(139, 'Mavic Crossmax 29\" Disc Shimano Wheelset', 2999, 22, 'The name Crossmax has a long history in the world of XC riding and racing. Strong, reliable and tubeless ready, this modern XC wheel lives up to the legendary Crossmax name.\r\n', 'p_img71330356520211019_235511.jpg', 'mtb', 10, '2021-10-19 16:55:11'),
(140, 'Newmen Evolution SL A.30 \" Boost Rear Wheel', 3999, 22, 'The 30 mm inner width of the Evolution SL A.30 wheel allows to ride with low air pressure and unleash maximum performance from 2.3\"-2.5\" tyreson the descents. Due to its high dent resistance this wheelset is suitable for everyone from trailbike riders in search of maximum fun on the trails and even up to weight-conscious enduro riders.\r\nThe new Newmen Fade hub technology makes this high-end aluminium wheel extremely quiet and gives you a completely new riding experience. The Evolution SL A.30 is not going to be the limiting factor the next time you just want to go for a quick spin on your trailbike and suddenly find yourself riding the rockiest trail in your area.\r\n', 'p_img21732877720211019_235538.jpg', 'mtb', 10, '2021-10-19 16:55:38'),
(141, 'Radon New Jealous AL Frame', 16000, 24, 'Since its launch, our JEALOUS AL has set new standards for aluminium hardtails. The frame is light, the geometry uncompromising. Like its carbon counterpart, AL boasts a multitude of features in the frame, and when a racer gets his hands on it, it’s a veritable weapon. We give you the chance to write the first pages of your XC success story – the unbeatable at an unbeatable price, equipped with the genes of a test winner.\r\n', 'p_img130890288220211019_235738.jpg', 'mtb', 10, '2021-10-19 16:57:38'),
(142, 'Radon New Jealous CF Superlite 1x Frame', 12500, 24, 'Higher, faster, lighter – that’s the XC battle cry. The JEALOUS recipe for success is a low centre of gravity, very smooth running, gently-rolling 29-inch wheels in a super-light and extremely rigid carbon-fibre frame, firm 100 mm forks and an efficient drivetrain which give you the right set-up for races in which you dictate the pace. The cables are integrated into the frame, and the brake mount is inside, giving it a super-clean look.\r\n', 'p_img118062113820211019_235804.jpg', 'mtb', 10, '2021-10-19 16:58:04'),
(143, 'Ritchey Ultra', 12000, 24, 'When he first designed the Ultra he knew it would appeal to riders who demand specific ride characteristics and dirt slaying only he could deliver- and that was in the 1980s!', 'p_img116921481620211019_235829.jpg', 'mtb', 10, '2021-10-19 16:58:29'),
(145, 'Yeti Cycles ARC - T-Series 29\" Carbon MTB Frame - 2021 - Turquoise', 20000, 24, 'The Yeti Cycles ARC brings back old memories and packs them into a new garment. Pure and unfiltered riding fun, for every adventure, every route, every day. This bike has made history, and now you are writing a new chapter. What are you waiting for?\r\nA modern approach to hardtail geometry, without losing traction in the rear: riders have plenty of room to maneuver and respond to trail feedback without being too stretched out.\r\nFar beyond a juiced up thorough-bred XC race bike, the ARC is built for a 130mm fork for a massively capable trail bike.\r\n', 'p_img32829191120211019_235939.jpg', 'mtb', 10, '2021-10-19 16:59:39'),
(146, 'Renthal Apex Stem 31.8mm', 1500, 20, 'The Renthal Apex combines All Mountain strength, Enduro stiffness and XC lightweight. Unique 240° handlebar clamps allow much of the stem body material to be removed, whilst retaining the strength and stiffness demanded by modern, wide handlebars.\r\nThe Apex is fully CNC machined, featuring an oversize centre bore, extensive 3-D machining and external webbing to maximise structural strength and stiffness and minimise weight.', 'p_img73196129620211020_000452.jpg', 'mtb', 10, '2021-10-19 17:04:52'),
(147, 'Newmen Evolution SL 318.4 Stem', 2560, 20, 'The NEWMEN EVOLUTION SL 318.4 benefits from the same clean, contemporary design and identical high-quality materials used in the brand-new benchmark stem, the NEWMEN EVOLUTION SL 318.2.\r\nWith its modern oversize construction and intelligent use of materials, the EVOLUTION SL 318.4 stem is extremely stiff, stable and durable yet still one of the lightest – if not the lightest – 4-bolt oversize clamp stem on the market. It meshes perfectly with the next-generation bike frame designs.', 'p_img54189598020211020_000558.jpg', 'mtb', 10, '2021-10-19 17:05:58'),
(148, 'Race Face Turbine - R Stem 35 0°', 2399, 20, 'We took our super popular Turbine 35mm stem and turned the volume up to R.\r\nIncreased strength to handle the harshest aggressive all mountain riding combined with an update to 0-degree size for optimized fit and performance. This stem sets the new standard in weight vs strength.', 'p_img178797460920211020_000724.jpg', 'mtb', 10, '2021-10-19 17:07:24'),
(149, 'RFR Stem PRO 35° 31.8mm', 1000, 20, 'RFR Stem PRO 35° 31.8mm\r\nThe RFR stem PRO is made of 3D forged aluminum.\r\nThe EN standard certified stem guarantees maximum cockpit safety for the biker. The stem clamp is installed via four screws and connects the stem with the bar.             ', 'p_img45173408320211020_000800.jpg', 'mtb', 10, '2021-10-19 17:08:00'),
(150, 'Ergotec Swell-R 70 adjustable 31.8mm Stem', 1299, 20, 'The Swell-R 70 by Ergotec is a very stable and light angle adjustable aluminum Ahead stem with 4-bolt handlebar clamp and 31.8 mm handlebar clamp diameter.\r\n', 'p_img35706477320211020_000834.jpg', 'mtb', 10, '2021-10-19 17:08:34'),
(151, 'Radon Slide Trail 10.0', 61999, 1, 'The JAM is the 150 mm all-mountain trail fully from Focus. With its playful and intuitive character, you get the most fun out of every ride. Agile and direct handling merges with a lot of safety resources of the chassis providing confidence and joy on any downhill.\r\nYou are perfectly seated in the middle of the mountain bike to control any situation and to easily pedal up all the steep hills on your ride. The new JAM is a consistent further development of its predecessor without losing the true nature of the JAM family. Having the THRON now as little sibling, we had the chance to make the JAM a bit more downhill-oriented. To put it plainly, the head angle became much slacker and is now 65° or 65,5° (with FLIP CHIP geo adjust). But the short fork rake of 44 mm makes it still easy to steer and play.             ', '74586981620211020_002004.jpg', 'mtb', 10, '2021-10-19 17:17:25'),
(152, 'Lapierre Zesty AM 4.9', 55999, 1, 'The Lapierre Zesty AM 4.9 is the optimal bike for both big and small tours. Thanks to high-quality frame, dropper post and RockShox / Lapierre suspension with plenty of travel, the all-mountain bike also impresses on technical terrain, uphill as well as on fast descents. The internally routed cables provide a clean look and thus emphasize the elegant frame design.', 'p_img86600825520211020_002117.jpg', 'mtb', 10, '2021-10-19 17:21:17'),
(153, 'Santa Cruz Hightower ', 49999, 1, 'The premium Trailbike Hightower C R of the Californian high-end bike brand Santa Cruz convinces right from the start with its innovative carbon frame, which can be adapted to personal preferences. Thanks to the outstanding Fox/RockShox chassis including SRAM NX Eagle shifting, the full suspension bike masters technical trails as well as steep climbs - let the fun begin!\r\n', 'p_img91327240320211020_002257.jpg', 'mtb', 10, '2021-10-19 17:22:57'),
(154, 'Focus FOCUS SAM 8.8 ', 39000, 1, 'No obstacle is too big for the Enduro-MTB FOCUS SAM with carbon frame, because it has been developed for alpine use and demanding trails. A modern, aggressive geometry, 170 mm suspension travel with progressive FOCUS F.O.L.D. kinematics and manoeuvrable 27.5\" wheels make your Enduro heart beat faster. In the bike park as well as in enduro races.                                                    ', 'p_img88216225820211020_002556.jpg', 'mtb', 10, '2021-10-19 17:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`type_id`, `type_name`) VALUES
(1, 'CompleteBike'),
(2, 'Chains'),
(4, 'Forks'),
(17, 'Handlebars'),
(18, 'Pedals'),
(19, 'Seats'),
(20, 'Stems'),
(21, 'Tire'),
(22, 'Wheels'),
(23, 'Cranks'),
(24, 'Frame'),
(25, 'Accessory');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `tbl_claim`
--
ALTER TABLE `tbl_claim`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`or_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_claim`
--
ALTER TABLE `tbl_claim`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `n_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `or_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
