-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2023 at 06:43 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'd00f5d5217896fb7fd601412cb890830', '2023-07-18 17:21:18', '11-08-2023 06:12:15 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Books', 'Test anuj', '2023-07-18 20:17:37', '12-08-2023 12:22:24 AM'),
(4, 'Electronics', 'Electronic Products', '2023-07-18 20:19:32', '12-08-2023 12:22:59 AM'),
(5, 'Furniture', 'test', '2023-07-18 20:19:54', '12-08-2023 12:23:22 AM'),
(6, 'Fashion', 'Fashion', '2023-07-18 20:18:52', '12-08-2023 12:24:42 AM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(7, 5, '18', 1, '2023-07-29 16:00:23', 'Debit / Credit card', 'in Process'),
(8, 5, '20', 1, '2023-07-29 16:00:23', 'Debit / Credit card', 'Delivered'),
(9, 5, '1', 1, '2023-07-30 06:15:24', 'Debit / Credit card', NULL),
(10, 5, '12', 1, '2023-07-30 06:15:24', 'Debit / Credit card', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(5, 7, 'in Process', 'SUPERB ', '2023-07-29 16:01:55'),
(6, 8, 'Delivered', 'DONE', '2023-07-29 16:02:40');

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
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2023-08-10 21:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2023-08-10 21:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2023-08-10 21:59:19');

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
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Micromax 81cm (32) HD Ready LED TV  (32T6175MHD, 2 x HDMI, 2 x USB)', 'Micromax test', 3990, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'micromax1.jpeg', 'micromax main image.jpg', 'micromax main image.jpg', 105, 'In Stock', '2023-07-22 17:54:35', ''),
(2, 4, 4, 'Apple iPhone 14 Pro (Deep Purple, 256 GB)', 'Apple INC', 1899, 0, '<div class=\"iphone-14-pro display cell row\" align=\"center\">\r\n						\r\n						<p class=\"typography-body-reduced column \">Super Retina XDR display<sup class=\"footnote footnote-number\"><a href=\"https://www.apple.com/au/iphone-14-pro/?afid=p238%7ChBtHb2G2-dc_mtid_20925zaz40371_pcrid_81501411771927_pgrid_1304021211234920_&amp;cid=wwa-au-kwbi-iphone--slid---product---iPhone14Pro-Announce-#footnote-7\" aria-label=\"Footnote 7\" data-modal-close=\"\">7</a></sup></p>\r\n						<p class=\"typography-body-reduced \">ProMotion technology</p>\r\n						<p class=\"typography-body-reduced \">Always-On display</p>\r\n					</div>\r\n					<div class=\"iphone-14-pro dynamic-island cell row\" align=\"center\">\r\n						<figure class=\"image-icon-dynamic-island image-icon\" data-anim-lazy-image-download-complete=\"\"></figure>\r\n						<p class=\"typography-body-reduced column \">Dynamic Island</p>\r\n						<p class=\"typography-body-reduced feature-note column\">A new way to <br>interact with iPhone</p>\r\n					</div>\r\n					<div class=\"iphone-14-pro sos cell row\" align=\"center\">\r\n						<figure class=\"image-icon-sos image-icon\" data-anim-lazy-image-download-complete=\"\"></figure>\r\n						<p class=\"typography-body-reduced column \">Emergency SOS via satellite<sup class=\"footnote footnote-number\"><a href=\"https://www.apple.com/au/iphone-14-pro/?afid=p238%7ChBtHb2G2-dc_mtid_20925zaz40371_pcrid_81501411771927_pgrid_1304021211234920_&amp;cid=wwa-au-kwbi-iphone--slid---product---iPhone14Pro-Announce-#footnote-5\" aria-label=\"Footnote 5\" data-modal-close=\"\">5</a></sup></p>\r\n						<p class=\"typography-body-reduced \">Emergency SOS</p>\r\n						<p class=\"typography-body-reduced \">Crash Detection<sup class=\"footnote footnote-number\"><a href=\"https://www.apple.com/au/iphone-14-pro/?afid=p238%7ChBtHb2G2-dc_mtid_20925zaz40371_pcrid_81501411771927_pgrid_1304021211234920_&amp;cid=wwa-au-kwbi-iphone--slid---product---iPhone14Pro-Announce-#footnote-6\" aria-label=\"Footnote 6\" data-modal-close=\"\">6</a></sup></p>\r\n					</div>\r\n					<div class=\"iphone-14-pro camera cell row\" align=\"center\">\r\n						<figure class=\"image-icon-14-pro-camera image-icon\" data-anim-lazy-image-download-complete=\"\"></figure>\r\n						<p class=\"typography-body-reduced column \">Pro camera system</p>\r\n						<p class=\"typography-body-reduced feature-note column\">48MP Main <span class=\"span-pipe\">Ultra Wide</span> <span class=\"span-pipe-wrap\">Telephoto</span> Photonic Engine for incredible detail and colour <br>Autofocus on TrueDepth <br>front camera</p>\r\n					</div>\r\n					<div class=\"iphone-14-pro action-mode cell row\" align=\"center\">\r\n						<figure class=\"image-icon-action-mode image-icon\" data-anim-lazy-image-download-complete=\"\"></figure>\r\n						<p class=\"typography-body-reduced column \">Action mode smooths out shaky hand-held&nbsp;videos</p>\r\n					</div>\r\n					<div class=\"iphone-14-pro battery cell row\" align=\"center\">\r\n						<figure class=\"image-icon-battery image-icon\" data-anim-lazy-image-download-complete=\"\"></figure>\r\n						<p class=\"typography-body-reduced column \">Up to 29&nbsp;hours <br>video playback<sup class=\"footnote footnote-number\"><a href=\"https://www.apple.com/au/iphone-14-pro/?afid=p238%7ChBtHb2G2-dc_mtid_20925zaz40371_pcrid_81501411771927_pgrid_1304021211234920_&amp;cid=wwa-au-kwbi-iphone--slid---product---iPhone14Pro-Announce-#footnote-2\" aria-label=\"Footnote 2\" data-modal-close=\"\">2</a></sup></p>\r\n					</div>\r\n					<div class=\"iphone-14-pro chip cell row\" align=\"center\">\r\n						<figure class=\"image-icon-a16 image-icon\" data-anim-lazy-image-download-complete=\"\"></figure>\r\n						<p class=\"typography-body-reduced column \">A16&nbsp;Bionic chip</p>\r\n					</div>\r\n					<div class=\"iphone-14-pro authentication cell row\" align=\"center\">\r\n						<figure class=\"image-icon-face-id image-icon\" data-anim-lazy-image-download-complete=\"\"></figure>\r\n						<p class=\"typography-body-reduced column \">Face&nbsp;ID</p>\r\n					</div>\r\n					<div class=\"iphone-14-pro cellular cell row border-bottom\" align=\"center\">\r\n						<figure class=\"image-icon-5g image-icon\" data-anim-lazy-image-download-complete=\"\"></figure>\r\n						<p class=\"typography-body-reduced column \">Superfast 5G<sup class=\"footnote footnote-number\"><a href=\"https://www.apple.com/au/iphone-14-pro/?afid=p238%7ChBtHb2G2-dc_mtid_20925zaz40371_pcrid_81501411771927_pgrid_1304021211234920_&amp;cid=wwa-au-kwbi-iphone--slid---product---iPhone14Pro-Announce-#footnote-8\" aria-label=\"Footnote 8\" data-modal-close=\"\">8</a></sup></p>\r\n					</div>', 'th-3303491338.jpg', 'iphone_14_pro_max_-_deep_purple1_3-415098607.jpg', 'iPhone-14-Pro-Back-Purple-Hand-1021008568.jpg', 0, 'In Stock', '2023-07-22 17:59:00', ''),
(3, 4, 4, 'Samsung S23 Ultra', 'Samsung', 1999, 0, '<div align=\"center\">5000mAh (typical) battery saves power ,<br>20Hz technology intelligently optimises the refresh rate <br>Capture up to nine frames back to back,<br>Snap in 50MP for detailed, dynamic frames,<br>doubled the resolution on the Wide-angle Camera<br></div><div align=\"center\">&nbsp;superior OIS and noise-reducing tech keeping your scenes cinematic.<br></div>', 'Samsung-Galaxy-S23-Ultra-23902612.jpg', 'galaxy-s23-ultra-rear-colors-1112102073.jpg', 'CMC_60351-705051342.jpg', 0, 'In Stock', '2023-07-23 05:03:15', ''),
(4, 4, 4, 'Google Pixel 7 Pro', 'Google', 1099, 0, '<div align=\"center\">Google Tensor G2 and the Titan M2 security chip<br>6.7 inches<br>QHD+ <br>Quad High Definition<br>OLED Smooth Display,1<br>up to 120 Hz<br>6.3 inches<br>FHD+ <br>Full High Definition<br>OLED Smooth Display,1<br>up to 90 Hz<br>6.1 inches<br>FHD+ <br>Full High Definition<br>OLED Smooth Display,1<br>up to 90 Hz<br>Rear camera<br><br>Triple rear camera system:<br>Wide lens, ultrawide lens,2 telephoto lens<br></div>', 'Pixel-7-Pro-review-0004-755132905.jpg', 'th-3639288466.jpg', 'google-pixel-7-vert-citron-3321624643.jpg', 40, 'In Stock', '2023-07-23 05:04:43', ''),
(5, 4, 4, 'Oneplus 11 5G', 'Oneplus', 1399, 0, '<div align=\"center\">Dial up CPU-Memory bandwidth up to 16X¹<br>Dedicated RAM allocation<br>500MB assigned for process-heavy tasks (e.g. camera)<br>Up to 44 apps alive¹<br>25 mins? 100W Charging on Smart Rapid Charge Mode<br>5000 mAh Supersized battery<br>4 years of peak capacity?<br>Maintain fast charging speed<br>AI Charged Acceleration<br>Special boost when you need the juice<br></div>', '1.jpg', '2.jpg', '3.jpg', 0, 'In Stock', '2023-07-23 05:06:17', ''),
(6, 4, 4, 'Oppo reno 8 pro 5g', 'Oppo', 1099, 0, '<div align=\"center\">Dial up CPU-Memory bandwidth up to 16X¹<br>Dedicated RAM allocation<br>500MB assigned for process-heavy tasks (e.g. camera)<br>Up to 44 apps alive¹<br>25 mins? 100W Charging on Smart Rapid Charge Mode<br>5000 mAh Supersized battery<br>4 years of peak capacity?<br>Maintain fast charging speed<br>AI Charged Acceleration<br>Special boost when you need the juicea<br></div>', '1.jpg', '2.jpg', '3.webp', 5, 'In Stock', '2023-07-23 05:08:07', ''),
(7, 4, 4, 'Nokia Lumia 1520', 'Nokia', 299, 0, '<div align=\"center\">Size:&nbsp;&nbsp;&nbsp; 6.0 inches<br>Resolution:&nbsp;&nbsp;&nbsp; 1920 x 1080 pixels, 368 PPI<br>Technology:&nbsp;&nbsp;&nbsp; IPS LCD<br>Screen-to-body:&nbsp;&nbsp;&nbsp; 70.95 %<br>Peak brightness:&nbsp;&nbsp;&nbsp; 600 cd/m2 (nit)<br>Features:&nbsp;&nbsp;&nbsp; Scratch-resistant glass (Corning Gorilla Glass 2), Ambient light sensor, Proximity sensor, Polarizing filter<br>HARDWARE<br>System chip:&nbsp;&nbsp;&nbsp; Qualcomm Snapdragon 800 MSM8974<br>Processor:&nbsp;&nbsp;&nbsp; Quad-core, 2200 MHz, Krait 400<br>GPU:&nbsp;&nbsp;&nbsp; Adreno 330<br>RAM:&nbsp;&nbsp;&nbsp; 2GB LPDDR3<br>Internal storage:&nbsp;&nbsp;&nbsp; 32GB<br>Storage expansion:&nbsp;&nbsp;&nbsp; microSDXC up to 128 GB<br>Device type:&nbsp;&nbsp;&nbsp; Smartphone<br>OS:&nbsp;&nbsp;&nbsp; Windows Phone, 8.1, 8 Screenshots<br><br>BATTERY<br>Capacity:&nbsp;&nbsp;&nbsp; 3400 mAh<br>Charging:&nbsp;&nbsp;&nbsp; Qi wireless charging<br></div>', '1.jpg', '2.jpg', '3.jpg', 0, 'In Stock', '2023-07-23 05:10:17', ''),
(8, 4, 4, 'Redmi note 11', 'Redmi', 310, 0, '<div align=\"center\">Snapdragon 680</div><div align=\"center\">90Hz AMOLED DotDisplay</div><div align=\"center\">33W Pro fast charging</div>', '1.jpg', '2.jpg', '3.jpg', 0, 'In Stock', '2023-07-23 05:11:54', ''),
(9, 4, 5, 'Affix Back Cover for Mi Redmi Note 4', 'Techguru', 10, 0, '<ul><li>Suitable For: Mobile<br></li><li>Material: Polyurethane<br></li><li>Theme: No Theme<br></li><li>Type: Back Cover<br></li><li>Waterproof<br></li></ul>', 'amzer-amz98947-original-1.jpeg', 'amzer-amz98947-original-2.jpeg', 'amzer-amz98947-original-3.jpeg', 0, 'In Stock', '2023-07-23 05:17:03', ''),
(11, 4, 6, 'Acer ES 15 Pentium Quad Core', 'Acer', 1999, 0, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'acer-aspire-notebook-original-1.jpeg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', 0, 'In Stock', '2023-07-23 05:26:17', ''),
(12, 4, 6, 'Micromax Canvas Laptab II (WIFI) Atom 4th Gen', 'Micromax', 2999, 0, '<ul><li>Intel Atom Processor ( 4th Gen )<br></li><li>2 GB DDR3 RAM<br></li><li>32 bit Windows 10 Operating System<br></li><li>11.6 inch Touchscreen Display<br></li></ul>', 'micromax-lt777w-2-in-1-laptop-original-1.jpeg', 'micromax-lt777w-2-in-1-laptop-original-2.jpeg', 'micromax-lt777w-2-in-1-laptop-original-3.jpeg', 0, 'In Stock', '2023-07-23 05:28:17', ''),
(13, 4, 6, 'HP Core i5 5th Gen', 'HP', 1155, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 0, 'In Stock', '2023-07-23 05:30:24', ''),
(14, 4, 6, 'Lenovo Ideapad 110 APU Quad Core A6 6th Gen', 'Lenovo', 2990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Lenovo Ideapad 110 APU Quad Core A6 6th Gen - (4 GB/500 GB HDD/Windows 10 Home) 80TJ00D2IH IP110 15ACL Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Black, 2.2 kg)</span><br><div><ul><li>AMD APU Quad Core A6 Processor ( 6th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'lenovo-ideapad-notebook-original-1.jpeg', 'lenovo-ideapad-notebook-original-2.jpeg', 'lenovo-ideapad-notebook-3.jpeg', 0, 'In Stock', '2023-07-23 05:32:15', ''),
(15, 3, 8, 'The Wimpy Kid Do -It- Yourself Book', 'ABC', 25, 35, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">The Wimpy Kid Do -It- Yourself Book</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(English, Paperback, Jeff Kinney)</span><br><div><ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Penguin Books Ltd<br></li><li>ISBN: 9780141339665, 0141339667<br></li><li>Edition: 1<br></li></ul></div>', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 3, 'In Stock', '2023-07-23 05:35:13', ''),
(16, 3, 8, 'Thea Stilton and the Tropical Treasure ', 'XYZ', 15, 0, '<ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Scholastic<br></li><li>ISBN: 9789351032083, 9351032086<br></li><li>Edition: 2015<br></li><li>Pages: 176<br></li></ul>', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', 3, 'In Stock', '2023-07-23 05:36:23', ''),
(17, 5, 9, 'Induscraft Solid Wood King Bed With Storage', 'Induscraft', 349, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Induscraft Solid Wood King Bed With Storage</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - Honey Brown)</span><br><div><ul><li>Material Subtype: Rosewood (Sheesham)<br></li><li>W x H x D: 1850 mm x 875 mm x 2057.5 mm<br></li><li>Floor Clearance: 8 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-1.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-2.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-3.jpeg', 0, 'In Stock', '2023-07-23 05:40:37', ''),
(18, 5, 10, 'Nilkamal Ursa Metal Queen Bed', 'Nilkamal', 249, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">@home by Nilkamal Ursa Metal Queen Bed</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - NA)</span><br><div><ul><li>Material Subtype: Carbon Steel<br></li><li>W x H x D: 1590 mm x 910 mm x 2070 mm<br></li><li>Floor Clearance: 341 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-1.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-2.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-3.jpeg', 0, 'In Stock', '2023-07-23 05:42:27', ''),
(19, 6, 12, 'Asian Casuals  (White, White)', 'Asian', 79, 0, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: White, White</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Outer Material: Denim</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><br></div></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 45, 'In Stock', '2023-07-22 21:16:03', ''),
(20, 6, 12, 'Adidas MESSI 16.3 TF Football turf Shoes  (Blue)', 'Adidas', 110, 5000, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: Blue</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Closure: Laced</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Weight</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>200 g (per single Shoe) - Weight of the product may vary depending on size.</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Style</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Panel and Stitch Detail, Textured Detail</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Tip Shape</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Round</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Season</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>AW16</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Closure</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Laced</b></li></ul></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2023-07-22 21:19:22', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2023-07-23 14:30:00', ''),
(3, 4, 'Television', '2023-07-23 17:29:09', ''),
(4, 4, 'Mobiles', '2023-07-23 17:55:48', ''),
(5, 4, 'Mobile Accessories', '2023-07-24 05:12:40', ''),
(6, 4, 'Laptops', '2023-07-24 05:13:00', ''),
(7, 4, 'Computers', '2023-07-24 05:13:27', ''),
(8, 3, 'Comics', '2023-07-24 05:13:54', ''),
(9, 5, 'Beds', '2023-07-24 05:36:45', ''),
(10, 5, 'Sofas', '2023-07-24 05:37:02', ''),
(11, 5, 'Dining Tables', '2017-02-04 04:37:51', ''),
(12, 6, 'Men Footwears', '2023-07-23 21:12:59', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-29 10:12:55', NULL, 1),
(25, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-29 10:21:16', '29-07-2023 03:52:08 PM', 1),
(26, 'pvachhani14@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-29 15:59:58', '29-07-2023 09:35:46 PM', 1),
(27, 'pvachhani14@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-30 06:14:41', NULL, 1);

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
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'ankita', 'abc@gmail.com', 1234567890, '7ac66c0f148de9519b8bd264312c4d64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-29 10:12:32', NULL),
(5, 'Priyank Vachhani', 'pvachhani14@gmail.com', 431836841, '271a64cfd4e0ac7a0d3d5bc28537725b', NULL, NULL, NULL, NULL, 'Y Suites on Waymouth, SA', 'SA', 'Adelaide', 5000, '2023-07-29 15:59:40', NULL),
(6, 'shreya', 'shreya23@gmail.com', 9999999999, 'e807f1fcf82d132f9bb018ca6738a19f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-12 04:00:04', NULL),
(7, 'viren', 'virenm@gmail.com', 9999999999, 'f64609172efea86a5a6fbae12ab86d33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-12 08:36:52', NULL),
(8, 'nikunj', 'nikunj@gmail.com', 9999999999, 'f64609172efea86a5a6fbae12ab86d33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-12 08:38:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '0000-00-00 00:00:00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
