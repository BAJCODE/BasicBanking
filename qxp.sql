-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2021 at 08:29 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qxp`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `UserID` int(11) NOT NULL,
  `Name` varchar(11) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Acc_Number` int(25) NOT NULL,
  `IFSC` varchar(20) NOT NULL,
  `Balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`UserID`, `Name`, `Email`, `Acc_Number`, `IFSC`, `Balance`) VALUES
(448966, 'Nabin', 'nabin54@gmail.com', 14398, 'ASQ9981562', 13900),
(346578, 'Rabin', 'Rabin@gmail.com', 223367, 'AS189231', 40800),
(346569, 'Sai', 'sai090@gmail.com', 224456, 'AS189754V', 91000),
(9045864, 'Ganesh', 'ganesh909@gmail.com', 349456, 'AC3475370D', 86100),
(9045236, 'Srijana', 'srijana1998@gmail.com', 349756, 'AC3465890D', 91000),
(446516, 'Chandra', 'chandra.j@gmail.com', 1431221, 'WWQ9551562', 8000),
(841652, 'Aasha', 'aasha.h@outlook.com', 3162123, 'SD9856785X', 903450),
(876815, 'Rama', 'rama.s@gmial.com', 3294892, 'AS576457S', 34400),
(847543, 'Khakendra', 'khakendra1437@outlook.com', 8962123, 'SD985675Y', 89800),
(87653, 'Krishna', 'krishna.i@yahoo.com', 9569876, 'SA875436SD', 74360);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `s_name` varchar(10) NOT NULL,
  `s_acc_no` int(11) NOT NULL,
  `r_name` varchar(10) NOT NULL,
  `r_acc_no` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`s_name`, `s_acc_no`, `r_name`, `r_acc_no`, `amount`, `date_time`) VALUES
('Khakendra', 8962123, 'Rama', 3294892, 200, '2021-05-02 09:40:57'),
('Krishna', 9569876, 'Rabin', 223367, 10000, '2021-05-02 09:53:43'),
('Krishna', 9569876, 'Rama', 3294892, 200, '2021-05-02 09:53:59'),
('Chandra', 1431221, 'Sai', 224456, 2000, '2021-05-02 09:58:39'),
('Nabin', 14398, 'Ganesh', 349456, 100, '2021-05-02 10:19:48'),
('Rama', 3294892, 'Nabin', 14398, 10000, '2021-05-02 10:23:12'),
('Nabin', 14398, 'Srijana', 349756, 1000, '2021-05-02 10:24:29'),
('Ganesh', 349456, 'Rama', 3294892, 4000, '2021-05-02 10:31:01'),
('Nabin', 14398, 'Krishna', 9569876, 5000, '2021-05-03 05:36:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Acc_Number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
