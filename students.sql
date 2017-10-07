-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 07, 2017 at 09:10 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `numberOfGroup` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pointsOfVNO` int(4) NOT NULL,
  `yearOfBirth` int(4) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `surname`, `gender`, `numberOfGroup`, `email`, `pointsOfVNO`, `yearOfBirth`, `location`) VALUES
(1, 'cxvcxzv', 'xcvxcv', 'male', 'efd3', 'fghhgh@bbbb.fff', 68, 2000, 'nonresident'),
(2, 'awewe', 'gfdgdg', 'female', '4r', 'dddd@dfdff.sdw', 155, 2011, 'local'),
(3, 'fgfgdgdfg', 'afgfgfg', 'male', 're2', 'dsfdf@adfdf.fdff', 33, 2000, 'nonresident'),
(4, 'gdfgsdfg', 'dfgsdfgsdfg', 'female', '4r', 'ffffff@yfuy.sdf', 3, 1977, 'local'),
(5, 'student', 'dfdfdf', 'male', 'dfew', 'dffd@stee.sdd', 44, 1977, 'local'),
(6, 'sdaddasd', 'xxxxxxxxxx', 'female', '44', 'rrtrtrert@gmail.com', 100, 1988, 'local'),
(7, 'dsdsdsd', 'wwwww', 'female', 'er4', 'erwere@llll.kkk', 103, 2001, 'nonresident'),
(8, 'dsfd', '2ee32', 'male', 'fsdf', 'fdsaf@fdff.eee', 66, 1903, 'local'),
(9, 'vcxvz', 'erwer', 'male', '2343', 'aerer@kttt.com', 78, 1945, 'nonresident'),
(10, 'dfgadfg', 'rfgsdfgfdg', 'male', 'df3', 'fdfhd@dfcf.fff', 44, 1955, 'nonresident'),
(11, 'mmmmmm', 'gggg', 'female', 'w2w', 'wwww@nsns.djd', 145, 1997, 'local'),
(12, 'test', 'wwwwwqwqwq', 'female', 'er4', 'test@gmail.com', 55, 1988, 'nonresident'),
(13, 'ssssssssss', 'vvvvvvvvvvvv', 'male', '34r', 'shdh@lswo.vmf', 34, 2010, 'local'),
(14, 'dfsfsdfds', 'ewqdsff', 'female', 'dfd', 'dfsdf@dsdd.ssg', 22, 1962, 'nonresident'),
(15, 'fffffffffffffff', 'vvvvvvvvvvvvvvvvvvvvvvvv', 'female', 'dewr', 'sdff@uuuu.fff', 67, 1936, 'local'),
(16, 'sdss', 'd', 'male', 'ss', 'sdsd@ttyy.aa', 33, 2000, 'nonresident'),
(17, 'sdffdsf', 'dfasasdasd', 'male', '2e2', 'wede@razf.fff', 33, 1976, 'nonresident'),
(18, 'sdfdfs', 'ssssssssss', 'male', 'sadq', 'sdsd@ttqq.aa', 23, 1977, 'nonresident'),
(19, 'asdas', 'sadasd', 'male', 'ewrr', 'asdd@dfjsf.dsd', 22, 2020, 'nonresident'),
(20, 'qqqqqqqqqqqq', 'wwwwwwwwwww', 'male', '3e3', 'dddd@dzzf.sdw', 150, 1983, 'local'),
(21, 'zzzzzzzzz', 'ssssssssss', 'male', '45', 'wewe@kjkl.gfg', 44, 2020, 'nonresident'),
(22, 'vvvvvv33333', 'mmmmm555555555', 'female', '4t', 'dfsdf@dfdf.dsd', 56, 1908, 'nonresident'),
(23, 'pppppp123323', 'gggg12133', 'female', '34r3', 'fdff@ffff.vff', 65, 1988, 'nonresident'),
(24, 'doekdissa2222', 'Jmsdw333', 'female', '6u11', 'bbbbw@hdnj.djd', 88, 1988, 'nonresident'),
(25, 'BILL', 'Fejsdh', 'female', '77', 'bu8ui@ksdj.vvv', 48, 1958, 'local'),
(26, 'Иван', 'Приваточ', 'male', '45т', 'vany@gmail.com', 122, 1994, 'local'),
(27, 'fatsyd', 'heudj', 'female', 'we22', 'sdsdsd@hhds.ddk', 133, 1934, 'nonresident'),
(28, 'William', 'cdsw', 'male', '33', 'will@gmail.nnn', 34, 1988, 'nonresident'),
(29, 'fhsdjkfhd', 'kfjdlsewre', 'male', '231', 'sdsd@ttdy.aa', 33, 1956, 'local'),
(30, 'rtetert', 'rtete', 'male', '332', 'eafasdf@sdfdf.ddd', 55, 1907, 'local'),
(31, 'sssssssssssss', 'sssssssssssssss', 'male', 'sss', 'ssss@ssss.sss', 44, 1945, 'local'),
(32, 'erqerrrrfdfafaggfdgsdfgh', 'afggggggggggggggggggggg', 'male', '2e', 'erewr@jkhh.wew', 23, 1933, 'local'),
(33, 'errrrrrrrrrrrrrrrrr', 'ssssssssss', 'female', 'er4', 'urheiwu@dfjd.fff', 46, 2004, 'nonresident'),
(34, 'bsnjj555555', 'cvvcxvxcv', 'male', 'e33', 'dcvzxcx@hhhh.fff', 64, 2000, 'local'),
(35, 'test77', 'sdftesr77', 'male', '2477', 'dfii7uiu@dskd.ddd', 77, 2017, 'nonresident'),
(36, 'dd22', 'dd22', 'female', 'dd3', 'dd2dd@sdsd.ddd', 7, 1944, 'local'),
(37, 'Moon', 'Sun', 'male', '45T', 'sum@gmail.com', 122, 1988, 'local'),
(38, 'sergiy', 'forsh', 'male', 'dt51', 'serg@mail.eng', 125, 1986, 'local'),
(39, 'serqd', 'garsh', 'female', 'dt51', 'sg@mail.eng', 171, 1988, 'local'),
(40, 'Student0', 'Surname0', 'male', 'gr0', 'email0@gmail.com', 123, 1980, 'nonresident'),
(41, 'Student1', 'Surname1', 'female', 'gr1', 'email1@gmail.com', 140, 1982, 'local'),
(42, 'Student2', 'Surname2', 'male', 'gr2', 'email2@gmail.com', 128, 1983, 'nonresident'),
(43, 'Student3', 'Surname3', 'female', 'gr3', 'email3@gmail.com', 158, 1994, 'local'),
(44, 'Student4', 'Surname4', 'male', 'gr4', 'email4@gmail.com', 178, 1991, 'nonresident'),
(45, 'Student5', 'Surname5', 'female', 'gr5', 'email5@gmail.com', 168, 1989, 'local'),
(46, 'Student6', 'Surname6', 'male', 'gr6', 'email6@gmail.com', 77, 2001, 'nonresident'),
(47, 'Student7', 'Surname7', 'female', 'gr7', 'email7@gmail.com', 170, 1982, 'local'),
(48, 'Student8', 'Surname8', 'male', 'gr8', 'email8@gmail.com', 93, 1994, 'nonresident'),
(49, 'Student9', 'Surname9', 'female', 'gr9', 'email9@gmail.com', 179, 1997, 'local'),
(50, 'Student10', 'Surname10', 'male', 'gr10', 'email10@gmail.com', 122, 1992, 'nonresident'),
(51, 'Student11', 'Surname11', 'female', 'gr11', 'email11@gmail.com', 124, 1998, 'local'),
(52, 'Student12', 'Surname12', 'male', 'gr12', 'email12@gmail.com', 165, 1991, 'nonresident'),
(53, 'Student13', 'Surname13', 'female', 'gr13', 'email13@gmail.com', 142, 1990, 'local'),
(54, 'Student14', 'Surname14', 'male', 'gr14', 'email14@gmail.com', 162, 1994, 'nonresident'),
(55, 'Student15', 'Surname15', 'female', 'gr15', 'email15@gmail.com', 144, 1988, 'local'),
(56, 'Student16', 'Surname16', 'male', 'gr16', 'email16@gmail.com', 197, 1982, 'nonresident'),
(57, 'Student17', 'Surname17', 'female', 'gr17', 'email17@gmail.com', 163, 2000, 'local'),
(58, 'Student18', 'Surname18', 'male', 'gr18', 'email18@gmail.com', 117, 1992, 'nonresident'),
(59, 'Student19', 'Surname19', 'female', 'gr19', 'email19@gmail.com', 132, 1995, 'local'),
(60, 'Student20', 'Surname20', 'male', 'gr20', 'email20@gmail.com', 124, 1983, 'nonresident'),
(61, 'Student21', 'Surname21', 'female', 'gr21', 'email21@gmail.com', 193, 1983, 'local'),
(62, 'Student22', 'Surname22', 'male', 'gr22', 'email22@gmail.com', 119, 1989, 'nonresident'),
(63, 'Student23', 'Surname23', 'female', 'gr23', 'email23@gmail.com', 158, 1983, 'local'),
(64, 'Student24', 'Surname24', 'male', 'gr24', 'email24@gmail.com', 98, 2000, 'nonresident'),
(65, 'Student25', 'Surname25', 'female', 'gr25', 'email25@gmail.com', 173, 1993, 'local'),
(66, 'Student26', 'Surname26', 'male', 'gr26', 'email26@gmail.com', 138, 1984, 'nonresident'),
(67, 'Student27', 'Surname27', 'female', 'gr27', 'email27@gmail.com', 129, 1985, 'local'),
(68, 'Student28', 'Surname28', 'male', 'gr28', 'email28@gmail.com', 168, 1980, 'nonresident'),
(69, 'Student29', 'Surname29', 'female', 'gr29', 'email29@gmail.com', 167, 1990, 'local'),
(70, 'Student30', 'Surname30', 'male', 'gr30', 'email30@gmail.com', 156, 1987, 'nonresident'),
(71, 'Student31', 'Surname31', 'female', 'gr31', 'email31@gmail.com', 180, 1994, 'local'),
(72, 'Student32', 'Surname32', 'male', 'gr32', 'email32@gmail.com', 129, 1992, 'nonresident'),
(73, 'Student33', 'Surname33', 'female', 'gr33', 'email33@gmail.com', 146, 1998, 'local'),
(74, 'Student34', 'Surname34', 'male', 'gr34', 'email34@gmail.com', 88, 1981, 'nonresident'),
(75, 'Student35', 'Surname35', 'female', 'gr35', 'email35@gmail.com', 137, 1992, 'local'),
(76, 'Student36', 'Surname36', 'male', 'gr36', 'email36@gmail.com', 99, 1990, 'nonresident'),
(77, 'Student37', 'Surname37', 'female', 'gr37', 'email37@gmail.com', 165, 1993, 'local'),
(78, 'Student38', 'Surname38', 'male', 'gr38', 'email38@gmail.com', 187, 1989, 'nonresident'),
(79, 'Student39', 'Surname39', 'female', 'gr39', 'email39@gmail.com', 171, 1982, 'local'),
(80, 'Student40', 'Surname40', 'male', 'gr40', 'email40@gmail.com', 118, 1992, 'nonresident'),
(81, 'Student41', 'Surname41', 'female', 'gr41', 'email41@gmail.com', 167, 1999, 'local'),
(82, 'Student42', 'Surname42', 'male', 'gr42', 'email42@gmail.com', 174, 1984, 'nonresident'),
(83, 'Student43', 'Surname43', 'female', 'gr43', 'email43@gmail.com', 92, 1992, 'local'),
(84, 'Student44', 'Surname44', 'male', 'gr44', 'email44@gmail.com', 100, 2000, 'nonresident'),
(85, 'Student45', 'Surname45', 'female', 'gr45', 'email45@gmail.com', 76, 1999, 'local'),
(86, 'Student46', 'Surname46', 'male', 'gr46', 'email46@gmail.com', 105, 2000, 'nonresident'),
(87, 'Student47', 'Surname47', 'female', 'gr47', 'email47@gmail.com', 142, 1996, 'local'),
(88, 'Student48', 'Surname48', 'male', 'gr48', 'email48@gmail.com', 133, 1983, 'nonresident'),
(89, 'Student49', 'Surname49', 'female', 'gr49', 'email49@gmail.com', 142, 1994, 'local'),
(90, 'Student50', 'Surname50', 'male', 'gr50', 'email50@gmail.com', 100, 1981, 'nonresident'),
(91, 'Student51', 'Surname51', 'female', 'gr51', 'email51@gmail.com', 97, 1990, 'local'),
(92, 'Student52', 'Surname52', 'male', 'gr52', 'email52@gmail.com', 141, 2000, 'nonresident'),
(93, 'Student53', 'Surname53', 'female', 'gr53', 'email53@gmail.com', 80, 1990, 'local'),
(94, 'Student54', 'Surname54', 'male', 'gr54', 'email54@gmail.com', 119, 1999, 'nonresident'),
(95, 'Student55', 'Surname55', 'female', 'gr55', 'email55@gmail.com', 146, 1996, 'local'),
(96, 'Student56', 'Surname56', 'male', 'gr56', 'email56@gmail.com', 127, 1987, 'nonresident'),
(97, 'Student57', 'Surname57', 'female', 'gr57', 'email57@gmail.com', 156, 1985, 'local'),
(98, 'Student58', 'Surname58', 'male', 'gr58', 'email58@gmail.com', 143, 1998, 'nonresident'),
(99, 'Student59', 'Surname59', 'female', 'gr59', 'email59@gmail.com', 177, 1997, 'local'),
(100, 'Student60', 'Surname60', 'male', 'gr60', 'email60@gmail.com', 170, 1999, 'nonresident'),
(101, 'Student61', 'Surname61', 'female', 'gr61', 'email61@gmail.com', 161, 1981, 'local'),
(102, 'Student62', 'Surname62', 'male', 'gr62', 'email62@gmail.com', 173, 1985, 'nonresident'),
(103, 'Student63', 'Surname63', 'female', 'gr63', 'email63@gmail.com', 172, 1986, 'local'),
(104, 'Student64', 'Surname64', 'male', 'gr64', 'email64@gmail.com', 124, 1987, 'nonresident'),
(105, 'Student65', 'Surname65', 'female', 'gr65', 'email65@gmail.com', 190, 1994, 'local'),
(106, 'Student66', 'Surname66', 'male', 'gr66', 'email66@gmail.com', 125, 1983, 'nonresident'),
(107, 'Student67', 'Surname67', 'female', 'gr67', 'email67@gmail.com', 86, 2001, 'local'),
(108, 'Student68', 'Surname68', 'male', 'gr68', 'email68@gmail.com', 82, 1984, 'nonresident'),
(109, 'Student69', 'Surname69', 'female', 'gr69', 'email69@gmail.com', 128, 1990, 'local'),
(110, 'Student70', 'Surname70', 'male', 'gr70', 'email70@gmail.com', 79, 1981, 'nonresident'),
(111, 'Student71', 'Surname71', 'female', 'gr71', 'email71@gmail.com', 101, 1991, 'local'),
(112, 'Student72', 'Surname72', 'male', 'gr72', 'email72@gmail.com', 121, 2000, 'nonresident'),
(113, 'Student73', 'Surname73', 'female', 'gr73', 'email73@gmail.com', 170, 2001, 'local'),
(114, 'Student74', 'Surname74', 'male', 'gr74', 'email74@gmail.com', 168, 1993, 'nonresident'),
(115, 'Student75', 'Surname75', 'female', 'gr75', 'email75@gmail.com', 170, 1991, 'local'),
(116, 'Student76', 'Surname76', 'male', 'gr76', 'email76@gmail.com', 134, 1990, 'nonresident'),
(117, 'Student77', 'Surname77', 'female', 'gr77', 'email77@gmail.com', 147, 1986, 'local'),
(118, 'Student78', 'Surname78', 'male', 'gr78', 'email78@gmail.com', 167, 1988, 'nonresident'),
(119, 'Student79', 'Surname79', 'female', 'gr79', 'email79@gmail.com', 146, 1983, 'local'),
(120, 'Student80', 'Surname80', 'male', 'gr80', 'email80@gmail.com', 165, 1991, 'nonresident'),
(121, 'Student81', 'Surname81', 'female', 'gr81', 'email81@gmail.com', 178, 1983, 'local'),
(122, 'Student82', 'Surname82', 'male', 'gr82', 'email82@gmail.com', 156, 2001, 'nonresident'),
(123, 'Student83', 'Surname83', 'female', 'gr83', 'email83@gmail.com', 91, 1996, 'local'),
(124, 'Student84', 'Surname84', 'male', 'gr84', 'email84@gmail.com', 92, 1993, 'nonresident'),
(125, 'Student85', 'Surname85', 'female', 'gr85', 'email85@gmail.com', 102, 1985, 'local'),
(126, 'Student86', 'Surname86', 'male', 'gr86', 'email86@gmail.com', 156, 1990, 'nonresident'),
(127, 'Student87', 'Surname87', 'female', 'gr87', 'email87@gmail.com', 169, 1981, 'local'),
(128, 'Student88', 'Surname88', 'male', 'gr88', 'email88@gmail.com', 123, 1992, 'nonresident'),
(129, 'Student89', 'Surname89', 'female', 'gr89', 'email89@gmail.com', 75, 1983, 'local'),
(130, 'Student90', 'Surname90', 'male', 'gr90', 'email90@gmail.com', 91, 1997, 'nonresident'),
(131, 'Student91', 'Surname91', 'female', 'gr91', 'email91@gmail.com', 162, 1994, 'local'),
(132, 'Student92', 'Surname92', 'male', 'gr92', 'email92@gmail.com', 108, 1987, 'nonresident'),
(133, 'Student93', 'Surname93', 'female', 'gr93', 'email93@gmail.com', 195, 1981, 'local'),
(134, 'Student94', 'Surname94', 'male', 'gr94', 'email94@gmail.com', 161, 1992, 'nonresident'),
(135, 'Student95', 'Surname95', 'female', 'gr95', 'email95@gmail.com', 100, 1990, 'local'),
(136, 'Student96', 'Surname96', 'male', 'gr96', 'email96@gmail.com', 82, 1981, 'nonresident'),
(137, 'Student97', 'Surname97', 'female', 'gr97', 'email97@gmail.com', 151, 1996, 'local'),
(138, 'Student98', 'Surname98', 'male', 'gr98', 'email98@gmail.com', 75, 1997, 'nonresident'),
(139, 'Student99', 'Surname99', 'female', 'gr99', 'email99@gmail.com', 139, 1984, 'local'),
(140, 'Student100', 'Surname100', 'male', 'gr100', 'email100@gmail.com', 123, 1997, 'nonresident'),
(141, 'Student101', 'Surname101', 'female', 'gr101', 'email101@gmail.com', 130, 1981, 'local'),
(142, 'Student102', 'Surname102', 'male', 'gr102', 'email102@gmail.com', 107, 1985, 'nonresident'),
(143, 'Student103', 'Surname103', 'female', 'gr103', 'email103@gmail.com', 89, 1995, 'local'),
(144, 'Student104', 'Surname104', 'male', 'gr104', 'email104@gmail.com', 171, 1984, 'nonresident'),
(145, 'Student105', 'Surname105', 'female', 'gr105', 'email105@gmail.com', 183, 2000, 'local'),
(146, 'Student106', 'Surname106', 'male', 'gr106', 'email106@gmail.com', 71, 1993, 'nonresident'),
(147, 'Student107', 'Surname107', 'female', 'gr107', 'email107@gmail.com', 149, 1986, 'local'),
(148, 'Student108', 'Surname108', 'male', 'gr108', 'email108@gmail.com', 188, 1992, 'nonresident'),
(149, 'Student109', 'Surname109', 'female', 'gr109', 'email109@gmail.com', 117, 1993, 'local'),
(150, 'Student110', 'Surname110', 'male', 'gr110', 'email110@gmail.com', 90, 1993, 'nonresident'),
(151, 'Student111', 'Surname111', 'female', 'gr111', 'email111@gmail.com', 81, 1985, 'local'),
(152, 'Student112', 'Surname112', 'male', 'gr112', 'email112@gmail.com', 157, 1995, 'nonresident'),
(153, 'Student113', 'Surname113', 'female', 'gr113', 'email113@gmail.com', 72, 1995, 'local'),
(154, 'Student114', 'Surname114', 'male', 'gr114', 'email114@gmail.com', 136, 1992, 'nonresident'),
(155, 'Student115', 'Surname115', 'female', 'gr115', 'email115@gmail.com', 191, 2000, 'local'),
(156, 'Student116', 'Surname116', 'male', 'gr116', 'email116@gmail.com', 114, 1988, 'nonresident'),
(157, 'Student117', 'Surname117', 'female', 'gr117', 'email117@gmail.com', 72, 1994, 'local'),
(158, 'Student118', 'Surname118', 'male', 'gr118', 'email118@gmail.com', 153, 1983, 'nonresident'),
(159, 'Student119', 'Surname119', 'female', 'gr119', 'email119@gmail.com', 114, 1989, 'local'),
(160, 'Student120', 'Surname120', 'male', 'gr120', 'email120@gmail.com', 117, 1984, 'nonresident'),
(161, 'Student121', 'Surname121', 'female', 'gr121', 'email121@gmail.com', 118, 1988, 'local'),
(162, 'Student122', 'Surname122', 'male', 'gr122', 'email122@gmail.com', 176, 2001, 'nonresident'),
(163, 'Student123', 'Surname123', 'female', 'gr123', 'email123@gmail.com', 159, 1996, 'local'),
(164, 'Student124', 'Surname124', 'male', 'gr124', 'email124@gmail.com', 145, 1981, 'nonresident'),
(165, 'Student125', 'Surname125', 'female', 'gr125', 'email125@gmail.com', 117, 1996, 'local'),
(166, 'Student126', 'Surname126', 'male', 'gr126', 'email126@gmail.com', 156, 1990, 'nonresident'),
(167, 'Student127', 'Surname127', 'female', 'gr127', 'email127@gmail.com', 197, 1987, 'local'),
(168, 'Student128', 'Surname128', 'male', 'gr128', 'email128@gmail.com', 92, 1980, 'nonresident'),
(169, 'Student129', 'Surname129', 'female', 'gr129', 'email129@gmail.com', 79, 1995, 'local'),
(170, 'Student130', 'Surname130', 'male', 'gr130', 'email130@gmail.com', 142, 1980, 'nonresident'),
(171, 'Student131', 'Surname131', 'female', 'gr131', 'email131@gmail.com', 151, 2000, 'local'),
(172, 'Student132', 'Surname132', 'male', 'gr132', 'email132@gmail.com', 125, 1994, 'nonresident'),
(173, 'Student133', 'Surname133', 'female', 'gr133', 'email133@gmail.com', 140, 1981, 'local'),
(174, 'Student134', 'Surname134', 'male', 'gr134', 'email134@gmail.com', 175, 1999, 'nonresident'),
(175, 'Student135', 'Surname135', 'female', 'gr135', 'email135@gmail.com', 134, 1984, 'local'),
(176, 'Student136', 'Surname136', 'male', 'gr136', 'email136@gmail.com', 85, 1999, 'nonresident'),
(177, 'Student137', 'Surname137', 'female', 'gr137', 'email137@gmail.com', 142, 2000, 'local'),
(178, 'Student138', 'Surname138', 'male', 'gr138', 'email138@gmail.com', 182, 1985, 'nonresident'),
(179, 'Student139', 'Surname139', 'female', 'gr139', 'email139@gmail.com', 157, 1990, 'local'),
(180, 'Student140', 'Surname140', 'male', 'gr140', 'email140@gmail.com', 112, 1981, 'nonresident'),
(181, 'Student141', 'Surname141', 'female', 'gr141', 'email141@gmail.com', 96, 2001, 'local'),
(182, 'Student142', 'Surname142', 'male', 'gr142', 'email142@gmail.com', 135, 1984, 'nonresident'),
(183, 'Student143', 'Surname143', 'female', 'gr143', 'email143@gmail.com', 114, 1995, 'local'),
(184, 'Student144', 'Surname144', 'male', 'gr144', 'email144@gmail.com', 96, 1989, 'nonresident'),
(185, 'Student145', 'Surname145', 'female', 'gr145', 'email145@gmail.com', 119, 1996, 'local'),
(186, 'Student146', 'Surname146', 'male', 'gr146', 'email146@gmail.com', 126, 1980, 'nonresident'),
(187, 'Student147', 'Surname147', 'female', 'gr147', 'email147@gmail.com', 157, 1999, 'local'),
(188, 'Student148', 'Surname148', 'male', 'gr148', 'email148@gmail.com', 154, 1985, 'nonresident'),
(189, 'Student149', 'Surname149', 'female', 'gr149', 'email149@gmail.com', 191, 1990, 'local'),
(190, 'Student150', 'Surname150', 'male', 'gr150', 'email150@gmail.com', 85, 1989, 'nonresident'),
(191, 'Student151', 'Surname151', 'female', 'gr151', 'email151@gmail.com', 154, 1985, 'local'),
(192, 'Student152', 'Surname152', 'male', 'gr152', 'email152@gmail.com', 110, 1984, 'nonresident'),
(193, 'Student153', 'Surname153', 'female', 'gr153', 'email153@gmail.com', 93, 1984, 'local'),
(194, 'Student154', 'Surname154', 'male', 'gr154', 'email154@gmail.com', 132, 1998, 'nonresident'),
(195, 'Student155', 'Surname155', 'female', 'gr155', 'email155@gmail.com', 153, 1997, 'local'),
(196, 'Student156', 'Surname156', 'male', 'gr156', 'email156@gmail.com', 187, 1998, 'nonresident'),
(197, 'Student157', 'Surname157', 'female', 'gr157', 'email157@gmail.com', 173, 1989, 'local'),
(198, 'Student158', 'Surname158', 'male', 'gr158', 'email158@gmail.com', 76, 1983, 'nonresident'),
(199, 'Student159', 'Surname159', 'female', 'gr159', 'email159@gmail.com', 84, 1985, 'local'),
(200, 'Student160', 'Surname160', 'male', 'gr160', 'email160@gmail.com', 144, 1990, 'nonresident'),
(201, 'Student161', 'Surname161', 'female', 'gr161', 'email161@gmail.com', 72, 1980, 'local'),
(202, 'Student162', 'Surname162', 'male', 'gr162', 'email162@gmail.com', 135, 1995, 'nonresident'),
(203, 'Student163', 'Surname163', 'female', 'gr163', 'email163@gmail.com', 184, 1983, 'local'),
(204, 'Student164', 'Surname164', 'male', 'gr164', 'email164@gmail.com', 189, 1998, 'nonresident'),
(205, 'Student165', 'Surname165', 'female', 'gr165', 'email165@gmail.com', 151, 1981, 'local'),
(206, 'Student166', 'Surname166', 'male', 'gr166', 'email166@gmail.com', 104, 1986, 'nonresident'),
(207, 'Student167', 'Surname167', 'female', 'gr167', 'email167@gmail.com', 107, 1992, 'local'),
(208, 'Student168', 'Surname168', 'male', 'gr168', 'email168@gmail.com', 136, 1990, 'nonresident'),
(209, 'Student169', 'Surname169', 'female', 'gr169', 'email169@gmail.com', 169, 2001, 'local'),
(210, 'Student170', 'Surname170', 'male', 'gr170', 'email170@gmail.com', 112, 1989, 'nonresident'),
(211, 'Student171', 'Surname171', 'female', 'gr171', 'email171@gmail.com', 174, 1985, 'local'),
(212, 'Student172', 'Surname172', 'male', 'gr172', 'email172@gmail.com', 105, 1993, 'nonresident'),
(213, 'Student173', 'Surname173', 'female', 'gr173', 'email173@gmail.com', 155, 1987, 'local'),
(214, 'Student174', 'Surname174', 'male', 'gr174', 'email174@gmail.com', 169, 1997, 'nonresident'),
(215, 'Student175', 'Surname175', 'female', 'gr175', 'email175@gmail.com', 144, 1987, 'local'),
(216, 'Student176', 'Surname176', 'male', 'gr176', 'email176@gmail.com', 104, 1993, 'nonresident'),
(217, 'Student177', 'Surname177', 'female', 'gr177', 'email177@gmail.com', 117, 1997, 'local'),
(218, 'Student178', 'Surname178', 'male', 'gr178', 'email178@gmail.com', 108, 1985, 'nonresident'),
(219, 'Student179', 'Surname179', 'female', 'gr179', 'email179@gmail.com', 190, 1984, 'local'),
(220, 'Student180', 'Surname180', 'male', 'gr180', 'email180@gmail.com', 80, 1992, 'nonresident'),
(221, 'Student181', 'Surname181', 'female', 'gr181', 'email181@gmail.com', 105, 1987, 'local'),
(222, 'Student182', 'Surname182', 'male', 'gr182', 'email182@gmail.com', 181, 1992, 'nonresident'),
(223, 'Student183', 'Surname183', 'female', 'gr183', 'email183@gmail.com', 189, 1988, 'local'),
(224, 'Student184', 'Surname184', 'male', 'gr184', 'email184@gmail.com', 73, 1995, 'nonresident'),
(225, 'Student185', 'Surname185', 'female', 'gr185', 'email185@gmail.com', 118, 1987, 'local'),
(226, 'Student186', 'Surname186', 'male', 'gr186', 'email186@gmail.com', 85, 1984, 'nonresident'),
(227, 'Student187', 'Surname187', 'female', 'gr187', 'email187@gmail.com', 146, 1988, 'local'),
(228, 'Student188', 'Surname188', 'male', 'gr188', 'email188@gmail.com', 173, 1985, 'nonresident'),
(229, 'Student189', 'Surname189', 'female', 'gr189', 'email189@gmail.com', 162, 1992, 'local'),
(230, 'Student190', 'Surname190', 'male', 'gr190', 'email190@gmail.com', 74, 1986, 'nonresident'),
(231, 'Student191', 'Surname191', 'female', 'gr191', 'email191@gmail.com', 188, 1986, 'local'),
(232, 'Student192', 'Surname192', 'male', 'gr192', 'email192@gmail.com', 185, 1986, 'nonresident'),
(233, 'Student193', 'Surname193', 'female', 'gr193', 'email193@gmail.com', 80, 1984, 'local'),
(234, 'Student194', 'Surname194', 'male', 'gr194', 'email194@gmail.com', 138, 1980, 'nonresident'),
(235, 'Student195', 'Surname195', 'female', 'gr195', 'email195@gmail.com', 124, 1993, 'local'),
(236, 'Student196', 'Surname196', 'male', 'gr196', 'email196@gmail.com', 144, 1995, 'nonresident'),
(237, 'Student197', 'Surname197', 'female', 'gr197', 'email197@gmail.com', 193, 1989, 'local'),
(238, 'Student198', 'Surname198', 'male', 'gr198', 'email198@gmail.com', 102, 1999, 'nonresident'),
(239, 'Student199', 'Surname199', 'female', 'gr199', 'email199@gmail.com', 176, 1986, 'local');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
