-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 13, 2025 at 07:49 AM
-- Server version: 9.1.0
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cars`
--

-- --------------------------------------------------------

--
-- Table structure for table `discharge_records`
--

DROP TABLE IF EXISTS `discharge_records`;
CREATE TABLE IF NOT EXISTS `discharge_records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sir_name` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `ip_no` varchar(50) DEFAULT NULL,
  `age` varchar(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `tel_no` varchar(20) DEFAULT NULL,
  `date_of_admission` varchar(30) DEFAULT NULL,
  `date_of_discharge` varchar(30) DEFAULT NULL,
  `dx` text,
  `ddx` text,
  `medical_history` text,
  `treatment_management` text,
  `discharge_drugs` text,
  `advise_on_discharge` text,
  `return_date` varchar(30) DEFAULT NULL,
  `discharging_doctor` varchar(150) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_format` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discharge_records`
--

INSERT INTO `discharge_records` (`id`, `sir_name`, `first_name`, `ip_no`, `age`, `sex`, `tel_no`, `date_of_admission`, `date_of_discharge`, `dx`, `ddx`, `medical_history`, `treatment_management`, `discharge_drugs`, `advise_on_discharge`, `return_date`, `discharging_doctor`, `date_created`, `date_format`) VALUES
(1, 'fff', 'ff', '001', '12', 'Female', '0742591914', '2025-02-05', '2025-02-21', 'gfgn', 'gng', 'gnn', 'ngng', '', '', '', '', '2025-03-11 14:01:38', '11, Mar 2025'),
(2, 'BUTONDOKWA', 'SILVERIO', '002', '86', 'Male', 'XXXX', '2025-02-18', '2025-02-21', 'Anaemia', 'Ca prostate', '86/m with history of multiple blood transfusions and progressively high tPSA levels, presents with generalized body ache and bonny pains.\\r\\nreports of reduced levels of appetite, GBW, and dizzness', 'Blood transfusion with 3 units of whole blood\\r\\niv cef/salbactum 3g od x 3/7\\r\\niv NS:D5% 500MLS TDS X 2/7\\r\\nIV Hydrocortison 100mg stat', 'P.O esoz 40mg od x 14/7\\r\\nP.O Fefo 1x1 x 1/12\\r\\nP.O Pred 20mg od x 10/7\\r\\nP.O Nucoxia 90mg od x 2/52\\r\\nCaps Cefixim 400mg od x 5/7', 'Discharged him through oncologye dept MMRH for prostate biopsy and histology', '2025-03-21', 'GIDEON', '2025-03-11 14:48:33', '11, Mar 2025');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_app_config`
--

