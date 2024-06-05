-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 20, 2024 at 02:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample_2`
--
CREATE DATABASE IF NOT EXISTS `sample_2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `sample_2`;

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `AGENT_CODE` varchar(6) NOT NULL DEFAULT '',
  `AGENT_NAME` varchar(40) DEFAULT NULL,
  `WORKING_AREA` varchar(35) DEFAULT NULL,
  `COMMISSION` decimal(10,2) DEFAULT NULL,
  `PHONE_NO` varchar(15) DEFAULT NULL,
  `COUNTRY` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`AGENT_CODE`, `AGENT_NAME`, `WORKING_AREA`, `COMMISSION`, `PHONE_NO`, `COUNTRY`) VALUES
('A007  ', 'Ramasundar                              ', 'Bangalore                          ', 0.15, '077-25814763   ', '\r'),
('A003  ', 'Alex                                    ', 'London                             ', 0.13, '075-12458969   ', '\r'),
('A008  ', 'Alford                                  ', 'New York                           ', 0.12, '044-25874365   ', '\r'),
('A011  ', 'Ravi Kumar                              ', 'Bangalore                          ', 0.15, '077-45625874   ', '\r'),
('A010  ', 'Santakumar                              ', 'Chennai                            ', 0.14, '007-22388644   ', '\r'),
('A012  ', 'Lucida                                  ', 'San Jose                           ', 0.12, '044-52981425   ', '\r'),
('A005  ', 'Anderson                                ', 'Brisban                            ', 0.13, '045-21447739   ', '\r'),
('A001  ', 'Subbarao                                ', 'Bangalore                          ', 0.14, '077-12346674   ', '\r'),
('A002  ', 'Mukesh                                  ', 'Mumbai                             ', 0.11, '029-12358964   ', '\r'),
('A006  ', 'McDen                                   ', 'London                             ', 0.15, '078-22255588   ', '\r'),
('A004  ', 'Ivan                                    ', 'Torento                            ', 0.15, '008-22544166   ', '\r'),
('A009  ', 'Benjamin                                ', 'Hampshair                          ', 0.11, '008-22536178   ', '\r');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_CODE` varchar(6) NOT NULL,
  `CUST_NAME` varchar(40) NOT NULL,
  `CUST_CITY` varchar(35) DEFAULT NULL,
  `WORKING_AREA` varchar(35) NOT NULL,
  `CUST_COUNTRY` varchar(20) NOT NULL,
  `GRADE` decimal(10,0) DEFAULT NULL,
  `OPENING_AMT` decimal(12,2) DEFAULT NULL,
  `RECEIVE_AMT` decimal(12,2) DEFAULT NULL,
  `PAYMENT_AMT` decimal(12,2) DEFAULT NULL,
  `OUTSTANDING_AMT` decimal(12,2) DEFAULT NULL,
  `PHONE_NO` varchar(17) NOT NULL,
  `AGENT_CODE` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_CODE`, `CUST_NAME`, `CUST_CITY`, `WORKING_AREA`, `CUST_COUNTRY`, `GRADE`, `OPENING_AMT`, `RECEIVE_AMT`, `PAYMENT_AMT`, `OUTSTANDING_AMT`, `PHONE_NO`, `AGENT_CODE`) VALUES
