-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 02:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roms`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `tprice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Error reading data for table roms.cart: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `roms`.`cart`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `tprice` double NOT NULL,
  `orderStatus` varchar(30) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `username`, `name`, `price`, `quantity`, `tprice`, `orderStatus`, `date`) VALUES
(1, 'shara', 'Chicken Burger', 4.89, 1, 5.89, 'Accepted', '2021-02-01 23:52:35'),
(3, 'shara', 'Beef Burger', 4.89, 1, 5.89, 'Accepted', '2021-02-02 00:00:51'),
(4, 'shara', 'Beef Burger', 4.89, 1, 5.89, 'Canceled', '2021-02-01 23:59:00'),
(5, 'shara', 'Veg Burger', 4.89, 2, 9.78, 'Accepted', '2021-02-04 00:52:00'),
(6, 'shara', 'Veg Burger', 4.89, 2, 9.78, 'In-Process', '2021-02-04 00:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `emplist`
--

CREATE TABLE `emplist` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `ic` varchar(30) NOT NULL,
  `nationality` varchar(15) NOT NULL,
  `address` varchar(500) NOT NULL,
  `hp` varchar(13) NOT NULL,
  `position` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emplist`
--

INSERT INTO `emplist` (`id`, `name`, `gender`, `ic`, `nationality`, `address`, `hp`, `position`) VALUES
(1, 'Shara', 'Female', '960425015768', 'Malaysia', 'KTDI', '01123369764', 'Manager'),
(2, 'Ameer bin Talib', 'Male', 'B18K0023', 'Indonesia', 'Paradigm Mall', '0111159746', 'Floor cleaner'),
(3, 'Shameer Bin Ahmad Ali', 'Male', 'A18CS058', 'Indonesia', 'Taman University, Jln Kebudayaan 2, Skudai,Johor', '0111159746', 'Waiter'),
(4, 'Syafiq bin Salleh', 'Male', '900425015768', 'Malaysia', 'MA5,KTDI,Skudai,Johor', '01123369764', 'Junior Chef'),
(5, 'Shafiq bin Rafiq', 'Male', '900425015768', 'Malaysia', '342,Jln Kasawari, Skudai,Johor.', '0111159746', 'Manager'),
(10, 'Hassan', 'Male', 'B18K0023', 'Bangladesh', 'Meranti', '0111159746', 'Cleaner'),
(12, 'Abu Hassan', 'Male', '960425015768', 'Malaysia', 'Perling,Skudai', '01123369764', 'Floor cleaner');

-- --------------------------------------------------------

--
-- Table structure for table `foodlist`
--

CREATE TABLE `foodlist` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `stock` varchar(15) NOT NULL,
  `descrip` varchar(200) NOT NULL,
  `price` varchar(30) NOT NULL,
  `link` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foodlist`
--

INSERT INTO `foodlist` (`id`, `name`, `stock`, `descrip`, `price`, `link`) VALUES
(2, 'Chicken Burger', 'Available', 'Served with chicken patty', '4.89', 'chicken-burger.jpg'),
(3, 'Beef Burger', 'Available', 'Served with beef patty', '4.89', 'beef-burger.jpg'),
(7, 'Veg Burger', 'Unavailable', 'Served with potato patty', '4.89', 'veg-burger.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `foodreview`
--

CREATE TABLE `foodreview` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `comments` varchar(200) NOT NULL,
  `rate` double NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foodreview`
--

INSERT INTO `foodreview` (`id`, `name`, `comments`, `rate`, `date`) VALUES
(1, 'Beef Burger', 'The patty is not cooked well.', 3.1, '2020-12-17 02:29:48'),
(2, 'Fish Burger + Cheese', 'The patty is very juicy and yummy', 4.5, '2020-12-20 02:30:06'),
(3, 'Chicken Burger', 'The flavor is superb good.', 4.2, '2020-12-21 03:30:23'),
(4, 'Chicken Burger', 'The flavor is superb good.', 4.2, '2020-12-23 02:30:44'),
(5, 'Chicken Burger', 'The flavor is superb good.', 4.2, '2020-12-24 12:31:03'),
(6, 'Veg Burger + Cheese', 'The green peas should cooked well', 3.8, '2020-12-25 02:29:00'),
(7, 'Veg Burger + Cheese', 'The green peas should cooked well', 3.8, '2020-12-25 02:29:00'),
(8, 'Fish Burger', 'The burger is too good and tasty', 4.6, '2020-12-25 03:52:00'),
(9, 'Chicken Burger', 'nice', 2, '2021-01-16 08:56:00'),
(10, 'Chicken Burger', 'nice', 2, '2021-01-16 08:56:00'),
(11, 'Chicken Burger', 'nice', 4.2, '2021-01-20 09:01:00'),
(12, 'Chicken Burger', 'Juicy Tender', 4.8, '2021-01-30 12:30:00'),
(13, 'Chicken Burger', 'Juicy Tender', 4.8, '2021-01-30 12:30:00'),
(14, 'Beef Burger', 'Too good', 4, '2021-02-03 21:20:00'),
(15, 'Chicken Burger', 'Yummy and delicious', 4.2, '2021-02-03 21:45:00'),
(16, 'Veg Burger', 'Its very juicy and good to eat', 4.2, '2021-02-04 11:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `hp` int(15) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `password`, `hp`, `email`) VALUES
(1, 'shara', '12345', 1123369764, 'shara96@gmail.com'),
(2, 'kogheen', '555', 1123369764, 'ksv@gmail.com'),
(3, 'sharashini', '888', 1123369764, 'shara2504@gmail.com'),
(4, 'sharashini', '888', 1123369764, 'shara2504@gmail.com'),
(6, 'ksv', '666', 1123369764, 'v@gmail.com'),
(7, 'reshma', '5799', 1123369764, 'v@gmail.com'),
(8, 'simbu', '9999', 1123369764, 'simbu@gmail.com'),
(9, 'varman', 'v123', 1123369764, 'v@gmail.com'),
(10, 'ali', 'ali98', 111159746, 'ali@gmail.com'),
(11, 'ali', 'ali98', 111159746, 'ali@gmail.com'),
(12, 'razak', 'r123', 1111579346, 'r@gmail.com'),
(13, 'Ameer', '8888', 146745893, 'ameer@gmail.com'),
(14, 'psharashini1996', '125', 1123369764, 'shara2504@gmail.com'),
(15, 'hussain', 'h125', 1123369764, 'h@gmail.com'),
(16, 'Leman', '123', 1123369764, 'l@gmail.com'),
(17, 'reza', 'r123', 1123369764, 'r@gmail.com'),
(18, 'Amalina', 'A123', 1123369764, 'a@gmail.com'),
(19, 'Amalina', 'a123', 1123369764, 'a@gmail.com'),
(20, 'Ameer', 'a123', 1123369764, 'shara2504@gmail.com'),
(21, 'Ali', 'ali123', 1111579346, 'ali@gmail.com'),
(22, 'Ali', 'ali123', 1111579346, 'ali@gmail.com'),
(23, 'Abu Hassan', '12345', 1123369764, 'hassan@gmail.com'),
(24, 'Hassan', '12345', 1123369764, 'hassan@gmail.com'),
(25, 'Hassan', '12345', 1123369764, 'hassan@gmail.com'),
(26, 'Khalid ', 'k123', 1123369764, 'k@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emplist`
--
ALTER TABLE `emplist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodlist`
--
ALTER TABLE `foodlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodreview`
--
ALTER TABLE `foodreview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `emplist`
--
ALTER TABLE `emplist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `foodlist`
--
ALTER TABLE `foodlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `foodreview`
--
ALTER TABLE `foodreview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