DROP TABLE IF EXISTS `ospos_app_config`;
CREATE TABLE IF NOT EXISTS `ospos_app_config` (
  `key` varchar(50) NOT NULL,
  `value` varchar(500) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_app_config`
--

INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
('address', 'Kampala, Uganda'),
('allow_duplicate_barcodes', '0'),
('barcode_content', 'id'),
('barcode_first_row', 'category'),
('barcode_font', 'Arial'),
('barcode_font_size', '10'),
('barcode_formats', '[]'),
('barcode_generate_if_empty', '0'),
('barcode_height', '50'),
('barcode_num_in_row', '2'),
('barcode_page_cellspacing', '20'),
('barcode_page_width', '100'),
('barcode_second_row', 'item_code'),
('barcode_third_row', 'unit_price'),
('barcode_type', 'Code39'),
('barcode_width', '250'),
('cash_decimals', '0'),
('cash_rounding_code', '1'),
('category_dropdown', '1'),
('company', 'Car inventory System UICT'),
('company_logo', 'company_logo4.png'),
('country_codes', 'us'),
('currency_code', 'UGX '),
('currency_decimals', '0'),
('currency_symbol', 'UGX'),
('customer_reward_enable', '0'),
('dateformat', 'd/m/Y'),
('date_or_time_format', ''),
('default_receivings_discount', '0'),
('default_receivings_discount_type', '0'),
('default_register_mode', 'sale'),
('default_sales_discount', '0'),
('default_sales_discount_type', '0'),
('default_tax_1_name', ''),
('default_tax_1_rate', ''),
('default_tax_2_name', ''),
('default_tax_2_rate', ''),
('default_tax_category', 'Standard'),
('default_tax_code', ''),
('default_tax_jurisdiction', ''),
('default_tax_rate', '8'),
('derive_sale_quantity', '0'),
('dinner_table_enable', '0'),
('email', 'test@gmail.com'),
('email_receipt_check_behaviour', 'last'),
('enforce_privacy', ''),
('fax', ''),
('financial_year', '1'),
('gcaptcha_enable', '0'),
('gcaptcha_secret_key', ''),
('gcaptcha_site_key', ''),
('giftcard_number', 'series'),
('image_allowed_types', 'jpg|gif|png'),
('image_max_height', '480'),
('image_max_size', '128'),
('image_max_width', '640'),
('include_hsn', '0'),
('invoice_default_comments', 'This is a default comment'),
('invoice_email_message', 'Dear {CU}, In attachment the receipt for sale {ISEQ}'),
('invoice_enable', '1'),
('invoice_type', 'invoice'),
('language', 'english'),
('language_code', 'en-US'),
('last_used_invoice_number', '0'),
('last_used_quote_number', '0'),
('last_used_work_order_number', '0'),
('lines_per_page', '30'),
('line_sequence', '0'),
('login_form', 'floating_labels'),
('mailpath', '/usr/sbin/sendmail'),
('msg_msg', ''),
('msg_pwd', ''),
('msg_src', ''),
('msg_uid', ''),
('multi_pack_enabled', '0'),
('notify_horizontal_position', 'right'),
('notify_vertical_position', 'top'),
('number_locale', 'UGX'),
('payment_options_order', 'cashdebitcredit'),
('phone', '070030400'),
('print_bottom_margin', '0'),
('print_delay_autoreturn', '0'),
('print_footer', '0'),
('print_header', '0'),
('print_left_margin', '0'),
('print_receipt_check_behaviour', 'last'),
('print_right_margin', '0'),
('print_silently', '1'),
('print_top_margin', '0'),
('protocol', 'mail'),
('quantity_decimals', '0'),
('quote_default_comments', 'This is a default quote comment'),
('receipt_font_size', '12'),
('receipt_show_company_name', '1'),
('receipt_show_description', '1'),
('receipt_show_serialnumber', '1'),
('receipt_show_taxes', '0'),
('receipt_show_tax_ind', '0'),
('receipt_show_total_discount', '1'),
('receipt_template', 'receipt_default'),
('receiving_calculate_average_price', '0'),
('recv_invoice_format', '{CO}'),
('return_policy', 'Goods Once Sold, Not Returnable.1'),
('sales_invoice_format', '{CO}'),
('sales_quote_format', 'Q%y{QSEQ:6}'),
('smtp_crypto', 'ssl'),
('smtp_host', ''),
('smtp_pass', ''),
('smtp_port', '465'),
('smtp_timeout', '5'),
('smtp_user', ''),
('suggestions_first_column', 'name'),
('suggestions_second_column', ''),
('suggestions_third_column', ''),
('tax_decimals', '0'),
('tax_id', ''),
('tax_included', '0'),
('theme', 'yeti'),
('thousands_separator', '1'),
('timeformat', 'h:i:s A'),
('timezone', 'Africa/Addis_Ababa'),
('use_destination_based_tax', '0'),
('website', ''),
('work_order_enable', '0'),
('work_order_format', 'W%y{WSEQ:6}');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_attribute_definitions`
--

DROP TABLE IF EXISTS `ospos_attribute_definitions`;
CREATE TABLE IF NOT EXISTS `ospos_attribute_definitions` (
  `definition_id` int NOT NULL AUTO_INCREMENT,
  `definition_name` varchar(255) NOT NULL,
  `definition_type` varchar(45) NOT NULL,
  `definition_unit` varchar(16) DEFAULT NULL,
  `definition_flags` tinyint(1) NOT NULL,
  `definition_fk` int DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`definition_id`),
  KEY `definition_fk` (`definition_fk`),
  KEY `definition_name` (`definition_name`),
  KEY `definition_type` (`definition_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_attribute_definitions`
--

INSERT INTO `ospos_attribute_definitions` (`definition_id`, `definition_name`, `definition_type`, `definition_unit`, `definition_flags`, `definition_fk`, `deleted`) VALUES
(-1, 'ospos_category', 'DROPDOWN', NULL, 0, NULL, 1),
(1, 'test', 'DROPDOWN', NULL, 7, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_attribute_links`
--

DROP TABLE IF EXISTS `ospos_attribute_links`;
CREATE TABLE IF NOT EXISTS `ospos_attribute_links` (
  `attribute_id` int DEFAULT NULL,
  `definition_id` int NOT NULL,
  `item_id` int DEFAULT NULL,
  `sale_id` int DEFAULT NULL,
  `receiving_id` int DEFAULT NULL,
  UNIQUE KEY `attribute_links_uq1` (`attribute_id`,`definition_id`,`item_id`,`sale_id`,`receiving_id`),
  UNIQUE KEY `attribute_links_uq2` (`item_id`,`sale_id`,`receiving_id`,`definition_id`,`attribute_id`),
  KEY `attribute_id` (`attribute_id`),
  KEY `definition_id` (`definition_id`),
  KEY `item_id` (`item_id`),
  KEY `sale_id` (`sale_id`),
  KEY `receiving_id` (`receiving_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_attribute_values`
--

DROP TABLE IF EXISTS `ospos_attribute_values`;
CREATE TABLE IF NOT EXISTS `ospos_attribute_values` (
  `attribute_id` int NOT NULL AUTO_INCREMENT,
  `attribute_value` varchar(255) DEFAULT NULL,
  `attribute_date` date DEFAULT NULL,
  `attribute_decimal` decimal(7,3) DEFAULT NULL,
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `attribute_value` (`attribute_value`),
  UNIQUE KEY `attribute_date` (`attribute_date`),
  UNIQUE KEY `attribute_decimal` (`attribute_decimal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_cash_up`
--

DROP TABLE IF EXISTS `ospos_cash_up`;
CREATE TABLE IF NOT EXISTS `ospos_cash_up` (
  `cashup_id` int NOT NULL AUTO_INCREMENT,
  `open_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `close_date` timestamp NULL DEFAULT NULL,
  `open_amount_cash` decimal(15,2) NOT NULL,
  `transfer_amount_cash` decimal(15,2) NOT NULL,
  `note` int NOT NULL,
  `closed_amount_cash` decimal(15,2) NOT NULL,
  `closed_amount_card` decimal(15,2) NOT NULL,
  `closed_amount_check` decimal(15,2) NOT NULL,
  `closed_amount_total` decimal(15,2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `open_employee_id` int NOT NULL,
  `close_employee_id` int NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `closed_amount_due` decimal(15,2) NOT NULL,
  PRIMARY KEY (`cashup_id`),
  KEY `open_employee_id` (`open_employee_id`),
  KEY `close_employee_id` (`close_employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_cash_up`
--

INSERT INTO `ospos_cash_up` (`cashup_id`, `open_date`, `close_date`, `open_amount_cash`, `transfer_amount_cash`, `note`, `closed_amount_cash`, `closed_amount_card`, `closed_amount_check`, `closed_amount_total`, `description`, `open_employee_id`, `close_employee_id`, `deleted`, `closed_amount_due`) VALUES
(1, '2025-04-30 09:45:39', '2025-04-30 09:45:39', 200000.00, 20000.00, 0, 20000.00, 0.00, 0.00, -200000.00, '', 2, 2, 0, 0.00),
(2, '2025-04-30 10:26:14', '2025-04-30 10:26:14', 2000000.00, 20000.00, 0, 19000.00, 0.00, 0.00, -2001000.00, 'test', 2, 2, 0, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers`
--

DROP TABLE IF EXISTS `ospos_customers`;
CREATE TABLE IF NOT EXISTS `ospos_customers` (
  `person_id` int NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `taxable` tinyint(1) NOT NULL DEFAULT '1',
  `tax_id` varchar(32) NOT NULL DEFAULT '',
  `sales_tax_code_id` int DEFAULT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount_type` tinyint(1) NOT NULL DEFAULT '0',
  `package_id` int DEFAULT NULL,
  `points` int DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `employee_id` int NOT NULL,
  `consent` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `account_number` (`account_number`),
  KEY `person_id` (`person_id`),
  KEY `package_id` (`package_id`),
  KEY `sales_tax_code_id` (`sales_tax_code_id`),
  KEY `company_name` (`company_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_customers`
--

INSERT INTO `ospos_customers` (`person_id`, `company_name`, `account_number`, `taxable`, `tax_id`, `sales_tax_code_id`, `discount`, `discount_type`, `package_id`, `points`, `deleted`, `date`, `employee_id`, `consent`) VALUES
(3, 'Morgan Emmanuel', NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 1, '2024-10-29 10:34:41', 2, 1),
(7, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 1, '2025-02-27 17:17:34', 5, 1),
(12, '14', '100000', 1, '', NULL, 10.00, 0, NULL, NULL, 1, '2025-04-26 16:08:10', 9, 1),
(13, '200000', '200000', 1, '12345', NULL, 10.00, 0, NULL, NULL, 1, '2025-04-26 16:10:29', 9, 1),
(14, '10', '2000000', 1, '12345', NULL, 5.00, 0, NULL, NULL, 0, '2025-04-26 16:15:16', 9, 1),
(15, 'UICT', '400000', 1, '12', NULL, 5.00, 0, NULL, NULL, 0, '2025-04-26 16:17:48', 9, 1),
(16, 'TEDDY', '10', 1, '003', NULL, 5.00, 0, NULL, NULL, 1, '2025-04-26 16:20:07', 9, 1),
(17, 'UICT', NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2025-05-04 08:08:35', 2, 1),
(18, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 1, '2025-05-19 12:23:13', 2, 1),
(21, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2025-05-20 13:20:05', 2, 1),
(25, NULL, NULL, 1, '', NULL, 0.00, 0, NULL, NULL, 0, '2025-06-08 01:38:17', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers_packages`
--

DROP TABLE IF EXISTS `ospos_customers_packages`;
CREATE TABLE IF NOT EXISTS `ospos_customers_packages` (
  `package_id` int NOT NULL AUTO_INCREMENT,
  `package_name` varchar(255) DEFAULT NULL,
  `points_percent` float NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_customers_packages`
--

INSERT INTO `ospos_customers_packages` (`package_id`, `package_name`, `points_percent`, `deleted`) VALUES
(1, 'Default', 0, 0),
(2, 'Bronze', 10, 0),
(3, 'Silver', 20, 0),
(4, 'Gold', 30, 0),
(5, 'Premium', 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers_points`
--

DROP TABLE IF EXISTS `ospos_customers_points`;
CREATE TABLE IF NOT EXISTS `ospos_customers_points` (
  `id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL,
  `package_id` int NOT NULL,
  `sale_id` int NOT NULL,
  `points_earned` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `person_id` (`person_id`),
  KEY `package_id` (`package_id`),
  KEY `sale_id` (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_dinner_tables`
--

DROP TABLE IF EXISTS `ospos_dinner_tables`;
CREATE TABLE IF NOT EXISTS `ospos_dinner_tables` (
  `dinner_table_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dinner_table_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_dinner_tables`
--

INSERT INTO `ospos_dinner_tables` (`dinner_table_id`, `name`, `status`, `deleted`) VALUES
(1, 'Delivery', 0, 0),
(2, 'Take Away', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_employees`
--

DROP TABLE IF EXISTS `ospos_employees`;
CREATE TABLE IF NOT EXISTS `ospos_employees` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `person_id` int NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `hash_version` tinyint(1) NOT NULL DEFAULT '2',
  `language` varchar(48) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `username` (`username`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_employees`
--

INSERT INTO `ospos_employees` (`username`, `password`, `person_id`, `deleted`, `hash_version`, `language`, `language_code`) VALUES
('admin', '$2y$10$vJBSMlD02EC7ENSrKfVQXuvq9tNRHMtcOA8MSK2NYS748HHWm.gcG', 1, 1, 2, NULL, NULL),
('Morgan', '$2y$10$TuoZuyKQfye/FDKDiNahwu4iUYsJIvE/vnkXvGd0jzK1NtsULoJPO', 2, 0, 2, '', ''),
('Aldo Mwiine', '$2y$10$IVHu4Jy7VDCAXFUJ7hq/b.uaP6YIZT.TRnosjbEuLlhQ2ogXR9Pfi', 5, 1, 2, '', ''),
('Obed JR', '$2y$10$t2QctxxizzgteX3bLo7tt.GV49ZUoiI1kgLC4ne.itfIez1GLWVlO', 6, 1, 2, '', ''),
('susan a', '$2y$10$LjMOzjhHzaBB0ch8AAxwCep598SWQKKP/ngThAoDso0Xrw253IEJm', 8, 1, 2, '', ''),
('DesireKirungi', '$2y$10$eqqkpocGRGuqDDuqbpzcB.nWF02edreK1gX8tmNFkypX.YASveNwW', 9, 0, 2, '', ''),
('BUKUYI RASHID', '$2y$10$HE.LES5adJ.p991u7lHWE.CBQCYpnJAa5.9ORm8uOniamSYZQ.Uay', 10, 0, 2, '', ''),
('Favourite', '$2y$10$khWbWpPOUmuP26CAU4sM/Om.FGug2GJcIz9/dR44L39DTe/feRaqS', 11, 0, 2, '', ''),
('DouglasBogere', '$2y$10$Xh9bnQj1BzYyGLgqJ1HEheFIUbAFDwFzvSyVBXvrMTlADOca0W63a', 20, 1, 2, '', ''),
('DennisEsenu', '$2y$10$5s3tHDgmQaqtV3Is/2Q3ZuLUreuzzgH5f/Zk.dQPKM76.ENu5TmUi', 23, 1, 2, '', ''),
('TestNew', '$2y$10$7Q9Nez9KHJjoKjhGoLmKWeubycRVO6OKxZj1fYuaYQX0CuzsGDoD.', 24, 0, 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_expenses`
--

DROP TABLE IF EXISTS `ospos_expenses`;
CREATE TABLE IF NOT EXISTS `ospos_expenses` (
  `expense_id` int NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` decimal(15,2) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `expense_category_id` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `employee_id` int NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `supplier_tax_code` varchar(255) DEFAULT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  PRIMARY KEY (`expense_id`),
  KEY `expense_category_id` (`expense_category_id`),
  KEY `employee_id` (`employee_id`),
  KEY `ospos_expenses_ibfk_3` (`supplier_id`),
  KEY `date` (`date`),
  KEY `payment_type` (`payment_type`),
  KEY `amount` (`amount`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_expenses`
--

INSERT INTO `ospos_expenses` (`expense_id`, `date`, `amount`, `payment_type`, `expense_category_id`, `description`, `employee_id`, `deleted`, `supplier_tax_code`, `tax_amount`, `supplier_id`) VALUES
(2, '2024-10-29 11:55:34', 20.00, 'Cash', 2, 'Test', 2, 1, 'Test', 20.00, 4),
(3, '2024-10-29 14:51:57', 20.00, 'Cash', 5, 'Test', 2, 1, 'Test', 20.00, 4),
(4, '2024-10-29 14:52:15', 20.00, 'Cash', 5, 'Test', 2, 1, 'Test', 20.00, 4),
(5, '2024-10-29 14:52:43', 20.00, 'Cash', 5, 'Test', 2, 0, 'Test', 20.00, 4),
(6, '2024-10-29 14:56:09', 20.00, 'Cash', 8, 'Test', 2, 0, 'Test', 20.00, 4),
(7, '2025-01-08 14:43:57', 5000.00, 'Cash', 9, '', 6, 0, '', 0.00, NULL),
(8, '2025-01-09 16:30:37', 5000.00, 'Cash', 9, '', 6, 0, '', 0.00, NULL),
(9, '2025-04-30 09:48:27', 20000.00, 'Cash', 9, 'test', 2, 0, '', 20000.00, 4),
(10, '2025-04-30 09:50:11', 2000.00, 'Cash', 10, 'test', 2, 0, '', 18.00, 4),
(11, '2025-04-30 10:25:15', 20000.00, 'Cash', 11, 'test', 2, 0, '', 18.00, NULL),
(12, '2025-05-20 14:07:16', 1000.00, 'Cash', 12, 'test', 9, 0, 'Test', 1000.00, 22);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_expense_categories`
--

DROP TABLE IF EXISTS `ospos_expense_categories`;
CREATE TABLE IF NOT EXISTS `ospos_expense_categories` (
  `expense_category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`expense_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_expense_categories`
--

INSERT INTO `ospos_expense_categories` (`expense_category_id`, `category_name`, `category_description`, `deleted`) VALUES
(2, '', '', 1),
(4, '', '', 1),
(5, 'TEST CATEGORY', 'category_description', 1),
(6, 'TEST CATEGORY', 'category_description', 1),
(7, 'TEST CATEGORY', 'Test', 1),
(8, 'new', 'new', 1),
(9, 'Food', 'Lunch', 1),
(10, 'testting', 'testting', 1),
(11, 'transport', 'test', 1),
(12, 'Transport', 'for transport', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_giftcards`
--

DROP TABLE IF EXISTS `ospos_giftcards`;
CREATE TABLE IF NOT EXISTS `ospos_giftcards` (
  `record_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `giftcard_id` int NOT NULL AUTO_INCREMENT,
  `giftcard_number` varchar(255) DEFAULT NULL,
  `value` decimal(15,2) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `person_id` int DEFAULT NULL,
  PRIMARY KEY (`giftcard_id`),
  UNIQUE KEY `giftcard_number` (`giftcard_number`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_grants`
--

DROP TABLE IF EXISTS `ospos_grants`;
CREATE TABLE IF NOT EXISTS `ospos_grants` (
  `permission_id` varchar(255) NOT NULL,
  `person_id` int NOT NULL,
  `menu_group` varchar(32) DEFAULT 'home',
  PRIMARY KEY (`permission_id`,`person_id`),
  KEY `ospos_grants_ibfk_2` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_grants`
--

INSERT INTO `ospos_grants` (`permission_id`, `person_id`, `menu_group`) VALUES
('attributes', 10, 'home'),
('cashups', 10, 'home'),
('config', 2, 'home'),
('config', 9, 'home'),
('config', 10, 'home'),
('config', 11, 'home'),
('customers', 2, 'home'),
('customers', 10, 'home'),
('customers', 11, 'home'),
('employees', 2, 'home'),
('employees', 10, 'home'),
('employees', 11, 'home'),
('expenses', 2, 'home'),
('expenses', 9, 'home'),
('expenses', 10, 'home'),
('expenses', 11, 'home'),
('expenses_categories', 2, 'home'),
('expenses_categories', 9, 'home'),
('expenses_categories', 10, 'home'),
('expenses_categories', 11, 'home'),
('giftcards', 10, 'home'),
('home', 2, 'home'),
('home', 10, 'home'),
('home', 11, 'home'),
('items', 2, 'home'),
('items', 10, 'home'),
('items', 11, 'home'),
('items_stock', 2, '--'),
('items_stock', 10, '--'),
('items_stock', 11, '--'),
('item_kits', 2, 'home'),
('item_kits', 10, 'home'),
('item_kits', 11, 'home'),
('messages', 10, 'home'),
('office', 10, 'both'),
('receivings', 2, 'home'),
('receivings', 9, 'home'),
('receivings', 10, 'home'),
('receivings', 11, 'home'),
('receivings_stock', 2, '--'),
('receivings_stock', 9, '--'),
('receivings_stock', 10, '--'),
('receivings_stock', 11, '--'),
('reports', 2, 'home'),
('reports', 9, 'home'),
('reports', 10, 'home'),
('reports', 11, 'home'),
('reports_categories', 2, '--'),
('reports_categories', 9, '--'),
('reports_categories', 10, '--'),
('reports_categories', 11, '--'),
('reports_customers', 2, '--'),
('reports_customers', 9, '--'),
('reports_customers', 10, '--'),
('reports_customers', 11, '--'),
('reports_discounts', 10, '--'),
('reports_employees', 2, '--'),
('reports_employees', 9, '--'),
('reports_employees', 10, '--'),
('reports_employees', 11, '--'),
('reports_expenses_categories', 2, '--'),
('reports_expenses_categories', 9, '--'),
('reports_expenses_categories', 10, '--'),
('reports_expenses_categories', 11, '--'),
('reports_inventory', 2, '--'),
('reports_inventory', 9, '--'),
('reports_inventory', 10, '--'),
('reports_inventory', 11, '--'),
('reports_items', 2, '--'),
('reports_items', 9, '--'),
('reports_items', 10, '--'),
('reports_items', 11, '--'),
('reports_payments', 2, '--'),
('reports_payments', 9, '--'),
('reports_payments', 10, '--'),
('reports_payments', 11, '--'),
('reports_receivings', 2, '--'),
('reports_receivings', 9, '--'),
('reports_receivings', 10, '--'),
('reports_receivings', 11, '--'),
('reports_sales', 2, '--'),
('reports_sales', 9, '--'),
('reports_sales', 10, '--'),
('reports_sales', 11, '--'),
('reports_sales_taxes', 10, '--'),
('reports_suppliers', 2, '--'),
('reports_suppliers', 9, '--'),
('reports_suppliers', 10, '--'),
('reports_suppliers', 11, '--'),
('reports_taxes', 10, '--'),
('sales', 2, 'home'),
('sales', 9, 'home'),
('sales', 10, 'home'),
('sales', 11, 'home'),
('sales', 24, 'home'),
('sales_change_price', 2, '--'),
('sales_change_price', 9, '--'),
('sales_change_price', 10, '--'),
('sales_change_price', 11, '--'),
('sales_change_price', 24, '--'),
('sales_delete', 2, '--'),
('sales_delete', 9, '--'),
('sales_delete', 10, '--'),
('sales_delete', 11, '--'),
('sales_delete', 24, '--'),
('sales_stock', 2, '--'),
('sales_stock', 9, '--'),
('sales_stock', 11, '--'),
('sales_stock', 24, '--'),
('suppliers', 2, 'home'),
('suppliers', 9, 'home'),
('suppliers', 10, 'home'),
('suppliers', 11, 'home'),
('taxes', 10, 'home');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_inventory`
--

DROP TABLE IF EXISTS `ospos_inventory`;
CREATE TABLE IF NOT EXISTS `ospos_inventory` (
  `trans_id` int NOT NULL AUTO_INCREMENT,
  `trans_items` int NOT NULL DEFAULT '0',
  `trans_user` int NOT NULL DEFAULT '0',
  `trans_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trans_comment` text NOT NULL,
  `trans_location` int NOT NULL,
  `trans_inventory` decimal(15,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`trans_id`),
  KEY `trans_items` (`trans_items`),
  KEY `trans_user` (`trans_user`),
  KEY `trans_location` (`trans_location`),
  KEY `trans_date` (`trans_date`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_inventory`
--

INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
(1, 1, 1, '2024-10-29 05:42:19', 'Manual Edit of Quantity', 1, 20.000),
(2, 2, 1, '2024-10-29 05:42:49', 'Manual Edit of Quantity', 1, 2.000),
(3, 2, 1, '2024-10-29 05:59:56', 'POS 1', 1, -1.000),
(4, 2, 1, '2024-10-29 06:02:31', '', 1, 20.000),
(5, 2, 2, '2024-10-29 06:16:37', 'POS 2', 1, -1.000),
(6, 2, 2, '2024-10-29 06:17:06', 'POS 3', 1, -1.000),
(7, 2, 2, '2024-10-29 07:52:14', 'POS 4', 1, -1.000),
(8, 2, 2, '2024-10-29 07:53:48', 'POS 5', 1, -1.000),
(9, 2, 2, '2024-10-29 07:54:31', 'POS 6', 1, -1.000),
(10, 2, 2, '2024-10-29 08:00:46', 'POS 7', 1, -1.000),
(11, 2, 2, '2024-10-29 10:28:30', 'POS 8', 1, -1.000),
(12, 2, 2, '2024-10-29 10:35:19', 'POS 9', 1, -1.000),
(13, 2, 2, '2024-10-29 10:39:56', 'POS 10', 1, -1.000),
(14, 1, 2, '2024-10-29 10:46:17', 'POS 11', 1, -1.000),
(15, 2, 2, '2024-10-29 10:49:44', 'POS 12', 1, -1.000),
(16, 2, 2, '2024-10-29 10:50:24', 'POS 13', 1, -1.000),
(17, 2, 2, '2024-10-29 10:52:40', 'POS 14', 1, -1.000),
(18, 2, 2, '2024-10-29 10:53:52', 'POS 15', 1, -1.000),
(19, 2, 2, '2024-10-29 10:54:26', 'POS 16', 1, -1.000),
(20, 2, 2, '2024-10-29 10:55:12', 'POS 17', 1, -1.000),
(21, 2, 2, '2024-10-29 10:58:03', 'POS 18', 1, -1.000),
(22, 2, 2, '2024-10-29 10:59:25', 'POS 19', 1, -1.000),
(23, 2, 2, '2024-10-29 11:02:56', 'POS 20', 1, -1.000),
(24, 2, 2, '2024-10-29 11:08:26', 'POS 21', 1, -1.000),
(25, 2, 2, '2024-10-29 11:12:19', 'POS 22', 1, -1.000),
(26, 2, 2, '2024-10-29 11:14:10', 'Manual Edit of Quantity', 1, 19.000),
(27, 2, 2, '2024-10-29 11:29:14', 'POS 23', 1, -3.000),
(28, 2, 2, '2024-10-29 11:31:25', 'POS 24', 1, -1.000),
(29, 2, 2, '2024-10-29 11:32:26', 'POS 25', 1, -1.000),
(30, 2, 2, '2024-10-29 11:51:04', 'POS 26', 1, -1.000),
(31, 2, 2, '2024-10-29 14:58:52', 'POS 27', 1, -6.000),
(32, 1, 2, '2024-10-29 14:58:52', 'POS 27', 1, -2.000),
(33, 3, 2, '2024-11-01 11:06:56', 'Manual Edit of Quantity', 1, 200.000),
(34, 2, 2, '2024-11-02 14:44:44', 'POS 28', 1, -1.000),
(35, 2, 2, '2024-11-02 14:50:03', 'POS 29', 1, -1.000),
(36, 2, 2, '2024-11-02 15:37:19', 'POS 30', 1, -2.000),
(37, 2, 2, '2024-11-03 16:50:56', 'POS 31', 1, -1.000),
(38, 2, 2, '2024-11-03 16:55:15', 'POS 32', 1, -1.000),
(39, 2, 2, '2024-11-03 16:56:35', 'POS 33', 1, -1.000),
(40, 2, 2, '2024-11-03 16:57:48', '', 1, 900.000),
(41, 2, 2, '2024-11-03 16:58:05', 'POS 34', 1, -2.000),
(42, 2, 2, '2024-11-03 17:01:01', 'POS 35', 1, -2.000),
(43, 2, 2, '2024-11-03 17:02:14', 'POS 36', 1, -1.000),
(44, 2, 2, '2024-11-03 17:02:56', 'POS 37', 1, -1.000),
(45, 2, 2, '2024-11-03 17:06:19', 'POS 38', 1, -1.000),
(46, 2, 2, '2024-11-03 17:13:13', 'POS 39', 1, -1.000),
(47, 2, 2, '2024-11-03 17:14:20', 'POS 40', 1, -1.000),
(48, 2, 2, '2024-11-03 17:15:03', 'POS 41', 1, -1.000),
(49, 2, 2, '2024-11-03 17:19:41', 'POS 42', 1, -1.000),
(50, 2, 2, '2024-11-03 17:51:28', 'POS 43', 1, -1.000),
(51, 2, 2, '2024-11-03 18:00:29', 'POS 44', 1, -1.000),
(52, 2, 2, '2024-11-03 18:01:50', 'POS 45', 1, -1.000),
(53, 2, 2, '2024-11-03 18:14:17', 'POS 46', 1, -1.000),
(54, 2, 2, '2024-11-03 18:16:14', 'POS 47', 1, -1.000),
(55, 2, 2, '2024-11-03 18:18:36', 'POS 48', 1, -1.000),
(56, 2, 2, '2024-11-03 18:19:16', 'POS 49', 1, -1.000),
(57, 2, 2, '2024-11-03 18:20:44', 'POS 50', 1, -1.000),
(58, 2, 2, '2024-11-03 18:21:32', 'POS 51', 1, -1.000),
(59, 2, 2, '2024-11-03 18:22:29', 'POS 52', 1, -1.000),
(60, 2, 2, '2024-11-03 18:23:00', 'POS 53', 1, -1.000),
(61, 2, 2, '2024-11-03 18:25:10', 'POS 54', 1, -1.000),
(62, 2, 2, '2024-11-03 18:36:10', 'POS 55', 1, -1.000),
(63, 2, 2, '2024-11-03 18:36:52', 'POS 56', 1, -1.000),
(64, 2, 2, '2024-11-03 18:42:41', 'POS 57', 1, -1.000),
(65, 2, 2, '2024-11-03 18:45:16', 'POS 58', 1, -1.000),
(66, 2, 2, '2024-11-03 18:47:44', 'POS 59', 1, -1.000),
(67, 2, 5, '2024-11-05 09:09:31', 'POS 60', 1, -1.000),
(68, 2, 2, '2024-11-12 12:33:55', 'POS 61', 1, -1.000),
(69, 2, 5, '2025-01-07 18:43:27', 'POS 62', 1, -1.000),
(70, 1, 5, '2025-01-08 14:42:15', 'POS 63', 1, -3.000),
(71, 2, 5, '2025-01-09 16:33:24', 'POS 64', 1, -4.000),
(72, 2, 5, '2025-01-12 12:18:21', 'POS 65', 1, -1.000),
(73, 2, 5, '2025-01-12 12:24:42', 'POS 66', 1, -1.000),
(74, 2, 5, '2025-01-12 12:25:19', 'POS 67', 1, -1.000),
(75, 2, 5, '2025-01-12 12:26:58', 'POS 68', 1, -1.000),
(76, 2, 5, '2025-01-12 12:28:51', 'POS 69', 1, -1.000),
(77, 2, 5, '2025-01-12 12:32:23', 'POS 70', 1, -1.000),
(78, 2, 5, '2025-01-12 12:34:07', 'POS 71', 1, -1.000),
(79, 2, 5, '2025-01-12 12:34:49', 'POS 72', 1, -1.000),
(80, 2, 5, '2025-01-12 12:39:05', 'POS 73', 1, -1.000),
(81, 2, 5, '2025-01-12 12:40:25', 'POS 74', 1, -1.000),
(82, 2, 5, '2025-01-12 12:42:07', 'POS 75', 1, -1.000),
(83, 2, 5, '2025-01-12 12:51:10', 'POS 76', 1, -1.000),
(84, 2, 5, '2025-01-12 12:53:56', 'POS 77', 1, -1.000),
(85, 2, 5, '2025-01-12 12:56:39', 'POS 78', 1, -1.000),
(86, 2, 5, '2025-01-12 12:59:58', 'POS 79', 1, -1.000),
(87, 2, 5, '2025-01-12 13:07:00', 'POS 80', 1, -1.000),
(88, 2, 5, '2025-01-12 13:09:24', 'POS 81', 1, -1.000),
(89, 2, 5, '2025-01-12 13:10:11', 'POS 82', 1, -1.000),
(90, 2, 5, '2025-01-12 13:10:56', 'POS 83', 1, -1.000),
(91, 2, 5, '2025-01-12 13:11:39', 'POS 84', 1, -1.000),
(92, 2, 5, '2025-01-12 13:12:27', 'POS 85', 1, -1.000),
(93, 2, 5, '2025-01-12 13:13:23', 'POS 86', 1, -1.000),
(94, 2, 5, '2025-01-12 13:15:03', 'POS 87', 1, -1.000),
(95, 2, 5, '2025-01-12 13:16:32', 'POS 88', 1, -2.000),
(96, 2, 2, '2025-01-13 14:35:36', 'POS 89', 1, -1.000),
(97, 2, 2, '2025-01-13 21:51:42', 'POS 90', 1, -1.000),
(98, 2, 2, '2025-01-13 22:05:05', 'POS 91', 1, -1.000),
(99, 2, 2, '2025-01-13 22:06:11', 'POS 92', 1, -1.000),
(100, 2, 2, '2025-01-13 22:06:54', 'POS 93', 1, -1.000),
(101, 2, 5, '2025-01-13 22:13:24', 'POS 94', 1, -1.000),
(102, 2, 5, '2025-02-27 17:17:52', 'POS 95', 1, -4.000),
(103, 2, 5, '2025-03-07 13:30:42', 'POS 96', 1, -5.000),
(104, 2, 5, '2025-03-07 18:50:05', 'POS 97', 1, -3.000),
(105, 2, 2, '2025-03-13 12:24:45', 'POS 98', 1, -1.000),
(106, 2, 2, '2025-03-13 12:29:19', 'POS 99', 1, -1.000),
(107, 2, 2, '2025-03-13 12:33:55', 'POS 100', 1, -1.000),
(108, 2, 2, '2025-03-13 12:36:56', 'POS 101', 1, -1.000),
(109, 2, 2, '2025-03-13 13:56:08', 'POS 102', 1, -1.000),
(110, 2, 2, '2025-03-13 13:57:01', 'POS 103', 1, -1.000),
(111, 2, 2, '2025-03-13 13:58:03', 'POS 104', 1, -1.000),
(112, 2, 2, '2025-03-13 13:58:21', 'POS 105', 1, -1.000),
(113, 2, 2, '2025-03-13 13:59:09', 'POS 106', 1, -1.000),
(114, 2, 2, '2025-03-13 13:59:45', 'POS 107', 1, -1.000),
(115, 2, 2, '2025-03-13 14:01:28', 'POS 108', 1, -1.000),
(116, 2, 2, '2025-03-13 14:07:50', 'POS 109', 1, -1.000),
(117, 2, 2, '2025-03-13 14:08:34', 'POS 110', 1, -1.000),
(118, 2, 2, '2025-03-13 14:09:31', 'POS 111', 1, -1.000),
(119, 2, 2, '2025-03-13 14:19:56', 'POS 112', 1, -2.000),
(120, 4, 5, '2025-04-25 15:37:45', 'Manual Edit of Quantity', 1, 0.000),
(121, 1, 5, '2025-04-25 12:38:00', 'Deleted', 1, -14.000),
(122, 2, 5, '2025-04-25 12:38:00', 'Deleted', 1, -807.000),
(123, 3, 5, '2025-04-25 12:38:00', 'Deleted', 1, -200.000),
(124, 5, 5, '2025-04-25 15:38:30', 'Manual Edit of Quantity', 1, 10000.000),
(125, 6, 5, '2025-04-25 15:39:48', 'Manual Edit of Quantity', 1, 1000.000),
(126, 7, 5, '2025-04-25 15:40:20', 'Manual Edit of Quantity', 1, 1000.000),
(127, 6, 5, '2025-04-25 15:40:59', 'POS 113', 1, -2.000),
(128, 5, 9, '2025-04-25 16:57:18', 'POS 114', 1, -1.000),
(129, 5, 5, '2025-04-25 14:40:43', 'Deleted', 1, -9999.000),
(130, 6, 5, '2025-04-25 14:40:43', 'Deleted', 1, -998.000),
(131, 7, 5, '2025-04-25 14:40:43', 'Deleted', 1, -1000.000),
(132, 8, 5, '2025-04-25 17:42:50', 'Manual Edit of Quantity', 1, 100.000),
(133, 9, 5, '2025-04-25 17:43:33', 'Manual Edit of Quantity', 1, 1000.000),
(134, 8, 5, '2025-04-25 14:43:45', 'Deleted', 1, -100.000),
(135, 9, 5, '2025-04-25 17:44:07', 'POS 118', 1, -1.000),
(136, 9, 9, '2025-04-26 16:23:11', 'POS 119', 1, -1.000),
(137, 9, 2, '2025-04-30 09:40:08', 'RECV 1', 1, 50.000),
(138, 10, 2, '2025-04-30 10:20:40', 'Manual Edit of Quantity', 1, 10.000),
(139, 11, 2, '2025-04-30 10:21:06', 'Manual Edit of Quantity', 1, 10.000),
(140, 10, 2, '2025-04-30 07:22:19', 'Deleted', 1, -10.000),
(141, 11, 2, '2025-04-30 10:23:05', 'RECV 2', 1, 20.000),
(142, 12, 2, '2025-04-30 10:30:55', 'Manual Edit of Quantity', 1, 0.000),
(143, 13, 2, '2025-05-04 08:11:06', 'Manual Edit of Quantity', 1, 100.000),
(144, 14, 2, '2025-05-19 12:30:52', 'Manual Edit of Quantity', 1, 0.000),
(145, 14, 2, '2025-05-19 12:32:13', 'Manual Edit of Quantity', 1, 1000.000),
(146, 15, 2, '2025-05-19 12:43:11', 'Manual Edit of Quantity', 1, 10000.000),
(147, 13, 2, '2025-05-19 13:04:24', 'RECV 3', 1, -10.000),
(148, 15, 2, '2025-05-20 10:22:51', 'RECV 4', 1, 90000.000),
(149, 15, 2, '2025-05-20 13:05:05', 'POS 120', 1, -1000.000),
(150, 13, 2, '2025-05-20 13:14:55', 'POS 121', 1, -1.000),
(151, 16, 2, '2025-05-20 13:37:41', 'Manual Edit of Quantity', 1, 900.000),
(152, 16, 2, '2025-05-20 13:39:21', 'test', 1, 20.000),
(153, 13, 2, '2025-05-20 13:54:45', 'POS 122', 1, -1.000),
(154, 13, 2, '2025-05-20 13:58:18', 'POS 123', 1, -80.000),
(155, 13, 2, '2025-05-20 14:02:21', 'RECV 5', 1, 300.000),
(156, 9, 11, '2025-05-25 10:13:47', 'POS 124', 1, -1.000),
(157, 9, 11, '2025-05-25 10:17:43', 'POS 125', 1, -1.000),
(158, 9, 11, '2025-05-25 11:57:52', 'POS 126', 1, -1.000),
(159, 17, 11, '2025-05-25 12:10:32', 'Manual Edit of Quantity', 1, 100.000),
(160, 17, 11, '2025-05-25 09:10:59', 'Deleted', 1, -100.000),
(161, 18, 2, '2025-06-05 18:35:28', 'Manual Edit of Quantity', 1, 1000.000),
(162, 15, 2, '2025-06-05 18:37:30', 'Deleted', 1, -99000.000);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items`
--

DROP TABLE IF EXISTS `ospos_items`;
CREATE TABLE IF NOT EXISTS `ospos_items` (
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `supplier_id` int DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `cost_price` decimal(15,2) NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `reorder_level` decimal(15,3) NOT NULL DEFAULT '0.000',
  `receiving_quantity` decimal(15,3) NOT NULL DEFAULT '1.000',
  `item_id` int NOT NULL AUTO_INCREMENT,
  `pic_filename` varchar(255) DEFAULT NULL,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `stock_type` tinyint(1) NOT NULL DEFAULT '0',
  `item_type` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `tax_category_id` int DEFAULT NULL,
  `qty_per_pack` decimal(15,3) NOT NULL DEFAULT '1.000',
  `pack_name` varchar(8) DEFAULT 'Each',
  `low_sell_item_id` int DEFAULT '0',
  `hsn_code` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `items_uq1` (`supplier_id`,`item_id`,`deleted`,`item_type`),
  KEY `item_number` (`item_number`),
  KEY `supplier_id` (`supplier_id`),
  KEY `deleted` (`deleted`,`item_type`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_items`
--

INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `item_number`, `description`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_filename`, `allow_alt_description`, `is_serialized`, `stock_type`, `item_type`, `deleted`, `tax_category_id`, `qty_per_pack`, `pack_name`, `low_sell_item_id`, `hsn_code`) VALUES
('Tests X', 'Test', NULL, 'Test', 'Test', 1000000.00, 100000.00, 1.000, 1.000, 1, NULL, 1, 0, 0, 0, 1, 0, 1.000, 'Each', 1, ''),
('Test X', 'Test X', NULL, NULL, '', 100000.00, 100000.00, 1.000, 1.000, 2, NULL, 0, 0, 0, 0, 1, 0, 1.000, 'Each', 2, ''),
('Tests X', 'Phones', 4, '09928', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Prov', 1000000.00, 100000.00, 1.000, 200.000, 3, NULL, 0, 0, 0, 0, 1, 0, 1.000, 'Each', 3, ''),
('php', 'none', NULL, NULL, '', 0.00, 0.00, 1.000, 1.000, 4, NULL, 0, 0, 0, 0, 1, 0, 1.000, 'Each', 4, ''),
('test', 'none', 4, NULL, '', 100000.00, 10000.00, 1.000, 1.000, 5, 'favicon-96x96.png', 0, 0, 0, 0, 1, 0, 1.000, 'Each', 5, ''),
('car ', 'none', 4, 'test000', 'test', 100000.00, 100000.00, 10.000, 10.000, 6, 'favicon-96x96.png', 0, 0, 0, 0, 1, 0, 1.000, 'Each', 6, ''),
('car ', 'none', 4, NULL, '', 10000.00, 10000.00, 50.000, 50.000, 7, 'favicon-96x96.png', 0, 0, 0, 0, 1, 0, 1.000, 'Each', 7, ''),
('Car item', 'none', 4, NULL, 'test', 10000.00, 10000.00, 10.000, 10.000, 8, NULL, 0, 0, 0, 0, 1, 0, 1.000, 'Each', 8, ''),
('Car Engine', 'none', 4, '0019200', 'test', 100000.00, 100000.00, 20.000, 20.000, 9, NULL, 0, 0, 0, 0, 0, 0, 1.000, 'Each', 9, ''),
('test', 'none', 4, NULL, 'tets', 100000.00, 10000.00, 1.000, 1.000, 10, NULL, 0, 0, 0, 0, 1, 0, 1.000, 'Each', 10, ''),
('Suspensions', 'none', NULL, NULL, '', 20000.00, 20000.00, 20.000, 20.000, 11, NULL, 0, 0, 0, 0, 0, 0, 1.000, 'Each', 11, ''),
('test', 'test', NULL, NULL, '', 0.00, 0.00, 1.000, 1.000, 12, NULL, 0, 0, 0, 0, 1, 0, 1.000, 'Each', 12, ''),
('Tires', 'NONE', NULL, '002930', 'TEST', 20000.00, 200000.00, 100.000, 100.000, 13, NULL, 0, 0, 0, 0, 0, 0, 1.000, 'Each', 13, ''),
('Spark plugs', '', 4, '0383848', 'test', 20000.00, 20000.00, 100.000, 100.000, 14, 'logo.png', 0, 0, 0, 0, 0, 0, 1.000, 'Each', 14, ''),
('Car seats', '', 4, '002884', 'test', 20000.00, 20000.00, 1000.000, 100.000, 15, 'logo.png', 0, 0, 0, 0, 1, 0, 1.000, 'Each', 15, ''),
('Car mirrors', '', 22, '001001', 'hp brand new etc', 1200000.00, 1200000.00, 100.000, 100.000, 16, 'logo.png', 0, 0, 0, 0, 0, 0, 1.000, 'Each', 16, ''),
('283838', '', NULL, 'q9293', '', 1000.00, 1000.00, 10.000, 10.000, 17, NULL, 0, 0, 0, 0, 1, 0, 1.000, 'Each', 17, ''),
('test122', '', 22, '10000', '', 0.00, 0.00, 10.000, 10.000, 18, NULL, 0, 0, 0, 0, 0, 0, 1.000, 'Each', 18, '');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items_taxes`
--

DROP TABLE IF EXISTS `ospos_items_taxes`;
CREATE TABLE IF NOT EXISTS `ospos_items_taxes` (
  `item_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,3) NOT NULL,
  PRIMARY KEY (`item_id`,`name`,`percent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_items_taxes`
--

INSERT INTO `ospos_items_taxes` (`item_id`, `name`, `percent`) VALUES
(3, 'vat', 18.000),
(9, 'Test X', 18.000),
(13, 'Test X', 18.000),
(14, 'tax1', 18.000),
(14, 'tax2', 18.000),
(16, 'Cost sample', 25.000),
(16, 'VAT', 18.000);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kits`
--

DROP TABLE IF EXISTS `ospos_item_kits`;
CREATE TABLE IF NOT EXISTS `ospos_item_kits` (
  `item_kit_id` int NOT NULL AUTO_INCREMENT,
  `item_kit_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `item_id` int NOT NULL DEFAULT '0',
  `kit_discount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `kit_discount_type` tinyint(1) NOT NULL DEFAULT '0',
  `price_option` tinyint(1) NOT NULL DEFAULT '0',
  `print_option` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`item_kit_id`),
  KEY `item_kit_number` (`item_kit_number`),
  KEY `name` (`name`,`description`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_item_kits`
--

INSERT INTO `ospos_item_kits` (`item_kit_id`, `item_kit_number`, `name`, `item_id`, `kit_discount`, `kit_discount_type`, `price_option`, `print_option`, `description`) VALUES
(1, '', 'Item kit1', 0, 0.00, 0, 0, 0, 'test'),
(2, '', 'tes1', 0, 0.00, 0, 0, 0, 'testing'),
(3, '09978TEST', 'TESTINGKIT', 0, 15.00, 0, 0, 0, 'test'),
(4, 'BA09283', 'Tires', 0, 0.00, 0, 0, 0, 'contains nails, car oil, brake fluid\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kit_items`
--

DROP TABLE IF EXISTS `ospos_item_kit_items`;
CREATE TABLE IF NOT EXISTS `ospos_item_kit_items` (
  `item_kit_id` int NOT NULL,
  `item_id` int NOT NULL,
  `quantity` decimal(15,3) NOT NULL,
  `kit_sequence` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_kit_id`,`item_id`,`quantity`),
  KEY `ospos_item_kit_items_ibfk_2` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_item_kit_items`
--

INSERT INTO `ospos_item_kit_items` (`item_kit_id`, `item_id`, `quantity`, `kit_sequence`) VALUES
(3, 13, 1.000, 0),
(4, 16, 1.000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_quantities`
--

DROP TABLE IF EXISTS `ospos_item_quantities`;
CREATE TABLE IF NOT EXISTS `ospos_item_quantities` (
  `item_id` int NOT NULL,
  `location_id` int NOT NULL,
  `quantity` decimal(15,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`item_id`,`location_id`),
  KEY `item_id` (`item_id`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_item_quantities`
--

INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
(1, 1, 0.000),
(2, 1, 0.000),
(3, 1, 0.000),
(4, 1, 0.000),
(5, 1, 0.000),
(6, 1, 0.000),
(7, 1, 0.000),
(8, 1, 0.000),
(9, 1, 1045.000),
(10, 1, 0.000),
(11, 1, 30.000),
(12, 1, 0.000),
(13, 1, 308.000),
(14, 1, 1000.000),
(15, 1, 0.000),
(16, 1, 920.000),
(17, 1, 0.000),
(18, 1, 1000.000);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_migrations`
--

DROP TABLE IF EXISTS `ospos_migrations`;
CREATE TABLE IF NOT EXISTS `ospos_migrations` (
  `version` bigint NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_migrations`
--

INSERT INTO `ospos_migrations` (`version`) VALUES
(20210714140000);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_modules`
--

DROP TABLE IF EXISTS `ospos_modules`;
CREATE TABLE IF NOT EXISTS `ospos_modules` (
  `name_lang_key` varchar(255) NOT NULL,
  `desc_lang_key` varchar(255) NOT NULL,
  `sort` int NOT NULL,
  `module_id` varchar(255) NOT NULL,
  PRIMARY KEY (`module_id`),
  UNIQUE KEY `desc_lang_key` (`desc_lang_key`),
  UNIQUE KEY `name_lang_key` (`name_lang_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_modules`
--

INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`) VALUES
('module_attributes', 'module_attributes_desc', 107, 'attributes'),
('module_cashups', 'module_cashups_desc', 110, 'cashups'),
('module_config', 'module_config_desc', 900, 'config'),
('module_customers', 'module_clients_desc', 10, 'customers'),
('module_employees', 'module_employees_desc', 80, 'employees'),
('module_expenses', 'module_expenses_desc', 108, 'expenses'),
('module_expenses_categories', 'module_expenses_categories_desc', 109, 'expenses_categories'),
('module_giftcards', 'module_giftcards_desc', 90, 'giftcards'),
('module_home', 'module_home_desc', 1, 'home'),
('module_items', 'module_items_desc', 20, 'items'),
('module_item_kits', 'module_item_kits_desc', 30, 'item_kits'),
('module_messages', 'module_messages_desc', 98, 'messages'),
('module_office', 'module_office_desc', 0, 'office'),
('module_receivings', 'module_receivings_desc', 60, 'receivings'),
('module_reports', 'module_reports_desc', 50, 'reports'),
('module_sales', 'module_sales_desc', 70, 'sales'),
('module_suppliers', 'module_suppliers_desc', 40, 'suppliers'),
('module_taxes', 'module_taxes_desc', 105, 'taxes');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_people`
--

DROP TABLE IF EXISTS `ospos_people`;
CREATE TABLE IF NOT EXISTS `ospos_people` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `person_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`person_id`),
  KEY `email` (`email`),
  KEY `first_name` (`first_name`,`last_name`,`email`,`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_people`
--

INSERT INTO `ospos_people` (`first_name`, `last_name`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
('John', 'Doe', NULL, '555-555-5555', 'changeme@example.com', 'Address 1', '', '', '', '', '', '', 1),
('User', 'Test', 1, '0705015316', 'emmymorgan1278@gmail.com', 'Seeta', 'Gwaffu road', 'Kampala', '', '', 'Uganda', '', 2),
('Morgan', 'Emmaneul', 1, '0705015316', 'emmymorgan1278@gmail.com', 'Seeta', 'Gwaffu road', 'Kampala', '', '', 'Uganda', '', 3),
('Emmanuel', 'Morgan', 1, '0705015316', 'emmymorgan1278@gmail.com', 'Seeta', 'Gwaffu road', 'Kampala', 'TEST', 'TEST', 'Uganda', 'TEST', 4),
('Aldo', 'Mwiine', 1, '0742591914', 'aldomwine1@gmail.com', '', '', '', '', '', '', '', 5),
('Obed', 'Jr', 1, '0742591914', 'house88creative@gmail.com', '', '', '', '', '', '', '', 6),
('Aa', 'Dsgtfdg', 0, '', '', '', '', '', '', '', '', '', 7),
(' Susan', 'Ariho', 0, '0742591914', 'aldomwine1@gmail.com', 'Ruharo', 'Mbarara', 'Mbarara', '', '', 'Uganda', '', 8),
('Desire ', 'Kirungi', 0, '', 'kirungi@gmail.com', '', '', '', '', '', '', '', 9),
('Bukuyi', 'Rashid', 1, '0744687873', 'buuyirashid152@gmail.com', '', '', '', '', '', '', '', 10),
('Sheila', 'Test', 0, '', '', '', '', '', '', '', '', '', 11),
('Teddy', 'Nasu', 0, '074445768', '', '', '', 'kampala', 'kampala', '', 'uganda', '0ne car', 12),
('Teddy', 'Nasu', 0, '0789657', '', '', '', 'kampala', 'kampala', '', 'uganda', '', 13),
('Teddy', 'Nasu', 0, '0789657', '', '', '', 'KAMPALA', 'KAMPALA', '', 'UGANDA', 'ONE', 14),
('Teddy', 'Nasu', 0, '0789657', '', '', '', 'KAMPALA', 'KAMPALA', '', 'UGANDA', 'ONE', 15),
('Teddy', 'Nabu', 0, '07897532', '', '', '', 'KAMPALA', 'KAMPALA', '', 'UGANDA', '', 16),
('Test', 'Test', 1, '0705015316', 'emmymorgan1278@gmail.com', 'Seeta', 'Gwaffu road', 'Kampala', '', '', 'Uganda', '', 17),
('Ngorok', 'Emmaneul', 1, '0705015316', 'test8@gmail.com', 'Seeta', '', '', '', '', 'Uganda', '', 18),
('Morgan', 'N.Emmanuel', 1, '0705015316', 'emmymorgan1278@gmail.com', 'Seeta', '', '', '', '', 'Uganda', '', 19),
('Douglas', ' Bogere', 1, '0705015316', 'douglas@gmail.com', 'Seeta', '', '', '', '', 'Uganda', '', 20),
('Brenda1', 'Test1', 0, '0705015311', 'brenda1@gmail.com', 'Seeta1', '', '', '', '', 'Uganda1', '', 21),
('Favourite', 'Sheila', 0, '0705015316', 'sheila@gmail.com', 'Seeta', '', '', '', '', 'Uganda', '', 22),
('Esenu', 'Dennis', 1, '0705015316', 'dennis-0@gmail.com', 'Seeta', '', '', '', '', 'Uganda', '', 23),
('TestNew', 'New', NULL, '', 'admin@admin.com', '', '', '', '', '', '', '', 24),
('Aldo', 'Mwiine', NULL, '0772954217', 'aldomwine1gmail.com', 'Seeta', '', '', '', '', 'Uganda', '', 25);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_permissions`
--

DROP TABLE IF EXISTS `ospos_permissions`;
CREATE TABLE IF NOT EXISTS `ospos_permissions` (
  `permission_id` varchar(255) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `location_id` int DEFAULT NULL,
  PRIMARY KEY (`permission_id`),
  KEY `module_id` (`module_id`),
  KEY `ospos_permissions_ibfk_2` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_permissions`
--

INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
('attributes', 'attributes', NULL),
('cashups', 'cashups', NULL),
('config', 'config', NULL),
('customers', 'customers', NULL),
('employees', 'employees', NULL),
('expenses', 'expenses', NULL),
('expenses_categories', 'expenses_categories', NULL),
('giftcards', 'giftcards', NULL),
('home', 'home', NULL),
('items', 'items', NULL),
('items_stock', 'items', 1),
('item_kits', 'item_kits', NULL),
('messages', 'messages', NULL),
('office', 'office', NULL),
('receivings', 'receivings', NULL),
('receivings_stock', 'receivings', 1),
('reports', 'reports', NULL),
('reports_categories', 'reports', NULL),
('reports_customers', 'reports', NULL),
('reports_discounts', 'reports', NULL),
('reports_employees', 'reports', NULL),
('reports_expenses_categories', 'reports', NULL),
('reports_inventory', 'reports', NULL),
('reports_items', 'reports', NULL),
('reports_payments', 'reports', NULL),
('reports_receivings', 'reports', NULL),
('reports_sales', 'reports', NULL),
('reports_sales_taxes', 'reports', NULL),
('reports_suppliers', 'reports', NULL),
('reports_taxes', 'reports', NULL),
('sales', 'sales', NULL),
('sales_change_price', 'sales', NULL),
('sales_delete', 'sales', NULL),
('sales_stock', 'sales', 1),
('suppliers', 'suppliers', NULL),
('taxes', 'taxes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings`
--

DROP TABLE IF EXISTS `ospos_receivings`;
CREATE TABLE IF NOT EXISTS `ospos_receivings` (
  `receiving_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supplier_id` int DEFAULT NULL,
  `employee_id` int NOT NULL DEFAULT '0',
  `comment` text,
  `receiving_id` int NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(20) DEFAULT NULL,
  `reference` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`receiving_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `employee_id` (`employee_id`),
  KEY `reference` (`reference`),
  KEY `receiving_time` (`receiving_time`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_receivings`
--

INSERT INTO `ospos_receivings` (`receiving_time`, `supplier_id`, `employee_id`, `comment`, `receiving_id`, `payment_type`, `reference`) VALUES
('2025-04-30 09:40:08', 4, 2, '', 1, 'Cash', NULL),
('2025-04-30 10:23:05', 4, 2, 'test', 2, 'Cash', NULL),
('2025-05-19 13:04:24', NULL, 2, '', 3, 'Cash', NULL),
('2025-05-20 10:22:51', NULL, 2, '', 4, 'Cash', NULL),
('2025-05-20 14:02:21', 22, 2, 'giving 300 testnew products', 5, 'Cash', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings_items`
--

DROP TABLE IF EXISTS `ospos_receivings_items`;
CREATE TABLE IF NOT EXISTS `ospos_receivings_items` (
  `receiving_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int NOT NULL,
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT '0.000',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount_type` tinyint(1) NOT NULL DEFAULT '0',
  `item_location` int NOT NULL,
  `receiving_quantity` decimal(15,3) NOT NULL DEFAULT '1.000',
  PRIMARY KEY (`receiving_id`,`item_id`,`line`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_receivings_items`
--

INSERT INTO `ospos_receivings_items` (`receiving_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount`, `discount_type`, `item_location`, `receiving_quantity`) VALUES
(1, 9, 'test', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 50.000),
(2, 11, '', '', 1, 1.000, 20000.00, 20000.00, 0.00, 0, 1, 20.000),
(3, 13, 'TEST', NULL, 1, -1.000, 20000.00, 20000.00, 0.00, 0, 1, 10.000),
(4, 15, 'test', NULL, 1, 90.000, 20000.00, 20000.00, 0.00, 0, 1, 1000.000),
(5, 13, 'TEST', NULL, 1, 3.000, 20000.00, 20000.00, 0.00, 0, 1, 100.000);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales`
--

DROP TABLE IF EXISTS `ospos_sales`;
CREATE TABLE IF NOT EXISTS `ospos_sales` (
  `sale_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int DEFAULT NULL,
  `employee_id` int NOT NULL DEFAULT '0',
  `comment` text,
  `invoice_number` varchar(32) DEFAULT NULL,
  `quote_number` varchar(32) DEFAULT NULL,
  `sale_id` int NOT NULL AUTO_INCREMENT,
  `sale_status` tinyint(1) NOT NULL DEFAULT '0',
  `dinner_table_id` int DEFAULT NULL,
  `work_order_number` varchar(32) DEFAULT NULL,
  `sale_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sale_id`),
  UNIQUE KEY `invoice_number` (`invoice_number`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  KEY `sale_time` (`sale_time`),
  KEY `dinner_table_id` (`dinner_table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_sales`
--

INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `comment`, `invoice_number`, `quote_number`, `sale_id`, `sale_status`, `dinner_table_id`, `work_order_number`, `sale_type`) VALUES
('2024-10-29 05:59:56', NULL, 1, '', NULL, NULL, 1, 0, NULL, NULL, 0),
('2024-10-29 06:16:37', NULL, 2, '', NULL, NULL, 2, 0, NULL, NULL, 0),
('2024-10-29 06:17:06', NULL, 2, '', NULL, NULL, 3, 0, NULL, NULL, 0),
('2024-10-29 07:52:14', NULL, 2, '', NULL, NULL, 4, 0, NULL, NULL, 0),
('2024-10-29 07:53:48', NULL, 2, '', NULL, NULL, 5, 0, NULL, NULL, 0),
('2024-10-29 07:54:31', NULL, 2, '', NULL, NULL, 6, 0, NULL, NULL, 0),
('2024-10-29 08:00:46', NULL, 2, '', NULL, NULL, 7, 0, NULL, NULL, 0),
('2024-10-29 10:28:30', NULL, 2, '', NULL, NULL, 8, 0, NULL, NULL, 0),
('2024-10-29 10:35:19', 3, 2, '', NULL, NULL, 9, 0, NULL, NULL, 0),
('2024-10-29 10:39:56', 3, 2, '', NULL, NULL, 10, 0, NULL, NULL, 0),
('2024-10-29 10:46:17', 3, 2, '', NULL, NULL, 11, 0, NULL, NULL, 0),
('2024-10-29 10:49:44', 3, 2, '', NULL, NULL, 12, 0, NULL, NULL, 0),
('2024-10-29 10:50:24', 3, 2, '', NULL, NULL, 13, 0, NULL, NULL, 0),
('2024-10-29 10:52:40', 3, 2, '', NULL, NULL, 14, 0, NULL, NULL, 0),
('2024-10-29 10:53:52', 3, 2, '', NULL, NULL, 15, 0, NULL, NULL, 0),
('2024-10-29 10:54:26', 3, 2, '', NULL, NULL, 16, 0, NULL, NULL, 0),
('2024-10-29 10:55:12', 3, 2, '', NULL, NULL, 17, 0, NULL, NULL, 0),
('2024-10-29 10:58:03', 3, 2, '', NULL, NULL, 18, 0, NULL, NULL, 0),
('2024-10-29 10:59:25', 3, 2, '', NULL, NULL, 19, 0, NULL, NULL, 0),
('2024-10-29 11:02:56', 3, 2, '', NULL, NULL, 20, 0, NULL, NULL, 0),
('2024-10-29 11:08:26', 3, 2, '', NULL, NULL, 21, 0, NULL, NULL, 0),
('2024-10-29 11:12:19', 3, 2, '', NULL, NULL, 22, 0, NULL, NULL, 0),
('2024-10-29 11:29:13', 3, 2, '', NULL, NULL, 23, 0, NULL, NULL, 0),
('2024-10-29 11:31:24', 3, 2, '', NULL, NULL, 24, 0, NULL, NULL, 0),
('2024-10-29 11:32:26', 3, 2, '', NULL, NULL, 25, 0, NULL, NULL, 0),
('2024-10-29 11:51:04', 3, 2, '', NULL, NULL, 26, 0, NULL, NULL, 0),
('2024-10-29 14:58:52', 3, 2, '', NULL, NULL, 27, 0, NULL, NULL, 0),
('2024-11-02 14:44:44', 3, 2, '', NULL, NULL, 28, 0, NULL, NULL, 0),
('2024-11-02 14:50:03', 3, 2, '', '0', NULL, 29, 0, NULL, NULL, 1),
('2024-11-02 15:37:19', 3, 2, '', NULL, NULL, 30, 0, NULL, NULL, 0),
('2024-11-03 16:50:56', 3, 2, '', NULL, NULL, 31, 0, NULL, NULL, 0),
('2024-11-03 16:55:15', 3, 2, '', NULL, NULL, 32, 0, NULL, NULL, 0),
('2024-11-03 16:56:35', 3, 2, '', NULL, NULL, 33, 0, NULL, NULL, 0),
('2024-11-03 16:58:05', 3, 2, '', NULL, NULL, 34, 0, NULL, NULL, 0),
('2024-11-03 17:01:01', 3, 2, '', NULL, NULL, 35, 0, NULL, NULL, 0),
('2024-11-03 17:02:14', 3, 2, '', NULL, NULL, 36, 0, NULL, NULL, 0),
('2024-11-03 17:02:56', 3, 2, '', NULL, NULL, 37, 0, NULL, NULL, 0),
('2024-11-03 17:06:19', 3, 2, '', NULL, NULL, 38, 0, NULL, NULL, 0),
('2024-11-03 17:13:13', 3, 2, '', NULL, NULL, 39, 0, NULL, NULL, 0),
('2024-11-03 17:14:20', 3, 2, '', NULL, NULL, 40, 0, NULL, NULL, 0),
('2024-11-03 17:15:02', 3, 2, '', NULL, NULL, 41, 0, NULL, NULL, 0),
('2024-11-03 17:19:41', 3, 2, '', NULL, NULL, 42, 0, NULL, NULL, 0),
('2024-11-03 17:51:28', 3, 2, '', NULL, NULL, 43, 0, NULL, NULL, 0),
('2024-11-03 18:00:29', 3, 2, '', NULL, NULL, 44, 0, NULL, NULL, 0),
('2024-11-03 18:01:50', 3, 2, '', NULL, NULL, 45, 0, NULL, NULL, 0),
('2024-11-03 18:14:17', 3, 2, '', NULL, NULL, 46, 0, NULL, NULL, 0),
('2024-11-03 18:16:14', 3, 2, '', NULL, NULL, 47, 0, NULL, NULL, 0),
('2024-11-03 18:18:36', 3, 2, '', NULL, NULL, 48, 0, NULL, NULL, 0),
('2024-11-03 18:19:16', 3, 2, '', NULL, NULL, 49, 0, NULL, NULL, 0),
('2024-11-03 18:20:44', 3, 2, '', NULL, NULL, 50, 0, NULL, NULL, 0),
('2024-11-03 18:21:32', 3, 2, '', NULL, NULL, 51, 0, NULL, NULL, 0),
('2024-11-03 18:22:29', 3, 2, '', NULL, NULL, 52, 0, NULL, NULL, 0),
('2024-11-03 18:23:00', 3, 2, '', NULL, NULL, 53, 0, NULL, NULL, 0),
('2024-11-03 18:25:10', 3, 2, '', NULL, NULL, 54, 0, NULL, NULL, 0),
('2024-11-03 18:36:10', 3, 2, '', NULL, NULL, 55, 0, NULL, NULL, 0),
('2024-11-03 18:36:52', 3, 2, '', NULL, NULL, 56, 0, NULL, NULL, 0),
('2024-11-03 18:42:40', 3, 2, '', NULL, NULL, 57, 0, NULL, NULL, 0),
('2024-11-03 18:45:16', 3, 2, '', NULL, NULL, 58, 0, NULL, NULL, 0),
('2024-11-03 18:47:44', 3, 2, '', NULL, NULL, 59, 0, NULL, NULL, 0),
('2024-11-05 09:09:31', 3, 5, '', NULL, NULL, 60, 0, NULL, NULL, 0),
('2024-11-12 12:33:55', NULL, 2, '', NULL, NULL, 61, 0, NULL, NULL, 0),
('2025-01-07 18:43:27', NULL, 5, '', NULL, NULL, 62, 0, NULL, NULL, 0),
('2025-01-08 14:42:14', NULL, 5, '', NULL, NULL, 63, 0, NULL, NULL, 0),
('2025-01-09 16:33:23', NULL, 5, '', NULL, NULL, 64, 0, NULL, NULL, 0),
('2025-01-12 12:18:21', 3, 5, '', NULL, NULL, 65, 0, NULL, NULL, 0),
('2025-01-12 12:24:42', NULL, 5, '', NULL, NULL, 66, 0, NULL, NULL, 0),
('2025-01-12 12:25:19', NULL, 5, '', NULL, NULL, 67, 0, NULL, NULL, 0),
('2025-01-12 12:26:58', NULL, 5, '', NULL, NULL, 68, 0, NULL, NULL, 0),
('2025-01-12 12:28:51', 3, 5, '', NULL, NULL, 69, 0, NULL, NULL, 0),
('2025-01-12 12:32:23', NULL, 5, '', NULL, NULL, 70, 0, NULL, NULL, 0),
('2025-01-12 12:34:07', NULL, 5, '', NULL, NULL, 71, 0, NULL, NULL, 0),
('2025-01-12 12:34:49', NULL, 5, '', NULL, NULL, 72, 0, NULL, NULL, 0),
('2025-01-12 12:39:05', NULL, 5, '', NULL, NULL, 73, 0, NULL, NULL, 0),
('2025-01-12 12:40:25', 3, 5, '', NULL, NULL, 74, 0, NULL, NULL, 0),
('2025-01-12 12:42:07', 3, 5, '', NULL, NULL, 75, 0, NULL, NULL, 0),
('2025-01-12 12:51:10', 3, 5, '', NULL, NULL, 76, 0, NULL, NULL, 0),
('2025-01-12 12:53:56', NULL, 5, '', NULL, NULL, 77, 0, NULL, NULL, 0),
('2025-01-12 12:56:39', 3, 5, '', NULL, NULL, 78, 0, NULL, NULL, 0),
('2025-01-12 12:59:57', 3, 5, '', NULL, NULL, 79, 0, NULL, NULL, 0),
('2025-01-12 13:06:59', 3, 5, '', NULL, NULL, 80, 0, NULL, NULL, 0),
('2025-01-12 13:09:24', 3, 5, '', NULL, NULL, 81, 0, NULL, NULL, 0),
('2025-01-12 13:10:10', 3, 5, '', NULL, NULL, 82, 0, NULL, NULL, 0),
('2025-01-12 13:10:56', 3, 5, '', NULL, NULL, 83, 0, NULL, NULL, 0),
('2025-01-12 13:11:32', 3, 5, '', NULL, NULL, 84, 0, NULL, NULL, 0),
('2025-01-12 13:12:27', 3, 5, '', NULL, NULL, 85, 0, NULL, NULL, 0),
('2025-01-12 13:13:22', 3, 5, '', NULL, NULL, 86, 0, NULL, NULL, 0),
('2025-01-12 13:15:02', 3, 5, '', NULL, NULL, 87, 0, NULL, NULL, 0),
('2025-01-12 13:16:32', 3, 5, '', NULL, NULL, 88, 0, NULL, NULL, 0),
('2025-01-13 14:35:36', 3, 2, '', NULL, NULL, 89, 0, NULL, NULL, 0),
('2025-01-13 21:51:42', 3, 2, '', NULL, NULL, 90, 0, NULL, NULL, 0),
('2025-01-13 22:05:03', 3, 2, '', NULL, NULL, 91, 0, NULL, NULL, 0),
('2025-01-13 22:06:11', 3, 2, '', NULL, NULL, 92, 0, NULL, NULL, 0),
('2025-01-13 22:06:54', 3, 2, '', NULL, NULL, 93, 0, NULL, NULL, 0),
('2025-01-13 22:13:24', NULL, 5, '', NULL, NULL, 94, 0, NULL, NULL, 0),
('2025-02-27 17:17:52', 7, 5, '', NULL, NULL, 95, 0, NULL, NULL, 0),
('2025-03-07 13:30:42', 3, 5, '', NULL, NULL, 96, 0, NULL, NULL, 0),
('2025-03-07 18:50:04', 3, 5, '', NULL, NULL, 97, 0, NULL, NULL, 0),
('2025-03-13 12:24:45', NULL, 2, '', NULL, NULL, 98, 0, NULL, NULL, 0),
('2025-03-13 12:29:19', NULL, 2, '', NULL, NULL, 99, 0, NULL, NULL, 0),
('2025-03-13 12:33:55', NULL, 2, '', NULL, NULL, 100, 0, NULL, NULL, 0),
('2025-03-13 12:36:56', NULL, 2, '', NULL, NULL, 101, 0, NULL, NULL, 0),
('2025-03-13 13:56:08', NULL, 2, '', NULL, NULL, 102, 0, NULL, NULL, 0),
('2025-03-13 13:57:01', NULL, 2, '', NULL, NULL, 103, 0, NULL, NULL, 0),
('2025-03-13 13:58:03', NULL, 2, '', NULL, NULL, 104, 0, NULL, NULL, 0),
('2025-03-13 13:58:21', NULL, 2, '', NULL, NULL, 105, 0, NULL, NULL, 0),
('2025-03-13 13:59:09', NULL, 2, '', NULL, NULL, 106, 0, NULL, NULL, 0),
('2025-03-13 13:59:45', NULL, 2, '', NULL, NULL, 107, 0, NULL, NULL, 0),
('2025-03-13 14:01:28', NULL, 2, '', NULL, NULL, 108, 0, NULL, NULL, 0),
('2025-03-13 14:07:50', NULL, 2, '', NULL, NULL, 109, 0, NULL, NULL, 0),
('2025-03-13 14:08:34', NULL, 2, '', NULL, NULL, 110, 0, NULL, NULL, 0),
('2025-03-13 14:09:31', NULL, 2, '', NULL, NULL, 111, 0, NULL, NULL, 0),
('2025-03-13 14:19:56', NULL, 2, '', NULL, NULL, 112, 0, NULL, NULL, 0),
('2025-04-25 15:40:59', NULL, 5, '', NULL, NULL, 113, 0, NULL, NULL, 0),
('2025-04-25 16:57:18', NULL, 9, '', NULL, NULL, 114, 0, NULL, NULL, 0),
('2025-04-25 17:44:07', NULL, 5, '', NULL, NULL, 118, 0, NULL, NULL, 0),
('2025-04-26 16:23:11', 16, 9, '', NULL, NULL, 119, 0, NULL, NULL, 0),
('2025-05-20 13:05:05', NULL, 2, '', NULL, NULL, 120, 0, NULL, NULL, 0),
('2025-05-20 13:14:55', NULL, 2, '', NULL, NULL, 121, 0, NULL, NULL, 0),
('2025-05-20 13:54:45', 21, 2, '', NULL, NULL, 122, 0, NULL, NULL, 0),
('2025-05-20 13:58:18', NULL, 2, '', NULL, NULL, 123, 0, NULL, NULL, 0),
('2025-05-25 10:13:47', 17, 11, '', NULL, NULL, 124, 0, NULL, NULL, 0),
('2025-05-25 10:17:43', 14, 11, '', NULL, NULL, 125, 0, NULL, NULL, 0),
('2025-05-25 11:57:52', 14, 11, '', NULL, NULL, 126, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items`
--

DROP TABLE IF EXISTS `ospos_sales_items`;
CREATE TABLE IF NOT EXISTS `ospos_sales_items` (
  `sale_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int NOT NULL DEFAULT '0',
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT '0.000',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount_type` tinyint(1) NOT NULL DEFAULT '0',
  `item_location` int NOT NULL,
  `print_option` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sale_id`,`item_id`,`line`),
  KEY `sale_id` (`sale_id`),
  KEY `item_id` (`item_id`),
  KEY `item_location` (`item_location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_sales_items`
--

INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount`, `discount_type`, `item_location`, `print_option`) VALUES
(1, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(2, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(3, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(4, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(5, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(6, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(7, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(8, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(9, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(10, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(11, 1, 'Test', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(12, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(13, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(14, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(15, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(16, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(17, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(18, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(19, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(20, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(21, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(22, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(23, 2, '', '', 1, 3.000, 20.00, 20.00, 0.00, 0, 1, 0),
(24, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(25, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(26, 2, '', '', 1, 1.000, 20.00, 20.00, 0.00, 0, 1, 0),
(27, 1, 'Test', '', 2, 2.000, 1000000.00, 100000.00, 0.00, 0, 1, 0),
(27, 2, '', '', 1, 6.000, 20.00, 20.00, 0.00, 0, 1, 0),
(28, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(29, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(30, 2, '', '', 1, 2.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(31, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(32, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(33, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(34, 2, '', '', 1, 2.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(35, 2, '', '', 1, 2.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(36, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(37, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(38, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(39, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(40, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(41, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(42, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(43, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(44, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(45, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(46, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(47, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(48, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(49, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(50, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(51, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(52, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(53, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(54, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(55, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(56, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(57, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(58, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(59, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(60, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(61, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(62, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(63, 1, 'Test', '', 1, 3.000, 1000000.00, 100000.00, 0.00, 0, 1, 0),
(64, 2, '', '', 1, 4.000, 100000.00, 40000.00, 0.00, 0, 1, 0),
(65, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(66, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(67, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(68, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 1, 1, 0),
(69, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(70, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(71, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(72, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(73, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(74, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(75, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(76, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(77, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(78, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(79, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(80, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(81, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(82, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(83, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(84, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(85, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(86, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(87, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(88, 2, '', '', 1, 2.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(89, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(90, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(91, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(92, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(93, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(94, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(95, 2, '', '', 1, 4.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(96, 2, '', '', 1, 5.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(97, 2, '', '', 1, 3.000, 100000.00, 90000.00, 0.00, 0, 1, 0),
(98, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(99, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(100, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(101, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(102, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(103, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(104, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(105, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(106, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(107, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(108, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(109, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(110, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(111, 2, '', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(112, 2, '', '', 1, 2.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(113, 6, 'test', '', 1, 2.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(114, 5, '', '', 1, 1.000, 100000.00, 10000.00, 0.00, 0, 1, 0),
(118, 9, 'test', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(119, 9, 'test', '', 1, 1.000, 100000.00, 100000.00, 5.00, 0, 1, 0),
(120, 15, 'test', '', 1, 1000.000, 20000.00, 20000.00, 0.00, 0, 1, 0),
(121, 13, 'TEST', '', 1, 1.000, 20000.00, 200000.00, 15.00, 0, 1, 0),
(122, 13, 'TEST', '', 1, 1.000, 20000.00, 200000.00, 0.00, 0, 1, 0),
(123, 13, 'TEST', '', 1, 80.000, 20000.00, 200000.00, 0.00, 0, 1, 0),
(124, 9, 'test', '', 1, 1.000, 100000.00, 100000.00, 0.00, 0, 1, 0),
(125, 9, 'test', '', 1, 1.000, 100000.00, 100000.00, 5.00, 0, 1, 0),
(126, 9, 'test', '', 1, 1.000, 100000.00, 100000.00, 5.00, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items_taxes`
--

DROP TABLE IF EXISTS `ospos_sales_items_taxes`;
CREATE TABLE IF NOT EXISTS `ospos_sales_items_taxes` (
  `sale_id` int NOT NULL,
  `item_id` int NOT NULL,
  `line` int NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax_type` tinyint(1) NOT NULL DEFAULT '0',
  `rounding_code` tinyint(1) NOT NULL DEFAULT '0',
  `cascade_sequence` tinyint(1) NOT NULL DEFAULT '0',
  `item_tax_amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sales_tax_code_id` int DEFAULT NULL,
  `jurisdiction_id` int DEFAULT NULL,
  `tax_category_id` int DEFAULT NULL,
  PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  KEY `sale_id` (`sale_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_sales_items_taxes`
--

INSERT INTO `ospos_sales_items_taxes` (`sale_id`, `item_id`, `line`, `name`, `percent`, `tax_type`, `rounding_code`, `cascade_sequence`, `item_tax_amount`, `sales_tax_code_id`, `jurisdiction_id`, `tax_category_id`) VALUES
(121, 13, 1, 'Test X', 18.0000, 1, 1, 0, 30600.0000, NULL, NULL, NULL),
(122, 13, 1, 'Test X', 18.0000, 1, 1, 0, 36000.0000, NULL, NULL, NULL),
(123, 13, 1, 'Test X', 18.0000, 1, 1, 0, 2880000.0000, NULL, NULL, NULL),
(124, 9, 1, 'Test X', 18.0000, 1, 1, 0, 18000.0000, NULL, NULL, NULL),
(125, 9, 1, 'Test X', 18.0000, 1, 1, 0, 17100.0000, NULL, NULL, NULL),
(126, 9, 1, 'Test X', 18.0000, 1, 1, 0, 17100.0000, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_payments`
--

DROP TABLE IF EXISTS `ospos_sales_payments`;
CREATE TABLE IF NOT EXISTS `ospos_sales_payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `sale_id` int NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL,
  `cash_refund` decimal(15,2) NOT NULL DEFAULT '0.00',
  `cash_adjustment` tinyint NOT NULL DEFAULT '0',
  `employee_id` int DEFAULT NULL,
  `payment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_code` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`payment_id`),
  KEY `payment_sale` (`sale_id`,`payment_type`),
  KEY `employee_id` (`employee_id`),
  KEY `payment_time` (`payment_time`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_sales_payments`
--

INSERT INTO `ospos_sales_payments` (`payment_id`, `sale_id`, `payment_type`, `payment_amount`, `cash_refund`, `cash_adjustment`, `employee_id`, `payment_time`, `reference_code`) VALUES
(1, 1, 'Cash', 20.00, 0.00, 0, 1, '2024-10-29 09:59:56', ''),
(2, 2, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 10:16:37', ''),
(3, 3, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 10:17:06', ''),
(4, 4, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 11:52:14', ''),
(5, 5, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 11:53:48', ''),
(6, 6, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 11:54:31', ''),
(7, 7, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 12:00:46', ''),
(8, 8, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 14:28:30', ''),
(9, 9, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 14:35:19', ''),
(10, 10, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 14:39:56', ''),
(11, 11, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 14:46:17', ''),
(12, 12, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 14:49:44', ''),
(13, 13, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 14:50:24', ''),
(14, 14, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 14:52:40', ''),
(15, 15, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 14:53:52', ''),
(16, 16, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 14:54:26', ''),
(17, 17, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 14:55:12', ''),
(18, 18, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 14:58:03', ''),
(19, 19, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 14:59:25', ''),
(20, 20, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 15:02:56', ''),
(21, 21, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 15:08:26', ''),
(22, 22, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 15:12:19', ''),
(23, 23, 'Cash', 60.00, 0.00, 0, 2, '2024-10-29 15:29:14', ''),
(24, 24, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 15:31:24', ''),
(25, 25, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 15:32:26', ''),
(26, 26, 'Cash', 20.00, 0.00, 0, 2, '2024-10-29 15:51:04', ''),
(27, 27, 'Cash', 200120.00, 0.00, 0, 2, '2024-10-29 18:58:52', ''),
(28, 28, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-02 11:44:44', ''),
(29, 29, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-02 11:50:03', ''),
(30, 30, 'Cash', 200000.00, 0.00, 0, 2, '2024-11-02 12:37:19', ''),
(31, 31, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 13:50:56', ''),
(32, 32, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 13:55:15', ''),
(33, 33, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 13:56:35', ''),
(34, 34, 'Cash', 200000.00, 0.00, 0, 2, '2024-11-03 13:58:05', ''),
(35, 35, 'Cash', 200000.00, 0.00, 0, 2, '2024-11-03 14:01:01', ''),
(36, 36, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 14:02:14', ''),
(37, 37, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 14:02:56', ''),
(38, 38, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 14:06:19', ''),
(39, 39, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 14:13:13', ''),
(40, 40, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 14:14:20', ''),
(41, 41, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 14:15:02', ''),
(42, 42, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 14:19:41', ''),
(43, 43, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 14:51:28', ''),
(44, 44, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 15:00:29', ''),
(45, 45, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 15:01:50', ''),
(46, 46, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 15:14:17', ''),
(47, 47, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 15:16:14', ''),
(48, 48, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 15:18:36', ''),
(49, 49, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 15:19:16', ''),
(50, 50, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 15:20:44', ''),
(51, 51, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 15:21:32', ''),
(52, 52, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 15:22:29', ''),
(53, 53, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 15:23:00', ''),
(54, 54, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 15:25:10', ''),
(55, 55, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 15:36:10', ''),
(56, 56, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 15:36:52', ''),
(57, 57, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 15:42:40', ''),
(58, 58, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 15:45:16', ''),
(59, 59, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-03 15:47:44', ''),
(60, 60, 'Due', 100000.00, 0.00, 0, 5, '2024-11-05 06:09:31', ''),
(61, 61, 'Cash', 100000.00, 0.00, 0, 2, '2024-11-12 09:33:55', ''),
(62, 62, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-07 15:43:27', ''),
(63, 63, 'Cash', 300000.00, 0.00, 0, 5, '2025-01-08 11:42:14', ''),
(64, 64, 'Cash', 160000.00, 0.00, 0, 5, '2025-01-09 13:33:23', ''),
(65, 65, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 09:18:21', ''),
(66, 66, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 09:24:42', ''),
(67, 67, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 09:25:19', ''),
(68, 68, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 09:26:58', ''),
(69, 69, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 09:28:51', ''),
(70, 70, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 09:32:23', ''),
(71, 71, 'Cash', 200000.00, 100000.00, 0, 5, '2025-01-12 09:34:07', ''),
(72, 72, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 09:34:49', ''),
(73, 73, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 09:39:05', ''),
(74, 74, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 09:40:25', ''),
(75, 75, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 09:42:07', ''),
(76, 76, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 09:51:10', ''),
(77, 77, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 09:53:56', ''),
(78, 78, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 09:56:39', ''),
(79, 79, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 09:59:57', ''),
(80, 80, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 10:06:59', ''),
(81, 81, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 10:09:24', ''),
(82, 82, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 10:10:10', ''),
(83, 83, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 10:10:56', ''),
(84, 84, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 10:11:33', ''),
(85, 85, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 10:12:27', ''),
(86, 86, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 10:13:22', ''),
(87, 87, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-12 10:15:03', ''),
(88, 88, 'Cash', 200000.00, 0.00, 0, 5, '2025-01-12 10:16:32', ''),
(89, 89, 'Cash', 100000.00, 0.00, 0, 2, '2025-01-13 11:35:36', ''),
(90, 90, 'Cash', 100000.00, 0.00, 0, 2, '2025-01-13 18:51:42', ''),
(91, 91, 'Cash', 100000.00, 0.00, 0, 2, '2025-01-13 19:05:04', ''),
(92, 92, 'Cash', 100000.00, 0.00, 0, 2, '2025-01-13 19:06:11', ''),
(93, 93, 'Cash', 100000.00, 0.00, 0, 2, '2025-01-13 19:06:54', ''),
(94, 94, 'Cash', 100000.00, 0.00, 0, 5, '2025-01-13 19:13:24', ''),
(95, 95, 'Cash', 400000.00, 0.00, 0, 5, '2025-02-27 14:17:52', ''),
(96, 96, 'Cash', 500000.00, 0.00, 0, 5, '2025-03-07 10:30:42', ''),
(97, 97, 'Cash', 270000.00, 0.00, 0, 5, '2025-03-07 15:50:05', ''),
(98, 98, 'Cash', 100000.00, 0.00, 0, 2, '2025-03-13 09:24:45', ''),
(99, 99, 'Cash', 100000.00, 0.00, 0, 2, '2025-03-13 09:29:19', ''),
(100, 100, 'Cash', 100000.00, 0.00, 0, 2, '2025-03-13 09:33:55', ''),
(101, 101, 'Cash', 100000.00, 0.00, 0, 2, '2025-03-13 09:36:56', ''),
(102, 102, 'Cash', 100000.00, 0.00, 0, 2, '2025-03-13 10:56:08', ''),
(103, 103, 'Cash', 100000.00, 0.00, 0, 2, '2025-03-13 10:57:01', ''),
(104, 104, 'Cash', 100000.00, 0.00, 0, 2, '2025-03-13 10:58:03', ''),
(105, 105, 'Cash', 100000.00, 0.00, 0, 2, '2025-03-13 10:58:21', ''),
(106, 106, 'Cash', 100000.00, 0.00, 0, 2, '2025-03-13 10:59:09', ''),
(107, 107, 'Cash', 100000.00, 0.00, 0, 2, '2025-03-13 10:59:45', ''),
(108, 108, 'Cash', 100000.00, 0.00, 0, 2, '2025-03-13 11:01:28', ''),
(109, 109, 'Cash', 100000.00, 0.00, 0, 2, '2025-03-13 11:07:50', ''),
(110, 110, 'Cash', 100000.00, 0.00, 0, 2, '2025-03-13 11:08:34', ''),
(111, 111, 'Cash', 100000.00, 0.00, 0, 2, '2025-03-13 11:09:31', ''),
(112, 112, 'Cash', 200000.00, 0.00, 0, 2, '2025-03-13 11:19:56', ''),
(113, 113, 'Cash', 200000.00, 0.00, 0, 5, '2025-04-25 12:40:59', ''),
(114, 114, 'Cash', 10000.00, 0.00, 0, 9, '2025-04-25 13:57:18', ''),
(118, 118, 'Cash', 100000.00, 0.00, 0, 5, '2025-04-25 14:44:07', ''),
(119, 119, 'Cash', 95000.00, 0.00, 0, 9, '2025-04-26 13:23:11', ''),
(120, 120, 'Cash', 20000000.00, 0.00, 0, 2, '2025-05-20 10:05:05', ''),
(121, 121, 'Cash', 200600.00, 0.00, 0, 2, '2025-05-20 10:14:55', ''),
(122, 122, 'Cash', 236000.00, 0.00, 0, 2, '2025-05-20 10:54:45', ''),
(123, 123, 'Cash', 18880000.00, 0.00, 0, 2, '2025-05-20 10:58:18', ''),
(124, 124, 'Cash', 118000.00, 0.00, 0, 11, '2025-05-25 07:13:47', ''),
(125, 125, 'Cash', 112100.00, 0.00, 0, 11, '2025-05-25 07:17:43', ''),
(126, 126, 'Cash', 112100.00, 0.00, 0, 11, '2025-05-25 08:57:52', '');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_reward_points`
--

DROP TABLE IF EXISTS `ospos_sales_reward_points`;
CREATE TABLE IF NOT EXISTS `ospos_sales_reward_points` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sale_id` int NOT NULL,
  `earned` float NOT NULL,
  `used` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_id` (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_taxes`
--

DROP TABLE IF EXISTS `ospos_sales_taxes`;
CREATE TABLE IF NOT EXISTS `ospos_sales_taxes` (
  `sales_taxes_id` int NOT NULL AUTO_INCREMENT,
  `sale_id` int NOT NULL,
  `jurisdiction_id` int DEFAULT NULL,
  `tax_category_id` int DEFAULT NULL,
  `tax_type` smallint NOT NULL,
  `tax_group` varchar(32) NOT NULL,
  `sale_tax_basis` decimal(15,4) NOT NULL,
  `sale_tax_amount` decimal(15,4) NOT NULL,
  `print_sequence` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `tax_rate` decimal(15,4) NOT NULL,
  `sales_tax_code_id` int DEFAULT NULL,
  `rounding_code` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sales_taxes_id`),
  KEY `print_sequence` (`sale_id`,`print_sequence`,`tax_group`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_sales_taxes`
--

INSERT INTO `ospos_sales_taxes` (`sales_taxes_id`, `sale_id`, `jurisdiction_id`, `tax_category_id`, `tax_type`, `tax_group`, `sale_tax_basis`, `sale_tax_amount`, `print_sequence`, `name`, `tax_rate`, `sales_tax_code_id`, `rounding_code`) VALUES
(1, 121, NULL, NULL, 1, 'Test X', 170000.0000, 30600.0000, 1, 'Test X', 18.0000, NULL, 1),
(2, 122, NULL, NULL, 1, 'Test X', 200000.0000, 36000.0000, 1, 'Test X', 18.0000, NULL, 1),
(3, 123, NULL, NULL, 1, 'Test X', 16000000.0000, 2880000.0000, 1, 'Test X', 18.0000, NULL, 1),
(4, 124, NULL, NULL, 1, 'Test X', 100000.0000, 18000.0000, 1, 'Test X', 18.0000, NULL, 1),
(5, 125, NULL, NULL, 1, 'Test X', 95000.0000, 17100.0000, 1, 'Test X', 18.0000, NULL, 1),
(6, 126, NULL, NULL, 1, 'Test X', 95000.0000, 17100.0000, 1, 'Test X', 18.0000, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sessions`
--

DROP TABLE IF EXISTS `ospos_sessions`;
CREATE TABLE IF NOT EXISTS `ospos_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int UNSIGNED NOT NULL DEFAULT '0',
  `data` mediumblob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`),
  KEY `id` (`id`),
  KEY `ip_address` (`ip_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_sessions`
--

INSERT INTO `ospos_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('jort3c73l40tfb4reh16tt8dh1bn63s2', '::1', 1749194148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734393139343134373b),
('f69bqin1a8p8s7umnmrnisofglnpglud', '::1', 1749195533, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734393139353533333b706572736f6e5f69647c733a323a223131223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a303b6974656d5f6c6f636174696f6e7c733a313a2231223b),
('f4jvlip2ciqksn2oq2985asclgmhuf9r', '::1', 1749196705, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734393139363730353b706572736f6e5f69647c733a323a223131223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a303b6974656d5f6c6f636174696f6e7c733a313a2231223b),
('g86ud0kdn5lmlaufglbvm110tmfkn1t9', '::1', 1749197468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734393139373436373b706572736f6e5f69647c733a323a223131223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c693a2d313b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d),
('nos468la1h2c1rvnm5d9eem659qnrbis', '::1', 1749197779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734393139373737393b706572736f6e5f69647c733a323a223131223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a303b73616c655f69647c693a2d313b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d6974656d5f6c6f636174696f6e7c733a313a2231223b),
('0joc80h0keeo8dags01ruuhhsvuoll7o', '::1', 1749198114, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734393139383131343b),
('7lfn6kgbe15onkpsq3uan66di3fqtpgo', '::1', 1749198115, ''),
('uocsuc13vfoo9tnp41pgldjtas1me1n7', '::1', 1749198250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734393139383234393b),
('5jm0quhjq3mr8bjertqq656p7q44pv83', '::1', 1749198250, ''),
('h61bp1o40i5pc6ed5o1a54fk3kirst8q', '::1', 1749198383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734393139383338333b),
('7icm94ha8rj351id8qs67mvb0ho97cfs', '::1', 1749198383, ''),
('h22fdb16q6ojom07v3s44ac2irsqdsjf', '::1', 1749198394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734393139383339333b),
('9ajns0q6901ofgoocu62u01timkkhpkp', '::1', 1749198737, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734393139383733373b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b),
('ehajftjgvhdtsb79ab6rg7dgua804ej6', '::1', 1749200913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734393230303634353b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a323a7b693a313b613a32353a7b733a373a226974656d5f6964223b733a323a223138223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a373a2274657374313232223b733a31313a226974656d5f6e756d626572223b733a353a223130303030223b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b733a313a2230223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a383a22313030302e303030223b733a353a227072696365223b733a343a22302e3030223b733a31303a22636f73745f7072696365223b733a343a22302e3030223b733a353a22746f74616c223b733a343a22302e3030223b733a31363a22646973636f756e7465645f746f74616c223b733a343a22302e3030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d693a323b613a32353a7b733a373a226974656d5f6964223b733a323a223131223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a323b733a343a226e616d65223b733a31313a2253757370656e73696f6e73223b733a31313a226974656d5f6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b733a313a2230223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a363a2233302e303030223b733a353a227072696365223b733a383a2232303030302e3030223b733a31303a22636f73745f7072696365223b733a383a2232303030302e3030223b733a353a22746f74616c223b733a383a2232303030302e3030223b733a31363a22646973636f756e7465645f746f74616c223b733a383a2232303030302e3030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a383a2268736e5f636f6465223b733a303a22223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d),
('02thi6v3h36gf6pncd2aujpcggs0q5r2', '::1', 1749200648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734393230303634353b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d),
('mas9ln5hvg4gdjvu4jm69ffqmudu2f4h', '::1', 1749346707, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734393334363730373b706572736f6e5f69647c733a323a223131223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d),
('ntqr8vvo4tsh8m5le9g6l8h2leikl30e', '::1', 1749346708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734393334363730373b706572736f6e5f69647c733a323a223131223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c733a323a223235223b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d),
('hmlnu2ko64ph1lfm34hquo35rfoot2qn', '::1', 1749652540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734393635323530383b706572736f6e5f69647c733a313a2232223b6d656e755f67726f75707c733a343a22686f6d65223b),
('9ver066vmn4t0m280u6ao34nodtc90p0', '::1', 1752392942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313735323339323931373b706572736f6e5f69647c733a323a223131223b6d656e755f67726f75707c733a343a22686f6d65223b);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_stock_locations`
--

DROP TABLE IF EXISTS `ospos_stock_locations`;
CREATE TABLE IF NOT EXISTS `ospos_stock_locations` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `location_name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_stock_locations`
--

INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
(1, 'stock', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_suppliers`
--

DROP TABLE IF EXISTS `ospos_suppliers`;
CREATE TABLE IF NOT EXISTS `ospos_suppliers` (
  `person_id` int NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `agency_name` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `tax_id` varchar(32) NOT NULL DEFAULT '',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `category` tinyint(1) NOT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `account_number` (`account_number`),
  KEY `person_id` (`person_id`),
  KEY `category` (`category`),
  KEY `company_name` (`company_name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ospos_suppliers`
--

INSERT INTO `ospos_suppliers` (`person_id`, `company_name`, `agency_name`, `account_number`, `tax_id`, `deleted`, `category`) VALUES
(4, 'UICT', 'Test', 'TEST', 'TEST', 0, 0),
(19, 'Morgan', 'KIU', NULL, '', 0, 1),
(22, 'Stagyon Kampala LTD', 'Mtn etc', NULL, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_categories`
--

DROP TABLE IF EXISTS `ospos_tax_categories`;
CREATE TABLE IF NOT EXISTS `ospos_tax_categories` (
  `tax_category_id` int NOT NULL AUTO_INCREMENT,
  `tax_category` varchar(32) NOT NULL,
  `tax_group_sequence` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tax_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_codes`
--

DROP TABLE IF EXISTS `ospos_tax_codes`;
CREATE TABLE IF NOT EXISTS `ospos_tax_codes` (
  `tax_code_id` int NOT NULL AUTO_INCREMENT,
  `tax_code` varchar(32) NOT NULL,
  `tax_code_name` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tax_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_jurisdictions`
--

DROP TABLE IF EXISTS `ospos_tax_jurisdictions`;
CREATE TABLE IF NOT EXISTS `ospos_tax_jurisdictions` (
  `jurisdiction_id` int NOT NULL AUTO_INCREMENT,
  `jurisdiction_name` varchar(255) DEFAULT NULL,
  `tax_group` varchar(32) NOT NULL,
  `tax_type` smallint NOT NULL,
  `reporting_authority` varchar(255) DEFAULT NULL,
  `tax_group_sequence` tinyint(1) NOT NULL DEFAULT '0',
  `cascade_sequence` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jurisdiction_id`),
  UNIQUE KEY `tax_jurisdictions_uq1` (`tax_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_rates`
--

DROP TABLE IF EXISTS `ospos_tax_rates`;
CREATE TABLE IF NOT EXISTS `ospos_tax_rates` (
  `tax_rate_id` int NOT NULL AUTO_INCREMENT,
  `rate_tax_code_id` int NOT NULL,
  `rate_tax_category_id` int NOT NULL,
  `rate_jurisdiction_id` int NOT NULL,
  `tax_rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax_rounding_code` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tax_rate_id`),
  KEY `rate_tax_category_id` (`rate_tax_category_id`),
  KEY `rate_tax_code_id` (`rate_tax_code_id`),
  KEY `rate_jurisdiction_id` (`rate_jurisdiction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ospos_attribute_definitions`
--
ALTER TABLE `ospos_attribute_definitions`
  ADD CONSTRAINT `fk_ospos_attribute_definitions_ibfk_1` FOREIGN KEY (`definition_fk`) REFERENCES `ospos_attribute_definitions` (`definition_id`);

--
-- Constraints for table `ospos_attribute_links`
--
ALTER TABLE `ospos_attribute_links`
  ADD CONSTRAINT `ospos_attribute_links_ibfk_1` FOREIGN KEY (`definition_id`) REFERENCES `ospos_attribute_definitions` (`definition_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_attribute_links_ibfk_2` FOREIGN KEY (`attribute_id`) REFERENCES `ospos_attribute_values` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_attribute_links_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_attribute_links_ibfk_4` FOREIGN KEY (`receiving_id`) REFERENCES `ospos_receivings` (`receiving_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_attribute_links_ibfk_5` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_cash_up`
--
ALTER TABLE `ospos_cash_up`
  ADD CONSTRAINT `ospos_cash_up_ibfk_1` FOREIGN KEY (`open_employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_cash_up_ibfk_2` FOREIGN KEY (`close_employee_id`) REFERENCES `ospos_employees` (`person_id`);

--
-- Constraints for table `ospos_customers`
--
ALTER TABLE `ospos_customers`
  ADD CONSTRAINT `ospos_customers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`),
  ADD CONSTRAINT `ospos_customers_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `ospos_customers_packages` (`package_id`),
  ADD CONSTRAINT `ospos_customers_ibfk_3` FOREIGN KEY (`sales_tax_code_id`) REFERENCES `ospos_tax_codes` (`tax_code_id`);

--
-- Constraints for table `ospos_customers_points`
--
ALTER TABLE `ospos_customers_points`
  ADD CONSTRAINT `ospos_customers_points_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_customers` (`person_id`),
  ADD CONSTRAINT `ospos_customers_points_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `ospos_customers_packages` (`package_id`),
  ADD CONSTRAINT `ospos_customers_points_ibfk_3` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_employees`
--
ALTER TABLE `ospos_employees`
  ADD CONSTRAINT `ospos_employees_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

--
-- Constraints for table `ospos_expenses`
--
ALTER TABLE `ospos_expenses`
  ADD CONSTRAINT `ospos_expenses_ibfk_1` FOREIGN KEY (`expense_category_id`) REFERENCES `ospos_expense_categories` (`expense_category_id`),
  ADD CONSTRAINT `ospos_expenses_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_expenses_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  ADD CONSTRAINT `ospos_giftcards_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

--
-- Constraints for table `ospos_grants`
--
ALTER TABLE `ospos_grants`
  ADD CONSTRAINT `ospos_grants_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `ospos_permissions` (`permission_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_grants_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `ospos_employees` (`person_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  ADD CONSTRAINT `ospos_inventory_ibfk_1` FOREIGN KEY (`trans_items`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_inventory_ibfk_2` FOREIGN KEY (`trans_user`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_inventory_ibfk_3` FOREIGN KEY (`trans_location`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_items`
--
ALTER TABLE `ospos_items`
  ADD CONSTRAINT `ospos_items_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_items_taxes`
--
ALTER TABLE `ospos_items_taxes`
  ADD CONSTRAINT `ospos_items_taxes_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_item_kit_items`
--
ALTER TABLE `ospos_item_kit_items`
  ADD CONSTRAINT `ospos_item_kit_items_ibfk_1` FOREIGN KEY (`item_kit_id`) REFERENCES `ospos_item_kits` (`item_kit_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_item_kit_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_item_quantities`
--
ALTER TABLE `ospos_item_quantities`
  ADD CONSTRAINT `ospos_item_quantities_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_item_quantities_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_permissions`
--
ALTER TABLE `ospos_permissions`
  ADD CONSTRAINT `ospos_permissions_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `ospos_modules` (`module_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_permissions_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  ADD CONSTRAINT `ospos_receivings_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_receivings_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_receivings_items`
--
ALTER TABLE `ospos_receivings_items`
  ADD CONSTRAINT `ospos_receivings_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_receivings_items_ibfk_2` FOREIGN KEY (`receiving_id`) REFERENCES `ospos_receivings` (`receiving_id`);

--
-- Constraints for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  ADD CONSTRAINT `ospos_sales_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`),
  ADD CONSTRAINT `ospos_sales_ibfk_3` FOREIGN KEY (`dinner_table_id`) REFERENCES `ospos_dinner_tables` (`dinner_table_id`);

--
-- Constraints for table `ospos_sales_items`
--
ALTER TABLE `ospos_sales_items`
  ADD CONSTRAINT `ospos_sales_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_sales_items_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_items_ibfk_3` FOREIGN KEY (`item_location`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
  ADD CONSTRAINT `ospos_sales_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_payments_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
