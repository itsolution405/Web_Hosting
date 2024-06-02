-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2021 at 04:17 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(10) NOT NULL,
  `ID_Dosen` char(30) NOT NULL,
  `Password_Admin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `ID_Dosen`, `Password_Admin`) VALUES
('admin', 'KO-001N', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `ID_Dosen` char(7) NOT NULL,
  `Nama_Dosen` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`ID_Dosen`, `Nama_Dosen`) VALUES
('KO-001N', 'Ahmad Gumilar N'),
('KO-002N', 'Amilia Rosetika'),
('KO-003N', 'Bambang Mahardika'),
('KO-004N', 'Dadang Rosadi'),
('KO-005N', 'Dyah Wulandari'),
('KO-006N', 'Irawati Arum');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `ID_Jadwal` int(11) NOT NULL,
  `ID_Dosen` char(7) NOT NULL,
  `ID_Matkul` char(6) NOT NULL,
  `ID_Ruangan` char(10) NOT NULL,
  `Hari` varchar(7) NOT NULL,
  `Jam_Masuk` time NOT NULL,
  `Jam_Keluar` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`ID_Jadwal`, `ID_Dosen`, `ID_Matkul`, `ID_Ruangan`, `Hari`, `Jam_Masuk`, `Jam_Keluar`) VALUES
(1, 'KO-001N', 'TI1014', 'A023', 'Senin', '09:00:00', '11:00:00'),
(2, 'KO-005N', 'TI1022', 'A024', 'Selasa', '10:00:00', '12:00:00'),
(3, 'KO-003N', 'TI2034', 'A024', 'Rabu', '09:00:00', '11:00:00'),
(4, 'KO-001N', 'TI2034', 'A023', 'Kamis', '09:00:00', '11:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` char(9) NOT NULL,
  `Nama_Mhs` varchar(30) DEFAULT NULL,
  `Tingkat` char(1) NOT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `Nama_Mhs`, `Tingkat`, `Password`, `Alamat`) VALUES
('171511001', 'Akbar', '3', 'demo', 'Bandung'),
('171511002', 'Kinanti', '3', 'demo', 'Bandung'),
('171511003', 'Khoirunisa', '3', 'demo', 'Bandung'),
('171511019', 'Ramdani', '3', 'demo', 'Cirebon'),
('171511023', 'Tubagus', '3', 'demo', 'Cimahi'),
('171511046', 'Pratiwi', '3', 'demo', 'Bandung');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `ID_Matkul` char(6) NOT NULL,
  `Nama_Matkul` varchar(30) NOT NULL,
  `SKS_Matkul` int(11) NOT NULL,
  `Semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`ID_Matkul`, `Nama_Matkul`, `SKS_Matkul`, `Semester`) VALUES
('TI1014', 'DDP', 4, 1),
('TI1022', 'Ilmu Komputer', 2, 1),
('TI2034', 'Pengantar Rekayasa PL', 4, 3),
('TI3123', 'Komputer Grafik', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `mengajar`
--

CREATE TABLE `mengajar` (
  `ID_Dosen` char(7) NOT NULL,
  `ID_Matkul` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mengajar`
--

INSERT INTO `mengajar` (`ID_Dosen`, `ID_Matkul`) VALUES
('KO-001N', 'TI1014'),
('KO-001N', 'TI2034'),
('KO-003N', 'TI2034'),
('KO-005N', 'TI1022');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `ID_Matkul` char(6) NOT NULL,
  `NIM` char(9) NOT NULL,
  `Nilai` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`ID_Matkul`, `NIM`, `Nilai`) VALUES
('TI1014', '171511023', 'A'),
('TI1022', '171511023', 'AB'),
('TI1014', '171511046', 'A'),
('TI1022', '171511046', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `ID_Ruangan` char(10) NOT NULL,
  `Nama_Ruangan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`ID_Ruangan`, `Nama_Ruangan`) VALUES
('A023', 'Multimedia'),
('A024', 'Proyek');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`),
  ADD KEY `fk_admin_dosen` (`ID_Dosen`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`ID_Dosen`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`ID_Jadwal`),
  ADD KEY `fk_jadwal_matkul` (`ID_Matkul`),
  ADD KEY `fk_jadwal_mengajar` (`ID_Dosen`),
  ADD KEY `fk_jadwal_ruangan` (`ID_Ruangan`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`ID_Matkul`);

--
-- Indexes for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD PRIMARY KEY (`ID_Dosen`,`ID_Matkul`),
  ADD KEY `fk_mengajar_matkul` (`ID_Matkul`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`NIM`,`ID_Matkul`),
  ADD KEY `fk_nilai_matkul` (`ID_Matkul`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`ID_Ruangan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `ID_Jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_admin_dosen` FOREIGN KEY (`ID_Dosen`) REFERENCES `dosen` (`ID_Dosen`);

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `fk_jadwal_matkul` FOREIGN KEY (`ID_Matkul`) REFERENCES `mengajar` (`ID_Matkul`),
  ADD CONSTRAINT `fk_jadwal_mengajar` FOREIGN KEY (`ID_Dosen`) REFERENCES `mengajar` (`ID_Dosen`),
  ADD CONSTRAINT `fk_jadwal_ruangan` FOREIGN KEY (`ID_Ruangan`) REFERENCES `ruangan` (`ID_Ruangan`);

--
-- Constraints for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD CONSTRAINT `fk_dosen_mengajar` FOREIGN KEY (`ID_Dosen`) REFERENCES `dosen` (`ID_Dosen`),
  ADD CONSTRAINT `fk_mengajar_matkul` FOREIGN KEY (`ID_Matkul`) REFERENCES `mata_kuliah` (`ID_Matkul`);

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `fk_nilai_mahasiswa` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`),
  ADD CONSTRAINT `fk_nilai_matkul` FOREIGN KEY (`ID_Matkul`) REFERENCES `mata_kuliah` (`ID_Matkul`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
