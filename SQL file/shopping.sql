-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 06:26 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '6796047cc8397e92e02721d6a6072c01', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Battery', 'charger of different phone', '2022-06-26 08:17:14', '28-06-2022 09:41:49 PM'),
(8, 'USB', 'usb  products for different electronic devices', '2022-06-26 08:29:39', NULL),
(9, 'phone Logo', 'Custom finger ring grip', '2022-06-26 09:17:07', NULL),
(10, 'Smart  protector', 'phone protector', '2022-06-26 09:35:33', '26-06-2022 03:45:59 PM'),
(11, 'All-electronics', 'all electronic device', '2022-06-26 10:08:44', '26-06-2022 03:46:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `titile` varchar(67) NOT NULL,
  `message` varchar(255) NOT NULL,
  `Logoimage` varchar(255) NOT NULL,
  `sliderimage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `titile`, `message`, `Logoimage`, `sliderimage`) VALUES
(8, 'LUX Shopping PortIform ', 'welcome', '2022-06-26 4.59.09 AM.png', '2022-06-26 4.59.02 AM.png');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` int(20) NOT NULL,
  `Address` varchar(37) NOT NULL,
  `Message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `Name`, `Email`, `Phone`, `Address`, `Message`) VALUES
(3, 'onesme', 'esmepeace2@gmail.com', 787236566, 'Kigali', 'thank you for developing this web');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 5, '41', 1, '2022-06-28 15:40:21', 'MTN', NULL),
(2, 5, '28', 1, '2022-07-09 14:23:34', 'MTN', NULL),
(3, 5, '30', 1, '2022-07-14 10:56:20', NULL, NULL),
(4, 5, '30', 1, '2022-07-14 10:56:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 1, 'in Process', 'wait in one day', '2022-06-26 12:32:19'),
(2, 2, 'Delivered', 'well', '2022-06-27 08:31:50'),
(3, 3, 'Delivered', 'you are wellcome', '2022-06-27 08:54:04');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(26, 8, 16, 'Fantom TPE USB  to type-c  data', 'Aohai TechnologyCo ltd', 1791, 1691, 'Description: High quality 1m 3A Super quick charge TPE usb to type-c \r\ndata fast charging cables for Mobile phone. (Price:1691F). Minimum order:100pieces.', '2022-06-26 5.05.10 AM.jpg', '2022-06-26 5.05.15 AM.jpg', '2022-06-26 5.05.10 AM.jpg', 100, 'In Stock', '2022-06-26 09:00:11', NULL),
(28, 8, 17, 'iPhone USB  adapter', 'Aohai TechnologyCo ltd', 1791, 1691, 'Description: High quality 1m 3A Super quick charge TPE usb to type-c \r\ndata fast charging cables for Mobile phone. (Price:1691F). Minimum order:100pieces.', '2022-06-26 5.05.44 AM.jpg', '2022-06-26 5.12.08 AM.jpg', '2022-06-26 5.05.44 AM.jpg', 100, 'In Stock', '2022-06-26 09:06:45', NULL),
(29, 8, 18, 'mobile phone usb magnetic  charing ', 'Aohai TechnologyCo ltd', 4, 4, 'Description: URIZONS 2022 new arrivals bohemian mobile phone usb magnetic Charing charger data micro cable. (Price:4,791F). Minimum order: 80 pieces.', '2022-06-26 5.12.18 AM.jpg', '2022-06-26 5.12.12 AM.jpg', '2022-06-26 5.12.08 AM.jpg', 50, 'In Stock', '2022-06-26 09:11:49', NULL),
(30, 9, 19, 'Custom  finger ring grip', 'design', 500, 500, 'Description: New arrivals 360 Rotation folding Custom\r\n finger ring grip mobile stand phone accessories holder.\r\n (Price:500F). Minimum order: 150 pieces.', '2022-06-26 5.15.12 AM.jpg', '2022-06-26 5.15.18 AM.jpg', '2022-06-26 5.15.24 AM.jpg', 50, 'In Stock', '2022-06-26 09:19:35', NULL),
(31, 9, 19, 'finger ring', 'design', 500, 500, 'Description: New arrivals 360 Rotation folding Custom\r\n finger ring grip mobile stand phone accessories holder.\r\n (Price:500F). Minimum order: 150 pieces.', '2022-06-26 5.15.29 AM.jpg', '2022-06-26 5.15.35 AM.jpg', '2022-06-26 5.15.41 AM.jpg', 50, 'In Stock', '2022-06-26 09:21:06', NULL),
(32, 9, 20, 'fabric elastic fabric Wallet Stick mobile phone', 'design', 1050, 1000, 'Description: High quality fabric elastic fabric Wallet Stick mobile phone wallet Credit card holder with custom logo.\r\n (Price: 1000F). Minimum order:100 pieces.', '2022-06-26 5.18.16 AM.jpg', '2022-06-26 5.18.21 AM.jpg', '2022-06-26 5.18.25 AM.jpg', 50, 'In Stock', '2022-06-26 09:29:18', NULL),
(33, 9, 20, 'fabric elastic fabric Wallet Stick mobile phone', 'design', 1050, 1000, 'Description: High quality fabric elastic fabric Wallet Stick mobile phone wallet Credit card holder with custom logo.\r\n (Price: 1000F). Minimum order:100 pieces.', '2022-06-26 5.18.36 AM.jpg', '2022-06-26 5.18.30 AM.jpg', '2022-06-26 5.18.25 AM.jpg', 50, 'In Stock', '2022-06-26 09:31:04', NULL),
(34, 10, 21, 'Nature Wood Phone Docking Station', 'none', 7691, 7591, 'Description: Nature Wood Phone Docking Station With Key\r\n Holder And Wallet Watch Organizer Stand. (Price:7591F). Minimum order: 200 boxes', '2022-06-26 5.22.05 AM.jpg', '2022-06-26 5.22.10 AM.jpg', '2022-06-26 5.22.14 AM.jpg', 100, 'In Stock', '2022-06-26 09:38:57', NULL),
(35, 10, 21, 'Nature Wood Phone Docking Station', 'none', 7691, 7591, 'Description: Nature Wood Phone Docking Station With Key\r\n Holder And Wallet Watch Organizer Stand. (Price:7591F). Minimum order: 200 boxes', '2022-06-26 5.22.20 AM.jpg', '2022-06-26 5.22.30 AM.jpg', '2022-06-26 5.22.10 AM.jpg', 100, 'In Stock', '2022-06-26 09:40:07', NULL),
(36, 10, 22, 'Phone Case Cover For Iphone', 'Pro Max/Pro', 2041, 1991, 'Description: Yesido Built-In Microphone Earbuds Headpone Fashion 3.5Mm In-Ear Stereo Sport Earphone. (Price:1991F) minimum order: 100 pieces', '2022-06-26 4.55.00 AM.jpg', '2022-06-26 4.54.55 AM.jpg', '2022-06-26 4.55.07 AM.jpg', 50, 'In Stock', '2022-06-26 09:44:47', NULL),
(37, 10, 23, 'metal display tripod stand', 'none', 1300, 1300, 'Description: Simple creative metal display tripod stand for phone accessories. (Price:1300F). Minimum order:100 pieces', '2022-06-26 5.24.41 AM.jpg', '2022-06-26 5.24.51 AM.jpg', '2022-06-26 5.24.55 AM.jpg', 50, 'In Stock', '2022-06-26 09:50:55', NULL),
(38, 10, 23, 'metal display tripod stand', 'none', 1300, 1300, 'Description: Simple creative metal display tripod stand for phone accessories.  (Price:1300F). Minimum order:100 pieces\r\n', '2022-06-26 5.25.01 AM.jpg', '2022-06-26 5.25.06 AM.jpg', '2022-06-26 5.25.17 AM.jpg', 50, 'In Stock', '2022-06-26 09:52:04', NULL),
(39, 10, 24, 'back cover for Samsung s21 ', ' Samsung', 1391, 1391, 'Description: Manufacturing mobile phone accessories back cover for Samsung s21 Car Shockproof Mobile Phone Case For iphone 12 11 huawei Cover. (Price:1391F). Minimum order: 100 pieces.', '2022-06-26 5.37.56 AM.jpg', '2022-06-26 5.38.00 AM.jpg', '2022-06-26 5.38.18 AM.jpg', 50, 'In Stock', '2022-06-26 10:12:30', NULL),
(40, 10, 24, 'back cover for Samsung s21 ', ' Samsung', 1391, 1391, 'Description: Manufacturing mobile phone accessories back cover for Samsung s21 Car Shockproof Mobile Phone Case For iphone 12 11 huawei Cover. (Price:1391F). Minimum order: 100 pieces.', '2022-06-26 5.38.05 AM.jpg', '2022-06-26 5.38.14 AM.jpg', '2022-06-26 5.38.09 AM.jpg', 50, 'In Stock', '2022-06-26 10:14:05', NULL),
(41, 11, 25, ' hottest sell JL TWS wireless earphones', 'Amazon', 5891, 5891, 'Description: Factory original Amazon 2022 hottest sell JL TWS wireless earphones HIFI music V77 \r\nusb-c type-c charging connect stereo headset. (Price:5891F). Minimum order: 100 Pieces.', '2022-06-26 5.41.03 AM.jpg', '2022-06-26 5.41.08 AM.jpg', '2022-06-26 5.41.13 AM.jpg', 150, 'In Stock', '2022-06-26 10:22:45', NULL),
(43, 5, 26, 'Wireless BT Headphones', 'none', 25000, 25000, 'Description: Oneodio Fusion Wired and Wireless BT Headphones \r\nFor Phone Mic Over Ear Studio DJ Headphone Professional Recording Headset. (Price:25000F). Minimum order: 30 pieces', '2022-06-26 5.45.06 AM.jpg', '2022-06-26 5.45.11 AM.jpg', '2022-06-26 5.45.17 AM.jpg', 150, 'In Stock', '2022-06-26 17:58:35', NULL),
(44, 11, 26, 'Wireless BT Headphones', 'none', 25000, 25000, 'Description: Oneodio Fusion Wired and Wireless BT Headphones \r\nFor Phone Mic Over Ear Studio DJ Headphone Professional Recording Headset. (Price:25000F). Minimum order: 30 pie', '2022-06-26 5.45.19 AM.jpg', '2022-06-26 5.45.26 AM.jpg', '2022-06-26 5.45.46 AM.jpg', 150, 'In Stock', '2022-06-26 18:00:52', NULL),
(45, 11, 27, 'usb of 1gb 2gb 4gb 8gb 16gb 32gb 64gb.', 'none', 4091, 4091, 'Description: Pendrive 1gb 2gb 4gb 8gb 16gb 32gb 64gb. (Price: 4GB 3591F minimum order:\r\n 80 pieces; 8GB 4091F minimum order: 80 pieces; 16GB 4691F minimum order: 80 pieces; \r\n32GB 4891F minimum order: 80 pieces; 64GB 5391F minimum order: 50 pieces.', '2022-06-26 5.48.38 AM.jpg', '2022-06-26 5.48.44 AM.jpg', '2022-06-26 5.48.50 AM.jpg', 150, 'In Stock', '2022-06-26 18:40:33', NULL),
(46, 11, 27, 'usb of 1gb 2gb 4gb 8gb 16gb 32gb 64gb.', 'none', 4691, 4691, 'Description: Pendrive 1gb 2gb 4gb 8gb 16gb 32gb 64gb. (Price: 4GB 3591F minimum order:\r\n 80 pieces; 8GB 4091F minimum order: 80 pieces; 16GB 4691F minimum order: 80 pieces; \r\n32GB 4891F minimum order: 80 pieces; 64GB 5391F minimum order: 50 pieces.', '2022-06-26 5.48.55 AM.jpg', '2022-06-26 5.48.59 AM.jpg', '2022-06-26 5.48.50 AM.jpg', 150, 'In Stock', '2022-06-26 18:42:38', NULL),
(47, 11, 27, 'Guitar Shape Memory Storage Usb Flash Drive', 'none', 4691, 4691, 'Description: Top Selling Musical Instrument Jewelry Necklace Metal\r\n Guitar Shape Memory Storage Usb Flash Drive. (Price: same as the above USB)', '2022-06-26 6.01.46 AM.jpg', '2022-06-26 6.01.48 AM.jpg', '2022-06-26 6.01.54 AM.jpg', 150, 'In Stock', '2022-06-26 18:47:57', NULL),
(48, 11, 27, 'usb of 1gb 2gb 4gb 8gb 16gb 32gb 64gb.', 'none', 4691, 4691, 'Description: Top Selling Musical Instrument Jewelry Necklace Metal\r\n Guitar Shape Memory Storage Usb Flash Drive. (Price: same as the above USB)', '2022-06-26 6.02.02 AM.jpg', '2022-06-26 6.01.59 AM.jpg', '2022-06-26 6.01.48 AM.jpg', 150, 'In Stock', '2022-06-26 18:49:06', NULL),
(49, 11, 28, 'Portable Speaker ', 'none', 6991, 6991, 'Description: TG117 USB Player Waterproof BT Portable Speaker Super Quality\r\n Outdoor Wireless Speaker. (Price: 6991F) minimum order: 50 pieces', '2022-06-26 6.04.08 AM.jpg', '2022-06-26 6.04.19 AM.jpg', '2022-06-26 6.04.14 AM.jpg', 150, 'In Stock', '2022-06-26 18:53:27', NULL),
(50, 11, 28, 'portable Speaker', 'none', 6991, 6991, 'Description: TG117 USB Player Waterproof BT Portable Speaker Super Quality Outdoor Wireless Speaker. (Price: 6991F) minimum order: 50 pieces', '2022-06-26 6.04.24 AM.jpg', '2022-06-26 6.04.29 AM.jpg', '2022-06-26 6.04.32 AM.jpg', 150, 'In Stock', '2022-06-26 18:54:55', NULL),
(51, 10, 29, 'Screen  Protector', 'none', 2000, 2000, 'Description: Hydrogel Matte Anti-spy TPU Film, Privacy TPU Screen\r\n Protector For Galaxy Samsung 20 Ultra. (Price:2000F) minimum order:100 pieces', '2022-06-26 6.10.17 AM.jpg', '2022-06-26 6.10.21 AM.jpg', '2022-06-26 6.10.26 AM.jpg', 150, 'In Stock', '2022-06-26 18:59:43', NULL),
(52, 10, 29, 'Screen  Protector', 'none', 2000, 2000, 'Description: Hydrogel Matte Anti-spy TPU Film, Privacy TPU Screen\r\n Protector For Galaxy Samsung 20 Ultra. (Price:2000F) minimum order:100 pieces', '2022-06-26 6.10.31 AM.jpg', '2022-06-26 6.10.39 AM.jpg', '2022-06-26 6.10.26 AM.jpg', 150, 'In Stock', '2022-06-26 19:01:07', NULL),
(53, 11, 30, '3Ft  Cable headset handsfree headphones audifonos for apple  for iphone 12', 'none', 2000, 2000, 'Description: original earphones for lightning 3Ft Cable headset handsfree headphones audifonos for apple\r\n for iphone 12 music calling talking. (Price:2000F) minimum order: 80 sets', '2022-06-26 6.13.50 AM.jpg', '2022-06-26 6.13.56 AM.jpg', '2022-06-26 6.14.01 AM.jpg', 0, 'In Stock', '2022-06-26 19:07:26', NULL),
(54, 11, 30, '3Ft  Cable headset handsfree headphones audifonos for apple  for iphone 12', 'none', 2000, 2000, 'Description: original earphones for lightning 3Ft Cable headset handsfree headphones audifonos for apple\r\n for iphone 12 music calling talking. (Price:2000F) minimum order: 80 sets', '2022-06-26 6.14.04 AM.jpg', '2022-06-26 6.14.10 AM.jpg', '2022-06-26 6.14.21 AM.jpg', 150, 'In Stock', '2022-06-26 19:09:45', NULL),
(55, 10, 31, ' Candy Women Printed Phones Case For Infinix Hot  10', 'none', 1891, 1891, 'Description: 2022 New Arrival Candy Women Printed Phones Case For Infinix Hot\r\n 10 Play Glue Dropping For Tecno Itel Epoxy DIY Diamond Cases. (Price: 1891F)\r\n minimum order: 10 lot and each lot contains 50 piece', '2022-06-26 6.16.53 AM.jpg', '2022-06-26 6.17.00 AM.jpg', '2022-06-26 6.17.05 AM.jpg', 150, 'In Stock', '2022-06-26 19:14:26', NULL),
(56, 10, 31, ' Candy Women Printed Phones Case For Infinix Hot  10 ', 'none', 1891, 1891, 'Description: 2022 New Arrival Candy Women Printed Phones Case For Infinix Hot 10 Play Glue Dropping For Tecno Itel Epoxy DIY Diamond Cases. (Price: 1891F) minimum order: 10 lot and each lot contains 50 piece', '2022-06-26 6.17.10 AM.jpg', '2022-06-26 6.17.15 AM.jpg', '2022-06-26 6.17.20 AM.jpg', 0, 'In Stock', '2022-06-26 19:16:28', NULL),
(57, 7, 32, 'power bank micro wireless charging', 'none', 10691, 10691, 'Description: 2021 high quality wholesale micro wireless charging emergency  cheap magnetic mini powerbank 20000mah with usb c cable. (Price:10691F) minimum order: 20pieces', '2022-06-26 6.21.41 AM.jpg', '2022-06-26 6.21.48 AM.jpg', '2022-06-26 6.21.54 AM.jpg', 0, 'In Stock', '2022-06-26 19:22:08', NULL),
(58, 7, 32, 'power bank micro wireless charging', 'none', 10691, 10691, 'Description: 2021 high quality wholesale micro wireless charging emergency  cheap magnetic mini powerbank 20000mah with usb c cable. (Price:10691F) minimum order: 20pieces', '2022-06-26 6.22.04 AM.jpg', '2022-06-26 6.21.59 AM.jpg', '2022-06-26 6.21.59 AM.jpg', 0, 'In Stock', '2022-06-26 19:23:21', NULL),
(59, 10, 22, 'Phone Case Cover For infinix', 'none', 1591, 1591, 'Description: Fashion Translucent Protection Shock Proof Tpu \r\nPc Mobile Phone Case Frosted Smoke Matte Cover For Infinix Hot 12.\r\n (Price:1591F) minimum order: 2 Lot and each lot contains 50 pieces', '2022-06-26 6.25.12 AM.jpg', '2022-06-26 6.25.17 AM.jpg', '2022-06-26 6.25.22 AM.jpg', 0, 'In Stock', '2022-06-26 19:27:41', NULL),
(60, 10, 22, 'Phone Case Cover For infinix', 'none', 1591, 1591, 'Description: Fashion Translucent Protection Shock Proof Tpu \r\nPc Mobile Phone Case Frosted Smoke Matte Cover For Infinix Hot 12.\r\n (Price:1591F) minimum order: 2 Lot and each lot contains 50 pieces', '2022-06-26 6.25.29 AM.jpg', '2022-06-26 6.25.32 AM.jpg', '2022-06-26 6.25.37 AM.jpg', 0, 'In Stock', '2022-06-26 19:29:02', NULL),
(61, 11, 33, 'Earbuds Headpone ', 'none', 1991, 1991, 'Description: Yesido Built-In Microphone Earbuds Headpone Fashion\r\n 3.5Mm In-Ear Stereo Sport Earphone. (Price:1991F) minimum order: 100 pieces', '2022-06-26 6.36.42 AM.jpg', '2022-06-26 6.36.47 AM.jpg', '2022-06-26 6.36.52 AM.jpg', 150, 'In Stock', '2022-06-26 19:36:21', NULL),
(62, 11, 33, 'Earbuds Headpone ', 'none', 1991, 1991, 'Description: Yesido Built-In Microphone Earbuds Headpone Fashion\r\n 3.5Mm In-Ear Stereo Sport Earphone. (Price:1991F) minimum order: 100 pieces', '2022-06-26 6.36.58 AM.jpg', '2022-06-26 6.37.03 AM.jpg', '2022-06-26 6.37.09 AM.jpg', 50, 'In Stock', '2022-06-26 19:38:00', NULL),
(63, 7, 14, 'Wireless Charger', 'none', 9891, 9891, 'Description: 3D Knight Best Quality Magnetic COOKI Cork Wireless Charger, Mag-Safe Charging Fast Wireless Charger For iPhone 12 mini Pro/ Pro. (Price:9891F). Minimum order: 50 pieces \r\n', '2022-06-26 4.58.50 AM.png', '2022-06-26 4.58.53 AM.png', '2022-06-26 4.59.02 AM.png', 150, 'In Stock', '2022-06-27 05:48:42', NULL),
(64, 7, 14, 'Wireless Charger', 'none', 9891, 9891, 'Description: 3D Knight Best Quality Magnetic COOKI Cork Wireless Charger, Mag-Safe Charging Fast Wireless Charger For iPhone 12 mini Pro/ Pro. (Price:9891F). Minimum order: 50 pieces \r\n', '2022-06-26 4.59.16 AM.png', '2022-06-26 4.59.09 AM.png', '2022-06-26 4.58.53 AM.png', 150, 'In Stock', '2022-06-27 05:49:57', NULL),
(65, 8, 15, 'USB  adapter', 'none', 2091, 2091, '.Description: best selling multifunction type-c charge with ethernet to\r\n rj45 hdmi 8 port type c to usb c 8 in 1 3.0 hub adapter laptop docking. \r\n(Price:2091F). Minimum order: 8 lot and each lot contains 10 pieces.', '2022-06-26 5.02.34 AM.jpg', '2022-06-26 5.02.41 AM.jpg', '2022-06-26 5.02.47 AM.jpg', 150, 'In Stock', '2022-06-27 05:55:51', NULL),
(66, 8, 15, 'USB  adapter', 'none', 2091, 2091, '.Description: best selling multifunction type-c charge with ethernet to\r\n rj45 hdmi 8 port type c to usb c 8 in 1 3.0 hub adapter laptop docking. \r\n(Price:2091F). Minimum order: 8 lot and each lot contains 10 pieces.', '2022-06-26 5.02.47 AM.jpg', '2022-06-26 5.02.59 AM.jpg', '2022-06-26 5.03.09 AM.jpg', 150, 'In Stock', '2022-06-27 05:56:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2017-01-26 16:24:52', '26-01-2017 11:03:40 PM'),
(3, 4, 'Television', '2017-01-26 16:29:09', ''),
(4, 4, 'Mobiles', '2017-01-30 16:55:48', ''),
(5, 4, 'Mobile Accessories', '2017-02-04 04:12:40', ''),
(6, 4, 'Laptops', '2017-02-04 04:13:00', ''),
(7, 4, 'Computers', '2017-02-04 04:13:27', ''),
(9, 5, 'Beds', '2017-02-04 04:36:45', ''),
(10, 5, 'Sofas', '2017-02-04 04:37:02', ''),
(12, 6, 'Men Footwears', '2017-03-10 20:12:59', ''),
(14, 7, 'Wireless Charger', '2022-06-26 08:18:27', NULL),
(15, 8, 'mulitport USB', '2022-06-26 08:30:22', NULL),
(16, 8, 'Fantom', '2022-06-26 08:55:00', NULL),
(17, 8, 'iPhone USB', '2022-06-26 08:55:30', NULL),
(18, 8, 'Smart phone USB', '2022-06-26 08:55:47', NULL),
(19, 9, 'ring logo', '2022-06-26 09:17:27', NULL),
(20, 9, 'Stick mobile phone ', '2022-06-26 09:27:11', NULL),
(21, 10, 'Wood Phone Docking Station', '2022-06-26 09:36:23', NULL),
(22, 10, 'Phone Case Cover ', '2022-06-26 09:42:07', NULL),
(23, 10, 'metal display tripod stand', '2022-06-26 09:49:01', NULL),
(24, 10, 'back cover for Samsung', '2022-06-26 10:10:18', NULL),
(25, 11, 'hottest', '2022-06-26 10:20:39', NULL),
(26, 11, 'Wireless  Headphones', '2022-06-26 17:55:10', '27-06-2022 11:36:08 AM'),
(27, 11, 'USB flash disk', '2022-06-26 18:36:32', NULL),
(28, 11, 'Portable Speaker ', '2022-06-26 18:52:03', NULL),
(29, 10, 'Screen  Protector', '2022-06-26 18:57:39', NULL),
(30, 11, 'Cable headset', '2022-06-26 19:05:06', NULL),
(31, 10, ' Candy Women Printed Phones Case', '2022-06-26 19:12:14', NULL),
(32, 7, 'micro wireless charging', '2022-06-26 19:19:31', NULL),
(33, 11, 'Earbuds Headpone ', '2022-06-26 19:34:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'onesme@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-27 07:22:09', NULL, 1),
(5, 'onesme@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-28 15:40:01', '03-07-2022 05:03:54 PM', 1),
(6, 'onesme@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-14 10:56:12', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(5, 'onesme', 'onesme@gmail.com', 787236566, '6796047cc8397e92e02721d6a6072c01', 'Musanze', 'Muhoza', 'Musanze', 250, 'Musanze', 'Muhoza', 'Musanze', 250, '2022-06-27 10:38:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