('C00013', 'Holmes', 'London                             ', 'London', 'UK', 2, 6000.00, 5000.00, 7000.00, 4000.00, 'BBBBBBB', 'A003  '),
('C00001', 'Micheal', 'New York                           ', 'New York', 'USA', 2, 3000.00, 5000.00, 2000.00, 6000.00, 'CCCCCCC', 'A008  '),
('C00020', 'Albert', 'New York                           ', 'New York', 'USA', 3, 5000.00, 7000.00, 6000.00, 6000.00, 'BBBBSBB', 'A008  '),
('C00025', 'Ravindran', 'Bangalore                          ', 'Bangalore', 'India', 2, 5000.00, 7000.00, 4000.00, 8000.00, 'AVAVAVA', 'A011  '),
('C00024', 'Cook', 'London                             ', 'London', 'UK', 2, 4000.00, 9000.00, 7000.00, 6000.00, 'FSDDSDF', 'A006  '),
('C00015', 'Stuart', 'London                             ', 'London', 'UK', 1, 6000.00, 8000.00, 3000.00, 11000.00, 'GFSGERS', 'A003  '),
('C00002', 'Bolt', 'New York                           ', 'New York', 'USA', 3, 5000.00, 7000.00, 9000.00, 3000.00, 'DDNRDRH', 'A008  '),
('C00018', 'Fleming', 'Brisban                            ', 'Brisban', 'Australia', 2, 7000.00, 7000.00, 9000.00, 5000.00, 'NHBGVFC', 'A005  '),
('C00021', 'Jacks', 'Brisban                            ', 'Brisban', 'Australia', 1, 7000.00, 7000.00, 7000.00, 7000.00, 'WERTGDF', 'A005  '),
('C00019', 'Yearannaidu', 'Chennai                            ', 'Chennai', 'India', 1, 8000.00, 7000.00, 7000.00, 8000.00, 'ZZZZBFV', 'A010  '),
('C00005', 'Sasikant', 'Mumbai                             ', 'Mumbai', 'India', 1, 7000.00, 11000.00, 7000.00, 11000.00, '147-25896312', 'A002  '),
('C00007', 'Ramanathan', 'Chennai                            ', 'Chennai', 'India', 1, 7000.00, 11000.00, 9000.00, 9000.00, 'GHRDWSD', 'A010  '),
('C00022', 'Avinash', 'Mumbai                             ', 'Mumbai', 'India', 2, 7000.00, 11000.00, 9000.00, 9000.00, '113-12345678', 'A002  '),
('C00004', 'Winston', 'Brisban                            ', 'Brisban', 'Australia', 1, 5000.00, 8000.00, 7000.00, 6000.00, 'AAAAAAA', 'A005  '),
('C00023', 'Karl', 'London                             ', 'London', 'UK', 0, 4000.00, 6000.00, 7000.00, 3000.00, 'AAAABAA', 'A006  '),
('C00006', 'Shilton', 'Torento                            ', 'Torento', 'Canada', 1, 10000.00, 7000.00, 6000.00, 11000.00, 'DDDDDDD', 'A004  '),
('C00010', 'Charles', 'Hampshair                          ', 'Hampshair', 'UK', 3, 6000.00, 4000.00, 5000.00, 5000.00, 'MMMMMMM', 'A009  '),
('C00017', 'Srinivas', 'Bangalore                          ', 'Bangalore', 'India', 2, 8000.00, 4000.00, 3000.00, 9000.00, 'AAAAAAB', 'A007  '),
('C00012', 'Steven', 'San Jose                           ', 'San Jose', 'USA', 1, 5000.00, 7000.00, 9000.00, 3000.00, 'KRFYGJK', 'A012  '),
('C00008', 'Karolina', 'Torento                            ', 'Torento', 'Canada', 1, 7000.00, 7000.00, 9000.00, 5000.00, 'HJKORED', 'A004  '),
('C00003', 'Martin', 'Torento                            ', 'Torento', 'Canada', 2, 8000.00, 7000.00, 7000.00, 8000.00, 'MJYURFD', 'A004  '),
('C00009', 'Ramesh', 'Mumbai                             ', 'Mumbai', 'India', 3, 8000.00, 7000.00, 3000.00, 12000.00, 'Phone No', 'A002  '),
('C00014', 'Rangarappa', 'Bangalore                          ', 'Bangalore', 'India', 2, 8000.00, 11000.00, 7000.00, 12000.00, 'AAAATGF', 'A001  '),
('C00016', 'Venkatpati', 'Bangalore                          ', 'Bangalore', 'India', 2, 8000.00, 11000.00, 7000.00, 12000.00, 'JRTVFDD', 'A007  '),
('C00011', 'Sundariya', 'Chennai                            ', 'Chennai', 'India', 3, 7000.00, 11000.00, 7000.00, 11000.00, 'PPHGRTS', 'A010  '),
('C00026', 'SARA', 'JERUSALEM', 'JERUSALEM', 'ISRAEL', NULL, NULL, NULL, NULL, NULL, '0555685229', 'A003');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ORD_NUM` decimal(6,0) DEFAULT NULL,
  `ORD_AMOUNT` decimal(12,2) DEFAULT NULL,
  `ADVANCE_AMOUNT` decimal(12,2) DEFAULT NULL,
  `ORD_DATE` date DEFAULT NULL,
  `CUST_CODE` varchar(6) DEFAULT NULL,
  `AGENT_CODE` varchar(6) DEFAULT NULL,
  `ORD_DESCRIPTION` varchar(60) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ORD_NUM`, `ORD_AMOUNT`, `ADVANCE_AMOUNT`, `ORD_DATE`, `CUST_CODE`, `AGENT_CODE`, `ORD_DESCRIPTION`) VALUES
