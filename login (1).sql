-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2019 at 01:26 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(128) NOT NULL,
  `dosen` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `dosen`) VALUES
(1, 'naruto'),
(2, 'mardi'),
(3, 'ima'),
(4, 'farid'),
(5, 'rosida');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(128) NOT NULL,
  `jurusan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `jurusan`) VALUES
(1, 'mesin'),
(2, 'elektro'),
(3, 'industri'),
(4, 'matematika'),
(5, 'ipa'),
(6, 'ekonomi');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `id_jurusan` varchar(128) NOT NULL,
  `id_dosen` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `alamat`, `email`, `id_jurusan`, `id_dosen`) VALUES
(2, 'Jacobs', '350 Reynolds Radial', 'maximus99@example.org', '5', '2'),
(3, 'Padberg', '16356 Julie Knoll', 'dion36@example.com', '4', '3'),
(4, 'Lindgren', '1952 Allison Hollow Suite 644', 'eernser@example.org', '3', '1'),
(5, 'Kozey', '539 Weissnat Via', 'fhammes@example.com', '3', '4'),
(6, 'Rogahn', '899 Osinski Spur', 'ratke.carley@example.org', '5', '1'),
(7, 'Monahan', '8225 Oceane Mountain', 'dward@example.org', '6', '2'),
(8, 'Quitzon', '189 Allison Well Suite 421', 'fisher.andreane@example.net', '2', '4'),
(9, 'Barrows', '81500 Veum Circle', 'eve60@example.org', '4', '3'),
(10, 'McKenzie', '3262 Stark Court Apt. 831', 'kwintheiser@example.net', '5', '1'),
(11, 'Sauer', '4312 Boehm Stravenue Apt. 758', 'wilma.donnelly@example.org', '6', '2'),
(12, 'Emard', '5038 Moore Oval Apt. 273', 'wpacocha@example.net', '6', '5'),
(13, 'Waters', '0294 Beatty Way Suite 636', 'wmraz@example.org', '2', '1'),
(14, 'Hoppe', '08621 VonRueden Forges', 'xfisher@example.com', '1', '3'),
(15, 'Strosin', '5157 Welch Extension', 'mayra23@example.com', '1', '4'),
(16, 'O\'Kon', '894 Clay Underpass Suite 929', 'bgleichner@example.com', '3', '3'),
(17, 'Rutherford', '99720 Mertz Fort', 'mcclure.letha@example.org', '3', '4'),
(18, 'Skiles', '254 Bergnaum Forks Suite 086', 'claudia23@example.org', '2', '3'),
(19, 'Wolff', '4335 Crona Manors', 'gschroeder@example.org', '2', '2'),
(20, 'Kunde', '4357 Floyd Track', 'xdavis@example.org', '1', '5'),
(21, 'Hilll', '47459 Garrison Port', 'koch.weston@example.net', '4', '3'),
(22, 'Funk', '4980 Franecki Common', 'cristal20@example.org', '3', '4'),
(23, 'Rosenbaum', '1682 Lexie Brook', 'columbus66@example.org', '6', '4'),
(24, 'Mosciski', '3914 Crist Brooks Apt. 491', 'russel.dedric@example.com', '2', '4'),
(25, 'Kulas', '2136 Ernser Camp', 'abagail.crist@example.com', '6', '1'),
(26, 'Hills', '06471 Mueller Views', 'ymraz@example.org', '5', '1'),
(27, 'Anderson', '402 Romaguera Gateway', 'jkautzer@example.com', '2', '1'),
(28, 'Morissette', '4696 Randi Grove Suite 928', 'krystal67@example.org', '1', '1'),
(29, 'Ryan', '4222 Javier Road Apt. 168', 'aurelia52@example.com', '5', '3'),
(30, 'Shanahan', '1464 Ruben Meadow Apt. 885', 'vmertz@example.net', '3', '5'),
(31, 'Streich', '53896 Sylvan Squares Apt. 740', 'hannah.graham@example.com', '5', '5'),
(32, 'Pollich', '920 Lorine Via', 'wallace29@example.net', '5', '5'),
(33, 'Funk', '6486 Robel Plaza', 'xbruen@example.com', '2', '1'),
(34, 'Stroman', '2774 Cruz Track Suite 364', 'nienow.greyson@example.com', '3', '5'),
(35, 'Kessler', '5226 Simonis Manor', 'lamont64@example.com', '5', '5'),
(36, 'Wilderman', '67454 Claudie Tunnel Apt. 063', 'david.rippin@example.com', '5', '3'),
(37, 'Raynor', '69032 Vicenta Trafficway', 'mayert.drew@example.org', '6', '3'),
(38, 'Satterfield', '6032 Zboncak Harbors Suite 153', 'chance36@example.com', '6', '1'),
(39, 'Hartmann', '178 Bednar Radial', 'skye.kulas@example.org', '4', '2'),
(40, 'Orn', '3617 Haag Ramp', 'esteuber@example.net', '3', '1'),
(41, 'Strosin', '028 Rowe Drive Apt. 106', 'ed61@example.org', '3', '3'),
(42, 'Rempel', '981 Kallie Plaza', 'beer.dorothea@example.com', '1', '1'),
(43, 'Halvorson', '64845 Deckow Terrace', 'rharber@example.com', '6', '2'),
(44, 'Schowalter', '898 Granville Prairie Suite 058', 'lcasper@example.com', '2', '4'),
(45, 'Kertzmann', '859 Stehr Field', 'xsatterfield@example.net', '4', '1'),
(46, 'Abbott', '9614 Celestine Crest Suite 507', 'gino.eichmann@example.com', '4', '5'),
(47, 'Schroeder', '67906 Idell Pike', 'patience.greenfelder@example.org', '5', '2'),
(48, 'Fritsch', '1813 Spinka Extensions', 'eula64@example.net', '6', '4'),
(49, 'DuBuque', '648 Alva Run', 'romaguera.zane@example.org', '2', '5'),
(50, 'Rolfson', '715 Hazle Street Suite 302', 'christa75@example.com', '2', '1'),
(51, 'Fadel', '7753 Gina Forge', 'laisha.morar@example.org', '6', '1'),
(52, 'Will', '85826 Johnathan Fields', 'anabelle46@example.org', '4', '4'),
(53, 'Goyette', '092 Elise Lock', 'jude29@example.com', '6', '3'),
(54, 'West', '765 Schamberger Coves Suite 245', 'thiel.micaela@example.org', '1', '1'),
(55, 'Harvey', '4585 Schinner Squares', 'mbayer@example.com', '2', '2'),
(56, 'Hane', '87933 Schroeder Stream Apt. 415', 'joey.hintz@example.com', '1', '3'),
(57, 'Batz', '3820 Lemke Lights Apt. 511', 'moses03@example.net', '3', '2'),
(58, 'Blick', '69103 Lenore Vista Suite 482', 'bernadine63@example.org', '6', '2'),
(59, 'Sipes', '27985 Jones Plaza', 'ebartoletti@example.org', '1', '5'),
(60, 'Mann', '1346 Carter Avenue', 'bmarquardt@example.net', '5', '3'),
(61, 'Johns', '519 Steuber Harbor Apt. 695', 'holly44@example.org', '4', '3'),
(62, 'Mann', '77215 Hipolito Curve Apt. 808', 'johnpaul22@example.com', '5', '4'),
(63, 'Gerlach', '882 Doug Crossing', 'kyra.cassin@example.com', '2', '3'),
(64, 'Schultz', '76805 Upton Club', 'bettye.armstrong@example.org', '2', '2'),
(65, 'Lehner', '532 Wolf Fall Suite 400', 'lynch.hassan@example.net', '2', '3'),
(66, 'Turcotte', '01651 Eunice Skyway Apt. 609', 'mbeahan@example.net', '1', '5'),
(67, 'Lockman', '23900 Smitham Gardens', 'feil.serenity@example.org', '2', '4'),
(68, 'D\'Amore', '437 Holden Branch', 'daisha.kovacek@example.net', '2', '4'),
(69, 'O\'Conner', '809 Cruickshank Hills', 'icie.batz@example.net', '4', '3'),
(70, 'Ondricka', '84836 Kshlerin Flat Apt. 902', 'anibal02@example.com', '3', '2'),
(71, 'Kovacek', '5592 Kenton Club Suite 287', 'anna.haag@example.org', '6', '4'),
(72, 'Schneider', '1085 Malinda Lights Suite 991', 'wilfrid.olson@example.net', '5', '1'),
(73, 'Treutel', '42632 Brown Burg Suite 954', 'amiya.murazik@example.com', '6', '5'),
(74, 'Huel', '070 Bergnaum Plain Suite 097', 'eskiles@example.net', '2', '3'),
(75, 'Heller', '2092 Braulio Forest', 'pprosacco@example.net', '6', '5'),
(76, 'Hoppe', '25093 Ebert Loop', 'wdickens@example.org', '3', '2'),
(77, 'Volkman', '778 Shanel Knoll Suite 834', 'elmira.hackett@example.org', '2', '3'),
(78, 'Sipes', '3794 Ullrich Squares Suite 266', 'jaylin97@example.net', '2', '4'),
(79, 'Heathcote', '357 O\'Hara Glen', 'georgianna.ryan@example.com', '1', '2'),
(80, 'Fadel', '2632 Effertz Wall', 'torn@example.com', '4', '3'),
(81, 'Breitenberg', '342 Marvin Manor', 'jayde.bartell@example.net', '2', '4'),
(82, 'Jacobson', '393 Walker Ramp Apt. 751', 'giles.schaden@example.com', '3', '2'),
(83, 'Pfeffer', '63664 Raina Trafficway Suite 417', 'ryan.cruickshank@example.com', '1', '4'),
(84, 'Yost', '4907 Amie Locks', 'tierra95@example.com', '2', '1'),
(85, 'Dickens', '9672 Turcotte Parkways Apt. 218', 'daisha35@example.net', '1', '3'),
(86, 'Franecki', '223 Upton Stream', 'ryder53@example.com', '5', '4'),
(87, 'Klocko', '871 Kreiger Springs', 'ychamplin@example.net', '4', '3'),
(88, 'Becker', '08661 Leland Knolls', 'goldner.dillon@example.net', '6', '4'),
(89, 'Gerlach', '2995 Pfannerstill Vista Apt. 343', 'jettie88@example.net', '5', '3'),
(90, 'Ondricka', '888 West Wells', 'qherzog@example.org', '5', '1'),
(91, 'Littel', '41956 Cremin Mill Apt. 155', 'xconsidine@example.com', '1', '2'),
(92, 'Goodwin', '75835 Ernser Brooks Apt. 960', 'klehner@example.net', '1', '4'),
(93, 'Ebert', '92800 Ziemann Lodge', 'xortiz@example.com', '2', '1'),
(94, 'Dare', '3902 Hettinger Valleys', 'qbecker@example.com', '4', '5'),
(95, 'Ryan', '54223 Adeline Throughway', 'marquardt.elsa@example.com', '1', '3'),
(96, 'Halvorson', '01401 Phoebe Drive Apt. 056', 'aron85@example.net', '3', '5'),
(97, 'Christiansen', '81207 Kade Plain', 'pbarrows@example.org', '3', '5'),
(98, 'Goldner', '737 Zackary Via Suite 140', 'kutch.yasmine@example.com', '4', '3'),
(99, 'Hessel', '0044 Dulce Shores', 'gkirlin@example.com', '6', '1'),
(100, 'Upton', '4722 Madisen Estate Apt. 546', 'easton.moore@example.org', '3', '5'),
(101, 'Rowe', '1139 Nienow Points', 'javon.grant@example.org', '3', '3'),
(102, 'Barrows', '81500 Veum Circle', 'eve60@example.org', '4', '3'),
(103, 'McKenzie', '3262 Stark Court Apt. 831', 'kwintheiser@example.net', '5', '1'),
(104, 'Sauer', '4312 Boehm Stravenue Apt. 758', 'wilma.donnelly@example.org', '6', '2'),
(105, 'Emard', '5038 Moore Oval Apt. 273', 'wpacocha@example.net', '6', '5'),
(106, 'Waters', '0294 Beatty Way Suite 636', 'wmraz@example.org', '2', '1'),
(107, 'Hoppe', '08621 VonRueden Forges', 'xfisher@example.com', '1', '3'),
(108, 'Strosin', '5157 Welch Extension', 'mayra23@example.com', '1', '4'),
(109, 'O\'Kon', '894 Clay Underpass Suite 929', 'bgleichner@example.com', '3', '3');

-- --------------------------------------------------------

--
-- Table structure for table `opd`
--

CREATE TABLE `opd` (
  `id` int(11) NOT NULL,
  `nama_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opd`
--

INSERT INTO `opd` (`id`, `nama_opd`) VALUES
(1, 'DINAS KESEHATAN'),
(2, 'DINAS PERHUBUNGAN'),
(3, 'BAGIAN UMUM'),
(4, 'DINAS PU BINA MARGA');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `id_opd` int(12) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `id_opd`, `role_id`, `is_active`, `date_created`) VALUES
(5, 'Sandhika Galih', 'sandhikagalih@unpas.ac.id', 'profile1.jpg', '$2y$10$YR2vLC9IXfMD/kfBV1IX1OP0ohzclBe1d/QCcYPZtjQD2rSeWngCm', 2, 1, 1, 1552120289),
(6, 'Doddy Ferdiansyah', 'doddy@gmail.com', 'profile.jpg', '$2y$10$FhGzXwwTWLN/yonJpDLR0.nKoeWlKWBoRG9bsk0jOAgbJ007XzeFO', 1, 2, 1, 1552285263),
(12, 'darwanto', 'nusambatu@gmail.com', '1560px-Logo_Kota_Batu,_Jawa_Timur_(Seal_of_Batu,_East_Java)_svg.png', '$2y$10$n9rNVo.IARBxdZVWnDBxPO3DiKGHgjZkCWP1l.XNxn6IFFK4fYxuu', 3, 1, 1, 1570275563),
(14, 'dalbo', 'pokopek@gmail.com', '1560px-Logo_Kota_Batu,_Jawa_Timur_(Seal_of_Batu,_East_Java)_svg1.png', '$2y$10$L3wkrBgFeBSAnhdTazMKcumE5KjTW07vMw.DItMPUhhQbm78zKEZq', 4, 2, 1, 1570338407),
(15, 'dalbo', 'pokopek2@gmail.com', 'default.jpg', '$2y$10$YR2vLC9IXfMD/kfBV1IX1OP0ohzclBe1d/QCcYPZtjQD2rSeWngCm', 1, 1, 1, 1570338421);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(7, 1, 3),
(8, 1, 2),
(11, 1, 4),
(12, 2, 4),
(13, 1, 5),
(14, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(4, 'Mahasiswa'),
(5, 'Coba');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(8, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(10, 4, 'mahasiswa', 'mahasiswa', 'fas fa-fw fa-key', 1),
(11, 5, 'mencoba baru', 'coba', 'fas fa-fw fa-key', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(9, 'nusambatu@gmail.com', 'Xhhyd9GJJ1utr8DoeD7iJws9zWA7r5LUEn9YZUEOZic=', 1570275563),
(10, 'nusambatu@gmail.com', 'oDuhHtvBMgwiu5M3nNmx3uri0miiYt92rj98Q+4x6ZQ=', 1570287820),
(11, 'pokopek@gmail.com', 'JGAGTkhRCoHFhtJaGDKdRo/KYDxN0YtuQ+xn/agCxtY=', 1570338407),
(12, 'pokopek2@gmail.com', 'laW+uewnZQeOf2pNgEu5dUCujmGHKr4SjNBfMrGVMAQ=', 1570338421);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opd`
--
ALTER TABLE `opd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `opd`
--
ALTER TABLE `opd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
