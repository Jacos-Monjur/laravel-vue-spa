-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2022 at 04:08 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vuedatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) NOT NULL,
  `about` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminmainmenu`
--

CREATE TABLE `adminmainmenu` (
  `id` int(20) NOT NULL,
  `serialNo` int(30) DEFAULT NULL,
  `Link_Name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `routeName` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `adminmainmenu`
--

INSERT INTO `adminmainmenu` (`id`, `serialNo`, `Link_Name`, `routeName`) VALUES
(10, 1, 'Admin Information', '0'),
(16, 5, 'Product Information', '0'),
(18, 10, 'Supplier Information', '0'),
(19, 6, 'Purchase Information', '0'),
(20, 7, 'Sale Information', '0'),
(21, 11, 'Customer Information', '0'),
(22, 9, 'Product Stock', '0'),
(23, 4, 'Employee Information', '0'),
(24, 3, 'Bank Information', '0'),
(25, 2, 'Basic Info', '0'),
(26, 8, 'Cash Information', '0'),
(27, 13, 'Order Invoice Information', '0'),
(28, 12, 'SR Information', '0'),
(29, 14, 'SMS Send', '0'),
(31, 5, 'Measurement Information', '0');

-- --------------------------------------------------------

--
-- Table structure for table `adminsubmenu`
--

CREATE TABLE `adminsubmenu` (
  `id` int(20) NOT NULL,
  `mainmenuId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submenuname` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serialno` int(20) DEFAULT NULL,
  `routeName` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `adminsubmenu`
--

INSERT INTO `adminsubmenu` (`id`, `mainmenuId`, `submenuname`, `serialno`, `routeName`) VALUES
(1, '10', 'Create Admin', 1, 'CreateAdmin'),
(2, '10', 'View All Admin', 2, 'ViewAdmin'),
(3, '12', 'Create Employee', 3, 'CreateEmployee'),
(4, '12', 'Employee Payment Info', 10, 'Employee'),
(5, '16', 'Add Item', 8, 'CreateItem'),
(6, '16', 'Add Category', 7, 'CreateCategory'),
(8, '16', 'Add Product', 1, 'CreateProduct'),
(9, '31', 'Measurement Unit', 1, 'CreateMeasurement'),
(10, '17', 'Add Company', 12, 'AddCompany'),
(11, '17', 'Add Branch', 11, 'AddBranch'),
(12, '18', 'Add Supplier', 1, 'AddSuplier'),
(13, '19', 'Purchase', 14, 'PurchaseProduct'),
(14, '16', 'View All Product', 2, 'ViewAllProduct'),
(15, '20', 'Sale', 15, 'SaleProduct'),
(16, '21', 'Add Customer', 16, 'AddCustomer'),
(17, '22', 'Product Stock', 0, 'ProductStock'),
(18, '19', 'Purchase Ledger', 18, 'PurchaseLedger'),
(19, '20', 'Sale Ledger', 19, 'SaleLedger'),
(20, '23', 'Employee Salary Setup', 2, 'empsalarysetup'),
(21, '23', 'Employee Salary Title', 3, 'salarytitle'),
(23, '23', 'Employee Information', 5, 'Employee'),
(24, '23', 'Employee Salary collection', 1, 'salarycollection'),
(26, '24', 'Bank Information', 1, 'bankinfo'),
(27, '24', 'Bank Management', 2, 'bankmangement'),
(28, '24', 'Bank Management Report', 3, 'bankreport'),
(29, '25', 'Expense Info', 1, 'Expense'),
(30, '25', 'Income/Expense Report', 8, 'incexpreport'),
(31, '25', 'Income info', 6, 'income'),
(32, '25', 'Add Cost Title', 7, 'cost'),
(33, '19', 'Purchase Invoice Wise Payment Entry', 33, 'PurchasePayment'),
(34, '20', 'Sale Incoice Wise Payment Entry', 34, 'SalePayment'),
(35, '19', 'Purchase Ledger Report', 36, 'PurchaseLedgerReport'),
(36, '20', 'Sale Ledger Report', 36, 'SaleLedgerReport'),
(37, '19', 'Purchase Due Report', 37, 'PurchaseDue'),
(38, '20', 'Sale Due Report', 38, 'SaleDue'),
(39, '19', 'Suplier Wise Due', 39, 'SuplierWiseDue'),
(40, '20', 'Customer Wise Due', 40, 'CustomerWiseDue'),
(41, '20', 'Sale Profit Report', 41, 'SaleProfitReport'),
(42, '26', 'Cash Close', 1, 'CashClose'),
(43, '26', 'Cash Report', 2, 'CashReport'),
(46, '20', 'Sale Vat Report', 43, 'SaleVatReport'),
(47, '27', 'Pending Invoice', 1, 'PendingInvoice'),
(48, '19', 'Purchase Suplier Wise Payment Entry', 34, 'PurchaseSuplierWisePaymentEntry'),
(49, '19', 'Purchase Suplier Wise Payment Report', 35, 'PurchaseSuplierWisePaymentReport'),
(50, '20', 'Sale Customer Wise Payment Entry', 35, 'SaleCustomerWisePaymentEntry'),
(51, '20', 'Sale Customer Wise Payment Report', 36, 'SaleCustomerWisePaymentReport'),
(52, '20', 'Daily Saled Products', 42, 'DailySaledProducts'),
(53, '16', 'Product Barcode', 3, 'barcode'),
(54, '25', 'Vat Innitialization', 9, 'VatInnitialization'),
(55, '22', 'Category Wise Product Stock Report', 2, 'GenericsWiseProductStockReport'),
(57, '22', 'Empty Stock Products', 1, 'EmptyStockProducts'),
(58, '16', 'Add Company Name', 5, 'AddCompanyName'),
(59, '28', 'Add SR', 10, 'AddSR'),
(60, '28', 'SR Order Information', 0, 'SROrderInformation'),
(61, '28', 'SR & Customer Wise Order Report', 1, 'SRCustomerWiseOrderReport'),
(62, '28', 'SR Wise Order Report', 2, 'SRWiseOrderReport'),
(63, '28', 'Product Wise Order Report', 3, 'ProductWiseOrderReport'),
(64, '29', 'Simple SMS Send', 1, 'SMSSend'),
(65, '29', 'Send Welcome SMS To Customer', 4, 'SendWelcomeSMSToCustomer'),
(68, '29', 'Send Welcome SMS To Employee', 2, 'SendWelcomeSMSToEmployee'),
(69, '29', 'Send Welcome SMS To Supplier', 3, 'SendWelcomeSMSToSupplier'),
(70, '29', 'Send Welcome SMS To SR', 5, 'SendWelcomeSMSToSR'),
(71, '31', 'Measurement Sub-Unit', 2, 'MeasurementSubUnit'),
(72, '18', 'Order Product To Supplier', 2, 'OrderProductToSupplier'),
(73, '18', 'Order Product To Supplier Report', 3, 'OrderProductToSupplierView'),
(74, '28', 'Supply Product To SR', 4, 'SupplyProductToSR'),
(75, '28', 'Supply Product To SR Report', 5, 'SupplyProductToSRView'),
(76, '19', 'Purchase Return', 40, 'PurchaseReturn'),
(77, '20', 'Sale Return', 43, 'SaleReturn'),
(78, '19', 'Receive Demarage Product', 41, 'ReceiveDemarageProduct'),
(79, '20', 'Send Demarage Product', 44, 'SendDemarageProduct'),
(80, '20', 'Sale Order Ledger', 20, 'SaleOrderLedger'),
(81, '20', 'Order Delivery', 21, 'OrderDelivery'),
(82, '20', 'Order Report', 22, 'OrderReport'),
(83, '19', 'Suplier Balance Sheet', 15, 'SuplierBalance'),
(84, '20', 'Customer Balance Sheet', 16, 'CustomerBalance'),
(86, '20', 'Sale Report', 3, 'salebyreport'),
(87, '19', 'Shop/Customer Wise product Retrun', 2, 'productdemaragereceiveentrybycustomer'),
(88, '19', 'Damage Report', 1, 'damagereport'),
(94, '28', 'Item Wise Report', 1, 'itemwise'),
(95, '28', 'SR item Wise Report', 2, 'SRitemwise'),
(98, '20', 'Daily Order Products', 8, 'DailyorderProducts'),
(99, '22', 'Daily stock Submit', 2, 'datewisestock'),
(100, '22', 'Shop Quantity Added', 3, 'shopqunt'),
(101, '22', 'Date Wise stock Report', 4, 'datewisestockreport'),
(102, '26', 'Opening Balance', 1, 'cashopening'),
(103, '26', 'Income/Expense Close Report', 4, 'inexclosereport'),
(104, '28', 'SR Wise Customer List', 1, 'srwisecusreport');

-- --------------------------------------------------------

--
-- Table structure for table `bank_info`
--

CREATE TABLE `bank_info` (
  `id` int(20) NOT NULL,
  `date` date DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ac_no` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mbl_no` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_brance_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_user_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_management`
--

CREATE TABLE `bank_management` (
  `id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `fk_bank_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ac_no` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_type` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `voucherNo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ammount` double(25,2) DEFAULT NULL,
  `naration` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_user_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_brance_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branceinfo`
--

CREATE TABLE `branceinfo` (
  `id` int(20) NOT NULL,
  `company_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobileNo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branceAdd` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `officialNo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `branceinfo`
--

INSERT INTO `branceinfo` (`id`, `company_name`, `name`, `mobileNo`, `branceAdd`, `email`, `officialNo`, `status`) VALUES
(1, 'Nirman Super Market', 'Main Branch', NULL, '<p>Dhaka</p>', 'info@sbit.com.bd', NULL, 1),
(14, 'Nirman Super Market', 'Feni Branch', NULL, '<p>Grand Hoque Tower,Feni</p>', 'info@nirma.com', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cash_close`
--

CREATE TABLE `cash_close` (
  `id` int(10) NOT NULL,
  `cash_date` date NOT NULL,
  `cash` double DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `admin_id` int(10) DEFAULT NULL,
  `branch_id` int(10) DEFAULT NULL,
  `created_at` varchar(20) DEFAULT NULL,
  `updated_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cash_close_expense`
--

CREATE TABLE `cash_close_expense` (
  `id` int(11) NOT NULL,
  `cash_date` date DEFAULT NULL,
  `purchase` double(11,2) DEFAULT NULL,
  `salary` double(11,2) DEFAULT NULL,
  `bank_deposit` double(11,2) DEFAULT NULL,
  `expenses` double(11,2) DEFAULT NULL,
  `total` double(11,2) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cash_close_income`
--

CREATE TABLE `cash_close_income` (
  `id` int(11) NOT NULL,
  `cash_date` date DEFAULT NULL,
  `sales` double(11,2) DEFAULT NULL,
  `others` double(11,2) DEFAULT NULL,
  `bank_withdraw` double(11,2) DEFAULT NULL,
  `total` double(11,2) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `previous_cash` double(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

CREATE TABLE `company_info` (
  `id` int(10) NOT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`id`, `company_name`, `status`) VALUES
(7, 'Nirman Super Market', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) NOT NULL,
  `contact` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `costinfo`
--

CREATE TABLE `costinfo` (
  `id` int(191) NOT NULL,
  `date` date DEFAULT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inc_exp` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_brance_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_user_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `createadmin`
--

CREATE TABLE `createadmin` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `fk_brance_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `createadmin`
--

INSERT INTO `createadmin` (`id`, `company_name`, `name`, `email`, `phone`, `password`, `Status`, `company_id`, `fk_brance_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(306, 'Nirman Super Market', 'SBIT', 'info@sbit.com.bd', NULL, '$2y$10$iKFAdSt59m.UdMtvyD4PSOYPnbW7OeIMXQWuZto5bTGe3/yLMBcMC', '1', NULL, '1', 'vHjIwo2pZb6HoMj5ifMvIb7mhStFw4jsY3jjKtnCH5yOSsu2lhIvpqJFV49f', NULL, '2017-11-22 17:46:52');

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `id` int(10) NOT NULL,
  `customer_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `previous_due` double(11,2) DEFAULT 0.00,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`id`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `previous_due`, `image`, `admin_id`, `created_at`, `updated_at`) VALUES
(19, 'Monjurul islam', 'monjur.ajad.feni@gmail.com', '01521320464', 'Kasem Comissioner bari,Shanti road,feni', 5000.00, 'backend/CustomerImage/1627748228.png', NULL, '2021-07-31 22:00:41', '2021-07-31 22:00:41'),
(20, 'ajad', 'monjur.ajad.feni@gmail.com', '01830261941', 'Dhaka', NULL, 'backend/CustomerImage/1627748318.jpeg', 1, '2021-07-31 22:18:39', '2021-07-31 22:18:39'),
(21, 'Monjur ajad', 'monjurajadit@gmail.com', '018302619414', 'Shanti Company road,feni', NULL, NULL, 1, '2021-07-31 22:19:27', '2021-07-31 22:19:27'),
(22, 'Monjurul Islam Ajad', 'mmajad50@gmail.com', '0152', 'Feni', NULL, 'backend/CustomerImage/1627837565.png', NULL, '2021-08-01 23:06:06', '2021-08-01 23:06:06'),
(23, 'Monjur ajad', 'monjurajadit@gmail.com', '11111', 'Shanti Company road,feni', NULL, NULL, NULL, '2021-08-01 23:07:12', '2021-08-01 23:07:12'),
(24, 'test', NULL, '12312313', NULL, NULL, NULL, NULL, '2021-08-01 23:10:44', '2021-08-01 23:10:44'),
(25, 'adasdasdasd', NULL, '12312323', NULL, NULL, NULL, NULL, '2021-08-01 23:12:26', '2021-08-01 23:12:26'),
(26, 'Monjurul islam', 'monjur.ajad.feni@gmail.com', '1232312123', 'Kasem Comissioner bari,Shanti road,feni', NULL, NULL, NULL, '2021-08-01 23:14:18', '2021-08-01 23:14:18'),
(27, 'xyz', NULL, '431', NULL, NULL, NULL, NULL, '2021-08-01 23:14:34', '2021-08-01 23:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `customer_transaction`
--

CREATE TABLE `customer_transaction` (
  `id` int(8) NOT NULL,
  `customer_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `invoice_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `voucher_no` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_type` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debit` double(11,2) NOT NULL DEFAULT 0.00,
  `credit` double(11,2) NOT NULL DEFAULT 0.00,
  `balance` double(11,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `damage_entry`
--

CREATE TABLE `damage_entry` (
  `id` int(10) NOT NULL,
  `date` varchar(50) NOT NULL DEFAULT '0',
  `unit` varchar(50) NOT NULL DEFAULT '0',
  `fk_pro_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `voucherid` varchar(50) NOT NULL DEFAULT '0',
  `cus_id` varchar(50) NOT NULL DEFAULT '0',
  `qunt` int(10) NOT NULL DEFAULT 0,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `fk_brance_id` varchar(50) NOT NULL DEFAULT '0',
  `fk_admin_id` varchar(50) NOT NULL DEFAULT '0',
  `type` int(10) NOT NULL,
  `returnqunt` int(10) NOT NULL,
  `return_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `damage_return`
--

CREATE TABLE `damage_return` (
  `id` int(10) NOT NULL,
  `date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_pro_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `voucherid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cus_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qunt` int(10) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `fk_brance_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_admin_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `damage_stock`
--

CREATE TABLE `damage_stock` (
  `id` int(11) NOT NULL,
  `fk_pro_id` varchar(50) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `damage_qunt` float(15,2) DEFAULT NULL,
  `return_qunt` float(15,2) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `fk_brance_id` varchar(50) DEFAULT NULL,
  `fk_admin_id` varchar(50) DEFAULT NULL,
  `cus_id` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `date_stock_product`
--

CREATE TABLE `date_stock_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` double(11,2) NOT NULL,
  `purchase_price` double(11,2) NOT NULL,
  `purchase_price_withcost` double(11,2) DEFAULT NULL,
  `sale_price` double(11,2) NOT NULL,
  `old_and_new_purchase_price_average` double(11,2) DEFAULT NULL,
  `branch_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_qunt` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeecollarea`
--

CREATE TABLE `employeecollarea` (
  `id` int(10) UNSIGNED NOT NULL,
  `fk_emp_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_area_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_brance_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeeinfo`
--

CREATE TABLE `employeeinfo` (
  `id` int(191) NOT NULL,
  `Name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fatherName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MotherName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactNo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `presentAddress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employeeinfo`
--

INSERT INTO `employeeinfo` (`id`, `Name`, `fatherName`, `MotherName`, `contactNo`, `email`, `presentAddress`, `admin_id`, `created_at`, `updated_at`) VALUES
(21003, 'Shuvo', 'Bahar Uddin', 'Hosneara Begum', '0181135860284', 'admin@gmail.com', 'Fenis', '1', '2021-07-10 10:44:53', '2021-07-10 10:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `emp_old_salary`
--

CREATE TABLE `emp_old_salary` (
  `id` int(20) NOT NULL,
  `fk_emp_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ammount` double(25,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `fk_user_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_brance_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_salary_collection`
--

CREATE TABLE `emp_salary_collection` (
  `id` int(20) NOT NULL,
  `date` date DEFAULT NULL,
  `fk_emp_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_ammount` double(25,2) DEFAULT NULL,
  `fk_brance_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_user_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_salary_setup`
--

CREATE TABLE `emp_salary_setup` (
  `id` int(20) NOT NULL,
  `emp_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ammount` double(25,2) DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `emp_salary_setup`
--

INSERT INTO `emp_salary_setup` (`id`, `emp_id`, `ammount`, `date`, `admin_id`) VALUES
(2, '21003', 20000.00, '07-19-2021', '1');

-- --------------------------------------------------------

--
-- Table structure for table `expenseinfo`
--

CREATE TABLE `expenseinfo` (
  `id` int(30) NOT NULL,
  `date` date DEFAULT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ammount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expenseinfo`
--

INSERT INTO `expenseinfo` (`id`, `date`, `title`, `ammount`, `note`, `admin_id`) VALUES
(5, NULL, 'Evaly T10, Friday 10:10 pm, 2nd July 2021', '515', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incomeinfo`
--

CREATE TABLE `incomeinfo` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ammount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `incomeinfo`
--

INSERT INTO `incomeinfo` (`id`, `title`, `ammount`, `note`, `admin_id`, `date`) VALUES
(3, 'INCOME', '5136', 'Hello', '1', '2021-07-09 22:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(10) NOT NULL,
  `session_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `linkpiority`
--

CREATE TABLE `linkpiority` (
  `adminid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mainlinkid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sublinkid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `linkpiority`
--

INSERT INTO `linkpiority` (`adminid`, `mainlinkid`, `sublinkid`) VALUES
('316', '10', '1'),
('316', '10', '2'),
('316', '16', '14'),
('316', '16', '5'),
('316', '16', '53'),
('316', '16', '58'),
('316', '16', '6'),
('316', '16', '7'),
('316', '16', '8'),
('316', '18', '12'),
('316', '18', '72'),
('316', '18', '73'),
('316', '19', '13'),
('316', '19', '18'),
('316', '19', '33'),
('316', '19', '35'),
('316', '19', '37'),
('316', '19', '39'),
('316', '19', '48'),
('316', '19', '49'),
('316', '19', '76'),
('316', '20', '15'),
('316', '20', '19'),
('316', '20', '34'),
('316', '20', '36'),
('316', '20', '38'),
('316', '20', '40'),
('316', '20', '41'),
('316', '20', '46'),
('316', '20', '50'),
('316', '20', '51'),
('316', '20', '52'),
('316', '20', '77'),
('316', '21', '16'),
('316', '22', '17'),
('316', '22', '55'),
('316', '22', '57'),
('316', '23', '20'),
('316', '23', '21'),
('316', '23', '23'),
('316', '23', '24'),
('316', '24', '26'),
('316', '24', '27'),
('316', '24', '28'),
('316', '25', '29'),
('316', '25', '30'),
('316', '25', '31'),
('316', '25', '32'),
('316', '25', '54'),
('316', '26', '42'),
('316', '26', '43'),
('316', '27', '47'),
('316', '28', '59'),
('316', '28', '60'),
('316', '28', '61'),
('316', '28', '62'),
('316', '28', '63'),
('316', '28', '74'),
('316', '28', '75'),
('316', '29', '64'),
('316', '29', '65'),
('316', '29', '68'),
('316', '29', '69'),
('316', '29', '70'),
('316', '30', '66'),
('316', '30', '67'),
('316', '31', '71'),
('316', '31', '9'),
('317', '10', '1'),
('317', '10', '2'),
('317', '16', '14'),
('317', '16', '5'),
('317', '16', '53'),
('317', '16', '58'),
('317', '16', '6'),
('317', '16', '8'),
('317', '18', '12'),
('317', '18', '72'),
('317', '18', '73'),
('317', '19', '13'),
('317', '19', '18'),
('317', '19', '33'),
('317', '19', '35'),
('317', '19', '37'),
('317', '19', '39'),
('317', '19', '48'),
('317', '19', '49'),
('317', '19', '76'),
('317', '19', '78'),
('317', '19', '83'),
('317', '19', '87'),
('317', '19', '88'),
('317', '20', '15'),
('317', '20', '19'),
('317', '20', '34'),
('317', '20', '36'),
('317', '20', '38'),
('317', '20', '40'),
('317', '20', '41'),
('317', '20', '46'),
('317', '20', '50'),
('317', '20', '51'),
('317', '20', '52'),
('317', '20', '77'),
('317', '20', '79'),
('317', '20', '80'),
('317', '20', '81'),
('317', '20', '82'),
('317', '20', '84'),
('317', '20', '86'),
('317', '21', '16'),
('317', '21', '85'),
('317', '21', '96'),
('317', '21', '97'),
('317', '22', '17'),
('317', '22', '55'),
('317', '22', '57'),
('317', '23', '20'),
('317', '23', '21'),
('317', '23', '23'),
('317', '23', '24'),
('317', '24', '26'),
('317', '24', '27'),
('317', '24', '28'),
('317', '25', '29'),
('317', '25', '30'),
('317', '25', '31'),
('317', '25', '32'),
('317', '25', '54'),
('317', '26', '42'),
('317', '26', '43'),
('317', '27', '47'),
('317', '28', '59'),
('317', '28', '60'),
('317', '28', '61'),
('317', '28', '62'),
('317', '28', '63'),
('317', '28', '74'),
('317', '28', '75'),
('317', '28', '94'),
('317', '28', '95'),
('317', '29', '64'),
('317', '29', '65'),
('317', '29', '68'),
('317', '29', '69'),
('317', '29', '70'),
('317', '31', '71'),
('317', '31', '9'),
('318', '10', '1'),
('318', '10', '2'),
('318', '16', '14'),
('318', '16', '5'),
('318', '16', '53'),
('318', '16', '58'),
('318', '16', '6'),
('318', '16', '8'),
('318', '18', '12'),
('318', '18', '72'),
('318', '18', '73'),
('318', '19', '13'),
('318', '19', '18'),
('318', '19', '33'),
('318', '19', '35'),
('318', '19', '37'),
('318', '19', '39'),
('318', '19', '48'),
('318', '19', '49'),
('318', '19', '76'),
('318', '19', '78'),
('318', '19', '83'),
('318', '19', '87'),
('318', '19', '88'),
('318', '20', '15'),
('318', '20', '19'),
('318', '20', '34'),
('318', '20', '36'),
('318', '20', '38'),
('318', '20', '40'),
('318', '20', '41'),
('318', '20', '46'),
('318', '20', '50'),
('318', '20', '51'),
('318', '20', '52'),
('318', '20', '77'),
('318', '20', '79'),
('318', '20', '80'),
('318', '20', '81'),
('318', '20', '82'),
('318', '20', '84'),
('318', '20', '86'),
('318', '21', '16'),
('318', '21', '85'),
('318', '21', '96'),
('318', '21', '97'),
('318', '22', '17'),
('318', '22', '55'),
('318', '22', '57'),
('318', '23', '20'),
('318', '23', '21'),
('318', '23', '23'),
('318', '23', '24'),
('318', '24', '26'),
('318', '24', '27'),
('318', '24', '28'),
('318', '25', '29'),
('318', '25', '30'),
('318', '25', '31'),
('318', '25', '32'),
('318', '25', '54'),
('318', '26', '42'),
('318', '26', '43'),
('318', '27', '47'),
('318', '28', '59'),
('318', '28', '60'),
('318', '28', '61'),
('318', '28', '62'),
('318', '28', '63'),
('318', '28', '74'),
('318', '28', '75'),
('318', '28', '94'),
('318', '28', '95'),
('318', '29', '64'),
('318', '29', '65'),
('318', '29', '68'),
('318', '29', '69'),
('318', '29', '70'),
('318', '31', '71'),
('318', '31', '9'),
('319', '20', '15'),
('319', '20', '19'),
('319', '20', '34'),
('319', '20', '36'),
('319', '20', '38'),
('319', '20', '40'),
('319', '20', '41'),
('319', '20', '46'),
('319', '20', '50'),
('319', '20', '51'),
('319', '20', '52'),
('319', '20', '77'),
('319', '20', '79'),
('319', '20', '80'),
('319', '20', '81'),
('319', '20', '82'),
('319', '20', '84'),
('319', '20', '86'),
('320', '10', '1'),
('320', '10', '2'),
('320', '16', '14'),
('320', '16', '5'),
('320', '16', '53'),
('320', '16', '58'),
('320', '16', '6'),
('320', '16', '8'),
('320', '18', '12'),
('320', '18', '72'),
('320', '18', '73'),
('320', '19', '13'),
('320', '19', '18'),
('320', '19', '33'),
('320', '19', '35'),
('320', '19', '37'),
('320', '19', '39'),
('320', '19', '48'),
('320', '19', '49'),
('320', '19', '76'),
('320', '19', '78'),
('320', '19', '83'),
('320', '19', '87'),
('320', '19', '88'),
('320', '20', '15'),
('320', '20', '19'),
('320', '20', '34'),
('320', '20', '36'),
('320', '20', '38'),
('320', '20', '40'),
('320', '20', '41'),
('320', '20', '46'),
('320', '20', '50'),
('320', '20', '51'),
('320', '20', '52'),
('320', '20', '77'),
('320', '20', '79'),
('320', '20', '80'),
('320', '20', '81'),
('320', '20', '82'),
('320', '20', '84'),
('320', '20', '86'),
('320', '21', '16'),
('320', '21', '85'),
('320', '21', '96'),
('320', '21', '97'),
('320', '22', '17'),
('320', '22', '55'),
('320', '22', '57'),
('320', '23', '20'),
('320', '23', '21'),
('320', '23', '23'),
('320', '23', '24'),
('320', '24', '26'),
('320', '24', '27'),
('320', '24', '28'),
('320', '25', '29'),
('320', '25', '30'),
('320', '25', '31'),
('320', '25', '32'),
('320', '25', '54'),
('320', '26', '42'),
('320', '26', '43'),
('320', '27', '47'),
('320', '28', '59'),
('320', '28', '60'),
('320', '28', '61'),
('320', '28', '62'),
('320', '28', '63'),
('320', '28', '74'),
('320', '28', '75'),
('320', '28', '94'),
('320', '28', '95'),
('320', '29', '64'),
('320', '29', '65'),
('320', '29', '68'),
('320', '29', '69'),
('320', '29', '70'),
('320', '31', '71'),
('320', '31', '9'),
('321', '10', '1'),
('321', '10', '2'),
('321', '16', '14'),
('321', '16', '5'),
('321', '16', '53'),
('321', '16', '58'),
('321', '16', '6'),
('321', '16', '8'),
('321', '18', '12'),
('321', '18', '72'),
('321', '18', '73'),
('321', '19', '13'),
('321', '19', '18'),
('321', '19', '33'),
('321', '19', '35'),
('321', '19', '37'),
('321', '19', '39'),
('321', '19', '48'),
('321', '19', '49'),
('321', '19', '76'),
('321', '19', '78'),
('321', '19', '83'),
('321', '19', '87'),
('321', '19', '88'),
('321', '20', '15'),
('321', '20', '19'),
('321', '20', '34'),
('321', '20', '36'),
('321', '20', '38'),
('321', '20', '40'),
('321', '20', '41'),
('321', '20', '46'),
('321', '20', '50'),
('321', '20', '51'),
('321', '20', '52'),
('321', '20', '77'),
('321', '20', '79'),
('321', '20', '80'),
('321', '20', '81'),
('321', '20', '82'),
('321', '20', '84'),
('321', '20', '86'),
('321', '20', '98'),
('321', '21', '16'),
('321', '21', '85'),
('321', '21', '96'),
('321', '21', '97'),
('321', '22', '100'),
('321', '22', '101'),
('321', '22', '17'),
('321', '22', '55'),
('321', '22', '57'),
('321', '22', '99'),
('321', '23', '20'),
('321', '23', '21'),
('321', '23', '23'),
('321', '23', '24'),
('321', '24', '26'),
('321', '24', '27'),
('321', '24', '28'),
('321', '25', '29'),
('321', '25', '30'),
('321', '25', '31'),
('321', '25', '32'),
('321', '25', '54'),
('321', '26', '102'),
('321', '26', '103'),
('321', '26', '42'),
('321', '26', '43'),
('321', '27', '47'),
('321', '28', '59'),
('321', '28', '60'),
('321', '28', '61'),
('321', '28', '62'),
('321', '28', '63'),
('321', '28', '74'),
('321', '28', '75'),
('321', '28', '94'),
('321', '28', '95'),
('321', '29', '64'),
('321', '29', '65'),
('321', '29', '68'),
('321', '29', '69'),
('321', '29', '70'),
('321', '31', '71'),
('321', '31', '9'),
('322', '10', '1'),
('322', '10', '2'),
('322', '16', '14'),
('322', '16', '5'),
('322', '16', '53'),
('322', '16', '58'),
('322', '16', '6'),
('322', '16', '8'),
('322', '18', '12'),
('322', '18', '72'),
('322', '18', '73'),
('322', '19', '13'),
('322', '19', '18'),
('322', '19', '33'),
('322', '19', '35'),
('322', '19', '37'),
('322', '19', '39'),
('322', '19', '48'),
('322', '19', '49'),
('322', '19', '76'),
('322', '19', '78'),
('322', '19', '83'),
('322', '19', '87'),
('322', '19', '88'),
('322', '20', '15'),
('322', '20', '19'),
('322', '20', '34'),
('322', '20', '36'),
('322', '20', '38'),
('322', '20', '40'),
('322', '20', '41'),
('322', '20', '46'),
('322', '20', '50'),
('322', '20', '51'),
('322', '20', '52'),
('322', '20', '77'),
('322', '20', '79'),
('322', '20', '80'),
('322', '20', '81'),
('322', '20', '82'),
('322', '20', '84'),
('322', '20', '86'),
('322', '20', '98'),
('322', '21', '16'),
('322', '21', '85'),
('322', '21', '96'),
('322', '21', '97'),
('322', '22', '100'),
('322', '22', '101'),
('322', '22', '17'),
('322', '22', '55'),
('322', '22', '57'),
('322', '22', '99'),
('322', '23', '20'),
('322', '23', '21'),
('322', '23', '23'),
('322', '23', '24'),
('322', '24', '26'),
('322', '24', '27'),
('322', '24', '28'),
('322', '25', '29'),
('322', '25', '30'),
('322', '25', '31'),
('322', '25', '32'),
('322', '25', '54'),
('322', '26', '102'),
('322', '26', '103'),
('322', '26', '42'),
('322', '26', '43'),
('322', '27', '47'),
('322', '28', '59'),
('322', '28', '60'),
('322', '28', '61'),
('322', '28', '62'),
('322', '28', '63'),
('322', '28', '74'),
('322', '28', '75'),
('322', '28', '94'),
('322', '28', '95'),
('322', '29', '64'),
('322', '29', '65'),
('322', '29', '68'),
('322', '29', '69'),
('322', '29', '70'),
('322', '31', '71'),
('322', '31', '9');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_12_07_122845_create_oauth_providers_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_providers`
--

CREATE TABLE `oauth_providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_brand`
--

CREATE TABLE `product_brand` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_brand`
--

INSERT INTO `product_brand` (`id`, `brand_name`, `image`, `admin_id`, `created_at`, `updated_at`) VALUES
(116, 'Oppo', 'backend/BrandImage/1627308544.png', '1', '2021-07-05 16:07:17', '2021-07-26 14:09:05'),
(122, 'Mi', 'backend/BrandImage/1627308571.png', '1', '2021-07-05 16:24:28', '2021-07-26 14:09:31'),
(127, 'samsung', 'backend/BrandImage/1627308578.png', '1', '2021-07-11 07:08:33', '2021-07-26 14:09:38'),
(130, 'Teers', 'backend/BrandImage/1627308586.jpeg', '1', '2021-07-12 17:00:19', '2021-07-26 14:09:46'),
(131, 'Easy', 'backend/BrandImage/1627307111.png', NULL, '2021-07-26 13:45:11', '2021-07-26 13:45:11'),
(132, 'twelve', 'backend/BrandImage/1627308596.png', '1', '2021-07-26 14:01:30', '2021-07-26 14:09:57'),
(134, 'Follow', 'backend/BrandImage/1627308605.png', '1', '2021-07-26 14:02:13', '2021-07-26 14:10:05'),
(135, 'asdasdasd', 'backend/BrandImage/1627308198.png', '1', '2021-07-26 14:03:18', '2021-07-26 14:03:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_name`, `item_id`, `image`, `admin_id`, `created_at`, `updated_at`) VALUES
(9, 'Jean\'s Pants', 97, '', '1', '2021-07-08 06:52:11', '2021-07-26 18:05:23'),
(18, 'jes', 85, 'backend/CategoryImage/1627238236.png', NULL, '2021-07-25 18:37:16', '2021-07-25 18:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `product_company`
--

CREATE TABLE `product_company` (
  `id` int(10) NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_id` int(10) DEFAULT NULL,
  `admin_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_company`
--

INSERT INTO `product_company` (`id`, `company_name`, `branch_id`, `admin_id`, `created_at`, `updated_at`) VALUES
(191, 'ATL', 1, 306, '2021-06-19 01:20:38', '2021-06-19 01:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_item`
--

CREATE TABLE `product_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `admin_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_item`
--

INSERT INTO `product_item` (`id`, `item_name`, `image`, `admin_id`, `created_at`, `updated_at`) VALUES
(85, 'Men\'s Clothing', 'backend/ItemImage/1627233502.png', 1, '2021-07-08 06:51:21', '2021-07-08 06:51:21'),
(95, 'test image', 'backend/ItemImage/1627227637.png', NULL, '2021-07-25 15:40:38', '2021-07-25 15:40:38'),
(96, 'UK Europe', 'backend/ItemImage/1627233212.png', NULL, '2021-07-25 15:49:03', '2021-07-25 15:49:03'),
(97, 'Smartphone & Gadget', 'backend/ItemImage/1627228191.png', NULL, '2021-07-25 15:49:51', '2021-07-25 15:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `product_measurement`
--

CREATE TABLE `product_measurement` (
  `id` int(10) UNSIGNED NOT NULL,
  `measurement_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_measurement`
--

INSERT INTO `product_measurement` (`id`, `measurement_type`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'Piece', 317, '2018-02-01 02:42:31', NULL),
(2, 'Dozen', 317, '2018-02-02 19:25:28', '2021-06-19 03:45:12'),
(3, 'Pack', 317, '2018-02-03 23:57:31', '2021-06-19 03:44:50'),
(4, 'BOX', 317, '2018-02-04 00:07:53', NULL),
(5, 'COYEL', 317, '2018-02-23 04:09:52', '2018-05-04 02:50:08'),
(6, 'BANDEL', 317, '2018-05-02 19:06:20', NULL),
(7, 'Feet', 306, '2021-06-19 03:43:19', '2021-06-19 03:45:00'),
(8, 'KG', 306, '2021-06-19 05:43:25', NULL),
(9, 'Pound', 306, '2021-06-19 01:54:31', NULL),
(10, 'Tola', 306, '2021-06-19 01:57:01', NULL),
(11, 'Liter', 306, '2021-06-21 03:07:26', NULL),
(12, 'Goj', 306, '2021-06-21 23:28:04', NULL),
(13, 'Set', 306, '2021-06-23 06:50:08', NULL),
(14, 'Meter', 306, '2021-06-26 05:59:18', NULL),
(15, 'Bag', 306, '2021-07-02 03:22:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_measurement_subunit`
--

CREATE TABLE `product_measurement_subunit` (
  `id` int(10) NOT NULL,
  `measurement_unit_id` int(10) DEFAULT NULL,
  `sub_unit_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_unit_data` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_measurement_subunit`
--

INSERT INTO `product_measurement_subunit` (`id`, `measurement_unit_id`, `sub_unit_name`, `sub_unit_data`) VALUES
(3, 1, 'Piece', 1),
(5, 2, 'DOZEN', 1),
(8, 4, 'box', 1),
(10, 3, 'PAKET', 1),
(11, 6, 'BANDEL', 1),
(13, 5, 'COYEL', 1),
(19, 7, 'Feet', 1),
(20, 8, 'KG', 1),
(21, 9, 'Pound', 1),
(22, 10, 'Tola', 1),
(23, 11, 'Liter', 1),
(24, 12, 'Goj', 1),
(25, 13, 'Set', 1),
(26, 14, 'Meter', 1),
(27, 15, 'Bag', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_productinfo`
--

CREATE TABLE `product_productinfo` (
  `id` varchar(50) NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `measurement_type` int(11) UNSIGNED DEFAULT NULL,
  `purchase_price` float(20,2) DEFAULT NULL,
  `sale_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text DEFAULT NULL,
  `shelf_no` varchar(10) DEFAULT NULL,
  `stock` varchar(10) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `admin_id` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_productinfo`
--

INSERT INTO `product_productinfo` (`id`, `item_id`, `category_id`, `brand_id`, `product_name`, `measurement_type`, `purchase_price`, `sale_price`, `barcode`, `product_details`, `shelf_no`, `stock`, `image`, `admin_id`, `created_at`, `updated_at`) VALUES
('10', 85, 9, 116, 'Test 1', 1, 300000.00, '250000', '101020', 'Mi Note 10 Lite 8 ram 128rom', '100', '5000', 'backend/ProductImage/1627827827.png', 1, '2021-07-12 06:00:32', '2021-08-01 14:23:48'),
('12', 85, 9, 116, 'Test 2', 1, 300000.00, '250000', '101020', 'Mi Note 10 Lite 8 ram 128rom', '100', '5000', 'backend/ProductImage/1627827857.png', 1, '2021-07-12 06:00:32', '2021-08-01 14:24:17'),
('13', 85, 9, 116, 'Test 3', 1, 300000.00, '250000', '101020', 'Mi Note 10 Lite 8 ram 128rom', '100', '5000', 'backend/ProductImage/1627827867.png', 1, '2021-07-12 06:00:32', '2021-08-01 14:24:27'),
('14', 85, 9, 116, 'Test 4', 1, 300000.00, '250000', '101020', 'Mi Note 10 Lite 8 ram 128rom', '100', '5000', 'backend/ProductImage/1627827879.png', 1, '2021-07-12 06:00:32', '2021-08-01 14:24:39'),
('15', 85, 9, 116, 'test 5', 1, 300000.00, '250000', '101020', 'Mi Note 10 Lite 8 ram 128rom', '100', '5000', 'backend/ProductImage/1627827890.png', 1, '2021-07-12 06:00:32', '2021-08-01 14:24:50'),
('16', 85, 9, 116, 'test 6', 1, 300000.00, '250000', '101020', 'Mi Note 10 Lite 8 ram 128rom', '100', '5000', 'backend/ProductImage/1627827899.png', 1, '2021-07-12 06:00:32', '2021-08-01 14:24:59'),
('HPIS01', 85, 18, 127, 'Men\'s Panjabi', 1, 8000.00, '8800', NULL, NULL, NULL, NULL, 'backend/ProductImage/1627317750.png', 1, '2021-07-26 16:42:30', '2021-07-26 18:10:57'),
('P-00000003', 85, 9, 116, 'Wrist Watch- HALEI', 1, 18.54, '18.54', NULL, NULL, NULL, NULL, 'backend/ProductImage/1627317605.png', 1, '2021-07-26 16:40:05', '2021-07-26 16:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `project_info`
--

CREATE TABLE `project_info` (
  `id` int(2) NOT NULL,
  `project_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_info`
--

INSERT INTO `project_info` (`id`, `project_name`) VALUES
(1, 'Nirman Super Market');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_currentpurchase`
--

CREATE TABLE `purchase_currentpurchase` (
  `id` int(10) NOT NULL,
  `product_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_unit_id` int(10) DEFAULT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_purchaseprice` double(11,2) NOT NULL,
  `product_cost` double(11,2) NOT NULL,
  `product_purchaseprice_withcost` double(11,2) NOT NULL,
  `product_totalpurchaseprice` double(11,2) NOT NULL,
  `product_unitsaleprice` double(11,2) NOT NULL,
  `product_discount_percentage` double(11,2) NOT NULL,
  `product_discount_money` double(11,2) NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_currentpurchase`
--

INSERT INTO `purchase_currentpurchase` (`id`, `product_id`, `sub_unit_id`, `product_quantity`, `product_purchaseprice`, `product_cost`, `product_purchaseprice_withcost`, `product_totalpurchaseprice`, `product_unitsaleprice`, `product_discount_percentage`, `product_discount_money`, `session_id`, `created_at`, `updated_at`) VALUES
(203, '10', 1, '1', 300000.00, 0.00, 300000.00, 300000.00, 250000.00, 0.00, 0.00, NULL, '2021-08-14 07:26:38', '2021-08-14 07:26:38');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_entry`
--

CREATE TABLE `purchase_entry` (
  `id` int(10) NOT NULL,
  `invoice_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_unit_id` int(10) DEFAULT NULL,
  `product_quantity` double NOT NULL,
  `product_purchaseprice` double NOT NULL,
  `product_purchaseprice_withcost` double DEFAULT NULL,
  `product_totalpurchaseprice` double NOT NULL,
  `product_unitsaleprice` double NOT NULL,
  `expired_date` date DEFAULT NULL,
  `product_discount_percentage` double NOT NULL,
  `product_discount_money` double NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_ledger`
--

CREATE TABLE `purchase_ledger` (
  `id` int(10) NOT NULL,
  `invoice_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `voucher_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voucher_date` date DEFAULT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `total_item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `net_total_ammount` double(11,2) DEFAULT 0.00,
  `total_discount` double(11,2) DEFAULT 0.00,
  `paid` double(11,2) DEFAULT 0.00,
  `due` double(11,2) DEFAULT 0.00,
  `return_amount` double(11,2) DEFAULT 0.00,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int(10) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_ledger`
--

INSERT INTO `purchase_ledger` (`id`, `invoice_no`, `invoice_date`, `voucher_no`, `voucher_date`, `supplier_id`, `total_item`, `net_total_ammount`, `total_discount`, `paid`, `due`, `return_amount`, `comment`, `admin_id`, `created_at`, `updated_at`) VALUES
(1880, 'PI-0000001', '2021-07-31', NULL, NULL, 14, '0', 10.00, 0.00, 0.00, 10.00, 0.00, 'Previous Due', 1, '2021-07-31', NULL),
(1881, 'PI-0000002', '2021-07-31', NULL, NULL, 16, '0', 23.00, 0.00, 0.00, 23.00, 0.00, 'Previous Due', 1, '2021-07-31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_payment_statement`
--

CREATE TABLE `purchase_payment_statement` (
  `id` int(10) NOT NULL,
  `invoice_no` varchar(15) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `total_ammount` double(11,2) DEFAULT NULL,
  `total_discount` double(11,2) DEFAULT NULL,
  `return_amount` double(11,2) DEFAULT NULL,
  `payment` double(11,2) DEFAULT NULL,
  `due` double(11,2) DEFAULT NULL,
  `supplier_id` int(11) UNSIGNED NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_payment_statement`
--

INSERT INTO `purchase_payment_statement` (`id`, `invoice_no`, `entry_date`, `total_ammount`, `total_discount`, `return_amount`, `payment`, `due`, `supplier_id`, `comment`, `created_at`, `updated_at`) VALUES
(1819, 'PI-0000001', '2021-07-31', 10.00, NULL, NULL, NULL, 10.00, 14, 'Previous Due', '2021-07-31 16:37:31', '2021-07-31 16:49:32'),
(1820, 'PI-0000002', '2021-07-31', 23.00, NULL, NULL, NULL, 23.00, 16, 'Previous Due', '2021-07-31 16:53:07', '2021-07-31 16:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return`
--

CREATE TABLE `purchase_return` (
  `id` int(10) NOT NULL,
  `suplier_id` int(10) DEFAULT NULL,
  `return_money` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `branch_id` int(10) DEFAULT NULL,
  `admin_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_entry`
--

CREATE TABLE `purchase_return_entry` (
  `id` int(10) NOT NULL,
  `purchase_return_id` int(10) DEFAULT NULL,
  `invoice_no` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchase_entry_id` int(10) DEFAULT NULL,
  `purchase_sub_unit_id` int(10) DEFAULT NULL,
  `product_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_quantity` double DEFAULT NULL,
  `sub_unit_id` int(10) DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `fk_supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salarytitle`
--

CREATE TABLE `salarytitle` (
  `id` int(10) NOT NULL,
  `titel` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_brance_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `salarytitle`
--

INSERT INTO `salarytitle` (`id`, `titel`, `fk_brance_id`) VALUES
(1, 'Sallery Title', '14');

-- --------------------------------------------------------

--
-- Table structure for table `sale_currentsale`
--

CREATE TABLE `sale_currentsale` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_unit_id` int(10) DEFAULT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_purchaseprice` double DEFAULT NULL,
  `product_saleprice` double NOT NULL,
  `product_discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_totalsaleprice` double NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_entry`
--

CREATE TABLE `sale_entry` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_unit_id` int(10) DEFAULT NULL,
  `product_quantity` double NOT NULL,
  `product_purchaseprice` double DEFAULT NULL,
  `product_saleprice` double NOT NULL,
  `product_discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_totalsaleprice` double NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_ledger`
--

CREATE TABLE `sale_ledger` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_item` int(11) NOT NULL,
  `total_purchaseprice` double(11,2) NOT NULL DEFAULT 0.00,
  `totalsaleprice` double(11,2) NOT NULL DEFAULT 0.00,
  `totaldiscount` double(11,2) NOT NULL DEFAULT 0.00,
  `paid` double(11,2) NOT NULL DEFAULT 0.00,
  `due` double(11,2) NOT NULL DEFAULT 0.00,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int(10) DEFAULT NULL,
  `created_at` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_ledger`
--

INSERT INTO `sale_ledger` (`id`, `invoice_id`, `invoice_date`, `customer_id`, `total_item`, `total_purchaseprice`, `totalsaleprice`, `totaldiscount`, `paid`, `due`, `comment`, `admin_id`, `created_at`, `updated_at`) VALUES
(15, 'SI-0000001', '2021-07-31', 19, 0, 0.00, 5000.00, 0.00, 0.00, 5000.00, 'Previous Due', NULL, '2021-07-31 04:17:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sale_payment_statement`
--

CREATE TABLE `sale_payment_statement` (
  `id` int(10) NOT NULL,
  `invoice_no` varchar(15) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `total_ammount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `payment` double DEFAULT NULL,
  `due` double DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale_payment_statement`
--

INSERT INTO `sale_payment_statement` (`id`, `invoice_no`, `entry_date`, `total_ammount`, `discount`, `payment`, `due`, `customer_id`, `comment`) VALUES
(14, 'SI-0000001', '2021-07-31', 5000, NULL, NULL, 5000, 19, 'Previous Due');

-- --------------------------------------------------------

--
-- Table structure for table `sale_return_entry`
--

CREATE TABLE `sale_return_entry` (
  `id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `session_emp_title`
--

CREATE TABLE `session_emp_title` (
  `id` int(20) NOT NULL,
  `date` date DEFAULT NULL,
  `fk_emp_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_title_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ammount` double(25,2) DEFAULT NULL,
  `fk_user_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_brance_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `session_emp_title`
--

INSERT INTO `session_emp_title` (`id`, `date`, `fk_emp_id`, `fk_title_id`, `month`, `year`, `ammount`, `fk_user_id`, `fk_brance_id`) VALUES
(2, '2021-06-17', '21001', '1', '01', '2021', 50000.00, '306', '14');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT current_timestamp(),
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company`, `email`, `phone`, `address`, `date`, `image`, `admin_id`) VALUES
(1, 'SBIT', 'info@sbit.com.bd', '01811358601', 'Feni', 'current_timestamp()', 'public/setting/110721_07_26_59.png', '1');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` int(10) NOT NULL,
  `product_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_damage_stock`
--

CREATE TABLE `shop_damage_stock` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `product_id` varchar(50) DEFAULT NULL,
  `previous_qunt` varchar(50) DEFAULT NULL,
  `tdy_qunt` varchar(50) DEFAULT NULL,
  `tdy_sales_qunt` varchar(50) DEFAULT NULL,
  `totalqunt` varchar(50) DEFAULT NULL,
  `shop_qunt` varchar(50) DEFAULT NULL,
  `damage_qunt` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stock_product`
--

CREATE TABLE `stock_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` double(11,2) NOT NULL,
  `purchase_price` double(11,2) NOT NULL,
  `purchase_price_withcost` double(11,2) DEFAULT NULL,
  `sale_price` double(11,2) NOT NULL,
  `old_and_new_purchase_price_average` double(11,2) DEFAULT NULL,
  `branch_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_product`
--

INSERT INTO `stock_product` (`id`, `product_id`, `quantity`, `purchase_price`, `purchase_price_withcost`, `sale_price`, `old_and_new_purchase_price_average`, `branch_id`, `created_at`, `updated_at`) VALUES
(8, 'B0540', 40.00, 23.00, 23.00, 45.00, 23.00, 1, '2021-06-18 18:00:00', NULL),
(9, 'B0541', 9.00, 42.00, 42.00, 70.00, 42.00, 1, '2021-06-18 18:00:00', NULL),
(10, 'B0001', 2.00, 2280.00, 2280.00, 2500.00, 2280.00, 1, '2021-06-18 18:00:00', NULL),
(11, 'B0002', 1.00, 5150.00, 5150.00, 5500.00, 5150.00, 1, '2021-06-18 18:00:00', NULL),
(12, 'B0004', 1.00, 7920.00, 7920.00, 8500.00, 7920.00, 1, '2021-06-18 18:00:00', NULL),
(13, 'B0121', 34.00, 147.00, 147.00, 200.00, 147.00, 14, '2021-06-18 18:00:00', '2021-06-21 18:00:00'),
(14, 'B0009', 11.00, 230.00, 230.00, 280.00, 230.00, 1, '2021-06-18 18:00:00', NULL),
(15, 'B0827', 6.00, 1002.00, 1002.00, 1500.00, 1002.00, 1, '2021-06-18 18:00:00', NULL),
(16, 'B0011', 6.00, 2158.00, 2158.00, 2500.00, 2158.00, 1, '2021-06-18 18:00:00', NULL),
(17, 'B1023', 2.00, 5840.00, 5840.00, 6000.00, 5840.00, 1, '2021-06-18 18:00:00', NULL),
(18, 'B1063', 1.00, 3680.00, 3680.00, 3800.00, 3680.00, 1, '2021-06-18 18:00:00', NULL),
(19, 'B0015', 1.00, 1250.00, 1250.00, 1500.00, 1250.00, 1, '2021-06-18 18:00:00', NULL),
(20, 'B0602', 2.00, 4810.00, 4810.00, 6000.00, 4810.00, 1, '2021-06-18 18:00:00', NULL),
(21, 'B0017', 12.00, 190.00, 190.00, 250.00, 190.00, 1, '2021-06-18 18:00:00', NULL),
(22, 'B0691', 4.00, 360.00, 360.00, 450.00, 360.00, 1, '2021-06-18 18:00:00', NULL),
(23, 'B0692', 1.00, 320.00, 320.00, 450.00, 320.00, 1, '2021-06-18 18:00:00', NULL),
(24, 'B1189', 2.00, 460.00, 460.00, 650.00, 460.00, 1, '2021-06-18 18:00:00', NULL),
(25, 'B1090', 9.00, 190.00, 190.00, 250.00, 190.00, 1, '2021-06-18 18:00:00', NULL),
(26, 'B0028', 1.00, 3580.00, 3580.00, 4000.00, 3580.00, 1, '2021-06-18 18:00:00', NULL),
(27, 'B0622', 3.00, 385.00, 385.00, 450.00, 385.00, 1, '2021-06-18 18:00:00', NULL),
(28, 'B0031', 4.00, 2280.00, 2280.00, 2650.00, 2280.00, 1, '2021-06-18 18:00:00', NULL),
(29, 'B0812', 2.00, 610.00, 610.00, 1200.00, 610.00, 1, '2021-06-18 18:00:00', NULL),
(30, 'B0279', 15.00, 350.00, 350.00, 550.00, 350.00, 1, '2021-06-18 18:00:00', NULL),
(31, 'B0035', 3.00, 1729.00, 1729.00, 1850.00, 1729.00, 1, '2021-06-18 18:00:00', NULL),
(32, 'B0678', 14.00, 448.00, 448.00, 560.00, 448.00, 1, '2021-06-18 18:00:00', NULL),
(33, 'B0963', 1.00, 1150.00, 1150.00, 1350.00, 1150.00, 1, '2021-06-18 18:00:00', NULL),
(34, 'B0038', 1.00, 1380.00, 1380.00, 1650.00, 1380.00, 1, '2021-06-18 18:00:00', NULL),
(35, 'B0042', 6.00, 1890.00, 1890.00, 2500.00, 1890.00, 1, '2021-06-18 18:00:00', NULL),
(36, 'B0044', 1.00, 4758.00, 4758.00, 5000.00, 4758.00, 1, '2021-06-18 18:00:00', NULL),
(37, 'B0046', 20.00, 189.00, 189.00, 200.00, 189.00, 1, '2021-06-18 18:00:00', NULL),
(38, 'B0806', 39.00, 528.00, 528.00, 600.00, 528.00, 14, '2021-06-18 18:00:00', '2021-06-21 18:00:00'),
(39, 'C0003', 8.00, 130.00, 130.00, 150.00, 130.00, 1, '2021-06-18 18:00:00', NULL),
(40, 'C0004', 6.00, 123.00, 123.00, 135.00, 123.00, 1, '2021-06-18 18:00:00', NULL),
(41, 'B0080', 9.00, 277.00, 277.00, 350.00, 277.00, 1, '2021-06-18 18:00:00', NULL),
(42, 'B0673', 16.00, 667.00, 667.00, 750.00, 667.00, 14, '2021-06-18 18:00:00', '2021-06-21 18:00:00'),
(43, 'B1319', 5.00, 430.00, 430.00, 600.00, 430.00, 1, '2021-06-18 18:00:00', NULL),
(44, 'B0083', 3.00, 441.00, 441.00, 520.00, 441.00, 1, '2021-06-18 18:00:00', NULL),
(45, 'B0683', 11.00, 240.00, 240.00, 400.00, 240.00, 14, '2021-06-18 18:00:00', '2021-06-21 18:00:00'),
(46, 'B0682', 3.00, 950.00, 950.00, 1250.00, 950.00, 1, '2021-06-18 18:00:00', NULL),
(47, 'B0714', 3.00, 860.00, 860.00, 1000.00, 860.00, 1, '2021-06-18 18:00:00', NULL),
(48, 'B0089', 1000.00, 7.00, 7.00, 12.00, 7.00, 1, '2021-06-18 18:00:00', NULL),
(49, 'B1181', 10.00, 46.00, 46.00, 150.00, 46.00, 1, '2021-06-18 18:00:00', NULL),
(50, 'B0091', 180.00, 6.90, 6.90, 15.00, 6.90, 1, '2021-06-18 18:00:00', NULL),
(51, 'C0078', 648.00, 1.00, 1.00, 1.50, 1.00, 1, '2021-06-18 18:00:00', NULL),
(52, 'B0092', 184.00, 2.90, 2.90, 6.00, 2.90, 1, '2021-06-18 18:00:00', NULL),
(53, 'C0079', 60.00, 1.52, 1.52, 2.00, 1.52, 1, '2021-06-18 18:00:00', NULL),
(54, 'B0093', 28.00, 195.00, 195.00, 250.00, 195.00, 1, '2021-06-18 18:00:00', NULL),
(55, 'C0080', 33.00, 40.00, 40.00, 60.00, 40.00, 1, '2021-06-18 18:00:00', NULL),
(56, 'B0413', 10.00, 232.00, 232.00, 450.00, 232.00, 1, '2021-06-18 18:00:00', NULL),
(57, 'C0081', 33.00, 40.00, 40.00, 60.00, 40.00, 1, '2021-06-18 18:00:00', NULL),
(58, 'C0082', 1.70, 65.00, 65.00, 50.00, 65.00, 1, '2021-06-18 18:00:00', NULL),
(59, 'B0096', 40.00, 6.30, 6.30, 10.00, 6.30, 1, '2021-06-18 18:00:00', NULL),
(60, 'C0082', 1.70, 65.00, 65.00, 80.00, 65.00, 1, '2021-06-18 18:00:00', NULL),
(61, 'B0919', 13.00, 352.00, 352.00, 500.00, 352.00, 1, '2021-06-18 18:00:00', NULL),
(62, 'B0099', 20.00, 75.00, 75.00, 120.00, 75.00, 1, '2021-06-18 18:00:00', NULL),
(63, 'C0083', 40.00, 62.00, 62.00, 75.00, 62.00, 1, '2021-06-18 18:00:00', NULL),
(64, 'C0084', 30.00, 58.00, 58.00, 70.00, 58.00, 1, '2021-06-18 18:00:00', NULL),
(65, 'C0085', 2.00, 75.00, 75.00, 90.00, 75.00, 1, '2021-06-18 18:00:00', NULL),
(66, 'B0102', 10.00, 50.00, 50.00, 80.00, 50.00, 1, '2021-06-18 18:00:00', NULL),
(67, 'C0086', 33.00, 77.80, 77.80, 90.00, 77.80, 1, '2021-06-18 18:00:00', NULL),
(68, 'B1256', 14.00, 140.00, 140.00, 250.00, 140.00, 1, '2021-06-18 18:00:00', NULL),
(69, 'C0087', 10.00, 65.00, 65.00, 80.00, 65.00, 1, '2021-06-18 18:00:00', NULL),
(70, 'C0088', 40.00, 68.00, 68.00, 80.00, 68.00, 1, '2021-06-18 18:00:00', NULL),
(71, 'B1038', 4.00, 759.00, 759.00, 900.00, 759.00, 1, '2021-06-18 18:00:00', NULL),
(72, 'C0089', 140.00, 6.60, 6.60, 10.00, 6.60, 1, '2021-06-18 18:00:00', NULL),
(73, 'C0090', 110.00, 7.50, 7.50, 12.00, 7.50, 1, '2021-06-18 18:00:00', NULL),
(74, 'C0091', 4.00, 85.00, 85.00, 110.00, 85.00, 1, '2021-06-18 18:00:00', NULL),
(75, 'B0108', 5.00, 152.22, 152.22, 170.00, 152.22, 1, '2021-06-18 18:00:00', NULL),
(76, 'C0092', 4.00, 33.40, 33.40, 50.00, 33.40, 1, '2021-06-18 18:00:00', NULL),
(77, 'B0826', 20.00, 500.00, 500.00, 800.00, 500.00, 1, '2021-06-18 18:00:00', NULL),
(78, 'B0112', 10.00, 175.48, 175.48, 214.00, 175.48, 1, '2021-06-18 18:00:00', NULL),
(79, 'B0114', 8.00, 225.00, 225.00, 250.00, 225.00, 1, '2021-06-18 18:00:00', NULL),
(80, 'B0116', 30.00, 450.00, 450.00, 550.00, 450.00, 1, '2021-06-18 18:00:00', NULL),
(81, 'C0093', 12.00, 37.50, 37.50, 50.00, 37.50, 1, '2021-06-18 18:00:00', NULL),
(82, 'B0117', 28.00, 41.00, 41.00, 90.00, 41.00, 14, '2021-06-18 18:00:00', '2021-06-21 18:00:00'),
(83, 'B0118', 60.00, 116.96, 116.96, 130.00, 116.96, 1, '2021-06-18 18:00:00', NULL),
(84, 'B0119', 5.00, 2455.00, 2455.00, 3200.00, 2455.00, 1, '2021-06-18 18:00:00', NULL),
(85, 'B1090', 1.00, 383.00, 383.00, 500.00, 383.00, 1, '2021-06-18 18:00:00', NULL),
(86, 'B0122', 6.00, 371.00, 371.00, 450.00, 371.00, 1, '2021-06-18 18:00:00', NULL),
(87, 'B0123', 13.00, 26.60, 26.60, 40.00, 26.60, 1, '2021-06-18 18:00:00', NULL),
(88, 'B0628', 6.00, 230.00, 230.00, 400.00, 230.00, 1, '2021-06-18 18:00:00', NULL),
(89, 'C0095', 3.00, 810.00, 810.00, 900.00, 810.00, 1, '2021-06-18 18:00:00', NULL),
(90, 'B0124', 75.00, 30.40, 30.40, 50.00, 30.40, 1, '2021-06-18 18:00:00', NULL),
(91, 'B0569', 5.00, 180.00, 180.00, 230.00, 180.00, 1, '2021-06-18 18:00:00', NULL),
(92, 'C0115', 3.50, 265.50, 265.50, 400.00, 265.50, 1, '2021-06-18 18:00:00', NULL),
(93, 'B0128', 1.00, 6100.00, 6100.00, 6200.00, 6100.00, 1, '2021-06-18 18:00:00', NULL),
(94, 'C0116', 0.80, 350.00, 350.00, 500.00, 350.00, 1, '2021-06-18 18:00:00', NULL),
(95, 'B0129', 3.00, 5836.00, 5836.00, 7150.00, 5836.00, 1, '2021-06-18 18:00:00', NULL),
(96, 'C0118', 30.00, 32.00, 32.00, 40.00, 32.00, 1, '2021-06-18 18:00:00', NULL),
(97, 'C0119', 2.00, 261.66, 261.66, 350.00, 261.66, 1, '2021-06-18 18:00:00', NULL),
(98, 'B0130', 2.00, 9236.00, 9236.00, 9500.00, 9236.00, 1, '2021-06-18 18:00:00', NULL),
(99, 'C0120', 21.00, 40.00, 40.00, 160.00, 40.00, 1, '2021-06-18 18:00:00', NULL),
(100, 'B0132', 1.00, 8050.00, 8050.00, 8500.00, 8050.00, 1, '2021-06-18 18:00:00', NULL),
(101, 'C0121', 2.00, 220.00, 220.00, 300.00, 220.00, 1, '2021-06-18 18:00:00', NULL),
(102, 'C0122', 4.00, 6.25, 6.25, 8.00, 6.25, 1, '2021-06-18 18:00:00', NULL),
(103, 'C0123', 30.00, 6.00, 6.00, 8.00, 6.00, 1, '2021-06-18 18:00:00', NULL),
(104, 'C0124', 10.00, 6.00, 6.00, 8.00, 6.00, 1, '2021-06-18 18:00:00', NULL),
(105, 'C0125', 80.00, 58.00, 58.00, 70.00, 58.00, 1, '2021-06-18 18:00:00', NULL),
(106, 'B1039', 17.00, 98.00, 98.00, 150.00, 98.00, 14, '2021-06-18 18:00:00', '2021-06-21 18:00:00'),
(107, 'C0126', 600.00, 21.88, 21.88, 35.00, 21.88, 1, '2021-06-18 18:00:00', NULL),
(108, 'B0231', 12.00, 150.00, 150.00, 250.00, 150.00, 1, '2021-06-18 18:00:00', NULL),
(109, 'C0006', 21.00, 130.00, 130.00, 140.00, 130.00, 1, '2021-06-18 18:00:00', NULL),
(110, 'C0008', 3.00, 95.00, 95.00, 170.00, 95.00, 1, '2021-06-18 18:00:00', NULL),
(111, 'C0009', 15.00, 82.00, 82.00, 100.00, 82.00, 1, '2021-06-18 18:00:00', NULL),
(112, 'C0010', 11.00, 77.00, 77.00, 100.00, 77.00, 1, '2021-06-18 18:00:00', NULL),
(113, 'C0013', 192.00, 1.25, 1.25, 5.00, 1.25, 1, '2021-06-18 18:00:00', NULL),
(114, 'C0014', 12.00, 85.00, 85.00, 110.00, 85.00, 1, '2021-06-18 18:00:00', NULL),
(115, 'C0015', 5.00, 85.00, 85.00, 100.00, 85.00, 1, '2021-06-18 18:00:00', NULL),
(116, 'C0016', 4.50, 82.00, 82.00, 120.00, 82.00, 1, '2021-06-18 18:00:00', NULL),
(117, 'C0017', 6.00, 85.00, 85.00, 100.00, 85.00, 1, '2021-06-18 18:00:00', NULL),
(118, 'C0018', 7.00, 120.00, 120.00, 140.00, 120.00, 1, '2021-06-18 18:00:00', NULL),
(119, 'C0019', 1.00, 162.50, 162.50, 190.00, 162.50, 1, '2021-06-18 18:00:00', NULL),
(120, 'C0020', 33.00, 5.50, 5.50, 15.00, 5.50, 1, '2021-06-18 18:00:00', NULL),
(121, 'C0021', 8.00, 11.00, 11.00, 20.00, 11.00, 1, '2021-06-18 18:00:00', NULL),
(122, 'C0022', 37.00, 3.00, 3.00, 6.00, 3.00, 1, '2021-06-18 18:00:00', NULL),
(123, 'C0023', 31.00, 7.00, 7.00, 10.00, 7.00, 1, '2021-06-18 18:00:00', NULL),
(124, 'C0024', 35.00, 10.00, 10.00, 15.00, 10.00, 1, '2021-06-18 18:00:00', NULL),
(125, 'C0029', 5.00, 130.00, 130.00, 150.00, 130.00, 1, '2021-06-18 18:00:00', NULL),
(126, 'C0030', 16.00, 50.00, 50.00, 60.00, 50.00, 1, '2021-06-18 18:00:00', NULL),
(127, 'C0032', 5.00, 35.00, 35.00, 40.00, 35.00, 1, '2021-06-18 18:00:00', NULL),
(128, 'C0033', 22.00, 40.00, 40.00, 50.00, 40.00, 1, '2021-06-18 18:00:00', NULL),
(129, 'C0036', 24.00, 63.00, 63.00, 100.00, 63.00, 1, '2021-06-18 18:00:00', NULL),
(130, 'C0037', 25.00, 47.00, 47.00, 70.00, 47.00, 1, '2021-06-18 18:00:00', NULL),
(131, 'C0038', 22.00, 55.00, 55.00, 70.00, 55.00, 1, '2021-06-18 18:00:00', NULL),
(132, 'C0039', 10.00, 60.00, 60.00, 80.00, 60.00, 1, '2021-06-18 18:00:00', NULL),
(133, 'C0043', 4.00, 80.00, 80.00, 120.00, 80.00, 1, '2021-06-18 18:00:00', NULL),
(134, 'C0044', 3.00, 130.00, 130.00, 170.00, 130.00, 1, '2021-06-18 18:00:00', NULL),
(135, 'C0045', 8.00, 38.00, 38.00, 50.00, 38.00, 1, '2021-06-18 18:00:00', NULL),
(136, 'C0046', 6.00, 80.00, 80.00, 120.00, 80.00, 1, '2021-06-18 18:00:00', NULL),
(137, 'C0049', 153.00, 5.00, 5.00, 15.00, 5.00, 1, '2021-06-18 18:00:00', NULL),
(138, 'C0051', 24.00, 68.00, 68.00, 80.00, 68.00, 1, '2021-06-18 18:00:00', NULL),
(139, 'C0052', 8.00, 80.00, 80.00, 90.00, 80.00, 1, '2021-06-18 18:00:00', NULL),
(140, 'C0053', 5.50, 105.00, 105.00, 140.00, 105.00, 1, '2021-06-18 18:00:00', NULL),
(141, 'C0054', 141.00, 5.14, 5.14, 10.00, 5.14, 1, '2021-06-18 18:00:00', NULL),
(142, 'C0055', 14.00, 165.00, 165.00, 200.00, 165.00, 1, '2021-06-18 18:00:00', NULL),
(143, 'C0055', 14.00, 165.00, 165.00, 200.00, 165.00, 1, '2021-06-18 18:00:00', NULL),
(144, 'C0057', 8.00, 46.00, 46.00, 70.00, 46.00, 1, '2021-06-18 18:00:00', NULL),
(145, 'C0058', 14.00, 29.00, 29.00, 40.00, 29.00, 1, '2021-06-18 18:00:00', NULL),
(146, 'C0060', 52.00, 18.00, 18.00, 25.00, 18.00, 1, '2021-06-18 18:00:00', NULL),
(147, 'C0061', 18.00, 38.00, 38.00, 50.00, 38.00, 1, '2021-06-18 18:00:00', NULL),
(148, 'C0062', 11.00, 155.00, 155.00, 180.00, 155.00, 1, '2021-06-18 18:00:00', NULL),
(149, 'C0063', 15.00, 60.00, 60.00, 100.00, 60.00, 1, '2021-06-18 18:00:00', NULL),
(150, 'C0064', 5.00, 74.00, 74.00, 100.00, 74.00, 1, '2021-06-18 18:00:00', NULL),
(151, 'C0066', 48.00, 65.00, 65.00, 90.00, 65.00, 1, '2021-06-18 18:00:00', NULL),
(152, 'C0069', 18.00, 50.00, 50.00, 65.00, 50.00, 1, '2021-06-18 18:00:00', NULL),
(153, 'C0073', 42.00, 14.00, 14.00, 18.00, 14.00, 1, '2021-06-18 18:00:00', NULL),
(154, 'C0074', 124.00, 10.00, 10.00, 15.00, 10.00, 1, '2021-06-18 18:00:00', NULL),
(155, 'C0075', 8.00, 240.00, 240.00, 300.00, 240.00, 1, '2021-06-18 18:00:00', NULL),
(156, 'C0076', 45.00, 24.00, 24.00, 35.00, 24.00, 1, '2021-06-18 18:00:00', NULL),
(157, 'C0077', 4.00, 28.00, 28.00, 40.00, 28.00, 1, '2021-06-18 18:00:00', NULL),
(158, 'C0096', 5.00, 300.00, 300.00, 400.00, 300.00, 1, '2021-06-18 18:00:00', NULL),
(159, 'C0098', 7.00, 140.00, 140.00, 180.00, 140.00, 1, '2021-06-18 18:00:00', NULL),
(160, 'C0099', 104.00, 4.00, 4.00, 10.00, 4.00, 1, '2021-06-18 18:00:00', NULL),
(161, 'C0100', 800.00, 3.50, 3.50, 10.00, 3.50, 1, '2021-06-18 18:00:00', NULL),
(162, 'C0101', 1.00, 160.00, 160.00, 200.00, 160.00, 1, '2021-06-18 18:00:00', NULL),
(163, 'C0102', 18.00, 170.00, 170.00, 200.00, 170.00, 1, '2021-06-18 18:00:00', NULL),
(164, 'C0105', 50.00, 139.70, 139.70, 180.00, 139.70, 1, '2021-06-18 18:00:00', NULL),
(165, 'C0106', 560.00, 2.50, 2.50, 10.00, 2.50, 1, '2021-06-18 18:00:00', NULL),
(166, 'C0108', 20.00, 9.00, 9.00, 25.00, 9.00, 1, '2021-06-18 18:00:00', NULL),
(167, 'C0109', 1.50, 160.00, 160.00, 200.00, 160.00, 1, '2021-06-18 18:00:00', NULL),
(168, 'C0110', 400.00, 5.00, 5.00, 10.00, 5.00, 1, '2021-06-18 18:00:00', NULL),
(169, 'C0111', 1.50, 240.00, 240.00, 700.00, 240.00, 1, '2021-06-18 18:00:00', NULL),
(170, 'C0112', 0.30, 280.00, 280.00, 400.00, 280.00, 1, '2021-06-18 18:00:00', NULL),
(171, 'C0130', 3.00, 85.00, 85.00, 100.00, 85.00, 1, '2021-06-18 18:00:00', NULL),
(172, 'C0131', 18.00, 75.00, 75.00, 90.00, 75.00, 1, '2021-06-18 18:00:00', NULL),
(173, 'C0132', 4.00, 2580.00, 2580.00, 2650.00, 2580.00, 1, '2021-06-18 18:00:00', NULL),
(174, 'C0133', 5.00, 590.00, 590.00, 650.00, 590.00, 1, '2021-06-18 18:00:00', NULL),
(175, 'C0134', 12.00, 155.00, 155.00, 170.00, 155.00, 1, '2021-06-18 18:00:00', NULL),
(176, 'C0135', 4.00, 1280.00, 1280.00, 1320.00, 1280.00, 1, '2021-06-18 18:00:00', NULL),
(177, 'C0136', 3.00, 315.00, 315.00, 350.00, 315.00, 1, '2021-06-18 18:00:00', NULL),
(178, 'C0137', 4.00, 1080.00, 1080.00, 1130.00, 1080.00, 1, '2021-06-18 18:00:00', NULL),
(179, 'B0165', 5.00, 253.38, 253.38, 310.00, 253.38, 1, '2021-06-19 18:00:00', NULL),
(180, 'B0172', 360.00, 17.34, 17.34, 33.00, 17.34, 1, '2021-06-19 18:00:00', NULL),
(181, 'B1060', 7.00, 60.00, 60.00, 120.00, 60.00, 1, '2021-06-19 18:00:00', NULL),
(182, 'B0173', 255.00, 38.00, 38.00, 41.00, 38.00, 1, '2021-06-19 18:00:00', NULL),
(183, 'B0671', 20.00, 80.00, 80.00, 150.00, 80.00, 1, '2021-06-19 18:00:00', NULL),
(184, 'B0178', 90.00, 18.50, 18.50, 25.00, 18.50, 1, '2021-06-19 18:00:00', NULL),
(185, 'B0675', 9.00, 450.00, 450.00, 550.00, 450.00, 1, '2021-06-19 18:00:00', NULL),
(186, 'B0179', 60.00, 32.50, 32.50, 35.00, 32.50, 1, '2021-06-19 18:00:00', NULL),
(187, 'B0677', 8.00, 300.00, 300.00, 400.00, 300.00, 1, '2021-06-19 18:00:00', NULL),
(188, 'B0492', 37.00, 120.00, 120.00, 180.00, 120.00, 14, '2021-06-19 18:00:00', '2021-06-21 18:00:00'),
(189, 'B0185', 40.00, 110.00, 110.00, 155.00, 110.00, 1, '2021-06-19 18:00:00', NULL),
(190, 'B0188', 160.00, 12.90, 12.90, 15.00, 12.90, 1, '2021-06-19 18:00:00', NULL),
(191, 'B0495', 3.00, 740.00, 740.00, 1000.00, 740.00, 14, '2021-06-19 18:00:00', '2021-06-21 18:00:00'),
(192, 'B0493', 58.00, 155.00, 155.00, 220.00, 155.00, 1, '2021-06-19 18:00:00', NULL),
(193, 'B0197', 90.00, 15.00, 15.00, 25.00, 15.00, 1, '2021-06-19 18:00:00', NULL),
(194, 'B0198', 230.00, 18.87, 18.87, 30.00, 18.87, 1, '2021-06-19 18:00:00', NULL),
(195, 'B0199', 10.00, 21.32, 21.32, 26.00, 21.32, 1, '2021-06-19 18:00:00', NULL),
(196, 'C0138', 3.00, 1070.00, 1070.00, 1150.00, 1070.00, 1, '2021-06-19 18:00:00', NULL),
(197, 'B0505', 3.00, 530.00, 530.00, 730.00, 530.00, 1, '2021-06-19 18:00:00', NULL),
(198, 'B0203', 8.00, 26.00, 26.00, 30.00, 26.00, 1, '2021-06-19 18:00:00', NULL),
(199, 'B0204', 25.00, 27.88, 27.88, 45.00, 27.88, 1, '2021-06-19 18:00:00', NULL),
(200, 'B0205', 60.00, 34.44, 34.44, 42.00, 34.44, 1, '2021-06-19 18:00:00', NULL),
(201, 'B0494', 28.00, 255.00, 255.00, 350.00, 255.00, 1, '2021-06-19 18:00:00', NULL),
(202, 'B0214', 24.00, 234.00, 234.00, 290.00, 234.00, 1, '2021-06-19 18:00:00', NULL),
(203, 'B0701', 5.00, 4510.00, 4510.00, 6200.00, 4510.00, 1, '2021-06-19 18:00:00', NULL),
(204, 'B0215', 5.00, 447.00, 447.00, 475.00, 447.00, 1, '2021-06-19 18:00:00', NULL),
(205, 'C0142', 3.00, 1075.00, 1075.00, 1150.00, 1075.00, 1, '2021-06-19 18:00:00', NULL),
(206, 'B0700', 5.00, 4430.00, 4430.00, 5200.00, 4430.00, 1, '2021-06-19 18:00:00', NULL),
(207, 'B0216', 15.00, 281.00, 281.00, 400.00, 281.00, 1, '2021-06-19 18:00:00', NULL),
(208, 'B0588', 9.00, 120.00, 120.00, 250.00, 120.00, 1, '2021-06-19 18:00:00', NULL),
(209, 'B0218', 18.00, 330.00, 330.00, 360.00, 330.00, 1, '2021-06-19 18:00:00', NULL),
(210, 'B0219', 140.00, 16.00, 16.00, 20.00, 16.00, 1, '2021-06-19 18:00:00', NULL),
(211, 'C0163', 2.00, 1006.00, 1006.00, 1150.00, 1006.00, 1, '2021-06-19 18:00:00', NULL),
(212, 'B0519', 3.00, 280.00, 280.00, 350.00, 280.00, 1, '2021-06-19 18:00:00', NULL),
(213, 'B0220', 30.00, 28.00, 28.00, 44.00, 28.00, 1, '2021-06-19 18:00:00', NULL),
(214, 'B1124', 4.00, 334.00, 334.00, 420.00, 334.00, 1, '2021-06-19 18:00:00', NULL),
(215, 'B0668', 5.00, 900.00, 900.00, 1200.00, 900.00, 1, '2021-06-19 18:00:00', NULL),
(216, 'B0221', 150.00, 20.16, 20.16, 31.00, 20.16, 1, '2021-06-19 18:00:00', NULL),
(217, 'B0721', 8.00, 1260.00, 1260.00, 1650.00, 1260.00, 14, '2021-06-19 18:00:00', '2021-06-21 18:00:00'),
(218, 'C0164', 6.00, 1000.00, 1000.00, 1150.00, 1000.00, 1, '2021-06-19 18:00:00', NULL),
(219, 'C0165', 4.00, 1070.00, 1070.00, 1150.00, 1070.00, 1, '2021-06-19 18:00:00', NULL),
(220, 'B0227', 40.00, 53.00, 53.00, 75.00, 53.00, 1, '2021-06-19 18:00:00', NULL),
(221, 'B0229', 15.00, 114.00, 114.00, 150.00, 114.00, 1, '2021-06-19 18:00:00', NULL),
(222, 'B0663', 3.00, 760.00, 760.00, 1150.00, 760.00, 1, '2021-06-19 18:00:00', NULL),
(223, 'B0230', 5.00, 220.00, 220.00, 270.00, 220.00, 1, '2021-06-19 18:00:00', NULL),
(224, 'C0167', 10.00, 1000.00, 1000.00, 1150.00, 1000.00, 1, '2021-06-19 18:00:00', NULL),
(225, 'C0168', 8.00, 1027.00, 1027.00, 1150.00, 1027.00, 1, '2021-06-19 18:00:00', NULL),
(226, 'B0664', 2.00, 1400.00, 1400.00, 1650.00, 1400.00, 1, '2021-06-19 18:00:00', NULL),
(227, 'B0233', 60.00, 38.00, 38.00, 50.00, 38.00, 1, '2021-06-19 18:00:00', NULL),
(228, 'C0170', 2.00, 1075.00, 1075.00, 1150.00, 1075.00, 1, '2021-06-19 18:00:00', NULL),
(229, 'B0887', 9.00, 997.00, 997.00, 1310.00, 997.00, 1, '2021-06-19 18:00:00', NULL),
(230, 'B0235', 80.00, 52.00, 52.00, 76.00, 52.00, 1, '2021-06-19 18:00:00', NULL),
(231, 'B0836', 3.00, 900.00, 900.00, 1310.00, 900.00, 1, '2021-06-19 18:00:00', NULL),
(232, 'B0237', 40.00, 72.50, 72.50, 98.00, 72.50, 1, '2021-06-19 18:00:00', NULL),
(233, 'B0835', 18.00, 1050.00, 1050.00, 1310.00, 1050.00, 1, '2021-06-19 18:00:00', NULL),
(234, 'B0240', 220.00, 105.00, 105.00, 110.00, 105.00, 1, '2021-06-19 18:00:00', NULL),
(235, 'B1333', 24.00, 880.00, 880.00, 1250.00, 880.00, 14, '2021-06-19 18:00:00', '2021-06-21 18:00:00'),
(236, 'B0242', 200.00, 39.00, 39.00, 42.00, 39.00, 1, '2021-06-19 18:00:00', NULL),
(237, 'B0246', 30.00, 68.80, 68.80, 86.00, 68.80, 1, '2021-06-19 18:00:00', NULL),
(238, 'C0192', 6.00, 150.00, 150.00, 170.00, 150.00, 1, '2021-06-19 18:00:00', NULL),
(239, 'B0932', 10.00, 260.00, 260.00, 360.00, 260.00, 1, '2021-06-19 18:00:00', NULL),
(240, 'C0193', 15.00, 150.00, 150.00, 170.00, 150.00, 1, '2021-06-19 18:00:00', NULL),
(241, 'C0195', 9.00, 166.25, 166.25, 170.00, 166.25, 1, '2021-06-19 18:00:00', NULL),
(242, 'B0253', 24.00, 18.00, 18.00, 22.00, 18.00, 1, '2021-06-19 18:00:00', NULL),
(243, 'B1338', 24.00, 845.00, 845.00, 1250.00, 845.00, 1, '2021-06-19 18:00:00', NULL),
(244, 'B0852', 10.00, 2800.00, 2800.00, 3000.00, 2800.00, 1, '2021-06-19 18:00:00', NULL),
(245, 'B1304', 7.00, 980.00, 980.00, 1270.00, 980.00, 1, '2021-06-19 18:00:00', NULL),
(246, 'C0199', 9.00, 166.25, 166.25, 170.00, 166.25, 1, '2021-06-19 18:00:00', NULL),
(247, 'B0266', 4.00, 140.00, 140.00, 250.00, 140.00, 1, '2021-06-19 18:00:00', NULL),
(248, 'C0200', 11.00, 150.00, 150.00, 170.00, 150.00, 1, '2021-06-19 18:00:00', NULL),
(249, 'C0201', 3.00, 149.00, 149.00, 170.00, 149.00, 1, '2021-06-19 18:00:00', NULL),
(250, 'C0202', 6.00, 155.00, 155.00, 170.00, 155.00, 1, '2021-06-19 18:00:00', NULL),
(251, 'C0203', 2.00, 147.00, 147.00, 170.00, 147.00, 1, '2021-06-19 18:00:00', NULL),
(252, 'B1335', 22.00, 960.00, 960.00, 1360.00, 960.00, 1, '2021-06-19 18:00:00', NULL),
(253, 'B0905', 2.00, 1048.00, 1048.00, 1310.00, 1048.00, 1, '2021-06-19 18:00:00', NULL),
(254, 'B0832', 11.00, 956.00, 956.00, 1310.00, 956.00, 1, '2021-06-19 18:00:00', NULL),
(255, 'B1309', 5.00, 1008.00, 1008.00, 1350.00, 1008.00, 1, '2021-06-19 18:00:00', NULL),
(256, 'B0884', 1.00, 992.00, 992.00, 1310.00, 992.00, 1, '2021-06-19 18:00:00', NULL),
(257, 'B0840', 1.00, 1000.00, 1000.00, 1180.00, 1000.00, 1, '2021-06-19 18:00:00', NULL),
(258, 'C0244', 2.00, 1580.00, 1580.00, 1650.00, 1580.00, 1, '2021-06-19 18:00:00', NULL),
(259, 'C0245', 2.00, 1530.00, 1530.00, 1650.00, 1530.00, 1, '2021-06-19 18:00:00', NULL),
(260, 'B0846', 4.00, 905.00, 905.00, 1180.00, 905.00, 1, '2021-06-19 18:00:00', NULL),
(261, 'B0280', 1.00, 1360.00, 1360.00, 1500.00, 1360.00, 1, '2021-06-19 18:00:00', NULL),
(262, 'B1303', 3.00, 798.00, 798.00, 1140.00, 798.00, 1, '2021-06-19 18:00:00', NULL),
(263, 'C0247', 2.00, 1580.00, 1580.00, 1650.00, 1580.00, 1, '2021-06-19 18:00:00', NULL),
(264, 'B0282', 1.00, 1175.00, 1175.00, 1500.00, 1175.00, 1, '2021-06-19 18:00:00', NULL),
(265, 'B0831', 8.00, 752.00, 752.00, 940.00, 752.00, 1, '2021-06-19 18:00:00', NULL),
(266, 'B0883', 30.00, 675.00, 675.00, 960.00, 675.00, 1, '2021-06-19 18:00:00', NULL),
(267, 'B0872', 7.00, 880.00, 880.00, 1150.00, 880.00, 1, '2021-06-19 18:00:00', NULL),
(268, 'B0871', 7.00, 795.00, 795.00, 1130.00, 795.00, 1, '2021-06-19 18:00:00', NULL),
(269, 'B0850', 3.00, 1500.00, 1500.00, 2145.00, 1500.00, 1, '2021-06-19 18:00:00', NULL),
(270, 'B1336', 12.00, 517.00, 517.00, 715.00, 517.00, 1, '2021-06-19 18:00:00', NULL),
(271, 'B1291', 16.00, 288.00, 288.00, 420.00, 288.00, 1, '2021-06-19 18:00:00', NULL),
(272, 'B0619', 11.00, 690.00, 690.00, 860.00, 690.00, 1, '2021-06-19 18:00:00', NULL),
(273, 'B1141', 3.00, 800.00, 800.00, 1150.00, 800.00, 1, '2021-06-19 18:00:00', NULL),
(274, 'B0621', 3.00, 775.00, 775.00, 860.00, 775.00, 1, '2021-06-19 18:00:00', NULL),
(275, 'B1305', 4.00, 1015.00, 1015.00, 1450.00, 1015.00, 1, '2021-06-19 18:00:00', NULL),
(276, 'B0886', 7.00, 1208.00, 1208.00, 1510.00, 1208.00, 1, '2021-06-19 18:00:00', NULL),
(277, 'B0834', 6.00, 1050.00, 1050.00, 1520.00, 1050.00, 1, '2021-06-19 18:00:00', NULL),
(278, 'B1277', 5.00, 1368.00, 1368.00, 1710.00, 1368.00, 1, '2021-06-19 18:00:00', NULL),
(279, 'B1337', 12.00, 1106.00, 1106.00, 1580.00, 1106.00, 1, '2021-06-19 18:00:00', NULL),
(280, 'B1334', 20.00, 960.00, 960.00, 1360.00, 960.00, 1, '2021-06-19 18:00:00', NULL),
(281, 'B0830', 23.00, 854.00, 854.00, 980.00, 854.00, 1, '2021-06-19 18:00:00', NULL),
(282, 'B0833', 15.00, 744.00, 744.00, 1048.00, 744.00, 1, '2021-06-19 18:00:00', NULL),
(283, 'B0838', 14.00, 350.00, 350.00, 430.00, 350.00, 1, '2021-06-19 18:00:00', NULL),
(284, 'B0959', 2.00, 7500.00, 7500.00, 9500.00, 7500.00, 1, '2021-06-19 18:00:00', NULL),
(285, 'B1315', 4.00, 2050.00, 2050.00, 2200.00, 2050.00, 1, '2021-06-19 18:00:00', NULL),
(286, 'B0305', 1.00, 2025.00, 2025.00, 3000.00, 2025.00, 1, '2021-06-19 18:00:00', NULL),
(287, 'B0307', 4.00, 1892.40, 1892.40, 2400.00, 1892.40, 1, '2021-06-19 18:00:00', NULL),
(288, 'B0313', 11.00, 230.00, 230.00, 255.00, 230.00, 1, '2021-06-19 18:00:00', NULL),
(289, 'B0314', 7.00, 312.00, 312.00, 450.00, 312.00, 1, '2021-06-19 18:00:00', NULL),
(290, 'B0316', 18.00, 121.00, 121.00, 160.00, 121.00, 1, '2021-06-19 18:00:00', NULL),
(291, 'B0317', 22.00, 132.00, 132.00, 180.00, 132.00, 1, '2021-06-19 18:00:00', NULL),
(292, 'B0318', 137.00, 10.20, 10.20, 17.00, 10.20, 1, '2021-06-19 18:00:00', NULL),
(293, 'B0319', 60.00, 13.20, 13.20, 18.00, 13.20, 1, '2021-06-19 18:00:00', NULL),
(294, 'B0320', 45.00, 21.00, 21.00, 27.00, 21.00, 1, '2021-06-19 18:00:00', NULL),
(295, 'B0654', 20.00, 240.00, 240.00, 450.00, 240.00, 14, '2021-06-19 18:00:00', '2021-06-21 18:00:00'),
(296, 'B0325', 1.00, 12.00, 12.00, 15.00, 12.00, 1, '2021-06-19 18:00:00', NULL),
(297, 'B0326', 14.00, 140.00, 140.00, 170.00, 140.00, 1, '2021-06-19 18:00:00', NULL),
(298, 'B0327', 10.00, 99.00, 99.00, 150.00, 99.00, 1, '2021-06-19 18:00:00', NULL),
(299, 'B0328', 35.00, 235.00, 235.00, 320.00, 235.00, 1, '2021-06-19 18:00:00', NULL),
(300, 'B0661', 25.00, 240.00, 240.00, 350.00, 240.00, 1, '2021-06-19 18:00:00', NULL),
(301, 'C0315', 2.00, 4150.00, 4150.00, 4300.00, 4150.00, 1, '2021-06-19 18:00:00', NULL),
(302, 'C0314', 4.00, 70.00, 70.00, 100.00, 70.00, 1, '2021-06-19 18:00:00', NULL),
(303, 'B0331', 8.00, 14.00, 14.00, 40.00, 14.00, 1, '2021-06-19 18:00:00', NULL),
(304, 'C0313', 3.00, 1110.00, 1110.00, 1250.00, 1110.00, 1, '2021-06-19 18:00:00', NULL),
(305, 'C0312', 4.00, 1095.00, 1095.00, 1250.00, 1095.00, 1, '2021-06-19 18:00:00', NULL),
(306, 'C0311', 4.00, 1180.00, 1180.00, 1250.00, 1180.00, 1, '2021-06-19 18:00:00', NULL),
(307, 'C0310', 1.00, 1107.00, 1107.00, 1250.00, 1107.00, 1, '2021-06-19 18:00:00', NULL),
(308, 'B0334', 590.00, 4.00, 4.00, 10.00, 4.00, 1, '2021-06-19 18:00:00', NULL),
(309, 'B0335', 40.00, 30.00, 30.00, 60.00, 30.00, 1, '2021-06-19 18:00:00', NULL),
(310, 'B1205', 20.00, 123.00, 123.00, 250.00, 123.00, 1, '2021-06-19 18:00:00', NULL),
(311, 'B0336', 11.00, 40.00, 40.00, 75.00, 40.00, 1, '2021-06-19 18:00:00', NULL),
(312, 'B0337', 4.00, 20.00, 20.00, 30.00, 20.00, 1, '2021-06-19 18:00:00', NULL),
(313, 'C0316', 3.00, 4150.00, 4150.00, 4300.00, 4150.00, 1, '2021-06-19 18:00:00', NULL),
(314, 'B0339', 11.00, 90.25, 90.25, 140.00, 90.25, 1, '2021-06-19 18:00:00', NULL),
(315, 'C0317', 2.00, 4150.00, 4150.00, 4300.00, 4150.00, 1, '2021-06-19 18:00:00', NULL),
(316, 'C0318', 1.00, 3954.00, 3954.00, 4300.00, 3954.00, 1, '2021-06-19 18:00:00', NULL),
(317, 'B0340', 10.00, 275.00, 275.00, 350.00, 275.00, 1, '2021-06-19 18:00:00', NULL),
(318, 'B0343', 4.00, 170.00, 170.00, 250.00, 170.00, 1, '2021-06-19 18:00:00', NULL),
(319, 'C0321', 1.00, 4010.00, 4010.00, 4300.00, 4010.00, 1, '2021-06-19 18:00:00', NULL),
(320, 'B0665', 6.00, 1400.00, 1400.00, 1650.00, 1400.00, 1, '2021-06-19 18:00:00', NULL),
(321, 'C0322', 1.00, 3719.00, 3719.00, 4300.00, 3719.00, 1, '2021-06-19 18:00:00', NULL),
(322, 'C0325', 2.00, 4057.00, 4057.00, 4300.00, 4057.00, 1, '2021-06-19 18:00:00', NULL),
(323, 'C0326', 4.00, 3962.00, 3962.00, 4300.00, 3962.00, 1, '2021-06-19 18:00:00', NULL),
(324, 'B0344', 239.00, 12.50, 12.50, 20.00, 12.50, 1, '2021-06-19 18:00:00', NULL),
(325, 'B0656', 3.00, 215.00, 215.00, 350.00, 215.00, 1, '2021-06-19 18:00:00', NULL),
(326, 'B0655', 2.00, 232.00, 232.00, 330.00, 232.00, 1, '2021-06-19 18:00:00', NULL),
(327, 'B0718', 5.00, 192.00, 192.00, 350.00, 192.00, 1, '2021-06-19 18:00:00', NULL),
(328, 'C0329', 5.00, 900.00, 900.00, 950.00, 900.00, 1, '2021-06-19 18:00:00', NULL),
(329, 'C0330', 5.00, 895.00, 895.00, 950.00, 895.00, 1, '2021-06-19 18:00:00', NULL),
(330, 'C0332', 1.00, 870.00, 870.00, 950.00, 870.00, 1, '2021-06-19 18:00:00', NULL),
(331, 'C0333', 4.00, 840.00, 840.00, 950.00, 840.00, 1, '2021-06-19 18:00:00', NULL),
(332, 'B0851', 4.00, 2350.00, 2350.00, 2600.00, 2350.00, 1, '2021-06-19 18:00:00', NULL),
(333, 'B0346', 6.00, 440.00, 440.00, 520.00, 440.00, 1, '2021-06-19 18:00:00', NULL),
(334, 'C0334', 1.00, 900.00, 900.00, 950.00, 900.00, 1, '2021-06-19 18:00:00', NULL),
(335, 'C0335', 2.00, 560.00, 560.00, 950.00, 560.00, 1, '2021-06-19 18:00:00', NULL),
(336, 'B0311', 6.00, 145.00, 145.00, 220.00, 145.00, 14, '2021-06-19 18:00:00', '2021-06-21 18:00:00'),
(337, 'C0336', 4.00, 860.00, 860.00, 950.00, 860.00, 1, '2021-06-19 18:00:00', NULL),
(338, 'C0337', 2.00, 910.00, 910.00, 950.00, 910.00, 1, '2021-06-19 18:00:00', NULL),
(339, 'B0347', 120.00, 4.50, 4.50, 15.00, 4.50, 1, '2021-06-19 18:00:00', NULL),
(340, 'C0338', 4.00, 870.00, 870.00, 950.00, 870.00, 1, '2021-06-19 18:00:00', NULL),
(341, 'C0339', 4.00, 840.00, 840.00, 950.00, 840.00, 1, '2021-06-19 18:00:00', NULL),
(342, 'B0564', 10.00, 350.00, 350.00, 550.00, 350.00, 1, '2021-06-19 18:00:00', NULL),
(343, 'C0340', 3.00, 840.00, 840.00, 950.00, 840.00, 1, '2021-06-19 18:00:00', NULL),
(344, 'C0341', 4.00, 870.00, 870.00, 950.00, 870.00, 1, '2021-06-19 18:00:00', NULL),
(345, 'B0348', 55.00, 22.00, 22.00, 50.00, 22.00, 1, '2021-06-19 18:00:00', NULL),
(346, 'B03489', 72.00, 24.00, 24.00, 50.00, 24.00, 1, '2021-06-19 18:00:00', NULL),
(347, 'B0349', 72.00, 24.00, 24.00, 50.00, 24.00, 1, '2021-06-19 18:00:00', NULL),
(348, 'B0562', 11.00, 342.00, 342.00, 450.00, 342.00, 1, '2021-06-19 18:00:00', NULL),
(349, 'B0352', 3.00, 30.00, 30.00, 70.00, 30.00, 1, '2021-06-19 18:00:00', NULL),
(350, 'B0403', 17.00, 760.00, 760.00, 940.00, 760.00, 1, '2021-06-19 18:00:00', NULL),
(351, 'B0353', 3.00, 6300.00, 6300.00, 7025.00, 6300.00, 1, '2021-06-19 18:00:00', NULL),
(352, 'B1067', 14.00, 853.00, 853.00, 1000.00, 853.00, 14, '2021-06-19 18:00:00', '2021-06-21 18:00:00'),
(353, 'B1044', 11.00, 650.00, 650.00, 100.00, 650.00, 1, '2021-06-19 18:00:00', NULL),
(354, 'B0359', 2.00, 10500.00, 10500.00, 11000.00, 10500.00, 1, '2021-06-19 18:00:00', NULL),
(355, 'B0361', 1.00, 11465.00, 11465.00, 11780.00, 11465.00, 1, '2021-06-19 18:00:00', NULL),
(356, 'B0362', 5.00, 2645.00, 2645.00, 3000.00, 2645.00, 1, '2021-06-19 18:00:00', NULL),
(357, 'B0363', 3.00, 3590.00, 3590.00, 3850.00, 3590.00, 1, '2021-06-19 18:00:00', NULL),
(358, 'B0364', 7.00, 3050.00, 3050.00, 3345.00, 3050.00, 1, '2021-06-19 18:00:00', NULL),
(359, 'B0912', 18.00, 2510.00, 2510.00, 3000.00, 2510.00, 1, '2021-06-19 18:00:00', NULL),
(360, 'B0366', 3.00, 2645.00, 2645.00, 2850.00, 2645.00, 1, '2021-06-19 18:00:00', NULL),
(361, 'B1070', 5.00, 950.00, 950.00, 1050.00, 950.00, 1, '2021-06-19 18:00:00', NULL),
(362, 'B0818', 2.00, 347.00, 347.00, 450.00, 347.00, 1, '2021-06-19 18:00:00', NULL),
(363, 'B0374', 3.00, 2800.00, 2800.00, 3070.00, 2800.00, 1, '2021-06-19 18:00:00', NULL),
(364, 'B0381', 5.00, 835.00, 835.00, 920.00, 835.00, 1, '2021-06-19 18:00:00', NULL),
(365, 'B0385', 3.00, 3298.00, 3298.00, 3880.00, 3298.00, 1, '2021-06-19 18:00:00', NULL),
(366, 'B0386', 4.00, 2070.00, 2070.00, 2410.00, 2070.00, 1, '2021-06-19 18:00:00', NULL),
(367, 'B0387', 4.00, 580.00, 580.00, 640.00, 580.00, 1, '2021-06-19 18:00:00', NULL),
(368, 'B0388', 38.00, 1440.00, 1440.00, 1600.00, 1440.00, 1, '2021-06-19 18:00:00', NULL),
(369, 'B0389', 1.00, 2308.00, 2308.00, 2710.00, 2308.00, 1, '2021-06-19 18:00:00', NULL),
(370, 'B0401', 65.00, 429.00, 429.00, 520.00, 429.00, 1, '2021-06-19 18:00:00', NULL),
(371, 'B0390', 7.00, 1287.00, 1287.00, 1430.00, 1287.00, 1, '2021-06-19 18:00:00', NULL),
(372, 'B0391', 26.00, 816.00, 816.00, 960.00, 816.00, 1, '2021-06-19 18:00:00', NULL),
(373, 'B0392', 18.00, 774.00, 774.00, 860.00, 774.00, 1, '2021-06-19 18:00:00', NULL),
(374, 'B0392', 17.00, 774.00, 774.00, 860.00, 774.00, 1, '2021-06-19 18:00:00', NULL),
(375, 'B0393', 13.00, 1341.00, 1341.00, 1490.00, 1341.00, 1, '2021-06-19 18:00:00', NULL),
(376, 'B0405', 28.00, 405.00, 405.00, 460.00, 405.00, 1, '2021-06-19 18:00:00', NULL),
(377, 'B1234', 2.00, 595.00, 595.00, 700.00, 595.00, 1, '2021-06-19 18:00:00', NULL),
(378, 'B1266', 1.00, 3105.00, 3105.00, 3450.00, 3105.00, 1, '2021-06-19 18:00:00', NULL),
(379, 'B1378', 1.00, 3555.00, 3555.00, 3950.00, 3555.00, 1, '2021-06-19 18:00:00', NULL),
(380, 'B0407', 23.00, 870.00, 870.00, 950.00, 870.00, 1, '2021-06-19 18:00:00', NULL),
(381, 'B0408', 24.00, 570.00, 570.00, 750.00, 570.00, 1, '2021-06-19 18:00:00', NULL),
(382, 'B0551`', 6.00, 256.00, 256.00, 300.00, 256.00, 1, '2021-06-19 18:00:00', NULL),
(383, 'B0410', 13.00, 260.00, 260.00, 350.00, 260.00, 1, '2021-06-19 18:00:00', NULL),
(384, 'B0409', 1.00, 740.00, 740.00, 920.00, 740.00, 1, '2021-06-19 18:00:00', NULL),
(385, 'C0484', 170.00, 29.10, 29.10, 60.00, 29.10, 1, '2021-06-19 18:00:00', NULL),
(386, 'B1316', 3.00, 3825.00, 3825.00, 4250.00, 3825.00, 1, '2021-06-19 18:00:00', NULL),
(387, 'C0483', 50.00, 101.50, 101.50, 130.00, 101.50, 1, '2021-06-19 18:00:00', NULL),
(388, 'C0481', 54.00, 17.00, 17.00, 20.00, 17.00, 1, '2021-06-19 18:00:00', NULL),
(389, 'B1376', 3.00, 2160.00, 2160.00, 2400.00, 2160.00, 1, '2021-06-19 18:00:00', NULL),
(390, 'B1377', 2.00, 2745.00, 2745.00, 3050.00, 2745.00, 1, '2021-06-19 18:00:00', NULL),
(391, 'C0487', 26.00, 24.00, 24.00, 30.00, 24.00, 1, '2021-06-19 18:00:00', NULL),
(392, 'C0489', 42.00, 12.00, 12.00, 15.00, 12.00, 1, '2021-06-19 18:00:00', NULL),
(393, 'C0480', 12.00, 17.00, 17.00, 20.00, 17.00, 1, '2021-06-19 18:00:00', NULL),
(394, 'C0490', 12.00, 27.00, 27.00, 40.00, 27.00, 1, '2021-06-19 18:00:00', NULL),
(395, 'B0891', 18.00, 2500.00, 2500.00, 2700.00, 2500.00, 1, '2021-06-19 18:00:00', NULL),
(396, 'C0474', 57.00, 75.00, 75.00, 100.00, 75.00, 1, '2021-06-19 18:00:00', NULL),
(397, 'C0473', 295.00, 85.00, 85.00, 100.00, 85.00, 1, '2021-06-19 18:00:00', NULL),
(398, 'C0491', 12.00, 22.00, 22.00, 35.00, 22.00, 1, '2021-06-19 18:00:00', NULL),
(399, 'B0980', 4.00, 1190.00, 1190.00, 1250.00, 1190.00, 1, '2021-06-19 18:00:00', NULL),
(400, 'C0492', 18.00, 14.00, 14.00, 20.00, 14.00, 1, '2021-06-19 18:00:00', NULL),
(401, 'C0493', 70.00, 7.00, 7.00, 15.00, 7.00, 1, '2021-06-19 18:00:00', NULL),
(402, 'C0472', 100.00, 30.30, 30.30, 50.00, 30.30, 1, '2021-06-19 18:00:00', NULL),
(403, 'C0471', 175.00, 50.00, 50.00, 90.00, 50.00, 1, '2021-06-19 18:00:00', NULL),
(404, 'B0981', 26.00, 900.00, 900.00, 1170.00, 900.00, 1, '2021-06-19 18:00:00', NULL),
(405, 'C0494', 24.00, 6.00, 6.00, 10.00, 6.00, 1, '2021-06-19 18:00:00', NULL),
(406, 'C0496', 112.00, 72.00, 72.00, 90.00, 72.00, 1, '2021-06-19 18:00:00', NULL),
(407, 'C0498', 15.00, 17.00, 17.00, 25.00, 17.00, 1, '2021-06-19 18:00:00', NULL),
(408, 'B0982', 15.00, 730.00, 730.00, 850.00, 730.00, 1, '2021-06-19 18:00:00', NULL),
(409, 'C0499', 34.00, 36.50, 36.50, 50.00, 36.50, 1, '2021-06-19 18:00:00', NULL),
(410, 'C0500', 4.00, 216.00, 216.00, 250.00, 216.00, 1, '2021-06-19 18:00:00', NULL),
(411, 'C0501', 5.00, 180.00, 180.00, 220.00, 180.00, 1, '2021-06-19 18:00:00', NULL),
(412, 'B0983', 4.00, 1063.00, 1063.00, 1250.00, 1063.00, 1, '2021-06-19 18:00:00', NULL),
(413, 'C0502', 4.00, 144.00, 144.00, 170.00, 144.00, 1, '2021-06-19 18:00:00', NULL),
(414, 'B0984', 5.00, 2056.00, 2056.00, 2300.00, 2056.00, 1, '2021-06-19 18:00:00', NULL),
(415, 'B098', 3.00, 1385.00, 1385.00, 1730.00, 1385.00, 1, '2021-06-19 18:00:00', NULL),
(416, 'B0416', 1.00, 2800.00, 2800.00, 3000.00, 2800.00, 1, '2021-06-19 18:00:00', NULL),
(417, 'B0417', 3.00, 1385.00, 1385.00, 1730.00, 1385.00, 1, '2021-06-19 18:00:00', NULL),
(418, 'B0985', 4.00, 648.00, 648.00, 810.00, 648.00, 1, '2021-06-19 18:00:00', NULL),
(419, 'C0144', 8.00, 1070.00, 1070.00, 1150.00, 1070.00, 1, '2021-06-19 18:00:00', NULL),
(420, 'C0146', 3.00, 1000.00, 1000.00, 1150.00, 1000.00, 1, '2021-06-19 18:00:00', NULL),
(421, 'C0147', 3.00, 1042.00, 1042.00, 1150.00, 1042.00, 1, '2021-06-19 18:00:00', NULL),
(422, 'C0149', 2.00, 1080.00, 1080.00, 1150.00, 1080.00, 1, '2021-06-19 18:00:00', NULL),
(423, 'C0150', 4.00, 1070.00, 1070.00, 1150.00, 1070.00, 1, '2021-06-19 18:00:00', NULL),
(424, 'C0151', 4.00, 1075.00, 1075.00, 1150.00, 1075.00, 1, '2021-06-19 18:00:00', NULL),
(425, 'C0152', 1.00, 1090.00, 1090.00, 1150.00, 1090.00, 1, '2021-06-19 18:00:00', NULL),
(426, 'C0154', 5.00, 1070.00, 1070.00, 1150.00, 1070.00, 1, '2021-06-19 18:00:00', NULL),
(427, 'C0155', 2.00, 1070.00, 1070.00, 1150.00, 1070.00, 1, '2021-06-19 18:00:00', NULL),
(428, 'C0156', 3.00, 1070.00, 1070.00, 1150.00, 1070.00, 1, '2021-06-19 18:00:00', NULL),
(429, 'C0157', 4.00, 1000.00, 1000.00, 1150.00, 1000.00, 1, '2021-06-19 18:00:00', NULL),
(430, 'C0158', 2.00, 1000.00, 1000.00, 1150.00, 1000.00, 1, '2021-06-19 18:00:00', NULL),
(431, 'C0160', 2.00, 1058.00, 1058.00, 1150.00, 1058.00, 1, '2021-06-19 18:00:00', NULL),
(432, 'C0162', 1.00, 1080.00, 1080.00, 1150.00, 1080.00, 1, '2021-06-19 18:00:00', NULL),
(433, 'C0171', 12.00, 275.00, 275.00, 320.00, 275.00, 1, '2021-06-19 18:00:00', NULL),
(434, 'C0172', 1.00, 280.00, 280.00, 320.00, 280.00, 1, '2021-06-19 18:00:00', NULL),
(435, 'C0174', 8.00, 275.00, 275.00, 320.00, 275.00, 1, '2021-06-19 18:00:00', NULL),
(436, 'C0175', 6.00, 275.00, 275.00, 320.00, 275.00, 1, '2021-06-19 18:00:00', NULL),
(437, 'C0176', 12.00, 270.00, 270.00, 320.00, 270.00, 1, '2021-06-19 18:00:00', NULL),
(438, 'C0177', 4.00, 270.00, 270.00, 320.00, 270.00, 1, '2021-06-19 18:00:00', NULL),
(439, 'C0178', 8.00, 320.00, 320.00, 285.00, 320.00, 1, '2021-06-19 18:00:00', NULL),
(440, 'C0179', 6.00, 285.00, 285.00, 320.00, 285.00, 1, '2021-06-19 18:00:00', NULL),
(441, 'C0180', 6.00, 296.00, 296.00, 320.00, 296.00, 1, '2021-06-19 18:00:00', NULL),
(442, 'C0181', 12.00, 270.95, 270.95, 320.00, 270.95, 1, '2021-06-19 18:00:00', NULL),
(443, 'C0182', 8.00, 290.00, 290.00, 320.00, 290.00, 1, '2021-06-19 18:00:00', NULL),
(444, 'C0183', 13.00, 290.00, 290.00, 320.00, 290.00, 1, '2021-06-19 18:00:00', NULL),
(445, 'C0184', 12.00, 295.00, 295.00, 320.00, 295.00, 1, '2021-06-19 18:00:00', NULL),
(446, 'C0185', 10.00, 290.00, 290.00, 320.00, 290.00, 1, '2021-06-19 18:00:00', NULL),
(447, 'C0186', 6.00, 295.00, 295.00, 320.00, 295.00, 1, '2021-06-19 18:00:00', NULL),
(448, 'C0187', 5.00, 275.00, 275.00, 320.00, 275.00, 1, '2021-06-19 18:00:00', NULL),
(449, 'C0188', 6.00, 270.00, 270.00, 320.00, 270.00, 1, '2021-06-19 18:00:00', NULL),
(450, 'C0189', 5.00, 273.00, 273.00, 320.00, 273.00, 1, '2021-06-19 18:00:00', NULL),
(451, 'C0204', 6.00, 148.00, 148.00, 170.00, 148.00, 1, '2021-06-19 18:00:00', NULL),
(452, 'C0206', 12.00, 165.00, 165.00, 170.00, 165.00, 1, '2021-06-19 18:00:00', NULL),
(453, 'C0207', 3.00, 145.00, 145.00, 170.00, 145.00, 1, '2021-06-19 18:00:00', NULL),
(454, 'C0208', 5.00, 165.00, 165.00, 170.00, 165.00, 1, '2021-06-19 18:00:00', NULL),
(455, 'C0209', 4.00, 165.00, 165.00, 170.00, 165.00, 1, '2021-06-19 18:00:00', NULL),
(456, 'C0232', 7.00, 90.00, 90.00, 128.00, 90.00, 1, '2021-06-19 18:00:00', NULL),
(457, 'C0235', 4.00, 107.00, 107.00, 128.00, 107.00, 1, '2021-06-19 18:00:00', NULL),
(458, 'C0241', 30.00, 46.00, 46.00, 60.00, 46.00, 1, '2021-06-19 18:00:00', NULL),
(459, 'C0248', 2.00, 1580.00, 1580.00, 1650.00, 1580.00, 1, '2021-06-19 18:00:00', NULL),
(460, 'C0250', 1.00, 1580.00, 1580.00, 1650.00, 1580.00, 1, '2021-06-19 18:00:00', NULL),
(461, 'C0251', 3.00, 1580.00, 1580.00, 1650.00, 1580.00, 1, '2021-06-19 18:00:00', NULL),
(462, 'C0252', 3.00, 1580.00, 1580.00, 1650.00, 1580.00, 1, '2021-06-19 18:00:00', NULL),
(463, 'C0255', 1.00, 1580.00, 1580.00, 1650.00, 1580.00, 1, '2021-06-19 18:00:00', NULL),
(464, 'C0256', 2.00, 1580.00, 1580.00, 1650.00, 1580.00, 1, '2021-06-19 18:00:00', NULL),
(465, 'C0258', 11.00, 335.00, 335.00, 360.00, 335.00, 1, '2021-06-19 18:00:00', NULL),
(466, 'C0259', 11.00, 335.00, 335.00, 360.00, 335.00, 1, '2021-06-19 18:00:00', NULL),
(467, 'C0260', 2.00, 335.00, 335.00, 360.00, 335.00, 1, '2021-06-19 18:00:00', NULL),
(468, 'C0267', 4.00, 335.00, 335.00, 360.00, 335.00, 1, '2021-06-19 18:00:00', NULL),
(469, 'C0268', 4.00, 335.00, 335.00, 360.00, 335.00, 1, '2021-06-19 18:00:00', NULL),
(470, 'C0270', 3.00, 335.00, 335.00, 360.00, 335.00, 1, '2021-06-19 18:00:00', NULL),
(471, 'C0271', 3.00, 90.00, 90.00, 110.00, 90.00, 1, '2021-06-19 18:00:00', NULL),
(472, 'C0276', 3.00, 795.00, 795.00, 850.00, 795.00, 1, '2021-06-19 18:00:00', NULL),
(473, 'C0277', 4.00, 540.00, 540.00, 580.00, 540.00, 1, '2021-06-19 18:00:00', NULL),
(474, 'C0278', 15.00, 155.00, 155.00, 175.00, 155.00, 1, '2021-06-19 18:00:00', NULL),
(475, 'C0279', 5.00, 215.00, 215.00, 235.00, 215.00, 1, '2021-06-19 18:00:00', NULL),
(476, 'C0280', 8.00, 1150.00, 1150.00, 1250.00, 1150.00, 1, '2021-06-19 18:00:00', NULL),
(477, 'C0282', 4.00, 1165.00, 1165.00, 1250.00, 1165.00, 1, '2021-06-19 18:00:00', NULL),
(478, 'C0284', 4.00, 5250.00, 5250.00, 5550.00, 5250.00, 1, '2021-06-19 18:00:00', NULL),
(479, 'C0286', 2.00, 5250.00, 5250.00, 5550.00, 5250.00, 1, '2021-06-19 18:00:00', NULL),
(480, 'B0953', 1.00, 1565.00, 1565.00, 1800.00, 1565.00, 1, '2021-06-20 18:00:00', NULL),
(481, 'B1253', 1.00, 1040.00, 1040.00, 1300.00, 1040.00, 1, '2021-06-20 18:00:00', NULL),
(482, 'B0955', 2.00, 2511.00, 2511.00, 2850.00, 2511.00, 1, '2021-06-20 18:00:00', NULL),
(483, 'B0986', 33.00, 1000.00, 1000.00, 1360.00, 1000.00, 1, '2021-06-20 18:00:00', NULL),
(484, 'B0907', 3.00, 1265.00, 1265.00, 1755.00, 1265.00, 1, '2021-06-20 18:00:00', NULL),
(485, 'B0418', 10.00, 608.00, 608.00, 790.00, 608.00, 1, '2021-06-20 18:00:00', NULL),
(486, 'B0942', 12.00, 726.00, 726.00, 800.00, 726.00, 1, '2021-06-20 18:00:00', NULL),
(487, 'B0947', 7.00, 1028.00, 1028.00, 1200.00, 1028.00, 1, '2021-06-20 18:00:00', NULL),
(488, 'C0503', 8.00, 25.00, 25.00, 30.00, 25.00, 1, '2021-06-20 18:00:00', NULL),
(489, 'C0504', 12.00, 35.00, 35.00, 40.00, 35.00, 1, '2021-06-20 18:00:00', NULL),
(490, 'B0944', 18.00, 726.00, 726.00, 1065.00, 726.00, 1, '2021-06-20 18:00:00', NULL),
(491, 'B0946', 2.00, 1160.00, 1160.00, 1250.00, 1160.00, 1, '2021-06-20 18:00:00', NULL),
(492, 'C0504', 9.00, 35.00, 35.00, 40.00, 35.00, 1, '2021-06-20 18:00:00', NULL),
(493, 'C0505', 40.00, 8.33, 8.33, 12.00, 8.33, 1, '2021-06-20 18:00:00', NULL),
(494, 'B1203', 35.00, 135.00, 135.00, 250.00, 135.00, 1, '2021-06-20 18:00:00', NULL),
(495, 'B1204', 37.00, 140.00, 140.00, 200.00, 140.00, 1, '2021-06-20 18:00:00', NULL),
(496, 'B0693', 17.00, 280.00, 280.00, 355.00, 280.00, 1, '2021-06-20 18:00:00', NULL),
(497, 'B0697', 3.00, 356.50, 356.50, 390.00, 356.50, 1, '2021-06-20 18:00:00', NULL),
(498, 'C5031', 3.00, 4.00, 4.00, 10.00, 4.00, 1, '2021-06-20 18:00:00', NULL),
(499, 'C5032', 14.00, 10.00, 10.00, 15.00, 10.00, 1, '2021-06-20 18:00:00', NULL),
(500, 'C5033', 8.00, 10.00, 10.00, 15.00, 10.00, 1, '2021-06-20 18:00:00', NULL),
(501, 'C5034', 26.00, 15.00, 15.00, 20.00, 15.00, 1, '2021-06-20 18:00:00', NULL),
(502, 'C5035', 54.00, 7.00, 7.00, 10.00, 7.00, 1, '2021-06-20 18:00:00', NULL),
(503, 'C5036', 192.00, 6.00, 6.00, 10.00, 6.00, 1, '2021-06-20 18:00:00', NULL),
(504, 'C5037', 192.00, 4.00, 4.00, 8.00, 4.00, 1, '2021-06-20 18:00:00', NULL),
(505, 'C0540', 95.00, 25.00, 25.00, 35.00, 25.00, 1, '2021-06-20 18:00:00', NULL),
(506, 'B0952', 40.00, 209.00, 209.00, 290.00, 209.00, 1, '2021-06-20 18:00:00', NULL),
(507, 'C0537', 192.00, 4.00, 4.00, 8.00, 4.00, 1, '2021-06-20 18:00:00', NULL),
(508, 'C0536', 192.00, 6.00, 6.00, 10.00, 6.00, 1, '2021-06-20 18:00:00', NULL),
(509, 'C0535', 54.00, 7.00, 7.00, 10.00, 7.00, 1, '2021-06-20 18:00:00', NULL),
(510, 'B1134', 16.00, 185.00, 185.00, 250.00, 185.00, 1, '2021-06-20 18:00:00', NULL),
(511, 'C0534', 26.00, 15.00, 15.00, 20.00, 15.00, 1, '2021-06-20 18:00:00', NULL),
(512, 'B1167', 7.00, 230.00, 230.00, 255.00, 230.00, 1, '2021-06-20 18:00:00', NULL),
(513, 'B0914', 1.00, 300.00, 300.00, 550.00, 300.00, 1, '2021-06-20 18:00:00', NULL),
(514, 'C0533', 8.00, 10.00, 10.00, 15.00, 10.00, 1, '2021-06-20 18:00:00', NULL),
(515, 'C0532', 14.00, 10.00, 10.00, 15.00, 10.00, 1, '2021-06-20 18:00:00', NULL),
(516, 'C0531', 3.00, 4.00, 4.00, 10.00, 4.00, 1, '2021-06-20 18:00:00', NULL),
(517, 'B0962', 22.00, 40.00, 40.00, 60.00, 40.00, 1, '2021-06-20 18:00:00', NULL),
(518, 'C0529', 129.00, 57.00, 57.00, 70.00, 57.00, 1, '2021-06-20 18:00:00', NULL),
(519, 'B1191', 10.00, 55.00, 55.00, 110.00, 55.00, 1, '2021-06-20 18:00:00', NULL),
(520, 'B0648', 44.00, 65.00, 65.00, 90.00, 65.00, 1, '2021-06-20 18:00:00', NULL),
(521, 'B0951', 10.00, 87.00, 87.00, 160.00, 87.00, 1, '2021-06-20 18:00:00', NULL),
(522, 'B1200', 8.00, 250.00, 250.00, 355.00, 250.00, 1, '2021-06-20 18:00:00', NULL),
(523, 'C0508', 23.00, 16.00, 16.00, 25.00, 16.00, 1, '2021-06-20 18:00:00', NULL),
(524, 'C0507', 432.00, 5.00, 5.00, 10.00, 5.00, 1, '2021-06-20 18:00:00', NULL),
(525, 'B0915', 26.00, 75.00, 75.00, 110.00, 75.00, 1, '2021-06-20 18:00:00', NULL),
(526, 'C0548', 60.00, 150.00, 150.00, 200.00, 150.00, 1, '2021-06-20 18:00:00', NULL),
(527, 'C0549', 18.00, 130.00, 130.00, 150.00, 130.00, 1, '2021-06-20 18:00:00', NULL),
(528, 'B1199', 57.00, 70.00, 70.00, 100.00, 70.00, 1, '2021-06-20 18:00:00', NULL),
(529, 'B1259', 9.00, 200.00, 200.00, 275.00, 200.00, 1, '2021-06-20 18:00:00', NULL),
(530, 'B1300', 16.00, 70.00, 70.00, 120.00, 70.00, 1, '2021-06-20 18:00:00', NULL),
(531, 'C0540', 95.00, 25.00, 25.00, 30.00, 25.00, 1, '2021-06-20 18:00:00', NULL),
(532, 'B0916', 4.00, 148.00, 148.00, 220.00, 148.00, 1, '2021-06-20 18:00:00', NULL),
(533, 'B1239', 8.00, 175.75, 175.75, 260.00, 175.75, 1, '2021-06-20 18:00:00', NULL),
(534, 'B1364', 12.00, 192.70, 192.70, 235.00, 192.70, 1, '2021-06-20 18:00:00', NULL),
(535, 'C0548', 60.00, 150.00, 150.00, 200.00, 150.00, 1, '2021-06-20 18:00:00', NULL),
(536, 'C0550', 40.00, 62.00, 62.00, 75.00, 62.00, 1, '2021-06-20 18:00:00', NULL),
(537, 'B1362', 11.00, 217.30, 217.30, 265.00, 217.30, 1, '2021-06-20 18:00:00', NULL),
(538, 'C0553', 3.00, 250.00, 250.00, 300.00, 250.00, 1, '2021-06-20 18:00:00', NULL),
(539, 'B1363', 11.00, 241.90, 241.90, 295.00, 241.90, 1, '2021-06-20 18:00:00', NULL),
(540, 'B1237', 11.00, 70.00, 70.00, 105.00, 70.00, 1, '2021-06-20 18:00:00', NULL),
(541, 'C0555', 1.00, 105.00, 105.00, 150.00, 105.00, 1, '2021-06-20 18:00:00', NULL),
(542, 'C0556', 2.00, 150.00, 150.00, 200.00, 150.00, 1, '2021-06-20 18:00:00', NULL),
(543, 'C0557', 1.00, 350.00, 350.00, 450.00, 350.00, 1, '2021-06-20 18:00:00', NULL),
(544, 'C0558', 1.00, 450.00, 450.00, 550.00, 450.00, 1, '2021-06-20 18:00:00', NULL),
(545, 'B1237', 30.00, 70.00, 70.00, 105.00, 70.00, 1, '2021-06-20 18:00:00', NULL),
(546, 'C0561', 16.00, 156.00, 156.00, 200.00, 156.00, 1, '2021-06-20 18:00:00', NULL),
(547, 'C0562', 80.00, 13.75, 13.75, 25.00, 13.75, 1, '2021-06-20 18:00:00', NULL),
(548, 'C0563', 8.00, 280.00, 280.00, 350.00, 280.00, 1, '2021-06-20 18:00:00', NULL),
(549, 'B0976', 2.00, 1140.00, 1140.00, 1550.00, 1140.00, 1, '2021-06-20 18:00:00', NULL),
(550, 'C0564', 10.00, 540.00, 540.00, 650.00, 540.00, 1, '2021-06-20 18:00:00', NULL),
(551, 'C0565', 19.00, 100.00, 100.00, 120.00, 100.00, 1, '2021-06-20 18:00:00', NULL),
(552, 'C0566', 26.00, 70.00, 70.00, 90.00, 70.00, 1, '2021-06-20 18:00:00', NULL),
(553, 'B1156', 1.00, 1000.00, 1000.00, 1350.00, 1000.00, 1, '2021-06-20 18:00:00', NULL),
(554, 'B1268', 2.00, 2538.00, 2538.00, 2850.00, 2538.00, 1, '2021-06-20 18:00:00', NULL),
(555, 'C0559', 28.00, 39.60, 39.60, 50.00, 39.60, 1, '2021-06-20 18:00:00', NULL),
(556, 'C0560', 50.00, 9.80, 9.80, 12.00, 9.80, 1, '2021-06-20 18:00:00', NULL),
(557, 'B1193', 1.00, 3300.00, 3300.00, 4000.00, 3300.00, 1, '2021-06-20 18:00:00', NULL),
(558, 'B1194', 1.00, 3500.00, 3500.00, 4200.00, 3500.00, 1, '2021-06-20 18:00:00', NULL),
(559, 'B1232', 2.00, 2208.00, 2208.00, 2750.00, 2208.00, 1, '2021-06-20 18:00:00', NULL),
(560, 'B0576', 2.00, 3465.00, 3465.00, 3800.00, 3465.00, 14, '2021-06-20 18:00:00', '2021-06-21 18:00:00'),
(561, 'C0569', 26.00, 16.81, 16.81, 25.00, 16.81, 1, '2021-06-20 18:00:00', NULL),
(562, 'B1097', 1.00, 2411.50, 2411.50, 3000.00, 2411.50, 1, '2021-06-20 18:00:00', NULL),
(563, 'C0458', 4.00, 752.00, 752.00, 800.00, 752.00, 1, '2021-06-20 18:00:00', NULL),
(564, 'C0462', 130.00, 90.00, 90.00, 140.00, 90.00, 1, '2021-06-20 18:00:00', NULL),
(565, 'C0463', 35.00, 80.00, 80.00, 100.00, 80.00, 1, '2021-06-20 18:00:00', NULL),
(566, 'C0464', 248.00, 104.00, 104.00, 120.00, 104.00, 1, '2021-06-20 18:00:00', NULL),
(567, 'B1208', 3.00, 1665.00, 1665.00, 2000.00, 1665.00, 1, '2021-06-20 18:00:00', NULL),
(568, 'C0466', 26.00, 100.00, 100.00, 120.00, 100.00, 1, '2021-06-20 18:00:00', NULL),
(569, 'C0467', 90.00, 45.00, 45.00, 70.00, 45.00, 1, '2021-06-20 18:00:00', NULL),
(570, 'C0458', 4.00, 752.00, 752.00, 800.00, 752.00, 1, '2021-06-20 18:00:00', NULL),
(571, 'C0462', 130.00, 90.00, 90.00, 140.00, 90.00, 1, '2021-06-20 18:00:00', NULL),
(572, 'C0463', 35.00, 80.00, 80.00, 100.00, 80.00, 1, '2021-06-20 18:00:00', NULL),
(573, 'C0464', 248.00, 104.00, 104.00, 120.00, 104.00, 1, '2021-06-20 18:00:00', NULL),
(574, 'C0466', 26.00, 100.00, 100.00, 120.00, 100.00, 1, '2021-06-20 18:00:00', NULL),
(575, 'C0467', 90.00, 45.00, 45.00, 70.00, 45.00, 1, '2021-06-20 18:00:00', NULL),
(576, 'C0469', 12.00, 140.00, 140.00, 160.00, 140.00, 1, '2021-06-20 18:00:00', NULL),
(577, 'C0470', 324.00, 75.00, 75.00, 100.00, 75.00, 1, '2021-06-20 18:00:00', NULL),
(578, 'B1160', 6.00, 60.00, 60.00, 120.00, 60.00, 1, '2021-06-20 18:00:00', NULL),
(579, 'B1183', 2.00, 1400.00, 1400.00, 1650.00, 1400.00, 1, '2021-06-20 18:00:00', NULL),
(580, 'C0570', 33.00, 90.00, 90.00, 120.00, 90.00, 1, '2021-06-20 18:00:00', NULL),
(581, 'C0572', 3.00, 45.00, 45.00, 60.00, 45.00, 1, '2021-06-20 18:00:00', NULL),
(582, 'C0573', 12.00, 150.00, 150.00, 240.00, 150.00, 1, '2021-06-20 18:00:00', NULL),
(583, 'C0574', 4.00, 38.00, 38.00, 60.00, 38.00, 1, '2021-06-20 18:00:00', NULL),
(584, 'B0552', 3.00, 980.00, 980.00, 1150.00, 980.00, 1, '2021-06-20 18:00:00', NULL),
(585, 'B1201', 1.00, 900.00, 900.00, 1050.00, 900.00, 1, '2021-06-20 18:00:00', NULL),
(586, 'B0969', 1.00, 1050.00, 1050.00, 1200.00, 1050.00, 1, '2021-06-20 18:00:00', NULL),
(587, 'C0572', 3.00, 45.00, 45.00, 60.00, 45.00, 1, '2021-06-20 18:00:00', NULL),
(588, 'C0573', 12.00, 150.00, 150.00, 240.00, 150.00, 1, '2021-06-20 18:00:00', NULL),
(589, 'C0574', 4.00, 38.00, 38.00, 60.00, 38.00, 1, '2021-06-20 18:00:00', NULL),
(590, 'C0577', 1.00, 120.00, 120.00, 160.00, 120.00, 1, '2021-06-20 18:00:00', NULL),
(591, 'B0910', 6.00, 2490.00, 2490.00, 3500.00, 2490.00, 1, '2021-06-20 18:00:00', NULL),
(592, 'C0579', 6.00, 780.00, 780.00, 840.00, 780.00, 1, '2021-06-20 18:00:00', NULL),
(593, 'B0911', 1.00, 3024.00, 3024.00, 3500.00, 3024.00, 1, '2021-06-20 18:00:00', NULL),
(594, 'C0580', 20.00, 24.00, 24.00, 35.00, 24.00, 1, '2021-06-20 18:00:00', NULL),
(595, 'C0581', 5.00, 24.00, 24.00, 35.00, 24.00, 1, '2021-06-20 18:00:00', NULL),
(596, 'C0459', 65.00, 150.00, 150.00, 170.00, 150.00, 1, '2021-06-20 18:00:00', NULL),
(597, 'C0456', 3.00, 3180.00, 3180.00, 3250.00, 3180.00, 1, '2021-06-20 18:00:00', NULL);
INSERT INTO `stock_product` (`id`, `product_id`, `quantity`, `purchase_price`, `purchase_price_withcost`, `sale_price`, `old_and_new_purchase_price_average`, `branch_id`, `created_at`, `updated_at`) VALUES
(598, 'C0455', 4.00, 150.00, 150.00, 170.00, 150.00, 1, '2021-06-20 18:00:00', NULL),
(599, 'C0454', 3.00, 1070.00, 1070.00, 1150.00, 1070.00, 1, '2021-06-20 18:00:00', NULL),
(600, 'B0520', 2.00, 290.00, 290.00, 400.00, 290.00, 1, '2021-06-20 18:00:00', NULL),
(601, 'B1069', 16.00, 1404.00, 1404.00, 1500.00, 1404.00, 1, '2021-06-20 18:00:00', NULL),
(602, 'B0529', 1.00, 2610.00, 2610.00, 3000.00, 2610.00, 1, '2021-06-20 18:00:00', NULL),
(603, 'C0582', 15.00, 12.00, 12.00, 20.00, 12.00, 1, '2021-06-20 18:00:00', NULL),
(604, 'C0583', 10.00, 4.00, 4.00, 10.00, 4.00, 1, '2021-06-20 18:00:00', NULL),
(605, 'B0530', 4.00, 4700.00, 4700.00, 5500.00, 4700.00, 1, '2021-06-20 18:00:00', NULL),
(606, 'C0584', 20.00, 10.00, 10.00, 20.00, 10.00, 1, '2021-06-20 18:00:00', NULL),
(607, 'C0585', 7.00, 83.00, 83.00, 100.00, 83.00, 1, '2021-06-20 18:00:00', NULL),
(608, 'C0586', 9.00, 83.00, 83.00, 100.00, 83.00, 1, '2021-06-20 18:00:00', NULL),
(609, 'C0589', 15.00, 84.00, 84.00, 100.00, 84.00, 1, '2021-06-20 18:00:00', NULL),
(610, 'C0590', 9.00, 77.60, 77.60, 100.00, 77.60, 1, '2021-06-20 18:00:00', NULL),
(611, 'C0592', 7.00, 90.00, 90.00, 120.00, 90.00, 1, '2021-06-20 18:00:00', NULL),
(612, 'C0593', 2.50, 104.00, 104.00, 120.00, 104.00, 1, '2021-06-20 18:00:00', NULL),
(613, 'B0539', 29.00, 31.00, 31.00, 50.00, 31.00, 1, '2021-06-20 18:00:00', NULL),
(614, 'C0594', 10.00, 98.00, 98.00, 120.00, 98.00, 1, '2021-06-20 18:00:00', NULL),
(615, 'C0595', 27.00, 84.00, 84.00, 100.00, 84.00, 1, '2021-06-20 18:00:00', NULL),
(616, 'C0596', 50.00, 84.00, 84.00, 100.00, 84.00, 1, '2021-06-20 18:00:00', NULL),
(617, 'C0597', 14.00, 82.00, 82.00, 100.00, 82.00, 1, '2021-06-20 18:00:00', NULL),
(618, 'C0598', 7.50, 84.00, 84.00, 100.00, 84.00, 1, '2021-06-20 18:00:00', NULL),
(619, 'C0599', 2.00, 51.67, 51.67, 70.00, 51.67, 1, '2021-06-20 18:00:00', NULL),
(620, 'B0548', 4.00, 360.00, 360.00, 480.00, 360.00, 1, '2021-06-20 18:00:00', NULL),
(621, 'C0602', 110.00, 7.00, 7.00, 10.00, 7.00, 1, '2021-06-20 18:00:00', NULL),
(622, 'C0603', 48.00, 8.00, 8.00, 15.00, 8.00, 1, '2021-06-20 18:00:00', NULL),
(623, 'C0605', 4.00, 110.00, 110.00, 130.00, 110.00, 1, '2021-06-20 18:00:00', NULL),
(624, 'C0606', 5.00, 165.00, 165.00, 180.00, 165.00, 1, '2021-06-20 18:00:00', NULL),
(625, 'C0607', 7.00, 135.00, 135.00, 150.00, 135.00, 1, '2021-06-20 18:00:00', NULL),
(626, 'C0608', 3.00, 180.00, 180.00, 200.00, 180.00, 1, '2021-06-20 18:00:00', NULL),
(627, 'B1068', 34.00, 1404.00, 1404.00, 1650.00, 1404.00, 1, '2021-06-20 18:00:00', NULL),
(628, 'B0917', 7.00, 2000.00, 2000.00, 2200.00, 2000.00, 1, '2021-06-20 18:00:00', NULL),
(629, 'B1046', 7.00, 1110.00, 1110.00, 1300.00, 1110.00, 1, '2021-06-20 18:00:00', NULL),
(630, 'C0610', 15.00, 142.00, 142.00, 160.00, 142.00, 1, '2021-06-20 18:00:00', NULL),
(631, 'C0611', 30.00, 260.00, 260.00, 280.00, 260.00, 1, '2021-06-20 18:00:00', NULL),
(632, 'C0612', 45.00, 48.00, 48.00, 56.00, 48.00, 1, '2021-06-20 18:00:00', NULL),
(633, 'B1088', 3.00, 730.00, 730.00, 990.00, 730.00, 1, '2021-06-20 18:00:00', NULL),
(634, 'C0613', 2.00, 65.00, 65.00, 70.00, 65.00, 1, '2021-06-20 18:00:00', NULL),
(635, 'B0556', 3.00, 61.75, 61.75, 115.00, 61.75, 1, '2021-06-20 18:00:00', NULL),
(636, 'C0615', 2.00, 520.00, 520.00, 560.00, 520.00, 1, '2021-06-20 18:00:00', NULL),
(637, 'C0616', 4.00, 650.00, 650.00, 700.00, 650.00, 1, '2021-06-20 18:00:00', NULL),
(638, 'C0617', 28.00, 40.00, 40.00, 50.00, 40.00, 1, '2021-06-20 18:00:00', NULL),
(639, 'B0918', 9.00, 600.00, 600.00, 980.00, 600.00, 1, '2021-06-20 18:00:00', NULL),
(640, 'C0620', 29.00, 35.00, 35.00, 50.00, 35.00, 1, '2021-06-20 18:00:00', NULL),
(641, 'B1022', 2.00, 3920.00, 3920.00, 4500.00, 3920.00, 1, '2021-06-20 18:00:00', NULL),
(642, 'C0621', 3.00, 60.00, 60.00, 100.00, 60.00, 1, '2021-06-20 18:00:00', NULL),
(643, 'C0623', 5.00, 140.00, 140.00, 200.00, 140.00, 1, '2021-06-20 18:00:00', NULL),
(644, 'B1043', 9.00, 1110.00, 1110.00, 1250.00, 1110.00, 1, '2021-06-20 18:00:00', NULL),
(645, 'B0561', 4.00, 1328.00, 1328.00, 1500.00, 1328.00, 1, '2021-06-20 18:00:00', NULL),
(646, 'B0572', 5.00, 1350.00, 1350.00, 1500.00, 1350.00, 1, '2021-06-20 18:00:00', NULL),
(647, 'C0621', 3.00, 60.00, 60.00, 100.00, 60.00, 1, '2021-06-20 18:00:00', NULL),
(648, 'C0626', 8.00, 107.31, 107.31, 130.00, 107.31, 1, '2021-06-20 18:00:00', NULL),
(649, 'C0628', 5.00, 122.50, 122.50, 135.00, 122.50, 1, '2021-06-20 18:00:00', NULL),
(650, 'B1037', 14.00, 1100.00, 1100.00, 1300.00, 1100.00, 1, '2021-06-20 18:00:00', NULL),
(651, 'B0574', 1.00, 4725.00, 4725.00, 5000.00, 4725.00, 1, '2021-06-20 18:00:00', NULL),
(652, 'C0626', 8.00, 107.31, 107.31, 130.00, 107.31, 1, '2021-06-20 18:00:00', NULL),
(653, 'C0628', 5.00, 122.50, 122.50, 135.00, 122.50, 1, '2021-06-20 18:00:00', NULL),
(654, 'B1262', 15.00, 124.00, 124.00, 220.00, 124.00, 1, '2021-06-20 18:00:00', NULL),
(655, 'C0631', 15.00, 88.00, 88.00, 100.00, 88.00, 1, '2021-06-20 18:00:00', NULL),
(656, 'C0632', 10.00, 96.00, 96.00, 110.00, 96.00, 1, '2021-06-20 18:00:00', NULL),
(657, 'C0633', 4.00, 120.00, 120.00, 130.00, 120.00, 1, '2021-06-20 18:00:00', NULL),
(658, 'B0525', 7.00, 225.00, 225.00, 240.00, 225.00, 1, '2021-06-20 18:00:00', NULL),
(659, 'C0660', 1.00, 380.00, 380.00, 550.00, 380.00, 1, '2021-06-20 18:00:00', NULL),
(660, 'B0626', 27.00, 32.00, 32.00, 100.00, 32.00, 1, '2021-06-20 18:00:00', NULL),
(661, 'C0667', 15.00, 160.00, 160.00, 200.00, 160.00, 1, '2021-06-20 18:00:00', NULL),
(662, 'C0668', 7.00, 279.40, 279.40, 320.00, 279.40, 1, '2021-06-20 18:00:00', NULL),
(663, 'C0669', 6.00, 65.00, 65.00, 80.00, 65.00, 1, '2021-06-20 18:00:00', NULL),
(664, 'B0586', 93.00, 30.00, 30.00, 60.00, 30.00, 1, '2021-06-20 18:00:00', NULL),
(665, 'C0670', 8.00, 17.00, 17.00, 25.00, 17.00, 1, '2021-06-20 18:00:00', NULL),
(666, 'C0671', 16.00, 34.00, 34.00, 45.00, 34.00, 1, '2021-06-20 18:00:00', NULL),
(667, 'C0672', 3.00, 67.00, 67.00, 90.00, 67.00, 1, '2021-06-20 18:00:00', NULL),
(668, 'C0674', 1.00, 320.00, 320.00, 350.00, 320.00, 1, '2021-06-20 18:00:00', NULL),
(669, 'C0677', 20.00, 36.00, 36.00, 45.00, 36.00, 1, '2021-06-20 18:00:00', NULL),
(670, 'B0961', 193.00, 9.50, 9.50, 20.00, 9.50, 1, '2021-06-20 18:00:00', NULL),
(671, 'C0678', 40.00, 16.25, 16.25, 30.00, 16.25, 1, '2021-06-20 18:00:00', NULL),
(672, 'C0680', 9.00, 320.00, 320.00, 350.00, 320.00, 1, '2021-06-20 18:00:00', NULL),
(673, 'B0863', 7.00, 5050.00, 5050.00, 6500.00, 5050.00, 1, '2021-06-20 18:00:00', NULL),
(674, 'C0680', 9.00, 320.00, 320.00, 350.00, 320.00, 1, '2021-06-20 18:00:00', NULL),
(675, 'C0681', 65.00, 150.00, 150.00, 170.00, 150.00, 1, '2021-06-20 18:00:00', NULL),
(676, 'B0589', 1.00, 3520.00, 3520.00, 4500.00, 3520.00, 1, '2021-06-20 18:00:00', NULL),
(677, 'C0682', 9.00, 132.00, 132.00, 200.00, 132.00, 1, '2021-06-20 18:00:00', NULL),
(678, 'C0683', 11.00, 160.00, 160.00, 200.00, 160.00, 1, '2021-06-20 18:00:00', NULL),
(679, 'C0684', 18.00, 135.00, 135.00, 180.00, 135.00, 1, '2021-06-20 18:00:00', NULL),
(680, 'C0685', 11.00, 35.00, 35.00, 70.00, 35.00, 1, '2021-06-20 18:00:00', NULL),
(681, 'B0693', 8.00, 280.00, 280.00, 360.00, 280.00, 1, '2021-06-20 18:00:00', NULL),
(682, 'C0686', 6.00, 70.00, 70.00, 80.00, 70.00, 1, '2021-06-20 18:00:00', NULL),
(683, 'C0687', 5.00, 72.00, 72.00, 80.00, 72.00, 1, '2021-06-20 18:00:00', NULL),
(684, 'B0690', 22.00, 190.00, 190.00, 235.00, 190.00, 1, '2021-06-20 18:00:00', NULL),
(685, 'C0690', 22.00, 122.00, 122.00, 160.00, 122.00, 1, '2021-06-20 18:00:00', NULL),
(686, 'B0590', 2.00, 4800.00, 4800.00, 6000.00, 4800.00, 1, '2021-06-20 18:00:00', NULL),
(687, 'C0692', 48.00, 8.00, 8.00, 15.00, 8.00, 1, '2021-06-20 18:00:00', NULL),
(688, 'C0695', 20.00, 50.00, 50.00, 60.00, 50.00, 1, '2021-06-20 18:00:00', NULL),
(689, 'C0696', 27.00, 49.00, 49.00, 60.00, 49.00, 1, '2021-06-20 18:00:00', NULL),
(690, 'C0697', 84.00, 7.50, 7.50, 10.00, 7.50, 1, '2021-06-20 18:00:00', NULL),
(691, 'C0698', 20.00, 10.00, 10.00, 15.00, 10.00, 1, '2021-06-20 18:00:00', NULL),
(692, 'C0692', 48.00, 8.00, 8.00, 15.00, 8.00, 1, '2021-06-20 18:00:00', NULL),
(693, 'B1294', 2.00, 2722.00, 2722.00, 3750.00, 2722.00, 1, '2021-06-20 18:00:00', NULL),
(694, 'B0876', 1.00, 6668.00, 6668.00, 7000.00, 6668.00, 1, '2021-06-20 18:00:00', NULL),
(695, 'B0880', 1.00, 2850.00, 2850.00, 3400.00, 2850.00, 1, '2021-06-20 18:00:00', NULL),
(696, 'B0862', 3.00, 2200.00, 2200.00, 2600.00, 2200.00, 1, '2021-06-20 18:00:00', NULL),
(697, 'B0864', 4.00, 3500.00, 3500.00, 5000.00, 3500.00, 1, '2021-06-20 18:00:00', NULL),
(698, 'B0881', 1.00, 2960.00, 2960.00, 4000.00, 2960.00, 1, '2021-06-20 18:00:00', NULL),
(699, 'C0699', 50.00, 21.00, 21.00, 36.00, 21.00, 1, '2021-06-20 18:00:00', NULL),
(700, 'C0637', 5.00, 55.00, 55.00, 80.00, 55.00, 1, '2021-06-20 18:00:00', NULL),
(701, 'C0700', 25.00, 26.70, 26.70, 36.00, 26.70, 1, '2021-06-20 18:00:00', NULL),
(702, 'C0638', 2.00, 105.00, 105.00, 120.00, 105.00, 1, '2021-06-20 18:00:00', NULL),
(703, 'C0701', 3.00, 121.00, 121.00, 150.00, 121.00, 1, '2021-06-20 18:00:00', NULL),
(704, 'C0703', 700.00, 3.00, 3.00, 5.00, 3.00, 1, '2021-06-20 18:00:00', NULL),
(705, 'C0641', 20.00, 18.00, 18.00, 25.00, 18.00, 1, '2021-06-20 18:00:00', NULL),
(706, 'C0704', 280.00, 5.00, 5.00, 8.00, 5.00, 1, '2021-06-20 18:00:00', NULL),
(707, 'B0792', 10.00, 580.00, 580.00, 750.00, 580.00, 1, '2021-06-20 18:00:00', NULL),
(708, 'C0643', 4.00, 140.00, 140.00, 160.00, 140.00, 1, '2021-06-20 18:00:00', NULL),
(709, 'C0644', 3.50, 140.00, 140.00, 160.00, 140.00, 1, '2021-06-20 18:00:00', NULL),
(710, 'C0645', 14.00, 145.00, 145.00, 170.00, 145.00, 1, '2021-06-20 18:00:00', NULL),
(711, 'C0647', 10.00, 110.00, 110.00, 130.00, 110.00, 1, '2021-06-20 18:00:00', NULL),
(712, 'C0649', 4.00, 60.00, 60.00, 80.00, 60.00, 1, '2021-06-20 18:00:00', NULL),
(713, 'C0650', 30.00, 70.00, 70.00, 80.00, 70.00, 1, '2021-06-20 18:00:00', NULL),
(714, 'C0710', 45.00, 7.50, 7.50, 10.00, 7.50, 1, '2021-06-20 18:00:00', NULL),
(715, 'B1340', 2.00, 3531.00, 3531.00, 5000.00, 3531.00, 1, '2021-06-20 18:00:00', NULL),
(716, 'C0712', 20.00, 140.00, 140.00, 160.00, 140.00, 1, '2021-06-20 18:00:00', NULL),
(717, 'B1339', 5.00, 4581.00, 4581.00, 5200.00, 4581.00, 1, '2021-06-20 18:00:00', NULL),
(718, 'B1374', 2.00, 3748.00, 3748.00, 4150.00, 3748.00, 1, '2021-06-20 18:00:00', NULL),
(719, 'B1379', 1.00, 2315.00, 2315.00, 2550.00, 2315.00, 1, '2021-06-20 18:00:00', NULL),
(720, 'C0711', 20.00, 150.00, 150.00, 170.00, 150.00, 1, '2021-06-20 18:00:00', NULL),
(721, 'C0721', 96.00, 79.00, 79.00, 100.00, 79.00, 1, '2021-06-20 18:00:00', NULL),
(722, 'B1361', 5.00, 545.30, 545.30, 665.00, 545.30, 1, '2021-06-20 18:00:00', NULL),
(723, 'B1365', 2.00, 569.90, 569.90, 695.00, 569.90, 1, '2021-06-20 18:00:00', NULL),
(724, 'C0725', 36.00, 63.00, 63.00, 80.00, 63.00, 1, '2021-06-20 18:00:00', NULL),
(725, 'C0726', 160.00, 80.00, 80.00, 100.00, 80.00, 1, '2021-06-20 18:00:00', NULL),
(726, 'B1249', 2.00, 2722.40, 2722.40, 3250.00, 2722.40, 1, '2021-06-20 18:00:00', NULL),
(727, 'C0727', 88.00, 87.80, 87.80, 100.00, 87.80, 1, '2021-06-20 18:00:00', NULL),
(728, 'B1294', 1.00, 1800.00, 1800.00, 2200.00, 1800.00, 1, '2021-06-20 18:00:00', NULL),
(729, 'C0728', 120.00, 69.45, 69.45, 80.00, 69.45, 1, '2021-06-20 18:00:00', NULL),
(730, 'C0729', 58.00, 85.00, 85.00, 100.00, 85.00, 1, '2021-06-20 18:00:00', NULL),
(731, 'B1031', 23.00, 21.60, 21.60, 50.00, 21.60, 1, '2021-06-20 18:00:00', NULL),
(732, 'C0733', 7.00, 17.00, 17.00, 30.00, 17.00, 1, '2021-06-20 18:00:00', NULL),
(733, 'C0737', 24.00, 46.00, 46.00, 60.00, 46.00, 1, '2021-06-20 18:00:00', NULL),
(734, 'C0738', 12.00, 55.00, 55.00, 60.00, 55.00, 1, '2021-06-20 18:00:00', NULL),
(735, 'C0739', 24.00, 45.00, 45.00, 60.00, 45.00, 1, '2021-06-20 18:00:00', NULL),
(736, 'C0740', 4.00, 55.00, 55.00, 60.00, 55.00, 1, '2021-06-20 18:00:00', NULL),
(737, 'C0741', 6.00, 44.00, 44.00, 60.00, 44.00, 1, '2021-06-20 18:00:00', NULL),
(738, 'C0742', 4.00, 878.00, 878.00, 878.00, 878.00, 1, '2021-06-20 18:00:00', NULL),
(739, 'C0743', 4.00, 878.00, 878.00, 878.00, 878.00, 1, '2021-06-20 18:00:00', NULL),
(740, 'B0396', 1.00, 657.00, 657.00, 730.00, 657.00, 14, '2021-06-21 18:00:00', NULL),
(741, 'B0689', 7.00, 237.00, 237.00, 350.00, 237.00, 1, '2021-06-21 18:00:00', NULL),
(742, 'C0744', 1.00, 3825.00, 3825.00, 4100.00, 3825.00, 1, '2021-06-21 18:00:00', NULL),
(743, 'C0745', 3.00, 3825.00, 3825.00, 4100.00, 3825.00, 1, '2021-06-21 18:00:00', NULL),
(744, 'C0290', 1.00, 4976.70, 4976.70, 5550.00, 4976.70, 1, '2021-06-21 18:00:00', NULL),
(745, 'B1180', 25.00, 2.60, 2.60, 12.00, 2.60, 1, '2021-06-21 18:00:00', NULL),
(746, 'C0293', 2.00, 4700.00, 4700.00, 5550.00, 4700.00, 1, '2021-06-21 18:00:00', NULL),
(747, 'C0295', 2.00, 5250.00, 5250.00, 5550.00, 5250.00, 1, '2021-06-21 18:00:00', NULL),
(748, 'C0296', 2.00, 5229.00, 5229.00, 5550.00, 5229.00, 1, '2021-06-21 18:00:00', NULL),
(749, 'C0298', 4.00, 4700.00, 4700.00, 5550.00, 4700.00, 1, '2021-06-21 18:00:00', NULL),
(750, 'C0300', 1.00, 5180.00, 5180.00, 5550.00, 5180.00, 1, '2021-06-21 18:00:00', NULL),
(751, 'C0746', 6.00, 1020.00, 1020.00, 1150.00, 1020.00, 1, '2021-06-21 18:00:00', NULL),
(752, 'C0747', 3.00, 1020.00, 1020.00, 1150.00, 1020.00, 1, '2021-06-21 18:00:00', NULL),
(753, 'B0941', 17.00, 70.00, 70.00, 150.00, 70.00, 1, '2021-06-21 18:00:00', NULL),
(754, 'B0950', 15.00, 180.00, 180.00, 250.00, 180.00, 1, '2021-06-21 18:00:00', NULL),
(755, 'B0653', 50.00, 50.00, 50.00, 70.00, 50.00, 1, '2021-06-21 18:00:00', NULL),
(756, 'C0750', 12.00, 257.00, 257.00, 330.00, 257.00, 1, '2021-06-21 18:00:00', NULL),
(757, 'C0751', 12.00, 234.00, 234.00, 300.00, 234.00, 1, '2021-06-21 18:00:00', NULL),
(758, 'C0752', 2.00, 774.00, 774.00, 800.00, 774.00, 1, '2021-06-21 18:00:00', NULL),
(759, 'C0301', 2.00, 5185.00, 5185.00, 5550.00, 5185.00, 1, '2021-06-21 18:00:00', NULL),
(760, 'C0302', 3.00, 1100.00, 1100.00, 1250.00, 1100.00, 1, '2021-06-21 18:00:00', NULL),
(761, 'C0303', 3.00, 1100.00, 1100.00, 1250.00, 1100.00, 1, '2021-06-21 18:00:00', NULL),
(762, 'C0305', 3.00, 900.00, 900.00, 1250.00, 900.00, 1, '2021-06-21 18:00:00', NULL),
(763, 'C0307', 1.00, 1048.00, 1048.00, 1250.00, 1048.00, 1, '2021-06-21 18:00:00', NULL),
(764, 'C0308', 2.00, 1175.00, 1175.00, 1250.00, 1175.00, 1, '2021-06-21 18:00:00', NULL),
(765, 'C0344', 1.00, 240.00, 240.00, 250.00, 240.00, 1, '2021-06-21 18:00:00', NULL),
(766, 'C0345', 2.00, 235.00, 235.00, 250.00, 235.00, 1, '2021-06-21 18:00:00', NULL),
(767, 'C0346', 3.00, 235.00, 235.00, 250.00, 235.00, 1, '2021-06-21 18:00:00', NULL),
(768, 'C0348', 1.00, 2100.00, 2100.00, 2500.00, 2100.00, 1, '2021-06-21 18:00:00', NULL),
(769, 'C0360', 1.00, 1100.00, 1100.00, 1250.00, 1100.00, 1, '2021-06-21 18:00:00', NULL),
(770, 'B0212', 44.00, 33.60, 33.60, 75.00, 33.60, 1, '2021-06-21 18:00:00', NULL),
(771, 'B1130', 8.00, 40.00, 40.00, 85.00, 40.00, 1, '2021-06-21 18:00:00', NULL),
(772, 'C0769', 6.00, 85.00, 85.00, 100.00, 85.00, 1, '2021-06-21 18:00:00', NULL),
(773, 'C0773', 6.00, 120.00, 120.00, 150.00, 120.00, 1, '2021-06-21 18:00:00', NULL),
(774, 'C0774', 10.00, 120.00, 120.00, 150.00, 120.00, 1, '2021-06-21 18:00:00', NULL),
(775, 'C0776', 2.00, 185.00, 185.00, 220.00, 185.00, 1, '2021-06-21 18:00:00', NULL),
(776, 'C0783', 29.00, 11.00, 11.00, 15.00, 11.00, 1, '2021-06-21 18:00:00', NULL),
(777, 'B0103', 13.00, 60.00, 60.00, 100.00, 60.00, 1, '2021-06-21 18:00:00', NULL),
(778, 'C0784', 115.00, 10.83, 10.83, 20.00, 10.83, 1, '2021-06-21 18:00:00', NULL),
(779, 'C0788', 87.00, 22.50, 22.50, 30.00, 22.50, 1, '2021-06-21 18:00:00', NULL),
(780, 'C0789', 24.00, 19.00, 19.00, 30.00, 19.00, 1, '2021-06-21 18:00:00', NULL),
(781, 'B0620', 3.00, 160.00, 160.00, 250.00, 160.00, 1, '2021-06-21 18:00:00', NULL),
(782, 'C0790', 30.00, 19.00, 19.00, 30.00, 19.00, 1, '2021-06-21 18:00:00', NULL),
(783, 'C0792', 3.00, 102.00, 102.00, 115.00, 102.00, 1, '2021-06-21 18:00:00', NULL),
(784, 'B0620', 1.00, 160.00, 160.00, 250.00, 160.00, 1, '2021-06-21 18:00:00', NULL),
(785, 'C0794', 6.00, 330.00, 330.00, 400.00, 330.00, 1, '2021-06-21 18:00:00', NULL),
(786, 'C0795', 9.00, 200.00, 200.00, 250.00, 200.00, 1, '2021-06-21 18:00:00', NULL),
(787, 'C0796', 7.00, 55.00, 55.00, 70.00, 55.00, 1, '2021-06-21 18:00:00', NULL),
(788, 'C0365', 1.00, 1100.00, 1100.00, 1250.00, 1100.00, 1, '2021-06-21 18:00:00', NULL),
(789, 'C0369', 1.00, 335.00, 335.00, 400.00, 335.00, 1, '2021-06-21 18:00:00', NULL),
(790, 'C0370', 2.00, 335.00, 335.00, 100.00, 335.00, 1, '2021-06-21 18:00:00', NULL),
(791, 'C0797', 2.00, 1150.00, 1150.00, 1250.00, 1150.00, 1, '2021-06-21 18:00:00', NULL),
(792, 'C0801', 24.00, 35.00, 35.00, 40.00, 35.00, 1, '2021-06-21 18:00:00', NULL),
(793, 'C0804', 6.00, 200.00, 200.00, 250.00, 200.00, 1, '2021-06-21 18:00:00', NULL),
(794, 'B1159', 12.00, 360.00, 360.00, 550.00, 360.00, 1, '2021-06-21 18:00:00', NULL),
(795, 'B0928', 2.00, 345.00, 345.00, 450.00, 345.00, 1, '2021-06-21 18:00:00', NULL),
(796, 'B1158', 2.00, 450.00, 450.00, 550.00, 450.00, 1, '2021-06-21 18:00:00', NULL),
(797, 'B0211', 19.00, 52.80, 52.80, 80.00, 52.80, 1, '2021-06-21 18:00:00', NULL),
(798, 'B0637', 1.00, 8200.00, 8200.00, 9000.00, 8200.00, 1, '2021-06-21 18:00:00', NULL),
(799, 'B0638', 1.00, 5050.00, 5050.00, 7500.00, 5050.00, 1, '2021-06-21 18:00:00', NULL),
(800, 'B0649', 3.00, 110.00, 110.00, 220.00, 110.00, 1, '2021-06-21 18:00:00', NULL),
(801, 'C0805', 4.00, 376.00, 376.00, 400.00, 376.00, 1, '2021-06-21 18:00:00', NULL),
(802, 'C0806', 2.00, 392.00, 392.00, 450.00, 392.00, 1, '2021-06-21 18:00:00', NULL),
(803, 'C0807', 7.00, 393.00, 393.00, 450.00, 393.00, 1, '2021-06-21 18:00:00', NULL),
(804, 'C0808', 7.00, 212.00, 212.00, 250.00, 212.00, 1, '2021-06-21 18:00:00', NULL),
(805, 'C0809', 22.00, 268.75, 268.75, 350.00, 268.75, 1, '2021-06-21 18:00:00', NULL),
(806, 'C0811', 9.00, 315.00, 315.00, 350.00, 315.00, 1, '2021-06-21 18:00:00', NULL),
(807, 'C0812', 8.00, 172.00, 172.00, 250.00, 172.00, 1, '2021-06-21 18:00:00', NULL),
(808, 'C0813', 3.00, 1150.00, 1150.00, 1250.00, 1150.00, 1, '2021-06-21 18:00:00', NULL),
(809, 'C0814', 10.00, 40.00, 40.00, 60.00, 40.00, 1, '2021-06-21 18:00:00', NULL),
(810, 'C0816', 16.00, 250.00, 250.00, 300.00, 250.00, 1, '2021-06-21 18:00:00', NULL),
(811, 'C0819', 85.00, 63.00, 63.00, 90.00, 63.00, 1, '2021-06-21 18:00:00', NULL),
(812, 'B0695', 1.00, 14560.00, 14560.00, 16000.00, 14560.00, 1, '2021-06-21 18:00:00', NULL),
(813, 'C0820', 240.00, 5.40, 5.40, 10.00, 5.40, 1, '2021-06-21 18:00:00', NULL),
(814, 'B0698', 2.00, 11500.00, 11500.00, 15000.00, 11500.00, 1, '2021-06-21 18:00:00', NULL),
(815, 'C0821', 240.00, 750.00, 750.00, 800.00, 750.00, 1, '2021-06-21 18:00:00', NULL),
(816, 'C0822', 8.00, 1520.00, 1520.00, 1550.00, 1520.00, 1, '2021-06-21 18:00:00', NULL),
(817, 'C0823', 4.00, 1433.00, 1433.00, 1550.00, 1433.00, 1, '2021-06-21 18:00:00', NULL),
(818, 'C0824', 117.72, 39.00, 39.00, 50.00, 39.00, 1, '2021-06-21 18:00:00', NULL),
(819, 'C0825', 1.00, 131.95, 131.95, 160.00, 131.95, 1, '2021-06-21 18:00:00', NULL),
(820, 'C0826', 21.60, 60.00, 60.00, 70.00, 60.00, 1, '2021-06-21 18:00:00', NULL),
(821, 'C0827', 24.00, 22.00, 22.00, 35.00, 22.00, 1, '2021-06-21 18:00:00', NULL),
(822, 'C0839', 25.00, 4.00, 4.00, 10.00, 4.00, 1, '2021-06-21 18:00:00', NULL),
(823, 'C0840', 286.00, 9.00, 9.00, 12.00, 9.00, 1, '2021-06-21 18:00:00', NULL),
(824, 'C0842', 4.00, 897.00, 897.00, 950.00, 897.00, 1, '2021-06-21 18:00:00', NULL),
(825, 'C0851', 4.00, 1050.00, 1050.00, 1150.00, 1050.00, 1, '2021-06-21 18:00:00', NULL),
(826, 'C0854', 14.00, 291.00, 291.00, 350.00, 291.00, 1, '2021-06-21 18:00:00', NULL),
(827, 'C0857', 3.00, 900.00, 900.00, 950.00, 900.00, 1, '2021-06-21 18:00:00', NULL),
(828, 'C0987', 9.00, 41.70, 41.70, 60.00, 41.70, 1, '2021-06-21 18:00:00', NULL),
(829, 'B0715', 1.00, 14200.00, 14200.00, 16500.00, 14200.00, 1, '2021-06-21 18:00:00', NULL),
(830, 'C0989', 9.00, 32.00, 32.00, 45.00, 32.00, 1, '2021-06-21 18:00:00', NULL),
(831, 'C0990', 4.00, 30.00, 30.00, 40.00, 30.00, 1, '2021-06-21 18:00:00', NULL),
(832, 'C0994', 11.00, 31.67, 31.67, 45.00, 31.67, 1, '2021-06-21 18:00:00', NULL),
(833, 'C0997', 12.00, 25.00, 25.00, 35.00, 25.00, 1, '2021-06-21 18:00:00', NULL),
(834, 'C0378', 38.00, 47.00, 47.00, 60.00, 47.00, 1, '2021-06-21 18:00:00', NULL),
(835, 'C0386', 10.00, 42.00, 42.00, 55.00, 42.00, 1, '2021-06-21 18:00:00', NULL),
(836, 'C0387', 12.00, 50.00, 50.00, 65.00, 50.00, 1, '2021-06-21 18:00:00', NULL),
(837, 'C0388', 9.00, 80.00, 80.00, 110.00, 80.00, 1, '2021-06-21 18:00:00', NULL),
(838, 'C0389', 4.00, 115.00, 115.00, 140.00, 115.00, 1, '2021-06-21 18:00:00', NULL),
(839, 'C0390', 8.00, 166.00, 166.00, 200.00, 166.00, 1, '2021-06-21 18:00:00', NULL),
(840, 'C0392', 4.00, 520.00, 520.00, 550.00, 520.00, 1, '2021-06-21 18:00:00', NULL),
(841, 'C0393', 3.00, 460.00, 460.00, 550.00, 460.00, 1, '2021-06-21 18:00:00', NULL),
(842, 'C0400', 12.00, 27.00, 27.00, 35.00, 27.00, 1, '2021-06-21 18:00:00', NULL),
(843, 'C0405', 23.00, 108.33, 108.33, 120.00, 108.33, 1, '2021-06-21 18:00:00', NULL),
(844, 'C0408', 5.00, 200.00, 200.00, 250.00, 200.00, 1, '2021-06-21 18:00:00', NULL),
(845, 'C0410', 4.00, 60.00, 60.00, 90.00, 60.00, 1, '2021-06-21 18:00:00', NULL),
(846, 'C0411', 7.00, 75.00, 75.00, 120.00, 75.00, 1, '2021-06-21 18:00:00', NULL),
(847, 'C0412', 80.00, 75.00, 75.00, 100.00, 75.00, 1, '2021-06-21 18:00:00', NULL),
(848, 'C0417', 8.00, 55.00, 55.00, 65.00, 55.00, 1, '2021-06-21 18:00:00', NULL),
(849, 'C0418', 21.00, 45.00, 45.00, 60.00, 45.00, 1, '2021-06-21 18:00:00', NULL),
(850, 'B0736', 1.00, 12500.00, 12500.00, 15500.00, 12500.00, 1, '2021-06-21 18:00:00', NULL),
(851, 'C0419', 20.00, 8.00, 8.00, 20.00, 8.00, 1, '2021-06-21 18:00:00', NULL),
(852, 'C0422', 8.00, 12.00, 12.00, 25.00, 12.00, 1, '2021-06-21 18:00:00', NULL),
(853, 'C0427', 165.00, 15.00, 15.00, 35.00, 15.00, 1, '2021-06-21 18:00:00', NULL),
(854, 'C0430', 20.00, 18.00, 18.00, 35.00, 18.00, 1, '2021-06-21 18:00:00', NULL),
(855, 'B0741', 1.00, 13000.00, 13000.00, 16000.00, 13000.00, 1, '2021-06-21 18:00:00', NULL),
(856, 'B0742', 1.00, 10300.00, 10300.00, 16500.00, 10300.00, 1, '2021-06-21 18:00:00', NULL),
(857, 'B0747', 1.00, 13775.00, 13775.00, 17500.00, 13775.00, 1, '2021-06-21 18:00:00', NULL),
(858, 'C0860', 17.00, 220.00, 220.00, 250.00, 220.00, 1, '2021-06-21 18:00:00', NULL),
(859, 'B0749', 1.00, 4085.00, 4085.00, 6000.00, 4085.00, 1, '2021-06-21 18:00:00', NULL),
(860, 'C0866', 6.00, 245.00, 245.00, 260.00, 245.00, 1, '2021-06-21 18:00:00', NULL),
(861, 'C0867', 6.00, 130.00, 130.00, 140.00, 130.00, 1, '2021-06-21 18:00:00', NULL),
(862, 'C0873', 16.00, 75.00, 75.00, 90.00, 75.00, 1, '2021-06-21 18:00:00', NULL),
(863, 'C0876', 2.00, 370.00, 370.00, 500.00, 370.00, 1, '2021-06-21 18:00:00', NULL),
(864, 'C0892', 36.00, 168.34, 168.34, 200.00, 168.34, 1, '2021-06-21 18:00:00', NULL),
(865, 'C0893', 17.00, 190.00, 190.00, 220.00, 190.00, 1, '2021-06-21 18:00:00', NULL),
(866, 'C0900', 6.00, 1534.00, 1534.00, 1600.00, 1534.00, 1, '2021-06-21 18:00:00', NULL),
(867, 'C0901', 16.00, 115.00, 115.00, 150.00, 115.00, 1, '2021-06-21 18:00:00', NULL),
(868, 'C0940', 8.00, 43.65, 43.65, 60.00, 43.65, 1, '2021-06-21 18:00:00', NULL),
(869, 'C0941', 7.00, 57.20, 57.20, 80.00, 57.20, 1, '2021-06-21 18:00:00', NULL),
(870, 'C0943', 143.00, 80.00, 80.00, 100.00, 80.00, 1, '2021-06-21 18:00:00', NULL),
(871, 'C0944', 2.00, 160.00, 160.00, 200.00, 160.00, 1, '2021-06-21 18:00:00', NULL),
(872, 'C0960', 6.00, 214.00, 214.00, 250.00, 214.00, 1, '2021-06-21 18:00:00', NULL),
(873, 'C0975', 7.00, 83.00, 83.00, 100.00, 83.00, 1, '2021-06-21 18:00:00', NULL),
(874, 'C0977', 1.00, 110.00, 110.00, 125.00, 110.00, 1, '2021-06-21 18:00:00', NULL),
(875, 'C0978', 60.00, 28.00, 28.00, 30.00, 28.00, 1, '2021-06-21 18:00:00', NULL),
(876, 'C0979', 162.00, 85.00, 85.00, 90.00, 85.00, 1, '2021-06-21 18:00:00', NULL),
(877, 'C098', 8.00, 60.00, 60.00, 80.00, 60.00, 1, '2021-06-21 18:00:00', NULL),
(878, 'C0981', 8.00, 60.00, 60.00, 80.00, 60.00, 1, '2021-06-21 18:00:00', NULL),
(879, 'C0985', 1.00, 5500.00, 5500.00, 5800.00, 5500.00, 1, '2021-06-21 18:00:00', NULL),
(880, 'C0986', 4.00, 204.17, 204.17, 250.00, 204.17, 1, '2021-06-21 18:00:00', NULL),
(881, 'C0988', 8.00, 42.00, 42.00, 60.00, 42.00, 1, '2021-06-21 18:00:00', NULL),
(882, 'C0991', 8.00, 30.00, 30.00, 40.00, 30.00, 1, '2021-06-21 18:00:00', NULL),
(883, 'C0992', 8.00, 25.00, 25.00, 35.00, 25.00, 1, '2021-06-21 18:00:00', NULL),
(884, 'C0993', 10.00, 25.00, 25.00, 35.00, 25.00, 1, '2021-06-21 18:00:00', NULL),
(885, 'C0995', 12.00, 33.00, 33.00, 45.00, 33.00, 1, '2021-06-21 18:00:00', NULL),
(886, 'C0996', 13.00, 32.00, 32.00, 45.00, 32.00, 1, '2021-06-21 18:00:00', NULL),
(887, 'C0998', 9.00, 25.00, 25.00, 35.00, 25.00, 1, '2021-06-21 18:00:00', NULL),
(888, 'C0999', 24.00, 25.00, 25.00, 40.00, 25.00, 1, '2021-06-21 18:00:00', NULL),
(889, 'C0047', 90.00, 6.67, 6.67, 10.00, 6.67, 1, '2021-06-21 18:00:00', NULL),
(890, 'C0048', 144.00, 4.17, 4.17, 10.00, 4.17, 1, '2021-06-21 18:00:00', NULL),
(891, 'C0050', 36.00, 4.17, 4.17, 10.00, 4.17, 1, '2021-06-21 18:00:00', NULL),
(892, 'C0071', 500.00, 13.00, 13.00, 20.00, 13.00, 1, '2021-06-21 18:00:00', NULL),
(893, 'C0011', 120.00, 40.00, 40.00, 60.00, 40.00, 1, '2021-06-21 18:00:00', NULL),
(894, 'C0431', 20.00, 19.00, 19.00, 35.00, 19.00, 1, '2021-06-21 18:00:00', NULL),
(895, 'C0432', 40.00, 165.00, 165.00, 180.00, 165.00, 1, '2021-06-21 18:00:00', NULL),
(896, 'C0433', 55.00, 13.50, 13.50, 20.00, 13.50, 1, '2021-06-21 18:00:00', NULL),
(897, 'C0434', 6.00, 313.00, 313.00, 350.00, 313.00, 1, '2021-06-21 18:00:00', NULL),
(898, 'C0436', 19.00, 74.00, 74.00, 100.00, 74.00, 1, '2021-06-21 18:00:00', NULL),
(899, 'C0437', 1.00, 80.00, 80.00, 100.00, 80.00, 1, '2021-06-21 18:00:00', NULL),
(900, 'C0438', 9.00, 83.00, 83.00, 100.00, 83.00, 1, '2021-06-21 18:00:00', NULL),
(901, 'C0439', 11.00, 45.50, 45.50, 60.00, 45.50, 1, '2021-06-21 18:00:00', NULL),
(902, 'C0440', 80.00, 5.00, 5.00, 20.00, 5.00, 1, '2021-06-21 18:00:00', NULL),
(903, 'C0444', 4.00, 875.00, 875.00, 950.00, 875.00, 1, '2021-06-21 18:00:00', NULL),
(904, 'C0445', 4.00, 840.00, 840.00, 950.00, 840.00, 1, '2021-06-21 18:00:00', NULL),
(905, 'C0446', 4.00, 836.00, 836.00, 950.00, 836.00, 1, '2021-06-21 18:00:00', NULL),
(906, 'C0449', 1.00, 222.00, 222.00, 250.00, 222.00, 1, '2021-06-21 18:00:00', NULL),
(907, 'C0450', 6.00, 230.00, 230.00, 250.00, 230.00, 1, '2021-06-21 18:00:00', NULL),
(908, 'C0451', 2.00, 285.00, 285.00, 320.00, 285.00, 1, '2021-06-21 18:00:00', NULL),
(909, 'C0453', 4.00, 300.00, 300.00, 320.00, 300.00, 1, '2021-06-21 18:00:00', NULL),
(910, 'C0191', 5.00, 308.75, 308.75, 320.00, 308.75, 1, '2021-06-21 18:00:00', NULL),
(911, 'C0047', 90.00, 6.67, 6.67, 10.00, 6.67, 1, '2021-06-22 18:00:00', NULL),
(912, 'C0059', 288.00, 3.50, 3.50, 8.00, 3.50, 1, '2021-06-22 18:00:00', NULL),
(913, 'C0047', 55.00, 6.67, 6.67, 10.00, 6.67, 1, '2021-06-22 18:00:00', NULL),
(914, 'C0505', 256.00, 8.33, 8.33, 12.00, 8.33, 1, '2021-06-22 18:00:00', NULL),
(915, 'C0028', 9.00, 85.00, 85.00, 100.00, 85.00, 1, '2021-06-22 18:00:00', NULL),
(916, 'C0031', 11.00, 40.00, 40.00, 50.00, 40.00, 1, '2021-06-22 18:00:00', NULL),
(917, 'C1002', 8.00, 25.00, 25.00, 35.00, 25.00, 1, '2021-06-22 18:00:00', NULL),
(918, 'C1005', 6.00, 128.00, 128.00, 140.00, 128.00, 1, '2021-06-22 18:00:00', NULL),
(919, 'C1006', 2.00, 140.00, 140.00, 160.00, 140.00, 1, '2021-06-22 18:00:00', NULL),
(920, 'C1007', 8.00, 84.30, 84.30, 100.00, 84.30, 1, '2021-06-22 18:00:00', NULL),
(921, 'C1015', 190.00, 16.00, 16.00, 25.00, 16.00, 1, '2021-06-22 18:00:00', NULL),
(922, 'C1016', 3.00, 7.40, 7.40, 15.00, 7.40, 1, '2021-06-22 18:00:00', NULL),
(923, 'C1025', 1.50, 110.00, 110.00, 140.00, 110.00, 1, '2021-06-22 18:00:00', NULL),
(924, 'C1028', 4.00, 523.50, 523.50, 600.00, 523.50, 1, '2021-06-22 18:00:00', NULL),
(925, 'B0761', 2.00, 2950.00, 2950.00, 4500.00, 2950.00, 1, '2021-06-22 18:00:00', NULL),
(926, 'C1029', 3.00, 400.00, 400.00, 500.00, 400.00, 1, '2021-06-22 18:00:00', NULL),
(927, 'C1031', 4000.00, 0.22, 0.22, 1.00, 0.22, 1, '2021-06-22 18:00:00', NULL),
(928, 'C1032', 4.00, 720.00, 720.00, 800.00, 720.00, 1, '2021-06-22 18:00:00', NULL),
(929, 'C1034', 6.00, 350.00, 350.00, 400.00, 350.00, 1, '2021-06-22 18:00:00', NULL),
(930, 'C1036', 48.00, 11.00, 11.00, 15.00, 11.00, 1, '2021-06-22 18:00:00', NULL),
(931, 'B0769', 1.00, 11565.00, 11565.00, 14500.00, 11565.00, 1, '2021-06-22 18:00:00', NULL),
(932, 'C1036', 48.00, 11.00, 11.00, 15.00, 11.00, 1, '2021-06-22 18:00:00', NULL),
(933, 'C1038', 42.00, 7.00, 7.00, 12.00, 7.00, 1, '2021-06-22 18:00:00', NULL),
(934, 'C1040', 60.00, 10.00, 10.00, 15.00, 10.00, 1, '2021-06-22 18:00:00', NULL),
(935, 'C1043', 1.50, 150.00, 150.00, 200.00, 150.00, 1, '2021-06-22 18:00:00', NULL),
(936, 'C1044', 1.10, 120.00, 120.00, 150.00, 120.00, 1, '2021-06-22 18:00:00', NULL),
(937, 'C1046', 416.00, 6.00, 6.00, 15.00, 6.00, 1, '2021-06-22 18:00:00', NULL),
(938, 'B0787', 2.00, 12000.00, 12000.00, 14500.00, 12000.00, 1, '2021-06-22 18:00:00', NULL),
(939, 'C1046', 416.00, 6.00, 6.00, 15.00, 6.00, 1, '2021-06-22 18:00:00', NULL),
(940, 'C1047', 85.00, 6.00, 6.00, 15.00, 6.00, 1, '2021-06-22 18:00:00', NULL),
(941, 'C1048', 54.00, 15.00, 15.00, 25.00, 15.00, 1, '2021-06-22 18:00:00', NULL),
(942, 'C1049', 55.00, 15.00, 15.00, 25.00, 15.00, 1, '2021-06-22 18:00:00', NULL),
(943, 'C1050', 58.00, 15.00, 15.00, 25.00, 15.00, 1, '2021-06-22 18:00:00', NULL),
(944, 'B0798', 2.00, 22500.00, 22500.00, 26000.00, 22500.00, 1, '2021-06-22 18:00:00', NULL),
(945, 'C1052', 21.00, 320.00, 320.00, 350.00, 320.00, 1, '2021-06-22 18:00:00', NULL),
(946, 'C1055', 8.00, 68.00, 68.00, 90.00, 68.00, 1, '2021-06-22 18:00:00', NULL),
(947, 'B0811', 1.00, 1755.00, 1755.00, 2150.00, 1755.00, 1, '2021-06-22 18:00:00', NULL),
(948, 'C1055', 8.00, 68.00, 68.00, 90.00, 68.00, 1, '2021-06-22 18:00:00', NULL),
(949, 'C1056', 27.00, 4.00, 4.00, 10.00, 4.00, 1, '2021-06-22 18:00:00', NULL),
(950, 'C1057', 10.00, 4.00, 4.00, 10.00, 4.00, 1, '2021-06-22 18:00:00', NULL),
(951, 'B0813', 2.00, 950.00, 950.00, 1280.00, 950.00, 1, '2021-06-22 18:00:00', NULL),
(952, 'C1058', 140.00, 1.00, 1.00, 3.00, 1.00, 1, '2021-06-22 18:00:00', NULL),
(953, 'C1061', 10.00, 40.00, 40.00, 60.00, 40.00, 1, '2021-06-22 18:00:00', NULL),
(954, 'B0820', 1.00, 3500.00, 3500.00, 6000.00, 3500.00, 1, '2021-06-22 18:00:00', NULL),
(955, 'B0821', 2.00, 19000.00, 19000.00, 23000.00, 19000.00, 1, '2021-06-22 18:00:00', NULL),
(956, 'C1063', 7.00, 48.00, 48.00, 60.00, 48.00, 1, '2021-06-22 18:00:00', NULL),
(957, 'C1065', 55.00, 131.15, 131.15, 160.00, 131.15, 1, '2021-06-22 18:00:00', NULL),
(958, 'C1066', 185.00, 2.00, 2.00, 4.00, 2.00, 1, '2021-06-22 18:00:00', NULL),
(959, 'C1068', 30.00, 1.00, 1.00, 3.00, 1.00, 1, '2021-06-22 18:00:00', NULL),
(960, 'C1069', 530.00, 1.00, 1.00, 3.00, 1.00, 1, '2021-06-22 18:00:00', NULL),
(961, 'B0839', 1.00, 14530.00, 14530.00, 17500.00, 14530.00, 1, '2021-06-22 18:00:00', NULL),
(962, 'C1070', 280.00, 1.00, 1.00, 3.00, 1.00, 1, '2021-06-22 18:00:00', NULL),
(963, 'C1071', 280.00, 1.00, 1.00, 3.00, 1.00, 1, '2021-06-22 18:00:00', NULL),
(964, 'B0844', 2.00, 14050.00, 14050.00, 17000.00, 14050.00, 1, '2021-06-22 18:00:00', NULL),
(965, 'B0845', 1.00, 22000.00, 22000.00, 25000.00, 22000.00, 1, '2021-06-22 18:00:00', NULL),
(966, 'C1073', 20.00, 62.00, 62.00, 90.00, 62.00, 1, '2021-06-22 18:00:00', NULL),
(967, 'C1074', 34.00, 10.00, 10.00, 15.00, 10.00, 1, '2021-06-22 18:00:00', NULL),
(968, 'C1075', 34.00, 7.00, 7.00, 12.00, 7.00, 1, '2021-06-22 18:00:00', NULL),
(969, 'C1078', 388.00, 2.00, 2.00, 4.00, 2.00, 1, '2021-06-22 18:00:00', NULL),
(970, 'C1078', 388.00, 2.00, 2.00, 4.00, 2.00, 1, '2021-06-22 18:00:00', NULL),
(971, 'B0854', 1.00, 32200.00, 32200.00, 36000.00, 32200.00, 1, '2021-06-22 18:00:00', NULL),
(972, 'C1079', 30.00, 40.00, 40.00, 50.00, 40.00, 1, '2021-06-22 18:00:00', NULL),
(973, 'C1083', 4.00, 322.00, 322.00, 350.00, 322.00, 1, '2021-06-22 18:00:00', NULL),
(974, 'C1086', 1.00, 238.00, 238.00, 260.00, 238.00, 1, '2021-06-22 18:00:00', NULL),
(975, 'B0893', 3.00, 35.00, 35.00, 50.00, 35.00, 1, '2021-06-22 18:00:00', NULL),
(976, 'C1096', 3.00, 602.00, 602.00, 800.00, 602.00, 1, '2021-06-22 18:00:00', NULL),
(977, 'C1099', 3.00, 1000.00, 1000.00, 1100.00, 1000.00, 1, '2021-06-22 18:00:00', NULL),
(978, 'C1101', 8.00, 300.00, 300.00, 330.00, 300.00, 1, '2021-06-22 18:00:00', NULL),
(979, 'C1102', 2.00, 2100.00, 2100.00, 2500.00, 2100.00, 1, '2021-06-22 18:00:00', NULL),
(980, 'C1108', 4.00, 335.00, 335.00, 360.00, 335.00, 1, '2021-06-22 18:00:00', NULL),
(981, 'C1109', 5.00, 335.00, 335.00, 360.00, 335.00, 1, '2021-06-22 18:00:00', NULL),
(982, 'B0925', 13.00, 26.00, 26.00, 30.00, 26.00, 1, '2021-06-22 18:00:00', NULL),
(983, 'C1113', 15.00, 500.00, 500.00, 600.00, 500.00, 1, '2021-06-22 18:00:00', NULL),
(984, 'C1116', 10.00, 14.00, 14.00, 20.00, 14.00, 1, '2021-06-22 18:00:00', NULL),
(985, 'C1132', 48.00, 4.00, 4.00, 10.00, 4.00, 1, '2021-06-22 18:00:00', NULL),
(986, 'C1134', 21.00, 80.00, 80.00, 100.00, 80.00, 1, '2021-06-22 18:00:00', NULL),
(987, 'C1140', 20.00, 148.00, 148.00, 180.00, 148.00, 1, '2021-06-22 18:00:00', NULL),
(988, 'C1143', 22.00, 72.00, 72.00, 90.00, 72.00, 1, '2021-06-22 18:00:00', NULL),
(989, 'C1144', 16.00, 97.00, 97.00, 130.00, 97.00, 1, '2021-06-22 18:00:00', NULL),
(990, 'C1145', 13.00, 120.00, 120.00, 135.00, 120.00, 1, '2021-06-22 18:00:00', NULL),
(991, 'C1146', 12.00, 125.00, 125.00, 140.00, 125.00, 1, '2021-06-22 18:00:00', NULL),
(992, 'C1147', 8.00, 192.00, 192.00, 220.00, 192.00, 1, '2021-06-22 18:00:00', NULL),
(993, 'C1148', 15.00, 256.00, 256.00, 300.00, 256.00, 1, '2021-06-22 18:00:00', NULL),
(994, 'C1149', 14.00, 384.00, 384.00, 384.00, 384.00, 1, '2021-06-22 18:00:00', NULL),
(995, 'C1151', 7.00, 240.00, 240.00, 260.00, 240.00, 1, '2021-06-22 18:00:00', NULL),
(996, 'C1152', 14.00, 220.00, 220.00, 250.00, 220.00, 1, '2021-06-22 18:00:00', NULL),
(997, 'C1160', 1.00, 1180.00, 1180.00, 1300.00, 1180.00, 1, '2021-06-22 18:00:00', NULL),
(998, 'C1165', 34.00, 80.00, 80.00, 120.00, 80.00, 1, '2021-06-22 18:00:00', NULL),
(999, 'C1169', 477.00, 21.50, 21.50, 25.00, 21.50, 1, '2021-06-22 18:00:00', NULL),
(1000, 'B0653', 30.00, 50.00, 50.00, 80.00, 50.00, 1, '2021-06-22 18:00:00', NULL),
(1001, 'B0962', 4.00, 40.00, 40.00, 80.00, 40.00, 1, '2021-06-22 18:00:00', NULL),
(1002, 'C1175', 48.00, 10.50, 10.50, 15.00, 10.50, 1, '2021-06-22 18:00:00', NULL),
(1003, 'B0960', 8.00, 68.00, 68.00, 100.00, 68.00, 1, '2021-06-22 18:00:00', NULL),
(1004, 'C1176', 96.00, 6.00, 6.00, 10.00, 6.00, 1, '2021-06-22 18:00:00', NULL),
(1005, 'C1180', 1.00, 7.00, 7.00, 15.00, 7.00, 1, '2021-06-22 18:00:00', NULL),
(1006, 'C1182', 9.00, 7.00, 7.00, 15.00, 7.00, 1, '2021-06-22 18:00:00', NULL),
(1007, 'C1188', 7.00, 50.00, 50.00, 60.00, 50.00, 1, '2021-06-22 18:00:00', NULL),
(1008, 'B0972', 2.00, 19555.00, 19555.00, 20500.00, 19555.00, 1, '2021-06-22 18:00:00', NULL),
(1009, 'C1192', 4.00, 158.47, 158.47, 180.00, 158.47, 1, '2021-06-22 18:00:00', NULL),
(1010, 'C1196', 2.00, 135.00, 135.00, 160.00, 135.00, 1, '2021-06-22 18:00:00', NULL),
(1011, 'C1197', 2.00, 159.00, 159.00, 200.00, 159.00, 1, '2021-06-22 18:00:00', NULL),
(1012, 'C1198', 20.00, 20.00, 20.00, 35.00, 20.00, 1, '2021-06-22 18:00:00', NULL),
(1013, 'C1199', 22.00, 24.00, 24.00, 40.00, 24.00, 1, '2021-06-22 18:00:00', NULL),
(1014, 'C1203', 11.00, 85.00, 85.00, 120.00, 85.00, 1, '2021-06-22 18:00:00', NULL),
(1015, 'C1204', 6.00, 600.00, 600.00, 700.00, 600.00, 1, '2021-06-22 18:00:00', NULL),
(1016, 'C1206', 25.00, 30.00, 30.00, 50.00, 30.00, 1, '2021-06-22 18:00:00', NULL),
(1017, 'C1208', 665.00, 1.50, 1.50, 3.00, 1.50, 1, '2021-06-22 18:00:00', NULL),
(1018, 'B0999', 1.00, 3720.00, 3720.00, 4800.00, 3720.00, 1, '2021-06-22 18:00:00', NULL),
(1019, 'C1212', 4.00, 3000.00, 3000.00, 3200.00, 3000.00, 1, '2021-06-22 18:00:00', NULL),
(1020, 'C1217', 6.00, 500.00, 500.00, 550.00, 500.00, 1, '2021-06-22 18:00:00', NULL),
(1021, 'B1221', 198.00, 24.25, 24.25, 35.00, 24.25, 1, '2021-06-22 18:00:00', NULL),
(1022, 'B1217', 31.00, 45.00, 45.00, 70.00, 45.00, 1, '2021-06-22 18:00:00', NULL),
(1023, 'B1219', 108.00, 55.00, 55.00, 100.00, 55.00, 1, '2021-06-22 18:00:00', NULL),
(1024, 'B1225', 107.00, 50.00, 50.00, 100.00, 50.00, 1, '2021-06-22 18:00:00', NULL),
(1025, 'B1214', 68.00, 69.70, 69.70, 120.00, 69.70, 1, '2021-06-22 18:00:00', NULL),
(1026, 'C1219', 9.00, 3000.00, 3000.00, 3200.00, 3000.00, 1, '2021-06-22 18:00:00', NULL),
(1027, 'B1224', 160.00, 25.00, 25.00, 50.00, 25.00, 1, '2021-06-22 18:00:00', NULL),
(1028, 'B1213', 166.00, 50.00, 50.00, 70.00, 50.00, 1, '2021-06-22 18:00:00', NULL),
(1029, 'B1220', 90.00, 70.00, 70.00, 100.00, 70.00, 1, '2021-06-22 18:00:00', NULL),
(1030, 'C1223', 4.00, 370.00, 370.00, 420.00, 370.00, 1, '2021-06-22 18:00:00', NULL),
(1031, 'C1224', 1.00, 285.00, 285.00, 320.00, 285.00, 1, '2021-06-22 18:00:00', NULL),
(1032, 'B1212', 235.00, 30.00, 30.00, 55.00, 30.00, 1, '2021-06-22 18:00:00', NULL),
(1033, 'C1246', 4.00, 350.00, 350.00, 500.00, 350.00, 1, '2021-06-22 18:00:00', NULL),
(1034, 'B1216', 107.00, 30.00, 30.00, 45.00, 30.00, 1, '2021-06-22 18:00:00', NULL),
(1035, 'C1249', 1.00, 200.00, 200.00, 300.00, 200.00, 1, '2021-06-22 18:00:00', NULL),
(1036, 'B1222', 21.00, 11.00, 11.00, 20.00, 11.00, 1, '2021-06-22 18:00:00', NULL),
(1037, 'C1251', 4.00, 3000.00, 3000.00, 3200.00, 3000.00, 1, '2021-06-22 18:00:00', NULL),
(1038, 'B1215', 139.00, 25.00, 25.00, 35.00, 25.00, 1, '2021-06-22 18:00:00', NULL),
(1039, 'C1252', 40.00, 20.00, 20.00, 40.00, 20.00, 1, '2021-06-22 18:00:00', NULL),
(1040, 'C125', 25.00, 28.00, 28.00, 40.00, 28.00, 1, '2021-06-22 18:00:00', NULL),
(1041, 'C1253', 25.00, 28.00, 28.00, 40.00, 28.00, 1, '2021-06-22 18:00:00', NULL),
(1042, 'C1256', 30.00, 40.00, 40.00, 60.00, 40.00, 1, '2021-06-22 18:00:00', NULL),
(1043, 'C1257', 20.00, 50.00, 50.00, 70.00, 50.00, 1, '2021-06-22 18:00:00', NULL),
(1044, 'C1258', 30.00, 40.00, 40.00, 60.00, 40.00, 1, '2021-06-22 18:00:00', NULL),
(1045, 'C1259', 30.00, 50.00, 50.00, 60.00, 50.00, 1, '2021-06-22 18:00:00', NULL),
(1046, 'B1223', 269.00, 15.00, 15.00, 25.00, 15.00, 1, '2021-06-22 18:00:00', NULL),
(1047, 'C1260', 40.00, 35.00, 35.00, 50.00, 35.00, 1, '2021-06-22 18:00:00', NULL),
(1048, 'C1254', 10.00, 240.00, 240.00, 300.00, 240.00, 1, '2021-06-22 18:00:00', NULL),
(1049, 'C1261', 40.00, 70.00, 70.00, 85.00, 70.00, 1, '2021-06-22 18:00:00', NULL),
(1050, 'C1262', 86.00, 80.00, 80.00, 90.00, 80.00, 1, '2021-06-22 18:00:00', NULL),
(1051, 'C1263', 200.00, 3.50, 3.50, 5.00, 3.50, 1, '2021-06-22 18:00:00', NULL),
(1052, 'C1264', 3.00, 210.00, 210.00, 250.00, 210.00, 1, '2021-06-22 18:00:00', NULL),
(1053, 'B1017', 1.00, 210.00, 210.00, 260.00, 210.00, 1, '2021-06-22 18:00:00', NULL),
(1054, 'C1270', 1.00, 1400.00, 1400.00, 1600.00, 1400.00, 1, '2021-06-22 18:00:00', NULL),
(1055, 'B1018', 2.00, 110.00, 110.00, 180.00, 110.00, 1, '2021-06-22 18:00:00', NULL),
(1056, 'C1274', 22.00, 85.00, 85.00, 110.00, 85.00, 1, '2021-06-22 18:00:00', NULL),
(1057, 'C1275', 2.00, 800.00, 800.00, 950.00, 800.00, 1, '2021-06-22 18:00:00', NULL),
(1058, 'B1021', 1.00, 3730.00, 3730.00, 4800.00, 3730.00, 1, '2021-06-22 18:00:00', NULL),
(1059, 'C1276', 22.00, 22.00, 22.00, 35.00, 22.00, 1, '2021-06-22 18:00:00', NULL),
(1060, 'C1278', 2.00, 500.00, 500.00, 700.00, 500.00, 1, '2021-06-22 18:00:00', NULL),
(1061, 'C1285', 6.00, 325.00, 325.00, 450.00, 325.00, 1, '2021-06-22 18:00:00', NULL),
(1062, 'C1287', 6.00, 270.00, 270.00, 320.00, 270.00, 1, '2021-06-22 18:00:00', NULL),
(1063, 'C1292', 1.00, 1000.00, 1000.00, 1150.00, 1000.00, 1, '2021-06-22 18:00:00', NULL),
(1064, 'C1293', 4.00, 1000.00, 1000.00, 1150.00, 1000.00, 1, '2021-06-22 18:00:00', NULL),
(1065, 'C1294', 2.00, 850.00, 850.00, 1150.00, 850.00, 1, '2021-06-22 18:00:00', NULL),
(1066, 'C1295', 4.00, 272.80, 272.80, 320.00, 272.80, 1, '2021-06-22 18:00:00', NULL),
(1067, 'C1297', 3.00, 1500.00, 1500.00, 1600.00, 1500.00, 1, '2021-06-22 18:00:00', NULL),
(1068, 'C1300', 7.00, 36.00, 36.00, 50.00, 36.00, 1, '2021-06-22 18:00:00', NULL),
(1069, 'C1303', 5.00, 1108.00, 1108.00, 1250.00, 1108.00, 1, '2021-06-22 18:00:00', NULL),
(1070, 'C1304', 10.00, 280.00, 280.00, 320.00, 280.00, 1, '2021-06-22 18:00:00', NULL),
(1071, 'C1306', 270.00, 40.00, 40.00, 50.00, 40.00, 1, '2021-06-22 18:00:00', NULL),
(1072, 'C1307', 24.00, 32.78, 32.78, 60.00, 32.78, 1, '2021-06-22 18:00:00', NULL),
(1073, 'C1308', 108.00, 65.00, 65.00, 90.00, 65.00, 1, '2021-06-22 18:00:00', NULL),
(1074, 'C1309', 160.00, 50.00, 50.00, 60.00, 50.00, 1, '2021-06-22 18:00:00', NULL),
(1075, 'C1310', 10.00, 22.00, 22.00, 30.00, 22.00, 1, '2021-06-22 18:00:00', NULL),
(1076, 'C1311', 1.00, 280.00, 280.00, 320.00, 280.00, 1, '2021-06-22 18:00:00', NULL),
(1077, 'C1314', 14.00, 47.00, 47.00, 70.00, 47.00, 1, '2021-06-22 18:00:00', NULL),
(1078, 'C1315', 25.00, 60.00, 60.00, 80.00, 60.00, 1, '2021-06-22 18:00:00', NULL),
(1079, 'C1322', 20.00, 55.00, 55.00, 80.00, 55.00, 1, '2021-06-22 18:00:00', NULL),
(1080, 'C1323', 20.00, 20.00, 20.00, 35.00, 20.00, 1, '2021-06-22 18:00:00', NULL),
(1081, 'C1327', 1.00, 291.00, 291.00, 330.00, 291.00, 1, '2021-06-22 18:00:00', NULL),
(1082, 'C1329', 4.00, 1150.00, 1150.00, 1250.00, 1150.00, 1, '2021-06-22 18:00:00', NULL),
(1083, 'C1331', 3.00, 1095.00, 1095.00, 1200.00, 1095.00, 1, '2021-06-22 18:00:00', NULL),
(1084, 'C1332', 3.00, 1150.00, 1150.00, 1250.00, 1150.00, 1, '2021-06-22 18:00:00', NULL),
(1085, 'B1082', 1.00, 4370.00, 4370.00, 5800.00, 4370.00, 1, '2021-06-22 18:00:00', NULL),
(1086, 'C1333', 2.00, 1000.00, 1000.00, 1100.00, 1000.00, 1, '2021-06-22 18:00:00', NULL),
(1087, 'C1335', 48.00, 110.00, 110.00, 135.00, 110.00, 1, '2021-06-22 18:00:00', NULL),
(1088, 'C1336', 21.00, 210.00, 210.00, 230.00, 210.00, 1, '2021-06-22 18:00:00', NULL),
(1089, 'C1338', 3.00, 150.00, 150.00, 170.00, 150.00, 1, '2021-06-22 18:00:00', NULL),
(1090, 'C1341', 5.00, 180.00, 180.00, 220.00, 180.00, 1, '2021-06-22 18:00:00', NULL),
(1091, 'C1346', 1.00, 190.00, 190.00, 230.00, 190.00, 1, '2021-06-22 18:00:00', NULL),
(1092, 'C1347', 4.00, 300.00, 300.00, 350.00, 300.00, 1, '2021-06-22 18:00:00', NULL),
(1093, 'C1430', 10.00, 22.70, 22.70, 35.00, 22.70, 1, '2021-06-22 18:00:00', NULL),
(1094, 'B1091', 8.00, 800.00, 800.00, 900.00, 800.00, 1, '2021-06-23 18:00:00', NULL),
(1095, 'B1092', 2.00, 850.00, 850.00, 950.00, 850.00, 1, '2021-06-23 18:00:00', NULL),
(1096, 'B1093', 9.00, 190.00, 190.00, 250.00, 190.00, 1, '2021-06-23 18:00:00', NULL),
(1097, 'C1351', 8.00, 36.00, 36.00, 50.00, 36.00, 1, '2021-06-23 18:00:00', NULL),
(1098, 'C1352', 20.00, 48.00, 48.00, 70.00, 48.00, 1, '2021-06-23 18:00:00', NULL),
(1099, 'C1353', 2.00, 57.00, 57.00, 80.00, 57.00, 1, '2021-06-23 18:00:00', NULL),
(1100, 'C1354', 10.00, 84.00, 84.00, 120.00, 84.00, 1, '2021-06-23 18:00:00', NULL),
(1101, 'C1355', 15.00, 112.00, 112.00, 130.00, 112.00, 1, '2021-06-23 18:00:00', NULL),
(1102, 'C1356', 10.00, 52.00, 52.00, 70.00, 52.00, 1, '2021-06-23 18:00:00', NULL),
(1103, 'C1357', 1.00, 74.00, 74.00, 100.00, 74.00, 1, '2021-06-23 18:00:00', NULL),
(1104, 'B1101', 1.00, 7000.00, 7000.00, 8750.00, 7000.00, 1, '2021-06-23 18:00:00', NULL),
(1105, 'C1358', 8.00, 104.00, 104.00, 130.00, 104.00, 1, '2021-06-23 18:00:00', NULL),
(1106, 'C1359', 1.00, 2070.00, 2070.00, 2500.00, 2070.00, 1, '2021-06-23 18:00:00', NULL),
(1107, 'C1361', 1.00, 2150.00, 2150.00, 2650.00, 2150.00, 1, '2021-06-23 18:00:00', NULL),
(1108, 'B1103', 3.00, 445.00, 445.00, 800.00, 445.00, 1, '2021-06-23 18:00:00', NULL),
(1109, 'C1362', 3.00, 1870.00, 1870.00, 2350.00, 1870.00, 1, '2021-06-23 18:00:00', NULL),
(1110, 'C1370', 1.00, 4788.00, 4788.00, 5200.00, 4788.00, 1, '2021-06-23 18:00:00', NULL),
(1111, 'C1371', 1.00, 4200.00, 4200.00, 5500.00, 4200.00, 1, '2021-06-23 18:00:00', NULL),
(1112, 'C1372', 1.00, 1780.00, 1780.00, 2200.00, 1780.00, 1, '2021-06-23 18:00:00', NULL),
(1113, 'C1376', 50.00, 14.00, 14.00, 20.00, 14.00, 1, '2021-06-23 18:00:00', NULL),
(1114, 'C1378', 2.00, 270.00, 270.00, 325.00, 270.00, 1, '2021-06-23 18:00:00', NULL),
(1115, 'C1379', 3.00, 400.00, 400.00, 620.00, 400.00, 1, '2021-06-23 18:00:00', NULL),
(1116, 'C1380', 90.00, 85.00, 85.00, 130.00, 85.00, 1, '2021-06-23 18:00:00', NULL),
(1117, 'B1297', 56.00, 26.00, 26.00, 50.00, 26.00, 1, '2021-06-23 18:00:00', NULL),
(1118, 'B1245', 41.00, 26.00, 26.00, 50.00, 26.00, 1, '2021-06-23 18:00:00', NULL),
(1119, 'B1298', 11.00, 140.00, 140.00, 250.00, 140.00, 1, '2021-06-23 18:00:00', NULL),
(1120, 'B1244', 11.00, 145.00, 145.00, 210.00, 145.00, 1, '2021-06-23 18:00:00', NULL),
(1121, 'B1244', 1.00, 145.00, 145.00, 210.00, 145.00, 1, '2021-06-23 18:00:00', NULL),
(1122, 'B1226', 51.00, 62.00, 62.00, 100.00, 62.00, 1, '2021-06-23 18:00:00', NULL),
(1123, 'B1295', 14.00, 47.00, 47.00, 90.00, 47.00, 1, '2021-06-23 18:00:00', NULL),
(1124, 'B1243', 8.00, 49.00, 49.00, 95.00, 49.00, 1, '2021-06-23 18:00:00', NULL),
(1125, 'B1310', 20.00, 72.80, 72.80, 140.00, 72.80, 1, '2021-06-23 18:00:00', NULL),
(1126, 'B1241', 37.00, 80.00, 80.00, 150.00, 80.00, 1, '2021-06-23 18:00:00', NULL),
(1127, 'B1246', 7.00, 119.60, 119.60, 230.00, 119.60, 1, '2021-06-23 18:00:00', NULL),
(1128, 'B1218', 2.00, 38.00, 38.00, 65.00, 38.00, 1, '2021-06-23 18:00:00', NULL),
(1129, 'B1227', 40.00, 14.00, 14.00, 35.00, 14.00, 1, '2021-06-23 18:00:00', NULL),
(1130, 'B1240', 33.00, 35.00, 35.00, 60.00, 35.00, 1, '2021-06-23 18:00:00', NULL),
(1131, 'B1325', 23.00, 55.00, 55.00, 100.00, 55.00, 1, '2021-06-23 18:00:00', NULL),
(1132, 'B1248', 33.00, 10.40, 10.40, 20.00, 10.40, 1, '2021-06-23 18:00:00', NULL),
(1133, 'C1381', 25.00, 15.00, 15.00, 25.00, 15.00, 1, '2021-06-23 18:00:00', NULL),
(1134, 'B1231', 34.00, 45.00, 45.00, 60.00, 45.00, 1, '2021-06-23 18:00:00', NULL),
(1135, 'C1382', 6.00, 2410.00, 2410.00, 4000.00, 2410.00, 1, '2021-06-23 18:00:00', NULL),
(1136, 'C1384', 55.00, 50.00, 50.00, 70.00, 50.00, 1, '2021-06-23 18:00:00', NULL),
(1137, 'C1388', 1.00, 1350.00, 1350.00, 1550.00, 1350.00, 1, '2021-06-23 18:00:00', NULL),
(1138, 'C1390', 6.00, 26.00, 26.00, 35.00, 26.00, 1, '2021-06-23 18:00:00', NULL),
(1139, 'C1391', 1.00, 4350.00, 4350.00, 6000.00, 4350.00, 1, '2021-06-23 18:00:00', NULL),
(1140, 'C1397', 2.00, 500.00, 500.00, 600.00, 500.00, 1, '2021-06-23 18:00:00', NULL),
(1141, 'C1398', 4.00, 180.00, 180.00, 250.00, 180.00, 1, '2021-06-23 18:00:00', NULL),
(1142, 'C1400', 4.00, 60.00, 60.00, 80.00, 60.00, 1, '2021-06-23 18:00:00', NULL),
(1143, 'C1401', 6.00, 520.00, 520.00, 550.00, 520.00, 1, '2021-06-23 18:00:00', NULL),
(1144, 'B1230', 2.00, 1974.00, 1974.00, 2600.00, 1974.00, 1, '2021-06-23 18:00:00', NULL),
(1145, 'C1402', 84.00, 71.00, 71.00, 80.00, 71.00, 1, '2021-06-23 18:00:00', NULL),
(1146, 'C1404', 72.00, 80.00, 80.00, 90.00, 80.00, 1, '2021-06-23 18:00:00', NULL),
(1147, 'C1406', 510.00, 45.00, 45.00, 60.00, 45.00, 1, '2021-06-23 18:00:00', NULL),
(1148, 'C1408', 42.00, 130.00, 130.00, 150.00, 130.00, 1, '2021-06-23 18:00:00', NULL),
(1149, 'C1409', 85.00, 90.00, 90.00, 120.00, 90.00, 1, '2021-06-23 18:00:00', NULL),
(1150, 'C1411', 1.00, 3570.00, 3570.00, 4050.00, 3570.00, 1, '2021-06-23 18:00:00', NULL),
(1151, 'C1412', 1.00, 2760.00, 2760.00, 3500.00, 2760.00, 1, '2021-06-23 18:00:00', NULL),
(1152, 'C1417', 30.00, 15.00, 15.00, 30.00, 15.00, 1, '2021-06-23 18:00:00', NULL),
(1153, 'C1422', 7.00, 300.00, 300.00, 400.00, 300.00, 1, '2021-06-23 18:00:00', NULL),
(1154, 'C1423', 2.00, 450.00, 450.00, 550.00, 450.00, 1, '2021-06-23 18:00:00', NULL),
(1155, 'C1432', 8.00, 782.00, 782.00, 900.00, 782.00, 1, '2021-06-23 18:00:00', NULL),
(1156, 'C1433', 50.00, 50.00, 50.00, 60.00, 50.00, 1, '2021-06-23 18:00:00', NULL),
(1157, 'C1434', 19.00, 430.00, 430.00, 500.00, 430.00, 1, '2021-06-23 18:00:00', NULL),
(1158, 'C1435', 105.00, 110.70, 110.70, 125.00, 110.70, 1, '2021-06-23 18:00:00', NULL),
(1159, 'C1437', 5.00, 904.00, 904.00, 1000.00, 904.00, 1, '2021-06-23 18:00:00', NULL),
(1160, 'C1438', 15.00, 640.00, 640.00, 750.00, 640.00, 1, '2021-06-23 18:00:00', NULL),
(1161, 'C1440', 400.00, 14.50, 14.50, 20.00, 14.50, 1, '2021-06-23 18:00:00', NULL),
(1162, 'C1441', 3.00, 900.00, 900.00, 950.00, 900.00, 1, '2021-06-23 18:00:00', NULL),
(1163, 'C1443', 1.00, 536.00, 536.00, 600.00, 536.00, 1, '2021-06-23 18:00:00', NULL),
(1164, 'C1444', 5.00, 141.00, 141.00, 160.00, 141.00, 1, '2021-06-23 18:00:00', NULL),
(1165, 'C1445', 72.00, 14.00, 14.00, 20.00, 14.00, 1, '2021-06-23 18:00:00', NULL),
(1166, 'C1446', 18.00, 120.50, 120.50, 140.00, 120.50, 1, '2021-06-23 18:00:00', NULL),
(1167, 'B1276', 1.00, 2070.00, 2070.00, 2500.00, 2070.00, 1, '2021-06-23 18:00:00', NULL),
(1168, 'C1448', 40.00, 16.80, 16.80, 25.00, 16.80, 1, '2021-06-23 18:00:00', NULL),
(1169, 'C1449', 17.00, 50.00, 50.00, 70.00, 50.00, 1, '2021-06-23 18:00:00', NULL),
(1170, 'C1450', 14.00, 80.00, 80.00, 110.00, 80.00, 1, '2021-06-23 18:00:00', NULL),
(1171, 'C1452', 94.00, 94.00, 94.00, 160.00, 94.00, 1, '2021-06-23 18:00:00', NULL),
(1172, 'C1453', 1.00, 440.00, 440.00, 600.00, 440.00, 1, '2021-06-23 18:00:00', NULL),
(1173, 'C1454', 1.00, 400.00, 400.00, 600.00, 400.00, 1, '2021-06-23 18:00:00', NULL),
(1174, 'B1279', 1.00, 2673.00, 2673.00, 2850.00, 2673.00, 1, '2021-06-23 18:00:00', NULL),
(1175, 'C1458', 6.00, 18.00, 18.00, 30.00, 18.00, 1, '2021-06-23 18:00:00', NULL),
(1176, 'C1461', 2.00, 2750.00, 2750.00, 3200.00, 2750.00, 1, '2021-06-23 18:00:00', NULL),
(1177, 'B1302', 90.00, 14.00, 14.00, 20.00, 14.00, 1, '2021-06-23 18:00:00', NULL),
(1178, 'B1311', 56.00, 13.00, 13.00, 25.00, 13.00, 1, '2021-06-23 18:00:00', NULL),
(1179, 'C1463', 1.00, 110.00, 110.00, 150.00, 110.00, 1, '2021-06-23 18:00:00', NULL),
(1180, 'C1464', 0.80, 69.00, 69.00, 300.00, 69.00, 1, '2021-06-23 18:00:00', NULL),
(1181, 'C1465', 0.70, 71.00, 71.00, 300.00, 71.00, 1, '2021-06-23 18:00:00', NULL),
(1182, 'C1469', 3.00, 335.00, 335.00, 360.00, 335.00, 1, '2021-06-23 18:00:00', NULL),
(1183, 'B1282', 30.00, 50.00, 50.00, 90.00, 50.00, 1, '2021-06-23 18:00:00', NULL),
(1184, 'B1299', 16.00, 43.20, 43.20, 80.00, 43.20, 1, '2021-06-23 18:00:00', NULL),
(1185, 'C1472', 2.00, 4500.00, 4500.00, 4700.00, 4500.00, 1, '2021-06-23 18:00:00', NULL),
(1186, 'B1312', 9.00, 47.00, 47.00, 90.00, 47.00, 1, '2021-06-23 18:00:00', NULL),
(1187, 'B1283', 40.00, 17.00, 17.00, 20.00, 17.00, 1, '2021-06-23 18:00:00', NULL),
(1188, 'C1473', 6.00, 950.00, 950.00, 1000.00, 950.00, 1, '2021-06-23 18:00:00', NULL),
(1189, 'B1211', 170.00, 12.50, 12.50, 20.00, 12.50, 1, '2021-06-23 18:00:00', NULL),
(1190, 'C1474', 9.00, 300.00, 300.00, 350.00, 300.00, 1, '2021-06-23 18:00:00', NULL),
(1191, 'B1254', 50.00, 7.00, 7.00, 15.00, 7.00, 1, '2021-06-23 18:00:00', NULL),
(1192, 'C1476', 18.00, 57.00, 57.00, 70.00, 57.00, 1, '2021-06-23 18:00:00', NULL);
INSERT INTO `stock_product` (`id`, `product_id`, `quantity`, `purchase_price`, `purchase_price_withcost`, `sale_price`, `old_and_new_purchase_price_average`, `branch_id`, `created_at`, `updated_at`) VALUES
(1193, 'B1258', 20.00, 37.00, 37.00, 45.00, 37.00, 1, '2021-06-23 18:00:00', NULL),
(1194, 'B1166', 14.00, 15.00, 15.00, 30.00, 15.00, 1, '2021-06-23 18:00:00', NULL),
(1195, 'C1477', 2.00, 4150.00, 4150.00, 4300.00, 4150.00, 1, '2021-06-23 18:00:00', NULL),
(1196, 'C1478', 2.00, 4150.00, 4150.00, 4300.00, 4150.00, 1, '2021-06-23 18:00:00', NULL),
(1197, 'C1479', 75.00, 180.00, 180.00, 200.00, 180.00, 1, '2021-06-23 18:00:00', NULL),
(1198, 'C1480', 5.00, 90.00, 90.00, 120.00, 90.00, 1, '2021-06-23 18:00:00', NULL),
(1199, 'B1281', 2.00, 1250.00, 1250.00, 1400.00, 1250.00, 1, '2021-06-23 18:00:00', NULL),
(1200, 'C1481', 2.00, 3310.00, 3310.00, 3500.00, 3310.00, 1, '2021-06-23 18:00:00', NULL),
(1201, 'C1482', 6.00, 140.00, 140.00, 170.00, 140.00, 1, '2021-06-23 18:00:00', NULL),
(1202, 'C1483', 9.00, 160.00, 160.00, 200.00, 160.00, 1, '2021-06-23 18:00:00', NULL),
(1203, 'C1484', 8.00, 130.00, 130.00, 160.00, 130.00, 1, '2021-06-23 18:00:00', NULL),
(1204, 'C1490', 3.00, 40.00, 40.00, 60.00, 40.00, 1, '2021-06-23 18:00:00', NULL),
(1205, 'C1492', 8.00, 150.00, 150.00, 170.00, 150.00, 1, '2021-06-23 18:00:00', NULL),
(1206, 'C1493', 15.00, 45.00, 45.00, 60.00, 45.00, 1, '2021-06-23 18:00:00', NULL),
(1207, 'C1495', 44.00, 80.00, 80.00, 100.00, 80.00, 1, '2021-06-23 18:00:00', NULL),
(1208, 'C1496', 2.00, 4200.00, 4200.00, 6000.00, 4200.00, 1, '2021-06-23 18:00:00', NULL),
(1209, 'C1498', 85.00, 6.00, 6.00, 10.00, 6.00, 1, '2021-06-23 18:00:00', NULL),
(1210, 'C1503', 9.00, 260.00, 260.00, 300.00, 260.00, 1, '2021-06-23 18:00:00', NULL),
(1211, 'C1504', 2.00, 280.00, 280.00, 450.00, 280.00, 1, '2021-06-23 18:00:00', NULL),
(1212, 'C1505', 2.00, 4100.00, 4100.00, 4300.00, 4100.00, 1, '2021-06-23 18:00:00', NULL),
(1213, 'B1313', 4.00, 430.00, 430.00, 550.00, 430.00, 1, '2021-06-23 18:00:00', NULL),
(1214, 'C1506', 11.00, 280.00, 280.00, 300.00, 280.00, 1, '2021-06-23 18:00:00', NULL),
(1215, 'C1515', 2.00, 310.00, 310.00, 340.00, 310.00, 1, '2021-06-23 18:00:00', NULL),
(1216, 'C1517', 9.00, 170.00, 170.00, 200.00, 170.00, 1, '2021-06-23 18:00:00', NULL),
(1217, 'C1519', 5.00, 129.00, 129.00, 160.00, 129.00, 1, '2021-06-23 18:00:00', NULL),
(1218, 'B1321', 4.00, 1824.00, 1824.00, 3000.00, 1824.00, 1, '2021-06-23 18:00:00', NULL),
(1219, 'C1520', 12.00, 130.00, 130.00, 160.00, 130.00, 1, '2021-06-23 18:00:00', NULL),
(1220, 'C1522', 4.00, 148.00, 148.00, 200.00, 148.00, 1, '2021-06-23 18:00:00', NULL),
(1221, 'C1525', 3.00, 800.00, 800.00, 900.00, 800.00, 1, '2021-06-23 18:00:00', NULL),
(1222, 'C1526', 15.00, 50.00, 50.00, 90.00, 50.00, 1, '2021-06-23 18:00:00', NULL),
(1223, 'C1527', 4.00, 8.00, 8.00, 15.00, 8.00, 1, '2021-06-23 18:00:00', NULL),
(1224, 'C1532', 1.00, 285.00, 285.00, 350.00, 285.00, 1, '2021-06-23 18:00:00', NULL),
(1225, 'C1534', 2.00, 1520.00, 1520.00, 2000.00, 1520.00, 1, '2021-06-23 18:00:00', NULL),
(1226, 'C1537', 1.00, 540.00, 540.00, 650.00, 540.00, 1, '2021-06-23 18:00:00', NULL),
(1227, 'B1326', 1.00, 1940.40, 1940.40, 2250.00, 1940.40, 1, '2021-06-23 18:00:00', NULL),
(1228, 'C1535', 1.00, 400.00, 400.00, 600.00, 400.00, 1, '2021-06-23 18:00:00', NULL),
(1229, 'C1539', 6.00, 320.00, 320.00, 350.00, 320.00, 1, '2021-06-23 18:00:00', NULL),
(1230, 'C1545', 3.00, 850.00, 850.00, 950.00, 850.00, 1, '2021-06-23 18:00:00', NULL),
(1231, 'C1547', 1.00, 850.00, 850.00, 950.00, 850.00, 1, '2021-06-23 18:00:00', NULL),
(1232, 'C1551', 1.00, 330.00, 330.00, 360.00, 330.00, 1, '2021-06-23 18:00:00', NULL),
(1233, 'C1553', 1.00, 330.00, 330.00, 360.00, 330.00, 1, '2021-06-23 18:00:00', NULL),
(1234, 'C1557', 2.00, 330.00, 330.00, 360.00, 330.00, 1, '2021-06-23 18:00:00', NULL),
(1235, 'C1561', 7.00, 330.00, 330.00, 360.00, 330.00, 1, '2021-06-23 18:00:00', NULL),
(1236, 'C1563', 3.00, 330.00, 330.00, 360.00, 330.00, 1, '2021-06-23 18:00:00', NULL),
(1237, 'C1567', 2.00, 320.00, 320.00, 350.00, 320.00, 1, '2021-06-23 18:00:00', NULL),
(1238, 'C1711', 4.00, 330.00, 330.00, 360.00, 330.00, 1, '2021-06-23 18:00:00', NULL),
(1239, 'C1701', 4.00, 325.00, 325.00, 360.00, 325.00, 1, '2021-06-23 18:00:00', NULL),
(1240, 'C1568', 4.00, 1030.00, 1030.00, 1100.00, 1030.00, 1, '2021-06-23 18:00:00', NULL),
(1241, 'C1569', 3.00, 285.00, 285.00, 300.00, 285.00, 1, '2021-06-23 18:00:00', NULL),
(1242, 'C1571', 4.00, 280.00, 280.00, 300.00, 280.00, 1, '2021-06-23 18:00:00', NULL),
(1243, 'C1574', 2.00, 1030.00, 1030.00, 1100.00, 1030.00, 1, '2021-06-23 18:00:00', NULL),
(1244, 'C1575', 3.00, 280.00, 280.00, 300.00, 280.00, 1, '2021-06-23 18:00:00', NULL),
(1245, 'C1576', 3.00, 1030.00, 1030.00, 1100.00, 1030.00, 1, '2021-06-23 18:00:00', NULL),
(1246, 'C1577', 5.00, 280.00, 280.00, 300.00, 280.00, 1, '2021-06-23 18:00:00', NULL),
(1247, 'C1578', 4.00, 280.00, 280.00, 300.00, 280.00, 1, '2021-06-23 18:00:00', NULL),
(1248, 'C1580', 3.00, 280.00, 280.00, 300.00, 280.00, 1, '2021-06-23 18:00:00', NULL),
(1249, 'C1582', 4.00, 280.00, 280.00, 300.00, 280.00, 1, '2021-06-23 18:00:00', NULL),
(1250, 'C1583', 5.00, 1020.00, 1020.00, 1100.00, 1020.00, 1, '2021-06-23 18:00:00', NULL),
(1251, 'C1586', 3.00, 280.00, 280.00, 300.00, 280.00, 1, '2021-06-23 18:00:00', NULL),
(1252, 'C1588', 11.00, 280.00, 280.00, 300.00, 280.00, 1, '2021-06-23 18:00:00', NULL),
(1253, 'C1589', 2.00, 1030.00, 1030.00, 1100.00, 1030.00, 1, '2021-06-23 18:00:00', NULL),
(1254, 'C1590', 7.00, 280.00, 280.00, 300.00, 280.00, 1, '2021-06-23 18:00:00', NULL),
(1255, 'C1593', 4.00, 280.00, 280.00, 300.00, 280.00, 1, '2021-06-23 18:00:00', NULL),
(1256, 'C1596', 10.00, 175.00, 175.00, 220.00, 175.00, 1, '2021-06-23 18:00:00', NULL),
(1257, 'C1554', 1.00, 1506.00, 1506.00, 1600.00, 1506.00, 1, '2021-06-23 18:00:00', NULL),
(1258, 'C1556', 1.00, 1506.00, 1506.00, 1600.00, 1506.00, 1, '2021-06-23 18:00:00', NULL),
(1259, 'C1564', 2.00, 1500.00, 1500.00, 1600.00, 1500.00, 1, '2021-06-23 18:00:00', NULL),
(1260, 'C1623', 1.00, 1020.00, 1020.00, 1100.00, 1020.00, 1, '2021-06-23 18:00:00', NULL),
(1261, 'C1624', 4.00, 280.00, 280.00, 300.00, 280.00, 1, '2021-06-23 18:00:00', NULL),
(1262, 'C1637', 2.00, 145.00, 145.00, 180.00, 145.00, 1, '2021-06-23 18:00:00', NULL),
(1263, 'C1639', 2.00, 929.00, 929.00, 1100.00, 929.00, 1, '2021-06-23 18:00:00', NULL),
(1264, 'C1640', 17.00, 280.00, 280.00, 300.00, 280.00, 1, '2021-06-23 18:00:00', NULL),
(1265, 'C1642', 7.00, 230.00, 230.00, 250.00, 230.00, 1, '2021-06-23 18:00:00', NULL),
(1266, 'C1644', 2.00, 230.00, 230.00, 250.00, 230.00, 1, '2021-06-23 18:00:00', NULL),
(1267, 'C1650', 2.00, 1400.00, 1400.00, 1550.00, 1400.00, 1, '2021-06-23 18:00:00', NULL),
(1268, 'C1651', 6.00, 380.00, 380.00, 450.00, 380.00, 1, '2021-06-23 18:00:00', NULL),
(1269, 'C1652', 7.00, 145.00, 145.00, 160.00, 145.00, 1, '2021-06-23 18:00:00', NULL),
(1270, 'C1654', 17.00, 280.00, 280.00, 300.00, 280.00, 1, '2021-06-23 18:00:00', NULL),
(1271, 'C1658', 2.00, 1020.00, 1020.00, 1100.00, 1020.00, 1, '2021-06-25 18:00:00', NULL),
(1272, 'B1347', 1.00, 2700.00, 2700.00, 3000.00, 2700.00, 1, '2021-06-25 18:00:00', NULL),
(1273, 'B1348', 3.00, 1225.00, 1225.00, 1450.00, 1225.00, 1, '2021-06-25 18:00:00', NULL),
(1274, 'B1349', 3.00, 850.00, 850.00, 1150.00, 850.00, 1, '2021-06-25 18:00:00', NULL),
(1275, 'C1659', 3.00, 6300.00, 6300.00, 6500.00, 6300.00, 1, '2021-06-25 18:00:00', NULL),
(1276, 'C1660', 1.00, 1250.00, 1250.00, 1350.00, 1250.00, 1, '2021-06-25 18:00:00', NULL),
(1277, 'C1661', 4.00, 1329.00, 1329.00, 1350.00, 1329.00, 1, '2021-06-25 18:00:00', NULL),
(1278, 'C1662', 1.00, 780.00, 780.00, 850.00, 780.00, 1, '2021-06-25 18:00:00', NULL),
(1279, 'C1663', 4.00, 1020.00, 1020.00, 1100.00, 1020.00, 1, '2021-06-25 18:00:00', NULL),
(1280, 'C1664', 10.00, 280.00, 280.00, 300.00, 280.00, 1, '2021-06-25 18:00:00', NULL),
(1281, 'C1666', 1.00, 3700.00, 3700.00, 4000.00, 3700.00, 14, '2021-06-25 18:00:00', NULL),
(1282, 'B1041', 2.00, 9757.00, 9757.00, 12430.00, 9757.00, 1, '2021-06-25 18:00:00', NULL),
(1283, 'C1682', 5.00, 57.00, 57.00, 90.00, 57.00, 1, '2021-06-25 18:00:00', NULL),
(1284, 'C1687', 1.00, 7900.00, 7900.00, 8000.00, 7900.00, 1, '2021-06-25 18:00:00', NULL),
(1285, 'C1688', 2.00, 1350.00, 1350.00, 1400.00, 1350.00, 1, '2021-06-25 18:00:00', NULL),
(1286, 'C1690', 2.00, 1150.00, 1150.00, 1250.00, 1150.00, 1, '2021-06-25 18:00:00', NULL),
(1287, 'B1040', 3.00, 9556.00, 9556.00, 10858.00, 9556.00, 1, '2021-06-25 18:00:00', NULL),
(1288, 'B0131', 3.00, 6427.50, 6427.50, 7800.00, 6427.50, 1, '2021-06-25 18:00:00', NULL),
(1289, 'B1370', 3.00, 1720.00, 1720.00, 2100.00, 1720.00, 1, '2021-06-25 18:00:00', NULL),
(1290, 'B1369', 1.00, 1722.00, 1722.00, 1919.00, 1722.00, 1, '2021-06-25 18:00:00', NULL),
(1291, 'C1692', 3.00, 126.00, 126.00, 135.00, 126.00, 1, '2021-06-25 18:00:00', NULL),
(1292, 'B1371', 1.00, 4168.00, 4168.00, 4631.00, 4168.00, 1, '2021-06-25 18:00:00', NULL),
(1293, 'B1367', 1.00, 4900.00, 4900.00, 6246.00, 4900.00, 1, '2021-06-25 18:00:00', NULL),
(1294, 'B1273', 2.00, 6660.00, 6660.00, 7450.00, 6660.00, 1, '2021-06-25 18:00:00', NULL),
(1295, 'B1270', 2.00, 6300.00, 6300.00, 7000.00, 6300.00, 1, '2021-06-25 18:00:00', NULL),
(1296, 'B1060', 9.00, 1620.00, 1620.00, 1885.00, 1620.00, 1, '2021-06-25 18:00:00', NULL),
(1297, 'B0135', 22.00, 2254.56, 2254.56, 2600.00, 2254.56, 1, '2021-06-25 18:00:00', NULL),
(1298, 'B0535', 5.00, 1495.00, 1495.00, 1698.00, 1495.00, 1, '2021-06-25 18:00:00', NULL),
(1299, 'B1235', 5.00, 1003.20, 1003.20, 1250.00, 1003.20, 1, '2021-06-25 18:00:00', NULL),
(1300, 'B0011', 10.00, 2158.00, 2158.00, 2495.00, 2158.00, 1, '2021-06-25 18:00:00', NULL),
(1301, 'B0139', 29.00, 2865.00, 2865.00, 3300.00, 2865.00, 1, '2021-06-25 18:00:00', NULL),
(1302, 'B0119', 6.00, 2455.00, 2455.00, 3200.00, 2455.00, 1, '2021-06-25 18:00:00', NULL),
(1303, 'C1697', 2.00, 4150.00, 4150.00, 4300.00, 4150.00, 1, '2021-06-25 18:00:00', NULL),
(1304, 'C1698', 1.00, 6241.00, 6241.00, 6350.00, 6241.00, 1, '2021-06-25 18:00:00', NULL),
(1305, 'B0134', 1.00, 1800.00, 1800.00, 2400.00, 1800.00, 1, '2021-06-25 18:00:00', NULL),
(1306, 'B0138', 1.00, 2173.50, 2173.50, 2300.00, 2173.50, 1, '2021-06-25 18:00:00', NULL),
(1307, 'C1699', 5.00, 1400.00, 1400.00, 1450.00, 1400.00, 1, '2021-06-25 18:00:00', NULL),
(1308, 'B1153', 4.00, 3297.00, 3297.00, 3810.00, 3297.00, 1, '2021-06-25 18:00:00', NULL),
(1309, 'C1702', 1.00, 1600.00, 1600.00, 1650.00, 1600.00, 1, '2021-06-25 18:00:00', NULL),
(1310, 'C1703', 6.00, 1050.00, 1050.00, 1150.00, 1050.00, 1, '2021-06-25 18:00:00', NULL),
(1311, 'B0362', 11.00, 2645.00, 2645.00, 3000.00, 2645.00, 1, '2021-06-25 18:00:00', NULL),
(1312, 'C1705', 1.00, 145.00, 145.00, 160.00, 145.00, 1, '2021-06-25 18:00:00', NULL),
(1313, 'B0364', 3.00, 3050.00, 3050.00, 3345.00, 3050.00, 1, '2021-06-25 18:00:00', NULL),
(1314, 'B0363', 4.00, 3590.00, 3590.00, 3850.00, 3590.00, 1, '2021-06-25 18:00:00', NULL),
(1315, 'C1706', 1.00, 260.00, 260.00, 300.00, 260.00, 1, '2021-06-25 18:00:00', NULL),
(1316, 'C1707', 2.00, 1000.00, 1000.00, 1200.00, 1000.00, 1, '2021-06-25 18:00:00', NULL),
(1317, 'B0200', 12.00, 122.00, 122.00, 160.00, 122.00, 1, '2021-06-25 18:00:00', NULL),
(1318, 'C1708', 1.00, 1700.00, 1700.00, 1850.00, 1700.00, 1, '2021-06-25 18:00:00', NULL),
(1319, 'B0209', 12.00, 296.00, 296.00, 330.00, 296.00, 1, '2021-06-25 18:00:00', NULL),
(1320, 'B0207', 15.00, 170.00, 170.00, 305.00, 170.00, 1, '2021-06-25 18:00:00', NULL),
(1321, 'C1710', 1.00, 1500.00, 1500.00, 1600.00, 1500.00, 1, '2021-06-25 18:00:00', NULL),
(1322, 'B0208', 52.00, 170.00, 170.00, 210.00, 170.00, 1, '2021-06-25 18:00:00', NULL),
(1323, 'C1716', 6.00, 330.00, 330.00, 400.00, 330.00, 1, '2021-06-25 18:00:00', NULL),
(1324, 'B0213', 18.00, 162.00, 162.00, 230.00, 162.00, 1, '2021-06-25 18:00:00', NULL),
(1325, 'C1731', 1.00, 330.00, 330.00, 400.00, 330.00, 1, '2021-06-25 18:00:00', NULL),
(1326, 'B0202', 38.00, 130.00, 130.00, 250.00, 130.00, 1, '2021-06-25 18:00:00', NULL),
(1327, 'B0206', 23.00, 133.00, 133.00, 240.00, 133.00, 1, '2021-06-25 18:00:00', NULL),
(1328, 'B0201', 32.00, 130.00, 130.00, 250.00, 130.00, 1, '2021-06-25 18:00:00', NULL),
(1329, 'B0210', 13.00, 178.40, 178.40, 255.00, 178.40, 1, '2021-06-25 18:00:00', NULL),
(1330, 'C1718', 2.00, 470.00, 470.00, 500.00, 470.00, 1, '2021-06-25 18:00:00', NULL),
(1331, 'C1719', 3.00, 480.00, 480.00, 500.00, 480.00, 1, '2021-06-25 18:00:00', NULL),
(1332, 'B1252', 10.00, 259.12, 259.12, 316.00, 259.12, 1, '2021-06-25 18:00:00', NULL),
(1333, 'C1720', 1.00, 1680.00, 1680.00, 1750.00, 1680.00, 1, '2021-06-25 18:00:00', NULL),
(1334, 'C1721', 2.00, 1570.00, 1570.00, 1650.00, 1570.00, 1, '2021-06-25 18:00:00', NULL),
(1335, 'B0114', 5.00, 225.00, 225.00, 255.00, 225.00, 1, '2021-06-25 18:00:00', NULL),
(1336, 'B0218', 20.00, 140.00, 140.00, 357.00, 140.00, 1, '2021-06-25 18:00:00', NULL),
(1337, 'C1722', 9.00, 840.00, 840.00, 950.00, 840.00, 1, '2021-06-25 18:00:00', NULL),
(1338, 'C1724', 3.00, 850.00, 850.00, 950.00, 850.00, 1, '2021-06-25 18:00:00', NULL),
(1339, 'B0107', 12.00, 142.00, 142.00, 220.00, 142.00, 1, '2021-06-25 18:00:00', NULL),
(1340, 'C1728', 3.00, 3600.00, 3600.00, 3850.00, 3600.00, 1, '2021-06-25 18:00:00', NULL),
(1341, 'C1730', 11.00, 280.00, 280.00, 300.00, 280.00, 1, '2021-06-25 18:00:00', NULL),
(1342, 'C1732', 2.00, 840.00, 840.00, 950.00, 840.00, 1, '2021-06-25 18:00:00', NULL),
(1343, 'C1733', 3.00, 1760.00, 1760.00, 1820.00, 1760.00, 1, '2021-06-25 18:00:00', NULL),
(1344, 'C1735', 8.00, 1300.00, 1300.00, 1350.00, 1300.00, 1, '2021-06-25 18:00:00', NULL),
(1345, 'C1737', 5.00, 900.00, 900.00, 950.00, 900.00, 1, '2021-06-25 18:00:00', NULL),
(1346, 'C1738', 3.00, 900.00, 900.00, 950.00, 900.00, 1, '2021-06-25 18:00:00', NULL),
(1347, 'C1739', 4.00, 6400.00, 6400.00, 6500.00, 6400.00, 1, '2021-06-25 18:00:00', NULL),
(1348, 'C1641', 2.00, 4900.00, 4900.00, 5200.00, 4900.00, 1, '2021-06-25 18:00:00', NULL),
(1349, 'C0457', 143.00, 15.00, 15.00, 20.00, 15.00, 1, '2021-06-25 18:00:00', NULL),
(1350, 'C1606', 4.00, 615.00, 615.00, 650.00, 615.00, 1, '2021-06-25 18:00:00', NULL),
(1351, 'C1607', 3.00, 795.00, 795.00, 830.00, 795.00, 1, '2021-06-25 18:00:00', NULL),
(1352, 'C1608', 2.00, 600.00, 600.00, 650.00, 600.00, 1, '2021-06-25 18:00:00', NULL),
(1353, 'C1609', 2.00, 900.00, 900.00, 950.00, 900.00, 1, '2021-06-25 18:00:00', NULL),
(1354, 'C1610', 2.00, 700.00, 700.00, 750.00, 700.00, 1, '2021-06-25 18:00:00', NULL),
(1355, 'C1611', 4.00, 1100.00, 1100.00, 1150.00, 1100.00, 1, '2021-06-25 18:00:00', NULL),
(1356, 'C1612', 1.00, 580.00, 580.00, 650.00, 580.00, 1, '2021-06-25 18:00:00', NULL),
(1357, 'C1613', 1.00, 900.00, 900.00, 950.00, 900.00, 1, '2021-06-25 18:00:00', NULL),
(1358, 'C1614', 1.00, 680.00, 680.00, 750.00, 680.00, 1, '2021-06-25 18:00:00', NULL),
(1359, 'C1615', 1.00, 1500.00, 1500.00, 1550.00, 1500.00, 1, '2021-06-25 18:00:00', NULL),
(1360, 'C1617', 3.00, 3500.00, 3500.00, 3600.00, 3500.00, 1, '2021-06-25 18:00:00', NULL),
(1361, 'C1619', 1.00, 830.00, 830.00, 900.00, 830.00, 1, '2021-06-25 18:00:00', NULL),
(1362, 'C1620', 2.00, 880.00, 880.00, 950.00, 880.00, 1, '2021-06-25 18:00:00', NULL),
(1363, 'C1616', 1.00, 2600.00, 2600.00, 2700.00, 2600.00, 1, '2021-06-25 18:00:00', NULL),
(1364, 'B0432', 91.00, 16.00, 16.00, 25.00, 16.00, 1, '2021-06-25 18:00:00', NULL),
(1365, 'B0434', 141.00, 25.00, 25.00, 35.00, 25.00, 1, '2021-06-25 18:00:00', NULL),
(1366, 'B0431', 117.00, 31.00, 31.00, 35.00, 31.00, 1, '2021-06-25 18:00:00', NULL),
(1367, 'B0420', 40.00, 35.00, 35.00, 48.00, 35.00, 1, '2021-06-25 18:00:00', NULL),
(1368, 'B0438', 48.00, 24.00, 24.00, 45.00, 24.00, 1, '2021-06-25 18:00:00', NULL),
(1369, 'B0433', 247.00, 12.00, 12.00, 302.00, 12.00, 1, '2021-06-25 18:00:00', NULL),
(1370, 'B0436', 1475.00, 15.00, 15.00, 20.00, 15.00, 1, '2021-06-25 18:00:00', NULL),
(1371, 'B0440', 612.00, 12.00, 12.00, 20.00, 12.00, 1, '2021-06-25 18:00:00', NULL),
(1372, 'B0439', 32.00, 36.00, 36.00, 50.00, 36.00, 1, '2021-06-25 18:00:00', NULL),
(1373, 'B0451', 75.00, 26.00, 26.00, 35.00, 26.00, 1, '2021-06-25 18:00:00', NULL),
(1374, 'B0437', 73.00, 22.00, 22.00, 40.00, 22.00, 1, '2021-06-25 18:00:00', NULL),
(1375, 'B0473', 30.00, 69.00, 69.00, 85.00, 69.00, 1, '2021-06-25 18:00:00', NULL),
(1376, 'B0515', 6.00, 90.00, 90.00, 100.00, 90.00, 1, '2021-06-25 18:00:00', NULL),
(1377, 'B0469', 36.00, 68.00, 68.00, 120.00, 68.00, 1, '2021-06-25 18:00:00', NULL),
(1378, 'B0503', 14.00, 160.00, 160.00, 260.00, 160.00, 1, '2021-06-25 18:00:00', NULL),
(1379, 'B0457', 5.00, 50.00, 50.00, 60.00, 50.00, 1, '2021-06-25 18:00:00', NULL),
(1380, 'B0476', 18.00, 68.00, 68.00, 85.00, 68.00, 1, '2021-06-25 18:00:00', NULL),
(1381, 'B1020', 22.00, 40.00, 40.00, 75.00, 40.00, 1, '2021-06-25 18:00:00', NULL),
(1382, 'B0471', 105.00, 51.00, 51.00, 60.00, 51.00, 1, '2021-06-25 18:00:00', NULL),
(1383, 'B0427', 362.00, 38.00, 38.00, 45.00, 38.00, 1, '2021-06-25 18:00:00', NULL),
(1384, 'B0459', 120.00, 75.00, 75.00, 105.00, 75.00, 1, '2021-06-25 18:00:00', NULL),
(1385, 'B0421', 460.00, 10.00, 10.00, 25.00, 10.00, 1, '2021-06-25 18:00:00', NULL),
(1386, 'B0422', 700.00, 10.00, 10.00, 15.00, 10.00, 1, '2021-06-25 18:00:00', NULL),
(1387, 'B1272', 16.00, 10.00, 10.00, 15.00, 10.00, 1, '2021-06-25 18:00:00', NULL),
(1388, 'B0423', 647.00, 12.00, 12.00, 16.00, 12.00, 1, '2021-06-25 18:00:00', NULL),
(1389, 'B0425', 165.00, 8.00, 8.00, 15.00, 8.00, 1, '2021-06-25 18:00:00', NULL),
(1390, 'B0498', 19.00, 18.00, 18.00, 25.00, 18.00, 1, '2021-06-25 18:00:00', NULL),
(1391, 'B0506', 20.00, 24.00, 24.00, 50.00, 24.00, 1, '2021-06-25 18:00:00', NULL),
(1392, 'B0450', 150.00, 15.00, 15.00, 30.00, 15.00, 1, '2021-06-25 18:00:00', NULL),
(1393, 'B0453', 269.00, 38.00, 38.00, 48.00, 38.00, 1, '2021-06-25 18:00:00', NULL),
(1394, 'B0500', 17.00, 25.00, 25.00, 40.00, 25.00, 1, '2021-06-25 18:00:00', NULL),
(1395, 'B0460', 15.00, 112.00, 112.00, 140.00, 112.00, 1, '2021-06-25 18:00:00', NULL),
(1396, 'B0496', 43.00, 110.00, 110.00, 130.00, 110.00, 1, '2021-06-25 18:00:00', NULL),
(1397, 'B0508', 9.00, 75.00, 75.00, 90.00, 75.00, 1, '2021-06-25 18:00:00', NULL),
(1398, 'B0507', 3.00, 42.00, 42.00, 60.00, 42.00, 1, '2021-06-25 18:00:00', NULL),
(1399, 'B0499', 35.00, 20.00, 20.00, 40.00, 20.00, 1, '2021-06-25 18:00:00', NULL),
(1400, 'B0455', 220.00, 32.00, 32.00, 40.00, 32.00, 1, '2021-06-25 18:00:00', NULL),
(1401, 'C1668', 5.00, 1130.00, 1130.00, 1250.00, 1130.00, 1, '2021-06-25 18:00:00', NULL),
(1402, 'C1669', 12.00, 280.00, 280.00, 300.00, 280.00, 1, '2021-06-25 18:00:00', NULL),
(1403, 'C1670', 1.00, 1100.00, 1100.00, 1200.00, 1100.00, 1, '2021-06-25 18:00:00', NULL),
(1404, 'C1671', 9.00, 250.00, 250.00, 280.00, 250.00, 1, '2021-06-25 18:00:00', NULL),
(1405, 'C1672', 4.00, 830.00, 830.00, 950.00, 830.00, 1, '2021-06-25 18:00:00', NULL),
(1406, 'C1673', 10.00, 230.00, 230.00, 260.00, 230.00, 1, '2021-06-25 18:00:00', NULL),
(1407, 'C1674', 4.00, 700.00, 700.00, 800.00, 700.00, 1, '2021-06-25 18:00:00', NULL),
(1408, 'C1675', 3.00, 200.00, 200.00, 250.00, 200.00, 1, '2021-06-25 18:00:00', NULL),
(1409, 'C1676', 2.00, 850.00, 850.00, 900.00, 850.00, 1, '2021-06-25 18:00:00', NULL),
(1410, 'C1677', 3.00, 250.00, 250.00, 300.00, 250.00, 1, '2021-06-25 18:00:00', NULL),
(1411, 'C1678', 3.00, 2700.00, 2700.00, 2800.00, 2700.00, 1, '2021-06-25 18:00:00', NULL),
(1412, 'B0489', 1.00, 65.00, 65.00, 90.00, 65.00, 1, '2021-06-25 18:00:00', NULL),
(1413, 'C1628', 2.00, 4280.00, 4280.00, 4400.00, 4280.00, 1, '2021-06-25 18:00:00', NULL),
(1414, 'C1629', 3.00, 950.00, 950.00, 1050.00, 950.00, 1, '2021-06-25 18:00:00', NULL),
(1415, 'C1631', 2.00, 4160.00, 4160.00, 4250.00, 4160.00, 1, '2021-06-25 18:00:00', NULL),
(1416, 'C1632', 2.00, 900.00, 900.00, 1000.00, 900.00, 1, '2021-06-25 18:00:00', NULL),
(1417, 'C1635', 7.00, 1050.00, 1050.00, 1150.00, 1050.00, 1, '2021-06-25 18:00:00', NULL),
(1418, 'C1597', 2.00, 3890.00, 3890.00, 3950.00, 3890.00, 1, '2021-06-25 18:00:00', NULL),
(1419, 'C1598', 2.00, 900.00, 900.00, 1000.00, 900.00, 1, '2021-06-25 18:00:00', NULL),
(1420, 'C1599', 5.00, 240.00, 240.00, 280.00, 240.00, 1, '2021-06-25 18:00:00', NULL),
(1421, 'C1601', 5.00, 830.00, 830.00, 970.00, 830.00, 1, '2021-06-25 18:00:00', NULL),
(1422, 'C1603', 2.00, 3020.00, 3020.00, 3150.00, 3020.00, 1, '2021-06-25 18:00:00', NULL),
(1423, 'B0466', 85.00, 62.00, 62.00, 70.00, 62.00, 1, '2021-06-25 18:00:00', NULL),
(1424, 'B0452', 375.00, 30.00, 30.00, 36.00, 30.00, 1, '2021-06-25 18:00:00', NULL),
(1425, 'D0023', 2200.00, 21.03, 21.03, 26.00, 21.03, 1, '2021-06-25 18:00:00', NULL),
(1426, 'D0027', 350.00, 44.50, 44.50, 47.00, 44.50, 14, '2021-06-25 18:00:00', '2021-06-28 18:00:00'),
(1427, 'D0044', 40.00, 4.35, 4.35, 6.00, 4.35, 1, '2021-06-25 18:00:00', NULL),
(1428, 'D0047', 230.00, 5.50, 5.50, 8.00, 5.50, 1, '2021-06-25 18:00:00', NULL),
(1429, 'D0051', 373.00, 2.20, 2.20, 5.00, 2.20, 14, '2021-06-25 18:00:00', '2021-07-01 18:00:00'),
(1430, 'C1602', 2.00, 240.00, 240.00, 280.00, 240.00, 1, '2021-06-25 18:00:00', NULL),
(1431, 'D0052', 70.00, 1.84, 1.84, 4.00, 1.84, 1, '2021-06-25 18:00:00', NULL),
(1432, 'C1604', 3.00, 700.00, 700.00, 850.00, 700.00, 1, '2021-06-25 18:00:00', NULL),
(1433, 'D0053', 80.00, 2.08, 2.08, 4.00, 2.08, 14, '2021-06-25 18:00:00', '2021-07-01 18:00:00'),
(1434, 'C1605', 8.00, 200.00, 200.00, 250.00, 200.00, 1, '2021-06-25 18:00:00', NULL),
(1435, 'D0054', 40.00, 4.80, 4.80, 6.00, 4.80, 1, '2021-06-25 18:00:00', NULL),
(1436, 'D0055', 80.00, 4.80, 4.80, 6.00, 4.80, 1, '2021-06-25 18:00:00', NULL),
(1437, 'C1627', 14.00, 250.00, 250.00, 300.00, 250.00, 1, '2021-06-25 18:00:00', NULL),
(1438, 'D0056', 120.00, 4.17, 4.17, 6.00, 4.17, 1, '2021-06-25 18:00:00', NULL),
(1439, 'C1630', 5.00, 300.00, 300.00, 350.00, 300.00, 1, '2021-06-25 18:00:00', NULL),
(1440, 'B0487', 34.00, 140.00, 140.00, 155.00, 140.00, 1, '2021-06-25 18:00:00', NULL),
(1441, 'C1633', 7.00, 267.00, 267.00, 300.00, 267.00, 1, '2021-06-25 18:00:00', NULL),
(1442, 'B0444', 52.00, 25.00, 25.00, 54.00, 25.00, 1, '2021-06-25 18:00:00', NULL),
(1443, 'C1636', 6.00, 267.00, 267.00, 300.00, 267.00, 1, '2021-06-25 18:00:00', NULL),
(1444, 'B0443', 120.00, 21.00, 21.00, 30.00, 21.00, 1, '2021-06-25 18:00:00', NULL),
(1445, 'B0445', 49.00, 25.00, 25.00, 65.00, 25.00, 1, '2021-06-25 18:00:00', NULL),
(1446, 'B0442', 115.00, 23.00, 23.00, 30.00, 23.00, 1, '2021-06-25 18:00:00', NULL),
(1447, 'C0753', 2.00, 600.00, 600.00, 650.00, 600.00, 1, '2021-06-25 18:00:00', NULL),
(1448, 'C0754', 3.00, 2400.00, 2400.00, 2450.00, 2400.00, 1, '2021-06-25 18:00:00', NULL),
(1449, 'C0755', 5.00, 1500.00, 1500.00, 1550.00, 1500.00, 1, '2021-06-25 18:00:00', NULL),
(1450, 'B0448', 162.00, 35.00, 35.00, 46.00, 35.00, 1, '2021-06-25 18:00:00', NULL),
(1451, 'C0756', 2.00, 800.00, 800.00, 850.00, 800.00, 1, '2021-06-25 18:00:00', NULL),
(1452, 'C0757', 5.00, 800.00, 800.00, 850.00, 800.00, 1, '2021-06-25 18:00:00', NULL),
(1453, 'C0758', 5.00, 1700.00, 1700.00, 1750.00, 1700.00, 1, '2021-06-25 18:00:00', NULL),
(1454, 'C0759', 2.00, 1700.00, 1700.00, 1750.00, 1700.00, 1, '2021-06-25 18:00:00', NULL),
(1455, 'C0760', 3.00, 2200.00, 2200.00, 2250.00, 2200.00, 1, '2021-06-25 18:00:00', NULL),
(1456, 'C0763', 3.00, 600.00, 600.00, 650.00, 600.00, 1, '2021-06-25 18:00:00', NULL),
(1457, 'C0764', 2.00, 1550.00, 1550.00, 1600.00, 1550.00, 1, '2021-06-25 18:00:00', NULL),
(1458, 'C0765', 6.00, 3300.00, 3300.00, 3400.00, 3300.00, 1, '2021-06-25 18:00:00', NULL),
(1459, 'C0766', 9.00, 1100.00, 1100.00, 1150.00, 1100.00, 1, '2021-06-25 18:00:00', NULL),
(1460, 'C0767', 1.00, 1150.00, 1150.00, 1200.00, 1150.00, 1, '2021-06-25 18:00:00', NULL),
(1461, 'C0768', 2.00, 950.00, 950.00, 1000.00, 950.00, 1, '2021-06-25 18:00:00', NULL),
(1462, 'B1056', 30.00, 80.00, 80.00, 100.00, 80.00, 1, '2021-06-25 18:00:00', NULL),
(1463, 'B1110', 22.00, 50.00, 50.00, 60.00, 50.00, 1, '2021-06-25 18:00:00', NULL),
(1464, 'B1111', 9.00, 60.00, 60.00, 85.00, 60.00, 1, '2021-06-25 18:00:00', NULL),
(1465, 'D0057', 128.00, 5.30, 5.30, 6.00, 5.30, 14, '2021-06-25 18:00:00', '2021-07-01 18:00:00'),
(1466, 'D0066', 374.00, 22.00, 22.00, 25.00, 22.00, 1, '2021-06-25 18:00:00', NULL),
(1467, 'D0068', 318.00, 23.80, 23.80, 30.00, 23.80, 1, '2021-06-25 18:00:00', NULL),
(1468, 'D0070', 150.00, 15.00, 15.00, 20.00, 15.00, 1, '2021-06-25 18:00:00', NULL),
(1469, 'D0088', 2000.00, 1.84, 1.84, 8.00, 1.84, 14, '2021-06-25 18:00:00', '2021-07-01 18:00:00'),
(1470, 'D0089', 2800.00, 2.83, 2.83, 10.00, 2.83, 14, '2021-06-25 18:00:00', '2021-07-01 18:00:00'),
(1471, 'B0449', 110.00, 30.00, 30.00, 48.00, 30.00, 1, '2021-06-25 18:00:00', NULL),
(1472, 'D0090', 515.00, 0.50, 0.50, 1.50, 0.50, 1, '2021-06-25 18:00:00', NULL),
(1473, 'C1625', 2.00, 4280.00, 4280.00, 4400.00, 4280.00, 1, '2021-06-25 18:00:00', NULL),
(1474, 'D0092', 270.00, 1.05, 1.05, 2.50, 1.05, 1, '2021-06-25 18:00:00', NULL),
(1475, 'D0093', 1.00, 4500.00, 4500.00, 5000.00, 4500.00, 1, '2021-06-25 18:00:00', NULL),
(1476, 'D0094', 1.00, 720.00, 720.00, 1250.00, 720.00, 1, '2021-06-25 18:00:00', NULL),
(1477, 'B0473', 56.00, 69.00, 69.00, 85.00, 69.00, 1, '2021-06-25 18:00:00', NULL),
(1478, 'B0483', 9.00, 146.00, 146.00, 155.00, 146.00, 1, '2021-06-25 18:00:00', NULL),
(1479, 'C0661', 7.00, 405.00, 405.00, 550.00, 405.00, 1, '2021-06-25 18:00:00', NULL),
(1480, 'D0097', 38.00, 214.00, 214.00, 230.00, 214.00, 1, '2021-06-26 18:00:00', NULL),
(1481, 'D0099', 90.00, 35.00, 35.00, 50.00, 35.00, 1, '2021-06-26 18:00:00', NULL),
(1482, 'D0102', 36.00, 45.00, 45.00, 60.00, 45.00, 1, '2021-06-26 18:00:00', NULL),
(1483, 'D0104', 2.00, 50.00, 50.00, 70.00, 50.00, 1, '2021-06-26 18:00:00', NULL),
(1484, 'B0447', 360.00, 15.00, 15.00, 20.00, 15.00, 1, '2021-06-26 18:00:00', NULL),
(1485, 'D0106', 8.00, 85.00, 85.00, 105.00, 85.00, 1, '2021-06-26 18:00:00', NULL),
(1486, 'D0107', 65.00, 36.00, 36.00, 75.00, 36.00, 1, '2021-06-26 18:00:00', NULL),
(1487, 'D0108', 7.00, 73.00, 73.00, 110.00, 73.00, 1, '2021-06-26 18:00:00', NULL),
(1488, 'D0109', 8.00, 80.00, 80.00, 130.00, 80.00, 1, '2021-06-26 18:00:00', NULL),
(1489, 'D0111', 35.00, 83.00, 83.00, 100.00, 83.00, 1, '2021-06-26 18:00:00', NULL),
(1490, 'D0115', 80.00, 68.00, 68.00, 80.00, 68.00, 1, '2021-06-26 18:00:00', NULL),
(1491, 'D0116', 95.00, 68.00, 68.00, 80.00, 68.00, 1, '2021-06-26 18:00:00', NULL),
(1492, 'D0112', 7.00, 102.00, 102.00, 110.00, 102.00, 1, '2021-06-26 18:00:00', NULL),
(1493, 'D0114', 70.00, 73.00, 73.00, 80.00, 73.00, 1, '2021-06-26 18:00:00', NULL),
(1494, 'D0117', 80.00, 132.00, 132.00, 150.00, 132.00, 1, '2021-06-26 18:00:00', NULL),
(1495, 'D0142', 17.00, 120.00, 120.00, 140.00, 120.00, 1, '2021-06-26 18:00:00', NULL),
(1496, 'D0143', 5.00, 180.00, 180.00, 200.00, 180.00, 1, '2021-06-26 18:00:00', NULL),
(1497, 'D0145', 3.00, 144.50, 144.50, 270.00, 144.50, 1, '2021-06-26 18:00:00', NULL),
(1498, 'D0146', 5.00, 109.20, 109.20, 130.00, 109.20, 1, '2021-06-26 18:00:00', NULL),
(1499, 'D0148', 20.00, 280.50, 280.50, 320.00, 280.50, 1, '2021-06-26 18:00:00', NULL),
(1500, 'D0153', 8.00, 157.30, 157.30, 166.00, 157.30, 1, '2021-06-26 18:00:00', NULL),
(1501, 'B0727', 1.00, 15675.00, 15675.00, 16500.00, 15675.00, 1, '2021-06-26 18:00:00', NULL),
(1502, 'B0723', 1.00, 10000.00, 10000.00, 12500.00, 10000.00, 1, '2021-06-26 18:00:00', NULL),
(1503, 'B0763', 6.00, 3800.00, 3800.00, 5000.00, 3800.00, 1, '2021-06-26 18:00:00', NULL),
(1504, 'B0725', 1.00, 16000.00, 16000.00, 18500.00, 16000.00, 1, '2021-06-26 18:00:00', NULL),
(1505, 'B0724', 2.00, 22000.00, 22000.00, 24000.00, 22000.00, 1, '2021-06-26 18:00:00', NULL),
(1506, 'B0728', 3.00, 24020.00, 24020.00, 27500.00, 24020.00, 1, '2021-06-26 18:00:00', NULL),
(1507, 'B0726', 4.00, 17000.00, 17000.00, 19500.00, 17000.00, 14, '2021-06-26 18:00:00', '2021-06-28 18:00:00'),
(1508, 'B0773', 5.00, 4900.00, 4900.00, 6500.00, 4900.00, 1, '2021-06-26 18:00:00', NULL),
(1509, 'D0164', 30.00, 10.00, 10.00, 12.00, 10.00, 1, '2021-06-26 18:00:00', NULL),
(1510, 'D0165', 23.00, 77.00, 77.00, 95.00, 77.00, 1, '2021-06-26 18:00:00', NULL),
(1511, 'B0753', 5.00, 4100.00, 4100.00, 5500.00, 4100.00, 1, '2021-06-26 18:00:00', NULL),
(1512, 'B0732', 5.00, 5530.00, 5530.00, 6500.00, 5530.00, 1, '2021-06-26 18:00:00', NULL),
(1513, 'D0170', 41.00, 217.00, 217.00, 270.00, 217.00, 1, '2021-06-26 18:00:00', NULL),
(1514, 'D0172', 45.00, 378.00, 378.00, 467.00, 378.00, 1, '2021-06-26 18:00:00', NULL),
(1515, 'D0173', 13.00, 336.00, 336.00, 520.00, 336.00, 1, '2021-06-26 18:00:00', NULL),
(1516, 'D0174', 6.00, 336.00, 336.00, 410.00, 336.00, 1, '2021-06-26 18:00:00', NULL),
(1517, 'B0770', 3.00, 4700.00, 4700.00, 6500.00, 4700.00, 1, '2021-06-26 18:00:00', NULL),
(1518, 'D0175', 26.00, 289.00, 289.00, 348.00, 289.00, 1, '2021-06-26 18:00:00', NULL),
(1519, 'D0177', 23.00, 202.00, 202.00, 250.00, 202.00, 1, '2021-06-26 18:00:00', NULL),
(1520, 'D0178', 9.00, 228.00, 228.00, 282.00, 228.00, 1, '2021-06-26 18:00:00', NULL),
(1521, 'D0180', 10.00, 228.00, 228.00, 282.00, 228.00, 1, '2021-06-26 18:00:00', NULL),
(1522, 'D0182', 26.00, 227.50, 227.50, 282.00, 227.50, 1, '2021-06-26 18:00:00', NULL),
(1523, 'D0183', 10.00, 595.00, 595.00, 713.00, 595.00, 1, '2021-06-26 18:00:00', NULL),
(1524, 'D0184', 6.00, 595.00, 595.00, 713.00, 595.00, 1, '2021-06-26 18:00:00', NULL),
(1525, 'D0186', 2.00, 3180.00, 3180.00, 3499.00, 3180.00, 1, '2021-06-26 18:00:00', NULL),
(1526, 'D0188', 5.00, 499.00, 499.00, 600.00, 499.00, 14, '2021-06-26 18:00:00', '2021-07-01 18:00:00'),
(1527, 'D0190', 47.00, 26.67, 26.67, 30.00, 26.67, 1, '2021-06-26 18:00:00', NULL),
(1528, 'B1005', 3.00, 4615.00, 4615.00, 6100.00, 4615.00, 1, '2021-06-26 18:00:00', NULL),
(1529, 'D0205', 6.00, 344.00, 344.00, 430.00, 344.00, 1, '2021-06-26 18:00:00', NULL),
(1530, 'D0211', 1420.00, 9.38, 9.38, 12.00, 9.38, 1, '2021-06-26 18:00:00', NULL),
(1531, 'B1007', 2.00, 3720.00, 3720.00, 4800.00, 3720.00, 1, '2021-06-26 18:00:00', NULL),
(1532, 'D0212', 760.00, 9.38, 9.38, 12.00, 9.38, 1, '2021-06-26 18:00:00', NULL),
(1533, 'D0213', 570.00, 9.38, 9.38, 12.00, 9.38, 1, '2021-06-26 18:00:00', NULL),
(1534, 'D0214', 590.00, 9.38, 9.38, 12.00, 9.38, 1, '2021-06-26 18:00:00', NULL),
(1535, 'D0215', 53.00, 4.17, 4.17, 7.00, 4.17, 14, '2021-06-26 18:00:00', '2021-07-01 18:00:00'),
(1536, 'D0216', 215.00, 8.34, 8.34, 10.00, 8.34, 14, '2021-06-26 18:00:00', '2021-07-01 18:00:00'),
(1537, 'D0217', 9.00, 12.00, 12.00, 20.00, 12.00, 1, '2021-06-26 18:00:00', NULL),
(1538, 'D0218', 18.00, 27.00, 27.00, 40.00, 27.00, 1, '2021-06-26 18:00:00', NULL),
(1539, 'D0219', 38.00, 45.00, 45.00, 60.00, 45.00, 1, '2021-06-26 18:00:00', NULL),
(1540, 'B1372', 2.00, 917.00, 917.00, 1400.00, 917.00, 1, '2021-06-26 18:00:00', NULL),
(1541, 'D0220', 16.00, 68.00, 68.00, 80.00, 68.00, 1, '2021-06-26 18:00:00', NULL),
(1542, 'B1373', 4.00, 778.00, 778.00, 1020.00, 778.00, 1, '2021-06-26 18:00:00', NULL),
(1543, 'D0223', 6.00, 30.00, 30.00, 35.00, 30.00, 1, '2021-06-26 18:00:00', NULL),
(1544, 'D0224', 9.00, 30.00, 30.00, 35.00, 30.00, 1, '2021-06-26 18:00:00', NULL),
(1545, 'B0524', 3.00, 780.00, 780.00, 1100.00, 780.00, 1, '2021-06-26 18:00:00', NULL),
(1546, 'B0526', 1.00, 440.00, 440.00, 750.00, 440.00, 1, '2021-06-26 18:00:00', NULL),
(1547, 'D0228', 50.00, 14.17, 14.17, 25.00, 14.17, 1, '2021-06-26 18:00:00', NULL),
(1548, 'D0229', 40.00, 13.46, 13.46, 25.00, 13.46, 1, '2021-06-26 18:00:00', NULL),
(1549, 'D0241', 12.00, 67.00, 67.00, 75.00, 67.00, 1, '2021-06-26 18:00:00', NULL),
(1550, 'D0244', 5.00, 187.50, 187.50, 220.00, 187.50, 1, '2021-06-26 18:00:00', NULL),
(1551, 'D0245', 7.00, 190.00, 190.00, 202.00, 190.00, 1, '2021-06-26 18:00:00', NULL),
(1552, 'D0247', 12.00, 190.00, 190.00, 220.00, 190.00, 1, '2021-06-26 18:00:00', NULL),
(1553, 'D0249', 23.00, 163.00, 163.00, 187.00, 163.00, 1, '2021-06-26 18:00:00', NULL),
(1554, 'D0251', 18.00, 256.00, 256.00, 390.00, 256.00, 1, '2021-06-26 18:00:00', NULL),
(1555, 'D0278', 70.00, 18.00, 18.00, 30.00, 18.00, 1, '2021-06-26 18:00:00', NULL),
(1556, 'D0279', 46.00, 28.00, 28.00, 40.00, 28.00, 1, '2021-06-26 18:00:00', NULL),
(1557, 'D0271', 320.00, 4.15, 4.15, 5.00, 4.15, 1, '2021-06-26 18:00:00', NULL),
(1558, 'D0281', 320.00, 4.15, 4.15, 5.00, 4.15, 1, '2021-06-26 18:00:00', NULL),
(1559, 'D0284', 490.00, 1.80, 1.80, 3.00, 1.80, 1, '2021-06-26 18:00:00', NULL),
(1560, 'D0285', 40.00, 1.60, 1.60, 3.00, 1.60, 1, '2021-06-26 18:00:00', NULL),
(1561, 'D0287', 2000.00, 5.65, 5.65, 7.00, 5.65, 1, '2021-06-26 18:00:00', NULL),
(1562, 'D0289', 300.00, 4.00, 4.00, 8.00, 4.00, 1, '2021-06-26 18:00:00', NULL),
(1563, 'D0291', 6.00, 193.00, 193.00, 320.00, 193.00, 1, '2021-06-26 18:00:00', NULL),
(1564, 'D0296', 11.00, 210.00, 210.00, 280.00, 210.00, 1, '2021-06-26 18:00:00', NULL),
(1565, 'D0300', 21.00, 130.00, 130.00, 180.00, 130.00, 1, '2021-06-26 18:00:00', NULL),
(1566, 'D0301', 27.00, 175.00, 175.00, 240.00, 175.00, 1, '2021-06-26 18:00:00', NULL),
(1567, 'D0302', 24.00, 155.00, 155.00, 210.00, 155.00, 1, '2021-06-26 18:00:00', NULL),
(1568, 'D0303', 7.00, 95.00, 95.00, 140.00, 95.00, 1, '2021-06-26 18:00:00', NULL),
(1569, 'D0304', 12.00, 220.00, 220.00, 290.00, 220.00, 1, '2021-06-26 18:00:00', NULL),
(1570, 'D0306', 12.00, 150.00, 150.00, 200.00, 150.00, 1, '2021-06-26 18:00:00', NULL),
(1571, 'D0308', 9.00, 365.00, 365.00, 450.00, 365.00, 1, '2021-06-26 18:00:00', NULL),
(1572, 'D0354', 87.00, 65.80, 65.80, 90.00, 65.80, 1, '2021-06-26 18:00:00', NULL),
(1573, 'D0363', 3.00, 607.00, 607.00, 675.00, 607.00, 1, '2021-06-26 18:00:00', NULL),
(1574, 'D0386', 4.00, 90.00, 90.00, 130.00, 90.00, 1, '2021-06-26 18:00:00', NULL),
(1575, 'D0387', 95.00, 45.00, 45.00, 80.00, 45.00, 1, '2021-06-26 18:00:00', NULL),
(1576, 'D0388', 12.00, 21.70, 21.70, 50.00, 21.70, 1, '2021-06-26 18:00:00', NULL),
(1577, 'D0391', 2.00, 1225.00, 1225.00, 1450.00, 1225.00, 1, '2021-06-26 18:00:00', NULL),
(1578, 'D0393', 6.00, 1275.00, 1275.00, 1450.00, 1275.00, 1, '2021-06-26 18:00:00', NULL),
(1579, 'D0399', 11.00, 15.00, 15.00, 25.00, 15.00, 1, '2021-06-26 18:00:00', NULL),
(1580, 'D0405', 17.00, 55.00, 55.00, 60.00, 55.00, 1, '2021-06-26 18:00:00', NULL),
(1581, 'D0406', 13.00, 175.00, 175.00, 270.00, 175.00, 1, '2021-06-26 18:00:00', NULL),
(1582, 'D0407', 20.00, 130.00, 130.00, 220.00, 130.00, 1, '2021-06-26 18:00:00', NULL),
(1583, 'D0413', 13.00, 182.00, 182.00, 260.00, 182.00, 1, '2021-06-26 18:00:00', NULL),
(1584, 'D0414', 8.00, 224.00, 224.00, 340.00, 224.00, 1, '2021-06-26 18:00:00', NULL),
(1585, 'D0415', 8.00, 280.00, 280.00, 400.00, 280.00, 1, '2021-06-26 18:00:00', NULL),
(1586, 'D0416', 11.00, 231.00, 231.00, 330.00, 231.00, 1, '2021-06-26 18:00:00', NULL),
(1587, 'D0418', 10.00, 273.00, 273.00, 390.00, 273.00, 1, '2021-06-26 18:00:00', NULL),
(1588, 'D0420', 6.00, 273.00, 273.00, 390.00, 273.00, 1, '2021-06-26 18:00:00', NULL),
(1589, 'D0421', 6.00, 203.00, 203.00, 290.00, 203.00, 1, '2021-06-26 18:00:00', NULL),
(1590, 'D0423', 6.00, 385.00, 385.00, 550.00, 385.00, 1, '2021-06-26 18:00:00', NULL),
(1591, 'D0424', 10.00, 43.40, 43.40, 62.00, 43.40, 1, '2021-06-26 18:00:00', NULL),
(1592, 'D0425', 9.00, 66.50, 66.50, 95.00, 66.50, 1, '2021-06-26 18:00:00', NULL),
(1593, 'D0427', 6.00, 105.00, 105.00, 125.00, 105.00, 1, '2021-06-26 18:00:00', NULL),
(1594, 'D0428', 9.00, 87.50, 87.50, 125.00, 87.50, 1, '2021-06-26 18:00:00', NULL),
(1595, 'D0430', 10.00, 168.00, 168.00, 240.00, 168.00, 1, '2021-06-26 18:00:00', NULL),
(1596, 'D0431', 7.00, 77.00, 77.00, 110.00, 77.00, 1, '2021-06-26 18:00:00', NULL),
(1597, 'D0433', 10.00, 91.00, 91.00, 130.00, 87.50, 14, '2021-06-26 18:00:00', '2021-06-26 18:00:00'),
(1598, 'D0432', 9.00, 84.00, 84.00, 120.00, 84.00, 1, '2021-06-26 18:00:00', NULL),
(1599, 'D0437', 6.00, 551.00, 551.00, 750.00, 551.00, 1, '2021-06-26 18:00:00', NULL),
(1600, 'D0439', 48.00, 39.18, 39.18, 48.00, 39.18, 1, '2021-06-26 18:00:00', NULL),
(1601, 'D0440', 23.00, 40.00, 40.00, 48.00, 40.00, 1, '2021-06-26 18:00:00', NULL),
(1602, 'D0441', 96.00, 16.67, 16.67, 25.00, 16.67, 1, '2021-06-26 18:00:00', NULL),
(1603, 'D0442', 14.00, 15.84, 15.84, 24.00, 15.84, 1, '2021-06-26 18:00:00', NULL),
(1604, 'D0443', 211.00, 11.25, 11.25, 20.00, 11.25, 1, '2021-06-26 18:00:00', NULL),
(1605, 'D0444', 45.00, 15.00, 15.00, 20.00, 15.00, 1, '2021-06-26 18:00:00', NULL),
(1606, 'D0451', 25.00, 0.63, 0.63, 3.00, 0.63, 14, '2021-06-26 18:00:00', '2021-07-01 18:00:00'),
(1607, 'D0453', 1.00, 6.67, 6.67, 15.00, 6.67, 1, '2021-06-26 18:00:00', NULL),
(1608, 'D0454', 17.00, 11.77, 11.77, 20.00, 11.77, 1, '2021-06-26 18:00:00', NULL),
(1609, 'D0455', 38.00, 16.67, 16.67, 25.00, 16.67, 1, '2021-06-26 18:00:00', NULL),
(1610, 'D0456', 84.00, 20.00, 20.00, 30.00, 20.00, 1, '2021-06-26 18:00:00', NULL),
(1611, 'D0457', 63.00, 22.06, 22.06, 35.00, 22.06, 1, '2021-06-26 18:00:00', NULL),
(1612, 'D0458', 51.00, 24.50, 24.50, 40.00, 24.50, 1, '2021-06-26 18:00:00', NULL),
(1613, 'D0459', 105.00, 25.28, 25.28, 45.00, 25.28, 1, '2021-06-26 18:00:00', NULL),
(1614, 'D0460', 57.00, 28.42, 28.42, 50.00, 28.42, 1, '2021-06-26 18:00:00', NULL),
(1615, 'D0461', 2.00, 49.00, 49.00, 60.00, 49.00, 1, '2021-06-26 18:00:00', NULL),
(1616, 'D0462', 140.00, 3.70, 3.70, 10.00, 3.70, 1, '2021-06-26 18:00:00', NULL),
(1617, 'D0467', 6.00, 110.00, 110.00, 200.00, 110.00, 1, '2021-06-26 18:00:00', NULL),
(1618, 'D0472', 9.00, 56.95, 56.95, 85.00, 56.95, 1, '2021-06-26 18:00:00', NULL),
(1619, 'D0476', 17.00, 134.00, 134.00, 200.00, 134.00, 1, '2021-06-26 18:00:00', NULL),
(1620, 'D0477', 28.00, 107.00, 107.00, 160.00, 107.00, 1, '2021-06-26 18:00:00', NULL),
(1621, 'D0478', 19.00, 147.40, 147.40, 220.00, 147.40, 1, '2021-06-26 18:00:00', NULL),
(1622, 'D0480', 12.00, 214.40, 214.40, 320.00, 214.40, 1, '2021-06-26 18:00:00', NULL),
(1623, 'D0481', 9.00, 134.00, 134.00, 200.00, 134.00, 1, '2021-06-26 18:00:00', NULL),
(1624, 'D0483', 8.00, 271.30, 271.30, 405.00, 271.30, 1, '2021-06-26 18:00:00', NULL),
(1625, 'D0506', 3.00, 75.00, 75.00, 90.00, 75.00, 1, '2021-06-26 18:00:00', NULL),
(1626, 'D0507', 17.00, 93.50, 93.50, 110.00, 93.50, 1, '2021-06-26 18:00:00', NULL),
(1627, 'D0508', 14.00, 105.00, 105.00, 140.00, 105.00, 1, '2021-06-26 18:00:00', NULL),
(1628, 'D0509', 9.00, 80.00, 80.00, 130.00, 80.00, 1, '2021-06-26 18:00:00', NULL),
(1629, 'B0051', 140.00, 53.58, 53.58, 61.00, 53.58, 1, '2021-06-26 18:00:00', NULL),
(1630, 'D0510', 10.00, 109.00, 109.00, 130.00, 109.00, 1, '2021-06-26 18:00:00', NULL),
(1631, 'D0512', 5.00, 92.00, 92.00, 110.00, 92.00, 1, '2021-06-26 18:00:00', NULL),
(1632, 'D0513', 10.00, 92.00, 92.00, 110.00, 92.00, 1, '2021-06-26 18:00:00', NULL),
(1633, 'D0514', 5.00, 67.00, 67.00, 80.00, 67.00, 1, '2021-06-26 18:00:00', NULL),
(1634, 'D0515', 10.00, 64.60, 64.60, 85.00, 64.60, 1, '2021-06-26 18:00:00', NULL),
(1635, 'D0516', 9.00, 106.40, 106.40, 140.00, 106.40, 1, '2021-06-26 18:00:00', NULL),
(1636, 'D0518', 10.00, 186.20, 186.20, 245.00, 186.20, 1, '2021-06-26 18:00:00', NULL),
(1637, 'D0519', 9.00, 220.40, 220.40, 290.00, 220.40, 1, '2021-06-26 18:00:00', NULL),
(1638, 'D0520', 9.00, 68.40, 68.40, 100.00, 68.40, 1, '2021-06-26 18:00:00', NULL),
(1639, 'D0521', 30.00, 148.20, 148.20, 200.00, 148.20, 1, '2021-06-26 18:00:00', NULL),
(1640, 'D0527', 22.00, 262.00, 262.00, 300.00, 262.00, 14, '2021-06-26 18:00:00', '2021-07-01 18:00:00'),
(1641, 'D0528', 22.00, 155.00, 155.00, 300.00, 155.00, 14, '2021-06-26 18:00:00', '2021-07-01 18:00:00'),
(1642, 'D0529', 2.00, 155.00, 155.00, 330.00, 155.00, 14, '2021-06-26 18:00:00', '2021-07-01 18:00:00'),
(1643, 'D0551', 8.00, 179.00, 179.00, 220.00, 179.00, 1, '2021-06-26 18:00:00', NULL),
(1644, 'D0553', 4.00, 244.00, 244.00, 300.00, 244.00, 1, '2021-06-26 18:00:00', NULL),
(1645, 'D0555', 6.00, 221.10, 221.10, 280.00, 221.10, 1, '2021-06-26 18:00:00', NULL),
(1646, 'D0556', 11.00, 309.00, 309.00, 380.00, 309.00, 1, '2021-06-26 18:00:00', NULL),
(1647, 'D0557', 11.00, 196.00, 196.00, 240.00, 196.00, 1, '2021-06-26 18:00:00', NULL),
(1648, 'D0558', 10.00, 184.80, 184.80, 240.00, 184.80, 1, '2021-06-26 18:00:00', NULL),
(1649, 'D0560', 5.00, 290.40, 290.40, 360.00, 290.40, 1, '2021-06-26 18:00:00', NULL),
(1650, 'D0561', 10.00, 248.00, 248.00, 305.00, 248.00, 1, '2021-06-26 18:00:00', NULL),
(1651, 'B0057', 270.00, 29.00, 29.00, 45.00, 29.00, 1, '2021-06-26 18:00:00', NULL),
(1652, 'D0563', 4.00, 129.00, 129.00, 195.00, 129.00, 1, '2021-06-26 18:00:00', NULL),
(1653, 'D0565', 9.00, 237.00, 237.00, 360.00, 237.00, 1, '2021-06-26 18:00:00', NULL),
(1654, 'B0058', 315.00, 40.00, 40.00, 50.00, 40.00, 1, '2021-06-26 18:00:00', NULL),
(1655, 'D0567', 6.00, 210.00, 210.00, 320.00, 210.00, 1, '2021-06-26 18:00:00', NULL),
(1656, 'D0568', 8.00, 210.00, 210.00, 320.00, 210.00, 1, '2021-06-26 18:00:00', NULL),
(1657, 'D0570', 3.00, 379.00, 379.00, 560.00, 379.00, 1, '2021-06-26 18:00:00', NULL),
(1658, 'D0592', 100.00, 26.53, 26.53, 35.00, 26.53, 1, '2021-06-26 18:00:00', NULL),
(1659, 'D0612', 6.00, 1270.00, 1270.00, 1450.00, 1270.00, 1, '2021-06-26 18:00:00', NULL),
(1660, 'D0613', 4.00, 1515.00, 1515.00, 1750.00, 1515.00, 1, '2021-06-26 18:00:00', NULL),
(1661, 'B0065', 80.00, 65.00, 65.00, 75.00, 65.00, 1, '2021-06-26 18:00:00', NULL),
(1662, 'D0615', 6.00, 95.00, 95.00, 160.00, 95.00, 1, '2021-06-26 18:00:00', NULL),
(1663, 'D0616', 6.00, 130.00, 130.00, 220.00, 130.00, 1, '2021-06-26 18:00:00', NULL),
(1664, 'B0066', 160.00, 50.00, 50.00, 65.00, 50.00, 1, '2021-06-26 18:00:00', NULL),
(1665, 'D0632', 10.00, 74.10, 74.10, 95.00, 74.10, 1, '2021-06-26 18:00:00', NULL),
(1666, 'D0633', 9.00, 140.40, 140.40, 180.00, 140.40, 1, '2021-06-26 18:00:00', NULL),
(1667, 'B0068', 360.00, 70.00, 70.00, 78.00, 70.00, 1, '2021-06-26 18:00:00', NULL),
(1668, 'D0637', 10.00, 195.00, 195.00, 250.00, 195.00, 1, '2021-06-26 18:00:00', NULL),
(1669, 'D0638', 10.00, 195.00, 195.00, 250.00, 195.00, 1, '2021-06-26 18:00:00', NULL),
(1670, 'D0639', 19.00, 234.00, 234.00, 300.00, 234.00, 1, '2021-06-26 18:00:00', NULL),
(1671, 'D0640', 8.00, 468.00, 468.00, 600.00, 468.00, 1, '2021-06-26 18:00:00', NULL),
(1672, 'B0070', 160.00, 69.70, 69.70, 80.00, 69.70, 1, '2021-06-26 18:00:00', NULL),
(1673, 'D0645', 18.00, 18.00, 18.00, 30.00, 18.00, 1, '2021-06-26 18:00:00', NULL),
(1674, 'B0071', 20.00, 57.00, 57.00, 65.00, 57.00, 1, '2021-06-26 18:00:00', NULL),
(1675, 'D0651', 30.00, 18.50, 18.50, 30.00, 18.50, 1, '2021-06-26 18:00:00', NULL),
(1676, 'D0655', 14.00, 67.55, 67.55, 120.00, 67.55, 1, '2021-06-26 18:00:00', NULL),
(1677, 'B0074', 100.00, 78.80, 78.80, 82.00, 78.80, 1, '2021-06-26 18:00:00', NULL),
(1678, 'B0075', 180.00, 86.45, 86.45, 100.00, 86.45, 1, '2021-06-26 18:00:00', NULL),
(1679, 'B0076', 280.00, 112.32, 112.32, 120.00, 112.32, 1, '2021-06-26 18:00:00', NULL),
(1680, 'B0077', 140.00, 155.60, 155.60, 160.00, 155.60, 1, '2021-06-26 18:00:00', NULL),
(1681, 'D0652', 14.00, 67.55, 67.55, 120.00, 67.55, 1, '2021-06-26 18:00:00', NULL),
(1682, 'D0653', 7.00, 67.55, 67.55, 120.00, 67.55, 1, '2021-06-26 18:00:00', NULL),
(1683, 'D0654', 38.00, 69.00, 69.00, 110.00, 69.00, 1, '2021-06-26 18:00:00', NULL),
(1684, 'D0658', 14.00, 38.60, 38.60, 70.00, 38.60, 1, '2021-06-26 18:00:00', NULL),
(1685, 'D0660', 2.00, 67.55, 67.55, 120.00, 67.55, 1, '2021-06-26 18:00:00', NULL),
(1686, 'D0662', 19.00, 45.00, 45.00, 80.00, 45.00, 1, '2021-06-26 18:00:00', NULL),
(1687, 'D0663', 36.00, 154.20, 154.20, 310.00, 154.20, 14, '2021-06-26 18:00:00', '2021-07-01 18:00:00'),
(1688, 'D0664', 16.00, 445.00, 445.00, 500.00, 445.00, 14, '2021-06-26 18:00:00', '2021-07-01 18:00:00'),
(1689, 'D0666', 900.00, 11.18, 11.18, 15.00, 11.18, 1, '2021-06-26 18:00:00', NULL),
(1690, 'D0672', 10.00, 215.90, 215.90, 265.00, 215.90, 1, '2021-06-26 18:00:00', NULL),
(1691, 'D0673', 12.00, 289.30, 289.30, 355.00, 289.30, 1, '2021-06-26 18:00:00', NULL),
(1692, 'D0677', 6.00, 182.50, 182.50, 250.00, 182.50, 1, '2021-06-26 18:00:00', NULL),
(1693, 'D0678', 6.00, 225.00, 225.00, 275.00, 225.00, 1, '2021-06-26 18:00:00', NULL),
(1694, 'D0680', 7.00, 175.20, 175.20, 240.00, 175.20, 1, '2021-06-26 18:00:00', NULL),
(1695, 'D0684', 9.00, 65.70, 65.70, 90.00, 65.70, 1, '2021-06-26 18:00:00', NULL),
(1696, 'D0685', 10.00, 127.75, 127.75, 175.00, 127.75, 1, '2021-06-26 18:00:00', NULL),
(1697, 'D0686', 10.00, 175.20, 175.20, 240.00, 175.20, 1, '2021-06-26 18:00:00', NULL),
(1698, 'D0688', 6.00, 175.20, 175.20, 240.00, 175.20, 1, '2021-06-26 18:00:00', NULL),
(1699, 'D0715', 9.00, 110.00, 110.00, 132.00, 110.00, 1, '2021-06-26 18:00:00', NULL),
(1700, 'D0716', 30.00, 175.00, 175.00, 212.00, 175.00, 1, '2021-06-26 18:00:00', NULL),
(1701, 'D0717', 22.00, 217.00, 217.00, 265.00, 217.00, 1, '2021-06-26 18:00:00', NULL),
(1702, 'D0718', 10.00, 237.00, 237.00, 288.00, 237.00, 1, '2021-06-26 18:00:00', NULL),
(1703, 'D0721', 30.00, 250.00, 250.00, 304.00, 250.00, 1, '2021-06-26 18:00:00', NULL),
(1704, 'D0723', 9.00, 185.00, 185.00, 224.00, 185.00, 1, '2021-06-26 18:00:00', NULL),
(1705, 'D0724', 14.00, 198.00, 198.00, 224.00, 198.00, 1, '2021-06-26 18:00:00', NULL),
(1706, 'D0725', 32.00, 185.00, 185.00, 224.00, 185.00, 1, '2021-06-26 18:00:00', NULL),
(1707, 'D0726', 16.00, 302.00, 302.00, 368.00, 302.00, 1, '2021-06-26 18:00:00', NULL),
(1708, 'D0727', 5.00, 75.00, 75.00, 100.00, 75.00, 1, '2021-06-26 18:00:00', NULL),
(1709, 'D0734', 7.00, 75.00, 75.00, 90.00, 75.00, 1, '2021-06-26 18:00:00', NULL),
(1710, 'D0740', 15.00, 135.90, 135.90, 245.00, 135.90, 1, '2021-06-26 18:00:00', NULL),
(1711, 'D0759', 590.00, 6.56, 6.56, 8.00, 6.56, 1, '2021-06-26 18:00:00', NULL),
(1712, 'B0181', 220.00, 57.50, 57.50, 76.00, 57.50, 1, '2021-06-26 18:00:00', NULL),
(1713, 'B0182', 680.00, 73.00, 73.00, 80.00, 73.00, 1, '2021-06-26 18:00:00', NULL),
(1714, 'B0183', 80.00, 87.00, 87.00, 95.00, 87.00, 1, '2021-06-26 18:00:00', NULL),
(1715, 'D0674', 5.00, 289.30, 289.30, 355.00, 289.30, 1, '2021-06-26 18:00:00', NULL),
(1716, 'B0189', 550.00, 22.50, 22.50, 26.00, 22.50, 1, '2021-06-26 18:00:00', NULL),
(1717, 'D0438', 4.00, 651.00, 651.00, 900.00, 651.00, 1, '2021-06-26 18:00:00', NULL),
(1718, 'B0190', 680.00, 33.00, 33.00, 35.00, 33.00, 1, '2021-06-26 18:00:00', NULL),
(1719, 'B0191', 380.00, 55.00, 55.00, 60.00, 55.00, 1, '2021-06-26 18:00:00', NULL),
(1720, 'C1135', 30.00, 35.00, 35.00, 50.00, 35.00, 14, '2021-06-26 18:00:00', NULL),
(1721, 'C1136', 15.00, 30.00, 30.00, 40.00, 30.00, 14, '2021-06-26 18:00:00', NULL),
(1722, 'B0424', 120.00, 25.00, 25.00, 28.00, 25.00, 1, '2021-06-26 18:00:00', NULL),
(1723, 'B0482', 9.00, 115.00, 115.00, 125.00, 115.00, 1, '2021-06-26 18:00:00', NULL),
(1724, 'B0456', 19.00, 67.00, 67.00, 90.00, 67.00, 1, '2021-06-26 18:00:00', NULL),
(1725, 'B0478', 19.00, 19.00, 19.00, 200.00, 19.00, 1, '2021-06-26 18:00:00', NULL),
(1726, 'B0475', 4.00, 132.00, 132.00, 150.00, 132.00, 1, '2021-06-26 18:00:00', NULL),
(1727, 'B0467', 103.00, 37.00, 37.00, 55.00, 37.00, 14, '2021-06-26 18:00:00', '2021-06-27 18:00:00'),
(1728, 'B0544', 5.00, 70.00, 70.00, 80.00, 70.00, 1, '2021-06-26 18:00:00', NULL),
(1729, 'B0488', 7.00, 65.00, 65.00, 75.00, 65.00, 1, '2021-06-26 18:00:00', NULL),
(1730, 'B0470', 102.00, 60.00, 60.00, 80.00, 60.00, 14, '2021-06-26 18:00:00', '2021-06-27 18:00:00'),
(1731, 'B0484', 55.00, 56.00, 56.00, 80.00, 56.00, 1, '2021-06-26 18:00:00', NULL),
(1732, 'B0472', 6.00, 75.00, 75.00, 80.00, 75.00, 1, '2021-06-26 18:00:00', NULL),
(1733, 'B0527', 1.00, 380.00, 380.00, 420.00, 380.00, 1, '2021-06-26 18:00:00', NULL),
(1734, 'B0512', 8.00, 130.00, 130.00, 170.00, 130.00, 1, '2021-06-26 18:00:00', NULL),
(1735, 'B0509', 3.00, 90.00, 90.00, 160.00, 90.00, 1, '2021-06-26 18:00:00', NULL),
(1736, 'B0481', 4.00, 155.00, 155.00, 170.00, 155.00, 1, '2021-06-26 18:00:00', NULL),
(1737, 'B0611', 685.00, 7.00, 7.00, 10.00, 7.00, 1, '2021-06-26 18:00:00', NULL),
(1738, 'B0613', 528.00, 8.00, 8.00, 12.00, 8.00, 1, '2021-06-26 18:00:00', NULL),
(1739, 'B0614', 50.00, 6.00, 6.00, 15.00, 6.00, 1, '2021-06-26 18:00:00', NULL),
(1740, 'B0615', 5.00, 20.00, 20.00, 50.00, 20.00, 1, '2021-06-26 18:00:00', NULL),
(1741, 'B0617', 10.00, 21.00, 21.00, 25.00, 21.00, 1, '2021-06-26 18:00:00', NULL),
(1742, 'B0148', 1.00, 3454.50, 3454.50, 4100.00, 3454.50, 1, '2021-06-26 18:00:00', NULL),
(1743, 'B0149', 2.00, 3740.00, 3740.00, 4000.00, 3740.00, 1, '2021-06-26 18:00:00', NULL),
(1744, 'B0150', 2.00, 4442.00, 4442.00, 5000.00, 4442.00, 1, '2021-06-26 18:00:00', NULL),
(1745, 'B0157', 13.00, 2746.68, 2746.68, 3000.00, 2746.68, 1, '2021-06-26 18:00:00', NULL),
(1746, 'B0163', 4.00, 3600.00, 3600.00, 4100.00, 3600.00, 1, '2021-06-26 18:00:00', NULL),
(1747, 'B0426', 9.00, 35.00, 35.00, 40.00, 35.00, 1, '2021-06-27 18:00:00', NULL),
(1748, 'B0429', 3.00, 17.00, 17.00, 25.00, 17.00, 1, '2021-06-27 18:00:00', NULL),
(1749, 'B0430', 32.00, 42.00, 42.00, 50.00, 42.00, 1, '2021-06-27 18:00:00', NULL),
(1750, 'B0435', 85.00, 58.00, 58.00, 70.00, 58.00, 1, '2021-06-27 18:00:00', NULL),
(1751, 'B0441', 75.00, 30.00, 30.00, 40.00, 30.00, 1, '2021-06-27 18:00:00', NULL),
(1752, 'B0446', 2.00, 75.00, 75.00, 90.00, 75.00, 1, '2021-06-27 18:00:00', NULL),
(1753, 'B0458', 9.00, 53.00, 53.00, 60.00, 53.00, 1, '2021-06-27 18:00:00', NULL),
(1754, 'B0461', 7.00, 140.00, 140.00, 180.00, 140.00, 1, '2021-06-27 18:00:00', NULL),
(1755, 'B0463', 8.00, 41.00, 41.00, 60.00, 41.00, 1, '2021-06-27 18:00:00', NULL),
(1756, 'B0464', 3.00, 80.00, 80.00, 100.00, 80.00, 1, '2021-06-27 18:00:00', NULL),
(1757, 'B0465', 9.00, 72.00, 72.00, 100.00, 72.00, 1, '2021-06-27 18:00:00', NULL),
(1758, 'B0468', 6.00, 75.00, 75.00, 95.00, 75.00, 1, '2021-06-27 18:00:00', NULL),
(1759, 'D0221', 72.00, 9.00, 9.00, 15.00, 9.00, 14, '2021-06-27 18:00:00', '2021-06-28 18:00:00'),
(1760, 'D0085', 4.00, 80.00, 80.00, 100.00, 80.00, 14, '2021-06-27 18:00:00', '2021-06-28 18:00:00'),
(1761, 'D0064', 36.00, 13.00, 13.00, 16.00, 13.00, 14, '2021-06-27 18:00:00', '2021-06-28 18:00:00'),
(1762, 'D0446', 74.00, 15.00, 15.00, 20.00, 15.00, 1, '2021-06-27 18:00:00', NULL),
(1763, 'D0447', 80.00, 16.00, 16.00, 25.00, 16.00, 1, '2021-06-27 18:00:00', NULL),
(1764, 'D0448', 70.00, 45.00, 45.00, 60.00, 45.00, 1, '2021-06-27 18:00:00', NULL),
(1765, 'D0449', 54.00, 67.00, 67.00, 90.00, 67.00, 1, '2021-06-27 18:00:00', NULL),
(1766, 'D0105', 5.00, 190.00, 190.00, 220.00, 190.00, 1, '2021-06-28 18:00:00', NULL),
(1767, 'B0705', 13.00, 300.00, 300.00, 380.00, 300.00, 1, '2021-06-28 18:00:00', NULL),
(1768, 'B0704', 3.00, 220.00, 220.00, 360.00, 220.00, 1, '2021-06-28 18:00:00', NULL),
(1769, 'B0716', 3.00, 450.00, 450.00, 550.00, 450.00, 1, '2021-06-28 18:00:00', NULL),
(1770, 'B0913', 5.00, 1460.00, 1460.00, 2100.00, 1460.00, 1, '2021-06-28 18:00:00', NULL),
(1771, 'B0924', 126.00, 28.50, 28.50, 40.00, 28.50, 1, '2021-06-28 18:00:00', NULL),
(1772, 'B0970', 14.00, 110.00, 110.00, 130.00, 110.00, 1, '2021-06-28 18:00:00', NULL),
(1773, 'B1157', 40.00, 50.00, 50.00, 60.00, 50.00, 1, '2021-06-28 18:00:00', NULL),
(1774, 'B1179', 180.00, 30.00, 30.00, 35.00, 30.00, 1, '2021-06-28 18:00:00', NULL);
INSERT INTO `stock_product` (`id`, `product_id`, `quantity`, `purchase_price`, `purchase_price_withcost`, `sale_price`, `old_and_new_purchase_price_average`, `branch_id`, `created_at`, `updated_at`) VALUES
(1775, 'B1314', 220.00, 170.00, 170.00, 200.00, 170.00, 14, '2021-06-28 18:00:00', '2021-06-28 18:00:00'),
(1776, 'B0807', 1.00, 5395.00, 5395.00, 6500.00, 5395.00, 14, '2021-06-28 18:00:00', NULL),
(1777, 'B1080', 1.00, 14440.00, 14440.00, 17500.00, 14440.00, 14, '2021-06-28 18:00:00', NULL),
(1778, 'B0717', 3.00, 450.00, 450.00, 950.00, 450.00, 14, '2021-06-28 18:00:00', NULL),
(1779, 'B0722', 3.00, 24520.00, 24520.00, 25500.00, 24520.00, 14, '2021-06-28 18:00:00', NULL),
(1780, 'B0680', 6.00, 180.50, 180.50, 250.00, 180.50, 1, '2021-06-28 18:00:00', NULL),
(1781, 'B0670', 6.00, 481.00, 481.00, 700.00, 481.00, 1, '2021-06-28 18:00:00', NULL),
(1782, 'B0658', 3.00, 322.00, 322.00, 400.00, 322.00, 14, '2021-06-28 18:00:00', NULL),
(1783, 'B0652', 6.00, 660.00, 660.00, 800.00, 660.00, 1, '2021-06-28 18:00:00', NULL),
(1784, 'B0651', 1.00, 2400.00, 2400.00, 3000.00, 2400.00, 1, '2021-06-28 18:00:00', NULL),
(1785, 'B0650', 1.00, 2800.00, 2800.00, 3200.00, 2800.00, 1, '2021-06-28 18:00:00', NULL),
(1786, 'B0639', 2.00, 12480.00, 12480.00, 14500.00, 12480.00, 14, '2021-06-28 18:00:00', NULL),
(1787, 'B0629', 6.00, 854.00, 854.00, 1000.00, 854.00, 1, '2021-06-28 18:00:00', NULL),
(1788, 'B0601', 1.00, 1500.00, 1500.00, 1700.00, 1500.00, 1, '2021-06-28 18:00:00', NULL),
(1789, 'B0563', 9.00, 580.00, 580.00, 680.00, 580.00, 1, '2021-06-28 18:00:00', NULL),
(1790, 'B0546', 6.00, 290.00, 290.00, 350.00, 290.00, 1, '2021-06-28 18:00:00', NULL),
(1791, 'B0545', 1.00, 290.00, 290.00, 380.00, 290.00, 14, '2021-06-28 18:00:00', NULL),
(1792, 'B0543', 5.00, 70.00, 70.00, 80.00, 70.00, 1, '2021-06-28 18:00:00', NULL),
(1793, 'B0504', 1.00, 270.00, 270.00, 350.00, 270.00, 1, '2021-06-28 18:00:00', NULL),
(1794, 'B0491', 8.00, 130.00, 130.00, 140.00, 130.00, 1, '2021-06-28 18:00:00', NULL),
(1795, 'B0490', 5.00, 115.00, 115.00, 125.00, 115.00, 1, '2021-06-28 18:00:00', NULL),
(1796, 'B0486', 6.00, 115.00, 115.00, 125.00, 115.00, 1, '2021-06-28 18:00:00', NULL),
(1797, 'B0485', 2.00, 90.00, 90.00, 110.00, 90.00, 1, '2021-06-28 18:00:00', NULL),
(1798, 'B0480', 9.00, 50.00, 50.00, 80.00, 50.00, 1, '2021-06-28 18:00:00', NULL),
(1799, 'B0462', 31.00, 34.00, 34.00, 45.00, 34.00, 1, '2021-06-28 18:00:00', NULL),
(1800, 'B1006', 1.00, 3750.00, 3750.00, 4800.00, 3750.00, 1, '2021-06-28 18:00:00', NULL),
(1801, 'D0028', 100.00, 51.00, 51.00, 70.00, 51.00, 14, '2021-06-28 18:00:00', NULL),
(1802, 'D0031', 70.00, 33.00, 33.00, 42.00, 33.00, 14, '2021-06-28 18:00:00', NULL),
(1803, 'D0032', 50.00, 29.00, 29.00, 31.00, 29.00, 14, '2021-06-28 18:00:00', NULL),
(1804, 'D0063', 30.00, 3.50, 3.50, 5.00, 3.50, 14, '2021-06-28 18:00:00', NULL),
(1805, 'D0598', 6.00, 295.00, 295.00, 390.00, 295.00, 14, '2021-06-28 18:00:00', '2021-07-01 18:00:00'),
(1806, 'D0237', 11.00, 48.00, 48.00, 100.00, 48.00, 14, '2021-06-28 18:00:00', '2021-07-01 18:00:00'),
(1807, 'D0340', 1.00, 3071.00, 3071.00, 3700.00, 3071.00, 14, '2021-06-28 18:00:00', NULL),
(1808, 'D0356', 2.00, 320.00, 320.00, 400.00, 320.00, 14, '2021-06-28 18:00:00', NULL),
(1809, 'D0359', 4.00, 295.00, 295.00, 360.00, 295.00, 14, '2021-06-28 18:00:00', NULL),
(1810, 'D0360', 2.00, 295.00, 295.00, 360.00, 295.00, 14, '2021-06-28 18:00:00', NULL),
(1811, 'D0365', 1.00, 400.00, 400.00, 500.00, 400.00, 14, '2021-06-28 18:00:00', NULL),
(1812, 'D0373', 26.00, 160.00, 160.00, 220.00, 160.00, 14, '2021-06-28 18:00:00', NULL),
(1813, 'D0377', 1.00, 762.00, 762.00, 950.00, 762.00, 14, '2021-06-28 18:00:00', NULL),
(1814, 'D0380', 3.00, 390.00, 390.00, 500.00, 390.00, 14, '2021-06-28 18:00:00', NULL),
(1815, 'D0392', 5.00, 1160.00, 1160.00, 1350.00, 1160.00, 14, '2021-06-28 18:00:00', NULL),
(1816, 'D0398', 2.00, 280.00, 280.00, 340.00, 280.00, 14, '2021-06-28 18:00:00', NULL),
(1817, 'D0410', 4.00, 120.00, 120.00, 160.00, 120.00, 14, '2021-06-28 18:00:00', '2021-06-28 18:00:00'),
(1818, 'D0542', 1.00, 1500.00, 1500.00, 1800.00, 1500.00, 14, '2021-06-28 18:00:00', NULL),
(1819, 'A0018', 400.00, 62.00, 62.00, 70.00, 62.00, 1, '2021-07-01 18:00:00', NULL),
(1820, 'A0020', 100.00, 41.50, 41.50, 45.00, 41.50, 1, '2021-07-01 18:00:00', NULL),
(1821, 'A0024', 40.00, 95.00, 95.00, 140.00, 95.00, 1, '2021-07-01 18:00:00', NULL),
(1822, 'A0025', 495.00, 210.00, 210.00, 220.00, 210.00, 1, '2021-07-01 18:00:00', NULL),
(1823, 'D0035', 9.00, 178.00, 178.00, 190.00, 178.00, 14, '2021-07-01 18:00:00', NULL),
(1824, 'D0037', 29.00, 221.00, 221.00, 240.00, 221.00, 14, '2021-07-01 18:00:00', NULL),
(1825, 'D0038', 38.00, 255.00, 255.00, 270.00, 255.00, 14, '2021-07-01 18:00:00', NULL),
(1826, 'D0042', 9.00, 1105.00, 1105.00, 1170.00, 1105.00, 14, '2021-07-01 18:00:00', NULL),
(1827, 'D0043', 1.00, 124.00, 124.00, 210.00, 124.00, 14, '2021-07-01 18:00:00', NULL),
(1828, 'D0049', 95.00, 13.11, 13.11, 25.00, 13.11, 14, '2021-07-01 18:00:00', NULL),
(1829, 'D0050', 156.00, 4.17, 4.17, 7.00, 4.17, 14, '2021-07-01 18:00:00', NULL),
(1830, 'D0058', 90.00, 9.00, 9.00, 12.00, 9.00, 14, '2021-07-01 18:00:00', NULL),
(1831, 'D0059', 120.00, 9.00, 9.00, 15.00, 9.00, 14, '2021-07-01 18:00:00', NULL),
(1832, 'D0061', 30.00, 11.00, 11.00, 17.00, 11.00, 14, '2021-07-01 18:00:00', NULL),
(1833, 'D0073', 75.00, 0.80, 0.80, 1.50, 0.80, 14, '2021-07-01 18:00:00', NULL),
(1834, 'D0077', 600.00, 1.30, 1.30, 1.90, 1.30, 14, '2021-07-01 18:00:00', NULL),
(1835, 'D0078', 95.00, 1.40, 1.40, 2.00, 1.40, 14, '2021-07-01 18:00:00', NULL),
(1836, 'D0079', 180.00, 1.50, 1.50, 2.50, 1.50, 14, '2021-07-01 18:00:00', NULL),
(1837, 'D0080', 5.00, 25.00, 25.00, 40.00, 25.00, 14, '2021-07-01 18:00:00', NULL),
(1838, 'D0081', 4.00, 40.00, 40.00, 70.00, 40.00, 14, '2021-07-01 18:00:00', NULL),
(1839, 'D0082', 5.00, 85.00, 85.00, 130.00, 85.00, 14, '2021-07-01 18:00:00', NULL),
(1840, 'D0084', 1.00, 152.00, 152.00, 190.00, 152.00, 14, '2021-07-01 18:00:00', NULL),
(1841, 'D0091', 90.00, 1.70, 1.70, 2.50, 1.70, 14, '2021-07-01 18:00:00', NULL),
(1842, 'D0095', 2.00, 155.00, 155.00, 220.00, 155.00, 14, '2021-07-01 18:00:00', NULL),
(1843, 'D0100', 16.00, 34.00, 34.00, 55.00, 34.00, 14, '2021-07-01 18:00:00', NULL),
(1844, 'D0120', 4.00, 2350.00, 2350.00, 2500.00, 2350.00, 14, '2021-07-01 18:00:00', NULL),
(1845, 'D0121', 1.00, 2250.00, 2250.00, 2450.00, 2250.00, 14, '2021-07-01 18:00:00', NULL),
(1846, 'D0124', 2.00, 2680.00, 2680.00, 3000.00, 2680.00, 14, '2021-07-01 18:00:00', NULL),
(1847, 'D0137', 1.00, 4100.00, 4100.00, 4500.00, 4100.00, 14, '2021-07-01 18:00:00', NULL),
(1848, 'D0156', 18.00, 290.00, 290.00, 330.00, 290.00, 14, '2021-07-01 18:00:00', NULL),
(1849, 'D0157', 20.00, 280.00, 280.00, 330.00, 280.00, 14, '2021-07-01 18:00:00', NULL),
(1850, 'D0158', 16.00, 280.00, 280.00, 330.00, 280.00, 14, '2021-07-01 18:00:00', NULL),
(1851, 'D0159', 40.00, 330.00, 330.00, 350.00, 330.00, 14, '2021-07-01 18:00:00', NULL),
(1852, 'D0160', 3.00, 998.00, 998.00, 1058.00, 998.00, 14, '2021-07-01 18:00:00', NULL),
(1853, 'D0161', 35.00, 920.00, 920.00, 1058.00, 920.00, 14, '2021-07-01 18:00:00', NULL),
(1854, 'D0162', 30.00, 987.00, 987.00, 1058.00, 987.00, 14, '2021-07-01 18:00:00', NULL),
(1855, 'D0163', 14.00, 1407.00, 1407.00, 1507.00, 1407.00, 14, '2021-07-01 18:00:00', NULL),
(1856, 'D0196', 1.00, 230.00, 230.00, 250.00, 230.00, 14, '2021-07-01 18:00:00', NULL),
(1857, 'D0199', 3.00, 28.00, 28.00, 35.00, 28.00, 14, '2021-07-01 18:00:00', NULL),
(1858, 'D0200', 5.00, 28.00, 28.00, 36.00, 28.00, 14, '2021-07-01 18:00:00', NULL),
(1859, 'D0201', 2.00, 30.00, 30.00, 35.00, 30.00, 14, '2021-07-01 18:00:00', NULL),
(1860, 'D0202', 3.00, 45.00, 45.00, 54.00, 45.00, 14, '2021-07-01 18:00:00', NULL),
(1861, 'D0203', 12.00, 240.00, 240.00, 320.00, 240.00, 14, '2021-07-01 18:00:00', NULL),
(1862, 'D0204', 7.00, 280.00, 280.00, 375.00, 280.00, 14, '2021-07-01 18:00:00', NULL),
(1863, 'D0254', 6.00, 6259.00, 6259.00, 8875.00, 6259.00, 14, '2021-07-01 18:00:00', NULL),
(1864, 'D0259', 1.00, 195.00, 195.00, 250.00, 195.00, 14, '2021-07-01 18:00:00', NULL),
(1865, 'D0266', 3.00, 3444.00, 3444.00, 4100.00, 3444.00, 14, '2021-07-01 18:00:00', NULL),
(1866, 'D0294', 4.00, 74.00, 74.00, 105.00, 74.00, 14, '2021-07-01 18:00:00', NULL),
(1867, 'D0309', 1.00, 168.00, 168.00, 200.00, 168.00, 14, '2021-07-01 18:00:00', NULL),
(1868, 'D0311', 2.00, 210.00, 210.00, 260.00, 210.00, 14, '2021-07-01 18:00:00', NULL),
(1869, 'D0312', 6.00, 95.00, 95.00, 150.00, 95.00, 14, '2021-07-01 18:00:00', NULL),
(1870, 'D0318', 1.00, 16803.00, 16803.00, 19000.00, 16803.00, 14, '2021-07-01 18:00:00', NULL),
(1871, 'D0331', 1.00, 1880.00, 1880.00, 2450.00, 1880.00, 14, '2021-07-01 18:00:00', NULL),
(1872, 'D0343', 1.00, 785.00, 785.00, 950.00, 785.00, 14, '2021-07-01 18:00:00', NULL),
(1873, 'D0366', 4.00, 470.00, 470.00, 550.00, 470.00, 14, '2021-07-01 18:00:00', NULL),
(1874, 'D0367', 1.00, 380.00, 380.00, 460.00, 380.00, 14, '2021-07-01 18:00:00', NULL),
(1875, 'D0039', 12.00, 280.00, 280.00, 300.00, 280.00, 14, '2021-07-01 18:00:00', NULL),
(1876, 'D0155', 17.00, 280.00, 280.00, 405.00, 280.00, 14, '2021-07-01 18:00:00', NULL),
(1877, 'D0400', 2000.00, 7.00, 7.00, 10.00, 7.00, 14, '2021-07-01 18:00:00', NULL),
(1878, 'D0450', 170.00, 1.00, 1.00, 3.00, 1.00, 14, '2021-07-01 18:00:00', NULL),
(1879, 'D0452', 120.00, 1.00, 1.00, 2.00, 1.00, 14, '2021-07-01 18:00:00', NULL),
(1880, 'D0463', 10.00, 22.00, 22.00, 30.00, 22.00, 14, '2021-07-01 18:00:00', NULL),
(1881, 'D0469', 15.00, 230.00, 230.00, 280.00, 230.00, 14, '2021-07-01 18:00:00', NULL),
(1882, 'D0470', 1.00, 180.00, 180.00, 250.00, 180.00, 14, '2021-07-01 18:00:00', NULL),
(1883, 'D0484', 21.00, 115.00, 115.00, 150.00, 115.00, 14, '2021-07-01 18:00:00', NULL),
(1884, 'D0485', 336.00, 75.00, 75.00, 100.00, 75.00, 14, '2021-07-01 18:00:00', NULL),
(1885, 'D0486', 32.00, 105.00, 105.00, 120.00, 105.00, 14, '2021-07-01 18:00:00', NULL),
(1886, 'D0487', 18.00, 29.00, 29.00, 40.00, 29.00, 14, '2021-07-01 18:00:00', NULL),
(1887, 'D0501', 1.00, 1978.00, 1978.00, 2400.00, 1978.00, 14, '2021-07-01 18:00:00', NULL),
(1888, 'D0503', 2.00, 1618.00, 1618.00, 1900.00, 1618.00, 14, '2021-07-01 18:00:00', NULL),
(1889, 'D0505', 7.00, 270.00, 270.00, 390.00, 270.00, 14, '2021-07-01 18:00:00', NULL),
(1890, 'D0531', 3.00, 55.00, 55.00, 70.00, 55.00, 14, '2021-07-01 18:00:00', NULL),
(1891, 'D0532', 25.00, 25.00, 25.00, 40.00, 25.00, 14, '2021-07-01 18:00:00', NULL),
(1892, 'D0544', 1.00, 1890.00, 1890.00, 2300.00, 1890.00, 14, '2021-07-01 18:00:00', NULL),
(1893, 'D0562', 12.00, 38.00, 38.00, 50.00, 38.00, 14, '2021-07-01 18:00:00', NULL),
(1894, 'D0596', 1.00, 4250.00, 4250.00, 4600.00, 4250.00, 14, '2021-07-01 18:00:00', NULL),
(1895, 'D0631', 13.00, 190.00, 190.00, 300.00, 190.00, 14, '2021-07-01 18:00:00', NULL),
(1896, 'D0659', 9.00, 68.00, 68.00, 120.00, 68.00, 14, '2021-07-01 18:00:00', NULL),
(1897, 'D0661', 1.00, 83.00, 83.00, 150.00, 83.00, 14, '2021-07-01 18:00:00', NULL),
(1898, 'D0729', 1.00, 145.00, 145.00, 180.00, 145.00, 14, '2021-07-01 18:00:00', NULL),
(1899, 'D0731', 3.00, 1173.00, 1173.00, 1450.00, 1173.00, 14, '2021-07-01 18:00:00', NULL),
(1900, 'D0733', 7.00, 170.00, 170.00, 200.00, 170.00, 14, '2021-07-01 18:00:00', NULL),
(1901, 'D0737', 2.00, 550.00, 550.00, 750.00, 550.00, 14, '2021-07-01 18:00:00', NULL),
(1902, 'D0742', 5.00, 226.00, 226.00, 300.00, 226.00, 14, '2021-07-01 18:00:00', NULL),
(1903, 'D0746', 12.00, 270.00, 270.00, 450.00, 270.00, 14, '2021-07-01 18:00:00', NULL),
(1904, 'D0751', 34.00, 1.50, 1.50, 3.00, 1.50, 14, '2021-07-01 18:00:00', NULL),
(1905, 'D0752', 134.00, 2.20, 2.20, 3.50, 2.20, 14, '2021-07-01 18:00:00', NULL),
(1906, 'D0756', 3.00, 350.00, 350.00, 450.00, 350.00, 14, '2021-07-01 18:00:00', NULL),
(1907, 'D0758', 1.00, 465.00, 465.00, 520.00, 465.00, 14, '2021-07-01 18:00:00', NULL),
(1908, 'D0696', 2.00, 225.00, 225.00, 320.00, 225.00, 14, '2021-07-01 18:00:00', NULL),
(1909, 'D0697', 5.00, 195.00, 195.00, 270.00, 195.00, 14, '2021-07-01 18:00:00', NULL),
(1910, 'D0700', 2.00, 114.00, 114.00, 220.00, 114.00, 14, '2021-07-01 18:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_info`
--

CREATE TABLE `supplier_info` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_due` double(11,2) DEFAULT 0.00,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier_info`
--

INSERT INTO `supplier_info` (`id`, `company_name`, `email`, `supplier_phone`, `company_phone`, `address`, `previous_due`, `image`, `admin_id`, `created_at`, `updated_at`) VALUES
(14, 'Monjur ajad IT', 'mmajad50@gmail.com', '01521320464', '01830261941', 'Feni', 10.00, 'backend/supplierImage/1627749874.png', 1, '2021-07-31 16:37:31', '2021-07-31 16:37:31'),
(15, 'Monjur Ajad IT', 'monjurajadit@gmail.com', NULL, '01521320464', 'Shanti Company road,feni', 62.00, 'backend/supplierImage/1627749910.png', 1, '2021-07-31 16:45:10', '2021-07-31 16:45:10'),
(16, 'Monjur Ajad IT', 'monjurajadit@gmail.com', NULL, '23', 'Shanti Company road,feni', 23.00, NULL, 1, '2021-07-31 16:53:07', '2021-07-31 16:53:07'),
(17, 'Monjur Ajad IT', 'monjurajadit@gmail.com', NULL, '333', 'Shanti Company road,feni', 666.00, NULL, 1, '2021-07-31 16:53:16', '2021-07-31 16:53:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mmajad@gmail.com', 'ajad@gmail.com', NULL, '$2y$10$dYEGwm6AvEiMqA.Gto6tpegKqYzsqsJ7NrKDmvwBNMhOowLj9V3ia', NULL, '2021-07-15 10:01:45', '2021-07-15 10:01:45'),
(2, 'MONJURUL ISLAM', 'mmajad50@gmail.com', NULL, '$2y$10$IDRKhfl3y0I9ls18J.H2LO/NS1Z/mVXOP4zlXLlKVZw7T4nL1LKHi', NULL, '2021-07-15 10:49:40', '2021-07-15 10:49:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminmainmenu`
--
ALTER TABLE `adminmainmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminsubmenu`
--
ALTER TABLE `adminsubmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_info`
--
ALTER TABLE `bank_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_management`
--
ALTER TABLE `bank_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branceinfo`
--
ALTER TABLE `branceinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_close`
--
ALTER TABLE `cash_close`
  ADD PRIMARY KEY (`id`,`cash_date`);

--
-- Indexes for table `cash_close_expense`
--
ALTER TABLE `cash_close_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_close_income`
--
ALTER TABLE `cash_close_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `costinfo`
--
ALTER TABLE `costinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `createadmin`
--
ALTER TABLE `createadmin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `createadmin_email_unique` (`email`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_transaction`
--
ALTER TABLE `customer_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `damage_entry`
--
ALTER TABLE `damage_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `damage_return`
--
ALTER TABLE `damage_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `damage_stock`
--
ALTER TABLE `damage_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `date_stock_product`
--
ALTER TABLE `date_stock_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeecollarea`
--
ALTER TABLE `employeecollarea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_old_salary`
--
ALTER TABLE `emp_old_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_salary_collection`
--
ALTER TABLE `emp_salary_collection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq` (`fk_emp_id`,`month`,`year`);

--
-- Indexes for table `emp_salary_setup`
--
ALTER TABLE `emp_salary_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenseinfo`
--
ALTER TABLE `expenseinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomeinfo`
--
ALTER TABLE `incomeinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linkpiority`
--
ALTER TABLE `linkpiority`
  ADD UNIQUE KEY `index` (`adminid`,`mainlinkid`,`sublinkid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_providers`
--
ALTER TABLE `oauth_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_providers_user_id_foreign` (`user_id`),
  ADD KEY `oauth_providers_provider_user_id_index` (`provider_user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `product_brand`
--
ALTER TABLE `product_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_company`
--
ALTER TABLE `product_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_item`
--
ALTER TABLE `product_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_measurement`
--
ALTER TABLE `product_measurement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_measurement_subunit`
--
ALTER TABLE `product_measurement_subunit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_productinfo`
--
ALTER TABLE `product_productinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `product_productinfo_item_id_foreign` (`item_id`),
  ADD KEY `product_productinfo_category_id_foreign` (`category_id`),
  ADD KEY `product_productinfo_brand_id_foreign` (`brand_id`),
  ADD KEY `FK_product_productinfo_product_measurement` (`measurement_type`);

--
-- Indexes for table `project_info`
--
ALTER TABLE `project_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_currentpurchase`
--
ALTER TABLE `purchase_currentpurchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_currentpurchase_product_id_foreign` (`product_id`);

--
-- Indexes for table `purchase_entry`
--
ALTER TABLE `purchase_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_entry_product_id_foreign` (`product_id`);

--
-- Indexes for table `purchase_ledger`
--
ALTER TABLE `purchase_ledger`
  ADD PRIMARY KEY (`id`,`invoice_no`),
  ADD KEY `FK_purchase_ledger_supplier_info` (`supplier_id`);

--
-- Indexes for table `purchase_payment_statement`
--
ALTER TABLE `purchase_payment_statement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_purchase_payment_statement_supplier_info` (`supplier_id`);

--
-- Indexes for table `purchase_return`
--
ALTER TABLE `purchase_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_return_entry`
--
ALTER TABLE `purchase_return_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salarytitle`
--
ALTER TABLE `salarytitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_currentsale`
--
ALTER TABLE `sale_currentsale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_entry`
--
ALTER TABLE `sale_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_ledger`
--
ALTER TABLE `sale_ledger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_sale_ledger_customer_info` (`customer_id`);

--
-- Indexes for table `sale_payment_statement`
--
ALTER TABLE `sale_payment_statement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_sale_payment_statement_customer_info` (`customer_id`);

--
-- Indexes for table `sale_return_entry`
--
ALTER TABLE `sale_return_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_emp_title`
--
ALTER TABLE `session_emp_title`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq` (`fk_emp_id`,`fk_title_id`,`month`,`year`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_damage_stock`
--
ALTER TABLE `shop_damage_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_product`
--
ALTER TABLE `stock_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `supplier_info`
--
ALTER TABLE `supplier_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_phone` (`company_phone`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminmainmenu`
--
ALTER TABLE `adminmainmenu`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `adminsubmenu`
--
ALTER TABLE `adminsubmenu`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `bank_info`
--
ALTER TABLE `bank_info`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branceinfo`
--
ALTER TABLE `branceinfo`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cash_close`
--
ALTER TABLE `cash_close`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cash_close_expense`
--
ALTER TABLE `cash_close_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cash_close_income`
--
ALTER TABLE `cash_close_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `costinfo`
--
ALTER TABLE `costinfo`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `createadmin`
--
ALTER TABLE `createadmin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customer_transaction`
--
ALTER TABLE `customer_transaction`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `damage_entry`
--
ALTER TABLE `damage_entry`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `damage_return`
--
ALTER TABLE `damage_return`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `damage_stock`
--
ALTER TABLE `damage_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `date_stock_product`
--
ALTER TABLE `date_stock_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeecollarea`
--
ALTER TABLE `employeecollarea`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21004;

--
-- AUTO_INCREMENT for table `emp_old_salary`
--
ALTER TABLE `emp_old_salary`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_salary_collection`
--
ALTER TABLE `emp_salary_collection`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_salary_setup`
--
ALTER TABLE `emp_salary_setup`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expenseinfo`
--
ALTER TABLE `expenseinfo`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incomeinfo`
--
ALTER TABLE `incomeinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_providers`
--
ALTER TABLE `oauth_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_brand`
--
ALTER TABLE `product_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_company`
--
ALTER TABLE `product_company`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `product_item`
--
ALTER TABLE `product_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `product_measurement`
--
ALTER TABLE `product_measurement`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_measurement_subunit`
--
ALTER TABLE `product_measurement_subunit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `project_info`
--
ALTER TABLE `project_info`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_currentpurchase`
--
ALTER TABLE `purchase_currentpurchase`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `purchase_entry`
--
ALTER TABLE `purchase_entry`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2011;

--
-- AUTO_INCREMENT for table `purchase_ledger`
--
ALTER TABLE `purchase_ledger`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1882;

--
-- AUTO_INCREMENT for table `purchase_payment_statement`
--
ALTER TABLE `purchase_payment_statement`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1821;

--
-- AUTO_INCREMENT for table `purchase_return`
--
ALTER TABLE `purchase_return`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_return_entry`
--
ALTER TABLE `purchase_return_entry`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salarytitle`
--
ALTER TABLE `salarytitle`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sale_currentsale`
--
ALTER TABLE `sale_currentsale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sale_entry`
--
ALTER TABLE `sale_entry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sale_ledger`
--
ALTER TABLE `sale_ledger`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sale_payment_statement`
--
ALTER TABLE `sale_payment_statement`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sale_return_entry`
--
ALTER TABLE `sale_return_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session_emp_title`
--
ALTER TABLE `session_emp_title`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_damage_stock`
--
ALTER TABLE `shop_damage_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_product`
--
ALTER TABLE `stock_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1911;

--
-- AUTO_INCREMENT for table `supplier_info`
--
ALTER TABLE `supplier_info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `oauth_providers`
--
ALTER TABLE `oauth_providers`
  ADD CONSTRAINT `oauth_providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_productinfo`
--
ALTER TABLE `product_productinfo`
  ADD CONSTRAINT `FK_product_productinfo_product_brand` FOREIGN KEY (`brand_id`) REFERENCES `product_brand` (`id`),
  ADD CONSTRAINT `FK_product_productinfo_product_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`),
  ADD CONSTRAINT `FK_product_productinfo_product_item` FOREIGN KEY (`item_id`) REFERENCES `product_item` (`id`),
  ADD CONSTRAINT `FK_product_productinfo_product_measurement` FOREIGN KEY (`measurement_type`) REFERENCES `product_measurement` (`id`);

--
-- Constraints for table `purchase_ledger`
--
ALTER TABLE `purchase_ledger`
  ADD CONSTRAINT `FK_purchase_ledger_supplier_info` FOREIGN KEY (`supplier_id`) REFERENCES `supplier_info` (`id`);

--
-- Constraints for table `purchase_payment_statement`
--
ALTER TABLE `purchase_payment_statement`
  ADD CONSTRAINT `FK_purchase_payment_statement_supplier_info` FOREIGN KEY (`supplier_id`) REFERENCES `supplier_info` (`id`);

--
-- Constraints for table `sale_ledger`
--
ALTER TABLE `sale_ledger`
  ADD CONSTRAINT `FK_sale_ledger_customer_info` FOREIGN KEY (`customer_id`) REFERENCES `customer_info` (`id`);

--
-- Constraints for table `sale_payment_statement`
--
ALTER TABLE `sale_payment_statement`
  ADD CONSTRAINT `FK_sale_payment_statement_customer_info` FOREIGN KEY (`customer_id`) REFERENCES `customer_info` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