(200100, 1000.00, 600.00, '2008-01-08', 'C00015', 'A003  ', 'SOD\r'),
(200110, 3000.00, 500.00, '2008-04-15', 'C00019', 'A010  ', 'SOD\r'),
(200107, 4500.00, 900.00, '2008-08-30', 'C00007', 'A010  ', 'SOD\r'),
(200112, 2000.00, 400.00, '2008-05-30', 'C00016', 'A007  ', 'SOD\r'),
(200113, 4000.00, 600.00, '2008-06-10', 'C00022', 'A002  ', 'SOD\r'),
(200102, 2000.00, 300.00, '2008-05-25', 'C00012', 'A012  ', 'SOD\r'),
(200114, 3500.00, 2000.00, '2008-08-15', 'C00002', 'A008  ', 'SOD\r'),
(200122, 2500.00, 400.00, '2008-09-16', 'C00003', 'A004  ', 'SOD\r'),
(200118, 500.00, 100.00, '2008-07-20', 'C00023', 'A006  ', 'SOD\r'),
(200119, 4000.00, 700.00, '2008-09-16', 'C00007', 'A010  ', 'SOD\r'),
(200121, 1500.00, 600.00, '2008-09-23', 'C00008', 'A004  ', 'SOD\r'),
(200130, 2500.00, 400.00, '2008-07-30', 'C00025', 'A011  ', 'SOD\r'),
(200134, 4200.00, 1800.00, '2008-09-25', 'C00004', 'A005  ', 'SOD\r'),
(200115, 2000.00, 1200.00, '2008-02-08', 'C00013', 'A013  ', 'SOD\r'),
(200108, 4000.00, 600.00, '2008-02-15', 'C00008', 'A004  ', 'SOD\r'),
(200103, 1500.00, 700.00, '2008-05-15', 'C00021', 'A005  ', 'SOD\r'),
(200105, 2500.00, 500.00, '2008-07-18', 'C00025', 'A011  ', 'SOD\r'),
(200109, 3500.00, 800.00, '2008-07-30', 'C00011', 'A010  ', 'SOD\r'),
(200101, 3000.00, 1000.00, '2008-07-15', 'C00001', 'A008  ', 'SOD\r'),
(200111, 1000.00, 300.00, '2008-07-10', 'C00020', 'A008  ', 'SOD\r'),
(200104, 1500.00, 500.00, '2008-03-13', 'C00006', 'A004  ', 'SOD\r'),
(200106, 2500.00, 700.00, '2008-04-20', 'C00005', 'A002  ', 'SOD\r'),
(200125, 2000.00, 600.00, '2008-10-10', 'C00018', 'A005  ', 'SOD\r'),
(200117, 800.00, 200.00, '2008-10-20', 'C00014', 'A001  ', 'SOD\r'),
(200123, 500.00, 100.00, '2008-09-16', 'C00022', 'A002  ', 'SOD\r'),
(200120, 500.00, 100.00, '2008-07-20', 'C00009', 'A002  ', 'SOD\r'),
(200116, 500.00, 100.00, '2008-07-13', 'C00010', 'A009  ', 'SOD\r'),
(200124, 500.00, 100.00, '2008-06-20', 'C00017', 'A007  ', 'SOD\r'),
(200126, 500.00, 100.00, '2008-06-24', 'C00022', 'A002  ', 'SOD\r'),
(200129, 2500.00, 500.00, '2008-07-20', 'C00024', 'A006  ', 'SOD\r'),
(200127, 2500.00, 400.00, '2008-07-20', 'C00015', 'A003  ', 'SOD\r'),
(200128, 3500.00, 1500.00, '2008-07-20', 'C00009', 'A002  ', 'SOD\r'),
(200135, 2000.00, 800.00, '2008-09-16', 'C00007', 'A010  ', 'SOD\r'),
(200131, 900.00, 150.00, '2008-08-26', 'C00012', 'A012  ', 'SOD\r'),
(200133, 1200.00, 400.00, '2008-06-29', 'C00009', 'A002  ', 'SOD\r'),
(200132, 4000.00, 2000.00, '2008-08-15', 'C00013', 'A013  ', 'SOD\r');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `model_year` smallint(6) NOT NULL,
  `list_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `brand_id`, `category_id`, `model_year`, `list_price`) VALUES
(1, 'Trek 820 - 2016', 9, 6, 2016, 459.79),
(2, 'Ritchey Timberwolf Frameset - 2016', 5, 6, 2016, 906.55),
(3, 'Surly Wednesday Frameset - 2016', 8, 6, 2016, 1209.99),
(4, 'Trek Fuel EX 8 29 - 2016', 9, 6, 2016, 3508.99),
(5, 'Heller Shagamaw Frame - 2016', 3, 6, 2016, 1598.40),
(6, 'Surly Ice Cream Truck Frameset - 2016', 8, 6, 2016, 568.69),
(7, 'Trek Slash 8 27.5 - 2016', 9, 6, 2016, 4839.99),
(8, 'Trek Remedy 29 Carbon Frameset - 2016', 9, 6, 2016, 2177.99),
(9, 'Trek Conduit+ - 2016', 9, 5, 2016, 3629.99),
(10, 'Surly Straggler - 2016', 8, 4, 2016, 1874.29),
(11, 'Surly Straggler 650b - 2016', 8, 4, 2016, 2034.00),
(12, 'Electra Townie Original 21D - 2016', 1, 3, 2016, 665.49),
(13, 'Electra Cruiser 1 (24-Inch) - 2016', 1, 3, 2016, 326.69),
(14, 'Electra Girl\'s Hawaii 1 (16-inch) - 2015/2016', 1, 3, 2016, 326.69),
(15, 'Electra Moto 1 - 2016', 1, 3, 2016, 641.29),
(16, 'Electra Townie Original 7D EQ - 2016', 1, 3, 2016, 725.99),
(17, 'Pure Cycles Vine 8-Speed - 2016', 4, 3, 2016, 519.09),
(18, 'Pure Cycles Western 3-Speed - Women\'s - 2015/2016', 4, 3, 2016, 543.29),
(19, 'Pure Cycles William 3-Speed - 2016', 4, 3, 2016, 543.29),
(20, 'Electra Townie Original 7D EQ - Women\'s - 2016', 1, 3, 2016, 725.99),
(21, 'Electra Cruiser 1 (24-Inch) - 2016', 1, 1, 2016, 326.69),
(22, 'Electra Girl\'s Hawaii 1 (16-inch) - 2015/2016', 1, 1, 2016, 326.69),
(24, 'Electra Townie Original 21D - 2016', 1, 2, 2016, 665.49),
(25, 'Electra Townie Original 7D - 2015/2016', 1, 2, 2016, 604.99),
(26, 'Electra Townie Original 7D EQ - 2016', 1, 2, 2016, 725.99),
(27, 'Surly Big Dummy Frameset - 2017', 8, 6, 2017, 999.99),
(28, 'Surly Karate Monkey 27.5+ Frameset - 2017', 8, 6, 2017, 2499.99),
(29, 'Trek X-Caliber 8 - 2017', 9, 6, 2017, 999.99),
(30, 'Surly Ice Cream Truck Frameset - 2017', 8, 6, 2017, 999.99),
(31, 'Surly Wednesday - 2017', 8, 6, 2017, 1632.99),
(32, 'Trek Farley Alloy Frameset - 2017', 9, 6, 2017, 469.99),
(33, 'Surly Wednesday Frameset - 2017', 8, 6, 2017, 469.99),
(34, 'Trek Session DH 27.5 Carbon Frameset - 2017', 9, 6, 2017, 469.99),
(35, 'Sun Bicycles Spider 3i - 2017', 7, 6, 2017, 832.99),
(36, 'Surly Troll Frameset - 2017', 8, 6, 2017, 832.99),
(37, 'Haro Flightline One ST - 2017', 2, 6, 2017, 379.99),
(38, 'Haro Flightline Two 26 Plus - 2017', 2, 6, 2017, 549.99),
(39, 'Trek Stache 5 - 2017', 9, 6, 2017, 1499.99),
(40, 'Trek Fuel EX 9.8 29 - 2017', 9, 6, 2017, 4999.99),
(41, 'Haro Shift R3 - 2017', 2, 6, 2017, 1469.99),
(42, 'Trek Fuel EX 5 27.5 Plus - 2017', 9, 6, 2017, 2299.99),
(43, 'Trek Fuel EX 9.8 27.5 Plus - 2017', 9, 6, 2017, 5299.99),
(44, 'Haro SR 1.1 - 2017', 2, 6, 2017, 539.99),
(45, 'Haro SR 1.2 - 2017', 2, 6, 2017, 869.99),
(46, 'Haro SR 1.3 - 2017', 2, 6, 2017, 1409.99),
(47, 'Trek Remedy 9.8 - 2017', 9, 6, 2017, 5299.99),
(48, 'Trek Emonda S 4 - 2017', 9, 7, 2017, 1499.99),
(49, 'Trek Domane SL 6 - 2017', 9, 7, 2017, 3499.99),
(50, 'Trek Silque SLR 7 Women\'s - 2017', 9, 7, 2017, 5999.99),
(51, 'Trek Silque SLR 8 Women\'s - 2017', 9, 7, 2017, 6499.99),
(52, 'Surly Steamroller - 2017', 8, 7, 2017, 875.99),
(53, 'Surly Ogre Frameset - 2017', 8, 7, 2017, 749.99),
(54, 'Trek Domane SL Disc Frameset - 2017', 9, 7, 2017, 3199.99),
(55, 'Trek Domane S 6 - 2017', 9, 7, 2017, 2699.99),
(56, 'Trek Domane SLR 6 Disc - 2017', 9, 7, 2017, 5499.99),
(57, 'Trek Emonda S 5 - 2017', 9, 7, 2017, 1999.99),
(58, 'Trek Madone 9.2 - 2017', 9, 7, 2017, 4999.99),
(59, 'Trek Domane S 5 Disc - 2017', 9, 7, 2017, 2599.99),
(60, 'Sun Bicycles ElectroLite - 2017', 7, 5, 2017, 1559.99),
(61, 'Trek Powerfly 8 FS Plus - 2017', 9, 5, 2017, 4999.99),
(62, 'Trek Boone 7 - 2017', 9, 4, 2017, 3499.99),
(63, 'Trek Boone Race Shop Limited - 2017', 9, 4, 2017, 3499.99),
(64, 'Electra Townie Original 7D - 2017', 1, 3, 2017, 489.99),
(65, 'Sun Bicycles Lil Bolt Type-R - 2017', 7, 3, 2017, 346.99),
(66, 'Sun Bicycles Revolutions 24 - 2017', 7, 3, 2017, 250.99),
(67, 'Sun Bicycles Revolutions 24 - Girl\'s - 2017', 7, 3, 2017, 250.99),
(68, 'Sun Bicycles Cruz 3 - 2017', 7, 3, 2017, 449.99),
(69, 'Sun Bicycles Cruz 7 - 2017', 7, 3, 2017, 416.99),
(70, 'Electra Amsterdam Original 3i - 2015/2017', 1, 3, 2017, 659.99),
(71, 'Sun Bicycles Atlas X-Type - 2017', 7, 3, 2017, 416.99),
(72, 'Sun Bicycles Biscayne Tandem 7 - 2017', 7, 3, 2017, 619.99),
(73, 'Sun Bicycles Brickell Tandem 7 - 2017', 7, 3, 2017, 749.99),
(74, 'Electra Cruiser Lux 1 - 2017', 1, 3, 2017, 439.99),
(75, 'Electra Cruiser Lux Fat Tire 1 Ladies - 2017', 1, 3, 2017, 599.99),
(76, 'Electra Girl\'s Hawaii 1 16\" - 2017', 1, 3, 2017, 299.99),
(77, 'Electra Glam Punk 3i Ladies\' - 2017', 1, 3, 2017, 799.99),
(78, 'Sun Bicycles Biscayne Tandem CB - 2017', 7, 3, 2017, 647.99),
(79, 'Sun Bicycles Boardwalk (24-inch Wheels) - 2017', 7, 3, 2017, 402.99),
(80, 'Sun Bicycles Brickell Tandem CB - 2017', 7, 3, 2017, 761.99),
(81, 'Electra Amsterdam Fashion 7i Ladies\' - 2017', 1, 3, 2017, 1099.99),
(82, 'Electra Amsterdam Original 3i Ladies\' - 2017', 1, 3, 2017, 659.99),
(83, 'Trek Boy\'s Kickster - 2015/2017', 9, 1, 2017, 149.99),
(84, 'Sun Bicycles Lil Kitt\'n - 2017', 7, 1, 2017, 109.99),
(85, 'Haro Downtown 16 - 2017', 2, 1, 2017, 329.99),
(86, 'Trek Girl\'s Kickster - 2017', 9, 1, 2017, 149.99),
(87, 'Trek Precaliber 12 Boys - 2017', 9, 1, 2017, 189.99),
(88, 'Trek Precaliber 12 Girls - 2017', 9, 1, 2017, 189.99),
(89, 'Trek Precaliber 16 Boys - 2017', 9, 1, 2017, 209.99),
(90, 'Trek Precaliber 16 Girls - 2017', 9, 1, 2017, 209.99),
(91, 'Trek Precaliber 24 (21-Speed) - Girls - 2017', 9, 1, 2017, 349.99),
(92, 'Haro Shredder 20 - 2017', 2, 1, 2017, 209.99),
(93, 'Haro Shredder 20 Girls - 2017', 2, 1, 2017, 209.99),
(94, 'Haro Shredder Pro 20 - 2017', 2, 1, 2017, 249.99),
(95, 'Electra Girl\'s Hawaii 1 16\" - 2017', 1, 1, 2017, 299.99),
(96, 'Electra Moto 3i (20-inch) - Boy\'s - 2017', 1, 1, 2017, 349.99),
(97, 'Electra Savannah 3i (20-inch) - Girl\'s - 2017', 1, 1, 2017, 349.99),
(98, 'Electra Straight 8 3i (20-inch) - Boy\'s - 2017', 1, 1, 2017, 489.99),
(99, 'Electra Sugar Skulls 1 (20-inch) - Girl\'s - 2017', 1, 1, 2017, 299.99),
(100, 'Electra Townie 3i EQ (20-inch) - Boys\' - 2017', 1, 1, 2017, 489.99),
(101, 'Electra Townie 7D (20-inch) - Boys\' - 2017', 1, 1, 2017, 339.99),
(102, 'Electra Townie Original 7D - 2017', 1, 2, 2017, 489.99),
(103, 'Sun Bicycles Streamway 3 - 2017', 7, 2, 2017, 551.99),
(104, 'Sun Bicycles Streamway - 2017', 7, 2, 2017, 481.99),
(105, 'Sun Bicycles Streamway 7 - 2017', 7, 2, 2017, 533.99),
(106, 'Sun Bicycles Cruz 3 - 2017', 7, 2, 2017, 449.99),
(107, 'Sun Bicycles Cruz 7 - 2017', 7, 2, 2017, 416.99),
(108, 'Sun Bicycles Cruz 3 - Women\'s - 2017', 7, 2, 2017, 449.99),
(109, 'Sun Bicycles Cruz 7 - Women\'s - 2017', 7, 2, 2017, 416.99),
(110, 'Sun Bicycles Drifter 7 - 2017', 7, 2, 2017, 470.99),
(111, 'Sun Bicycles Drifter 7 - Women\'s - 2017', 7, 2, 2017, 470.99),
(112, 'Trek 820 - 2018', 9, 6, 2018, 379.99),
(113, 'Trek Marlin 5 - 2018', 9, 6, 2018, 489.99),
(114, 'Trek Marlin 6 - 2018', 9, 6, 2018, 579.99),
(115, 'Trek Fuel EX 8 29 - 2018', 9, 6, 2018, 3199.99),
(116, 'Trek Marlin 7 - 2017/2018', 9, 6, 2018, 749.99),
(117, 'Trek Ticket S Frame - 2018', 9, 6, 2018, 1469.99),
(118, 'Trek X-Caliber 8 - 2018', 9, 6, 2018, 999.99),
(119, 'Trek Kids\' Neko - 2018', 9, 6, 2018, 469.99),
(120, 'Trek Fuel EX 7 29 - 2018', 9, 6, 2018, 2499.99),
(121, 'Surly Krampus Frameset - 2018', 8, 6, 2018, 2499.99),
(122, 'Surly Troll Frameset - 2018', 8, 6, 2018, 2499.99),
(123, 'Trek Farley Carbon Frameset - 2018', 9, 6, 2018, 999.99),
(126, 'Surly Big Fat Dummy Frameset - 2018', 8, 6, 2018, 469.99),
(127, 'Surly Pack Rat Frameset - 2018', 8, 6, 2018, 469.99),
(130, 'Trek Stache Carbon Frameset - 2018', 9, 6, 2018, 919.99),
(133, 'Trek Procaliber Frameset - 2018', 9, 6, 2018, 1499.99),
(134, 'Trek Remedy 27.5 C Frameset - 2018', 9, 6, 2018, 1499.99),
(135, 'Trek X-Caliber Frameset - 2018', 9, 6, 2018, 1499.99),
(136, 'Trek Procaliber 6 - 2018', 9, 6, 2018, 1799.99),
(139, 'Trek Remedy 7 27.5 - 2018', 9, 6, 2018, 2999.99),
(140, 'Trek Remedy 9.8 27.5 - 2018', 9, 6, 2018, 4999.99),
(141, 'Trek Stache 5 - 2018', 9, 6, 2018, 1599.99),
(142, 'Trek Fuel EX 8 29 XT - 2018', 9, 6, 2018, 3199.99),
(143, 'Trek Domane ALR 3 - 2018', 9, 7, 2018, 1099.99),
(144, 'Trek Domane ALR 4 Disc - 2018', 9, 7, 2018, 1549.99),
(145, 'Trek Domane ALR 5 Disc - 2018', 9, 7, 2018, 1799.99),
(146, 'Trek Domane SLR 6 - 2018', 9, 7, 2018, 4999.99),
(147, 'Trek Domane ALR 5 Gravel - 2018', 9, 7, 2018, 1799.99),
(148, 'Trek Domane SL 8 Disc - 2018', 9, 7, 2018, 5499.99),
(149, 'Trek Domane SLR 8 Disc - 2018', 9, 7, 2018, 7499.99),
(150, 'Trek Emonda SL 7 - 2018', 9, 7, 2018, 4499.99),
(151, 'Trek Domane ALR 4 Disc Women\'s - 2018', 9, 7, 2018, 1549.99),
(152, 'Trek Domane SL 5 Disc Women\'s - 2018', 9, 7, 2018, 2499.99),
(153, 'Trek Domane SL 7 Women\'s - 2018', 9, 7, 2018, 4999.99),
(154, 'Trek Domane SLR 6 Disc Women\'s - 2018', 9, 7, 2018, 5499.99),
(155, 'Trek Domane SLR 9 Disc - 2018', 9, 7, 2018, 11999.99),
(156, 'Trek Domane SL Frameset - 2018', 9, 7, 2018, 6499.99),
(157, 'Trek Domane SL Frameset Women\'s - 2018', 9, 7, 2018, 6499.99),
(158, 'Trek CrossRip 1 - 2018', 9, 7, 2018, 959.99),
(159, 'Trek Emonda ALR 6 - 2018', 9, 7, 2018, 2299.99),
(160, 'Trek Emonda SLR 6 - 2018', 9, 7, 2018, 4499.99),
(161, 'Surly ECR - 2018', 8, 7, 2018, 1899.00),
(162, 'Trek Emonda SL 6 Disc - 2018', 9, 7, 2018, 2999.99),
(163, 'Surly Pack Rat - 2018', 8, 7, 2018, 1349.00),
(164, 'Surly Straggler 650b - 2018', 8, 7, 2018, 1549.00),
(165, 'Trek 1120 - 2018', 9, 7, 2018, 2499.99),
(166, 'Trek Domane AL 2 Women\'s - 2018', 9, 7, 2018, 749.99),
(167, 'Surly ECR Frameset - 2018', 8, 7, 2018, 749.99),
(168, 'Surly Straggler - 2018', 8, 7, 2018, 1549.00),
(169, 'Trek Emonda SLR 8 - 2018', 9, 7, 2018, 6499.99),
(170, 'Trek CrossRip 2 - 2018', 9, 7, 2018, 1299.99),
(171, 'Trek Domane SL 6 - 2018', 9, 7, 2018, 3199.99),
(172, 'Trek Domane ALR Disc Frameset - 2018', 9, 7, 2018, 3199.99),
(173, 'Trek Domane ALR Frameset - 2018', 9, 7, 2018, 3199.99),
(174, 'Trek Domane SLR Disc Frameset - 2018', 9, 7, 2018, 3199.99),
(175, 'Trek Domane SLR Frameset - 2018', 9, 7, 2018, 3199.99),
(176, 'Trek Madone 9 Frameset - 2018', 9, 7, 2018, 3199.99),
(177, 'Trek Domane SLR 6 Disc - 2018', 9, 7, 2018, 5499.99),
(178, 'Trek Domane AL 2 - 2018', 9, 7, 2018, 749.99),
(179, 'Trek Domane AL 3 - 2018', 9, 7, 2018, 919.99),
(180, 'Trek Domane AL 3 Women\'s - 2018', 9, 7, 2018, 919.99),
(181, 'Trek Domane SL 5 - 2018', 9, 7, 2018, 2199.99),
(182, 'Trek Domane SL 5 Disc - 2018', 9, 7, 2018, 2499.99),
(183, 'Trek Domane SL 5 Women\'s - 2018', 9, 7, 2018, 2199.99),
(184, 'Trek Domane SL 6 Disc - 2018', 9, 7, 2018, 3499.99),
(185, 'Trek Conduit+ - 2018', 9, 5, 2018, 2799.99),
(186, 'Trek CrossRip+ - 2018', 9, 5, 2018, 4499.99),
(187, 'Trek Neko+ - 2018', 9, 5, 2018, 2799.99),
(188, 'Trek XM700+ Lowstep - 2018', 9, 5, 2018, 3499.99),
(189, 'Trek Lift+ Lowstep - 2018', 9, 5, 2018, 2799.99),
(190, 'Trek Dual Sport+ - 2018', 9, 5, 2018, 2799.99),
(191, 'Electra Loft Go! 8i - 2018', 1, 5, 2018, 2799.99),
(192, 'Electra Townie Go! 8i - 2017/2018', 1, 5, 2018, 2599.99),
(193, 'Trek Lift+ - 2018', 9, 5, 2018, 2799.99),
(194, 'Trek XM700+ - 2018', 9, 5, 2018, 3499.99),
(195, 'Electra Townie Go! 8i Ladies\' - 2018', 1, 5, 2018, 2599.99),
(196, 'Trek Verve+ - 2018', 9, 5, 2018, 2299.99),
(197, 'Trek Verve+ Lowstep - 2018', 9, 5, 2018, 2299.99),
(198, 'Electra Townie Commute Go! - 2018', 1, 5, 2018, 2999.99),
(199, 'Electra Townie Commute Go! Ladies\' - 2018', 1, 5, 2018, 2999.99),
(200, 'Trek Powerfly 5 - 2018', 9, 5, 2018, 3499.99),
(201, 'Trek Powerfly 5 FS - 2018', 9, 5, 2018, 4499.99),
(202, 'Trek Powerfly 5 Women\'s - 2018', 9, 5, 2018, 3499.99),
(203, 'Trek Powerfly 7 FS - 2018', 9, 5, 2018, 4999.99),
(204, 'Trek Super Commuter+ 7 - 2018', 9, 5, 2018, 3599.99),
(205, 'Trek Super Commuter+ 8S - 2018', 9, 5, 2018, 4999.99),
(206, 'Trek Boone 5 Disc - 2018', 9, 4, 2018, 3299.99),
(207, 'Trek Boone 7 Disc - 2018', 9, 4, 2018, 3999.99),
(208, 'Trek Crockett 5 Disc - 2018', 9, 4, 2018, 1799.99),
(209, 'Trek Crockett 7 Disc - 2018', 9, 4, 2018, 2999.99),
(210, 'Surly Straggler - 2018', 8, 4, 2018, 1549.00),
(211, 'Surly Straggler 650b - 2018', 8, 4, 2018, 1549.00),
(212, 'Electra Townie Original 21D - 2018', 1, 3, 2018, 559.99),
(213, 'Electra Cruiser 1 - 2016/2017/2018', 1, 3, 2018, 269.99),
(214, 'Electra Tiger Shark 3i - 2018', 1, 3, 2018, 899.99),
(215, 'Electra Queen of Hearts 3i - 2018', 1, 3, 2018, 749.99),
(216, 'Electra Super Moto 8i - 2018', 1, 3, 2018, 899.99),
(217, 'Electra Straight 8 3i - 2018', 1, 3, 2018, 909.99),
(218, 'Electra Cruiser 7D - 2016/2017/2018', 1, 3, 2018, 319.99),
(219, 'Electra Moto 3i - 2018', 1, 3, 2018, 639.99),
(220, 'Electra Cruiser 1 Ladies\' - 2018', 1, 3, 2018, 269.99),
(221, 'Electra Cruiser 7D Ladies\' - 2016/2018', 1, 3, 2018, 319.99),
(222, 'Electra Cruiser 1 Tall - 2016/2018', 1, 3, 2018, 269.99),
(223, 'Electra Cruiser Lux 3i - 2018', 1, 3, 2018, 529.99),
(224, 'Electra Cruiser Lux 7D - 2018', 1, 3, 2018, 479.99),
(225, 'Electra Delivery 3i - 2016/2017/2018', 1, 3, 2018, 959.99),
(226, 'Electra Townie Original 21D EQ - 2017/2018', 1, 3, 2018, 679.99),
(227, 'Electra Cruiser 7D (24-Inch) Ladies\' - 2016/2018', 1, 3, 2018, 319.99),
(228, 'Electra Cruiser 7D Tall - 2016/2018', 1, 3, 2018, 319.99),
(229, 'Electra Cruiser Lux 1 - 2016/2018', 1, 3, 2018, 429.99),
(230, 'Electra Cruiser Lux 1 Ladies\' - 2018', 1, 3, 2018, 429.99),
(231, 'Electra Cruiser Lux 3i Ladies\' - 2018', 1, 3, 2018, 529.99),
(232, 'Electra Cruiser Lux 7D Ladies\' - 2018', 1, 3, 2018, 479.99),
(233, 'Electra Cruiser Lux Fat Tire 7D - 2018', 1, 3, 2018, 639.99),
(234, 'Electra Daydreamer 3i Ladies\' - 2018', 1, 3, 2018, 899.99),
(235, 'Electra Koa 3i Ladies\' - 2018', 1, 3, 2018, 899.99),
(236, 'Electra Morningstar 3i Ladies\' - 2018', 1, 3, 2018, 749.99),
(237, 'Electra Relic 3i - 2018', 1, 3, 2018, 849.99),
(238, 'Electra Townie Balloon 8D EQ - 2016/2017/2018', 1, 3, 2018, 749.99),
(239, 'Electra Townie Balloon 8D EQ Ladies\' - 2016/2017/2018', 1, 3, 2018, 749.99),
(240, 'Electra Townie Commute 27D Ladies - 2018', 1, 3, 2018, 899.99),
(241, 'Electra Townie Commute 8D - 2018', 1, 3, 2018, 749.99),
(242, 'Electra Townie Commute 8D Ladies\' - 2018', 1, 3, 2018, 699.99),
(243, 'Electra Townie Original 21D EQ Ladies\' - 2018', 1, 3, 2018, 679.99),
(244, 'Electra Townie Original 21D Ladies\' - 2018', 1, 3, 2018, 559.99),
(245, 'Electra Townie Original 3i EQ - 2017/2018', 1, 3, 2018, 659.99),
(246, 'Electra Townie Original 3i EQ Ladies\' - 2018', 1, 3, 2018, 639.99),
(247, 'Electra Townie Original 7D EQ - 2018', 1, 3, 2018, 599.99),
(248, 'Electra Townie Original 7D EQ Ladies\' - 2017/2018', 1, 3, 2018, 599.99),
(249, 'Electra White Water 3i - 2018', 1, 3, 2018, 749.99),
(250, 'Electra Townie Go! 8i - 2017/2018', 1, 3, 2018, 2599.99),
(251, 'Electra Townie Commute Go! - 2018', 1, 3, 2018, 2999.99),
(252, 'Electra Townie Commute Go! Ladies\' - 2018', 1, 3, 2018, 2999.99),
(253, 'Electra Townie Go! 8i Ladies\' - 2018', 1, 3, 2018, 2599.99),
(254, 'Electra Townie Balloon 3i EQ - 2017/2018', 1, 3, 2018, 749.99),
(255, 'Electra Townie Balloon 7i EQ Ladies\' - 2017/2018', 1, 3, 2018, 899.99),
(256, 'Electra Townie Commute 27D - 2018', 1, 3, 2018, 899.99),
(257, 'Electra Amsterdam Fashion 3i Ladies\' - 2017/2018', 1, 3, 2018, 899.99),
(258, 'Electra Amsterdam Royal 8i - 2017/2018', 1, 3, 2018, 1259.90),
(259, 'Electra Amsterdam Royal 8i Ladies - 2018', 1, 3, 2018, 1199.99),
(260, 'Electra Townie Balloon 3i EQ Ladies\' - 2018', 1, 3, 2018, 799.99),
(261, 'Electra Townie Balloon 7i EQ - 2018', 1, 3, 2018, 899.99),
(262, 'Trek MT 201 - 2018', 9, 1, 2018, 249.99),
(263, 'Strider Classic 12 Balance Bike - 2018', 6, 1, 2018, 89.99),
(264, 'Strider Sport 16 - 2018', 6, 1, 2018, 249.99),
(265, 'Strider Strider 20 Sport - 2018', 6, 1, 2018, 289.99),
(266, 'Trek Superfly 20 - 2018', 9, 1, 2018, 399.99),
(267, 'Trek Precaliber 12 Girl\'s - 2018', 9, 1, 2018, 199.99),
(268, 'Trek Kickster - 2018', 9, 1, 2018, 159.99),
(269, 'Trek Precaliber 12 Boy\'s - 2018', 9, 1, 2018, 199.99),
(270, 'Trek Precaliber 16 Boy\'s - 2018', 9, 1, 2018, 209.99),
(271, 'Trek Precaliber 16 Girl\'s - 2018', 9, 1, 2018, 209.99),
(272, 'Trek Precaliber 20 6-speed Boy\'s - 2018', 9, 1, 2018, 289.99),
(273, 'Trek Precaliber 20 6-speed Girl\'s - 2018', 9, 1, 2018, 289.99),
(274, 'Trek Precaliber 20 Boy\'s - 2018', 9, 1, 2018, 229.99),
(275, 'Trek Precaliber 20 Girl\'s - 2018', 9, 1, 2018, 229.99),
(276, 'Trek Precaliber 24 (7-Speed) - Boys - 2018', 9, 1, 2018, 319.99),
(277, 'Trek Precaliber 24 21-speed Boy\'s - 2018', 9, 1, 2018, 369.99),
(278, 'Trek Precaliber 24 21-speed Girl\'s - 2018', 9, 1, 2018, 369.99),
(279, 'Trek Precaliber 24 7-speed Girl\'s - 2018', 9, 1, 2018, 319.99),
(280, 'Trek Superfly 24 - 2017/2018', 9, 1, 2018, 489.99),
(281, 'Electra Cruiser 7D (24-Inch) Ladies\' - 2016/2018', 1, 1, 2018, 319.99),
(282, 'Electra Cyclosaurus 1 (16-inch) - Boy\'s - 2018', 1, 1, 2018, 279.99),
(283, 'Electra Heartchya 1 (20-inch) - Girl\'s - 2018', 1, 1, 2018, 319.99),
(284, 'Electra Savannah 1 (20-inch) - Girl\'s - 2018', 1, 1, 2018, 319.99),
(285, 'Electra Soft Serve 1 (16-inch) - Girl\'s - 2018', 1, 1, 2018, 279.99),
(286, 'Electra Starship 1 16\" - 2018', 1, 1, 2018, 279.99),
(287, 'Electra Straight 8 1 (16-inch) - Boy\'s - 2018', 1, 1, 2018, 279.99),
(288, 'Electra Straight 8 1 (20-inch) - Boy\'s - 2018', 1, 1, 2018, 389.99),
(289, 'Electra Superbolt 1 20\" - 2018', 1, 1, 2018, 319.99),
(290, 'Electra Superbolt 3i 20\" - 2018', 1, 1, 2018, 369.99),
(291, 'Electra Sweet Ride 1 (20-inch) - Girl\'s - 2018', 1, 1, 2018, 319.99),
(292, 'Electra Sweet Ride 3i (20-inch) - Girls\' - 2018', 1, 1, 2018, 369.99),
(293, 'Electra Tiger Shark 1 (20-inch) - Boys\' - 2018', 1, 1, 2018, 319.99),
(294, 'Electra Tiger Shark 3i (20-inch) - Boys\' - 2018', 1, 1, 2018, 369.99),
(295, 'Electra Treasure 1 20\" - 2018', 1, 1, 2018, 319.99),
(296, 'Electra Treasure 3i 20\" - 2018', 1, 1, 2018, 369.99),
(297, 'Electra Under-The-Sea 1 16\" - 2018', 1, 1, 2018, 279.99),
(298, 'Electra Water Lily 1 (16-inch) - Girl\'s - 2018', 1, 1, 2018, 279.99),
(299, 'Electra Townie Original 21D - 2018', 1, 2, 2018, 559.99),
(300, 'Electra Townie Balloon 3i EQ Ladies\' - 2018', 1, 2, 2018, 799.99),
(301, 'Electra Townie Balloon 7i EQ - 2018', 1, 2, 2018, 899.99),
(302, 'Electra Townie Original 1 - 2018', 1, 2, 2018, 449.99),
(303, 'Electra Townie Go! 8i - 2017/2018', 1, 2, 2018, 2599.99),
(304, 'Electra Townie Original 21D EQ - 2017/2018', 1, 2, 2018, 679.99),
(305, 'Electra Townie Balloon 3i EQ - 2017/2018', 1, 2, 2018, 749.99),
(306, 'Electra Townie Balloon 7i EQ Ladies\' - 2017/2018', 1, 2, 2018, 899.99),
(307, 'Electra Townie Balloon 8D EQ - 2016/2017/2018', 1, 2, 2018, 749.99),
(308, 'Electra Townie Balloon 8D EQ Ladies\' - 2016/2017/2018', 1, 2, 2018, 749.99),
(309, 'Electra Townie Commute 27D - 2018', 1, 2, 2018, 899.99),
(310, 'Electra Townie Commute 27D Ladies - 2018', 1, 2, 2018, 899.99),
(311, 'Electra Townie Commute 8D - 2018', 1, 2, 2018, 749.99),
(312, 'Electra Townie Commute 8D Ladies\' - 2018', 1, 2, 2018, 699.99),
(313, 'Electra Townie Original 1 Ladies\' - 2018', 1, 2, 2018, 449.99),
(314, 'Electra Townie Original 21D EQ Ladies\' - 2018', 1, 2, 2018, 679.99),
(315, 'Electra Townie Original 21D Ladies\' - 2018', 1, 2, 2018, 559.99),
(316, 'Trek Checkpoint ALR 4 Women\'s - 2019', 9, 7, 2019, 1699.99),
(317, 'Trek Checkpoint ALR 5 - 2019', 9, 7, 2019, 1999.99),
(318, 'Trek Checkpoint ALR 5 Women\'s - 2019', 9, 7, 2019, 1999.99),
(319, 'Trek Checkpoint SL 5 Women\'s - 2019', 9, 7, 2019, 2799.99),
(320, 'Trek Checkpoint SL 6 - 2019', 9, 7, 2019, 3799.99),
(321, 'Trek Checkpoint ALR Frameset - 2019', 9, 7, 2019, 3199.99);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `ID` int(11) NOT NULL,
  `TITLE_OF_SALE` varchar(255) DEFAULT NULL,
  `START_DATE` varchar(255) DEFAULT NULL,
  `END_DATE` varchar(255) DEFAULT NULL,
  `DISCOUNT_PERCENT` varchar(255) DEFAULT NULL,
  `PRODUCT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`ID`, `TITLE_OF_SALE`, `START_DATE`, `END_DATE`, `DISCOUNT_PERCENT`, `PRODUCT_ID`) VALUES
(1, 'Trek 820 - 2016 in 200 shekel', '20/2/24', '20/4/24', '58%', 1),
(2, 'Ritchey Timberwolf Frameset - 2016 in 450 shekel', '20/2/24', '20/4/24', '50%', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`AGENT_CODE`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_CODE`),
  ADD KEY `CUSTCITY` (`CUST_CITY`),
  ADD KEY `CUSTCITY_COUNTRY` (`CUST_CITY`,`CUST_COUNTRY`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
