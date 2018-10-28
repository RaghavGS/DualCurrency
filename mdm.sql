-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2018 at 10:16 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mdm`
--
CREATE DATABASE IF NOT EXISTS `mdm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mdm`;

-- --------------------------------------------------------

--
-- Table structure for table `affinity`
--

CREATE TABLE IF NOT EXISTS `affinity` (
  `AffinityID` int(10) NOT NULL,
  `Level1` varchar(20) NOT NULL,
  `Level2` varchar(20) NOT NULL,
  `Active` int(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `AffinityID` (`AffinityID`,`Level1`,`Level2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `affinity`
--

INSERT INTO `affinity` (`AffinityID`, `Level1`, `Level2`, `Active`) VALUES
(101, 'Food & Bev', 'Italian', 1),
(102, 'Food & Bev', 'Japanese', 1),
(103, 'Food & Bev', 'Indian', 1),
(104, 'Food & Bev', 'Western', 1),
(105, 'Food & Bev', 'French', 1),
(106, 'Food & Bev', 'Indonesian', 1),
(107, 'Food & Bev', 'Fast Food', 1),
(108, 'Food & Bev', 'Wine', 1),
(109, 'Food & Bev', 'Beer', 1),
(110, 'Food & Bev', 'Coffee', 1),
(201, 'Entertainment', 'Night Clubs', 1),
(202, 'Entertainment', 'Theaters', 1),
(203, 'Entertainment', 'Cinemas', 1),
(204, 'Entertainment', 'Concerts', 1),
(301, 'Sports & Rec', 'Sailing', 1),
(302, 'Sports & Rec', 'Biking', 1),
(303, 'Sports & Rec', 'Picnic', 1),
(304, 'Sports & Rec', 'Jogging', 1),
(305, 'Sports & Rec', 'Hiking', 1),
(306, 'Sports & Rec', 'Bowling', 1),
(307, 'Sports & Rec', 'Golfing', 1),
(401, 'Shopping', 'Womens Clothing', 1),
(402, 'Shopping', 'Mens Clothing', 1),
(403, 'Shopping', 'Furniture', 1),
(404, 'Shopping', 'Maternity', 1),
(405, 'Shopping', 'Kitchenware', 1),
(501, 'Arts & Crafts', 'Art Gallary', 1),
(502, 'Arts & Crafts', 'Photography', 1),
(503, 'Arts & Crafts', 'Painting', 1),
(504, 'Arts & Crafts', 'Pottery', 1),
(601, 'Vehicles', 'Cars', 1),
(602, 'Vehicles', 'Motorcycles', 1),
(701, 'Travel', 'Destinations', 1),
(702, 'Travel', 'Hotels', 1),
(703, 'Travel', 'Airlines', 1),
(704, 'Travel', 'Cruises', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bs_line_item`
--

CREATE TABLE IF NOT EXISTS `bs_line_item` (
  `bs_line_item_ID` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(10) NOT NULL,
  `sub_category` varchar(45) DEFAULT NULL,
  `line_item_name` varchar(150) NOT NULL,
  `gl_acc_code` varchar(2) NOT NULL,
  PRIMARY KEY (`bs_line_item_ID`,`category`,`line_item_name`,`gl_acc_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `bs_line_item`
--

INSERT INTO `bs_line_item` (`bs_line_item_ID`, `category`, `sub_category`, `line_item_name`, `gl_acc_code`) VALUES
(2, 'Liability', 'Current Liability', 'Current tax liabilities', 'LI'),
(3, 'Expense', NULL, 'Printing', 'EX'),
(4, 'Asset', 'Current Assets', 'Inventories', 'AS'),
(5, 'Equity', NULL, 'Shareholder equity', 'EQ'),
(6, 'Revenue', NULL, 'Product development', 'RE'),
(7, 'Liability', 'Long Term Liability', 'Some Long Term Liability', 'LI'),
(8, 'Assets', 'Fixed Assets', 'Some Fixed Assets', 'AS'),
(9, 'Assets', 'Other Assets', 'Some Other Assets', 'AS');

-- --------------------------------------------------------

--
-- Table structure for table `channel_type`
--

CREATE TABLE IF NOT EXISTS `channel_type` (
  `channel_type_id` int(5) NOT NULL,
  `channel_name` varchar(20) NOT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`channel_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channel_type`
--

INSERT INTO `channel_type` (`channel_type_id`, `channel_name`, `active`) VALUES
(1, 'Teller', b'1'),
(2, 'ATM', b'1'),
(3, 'RIB', b'1'),
(4, 'RMB', b'1'),
(5, 'CIB', b'1'),
(6, 'ACH', b'1'),
(7, 'PSH', b'1'),
(8, 'POS', b'1'),
(9, 'GL', b'1'),
(10, 'SOA', b'1'),
(11, 'CMS', b'1'),
(12, 'Trade', b'1'),
(13, 'BPM', b'1'),
(14, 'API', b'1'),
(15, 'TF', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `countryName` varchar(50) NOT NULL,
  `currencyName` varchar(50) NOT NULL,
  `currencyCode` varchar(10) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `currencyCode` (`currencyCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`countryName`, `currencyName`, `currencyCode`, `active`) VALUES
('Andorra', 'Franc', 'ADF', 0),
('United Arab Emirates', 'Dirham', 'AED', 1),
('Afghanistan', 'Afghani', 'AFA', 0),
('Albania', 'Lek', 'ALL', 1),
('Netherlands Antilles', 'Antillian Guilder', 'ANG', 0),
('Angola', 'New Kwanza', 'AON', 0),
('Argentina', 'Peso', 'ARS', 1),
('Austria', 'Schilling', 'ATS', 0),
('Australia', 'Dollar', 'AUD', 1),
('Aruba', 'Florin', 'AWG', 1),
('Barbados', 'Dollar', 'BBD', 1),
('Bangladesh', 'Taka', 'BDT', 1),
('Belgium', 'Franc', 'BEF', 0),
('Bulgaria', 'Lev', 'BGL', 0),
('Bahrain', 'Dinar', 'BHD', 1),
('Burundi', 'Franc', 'BIF', 1),
('Bermuda', 'Dollar', 'BMD', 1),
('Brunei', 'Dollar', 'BND', 1),
('Bolivia', 'Boliviano', 'BOB', 1),
('Brazil', 'Cruzeiro', 'BRC', 0),
('Bahamas', 'Dollar', 'BSD', 1),
('Bhutan', 'Ngultrum', 'BTN', 1),
('Botswana', 'Pula', 'BWP', 1),
('Belize', 'Dollar', 'BZD', 1),
('Canada', 'Dollar', 'CAD', 1),
('Switzerland', 'Franc', 'CHF', 1),
('Chile', 'Peso', 'CLP', 1),
('China', 'Yuan Renminbi', 'CNY', 1),
('Colombia', 'Peso', 'COP', 1),
('Costa Rica', 'Colon', 'CRC', 1),
('Czech Republic', 'Koruna', 'CSK', 0),
('Cuba', 'Peso', 'CUP', 1),
('Cape Verde', 'Escudo', 'CVE', 1),
('Cyprus', 'Pound', 'CVP', 0),
('Germany', 'Mark', 'DEM', 0),
('Djibouti', 'Franc', 'DJF', 1),
('Denmark', 'Guilder', 'DKK', 1),
('Dominican Republic', 'Peso', 'DOP', 1),
('Algeria', 'Dinar', 'DZD', 1),
('Ecuador', 'Sucre', 'ECS', 0),
('Estonia', 'Kroon', 'EEK', 0),
('Egypt', 'Pound', 'EGP', 1),
('Spain', 'Peseta', 'ESP', 0),
('Ethiopia', 'Birr', 'ETB', 1),
('European Union', 'Euro', 'EUR', 1),
('Finland', 'Markka', 'FIM', 0),
('Fiji', 'Dollar', 'FJD', 0),
('Falkland Islands', 'Pound', 'FKP', 1),
('France', 'Franc', 'FRF', 0),
('Great Britain', 'Sterling', 'GBP', 1),
('Ghana', 'Cedi', 'GHC', 0),
('Gibraltar', 'Pound', 'GIP', 1),
('Gambia', 'Dalasi', 'GMD', 1),
('Guinea', 'Franc', 'GNF', 1),
('Greece', 'Drachma', 'GRD', 0),
('Guatemala', 'Quetzal', 'GTQ', 1),
('Guinea Bissau', 'Peso', 'GWP', 0),
('Guyana', 'Dollar', 'GYD', 1),
('Hong Kong', 'Dollar', 'HKD', 1),
('Honduras', 'Lempira', 'HNL', 1),
('Croatia', 'Kuna', 'HRK', 1),
('Haiti', 'Gourde', 'HTG', 1),
('Hungary', 'Forint', 'HUF', 1),
('Indonesia', 'Rupiah', 'IDR', 1),
('Ireland', 'Punt', 'IEP', 0),
('Israel', 'New Shekel', 'ILS', 1),
('India', 'Rupee', 'INR', 1),
('Iraq', 'Dinar', 'IQD', 1),
('Iran', 'Rial', 'IRR', 0),
('Iceland', 'Krona', 'ISK', 1),
('Italy', 'Lira', 'ITL', 0),
('Jamaica', 'Dollar', 'JMD', 1),
('Jordan', 'Dinar', 'JOD', 1),
('Japan', 'Yen', 'JPY', 1),
('Kenya', 'Schilling', 'KES', 1),
('Cambodia', 'Riel', 'KHR', 1),
('Comoros', 'Franc', 'KMF', 1),
('North Korea', 'Won', 'KPW', 1),
('Kuwait', 'Dinar', 'KWD', 1),
('Cayman Islands', 'Dollar', 'KYD', 1),
('Kazakhstan', 'Tenge', 'KZT', 1),
('Laos', 'Kip', 'LAK', 1),
('Lebanon', 'Pound', 'LBP', 1),
('Sri Lanka', 'Rupee', 'LKR', 1),
('Liberia', 'Dollar', 'LRD', 1),
('Lesotho', 'Loti', 'LSL', 1),
('Lithuania', 'Litas', 'LTL', 1),
('Luxembourg', 'Franc', 'LUF', 0),
('Latvia', 'Lats', 'LVL', 1),
('Libya', 'Dinar', 'LYD', 1),
('Morocco', 'Dirham', 'MAD', 1),
('Myanmar', 'Kyat', 'MMK', 1),
('Mongolia', 'Tugrik', 'MNT', 1),
('Macau', 'Pataca', 'MOP', 1),
('Mauritania', 'Ouguiya', 'MRO', 1),
('Malta', 'Lira', 'MTL', 0),
('Mauritius', 'Rupee', 'MUR', 1),
('Maldives', 'Rufiyaa', 'MVR', 1),
('Malawi', 'Kwacha', 'MWK', 1),
('Mexico', 'Peso', 'MXP', 0),
('Malaysia', 'Ringgit', 'MYR', 1),
('Mozambique', 'Metical', 'MZM', 0),
('Nigeria', 'Naira', 'NGN', 1),
('Nicaragua', 'Cordoba Oro', 'NIO', 1),
('Netherlands', 'Guilder', 'NLG', 0),
('Norway', 'Kroner', 'NOK', 1),
('New Zealand', 'Dollar', 'NZD', 1),
('Oman', 'Rial', 'OMR', 1),
('Panama', 'Balboa', 'PAB', 1),
('Peru', 'Neuevo Sol', 'PEN', 1),
('Papua New Guinea', 'Kina', 'PGK', 1),
('Philippines', 'Peso', 'PHP', 1),
('Pakistan', 'Rupee', 'PKR', 1),
('Poland', 'Zloty', 'PLZ', 0),
('Portugal', 'Escudo', 'PTE', 0),
('Paraguay', 'Guarani', 'PYG', 1),
('Qatar', 'Rial', 'QAR', 1),
('Romania', 'Leu', 'ROL', 0),
('Russian Federation', 'Rouble', 'RUB', 1),
('Saudi Arabia', 'Riyal', 'SAR', 1),
('Solomon Islands', 'Dollar', 'SBD', 1),
('Seychelles', 'Rupee', 'SCR', 1),
('Sudan', 'Dinar', 'SDD', 0),
('Sweden', 'Krona', 'SEK', 1),
('Singapore', 'Dollar', 'SGD', 1),
('Slovenia', 'Tolar', 'SIT', 0),
('Slovak Republic', 'Koruna', 'SKK', 0),
('Sierra Leone', 'Leone', 'SLL', 1),
('Somalia', 'Schilling', 'SOS', 1),
('Suriname', 'Guilder', 'SRG', 0),
('El Salvador', 'Colon', 'SVC', 1),
('Syria', 'Pound', 'SYP', 1),
('Swaziland', 'Lilangeni', 'SZL', 1),
('Thailand', 'Baht', 'THB', 1),
('Tunisia', 'Dinar', 'TND', 1),
('Turkey', 'Lira', 'TRL', 0),
('Trinidad and Tobago', 'Dollar', 'TTD', 1),
('Taiwan', 'Dollar', 'TWD', 1),
('Tanzania', 'Schilling', 'TZS', 1),
('Ukraine', 'Hryvnia', 'UAG', 0),
('Uganda', 'Schilling', 'UGS', 0),
('United States', 'Dollar', 'USD', 1),
('Uruguay', 'Peso', 'UYP', 0),
('Venezuela', 'Bolivar', 'VEB', 0),
('Vietnam', 'Dong', 'VND', 1),
('Vanuatu', 'Vatu', 'VUV', 1),
('Samoa', 'Tala', 'WST', 1),
('Palau', 'Oz', 'XPD', 1),
('Yugoslavia', 'Dinar', 'YUN', 0),
('South Africa', 'Rand', 'ZAR', 1),
('Zambia', 'Kwacha', 'ZMK', 1),
('Zimbabwe', 'Dollar', 'ZWD', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_type`
--

CREATE TABLE IF NOT EXISTS `customer_type` (
  `customer_type_id` varchar(10) NOT NULL,
  `customer_type_name` varchar(30) NOT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  UNIQUE KEY `customer_type_id` (`customer_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_type`
--

INSERT INTO `customer_type` (`customer_type_id`, `customer_type_name`, `active`) VALUES
('100', 'RETAIL', b'1'),
('200', 'CORPORATE', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `document_type`
--

CREATE TABLE IF NOT EXISTS `document_type` (
  `document_type_id` int(5) NOT NULL,
  `document_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document_type`
--

INSERT INTO `document_type` (`document_type_id`, `document_name`) VALUES
(7, 'Trade - Bill of Exchange'),
(1, 'IC Photocopy'),
(9, 'Trade - Certificate of Insurance'),
(6, 'Trade - Bill of Lading'),
(11, 'Trade - Commercial Invoice'),
(8, 'Trade - Certificate of Origin'),
(4, 'Pay Slip'),
(10, 'Trade - Certificate of Inspection'),
(2, 'CPF Statement'),
(3, 'Employment Letter'),
(5, 'Tax Return');

-- --------------------------------------------------------

--
-- Table structure for table `errorreference`
--

CREATE TABLE IF NOT EXISTS `errorreference` (
  `globalerrorid` varchar(13) NOT NULL,
  `systemid` varchar(13) NOT NULL,
  `localerrorid` varchar(20) NOT NULL,
  KEY `globalerrorid_idx` (`globalerrorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `errorreference`
--

INSERT INTO `errorreference` (`globalerrorid`, `systemid`, `localerrorid`) VALUES
('010033', '02', 'mno'),
('010003', '01', '80078'),
('010002', '01', 'CHNL0002'),
('010015', '02', 'ghi'),
('010026', '02', 'NO_ACCOUNT'),
('010036', '02', 'ACCOUNT_NOT_OPEN'),
('010000', '02', '0'),
('010001', '02', 'bcd'),
('010010', '02', 'recordNotFound'),
('010011', '02', 'cde'),
('010000', '01', '0'),
('010032', '02', 'lmn'),
('010019', '02', 'klm'),
('010007', '02', 'BW-JDBC-100014'),
('010034', '02', 'nop'),
('010014', '02', 'fgh'),
('010006', '02', 'abc'),
('010016', '02', 'hij'),
('010008', '01', '3921'),
('010001', '01', '3878'),
('010012', '02', 'def'),
('010017', '02', 'ijk'),
('010025', '02', 'NO_CUSTOMER'),
('010013', '02', 'efg'),
('010006', '01', '2077'),
('010005', '01', '9927'),
('010018', '02', 'jkl'),
('010003', '02', '23000'),
('010009', '02', 'DuplicateNRIC'),
('010007', '01', 'NACSDAS000'),
('010035', '02', 'LTV_LIMIT'),
('010004', '01', '10011');

-- --------------------------------------------------------

--
-- Table structure for table `fee_type`
--

CREATE TABLE IF NOT EXISTS `fee_type` (
  `fee_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(50) NOT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`fee_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `fee_type`
--

INSERT INTO `fee_type` (`fee_type_id`, `service_name`, `active`) VALUES
(1, 'ACCOUNT_OPENING', b'1'),
(2, 'ATM', b'1'),
(3, 'CREDIT_TRANSFER', b'1'),
(4, 'DIRECT_DEBIT', b'1'),
(5, 'FX', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `global_errorreference`
--

CREATE TABLE IF NOT EXISTS `global_errorreference` (
  `globalerrorid` varchar(45) NOT NULL,
  `errortext` varchar(65) NOT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`globalerrorid`),
  UNIQUE KEY `globalerrorid_UNIQUE` (`globalerrorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `global_errorreference`
--

INSERT INTO `global_errorreference` (`globalerrorid`, `errortext`, `active`) VALUES
('010000', 'invocation successful', b'1'),
('010001', 'Invalid bank code', b'1'),
('010002', 'invalid input channel', b'1'),
('010003', 'duplicate external reference number record found', b'1'),
('010004', 'invalid input service code', b'1'),
('010005', 'invalid input transaction branch', b'1'),
('010006', 'invalid input user id', b'1'),
('010007', 'transaction log can''t be inserted', b'1'),
('010008', 'invalid input external reference code', b'1'),
('010009', 'duplicate MySQL key (unique / foreign)', b'1'),
('010010', 'record not found', b'1'),
('010011', 'insufficient funds', b'1'),
('010012', 'negative dollar amount', b'1'),
('010013', 'invalid certificate number', b'1'),
('010014', 'invalid product id', b'1'),
('010015', 'currency mismatch', b'1'),
('010016', 'customerID mismatch', b'1'),
('010017', 'incorrect repayment amount', b'1'),
('010018', 'transaction end date is less than start date', b'1'),
('010019', 'negative page number', b'1'),
('010020', 'record not found', b'1'),
('010021', 'fatal error', b'1'),
('010022', 'no beneficiary found', b'1'),
('010023', 'requested beneficiary has alreayd been deleted', b'1'),
('010024', 'requested beneficiary does not exist', b'1'),
('010025', 'input Customer ID not exist', b'1'),
('010026', 'input Account ID not exist', b'1'),
('010027', 'input Account ID is already a beneficiary', b'1'),
('010028', 'database error', b'1'),
('010029', 'invalid customer account id', b'1'),
('010030', 'target authorization account not exists', b'1'),
('010031', 'requested account has already been authorized', b'1'),
('010032', 'invalid beneficiary or billing organisation ID', b'1'),
('010033', 'partial payment is greater than loan balance', b'1'),
('010034', 'transaction date is past maturity date ', b'1'),
('010035', 'LTV ratio exceeds max for this product', b'1'),
('010036', 'account not open', b'1'),
('010037', 'message coorelation error', b'1'),
('010038', 'SWIFT Error', b'1'),
('010039', 'ISO20022 Error', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `lc_status_type`
--

CREATE TABLE IF NOT EXISTS `lc_status_type` (
  `lc_status_type_id` int(10) NOT NULL,
  `lc_status_name` varchar(50) NOT NULL,
  `lc_status_description` varchar(50) NOT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lc_status_type`
--

INSERT INTO `lc_status_type` (`lc_status_type_id`, `lc_status_name`, `lc_status_description`, `active`) VALUES
(7, 'AUTH_REJECT', 'Not Authorized By Exporter', b'1'),
(14, 'ADVISED_IB_RECEIVED', 'Advised LC Received by Issuing Bank', b'1'),
(11, 'DOC_ACCPT', 'Documents accepted by Issuing Bank', b'1'),
(5, 'ADVISED', 'Advised by Advising Bank', b'1'),
(15, 'DOC_UPLOAD', 'Documents uploaded by the exporter', b'1'),
(1, 'APPLIED', 'Application Submitted', b'1'),
(8, 'ACK_ACCEPT', 'Acknowledged by Advising Bank', b'1'),
(10, 'DOC_PRES', 'Documents presented and approved by Advising Bank', b'1'),
(3, 'REJECTED', 'Application Rejected', b'1'),
(9, 'ACK_REJECT', 'Rejected by Advising Bank', b'1'),
(6, 'AUTH_ACCEPT', 'Authorized by Exporter', b'1'),
(4, 'ISSUED', 'Issued by Issuing Bank', b'1'),
(2, 'APPROVED', 'Application Approved', b'1'),
(13, 'DOC_ACCPT_REJECT', 'Documents rejected by Issuing Bank', b'1'),
(12, 'DOC_PRES_REJECT', 'Documents rejected by Advising Bank', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `product_mapping`
--

CREATE TABLE IF NOT EXISTS `product_mapping` (
  `product_id` varchar(32) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `system_id` varchar(32) NOT NULL,
  `local_product_code` varchar(32) NOT NULL,
  `customer_type` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`system_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_mapping`
--

INSERT INTO `product_mapping` (`product_id`, `product_name`, `system_id`, `local_product_code`, `customer_type`) VALUES
('101', 'CASA', '2', '101', '0'),
('151', 'TD 5 Year', '2', '151', '0'),
('201', 'Home Loan', '2', '201', '100'),
('202', 'Auto Loan', '2', '202', '100'),
('203', 'Education Loan', '2', '203', '100'),
('204', 'Renovation Loan', '2', '204', '100'),
('205', 'Personal Loan', '2', '205', '100'),
('206', 'Retail Share Finance', '2', '206', '-1'),
('251', 'Retail Credit Card', '2', '251', '-1'),
('301', 'Commercial Property Loan', '2', '301', '200'),
('302', 'Working Capital Finance', '2', '302', '200'),
('303', 'Trade Finance', '2', '303', '200'),
('304', 'Corporate Share Finance', '2', '304', '-1'),
('305', 'Project Finance ', '2', '305', '200'),
('306', 'Equipment Finance ', '2', '306', '200'),
('351', 'Corporate Credit Card', '2', '351', '-1');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_type`
--

CREATE TABLE IF NOT EXISTS `transaction_type` (
  `transaction_type_id` varchar(10) NOT NULL,
  `transaction_type_name` varchar(30) NOT NULL,
  `transaction_code` varchar(10) NOT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  UNIQUE KEY `transaction_type_id` (`transaction_type_id`),
  UNIQUE KEY `transaction_code` (`transaction_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_type`
--

INSERT INTO `transaction_type` (`transaction_type_id`, `transaction_type_name`, `transaction_code`, `active`) VALUES
('100', 'CASH_WITHDRAWAL', 'WTH', b'1'),
('101', 'ATM_WITHDRAWAL', 'ATM', b'1'),
('150', 'FEE_DEDUCTION', 'FEE', b'1'),
('151', 'FX_FEE', 'FXF', b'1'),
('152', 'ATM_FEE', 'ATF', b'1'),
('153', 'PAYMENT_FEE', 'PYF', b'1'),
('154', 'CREDIT_CARD_FEE', 'CCF', b'1'),
('155', 'PENALTY', 'PEN', b'1'),
('200', 'CASH_DEPOSIT', 'DEP', b'1'),
('201', 'TERM_DEPOSIT', 'TDP', b'1'),
('202', 'CASA_INTEREST', 'INT', b'1'),
('203', 'TD_INTEREST', 'TDI', b'1'),
('300', 'CREDIT_TRANSFER', 'CRT', b'1'),
('301', 'FUND_TRANSFER', 'FND', b'1'),
('302', 'BILL_PAYMENT', 'BPY', b'1'),
('303', 'QUIKPAY', 'QPY', b'1'),
('304', 'POINT_OF_SALES', 'POS', b'1'),
('305', 'PAYROLL', 'PAY', b'1'),
('306', 'STANDING_INSTRUCTION', 'STI', b'1'),
('400', 'LOAN_PRINCIPAL', 'LPR', b'1'),
('401', 'PARTIAL_LOAN_REPAYMENT', 'PLR', b'1'),
('402', 'FULL_LOAN_REPAYMENT', 'FLR', b'1'),
('403', 'LOAN_DISBURSEMENT', 'LDI', b'1'),
('450', 'LOAN_INTEREST', 'LIN', b'1'),
('500', 'DIRECT_DEBIT', 'DDB', b'1'),
('501', 'GIRO', 'GRO', b'1'),
('502', 'TAX_PAYMENT', 'TAX', b'1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
