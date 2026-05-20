-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2026 at 07:26 PM
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
-- Database: `php_erp_sa`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `debit_amt` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `credit_amt` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `unique_code` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `payment_type_bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expense_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `party_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `branch_id`, `group_id`, `number`, `name`, `description`, `debit_amt`, `credit_amt`, `unique_code`, `created_by`, `updated_by`, `created_at`, `updated_at`, `is_deletable`, `payment_type_bank_id`, `expense_category_id`, `party_id`) VALUES
(1, 1, 3, NULL, 'Stock-in-Hand', 'Total Current Stock Value', 0.0000, 0.0000, 'STOCK_IN_HAND', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0, NULL, NULL, NULL),
(2, 1, 8, NULL, 'Input CCGT', 'Records Input Tax/GST', 0.0000, 0.0000, 'INPUT_CGST', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0, NULL, NULL, NULL),
(3, 1, 8, NULL, 'Input CCGT', 'Records Input Tax/GST', 0.0000, 0.0000, 'INPUT_SGST', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0, NULL, NULL, NULL),
(4, 1, 8, NULL, 'Input Tax All', 'Records Input Taxes', 0.0000, 0.0000, 'INPUT_TAX_ALL', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0, NULL, NULL, NULL),
(5, 1, 20, NULL, 'Output CCGT', 'Records Output Tax/GST', 0.0000, 0.0000, 'OUTPUT_CGST', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0, NULL, NULL, NULL),
(6, 1, 20, NULL, 'Output CCGT', 'Records Output Tax/GST', 0.0000, 0.0000, 'OUTPUT_SGST', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0, NULL, NULL, NULL),
(7, 1, 20, NULL, 'Output Tax All', 'Records Output Tax All', 0.0000, 0.0000, 'OUTPUT_TAX_ALL', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0, NULL, NULL, NULL),
(8, 1, 5, NULL, 'Cash In Hand', 'Children of Cash Account', 0.0000, 0.0000, 'CASH_IN_HAND', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0, NULL, NULL, NULL),
(9, 1, 17, NULL, 'Unwithdrawn Cheques', 'Children of Other Current Liabilities', 0.0000, 0.0000, 'UNWITHDRAWN_CHEQUES', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0, NULL, NULL, NULL),
(10, 1, 14, NULL, 'Net Income(Profit)', 'Children of Reserves & Surplus', 0.0000, 0.0000, 'NET_INCOME_OR_PROFIT', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0, NULL, NULL, NULL),
(11, 1, 13, NULL, 'Opening Stock Balance', 'Children of Opening Balance Equity', 0.0000, 0.0000, 'OPENING_STOCK_BALANCE', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0, NULL, NULL, NULL),
(12, 1, 4, NULL, 'Sundry Debtors List', 'Children of Sundry Debtors', 0.0000, 0.0000, 'SUNDRY_DEBTORS_LIST', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0, NULL, NULL, NULL),
(13, 1, 18, NULL, 'Sundry Creditors List', 'Children of Sundry Creditors', 0.0000, 0.0000, 'SUNDRY_CREDITORS_LIST', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0, NULL, NULL, NULL),
(14, 1, 18, NULL, 'Party Opening Balance', 'Children of Opening Balance Equity', 0.0000, 0.0000, 'PARTY_OPENING_BALANCE', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0, NULL, NULL, NULL),
(15, 1, 9, NULL, 'Advance Paid for Purchase Order', 'Children of Other Current Assets', 0.0000, 0.0000, 'ADVANCE_PAID_FOR_PURCHASE_ORDER', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0, NULL, NULL, NULL),
(16, 1, 22, NULL, 'Purchases', 'Children of Purchase Accounts', 0.0000, 0.0000, 'PURCHASES', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0, NULL, NULL, NULL),
(19, 1, 23, NULL, 'দোকান ভাড়া', NULL, 0.0000, 0.0000, NULL, 1, 1, '2025-11-10 20:21:09', '2025-11-10 20:21:09', 0, NULL, 2, NULL),
(20, 1, 6, NULL, 'Bank', NULL, 0.0000, 0.0000, NULL, 2, 2, '2025-11-13 14:19:39', '2026-02-10 14:02:05', 0, 4, NULL, NULL),
(26, 1, 23, NULL, 'আপ্যায়ন খরচ', NULL, 0.0000, 0.0000, NULL, 2, 2, '2025-11-24 21:12:09', '2025-11-24 21:12:09', 0, NULL, 6, NULL),
(29, 1, 6, NULL, 'DUE', NULL, 0.0000, 0.0000, NULL, 6, 6, '2025-12-03 02:27:29', '2025-12-03 02:27:29', 0, 7, NULL, NULL),
(30, 1, 23, NULL, 'নাইট গার্ড', NULL, 0.0000, 0.0000, NULL, 6, 6, '2025-12-08 00:56:20', '2025-12-08 00:56:20', 0, NULL, 9, NULL),
(32, 1, 23, NULL, 'বিল', NULL, 0.0000, 0.0000, NULL, 5, 5, '2025-12-12 22:19:46', '2025-12-12 22:19:46', 0, NULL, 11, NULL),
(33, 1, 23, NULL, 'বিভিন্ন খরচ', NULL, 0.0000, 0.0000, NULL, 5, 5, '2025-12-14 02:55:56', '2025-12-15 21:02:42', 0, NULL, 12, NULL),
(34, 1, 23, NULL, 'বিভিন্ন খরচ', NULL, 0.0000, 0.0000, NULL, 4, 4, '2025-12-30 23:51:32', '2025-12-30 23:51:32', 0, NULL, 1, NULL),
(35, 1, 23, NULL, 'বিল', NULL, 0.0000, 0.0000, NULL, 4, 4, '2025-12-30 23:52:00', '2025-12-30 23:52:00', 0, NULL, 2, NULL),
(39, 1, 23, NULL, 'ব্যাংক কিস্তি', NULL, 0.0000, 0.0000, NULL, 4, 4, '2025-12-30 23:54:03', '2025-12-30 23:54:03', 0, NULL, 6, NULL),
(40, 1, 23, NULL, 'আপ্যায়ন খরচ', NULL, 0.0000, 0.0000, NULL, 4, 4, '2025-12-30 23:54:18', '2025-12-30 23:54:18', 0, NULL, 7, NULL),
(42, 1, 23, NULL, 'কমিশন', NULL, 0.0000, 0.0000, NULL, 4, 4, '2025-12-30 23:55:00', '2025-12-30 23:55:00', 0, NULL, 9, NULL),
(43, 1, 23, NULL, 'বেতন', NULL, 0.0000, 0.0000, NULL, 4, 4, '2025-12-30 23:55:16', '2025-12-30 23:55:16', 0, NULL, 10, NULL),
(44, 1, 23, NULL, 'ট্রান্সপোর্ট খরচ', NULL, 0.0000, 0.0000, NULL, 5, 5, '2026-01-05 22:54:05', '2026-01-05 22:54:05', 0, NULL, 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_groups`
--

CREATE TABLE `account_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `number` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `balance` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `unique_code` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_groups`
--

INSERT INTO `account_groups` (`id`, `parent_id`, `number`, `name`, `description`, `balance`, `unique_code`, `created_by`, `updated_by`, `created_at`, `updated_at`, `is_deletable`) VALUES
(1, 0, NULL, 'Assets', 'Assets are anything valuable that your company owns, whether it’s equipment, land, buildings, or intellectual property.', 0.0000, 'ASSETS', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(2, 1, NULL, 'Fixed Assets', 'Children of Assets', 0.0000, 'FIXED_ASSETS', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(3, 1, NULL, 'Current Assets', 'Children of Assets', 0.0000, 'CURRENT_ASSETS', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(4, 3, NULL, 'Sundry Debtors', 'Children of Current Assets', 0.0000, 'SUNDRY_DEBTORS', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(5, 3, NULL, 'Cash Account', 'Children of Current Assets', 0.0000, 'CASH_ACCOUNT', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(6, 3, NULL, 'Bank Accounts', 'Children of Current Assets', 0.0000, 'BANK_ACCOUNT', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(7, 3, NULL, 'Input Duties & Taxes', 'Children of Current Assets', 0.0000, 'INPUT_DUTIES_AND_TAXES', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(8, 7, NULL, 'Input Tax', 'Children of Current Assets', 0.0000, 'INPUT_TAX', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(9, 3, NULL, 'Other Current Assets', 'Children of Current Assets', 0.0000, 'OTHER_CURRENT_ASSETS', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(10, 0, NULL, 'Equities & Liabilities', 'Your liabilities are any debts your company has, whether it’s bank loans, mortgages, unpaid bills, IOUs, or any other sum of money that you owe someone else. If you’ve promised to pay someone in the future, and haven’t paid them yet, that’s a liability.', 0.0000, 'EQUITIES_AND_LIABILITIES', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(11, 10, NULL, 'Capital Account', 'Child of Equities & Liabilities', 0.0000, 'CAPITAL_ACCOUNT', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(12, 11, NULL, 'Owner\'s Equity', 'Child of Capital Account', 0.0000, 'OWNERS_EQUITY', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(13, 12, NULL, 'Opening Balance Equity', 'Owner\'s Equity', 0.0000, 'OPENING_BALANCE_EQUITY', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(14, 11, NULL, 'Reserves & Surplus', 'Child of Capital Account', 0.0000, 'RESERVES_AND_SURPLUS', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(15, 10, NULL, 'Long-term Liabilities', 'Child of Equities & Liabilities', 0.0000, 'LONG_TERM_EQUITIES_AND_LIABILITIES', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(16, 10, NULL, 'Current Liabilities', 'Child of Equities & Liabilities', 0.0000, 'CURRENT_LIABILITIES', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(17, 16, NULL, 'Other Current Liabilities', 'Child of Equities & Liabilities', 0.0000, 'OTHER_CURRENT_LIABILITIES', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(18, 16, NULL, 'Sundry Creditors', 'Child of Equities & Liabilities', 0.0000, 'SUNDRY_CREDITORS', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(19, 16, NULL, 'Outward Duties & Taxes', 'Child of Equities & Liabilities', 0.0000, 'OUTWARD_DUTIES_AND_TAXES', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(20, 19, NULL, 'Output Tax', 'Child of Outward Duties & Taxes', 0.0000, 'OUTPUT_TAX', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(21, 0, NULL, 'Expenses', '', 0.0000, 'EXPENSES', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(22, 21, NULL, 'Purchase Accounts', '', 0.0000, 'PURCHASE_ACCOUNTS', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(23, 21, NULL, 'Direct Expenses', '', 0.0000, 'DIRECT_EXPENSES', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0),
(24, 21, NULL, 'Indirect Expenses', '', 0.0000, 'INDIRECT_EXPENSES', NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `account_transactions`
--

CREATE TABLE `account_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_type` varchar(255) NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `debit_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `credit_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_name` varchar(255) NOT NULL,
  `footer_text` varchar(255) NOT NULL,
  `colored_logo` varchar(255) DEFAULT NULL,
  `light_logo` varchar(255) DEFAULT NULL,
  `active_sms_api` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fevicon` varchar(255) DEFAULT NULL,
  `language_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `application_name`, `footer_text`, `colored_logo`, `light_logo`, `active_sms_api`, `created_at`, `updated_at`, `fevicon`, `language_id`) VALUES
(1, 'Information Technology', '© 2026 By Inventory. Developed By Projukti Shbea', '69b10c38d91f5.png', NULL, NULL, '2025-11-02 10:02:31', '2026-03-11 03:31:20', '69b10c38d8bd4.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank_adjustments`
--

CREATE TABLE `bank_adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adjustment_date` date NOT NULL,
  `adjustment_type` varchar(255) NOT NULL,
  `payment_type_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `note` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `code`, `phone`, `email`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main Branch', 'MAIN', NULL, NULL, NULL, 1, '2026-05-20 17:26:37', '2026-05-20 17:26:37');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carriers`
--

CREATE TABLE `carriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cash_adjustments`
--

CREATE TABLE `cash_adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adjustment_date` date NOT NULL,
  `adjustment_type` varchar(255) NOT NULL,
  `payment_type_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `note` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cheque_transactions`
--

CREATE TABLE `cheque_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_date` date NOT NULL,
  `transfer_date` date DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `payment_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `payment_type_id` bigint(20) UNSIGNED NOT NULL,
  `transfer_to_payment_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `note` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_details` text DEFAULT NULL,
  `tax_number` varchar(255) DEFAULT NULL,
  `colored_logo` varchar(255) DEFAULT NULL,
  `light_logo` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `language_code` varchar(255) DEFAULT NULL,
  `language_name` varchar(255) DEFAULT NULL,
  `active_sms_api` varchar(255) DEFAULT NULL,
  `number_precision` int(11) NOT NULL DEFAULT 2,
  `quantity_precision` int(11) NOT NULL DEFAULT 2,
  `show_hsn` tinyint(1) NOT NULL DEFAULT 1,
  `show_sku` int(11) NOT NULL DEFAULT 1,
  `show_mrp` int(11) NOT NULL DEFAULT 1,
  `restrict_to_sell_above_mrp` tinyint(1) NOT NULL DEFAULT 0,
  `restrict_to_sell_below_msp` tinyint(1) NOT NULL DEFAULT 0,
  `auto_update_sale_price` tinyint(1) NOT NULL DEFAULT 0,
  `auto_update_purchase_price` tinyint(1) NOT NULL DEFAULT 0,
  `auto_update_average_purchase_price` tinyint(1) NOT NULL DEFAULT 0,
  `enable_serial_tracking` int(11) NOT NULL DEFAULT 1,
  `enable_batch_tracking` int(11) NOT NULL DEFAULT 2,
  `is_batch_compulsory` tinyint(1) NOT NULL DEFAULT 0,
  `enable_mfg_date` int(11) NOT NULL DEFAULT 1,
  `enable_exp_date` int(11) NOT NULL DEFAULT 1,
  `enable_model` int(11) NOT NULL DEFAULT 0,
  `enable_color` int(11) NOT NULL DEFAULT 0,
  `enable_size` int(11) NOT NULL DEFAULT 0,
  `show_tax_summary` int(11) NOT NULL DEFAULT 1,
  `tax_type` varchar(255) NOT NULL DEFAULT 'tax',
  `show_signature_on_invoice` int(11) NOT NULL DEFAULT 1,
  `show_brand_on_invoice` tinyint(1) NOT NULL DEFAULT 1,
  `show_tax_number_on_invoice` tinyint(1) NOT NULL DEFAULT 1,
  `show_terms_and_conditions_on_invoice` int(11) NOT NULL DEFAULT 1,
  `terms_and_conditions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `date_format` varchar(255) DEFAULT NULL,
  `time_format` varchar(255) DEFAULT NULL,
  `is_enable_crm` tinyint(1) NOT NULL DEFAULT 0,
  `is_saudi` int(11) DEFAULT 0,
  `is_enable_carrier` tinyint(1) NOT NULL DEFAULT 1,
  `is_enable_carrier_charge` tinyint(1) NOT NULL DEFAULT 1,
  `show_party_due_payment` tinyint(1) NOT NULL DEFAULT 1,
  `show_discount` tinyint(1) NOT NULL DEFAULT 1,
  `allow_negative_stock_billing` tinyint(1) NOT NULL DEFAULT 1,
  `is_enable_secondary_currency` tinyint(1) NOT NULL DEFAULT 1,
  `is_item_name_unique` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `mobile`, `email`, `address`, `state_id`, `bank_details`, `tax_number`, `colored_logo`, `light_logo`, `signature`, `language_code`, `language_name`, `active_sms_api`, `number_precision`, `quantity_precision`, `show_hsn`, `show_sku`, `show_mrp`, `restrict_to_sell_above_mrp`, `restrict_to_sell_below_msp`, `auto_update_sale_price`, `auto_update_purchase_price`, `auto_update_average_purchase_price`, `enable_serial_tracking`, `enable_batch_tracking`, `is_batch_compulsory`, `enable_mfg_date`, `enable_exp_date`, `enable_model`, `enable_color`, `enable_size`, `show_tax_summary`, `tax_type`, `show_signature_on_invoice`, `show_brand_on_invoice`, `show_tax_number_on_invoice`, `show_terms_and_conditions_on_invoice`, `terms_and_conditions`, `created_at`, `updated_at`, `timezone`, `date_format`, `time_format`, `is_enable_crm`, `is_saudi`, `is_enable_carrier`, `is_enable_carrier_charge`, `show_party_due_payment`, `show_discount`, `allow_negative_stock_billing`, `is_enable_secondary_currency`, `is_item_name_unique`) VALUES
(1, 'Byte Inv.', '+880 1617-033692', 'support@bytesoft.shop', 'Nawdapara, Airport Road, Rajshahi', NULL, NULL, '1452551815151', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 'tax', 0, 1, 1, 1, 'বিক্রিত মাল ফেরত নেওয়া হয় না।', '2025-11-02 10:02:31', '2026-05-15 11:39:56', 'Asia/Riyadh', 'd-m-Y', '12', 0, 1, 1, 0, 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `code` varchar(3) NOT NULL,
  `exchange_rate` decimal(15,6) NOT NULL DEFAULT 1.000000,
  `is_company_currency` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `exchange_rate`, `is_company_currency`, `created_at`, `updated_at`) VALUES
(1, 'Bangladeshi Taka', '৳', 'BDT', 1.000000, 1, '2025-11-02 10:02:32', '2025-11-02 16:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `domain` varchar(255) NOT NULL,
  `tenant_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `keys` text DEFAULT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `content`, `keys`, `delete_flag`, `created_at`, `updated_at`) VALUES
(1, 'SALE INVOICE', 'Invoice #[Invoice Number] - [Customer Name]', 'Dear [Customer Name],\n\nPlease find attached the invoice for your recent sale.\n\nInvoice Details:\n\n   Invoice Number: [Invoice Number]\n   Sale Date: [Sale Date]\n   Due Date: [Due Date]\n   Total: [Total Amount]\n   Paid Amount: [Paid Amount]\n   Invoice Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n[Your Company Name]\n[Your Mobile Number]', '[Invoice Number]\n\n[Customer Name]\n\n[Sale Date]\n\n[Due Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(2, 'SALE ORDER', 'Sale Order #[Order Number] - [Customer Name]', 'Dear [Customer Name],\n\nPlease find attached the details of sale order.\n\nOrder Details:\n\n    Order Number: [Order Number]\n\n    Order Date: [Order Date]\n\n    Due Date: [Due Date]\n\n    Total: [Total Amount]\n\n    Paid Amount: [Paid Amount]\n\n    Invoice Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n\n[Your Company Name]\n\n[Your Mobile Number]', '[Order Number]\n\n[Customer Name]\n\n[Order Date]\n\n[Due Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(3, 'SALE RETURN', 'Sale Return/Credit Note #[Return Number] - [Customer Name]', 'Dear [Customer Name],\n\nPlease find attached the details of sale return/credit note.\n\nSale Return Details:\n\n    Return Number: [Return Number]\n\n    Return Date: [Return Date]\n\n    Total: [Total Amount]\n\n    Return Amount: [Return Amount]\n\n    Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n\n[Your Company Name]\n\n[Your Mobile Number]', '[Return Number]\n\n[Customer Name]\n\n[Return Date]\n\n[Total Amount]\n\n[Return Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(4, 'PURCHASE BILL', 'Purchase Bill #[Bill Number] - [Supplier Name]', 'Dear [Supplier Name],\n\nPlease find attached the bill for your recent purchase.\n\nBill Details:\n\n   Bill Number: [Bill Number]\n   Purchase Date: [Purchase Date]\n   Total: [Total Amount]\n   Paid Amount: [Paid Amount]\n   Bill Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n[Your Company Name]\n[Your Mobile Number]', '[Bill Number]\n\n[Supplier Name]\n\n[Purchase Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(5, 'PURCHASE ORDER', 'Purchase Order #[Order Number] - [Supplier Name]', 'Dear [Supplier Name],\n\nPlease find attached the details of purchase order.\n\nPurchase Order Details:\n\n    Order Number: [Order Number]\n\n    Order Date: [Order Date]\n\n    Due Date: [Due Date]\n\n    Total: [Total Amount]\n\n    Paid Amount: [Paid Amount]\n\n    Bill Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n\n[Your Company Name]\n\n[Your Mobile Number]', '[Order Number]\n\n[Customer Name]\n\n[Order Date]\n\n[Due Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(6, 'PURCHASE RETURN', 'Purchase Return/Debit Note #[Return Number] - [Supplier Name]', 'Dear [Supplier Name],\n\nPlease find attached the details of purchase return/credit note.\n\nPurchase Return Details:\n\n    Return Number: [Return Number]\n\n    Return Date: [Return Date]\n\n    Total: [Total Amount]\n\n    Return Amount: [Return Amount]\n\n    Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n\n[Your Company Name]\n\n[Your Mobile Number]', '[Return Number]\n\n[Supplier Name]\n\n[Return Date]\n\n[Total Amount]\n\n[Return Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(7, 'QUOTATION', 'Quotation #[Quotation Number] - [Customer Name]', 'Dear [Customer Name],\n\nPlease find attached the details of Quotation.\n\nQuotation Details:\n\n    Quotation Number: [Quotation Number]\n\n    Quotation Date: [Quotation Date]\n\n    Total: [Total Amount]\n\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n\n[Your Company Name]\n\n[Your Mobile Number]', '[Quotation Number]\n\n[Customer Name]\n\n[Quotation Date]\n\n[Total Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-02 10:02:32', '2025-11-02 10:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `expense_date` date NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `expense_code` varchar(255) DEFAULT NULL,
  `expense_category_id` bigint(20) UNSIGNED NOT NULL,
  `expense_subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `round_off` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `grand_total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `paid_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `account_group_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `name`, `description`, `amount`, `account_group_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'বিভিন্ন খরচ', NULL, 0.0000, 23, 4, 4, '2025-12-30 23:51:32', '2025-12-30 23:51:32'),
(2, 'বিল', NULL, 0.0000, 23, 4, 4, '2025-12-30 23:52:00', '2025-12-30 23:52:00'),
(7, 'আপ্যায়ন খরচ', NULL, 0.0000, 23, 4, 4, '2025-12-30 23:54:18', '2025-12-30 23:54:18'),
(9, 'কমিশন', NULL, 0.0000, 23, 4, 4, '2025-12-30 23:55:00', '2025-12-30 23:55:00'),
(10, 'বেতন', NULL, 0.0000, 23, 4, 4, '2025-12-30 23:55:16', '2025-12-30 23:55:16'),
(11, 'ট্রান্সপোর্ট খরচ', NULL, 0.0000, 23, 5, 5, '2026-01-05 22:54:05', '2026-01-05 22:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `expense_items`
--

CREATE TABLE `expense_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_id` bigint(20) UNSIGNED NOT NULL,
  `expense_item_master_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `unit_price` decimal(20,4) NOT NULL DEFAULT 0.0000 COMMENT 'original price(without tax)',
  `quantity` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_type` varchar(255) NOT NULL DEFAULT 'inclusive',
  `tax_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `discount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `discount_type` varchar(255) DEFAULT NULL COMMENT 'fixed or percentage',
  `discount_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_item_master`
--

CREATE TABLE `expense_item_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `unit_price` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_type` varchar(255) NOT NULL DEFAULT 'inclusive',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_subcategories`
--

CREATE TABLE `expense_subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `hsn` text DEFAULT NULL,
  `sku` text DEFAULT NULL,
  `is_service` tinyint(1) NOT NULL DEFAULT 0,
  `item_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `base_unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `secondary_unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `conversion_rate` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `sale_price` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `is_sale_price_with_tax` tinyint(1) NOT NULL,
  `sale_price_discount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `sale_price_discount_type` varchar(255) NOT NULL,
  `wholesale_price` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `is_wholesale_price_with_tax` tinyint(1) NOT NULL DEFAULT 0,
  `purchase_price` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `is_purchase_price_with_tax` tinyint(1) NOT NULL,
  `profit_margin` decimal(20,4) NOT NULL DEFAULT 0.0000 COMMENT 'In % Percentage',
  `mrp` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `msp` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tracking_type` varchar(255) NOT NULL,
  `item_location` varchar(255) DEFAULT NULL,
  `min_stock` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `current_stock` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `image_path` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `prefix_code`, `count_id`, `item_code`, `name`, `description`, `hsn`, `sku`, `is_service`, `item_category_id`, `brand_id`, `base_unit_id`, `secondary_unit_id`, `conversion_rate`, `sale_price`, `is_sale_price_with_tax`, `sale_price_discount`, `sale_price_discount_type`, `wholesale_price`, `is_wholesale_price_with_tax`, `purchase_price`, `is_purchase_price_with_tax`, `profit_margin`, `mrp`, `msp`, `tax_id`, `tracking_type`, `item_location`, `min_stock`, `current_stock`, `image_path`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(408, NULL, '1', '812405', 'Test Product', NULL, NULL, NULL, 0, 92, NULL, 1, 1, 1.0000, 200.0000, 0, 0.0000, 'percentage', 0.0000, 0, 4.8780, 0, 0.0000, 0.0000, 0.0000, 1, 'regular', NULL, 0.0000, 34.0000, NULL, 1, 1, 1, '2026-03-11 03:23:28', '2026-05-15 11:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `item_batch_masters`
--

CREATE TABLE `item_batch_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `mfg_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `model_no` varchar(255) DEFAULT NULL,
  `mrp` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_batch_quantities`
--

CREATE TABLE `item_batch_quantities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `item_batch_master_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_batch_transactions`
--

CREATE TABLE `item_batch_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unique_code` varchar(255) NOT NULL,
  `item_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `item_batch_master_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`id`, `name`, `description`, `created_by`, `updated_by`, `status`, `is_deletable`, `created_at`, `updated_at`) VALUES
(92, 'Test Category', NULL, 1, 1, 1, 1, '2026-03-11 03:23:24', '2026-03-11 03:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `item_general_quantities`
--

CREATE TABLE `item_general_quantities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_general_quantities`
--

INSERT INTO `item_general_quantities` (`id`, `item_id`, `warehouse_id`, `quantity`, `created_at`, `updated_at`) VALUES
(5345, 408, 1, 34.0000, '2026-05-15 11:37:43', '2026-05-15 11:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `item_serial_masters`
--

CREATE TABLE `item_serial_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `serial_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_serial_quantities`
--

CREATE TABLE `item_serial_quantities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `item_serial_master_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_serial_transactions`
--

CREATE TABLE `item_serial_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unique_code` varchar(255) NOT NULL,
  `item_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `item_serial_master_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_stock_transfers`
--

CREATE TABLE `item_stock_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stock_transfer_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `from_warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `to_warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `from_item_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `to_item_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_transactions`
--

CREATE TABLE `item_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_type` varchar(255) NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `unique_code` varchar(255) NOT NULL,
  `transaction_date` date NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `tracking_type` varchar(255) NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `mrp` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `quantity` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `unit_price` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `discount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `discount_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `discount_type` varchar(255) NOT NULL DEFAULT 'percentage',
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_type` varchar(255) NOT NULL DEFAULT 'inclusive',
  `tax_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `charge_type` varchar(255) DEFAULT NULL,
  `charge_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `charge_tax_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(20,4) NOT NULL DEFAULT 0.0000 COMMENT 'Including (Discount) - (with or without Tax) ',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_transactions`
--

INSERT INTO `item_transactions` (`id`, `branch_id`, `transaction_type`, `transaction_id`, `unique_code`, `transaction_date`, `warehouse_id`, `item_id`, `description`, `tracking_type`, `unit_id`, `mrp`, `quantity`, `unit_price`, `discount`, `discount_amount`, `discount_type`, `tax_id`, `tax_type`, `tax_amount`, `charge_type`, `charge_amount`, `charge_tax_amount`, `total`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Item Opening', 408, 'ITEM_OPENING', '2026-03-11', 1, 408, NULL, 'regular', 1, 0.0000, 40.0000, 0.0000, 0.0000, 0.0000, 'percentage', 1, 'exclusive', 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1, 1, '2026-03-11 03:23:28', '2026-03-11 03:23:28'),
(2, 1, 'Sale', 1, 'SALE', '2026-03-11', 1, 408, NULL, 'regular', 1, 0.0000, 1.0000, 200.0000, 0.0000, 0.0000, 'percentage', 1, 'exclusive', 0.0000, NULL, 0.0000, 0.0000, 200.0000, 1, 1, '2026-03-11 03:23:35', '2026-03-11 03:23:35'),
(3, 1, 'Sale', 2, 'SALE', '2026-03-11', 1, 408, NULL, 'regular', 1, 0.0000, 1.0000, 200.0000, 0.0000, 0.0000, 'percentage', 1, 'exclusive', 0.0000, NULL, 0.0000, 0.0000, 200.0000, 1, 1, '2026-03-11 05:39:29', '2026-03-11 05:39:29'),
(4, 1, 'Sale', 3, 'SALE', '2026-03-11', 1, 408, NULL, 'regular', 1, 0.0000, 1.0000, 200.0000, 0.0000, 0.0000, 'percentage', 1, 'exclusive', 0.0000, NULL, 0.0000, 0.0000, 200.0000, 1, 1, '2026-03-11 05:40:08', '2026-03-11 05:40:08'),
(5, 1, 'Sale', 4, 'SALE', '2026-03-11', 1, 408, NULL, 'regular', 1, 0.0000, 1.0000, 200.0000, 0.0000, 0.0000, 'percentage', 1, 'exclusive', 0.0000, NULL, 0.0000, 0.0000, 200.0000, 1, 1, '2026-03-11 05:40:26', '2026-03-11 05:40:26'),
(6, 1, 'Purchase', 1, 'PURCHASE', '2026-03-13', 1, 408, NULL, 'regular', 1, 0.0000, 1.0000, 200.0000, 0.0000, 0.0000, 'percentage', 1, 'exclusive', 0.0000, 'shipping', 0.0000, 0.0000, 200.0000, 1, 1, '2026-03-12 18:16:46', '2026-03-12 18:16:46'),
(7, 1, 'Sale', 5, 'SALE', '2026-03-13', 1, 408, NULL, 'regular', 1, 0.0000, 1.0000, 200.0000, 0.0000, 0.0000, 'percentage', 1, 'exclusive', 0.0000, NULL, 0.0000, 0.0000, 200.0000, 1, 1, '2026-03-13 05:57:51', '2026-03-13 05:57:51'),
(8, 1, 'Sale', 1, 'SALE', '2026-05-15', 1, 408, NULL, 'regular', 1, 0.0000, 1.0000, 200.0000, 0.0000, 0.0000, 'percentage', 1, 'exclusive', 0.0000, NULL, 0.0000, 0.0000, 200.0000, 1, 1, '2026-05-15 11:22:51', '2026-05-15 11:22:51'),
(9, 1, 'Sale', 2, 'SALE', '2026-05-15', 1, 408, NULL, 'regular', 1, 0.0000, 1.0000, 200.0000, 0.0000, 0.0000, 'percentage', 1, 'exclusive', 0.0000, NULL, 0.0000, 0.0000, 200.0000, 1, 1, '2026-05-15 11:34:45', '2026-05-15 11:34:45'),
(10, 1, 'Sale Order', 1, 'SALE_ORDER', '2026-05-15', 1, 408, NULL, 'regular', 1, 0.0000, 1.0000, 200.0000, 0.0000, 0.0000, 'percentage', 1, 'exclusive', 0.0000, NULL, 0.0000, 0.0000, 200.0000, 1, 1, '2026-05-15 11:37:43', '2026-05-15 11:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `direction` varchar(255) NOT NULL,
  `emoji` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `direction`, `emoji`, `status`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'ltr', 'flag-icon-us', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(4, 'bn', 'Bangla', 'ltr', 'flag-icon-bd', 1, '2025-11-08 15:53:58', '2025-11-08 19:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_15_000010_create_tenants_table', 1),
(5, '2019_09_15_000020_create_domains_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_06_07_063838_create_app_settings', 1),
(8, '2023_06_20_085616_create_languages_table', 1),
(9, '2023_06_27_103949_create_smtp_settings_table', 1),
(10, '2023_07_04_105425_create_permission_tables', 1),
(11, '2023_07_05_103719_create_permission_groups_table', 1),
(12, '2023_08_08_115948_add_permission_group_id_to_permissions_table', 1),
(13, '2023_10_15_100300_add_new_column_status_to_permissions_table', 1),
(14, '2023_10_16_122132_add_new_column_status_to_roles_table', 1),
(15, '2023_10_17_125940_add_new_column_display_name_to_permissions_table', 1),
(16, '2023_11_08_053851_create_customers_table', 1),
(17, '2023_11_10_050850_create_taxes_table', 1),
(18, '2023_11_10_112628_create_services_table', 1),
(19, '2023_11_20_061004_create_payment_types_table', 1),
(20, '2023_11_21_130336_create_jobs_table', 1),
(21, '2023_11_23_045845_create_twilio_table', 1),
(22, '2023_11_23_045911_create_vonage_table', 1),
(23, '2023_11_25_142413_create_sms_templates_table', 1),
(24, '2023_11_26_130942_create_company_table', 1),
(25, '2023_11_28_053051_add_column_fevicon_to_app_settings_table', 1),
(26, '2023_11_29_112601_add_columns_in_company_table', 1),
(27, '2023_12_03_122051_create_email_templates_table', 1),
(28, '2023_12_07_123729_create_orders_table', 1),
(29, '2023_12_07_132219_create_ordered_products', 1),
(30, '2023_12_12_155820_create_prefix_table', 1),
(31, '2023_12_15_120404_create_payment_order_table', 1),
(32, '2023_12_26_163249_add_new_column_assigned_user_id_to_ordered_products_table', 1),
(33, '2023_12_26_193440_add_new_column_assigned_user_note_to_ordered_products_table', 1),
(34, '2023_12_26_194110_add_new_column_schedule_note_to_orders_table', 1),
(35, '2023_12_27_193837_add_new_column_job_code_in_ordered_products_table', 1),
(36, '2023_12_29_172040_add_new_columns_in_oredered_products_table', 1),
(37, '2024_01_18_113646_add_new_column_in_app_settings_table', 1),
(38, '2024_03_10_111342_add_foreign_key_to_permissions_table', 1),
(39, '2024_03_10_120003_remove_cascade_delete_from_roles_has_permissions_table', 1),
(40, '2024_03_10_121727_add_foreign_key_to_users_table', 1),
(41, '2024_03_20_112949_add_created_by_in_users_table', 1),
(42, '2024_03_20_115740_add_created_by_in_roles_table', 1),
(43, '2024_05_16_150510_create_account_groups_table', 1),
(44, '2024_05_16_150540_create_accounts_table', 1),
(45, '2024_05_16_154445_create_account_transactions_table', 1),
(46, '2024_05_20_154231_create_expense_category_table', 1),
(47, '2024_05_24_100846_create_expense_items_master', 1),
(48, '2024_05_28_151159_create_expenses_table', 1),
(49, '2024_05_28_151236_create_expense_items_table', 1),
(50, '2024_06_02_063350_add_column_in_accounts_table', 1),
(51, '2024_06_08_103256_create_warehouses_table', 1),
(52, '2024_06_08_140347_create_item_categories_table', 1),
(53, '2024_06_08_141334_create_units_table', 1),
(54, '2024_06_08_141335_create_items_table', 1),
(55, '2024_06_12_144322_create_item_transactions_table', 1),
(56, '2024_06_21_092617_create_item_serial_master_table', 1),
(57, '2024_06_24_165212_create_item_batch_masters_table', 1),
(58, '2024_06_24_165213_create_item_batche_transactions_table', 1),
(59, '2024_07_01_101046_create_states_table', 1),
(60, '2024_07_01_101047_create_parties_table', 1),
(61, '2024_07_02_165531_create_party_transactions_table', 1),
(62, '2024_07_05_161301_create_purchase_orders_table', 1),
(63, '2024_07_12_144039_create_payment_transaction_table', 1),
(64, '2024_07_16_141128_create_item_batch_quantities_table', 1),
(65, '2024_07_20_173042_add_column_in_company_table', 1),
(66, '2024_07_26_173727_create_purchases_table', 1),
(67, '2024_07_27_205617_add_column_in_accounts_table', 1),
(68, '2024_08_04_111055_create_purchase_return_table', 1),
(69, '2024_08_08_101324_create_item_serial_transactions', 1),
(70, '2024_08_09_150618_create_item_serial_quantities_table', 1),
(71, '2024_08_10_120309_create_item_general_quantities_table', 1),
(72, '2024_08_13_140243_create_sale_order_table', 1),
(73, '2024_08_13_140401_create_sale_table', 1),
(74, '2024_08_13_140447_create_sale_return_table', 1),
(75, '2024_09_03_150952_create_cash_adjustment_table', 1),
(76, '2024_09_05_105556_create_cheque_transaction_table', 1),
(77, '2024_09_10_172119_create_stock_transfers_table', 1),
(78, '2024_09_13_130621_create_item_stock_transfers_table', 1),
(79, '2024_10_09_165405_create_party_payments_table', 1),
(80, '2024_10_09_165406_create_party_payment_allocations_table', 1),
(81, '2024_10_15_122748_update_users_table', 1),
(82, '2024_11_16_145822_update_users_table', 1),
(83, '2024_11_16_165039_create_user_warehouses_table', 1),
(84, '2024_11_17_161743_update_party_table', 1),
(85, '2024_11_18_170736_update_items_table', 1),
(86, '2024_11_23_151907_update_orders_table', 1),
(87, '2024_11_24_112425_create_version_table', 1),
(88, '2024_11_25_130715_update_company_table', 1),
(89, '2024_11_30_141029_update_orders_table', 1),
(90, '2024_12_02_094930_update_items_table', 1),
(91, '2024_12_10_110456_update_company_table', 1),
(92, '2024_12_10_150019_update_parties_table', 1),
(93, '2024_12_17_103659_update_company_table', 1),
(94, '2024_12_22_101427_update_company_table', 1),
(95, '2024_12_24_174820_update_parties_table', 1),
(96, '2024_12_28_134822_create_party_balance_after_adjustments_table', 1),
(97, '2024_12_29_180251_update_company_table', 1),
(98, '2025_01_05_132053_update_company_table', 1),
(99, '2025_01_14_133616_create_brands_table', 1),
(100, '2025_01_14_143954_update_items_table', 1),
(101, '2025_01_18_111043_update_sale_orders_table', 1),
(102, '2025_01_19_090301_create_table_status_histories_table', 1),
(103, '2025_01_29_131743_create_quotations_table', 1),
(104, '2025_01_30_115453_update_sales_table', 1),
(105, '2025_01_30_120506_update_prefix_table', 1),
(106, '2025_01_31_091629_create_currencies_table', 1),
(107, '2025_01_31_122114_update_company_table', 1),
(108, '2025_01_31_131239_udpate_party_table', 1),
(109, '2025_01_31_161036_update_sales_table', 1),
(110, '2025_01_31_172510_update_sale_orders_table', 1),
(111, '2025_01_31_172558_update_sale_return_table', 1),
(112, '2025_01_31_172643_update_purchases_table', 1),
(113, '2025_01_31_172658_update_purchase_orders_table', 1),
(114, '2025_01_31_172704_update_purchase_return_table', 1),
(115, '2025_01_31_173200_update_quotations_table', 1),
(116, '2025_02_03_103555_update_purchase_orders_table', 1),
(117, '2025_02_07_125321_update_company_table', 1),
(118, '2025_02_09_121634_update_company_table', 1),
(119, '2025_02_12_173548_create_expense_subcategories_table', 1),
(120, '2025_02_12_175839_update_expenses_table', 1),
(121, '2025_02_16_174545_update_items_table', 1),
(122, '2025_02_16_183222_update_company_table', 1),
(123, '2025_03_04_125219_create_carriers_table', 1),
(124, '2025_03_04_151219_update_company_table', 1),
(125, '2025_03_08_110515_update_purchase_table', 1),
(126, '2025_03_08_113522_update_item_transactions_table', 1),
(127, '2025_03_17_095035_update_item_transactions_table', 1),
(128, '2025_03_19_120336_update_items_table', 1),
(129, '2025_04_19_083922_update_company_table', 1),
(130, '2025_04_28_084034_create_stock_adjustments_table', 1),
(131, '2025_05_07_101746_update_prefix_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 7),
(5, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 2),
(5, 'App\\Models\\User', 3),
(5, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 7),
(6, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 2),
(6, 'App\\Models\\User', 3),
(6, 'App\\Models\\User', 4),
(6, 'App\\Models\\User', 7),
(7, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 2),
(7, 'App\\Models\\User', 3),
(7, 'App\\Models\\User', 4),
(7, 'App\\Models\\User', 7),
(8, 'App\\Models\\User', 1),
(8, 'App\\Models\\User', 2),
(8, 'App\\Models\\User', 3),
(8, 'App\\Models\\User', 4),
(8, 'App\\Models\\User', 6),
(8, 'App\\Models\\User', 7),
(9, 'App\\Models\\User', 1),
(9, 'App\\Models\\User', 2),
(9, 'App\\Models\\User', 3),
(9, 'App\\Models\\User', 4),
(9, 'App\\Models\\User', 7),
(10, 'App\\Models\\User', 1),
(10, 'App\\Models\\User', 2),
(10, 'App\\Models\\User', 3),
(10, 'App\\Models\\User', 4),
(10, 'App\\Models\\User', 7),
(11, 'App\\Models\\User', 1),
(11, 'App\\Models\\User', 2),
(11, 'App\\Models\\User', 3),
(11, 'App\\Models\\User', 4),
(11, 'App\\Models\\User', 7),
(12, 'App\\Models\\User', 1),
(12, 'App\\Models\\User', 2),
(12, 'App\\Models\\User', 3),
(12, 'App\\Models\\User', 4),
(12, 'App\\Models\\User', 7),
(13, 'App\\Models\\User', 1),
(13, 'App\\Models\\User', 2),
(13, 'App\\Models\\User', 3),
(13, 'App\\Models\\User', 4),
(13, 'App\\Models\\User', 7),
(14, 'App\\Models\\User', 1),
(14, 'App\\Models\\User', 2),
(14, 'App\\Models\\User', 3),
(14, 'App\\Models\\User', 4),
(14, 'App\\Models\\User', 7),
(15, 'App\\Models\\User', 1),
(15, 'App\\Models\\User', 2),
(15, 'App\\Models\\User', 3),
(15, 'App\\Models\\User', 4),
(15, 'App\\Models\\User', 7),
(16, 'App\\Models\\User', 1),
(16, 'App\\Models\\User', 2),
(16, 'App\\Models\\User', 3),
(16, 'App\\Models\\User', 4),
(16, 'App\\Models\\User', 7),
(17, 'App\\Models\\User', 1),
(17, 'App\\Models\\User', 2),
(17, 'App\\Models\\User', 3),
(17, 'App\\Models\\User', 4),
(17, 'App\\Models\\User', 7),
(18, 'App\\Models\\User', 1),
(18, 'App\\Models\\User', 2),
(18, 'App\\Models\\User', 3),
(18, 'App\\Models\\User', 4),
(18, 'App\\Models\\User', 7),
(19, 'App\\Models\\User', 1),
(19, 'App\\Models\\User', 2),
(19, 'App\\Models\\User', 3),
(19, 'App\\Models\\User', 4),
(19, 'App\\Models\\User', 7),
(20, 'App\\Models\\User', 1),
(20, 'App\\Models\\User', 2),
(20, 'App\\Models\\User', 3),
(20, 'App\\Models\\User', 4),
(20, 'App\\Models\\User', 7),
(21, 'App\\Models\\User', 1),
(21, 'App\\Models\\User', 2),
(21, 'App\\Models\\User', 3),
(21, 'App\\Models\\User', 4),
(21, 'App\\Models\\User', 7),
(22, 'App\\Models\\User', 1),
(22, 'App\\Models\\User', 2),
(22, 'App\\Models\\User', 3),
(22, 'App\\Models\\User', 4),
(22, 'App\\Models\\User', 7),
(23, 'App\\Models\\User', 1),
(23, 'App\\Models\\User', 2),
(23, 'App\\Models\\User', 3),
(23, 'App\\Models\\User', 4),
(23, 'App\\Models\\User', 7),
(24, 'App\\Models\\User', 1),
(24, 'App\\Models\\User', 2),
(24, 'App\\Models\\User', 3),
(24, 'App\\Models\\User', 7),
(25, 'App\\Models\\User', 1),
(25, 'App\\Models\\User', 2),
(25, 'App\\Models\\User', 3),
(25, 'App\\Models\\User', 4),
(25, 'App\\Models\\User', 6),
(25, 'App\\Models\\User', 7),
(26, 'App\\Models\\User', 1),
(26, 'App\\Models\\User', 2),
(26, 'App\\Models\\User', 3),
(26, 'App\\Models\\User', 4),
(26, 'App\\Models\\User', 7),
(27, 'App\\Models\\User', 1),
(27, 'App\\Models\\User', 2),
(27, 'App\\Models\\User', 3),
(27, 'App\\Models\\User', 4),
(27, 'App\\Models\\User', 6),
(27, 'App\\Models\\User', 7),
(28, 'App\\Models\\User', 1),
(28, 'App\\Models\\User', 2),
(28, 'App\\Models\\User', 3),
(28, 'App\\Models\\User', 4),
(28, 'App\\Models\\User', 7),
(29, 'App\\Models\\User', 1),
(29, 'App\\Models\\User', 2),
(29, 'App\\Models\\User', 3),
(29, 'App\\Models\\User', 4),
(29, 'App\\Models\\User', 7),
(30, 'App\\Models\\User', 1),
(30, 'App\\Models\\User', 2),
(30, 'App\\Models\\User', 3),
(30, 'App\\Models\\User', 4),
(30, 'App\\Models\\User', 7),
(31, 'App\\Models\\User', 1),
(31, 'App\\Models\\User', 2),
(31, 'App\\Models\\User', 3),
(31, 'App\\Models\\User', 4),
(31, 'App\\Models\\User', 7),
(32, 'App\\Models\\User', 1),
(32, 'App\\Models\\User', 2),
(32, 'App\\Models\\User', 3),
(32, 'App\\Models\\User', 4),
(32, 'App\\Models\\User', 7),
(33, 'App\\Models\\User', 1),
(33, 'App\\Models\\User', 2),
(33, 'App\\Models\\User', 3),
(33, 'App\\Models\\User', 4),
(33, 'App\\Models\\User', 7),
(34, 'App\\Models\\User', 1),
(34, 'App\\Models\\User', 2),
(34, 'App\\Models\\User', 3),
(34, 'App\\Models\\User', 4),
(34, 'App\\Models\\User', 6),
(34, 'App\\Models\\User', 7),
(35, 'App\\Models\\User', 1),
(35, 'App\\Models\\User', 2),
(35, 'App\\Models\\User', 3),
(35, 'App\\Models\\User', 4),
(35, 'App\\Models\\User', 7),
(36, 'App\\Models\\User', 1),
(36, 'App\\Models\\User', 2),
(36, 'App\\Models\\User', 3),
(36, 'App\\Models\\User', 4),
(36, 'App\\Models\\User', 6),
(36, 'App\\Models\\User', 7),
(37, 'App\\Models\\User', 1),
(37, 'App\\Models\\User', 2),
(37, 'App\\Models\\User', 3),
(37, 'App\\Models\\User', 4),
(37, 'App\\Models\\User', 7),
(38, 'App\\Models\\User', 1),
(38, 'App\\Models\\User', 2),
(38, 'App\\Models\\User', 3),
(38, 'App\\Models\\User', 4),
(38, 'App\\Models\\User', 6),
(38, 'App\\Models\\User', 7),
(39, 'App\\Models\\User', 1),
(40, 'App\\Models\\User', 1),
(40, 'App\\Models\\User', 2),
(40, 'App\\Models\\User', 3),
(40, 'App\\Models\\User', 4),
(40, 'App\\Models\\User', 6),
(40, 'App\\Models\\User', 7),
(41, 'App\\Models\\User', 1),
(41, 'App\\Models\\User', 2),
(41, 'App\\Models\\User', 3),
(41, 'App\\Models\\User', 4),
(41, 'App\\Models\\User', 6),
(41, 'App\\Models\\User', 7),
(42, 'App\\Models\\User', 1),
(42, 'App\\Models\\User', 2),
(42, 'App\\Models\\User', 3),
(42, 'App\\Models\\User', 4),
(42, 'App\\Models\\User', 6),
(42, 'App\\Models\\User', 7),
(43, 'App\\Models\\User', 1),
(43, 'App\\Models\\User', 2),
(43, 'App\\Models\\User', 3),
(43, 'App\\Models\\User', 4),
(43, 'App\\Models\\User', 7),
(44, 'App\\Models\\User', 1),
(44, 'App\\Models\\User', 2),
(44, 'App\\Models\\User', 3),
(44, 'App\\Models\\User', 4),
(44, 'App\\Models\\User', 6),
(44, 'App\\Models\\User', 7),
(45, 'App\\Models\\User', 1),
(45, 'App\\Models\\User', 2),
(45, 'App\\Models\\User', 3),
(45, 'App\\Models\\User', 4),
(45, 'App\\Models\\User', 5),
(45, 'App\\Models\\User', 6),
(45, 'App\\Models\\User', 7),
(46, 'App\\Models\\User', 1),
(46, 'App\\Models\\User', 2),
(46, 'App\\Models\\User', 3),
(46, 'App\\Models\\User', 4),
(46, 'App\\Models\\User', 7),
(47, 'App\\Models\\User', 1),
(47, 'App\\Models\\User', 2),
(47, 'App\\Models\\User', 3),
(47, 'App\\Models\\User', 4),
(47, 'App\\Models\\User', 5),
(47, 'App\\Models\\User', 6),
(47, 'App\\Models\\User', 7),
(48, 'App\\Models\\User', 1),
(48, 'App\\Models\\User', 2),
(48, 'App\\Models\\User', 3),
(48, 'App\\Models\\User', 4),
(48, 'App\\Models\\User', 6),
(48, 'App\\Models\\User', 7),
(49, 'App\\Models\\User', 1),
(49, 'App\\Models\\User', 2),
(49, 'App\\Models\\User', 3),
(49, 'App\\Models\\User', 4),
(49, 'App\\Models\\User', 6),
(49, 'App\\Models\\User', 7),
(50, 'App\\Models\\User', 1),
(50, 'App\\Models\\User', 2),
(50, 'App\\Models\\User', 3),
(50, 'App\\Models\\User', 4),
(50, 'App\\Models\\User', 5),
(50, 'App\\Models\\User', 6),
(50, 'App\\Models\\User', 7),
(51, 'App\\Models\\User', 1),
(51, 'App\\Models\\User', 2),
(51, 'App\\Models\\User', 3),
(51, 'App\\Models\\User', 4),
(51, 'App\\Models\\User', 6),
(51, 'App\\Models\\User', 7),
(52, 'App\\Models\\User', 1),
(52, 'App\\Models\\User', 2),
(52, 'App\\Models\\User', 3),
(52, 'App\\Models\\User', 4),
(52, 'App\\Models\\User', 6),
(52, 'App\\Models\\User', 7),
(53, 'App\\Models\\User', 1),
(53, 'App\\Models\\User', 2),
(53, 'App\\Models\\User', 3),
(53, 'App\\Models\\User', 4),
(53, 'App\\Models\\User', 6),
(53, 'App\\Models\\User', 7),
(54, 'App\\Models\\User', 1),
(54, 'App\\Models\\User', 2),
(54, 'App\\Models\\User', 3),
(54, 'App\\Models\\User', 4),
(54, 'App\\Models\\User', 6),
(54, 'App\\Models\\User', 7),
(55, 'App\\Models\\User', 1),
(55, 'App\\Models\\User', 2),
(55, 'App\\Models\\User', 3),
(55, 'App\\Models\\User', 4),
(55, 'App\\Models\\User', 6),
(55, 'App\\Models\\User', 7),
(56, 'App\\Models\\User', 1),
(56, 'App\\Models\\User', 2),
(56, 'App\\Models\\User', 3),
(57, 'App\\Models\\User', 1),
(57, 'App\\Models\\User', 2),
(57, 'App\\Models\\User', 3),
(57, 'App\\Models\\User', 4),
(57, 'App\\Models\\User', 5),
(57, 'App\\Models\\User', 6),
(57, 'App\\Models\\User', 7),
(58, 'App\\Models\\User', 1),
(58, 'App\\Models\\User', 2),
(58, 'App\\Models\\User', 3),
(58, 'App\\Models\\User', 4),
(58, 'App\\Models\\User', 5),
(58, 'App\\Models\\User', 7),
(59, 'App\\Models\\User', 1),
(59, 'App\\Models\\User', 2),
(59, 'App\\Models\\User', 3),
(59, 'App\\Models\\User', 4),
(59, 'App\\Models\\User', 5),
(59, 'App\\Models\\User', 6),
(59, 'App\\Models\\User', 7),
(60, 'App\\Models\\User', 1),
(60, 'App\\Models\\User', 2),
(60, 'App\\Models\\User', 3),
(60, 'App\\Models\\User', 4),
(60, 'App\\Models\\User', 7),
(61, 'App\\Models\\User', 1),
(61, 'App\\Models\\User', 2),
(61, 'App\\Models\\User', 3),
(61, 'App\\Models\\User', 4),
(61, 'App\\Models\\User', 5),
(61, 'App\\Models\\User', 6),
(61, 'App\\Models\\User', 7),
(62, 'App\\Models\\User', 1),
(62, 'App\\Models\\User', 2),
(62, 'App\\Models\\User', 3),
(62, 'App\\Models\\User', 4),
(62, 'App\\Models\\User', 5),
(62, 'App\\Models\\User', 6),
(62, 'App\\Models\\User', 7),
(63, 'App\\Models\\User', 1),
(63, 'App\\Models\\User', 2),
(63, 'App\\Models\\User', 3),
(63, 'App\\Models\\User', 4),
(63, 'App\\Models\\User', 5),
(63, 'App\\Models\\User', 6),
(63, 'App\\Models\\User', 7),
(64, 'App\\Models\\User', 1),
(64, 'App\\Models\\User', 2),
(64, 'App\\Models\\User', 3),
(64, 'App\\Models\\User', 4),
(64, 'App\\Models\\User', 6),
(64, 'App\\Models\\User', 7),
(65, 'App\\Models\\User', 1),
(65, 'App\\Models\\User', 2),
(65, 'App\\Models\\User', 3),
(65, 'App\\Models\\User', 7),
(66, 'App\\Models\\User', 1),
(66, 'App\\Models\\User', 2),
(66, 'App\\Models\\User', 3),
(66, 'App\\Models\\User', 7),
(67, 'App\\Models\\User', 1),
(67, 'App\\Models\\User', 2),
(67, 'App\\Models\\User', 3),
(67, 'App\\Models\\User', 4),
(67, 'App\\Models\\User', 6),
(67, 'App\\Models\\User', 7),
(68, 'App\\Models\\User', 1),
(68, 'App\\Models\\User', 2),
(68, 'App\\Models\\User', 3),
(68, 'App\\Models\\User', 4),
(68, 'App\\Models\\User', 7),
(69, 'App\\Models\\User', 1),
(69, 'App\\Models\\User', 2),
(69, 'App\\Models\\User', 3),
(69, 'App\\Models\\User', 4),
(69, 'App\\Models\\User', 7),
(70, 'App\\Models\\User', 1),
(70, 'App\\Models\\User', 2),
(70, 'App\\Models\\User', 3),
(70, 'App\\Models\\User', 4),
(70, 'App\\Models\\User', 7),
(71, 'App\\Models\\User', 1),
(71, 'App\\Models\\User', 2),
(71, 'App\\Models\\User', 3),
(71, 'App\\Models\\User', 4),
(71, 'App\\Models\\User', 7),
(72, 'App\\Models\\User', 1),
(72, 'App\\Models\\User', 2),
(72, 'App\\Models\\User', 3),
(72, 'App\\Models\\User', 4),
(72, 'App\\Models\\User', 7),
(73, 'App\\Models\\User', 1),
(73, 'App\\Models\\User', 2),
(73, 'App\\Models\\User', 3),
(73, 'App\\Models\\User', 4),
(73, 'App\\Models\\User', 5),
(73, 'App\\Models\\User', 6),
(73, 'App\\Models\\User', 7),
(74, 'App\\Models\\User', 1),
(74, 'App\\Models\\User', 2),
(75, 'App\\Models\\User', 1),
(75, 'App\\Models\\User', 2),
(75, 'App\\Models\\User', 3),
(75, 'App\\Models\\User', 4),
(75, 'App\\Models\\User', 5),
(75, 'App\\Models\\User', 6),
(75, 'App\\Models\\User', 7),
(76, 'App\\Models\\User', 1),
(76, 'App\\Models\\User', 2),
(76, 'App\\Models\\User', 3),
(76, 'App\\Models\\User', 4),
(76, 'App\\Models\\User', 7),
(77, 'App\\Models\\User', 1),
(77, 'App\\Models\\User', 2),
(77, 'App\\Models\\User', 3),
(77, 'App\\Models\\User', 4),
(77, 'App\\Models\\User', 5),
(77, 'App\\Models\\User', 6),
(77, 'App\\Models\\User', 7),
(78, 'App\\Models\\User', 1),
(78, 'App\\Models\\User', 2),
(78, 'App\\Models\\User', 3),
(78, 'App\\Models\\User', 4),
(78, 'App\\Models\\User', 7),
(79, 'App\\Models\\User', 1),
(79, 'App\\Models\\User', 2),
(79, 'App\\Models\\User', 3),
(79, 'App\\Models\\User', 4),
(79, 'App\\Models\\User', 5),
(79, 'App\\Models\\User', 6),
(79, 'App\\Models\\User', 7),
(80, 'App\\Models\\User', 1),
(80, 'App\\Models\\User', 2),
(80, 'App\\Models\\User', 3),
(80, 'App\\Models\\User', 4),
(80, 'App\\Models\\User', 6),
(80, 'App\\Models\\User', 7),
(81, 'App\\Models\\User', 1),
(81, 'App\\Models\\User', 2),
(81, 'App\\Models\\User', 3),
(81, 'App\\Models\\User', 4),
(81, 'App\\Models\\User', 6),
(81, 'App\\Models\\User', 7),
(82, 'App\\Models\\User', 1),
(82, 'App\\Models\\User', 2),
(82, 'App\\Models\\User', 3),
(82, 'App\\Models\\User', 4),
(82, 'App\\Models\\User', 6),
(82, 'App\\Models\\User', 7),
(83, 'App\\Models\\User', 1),
(83, 'App\\Models\\User', 2),
(83, 'App\\Models\\User', 3),
(83, 'App\\Models\\User', 4),
(83, 'App\\Models\\User', 6),
(83, 'App\\Models\\User', 7),
(84, 'App\\Models\\User', 1),
(84, 'App\\Models\\User', 2),
(84, 'App\\Models\\User', 3),
(84, 'App\\Models\\User', 4),
(84, 'App\\Models\\User', 6),
(84, 'App\\Models\\User', 7),
(85, 'App\\Models\\User', 1),
(85, 'App\\Models\\User', 2),
(85, 'App\\Models\\User', 3),
(85, 'App\\Models\\User', 4),
(85, 'App\\Models\\User', 6),
(85, 'App\\Models\\User', 7),
(86, 'App\\Models\\User', 1),
(86, 'App\\Models\\User', 2),
(86, 'App\\Models\\User', 3),
(86, 'App\\Models\\User', 4),
(86, 'App\\Models\\User', 7),
(87, 'App\\Models\\User', 1),
(87, 'App\\Models\\User', 2),
(87, 'App\\Models\\User', 7),
(88, 'App\\Models\\User', 1),
(88, 'App\\Models\\User', 2),
(88, 'App\\Models\\User', 3),
(88, 'App\\Models\\User', 4),
(88, 'App\\Models\\User', 7),
(89, 'App\\Models\\User', 1),
(89, 'App\\Models\\User', 2),
(89, 'App\\Models\\User', 3),
(89, 'App\\Models\\User', 4),
(89, 'App\\Models\\User', 7),
(90, 'App\\Models\\User', 1),
(90, 'App\\Models\\User', 2),
(90, 'App\\Models\\User', 3),
(90, 'App\\Models\\User', 4),
(90, 'App\\Models\\User', 7),
(91, 'App\\Models\\User', 1),
(91, 'App\\Models\\User', 2),
(91, 'App\\Models\\User', 3),
(91, 'App\\Models\\User', 4),
(91, 'App\\Models\\User', 7),
(92, 'App\\Models\\User', 1),
(92, 'App\\Models\\User', 2),
(92, 'App\\Models\\User', 3),
(92, 'App\\Models\\User', 4),
(92, 'App\\Models\\User', 6),
(93, 'App\\Models\\User', 1),
(93, 'App\\Models\\User', 2),
(93, 'App\\Models\\User', 3),
(93, 'App\\Models\\User', 4),
(93, 'App\\Models\\User', 7),
(94, 'App\\Models\\User', 1),
(94, 'App\\Models\\User', 2),
(94, 'App\\Models\\User', 3),
(94, 'App\\Models\\User', 4),
(94, 'App\\Models\\User', 6),
(94, 'App\\Models\\User', 7),
(95, 'App\\Models\\User', 1),
(95, 'App\\Models\\User', 2),
(95, 'App\\Models\\User', 3),
(95, 'App\\Models\\User', 4),
(95, 'App\\Models\\User', 7),
(96, 'App\\Models\\User', 1),
(96, 'App\\Models\\User', 2),
(96, 'App\\Models\\User', 3),
(96, 'App\\Models\\User', 4),
(96, 'App\\Models\\User', 6),
(96, 'App\\Models\\User', 7),
(97, 'App\\Models\\User', 1),
(97, 'App\\Models\\User', 2),
(97, 'App\\Models\\User', 3),
(97, 'App\\Models\\User', 4),
(97, 'App\\Models\\User', 7),
(98, 'App\\Models\\User', 1),
(98, 'App\\Models\\User', 2),
(98, 'App\\Models\\User', 3),
(98, 'App\\Models\\User', 4),
(98, 'App\\Models\\User', 6),
(98, 'App\\Models\\User', 7),
(99, 'App\\Models\\User', 1),
(99, 'App\\Models\\User', 2),
(99, 'App\\Models\\User', 3),
(99, 'App\\Models\\User', 4),
(99, 'App\\Models\\User', 7),
(100, 'App\\Models\\User', 1),
(100, 'App\\Models\\User', 2),
(100, 'App\\Models\\User', 3),
(100, 'App\\Models\\User', 4),
(100, 'App\\Models\\User', 6),
(100, 'App\\Models\\User', 7),
(101, 'App\\Models\\User', 1),
(101, 'App\\Models\\User', 2),
(101, 'App\\Models\\User', 3),
(101, 'App\\Models\\User', 4),
(101, 'App\\Models\\User', 7),
(102, 'App\\Models\\User', 1),
(102, 'App\\Models\\User', 2),
(102, 'App\\Models\\User', 3),
(102, 'App\\Models\\User', 4),
(102, 'App\\Models\\User', 6),
(102, 'App\\Models\\User', 7),
(103, 'App\\Models\\User', 1),
(103, 'App\\Models\\User', 2),
(103, 'App\\Models\\User', 3),
(103, 'App\\Models\\User', 4),
(103, 'App\\Models\\User', 7),
(104, 'App\\Models\\User', 1),
(104, 'App\\Models\\User', 2),
(104, 'App\\Models\\User', 3),
(104, 'App\\Models\\User', 4),
(104, 'App\\Models\\User', 5),
(104, 'App\\Models\\User', 6),
(104, 'App\\Models\\User', 7),
(105, 'App\\Models\\User', 1),
(105, 'App\\Models\\User', 2),
(105, 'App\\Models\\User', 3),
(105, 'App\\Models\\User', 4),
(105, 'App\\Models\\User', 7),
(106, 'App\\Models\\User', 1),
(106, 'App\\Models\\User', 2),
(106, 'App\\Models\\User', 3),
(106, 'App\\Models\\User', 4),
(106, 'App\\Models\\User', 5),
(106, 'App\\Models\\User', 6),
(106, 'App\\Models\\User', 7),
(107, 'App\\Models\\User', 1),
(107, 'App\\Models\\User', 2),
(107, 'App\\Models\\User', 3),
(107, 'App\\Models\\User', 4),
(107, 'App\\Models\\User', 7),
(108, 'App\\Models\\User', 1),
(108, 'App\\Models\\User', 2),
(108, 'App\\Models\\User', 3),
(108, 'App\\Models\\User', 4),
(108, 'App\\Models\\User', 5),
(108, 'App\\Models\\User', 6),
(108, 'App\\Models\\User', 7),
(109, 'App\\Models\\User', 1),
(109, 'App\\Models\\User', 2),
(109, 'App\\Models\\User', 3),
(109, 'App\\Models\\User', 4),
(109, 'App\\Models\\User', 7),
(110, 'App\\Models\\User', 1),
(110, 'App\\Models\\User', 2),
(110, 'App\\Models\\User', 3),
(110, 'App\\Models\\User', 5),
(111, 'App\\Models\\User', 1),
(111, 'App\\Models\\User', 2),
(111, 'App\\Models\\User', 3),
(111, 'App\\Models\\User', 4),
(111, 'App\\Models\\User', 7),
(112, 'App\\Models\\User', 1),
(112, 'App\\Models\\User', 2),
(112, 'App\\Models\\User', 3),
(112, 'App\\Models\\User', 4),
(112, 'App\\Models\\User', 6),
(112, 'App\\Models\\User', 7),
(113, 'App\\Models\\User', 1),
(113, 'App\\Models\\User', 2),
(113, 'App\\Models\\User', 3),
(113, 'App\\Models\\User', 4),
(113, 'App\\Models\\User', 7),
(114, 'App\\Models\\User', 1),
(114, 'App\\Models\\User', 2),
(114, 'App\\Models\\User', 3),
(114, 'App\\Models\\User', 4),
(114, 'App\\Models\\User', 6),
(114, 'App\\Models\\User', 7),
(115, 'App\\Models\\User', 1),
(115, 'App\\Models\\User', 2),
(115, 'App\\Models\\User', 4),
(115, 'App\\Models\\User', 7),
(116, 'App\\Models\\User', 1),
(116, 'App\\Models\\User', 2),
(116, 'App\\Models\\User', 3),
(116, 'App\\Models\\User', 4),
(116, 'App\\Models\\User', 7),
(117, 'App\\Models\\User', 1),
(117, 'App\\Models\\User', 2),
(117, 'App\\Models\\User', 3),
(117, 'App\\Models\\User', 4),
(117, 'App\\Models\\User', 7),
(118, 'App\\Models\\User', 1),
(118, 'App\\Models\\User', 2),
(118, 'App\\Models\\User', 3),
(118, 'App\\Models\\User', 4),
(118, 'App\\Models\\User', 7),
(119, 'App\\Models\\User', 1),
(119, 'App\\Models\\User', 2),
(119, 'App\\Models\\User', 3),
(119, 'App\\Models\\User', 4),
(119, 'App\\Models\\User', 7),
(120, 'App\\Models\\User', 1),
(120, 'App\\Models\\User', 2),
(120, 'App\\Models\\User', 3),
(120, 'App\\Models\\User', 4),
(120, 'App\\Models\\User', 7),
(121, 'App\\Models\\User', 1),
(121, 'App\\Models\\User', 2),
(121, 'App\\Models\\User', 3),
(121, 'App\\Models\\User', 4),
(121, 'App\\Models\\User', 7),
(122, 'App\\Models\\User', 1),
(122, 'App\\Models\\User', 2),
(122, 'App\\Models\\User', 3),
(122, 'App\\Models\\User', 4),
(122, 'App\\Models\\User', 6),
(122, 'App\\Models\\User', 7),
(123, 'App\\Models\\User', 1),
(123, 'App\\Models\\User', 2),
(123, 'App\\Models\\User', 3),
(123, 'App\\Models\\User', 4),
(123, 'App\\Models\\User', 6),
(123, 'App\\Models\\User', 7),
(124, 'App\\Models\\User', 1),
(124, 'App\\Models\\User', 2),
(124, 'App\\Models\\User', 3),
(124, 'App\\Models\\User', 4),
(124, 'App\\Models\\User', 6),
(124, 'App\\Models\\User', 7),
(125, 'App\\Models\\User', 1),
(125, 'App\\Models\\User', 2),
(125, 'App\\Models\\User', 3),
(125, 'App\\Models\\User', 4),
(125, 'App\\Models\\User', 6),
(125, 'App\\Models\\User', 7),
(126, 'App\\Models\\User', 1),
(126, 'App\\Models\\User', 2),
(126, 'App\\Models\\User', 3),
(126, 'App\\Models\\User', 4),
(126, 'App\\Models\\User', 6),
(126, 'App\\Models\\User', 7),
(127, 'App\\Models\\User', 1),
(127, 'App\\Models\\User', 2),
(127, 'App\\Models\\User', 3),
(127, 'App\\Models\\User', 4),
(127, 'App\\Models\\User', 5),
(127, 'App\\Models\\User', 6),
(127, 'App\\Models\\User', 7),
(128, 'App\\Models\\User', 1),
(128, 'App\\Models\\User', 2),
(128, 'App\\Models\\User', 3),
(128, 'App\\Models\\User', 4),
(128, 'App\\Models\\User', 5),
(128, 'App\\Models\\User', 6),
(128, 'App\\Models\\User', 7),
(129, 'App\\Models\\User', 1),
(129, 'App\\Models\\User', 2),
(129, 'App\\Models\\User', 3),
(129, 'App\\Models\\User', 4),
(129, 'App\\Models\\User', 5),
(129, 'App\\Models\\User', 6),
(129, 'App\\Models\\User', 7),
(130, 'App\\Models\\User', 1),
(130, 'App\\Models\\User', 2),
(130, 'App\\Models\\User', 3),
(130, 'App\\Models\\User', 4),
(130, 'App\\Models\\User', 5),
(130, 'App\\Models\\User', 7),
(131, 'App\\Models\\User', 1),
(131, 'App\\Models\\User', 2),
(131, 'App\\Models\\User', 7),
(132, 'App\\Models\\User', 1),
(132, 'App\\Models\\User', 2),
(132, 'App\\Models\\User', 3),
(132, 'App\\Models\\User', 4),
(132, 'App\\Models\\User', 6),
(132, 'App\\Models\\User', 7),
(133, 'App\\Models\\User', 1),
(133, 'App\\Models\\User', 2),
(133, 'App\\Models\\User', 3),
(133, 'App\\Models\\User', 4),
(133, 'App\\Models\\User', 6),
(133, 'App\\Models\\User', 7),
(134, 'App\\Models\\User', 1),
(134, 'App\\Models\\User', 2),
(134, 'App\\Models\\User', 3),
(134, 'App\\Models\\User', 4),
(134, 'App\\Models\\User', 6),
(134, 'App\\Models\\User', 7),
(135, 'App\\Models\\User', 1),
(135, 'App\\Models\\User', 2),
(135, 'App\\Models\\User', 3),
(135, 'App\\Models\\User', 4),
(135, 'App\\Models\\User', 6),
(135, 'App\\Models\\User', 7),
(136, 'App\\Models\\User', 1),
(136, 'App\\Models\\User', 2),
(136, 'App\\Models\\User', 3),
(136, 'App\\Models\\User', 4),
(136, 'App\\Models\\User', 5),
(136, 'App\\Models\\User', 6),
(136, 'App\\Models\\User', 7),
(137, 'App\\Models\\User', 1),
(137, 'App\\Models\\User', 2),
(137, 'App\\Models\\User', 3),
(137, 'App\\Models\\User', 4),
(137, 'App\\Models\\User', 7),
(138, 'App\\Models\\User', 1),
(138, 'App\\Models\\User', 2),
(138, 'App\\Models\\User', 3),
(138, 'App\\Models\\User', 4),
(138, 'App\\Models\\User', 5),
(138, 'App\\Models\\User', 6),
(138, 'App\\Models\\User', 7),
(139, 'App\\Models\\User', 1),
(139, 'App\\Models\\User', 2),
(139, 'App\\Models\\User', 3),
(139, 'App\\Models\\User', 4),
(139, 'App\\Models\\User', 5),
(139, 'App\\Models\\User', 6),
(139, 'App\\Models\\User', 7),
(140, 'App\\Models\\User', 1),
(140, 'App\\Models\\User', 2),
(140, 'App\\Models\\User', 3),
(140, 'App\\Models\\User', 4),
(140, 'App\\Models\\User', 5),
(140, 'App\\Models\\User', 6),
(140, 'App\\Models\\User', 7),
(141, 'App\\Models\\User', 1),
(141, 'App\\Models\\User', 2),
(141, 'App\\Models\\User', 3),
(141, 'App\\Models\\User', 4),
(141, 'App\\Models\\User', 5),
(141, 'App\\Models\\User', 6),
(141, 'App\\Models\\User', 7),
(142, 'App\\Models\\User', 1),
(142, 'App\\Models\\User', 2),
(142, 'App\\Models\\User', 3),
(142, 'App\\Models\\User', 4),
(142, 'App\\Models\\User', 5),
(142, 'App\\Models\\User', 6),
(142, 'App\\Models\\User', 7),
(143, 'App\\Models\\User', 1),
(143, 'App\\Models\\User', 2),
(143, 'App\\Models\\User', 3),
(143, 'App\\Models\\User', 4),
(143, 'App\\Models\\User', 5),
(143, 'App\\Models\\User', 6),
(143, 'App\\Models\\User', 7),
(144, 'App\\Models\\User', 1),
(144, 'App\\Models\\User', 2),
(144, 'App\\Models\\User', 3),
(144, 'App\\Models\\User', 4),
(144, 'App\\Models\\User', 6),
(144, 'App\\Models\\User', 7),
(145, 'App\\Models\\User', 1),
(145, 'App\\Models\\User', 2),
(145, 'App\\Models\\User', 3),
(145, 'App\\Models\\User', 4),
(145, 'App\\Models\\User', 5),
(145, 'App\\Models\\User', 6),
(145, 'App\\Models\\User', 7),
(146, 'App\\Models\\User', 1),
(146, 'App\\Models\\User', 2),
(146, 'App\\Models\\User', 3),
(146, 'App\\Models\\User', 4),
(146, 'App\\Models\\User', 7),
(147, 'App\\Models\\User', 1),
(147, 'App\\Models\\User', 2),
(147, 'App\\Models\\User', 3),
(147, 'App\\Models\\User', 4),
(147, 'App\\Models\\User', 7),
(148, 'App\\Models\\User', 1),
(148, 'App\\Models\\User', 2),
(148, 'App\\Models\\User', 3),
(148, 'App\\Models\\User', 4),
(148, 'App\\Models\\User', 7),
(149, 'App\\Models\\User', 1),
(149, 'App\\Models\\User', 2),
(149, 'App\\Models\\User', 3),
(149, 'App\\Models\\User', 4),
(149, 'App\\Models\\User', 7),
(150, 'App\\Models\\User', 1),
(150, 'App\\Models\\User', 2),
(150, 'App\\Models\\User', 3),
(150, 'App\\Models\\User', 4),
(150, 'App\\Models\\User', 7),
(151, 'App\\Models\\User', 1),
(151, 'App\\Models\\User', 2),
(151, 'App\\Models\\User', 3),
(151, 'App\\Models\\User', 7),
(152, 'App\\Models\\User', 1),
(152, 'App\\Models\\User', 2),
(152, 'App\\Models\\User', 3),
(152, 'App\\Models\\User', 4),
(152, 'App\\Models\\User', 7),
(153, 'App\\Models\\User', 1),
(153, 'App\\Models\\User', 2),
(153, 'App\\Models\\User', 3),
(153, 'App\\Models\\User', 4),
(153, 'App\\Models\\User', 7),
(154, 'App\\Models\\User', 1),
(154, 'App\\Models\\User', 2),
(154, 'App\\Models\\User', 3),
(154, 'App\\Models\\User', 4),
(154, 'App\\Models\\User', 7),
(155, 'App\\Models\\User', 1),
(155, 'App\\Models\\User', 2),
(155, 'App\\Models\\User', 3),
(155, 'App\\Models\\User', 4),
(155, 'App\\Models\\User', 7),
(156, 'App\\Models\\User', 1),
(156, 'App\\Models\\User', 2),
(156, 'App\\Models\\User', 3),
(156, 'App\\Models\\User', 4),
(156, 'App\\Models\\User', 5),
(156, 'App\\Models\\User', 6),
(156, 'App\\Models\\User', 7),
(157, 'App\\Models\\User', 1),
(157, 'App\\Models\\User', 2),
(157, 'App\\Models\\User', 3),
(157, 'App\\Models\\User', 4),
(157, 'App\\Models\\User', 5),
(157, 'App\\Models\\User', 6),
(157, 'App\\Models\\User', 7),
(158, 'App\\Models\\User', 1),
(158, 'App\\Models\\User', 2),
(158, 'App\\Models\\User', 3),
(158, 'App\\Models\\User', 4),
(158, 'App\\Models\\User', 5),
(158, 'App\\Models\\User', 6),
(158, 'App\\Models\\User', 7),
(159, 'App\\Models\\User', 1),
(159, 'App\\Models\\User', 2),
(159, 'App\\Models\\User', 3),
(159, 'App\\Models\\User', 4),
(159, 'App\\Models\\User', 6),
(159, 'App\\Models\\User', 7),
(160, 'App\\Models\\User', 1),
(160, 'App\\Models\\User', 2),
(160, 'App\\Models\\User', 3),
(160, 'App\\Models\\User', 4),
(160, 'App\\Models\\User', 7),
(161, 'App\\Models\\User', 1),
(161, 'App\\Models\\User', 2),
(161, 'App\\Models\\User', 3),
(161, 'App\\Models\\User', 4),
(161, 'App\\Models\\User', 7),
(162, 'App\\Models\\User', 1),
(162, 'App\\Models\\User', 2),
(162, 'App\\Models\\User', 3),
(162, 'App\\Models\\User', 4),
(162, 'App\\Models\\User', 7),
(163, 'App\\Models\\User', 1),
(163, 'App\\Models\\User', 2),
(164, 'App\\Models\\User', 1),
(164, 'App\\Models\\User', 2),
(164, 'App\\Models\\User', 3),
(164, 'App\\Models\\User', 4),
(164, 'App\\Models\\User', 6),
(164, 'App\\Models\\User', 7),
(165, 'App\\Models\\User', 1),
(165, 'App\\Models\\User', 2),
(165, 'App\\Models\\User', 3),
(165, 'App\\Models\\User', 4),
(165, 'App\\Models\\User', 6),
(165, 'App\\Models\\User', 7),
(166, 'App\\Models\\User', 1),
(166, 'App\\Models\\User', 2),
(166, 'App\\Models\\User', 3),
(166, 'App\\Models\\User', 4),
(166, 'App\\Models\\User', 5),
(166, 'App\\Models\\User', 6),
(166, 'App\\Models\\User', 7),
(167, 'App\\Models\\User', 1),
(167, 'App\\Models\\User', 2),
(167, 'App\\Models\\User', 3),
(167, 'App\\Models\\User', 4),
(167, 'App\\Models\\User', 5),
(167, 'App\\Models\\User', 6),
(167, 'App\\Models\\User', 7),
(168, 'App\\Models\\User', 1),
(168, 'App\\Models\\User', 2),
(168, 'App\\Models\\User', 3),
(168, 'App\\Models\\User', 4),
(168, 'App\\Models\\User', 7),
(169, 'App\\Models\\User', 1),
(169, 'App\\Models\\User', 2),
(169, 'App\\Models\\User', 3),
(169, 'App\\Models\\User', 4),
(169, 'App\\Models\\User', 7),
(170, 'App\\Models\\User', 1),
(170, 'App\\Models\\User', 2),
(170, 'App\\Models\\User', 3),
(170, 'App\\Models\\User', 4),
(170, 'App\\Models\\User', 7),
(171, 'App\\Models\\User', 1),
(171, 'App\\Models\\User', 2),
(171, 'App\\Models\\User', 3),
(171, 'App\\Models\\User', 4),
(171, 'App\\Models\\User', 7),
(172, 'App\\Models\\User', 1),
(172, 'App\\Models\\User', 2),
(172, 'App\\Models\\User', 3),
(172, 'App\\Models\\User', 4),
(172, 'App\\Models\\User', 7),
(173, 'App\\Models\\User', 1),
(173, 'App\\Models\\User', 2),
(173, 'App\\Models\\User', 3),
(173, 'App\\Models\\User', 7),
(174, 'App\\Models\\User', 1),
(174, 'App\\Models\\User', 2),
(174, 'App\\Models\\User', 3),
(174, 'App\\Models\\User', 6),
(174, 'App\\Models\\User', 7);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 5),
(4, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `ordered_products`
--

CREATE TABLE `ordered_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `start_date` date DEFAULT NULL COMMENT 'Event start date',
  `start_time` time DEFAULT NULL COMMENT 'Event start time',
  `end_date` date DEFAULT NULL COMMENT 'Event End date',
  `end_time` time DEFAULT NULL COMMENT 'Event End time',
  `unit_price` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'original price(without tax)',
  `quantity` decimal(10,0) NOT NULL DEFAULT 0,
  `total_price` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '(original price * quantity)',
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `tax_type` varchar(255) NOT NULL DEFAULT 'inclusive',
  `tax_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(255) DEFAULT NULL COMMENT 'fixed or percentage',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_price_after_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_price_with_tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `assigned_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `assigned_user_note` text DEFAULT NULL,
  `job_code` varchar(255) DEFAULT NULL,
  `staff_status` varchar(255) DEFAULT NULL,
  `staff_status_note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_date` date NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `order_code` varchar(255) DEFAULT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_status` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `schedule_note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `payment_date` date NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `payment_type_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'If Online Payments',
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parties`
--

CREATE TABLE `parties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `party_code` varchar(255) DEFAULT NULL,
  `party_type` varchar(255) DEFAULT NULL,
  `is_wholesale_customer` tinyint(1) NOT NULL DEFAULT 0,
  `default_party` tinyint(1) NOT NULL DEFAULT 0,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `billing_address` text DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax_number` varchar(255) DEFAULT NULL,
  `tax_type` varchar(255) DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `to_pay` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `to_receive` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `is_set_credit_limit` tinyint(1) NOT NULL DEFAULT 0,
  `credit_limit` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parties`
--

INSERT INTO `parties` (`id`, `branch_id`, `prefix_code`, `count_id`, `party_code`, `party_type`, `is_wholesale_customer`, `default_party`, `first_name`, `last_name`, `email`, `mobile`, `phone`, `whatsapp`, `billing_address`, `shipping_address`, `note`, `currency_id`, `exchange_rate`, `tax_number`, `tax_type`, `state_id`, `to_pay`, `to_receive`, `is_set_credit_limit`, `credit_limit`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, NULL, NULL, NULL, 'supplier', 0, 0, 'Square', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0, 0.0000, 1, 1, 1, '2026-02-11 22:06:07', '2026-02-11 22:06:07'),
(5, 1, NULL, NULL, NULL, 'customer', 0, 0, 'Walking', 'Customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0, 0.0000, 1, 1, 1, '2026-05-15 11:22:30', '2026-05-15 11:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `party_balance_after_adjustments`
--

CREATE TABLE `party_balance_after_adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `party_payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_transaction_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party_payments`
--

CREATE TABLE `party_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_date` date NOT NULL,
  `payment_type_id` bigint(20) UNSIGNED NOT NULL,
  `payment_direction` enum('receive','pay') NOT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `reference_no` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party_payment_allocations`
--

CREATE TABLE `party_payment_allocations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `party_payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_transaction_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party_transactions`
--

CREATE TABLE `party_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_date` date NOT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `to_pay` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `to_receive` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `transaction_type` varchar(255) NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `party_transactions`
--

INSERT INTO `party_transactions` (`id`, `branch_id`, `transaction_date`, `party_id`, `to_pay`, `to_receive`, `transaction_type`, `transaction_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, '2026-05-15', 5, 0.0000, 0.0000, 'Party Opening', 5, 1, 1, '2026-05-15 11:22:30', '2026-05-15 11:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_transactions`
--

CREATE TABLE `payment_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_date` date NOT NULL,
  `payment_type_id` bigint(20) UNSIGNED NOT NULL,
  `transfer_to_payment_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` varchar(255) NOT NULL,
  `type_of_payment` varchar(255) DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `reference_no` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `payment_from_unique_code` varchar(255) DEFAULT NULL COMMENT 'Identify from which form payment done',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_transactions`
--

INSERT INTO `payment_transactions` (`id`, `branch_id`, `transaction_date`, `payment_type_id`, `transfer_to_payment_type_id`, `transaction_type`, `type_of_payment`, `transaction_id`, `amount`, `reference_no`, `note`, `payment_from_unique_code`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, '2026-05-15', 1, NULL, 'Sale', NULL, 1, 200.0000, NULL, NULL, 'INVOICE', 1, 1, '2026-05-15 11:22:51', '2026-05-15 11:22:51'),
(2, 1, '2026-05-15', 1, NULL, 'Sale', NULL, 2, 200.0000, NULL, NULL, 'INVOICE', 1, 1, '2026-05-15 11:34:46', '2026-05-15 11:34:46'),
(3, 1, '2026-05-15', 1, NULL, 'Sale Order', NULL, 1, 200.0000, NULL, NULL, NULL, 1, 1, '2026-05-15 11:37:43', '2026-05-15 11:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unique_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank_code` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `print_bit` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_types`
--

INSERT INTO `payment_types` (`id`, `unique_code`, `name`, `account_number`, `bank_code`, `description`, `user_id`, `print_bit`, `status`, `is_deletable`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'CASH', 'Cash', NULL, NULL, NULL, NULL, 0, 1, 0, 1, 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(2, 'CHEQUE', 'Cheque', NULL, NULL, NULL, NULL, 0, 1, 0, 1, 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(4, 'BANK', 'Bank', '123456789', NULL, NULL, NULL, 0, 1, 1, 2, 2, '2025-11-13 14:19:39', '2026-02-10 14:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `display_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `permission_group_id`, `status`, `display_name`) VALUES
(1, 'customer.create', 'web', '2025-11-02 10:02:27', '2025-11-02 10:02:27', 1, 1, 'Create'),
(2, 'customer.edit', 'web', '2025-11-02 10:02:27', '2025-11-02 10:02:27', 1, 1, 'Edit'),
(3, 'customer.view', 'web', '2025-11-02 10:02:27', '2025-11-02 10:02:27', 1, 1, 'View'),
(4, 'customer.delete', 'web', '2025-11-02 10:02:27', '2025-11-02 10:02:27', 1, 1, 'Delete'),
(5, 'tax.create', 'web', '2025-11-02 10:02:27', '2025-11-02 10:02:27', 2, 1, 'Create'),
(6, 'tax.edit', 'web', '2025-11-02 10:02:27', '2025-11-02 10:02:27', 2, 1, 'Edit'),
(7, 'tax.view', 'web', '2025-11-02 10:02:27', '2025-11-02 10:02:27', 2, 1, 'View'),
(8, 'tax.delete', 'web', '2025-11-02 10:02:27', '2025-11-02 10:02:27', 2, 1, 'Delete'),
(9, 'user.create', 'web', '2025-11-02 10:02:27', '2025-11-02 10:02:27', 3, 1, 'Create'),
(10, 'user.edit', 'web', '2025-11-02 10:02:27', '2025-11-02 10:02:27', 3, 1, 'Edit'),
(11, 'user.view', 'web', '2025-11-02 10:02:27', '2025-11-02 10:02:27', 3, 1, 'View'),
(12, 'user.delete', 'web', '2025-11-02 10:02:27', '2025-11-02 10:02:27', 3, 1, 'Delete'),
(13, 'role.create', 'web', '2025-11-02 10:02:27', '2025-11-02 10:02:27', 4, 1, 'Create'),
(14, 'role.edit', 'web', '2025-11-02 10:02:27', '2025-11-02 10:02:27', 4, 1, 'Edit'),
(15, 'role.view', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 4, 1, 'View'),
(16, 'role.delete', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 4, 1, 'Delete'),
(17, 'profile.edit', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 5, 1, 'Edit'),
(18, 'app.settings.edit', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 6, 1, 'Edit'),
(19, 'payment.type.create', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 7, 1, 'Create'),
(20, 'payment.type.edit', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 7, 1, 'Edit'),
(21, 'payment.type.view', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 7, 1, 'View'),
(22, 'payment.type.delete', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 7, 1, 'Delete'),
(23, 'company.edit', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 8, 1, 'Edit'),
(24, 'sms.create', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 9, 1, 'Create'),
(25, 'sms.template.create', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 10, 1, 'Create'),
(26, 'sms.template.edit', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 10, 1, 'Edit'),
(27, 'sms.template.view', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 10, 1, 'View'),
(28, 'sms.template.delete', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 10, 1, 'Delete'),
(29, 'email.create', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 11, 1, 'Create'),
(30, 'email.template.create', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 12, 1, 'Create'),
(31, 'email.template.edit', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 12, 1, 'Edit'),
(32, 'email.template.view', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 12, 1, 'View'),
(33, 'email.template.delete', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 12, 1, 'Delete'),
(34, 'language.create', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 13, 1, 'Create'),
(35, 'language.edit', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 13, 1, 'Edit'),
(36, 'language.view', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 13, 1, 'View'),
(37, 'language.delete', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 13, 1, 'Delete'),
(38, 'report.profit_and_loss', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 14, 1, 'Profit and Loss'),
(39, 'report.item.transaction.batch', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 14, 1, 'Batch Wise Item Transaction Report'),
(40, 'report.item.transaction.serial', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 14, 1, 'Serial/IMEI Item Transaction Report'),
(41, 'report.item.transaction.general', 'web', '2025-11-02 10:02:28', '2025-11-02 10:02:28', 14, 1, 'General Item Transaction Report'),
(42, 'report.purchase', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 14, 1, 'Purchase Report'),
(43, 'report.purchase.item', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 14, 1, 'Item Purchase Report'),
(44, 'report.purchase.payment', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 14, 1, 'Purchase Payment Report'),
(45, 'report.sale', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 14, 1, 'Sale Report'),
(46, 'report.sale.item', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 14, 1, 'Item Sale Report'),
(47, 'report.sale.payment', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 14, 1, 'Sale Payment Report'),
(48, 'report.expired.item', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 14, 1, 'Expired Item Report'),
(49, 'report.reorder.item', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 14, 1, 'Reorder Item Report'),
(50, 'report.expense', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 14, 1, 'Expense Report'),
(51, 'report.expense.item', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 14, 1, 'Item Expense Report'),
(52, 'report.expense.payment', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 14, 1, 'Expense Payment Report'),
(53, 'report.gstr-1', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 14, 1, 'GSTR-1'),
(54, 'report.gstr-2', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 14, 1, 'GSTR-2'),
(55, 'report.stock_transfer', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 14, 1, 'Stock Transfer Report'),
(56, 'report.stock_transfer.item', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 14, 1, 'Item Stock Transfer Report'),
(57, 'expense.create', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 15, 1, 'Create'),
(58, 'expense.edit', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 15, 1, 'Edit'),
(59, 'expense.view', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 15, 1, 'View'),
(60, 'expense.delete', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 15, 1, 'Delete'),
(61, 'expense.category.create', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 15, 1, 'Category Create'),
(62, 'expense.category.edit', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 15, 1, 'Category Edit'),
(63, 'expense.category.view', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 15, 1, 'Category View'),
(64, 'expense.category.delete', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 15, 1, 'Category Delete'),
(65, 'warehouse.create', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 16, 1, 'Create'),
(66, 'warehouse.edit', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 16, 1, 'Edit'),
(67, 'warehouse.view', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 16, 1, 'View'),
(68, 'warehouse.delete', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 16, 1, 'Delete'),
(69, 'stock_transfer.create', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 17, 1, 'Create'),
(70, 'stock_transfer.edit', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 17, 1, 'Edit'),
(71, 'stock_transfer.view', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 17, 1, 'View'),
(72, 'stock_transfer.delete', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 17, 1, 'Delete'),
(73, 'item.create', 'web', '2025-11-02 10:02:29', '2025-11-02 10:02:29', 18, 1, 'Create'),
(74, 'item.edit', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 18, 1, 'Edit'),
(75, 'item.view', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 18, 1, 'View'),
(76, 'item.delete', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 18, 1, 'Delete'),
(77, 'item.category.create', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 18, 1, 'Category Create'),
(78, 'item.category.edit', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 18, 1, 'Category Edit'),
(79, 'item.category.view', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 18, 1, 'Category View'),
(80, 'item.category.delete', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 18, 1, 'Category Delete'),
(81, 'unit.create', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 19, 1, 'Create'),
(82, 'unit.edit', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 19, 1, 'Edit'),
(83, 'unit.view', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 19, 1, 'View'),
(84, 'unit.delete', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 19, 1, 'Delete'),
(85, 'supplier.create', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 20, 1, 'Create'),
(86, 'supplier.edit', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 20, 1, 'Edit'),
(87, 'supplier.view', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 20, 1, 'View'),
(88, 'supplier.delete', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 20, 1, 'Delete'),
(89, 'import.item', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 21, 1, 'Import Items & Services'),
(90, 'import.party', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 21, 1, 'Import Customers & Suppliers'),
(91, 'generate.barcode', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 21, 1, 'Generate Barcode'),
(92, 'purchase.order.create', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 22, 1, 'Create'),
(93, 'purchase.order.edit', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 22, 1, 'Edit'),
(94, 'purchase.order.view', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 22, 1, 'View'),
(95, 'purchase.order.delete', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 22, 1, 'Delete'),
(96, 'purchase.bill.create', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 23, 1, 'Create'),
(97, 'purchase.bill.edit', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 23, 1, 'Edit'),
(98, 'purchase.bill.view', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 23, 1, 'View'),
(99, 'purchase.bill.delete', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 23, 1, 'Delete'),
(100, 'purchase.return.create', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 24, 1, 'Create'),
(101, 'purchase.return.edit', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 24, 1, 'Edit'),
(102, 'purchase.return.view', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 24, 1, 'View'),
(103, 'purchase.return.delete', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 24, 1, 'Delete'),
(104, 'sale.order.create', 'web', '2025-11-02 10:02:30', '2025-11-02 10:02:30', 25, 1, 'Create'),
(105, 'sale.order.edit', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 25, 1, 'Edit'),
(106, 'sale.order.view', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 25, 1, 'View'),
(107, 'sale.order.delete', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 25, 1, 'Delete'),
(108, 'sale.invoice.create', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 26, 1, 'Create'),
(109, 'sale.invoice.edit', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 26, 1, 'Edit'),
(110, 'sale.invoice.view', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 26, 1, 'View'),
(111, 'sale.invoice.delete', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 26, 1, 'Delete'),
(112, 'sale.return.create', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 27, 1, 'Create'),
(113, 'sale.return.edit', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 27, 1, 'Edit'),
(114, 'sale.return.view', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 27, 1, 'View'),
(115, 'sale.return.delete', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 27, 1, 'Delete'),
(116, 'transaction.cash.add', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 28, 1, 'Cash Transaction Create'),
(117, 'transaction.cash.edit', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 28, 1, 'Cash Transaction Edit'),
(118, 'transaction.cash.view', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 28, 1, 'Cash Transaction View'),
(119, 'transaction.cash.delete', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 28, 1, 'Cash Transaction Delete'),
(120, 'transaction.bank.view', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 28, 1, 'Bank Transaction View'),
(121, 'transaction.cheque.view', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 28, 1, 'Cheque Transaction View'),
(122, 'report.customer.due.payment', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 14, 1, 'Customer Payments Due Report'),
(123, 'report.supplier.due.payment', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 14, 1, 'Supplier Payments Due Report'),
(124, 'report.stock_report.item.batch', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 14, 1, 'Batch Wise Item Stock Report'),
(125, 'report.stock_report.item.serial', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 14, 1, 'Serial Wise Item Stock Report'),
(126, 'report.stock_report.item.general', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 14, 1, 'General Item Stock Report'),
(127, 'general.allow.to.view.item.purchase.price', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 29, 1, 'Allow User to View Item Purchase Price in Item Search(Invoice/Bill)'),
(128, 'general.permission.to.apply.discount.to.sale', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 29, 1, 'Permission to Apply Discounts on Invoices'),
(129, 'general.permission.to.apply.discount.to.purchase', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 29, 1, 'Permission to Apply Discounts on Purchases'),
(130, 'sale.invoice.can.view.other.users.sale.invoices', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 26, 1, 'Allow User to View All Sale Invoices Created By Other Users'),
(131, 'sale.order.can.view.other.users.sale.orders', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 25, 1, 'Allow User to View All Sale Orders Created By Other Users'),
(132, 'sale.return.can.view.other.users.sale.returns', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 27, 1, 'Allow User to View All Sale Returns Created By Other Users'),
(133, 'purchase.bill.can.view.other.users.purchase.bills', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 23, 1, 'Allow User to View All Purchase Bills Created By Other Users'),
(134, 'purchase.order.can.view.other.users.purchase.orders', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 22, 1, 'Allow User to View All Purchase Orders Created By Other Users'),
(135, 'purchase.return.can.view.other.users.purchase.returns', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 24, 1, 'Allow User to View All Purchase Returns Created By Other Users'),
(136, 'expense.can.view.other.users.expenses', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 15, 1, 'Allow User to View All Expenses Created By Other Users'),
(137, 'stock_transfer.can.view.other.users.stock.transfers', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 17, 1, 'Allow User to View All Stock Transfer Created By Other Users'),
(138, 'dashboard.can.view.widget.cards', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 30, 1, 'Allow User to View Dashboard Widget Cards'),
(139, 'dashboard.can.view.sale.vs.purchase.bar.chart', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 30, 1, 'Allow User to View Sale Vs. Purchase Bar Chart on Dashboard'),
(140, 'dashboard.can.view.trending.items.pie.chart', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 30, 1, 'Allow User to View Trending Items Pie Chart on Dashboard'),
(141, 'dashboard.can.view.recent.invoices.table', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 30, 1, 'Allow User to View Recent Invoices Table on Dashboard'),
(142, 'dashboard.can.view.self.dashboard.details.only', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 30, 1, 'Allow User to View Only Their Own Dashboard Details'),
(143, 'item.brand.create', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 18, 1, 'Brand Create'),
(144, 'item.brand.edit', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 18, 1, 'Brand Edit'),
(145, 'item.brand.view', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 18, 1, 'Brand View'),
(146, 'item.brand.delete', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 18, 1, 'Brand Delete'),
(147, 'sale.quotation.create', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 31, 1, 'Create'),
(148, 'sale.quotation.edit', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 31, 1, 'Edit'),
(149, 'sale.quotation.view', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 31, 1, 'View'),
(150, 'sale.quotation.delete', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 31, 1, 'Delete'),
(151, 'sale.quotation.can.view.other.users.sale.quotations', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 31, 1, 'Allow User to View All Quotations Created By Other Users'),
(152, 'currency.create', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 32, 1, 'Create'),
(153, 'currency.edit', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 32, 1, 'Edit'),
(154, 'currency.view', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 32, 1, 'View'),
(155, 'currency.delete', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 32, 1, 'Delete'),
(156, 'expense.subcategory.create', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 15, 1, 'Expense Subcategory Create'),
(157, 'expense.subcategory.edit', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 15, 1, 'Expense Subcategory Edit'),
(158, 'expense.subcategory.view', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 15, 1, 'Expense Subcategory View'),
(159, 'expense.subcategory.delete', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 15, 1, 'Expense Subcategory Delete'),
(160, 'carrier.create', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 33, 1, 'Carrier Create'),
(161, 'carrier.edit', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 33, 1, 'Carrier Edit'),
(162, 'carrier.view', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 33, 1, 'Carrier View'),
(163, 'carrier.delete', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 33, 1, 'Carrier Delete'),
(164, 'report.transaction.cashflow', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 14, 1, 'Cash Flow Transaction Report'),
(165, 'report.transaction.bank-statement', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 14, 1, 'Bank Statement Transaction Report'),
(166, 'general.permission.to.change.sale.price', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 29, 1, 'Allow User to Change Sale Price'),
(167, 'dashboard.can.view.low.stock.items.table', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 30, 1, 'Allow User to View Low Stock Items Table on Dashboard'),
(168, 'stock_adjustment.create', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 34, 1, 'Create'),
(169, 'stock_adjustment.edit', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 34, 1, 'Edit'),
(170, 'stock_adjustment.delete', 'web', '2025-11-02 10:02:32', '2025-11-02 10:02:32', 34, 1, 'Delete'),
(171, 'stock_adjustment.view', 'web', '2025-11-02 10:02:33', '2025-11-02 10:02:33', 34, 1, 'View'),
(172, 'stock_adjustment.can.view.other.users.stock.adjustments', 'web', '2025-11-02 10:02:33', '2025-11-02 10:02:33', 34, 1, 'Allow User to View All Stock Adjustment Created By Other Users'),
(173, 'report.stock_adjustment', 'web', '2025-11-02 10:02:33', '2025-11-02 10:02:33', 14, 1, 'Stock Adjustment Report'),
(174, 'report.stock_adjustment.item', 'web', '2025-11-02 10:02:33', '2025-11-02 10:02:33', 14, 1, 'Item Wise Stock Adjustment Report');

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Customers', 1, '2025-11-02 10:02:26', '2025-11-02 10:02:26'),
(2, 'Tax', 1, '2025-11-02 10:02:27', '2025-11-02 10:02:27'),
(3, 'Users', 1, '2025-11-02 10:02:27', '2025-11-02 10:02:27'),
(4, 'Roles', 1, '2025-11-02 10:02:27', '2025-11-02 10:02:27'),
(5, 'Profile', 1, '2025-11-02 10:02:28', '2025-11-02 10:02:28'),
(6, 'App Settings', 1, '2025-11-02 10:02:28', '2025-11-02 10:02:28'),
(7, 'Bank Account', 1, '2025-11-02 10:02:28', '2025-11-02 10:02:28'),
(8, 'Company Details', 1, '2025-11-02 10:02:28', '2025-11-02 10:02:28'),
(9, 'Create & Send Manual SMS', 1, '2025-11-02 10:02:28', '2025-11-02 10:02:28'),
(10, 'SMS Template', 1, '2025-11-02 10:02:28', '2025-11-02 10:02:28'),
(11, 'Create & Send Manual Email', 1, '2025-11-02 10:02:28', '2025-11-02 10:02:28'),
(12, 'Email Template', 1, '2025-11-02 10:02:28', '2025-11-02 10:02:28'),
(13, 'Languages', 1, '2025-11-02 10:02:28', '2025-11-02 10:02:28'),
(14, 'Reports', 1, '2025-11-02 10:02:28', '2025-11-02 10:02:28'),
(15, 'Expense', 1, '2025-11-02 10:02:29', '2025-11-02 10:02:29'),
(16, 'Warehouses', 1, '2025-11-02 10:02:29', '2025-11-02 10:02:29'),
(17, 'Stock Transfer', 1, '2025-11-02 10:02:29', '2025-11-02 10:02:29'),
(18, 'Items', 1, '2025-11-02 10:02:29', '2025-11-02 10:02:29'),
(19, 'Units', 1, '2025-11-02 10:02:30', '2025-11-02 10:02:30'),
(20, 'Suppliers', 1, '2025-11-02 10:02:30', '2025-11-02 10:02:30'),
(21, 'Utilities', 1, '2025-11-02 10:02:30', '2025-11-02 10:02:30'),
(22, 'Purchase Order', 1, '2025-11-02 10:02:30', '2025-11-02 10:02:30'),
(23, 'Purchase Bill', 1, '2025-11-02 10:02:30', '2025-11-02 10:02:30'),
(24, 'Purchase Return', 1, '2025-11-02 10:02:30', '2025-11-02 10:02:30'),
(25, 'Sale Order', 1, '2025-11-02 10:02:30', '2025-11-02 10:02:30'),
(26, 'Sale Bill', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(27, 'Sale Return', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(28, 'Cash & Bank Transaction', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(29, 'General', 1, '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(30, 'Dashboard', 1, '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(31, 'Quotation', 1, '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(32, 'Currency', 1, '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(33, 'Carrier', 1, '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(34, 'Stock Adjustment', 1, '2025-11-02 10:02:32', '2025-11-02 10:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prefix`
--

CREATE TABLE `prefix` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `order` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `job_code` varchar(255) DEFAULT NULL,
  `service_master` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `expense` varchar(255) DEFAULT NULL,
  `purchase_order` varchar(255) DEFAULT NULL,
  `purchase_bill` varchar(255) DEFAULT NULL,
  `purchase_return` varchar(255) DEFAULT NULL,
  `sale_order` varchar(255) DEFAULT NULL,
  `sale` varchar(255) DEFAULT NULL,
  `sale_return` varchar(255) DEFAULT NULL,
  `stock_transfer` varchar(255) DEFAULT NULL,
  `stock_adjustment` varchar(255) DEFAULT NULL,
  `quotation` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prefix`
--

INSERT INTO `prefix` (`id`, `company_id`, `order`, `service`, `job_code`, `service_master`, `customer`, `expense`, `purchase_order`, `purchase_bill`, `purchase_return`, `sale_order`, `sale`, `sale_return`, `stock_transfer`, `stock_adjustment`, `quotation`, `created_at`, `updated_at`) VALUES
(1, 1, 'ORD/', NULL, 'JOB/', NULL, NULL, 'EXP/', 'PO/', 'PB/', 'PR/', 'SO/', 'SL/', 'SR/', 'ST/', 'SA/', 'QT/', '2025-11-02 10:02:31', '2025-11-02 10:02:33');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_date` date NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `purchase_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `carrier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `shipping_charge` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `is_shipping_charge_distributed` tinyint(1) NOT NULL DEFAULT 0,
  `round_off` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `grand_total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `change_return` int(11) DEFAULT NULL,
  `paid_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `order_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `order_code` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) NOT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `round_off` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `grand_total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `paid_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return`
--

CREATE TABLE `purchase_return` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `return_date` date NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `return_code` varchar(255) DEFAULT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `round_off` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `grand_total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `paid_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `quotation_date` date NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `quotation_code` varchar(255) DEFAULT NULL,
  `quotation_status` varchar(255) NOT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `round_off` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `grand_total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `paid_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `status`, `created_by`, `updated_by`) VALUES
(1, 'Admin', 'web', '2025-11-02 10:02:31', '2025-11-02 10:02:31', 1, NULL, NULL),
(2, 'superadmin', 'web', '2025-11-09 19:59:12', '2025-11-09 19:59:12', 1, NULL, NULL),
(3, 'Operator', 'web', '2025-11-30 03:23:24', '2025-11-30 03:23:24', 1, NULL, NULL),
(4, 'Manager', 'web', '2025-11-30 03:25:10', '2025-11-30 03:25:10', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(8, 4),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(25, 4),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(27, 4),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(34, 4),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(36, 4),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(38, 4),
(39, 1),
(39, 2),
(39, 4),
(40, 1),
(40, 2),
(40, 4),
(41, 1),
(41, 2),
(41, 4),
(42, 1),
(42, 2),
(42, 4),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(44, 4),
(45, 1),
(45, 2),
(45, 3),
(45, 4),
(46, 1),
(46, 2),
(46, 4),
(47, 1),
(47, 2),
(47, 3),
(47, 4),
(48, 1),
(48, 2),
(48, 4),
(49, 1),
(49, 2),
(49, 4),
(50, 1),
(50, 2),
(50, 3),
(50, 4),
(51, 1),
(51, 2),
(51, 4),
(52, 1),
(52, 2),
(52, 4),
(53, 1),
(53, 2),
(53, 4),
(54, 1),
(54, 2),
(54, 4),
(55, 1),
(55, 2),
(55, 4),
(56, 1),
(56, 2),
(56, 3),
(56, 4),
(57, 1),
(57, 2),
(57, 3),
(57, 4),
(58, 1),
(58, 2),
(58, 3),
(59, 1),
(59, 2),
(59, 3),
(59, 4),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(61, 3),
(61, 4),
(62, 1),
(62, 2),
(62, 3),
(62, 4),
(63, 1),
(63, 2),
(63, 3),
(63, 4),
(64, 1),
(64, 2),
(64, 4),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(67, 4),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(73, 3),
(73, 4),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(75, 3),
(75, 4),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(77, 3),
(77, 4),
(78, 1),
(79, 1),
(79, 2),
(79, 3),
(79, 4),
(80, 1),
(80, 2),
(80, 4),
(81, 1),
(81, 2),
(81, 4),
(82, 1),
(82, 2),
(82, 4),
(83, 1),
(83, 2),
(83, 4),
(84, 1),
(84, 2),
(84, 4),
(85, 1),
(85, 2),
(85, 4),
(86, 1),
(86, 2),
(87, 1),
(87, 2),
(87, 4),
(88, 1),
(88, 2),
(89, 1),
(89, 2),
(90, 1),
(90, 2),
(91, 1),
(91, 2),
(92, 1),
(92, 2),
(92, 4),
(93, 1),
(93, 2),
(94, 1),
(94, 2),
(94, 4),
(95, 1),
(95, 2),
(96, 1),
(96, 2),
(96, 4),
(97, 1),
(97, 2),
(98, 1),
(98, 2),
(98, 4),
(99, 1),
(99, 2),
(100, 1),
(100, 2),
(100, 4),
(101, 1),
(101, 2),
(102, 1),
(102, 2),
(102, 4),
(103, 1),
(103, 2),
(104, 1),
(104, 2),
(104, 3),
(104, 4),
(105, 1),
(105, 2),
(106, 1),
(106, 2),
(106, 3),
(106, 4),
(107, 1),
(107, 2),
(108, 1),
(108, 2),
(108, 3),
(108, 4),
(109, 1),
(109, 2),
(110, 1),
(110, 2),
(110, 3),
(110, 4),
(111, 1),
(111, 2),
(112, 1),
(112, 2),
(112, 4),
(113, 1),
(113, 2),
(114, 1),
(115, 1),
(116, 1),
(116, 2),
(117, 1),
(117, 2),
(118, 1),
(118, 2),
(119, 1),
(119, 2),
(120, 1),
(120, 2),
(121, 1),
(121, 2),
(122, 1),
(122, 2),
(122, 4),
(123, 1),
(123, 2),
(123, 4),
(124, 1),
(124, 2),
(124, 4),
(125, 1),
(125, 2),
(125, 4),
(126, 1),
(126, 2),
(126, 4),
(127, 1),
(127, 2),
(127, 3),
(127, 4),
(128, 1),
(128, 2),
(128, 3),
(128, 4),
(129, 1),
(129, 2),
(129, 3),
(129, 4),
(130, 1),
(130, 2),
(130, 3),
(131, 1),
(131, 2),
(131, 3),
(132, 1),
(132, 2),
(132, 4),
(133, 1),
(133, 2),
(133, 4),
(134, 1),
(134, 2),
(134, 4),
(135, 1),
(135, 2),
(135, 4),
(136, 1),
(136, 2),
(136, 3),
(136, 4),
(137, 1),
(137, 2),
(138, 1),
(138, 2),
(138, 3),
(138, 4),
(139, 1),
(139, 2),
(139, 3),
(139, 4),
(140, 1),
(140, 2),
(140, 3),
(140, 4),
(141, 1),
(141, 2),
(141, 3),
(141, 4),
(142, 1),
(142, 2),
(142, 3),
(142, 4),
(143, 1),
(143, 2),
(143, 3),
(143, 4),
(144, 1),
(144, 2),
(144, 4),
(145, 1),
(145, 2),
(145, 3),
(145, 4),
(146, 1),
(146, 2),
(147, 1),
(147, 2),
(148, 1),
(149, 1),
(149, 2),
(150, 1),
(150, 2),
(151, 1),
(151, 2),
(152, 1),
(152, 2),
(153, 1),
(153, 2),
(154, 1),
(154, 2),
(155, 1),
(155, 2),
(156, 1),
(156, 2),
(156, 3),
(156, 4),
(157, 1),
(157, 2),
(157, 3),
(157, 4),
(158, 1),
(158, 2),
(158, 3),
(158, 4),
(159, 1),
(159, 2),
(159, 4),
(160, 1),
(160, 2),
(161, 1),
(161, 2),
(162, 1),
(162, 2),
(163, 1),
(163, 2),
(164, 1),
(164, 2),
(164, 4),
(165, 1),
(165, 2),
(165, 4),
(166, 1),
(166, 2),
(166, 3),
(166, 4),
(167, 1),
(167, 2),
(167, 3),
(167, 4),
(168, 1),
(168, 2),
(169, 1),
(169, 2),
(170, 1),
(170, 2),
(171, 1),
(171, 2),
(172, 1),
(172, 2),
(173, 1),
(173, 2),
(173, 4),
(174, 1),
(174, 2),
(174, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` date NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `sale_code` varchar(255) DEFAULT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `sale_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quotation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `round_off` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `grand_total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `paid_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `change_return` int(11) DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `branch_id`, `sale_date`, `prefix_code`, `count_id`, `sale_code`, `reference_no`, `sale_order_id`, `quotation_id`, `party_id`, `state_id`, `note`, `round_off`, `grand_total`, `paid_amount`, `change_return`, `currency_id`, `exchange_rate`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, '2026-05-15', 'SL/', '1', 'SL/1', NULL, NULL, NULL, 5, NULL, NULL, 0.0000, 200.0000, 200.0000, NULL, 1, 1.0000, 1, 1, '2026-05-15 11:22:50', '2026-05-15 11:22:51'),
(2, 1, '2026-05-15', 'SL/', '2', 'SL/2', NULL, NULL, NULL, 5, NULL, NULL, 0.0000, 200.0000, 200.0000, 0, 1, 1.0000, 1, 1, '2026-05-15 11:34:45', '2026-05-15 11:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `sale_orders`
--

CREATE TABLE `sale_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `order_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `order_code` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) NOT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `round_off` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `grand_total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `paid_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_orders`
--

INSERT INTO `sale_orders` (`id`, `branch_id`, `order_date`, `due_date`, `prefix_code`, `count_id`, `order_code`, `order_status`, `party_id`, `state_id`, `note`, `round_off`, `grand_total`, `paid_amount`, `currency_id`, `exchange_rate`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, '2026-05-15', NULL, 'SO/', '1', 'SO/1', 'Pending', 5, NULL, NULL, 0.0000, 200.0000, 200.0000, 1, 1.0000, 1, 1, '2026-05-15 11:37:43', '2026-05-15 11:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `sale_return`
--

CREATE TABLE `sale_return` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `return_date` date NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `return_code` varchar(255) DEFAULT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `round_off` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `grand_total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `paid_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `service_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `unit_price` decimal(20,2) NOT NULL DEFAULT 0.00,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_type` varchar(255) NOT NULL DEFAULT 'inclusive',
  `image_path` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `keys` text DEFAULT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `name`, `content`, `keys`, `delete_flag`, `created_at`, `updated_at`) VALUES
(1, 'SALE INVOICE', 'Dear [Customer Name],\n\nYour invoice for [Invoice Number] is attached.\n\nTotal: [Total Amount]\nPaid: [Paid Amount]\nDue: [Balance Amount]\n\nContact us at [Your Mobile Number] or [Your Email Address] for questions.\n\nThanks,\n[Your Company Name]', '[Invoice Number]\n\n[Customer Name]\n\n[Sale Date]\n\n[Due Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(2, 'SALE ORDER', 'Dear [Customer Name],\n\nYour sale order details for [Order Number] are attached.\n\nTotal: [Total Amount]\nPaid: [Paid Amount]\nDue: [Balance Amount]\n\nContact us at [Your Mobile Number] or [Your Email Address] for questions.\n\nThanks,\n[Your Company Name]', '[Order Number]\n\n[Customer Name]\n\n[Order Date]\n\n[Due Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(3, 'SALE RETURN', 'Dear [Customer Name],\n\nYour sale return details for [Return Number] are attached.\n\nTotal: [Total Amount]\nReturned: [Return Amount]\nDue: [Balance Amount]\n\nContact us at [Your Mobile Number] or [Your Email Address] for questions.\n\nThanks,\n[Your Company Name]', '[Return Number]\n\n[Customer Name]\n\n[Return Date]\n\n[Total Amount]\n\n[Return Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(4, 'PURCHASE BILL', 'Dear [Supplier Name],\n\nPlease find attached the invoice for your recent purchase.\n\nBill Details:\n\n   Bill Number: [Bill Number]\n   Purchase Date: [Purchase Date]\n   Total: [Total Amount]\n   Paid Amount: [Paid Amount]\n   Bill Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n[Your Company Name]\n[Your Mobile Number]', '[Bill Number]\n\n[Supplier Name]\n\n[Purchase Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(5, 'PURCHASE ORDER', 'Dear [Supplier Name],\n\nYour Purchase order details for [Order Number] are attached.\n\nTotal: [Total Amount]\nPaid: [Paid Amount]\nDue: [Balance Amount]\n\nContact us at [Your Mobile Number] or [Your Email Address] for questions.\n\nThanks,\n[Your Company Name]', '[Order Number]\n\n[Customer Name]\n\n[Order Date]\n\n[Due Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(6, 'PURCHASE RETURN', 'Dear [Supplier Name],\n\nYour purchase return details for [Return Number] are attached.\n\nTotal: [Total Amount]\nReturned: [Return Amount]\nDue: [Balance Amount]\n\nContact us at [Your Mobile Number] or [Your Email Address] for questions.\n\nThanks,\n[Your Company Name]', '[Return Number]\n\n[Supplier Name]\n\n[Return Date]\n\n[Total Amount]\n\n[Return Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(7, 'QUOTATION', 'Dear [Customer Name],\n\nYour Quotation details for [Quotation Number] are attached.\n\nTotal: [Total Amount]\n\nContact us at [Your Mobile Number] or [Your Email Address] for questions.\n\nThanks,\n[Your Company Name]', '[Quotation Number]\n\n[Customer Name]\n\n[Quotation Date]\n\n[Total Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-02 10:02:32', '2025-11-02 10:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

CREATE TABLE `smtp_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `host` varchar(255) NOT NULL,
  `port` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `encryption` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtp_settings`
--

INSERT INTO `smtp_settings` (`id`, `host`, `port`, `username`, `password`, `encryption`, `status`, `created_at`, `updated_at`) VALUES
(1, 'mail.bytesoft.shop', 465, 'no-reply@inventory.bytesoft.shop', '(N&bN;AhcbF3Q5C}', 'ssl', 1, '2025-11-10 20:40:14', '2026-02-10 13:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Andhra Pradesh', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(2, 'Arunachal Pradesh', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(3, 'Assam', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(4, 'Bihar', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(5, 'Chhattisgarh', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(6, 'Goa', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(7, 'Gujarat', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(8, 'Haryana', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(9, 'Himachal Pradesh', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(10, 'Jharkhand', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(11, 'Karnataka', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(12, 'Kerala', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(13, 'Madhya Pradesh', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(14, 'Maharashtra', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(15, 'Manipur', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(16, 'Meghalaya', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(17, 'Mizoram', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(18, 'Nagaland', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(19, 'Odisha', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(20, 'Punjab', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(21, 'Rajasthan', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(22, 'Sikkim', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(23, 'Tamil Nadu', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(24, 'Telangana', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(25, 'Tripura', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(26, 'Uttar Pradesh', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(27, 'Uttarakhand', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(28, 'West Bengal', 1, '2025-11-02 10:02:31', '2025-11-02 10:02:31');

-- --------------------------------------------------------

--
-- Table structure for table `status_histories`
--

CREATE TABLE `status_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `statusable_type` varchar(255) NOT NULL,
  `statusable_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_histories`
--

INSERT INTO `status_histories` (`id`, `status_date`, `status`, `note`, `statusable_type`, `statusable_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '2025-11-09', 'Pending', NULL, 'Purchase Order', 1, 1, 1, '2025-11-08 16:28:24', '2025-11-08 16:28:24'),
(6, '2025-11-19', 'Completed', NULL, 'Purchase Order', 2, 1, 1, '2025-11-18 13:38:05', '2025-11-18 13:38:05'),
(7, '2025-11-20', 'Pending', NULL, 'Purchase Order', 3, 2, 2, '2025-11-19 13:38:28', '2025-11-19 13:38:28'),
(8, '2025-11-20', 'Pending', NULL, 'Purchase Order', 4, 4, 4, '2025-11-19 15:00:07', '2025-11-19 15:00:07'),
(9, '2025-11-20', 'Pending', NULL, 'Purchase Order', 5, 4, 4, '2025-11-19 15:05:45', '2025-11-19 15:05:45'),
(10, '2025-11-20', 'Completed', NULL, 'Purchase Order', 6, 4, 4, '2025-11-19 15:11:46', '2025-11-19 15:11:46'),
(11, '2025-11-20', 'Pending', NULL, 'Purchase Order', 7, 4, 4, '2025-11-19 15:17:22', '2025-11-19 15:17:22'),
(12, '2025-11-20', 'Pending', NULL, 'Purchase Order', 8, 2, 2, '2025-11-19 21:24:12', '2025-11-19 21:24:12'),
(13, '2025-11-20', 'Pending', NULL, 'Purchase Order', 9, 2, 2, '2025-11-19 21:26:01', '2025-11-19 21:26:01'),
(14, '2025-11-20', 'Pending', NULL, 'Purchase Order', 10, 2, 2, '2025-11-19 21:33:02', '2025-11-19 21:33:02'),
(15, '2025-11-20', 'Completed', NULL, 'Purchase Order', 11, 2, 2, '2025-11-19 21:37:02', '2025-11-19 21:37:02'),
(17, '2026-05-15', 'Pending', NULL, 'Sale Order', 1, 1, 1, '2026-05-15 11:37:43', '2026-05-15 11:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `stock_adjustments`
--

CREATE TABLE `stock_adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `adjustment_code` varchar(255) DEFAULT NULL,
  `adjustment_date` date NOT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_transfers`
--

CREATE TABLE `stock_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `transfer_code` varchar(255) DEFAULT NULL,
  `transfer_date` date NOT NULL,
  `note` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `rate` decimal(8,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `status`, `is_deletable`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Others', 0.00, 1, 0, NULL, 1, '2025-11-02 10:02:31', '2026-03-12 17:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `twilio`
--

CREATE TABLE `twilio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sid` text DEFAULT NULL,
  `auth_token` text DEFAULT NULL,
  `twilio_number` text DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `short_code`, `description`, `user_id`, `status`, `is_deletable`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'None', 'None', NULL, NULL, 1, 0, NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(2, 'Box', 'Box', NULL, NULL, 1, 1, NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(3, 'Pieces', 'Pcs', NULL, NULL, 1, 1, NULL, NULL, '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(8, 'KG', 'Kilogram', NULL, NULL, 1, 1, 2, 2, '2025-11-11 14:59:56', '2025-12-29 04:30:11'),
(9, 'Goze', 'Gz', NULL, NULL, 1, 1, 2, 2, '2025-12-29 04:23:09', '2025-12-29 04:23:09'),
(10, 'Set', 'Set', NULL, NULL, 1, 1, 2, 2, '2025-12-29 05:49:51', '2025-12-29 05:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `is_allowed_all_warehouses` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `branch_id`, `username`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `role_id`, `avatar`, `status`, `remember_token`, `created_at`, `updated_at`, `created_by`, `updated_by`, `mobile`, `is_allowed_all_warehouses`) VALUES
(1, 1, 'Admin', 'Super', 'Admin', 'inventory@bytesoft.shop', NULL, '$2y$10$MYYgvXQ4WU8wLTIIf6QVz.4qUJXAT9DgjpmQWLzifDcKhT6lyKk8O', 1, '698b8f51b44d2.png', 1, NULL, '2025-11-02 10:02:26', '2026-02-12 22:12:49', NULL, 1, NULL, 1),
(7, 1, 'informationtechnology', 'Information', 'Technology', 'itscmrk@gmail.com', NULL, '$2y$10$vDLPOexNiUOSRLRKju8lJOVFvnD9edrlGS.6mT8IBWhrTszERL4lG', 1, NULL, 1, NULL, '2026-03-11 05:43:06', '2026-03-11 05:43:06', 1, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_warehouses`
--

CREATE TABLE `user_warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`id`, `version`, `created_at`, `updated_at`) VALUES
(1, '1.0', '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(2, '1.1', '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(3, '1.1.1', '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(4, '1.2', '2025-11-02 10:02:31', '2025-11-02 10:02:31'),
(5, '1.3', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(6, '1.3.1', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(7, '1.3.2', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(8, '1.3.3', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(9, '1.3.4', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(10, '1.4', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(11, '1.4.1', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(12, '1.4.2', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(13, '1.4.3', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(14, '1.4.4', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(15, '1.4.5', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(16, '1.4.6', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(17, '1.4.7', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(18, '1.4.8', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(19, '1.4.9', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(20, '1.5', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(21, '2.0', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(22, '2.1', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(23, '2.2', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(24, '2.3', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(25, '2.3.1', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(26, '2.3.2', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(27, '2.3.3', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(28, '2.3.4', '2025-11-02 10:02:32', '2025-11-02 10:02:32'),
(29, '2.3.5', '2025-11-02 10:02:33', '2025-11-02 10:02:33'),
(30, '2.3.6', '2025-11-02 10:02:33', '2025-11-02 10:02:33'),
(31, '2.4', '2025-11-02 10:02:33', '2025-11-02 10:02:33'),
(32, '2.5', '2025-11-02 10:02:33', '2025-11-02 10:02:33');

-- --------------------------------------------------------

--
-- Table structure for table `vonage`
--

CREATE TABLE `vonage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `api_key` text DEFAULT NULL,
  `api_secret` text DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `branch_id`, `name`, `description`, `created_by`, `updated_by`, `status`, `is_deletable`, `created_at`, `updated_at`) VALUES
(1, 1, 'Main', NULL, NULL, NULL, 1, 0, '2025-11-02 10:02:31', '2025-11-02 10:02:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_group_id_foreign` (`group_id`),
  ADD KEY `accounts_created_by_foreign` (`created_by`),
  ADD KEY `accounts_updated_by_foreign` (`updated_by`),
  ADD KEY `accounts_payment_type_bank_id_foreign` (`payment_type_bank_id`),
  ADD KEY `accounts_expense_category_id_foreign` (`expense_category_id`),
  ADD KEY `accounts_party_id_foreign` (`party_id`),
  ADD KEY `accounts_branch_fk` (`branch_id`);

--
-- Indexes for table `account_groups`
--
ALTER TABLE `account_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_groups_created_by_foreign` (`created_by`),
  ADD KEY `account_groups_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_transactions_transaction_type_transaction_id_index` (`transaction_type`,`transaction_id`),
  ADD KEY `account_transactions_account_id_foreign` (`account_id`),
  ADD KEY `account_transactions_branch_fk` (`branch_id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_settings_language_id_foreign` (`language_id`);

--
-- Indexes for table `bank_adjustments`
--
ALTER TABLE `bank_adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_type_id` (`payment_type_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_created_by_foreign` (`created_by`),
  ADD KEY `brands_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `carriers`
--
ALTER TABLE `carriers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carriers_created_by_foreign` (`created_by`),
  ADD KEY `carriers_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `cash_adjustments`
--
ALTER TABLE `cash_adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cash_adjustments_payment_type_id_foreign` (`payment_type_id`),
  ADD KEY `cash_adjustments_created_by_foreign` (`created_by`),
  ADD KEY `cash_adjustments_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `cheque_transactions`
--
ALTER TABLE `cheque_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cheque_transactions_payment_transaction_id_foreign` (`payment_transaction_id`),
  ADD KEY `cheque_transactions_payment_type_id_foreign` (`payment_type_id`),
  ADD KEY `cheque_transactions_transfer_to_payment_type_id_foreign` (`transfer_to_payment_type_id`),
  ADD KEY `cheque_transactions_created_by_foreign` (`created_by`),
  ADD KEY `cheque_transactions_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_state_id_foreign` (`state_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_name_unique` (`name`),
  ADD UNIQUE KEY `currencies_code_unique` (`code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD KEY `customers_created_by_foreign` (`created_by`),
  ADD KEY `customers_updated_by_foreign` (`updated_by`),
  ADD KEY `customers_branch_fk` (`branch_id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domains_domain_unique` (`domain`),
  ADD KEY `domains_tenant_id_foreign` (`tenant_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_expense_category_id_foreign` (`expense_category_id`),
  ADD KEY `expenses_created_by_foreign` (`created_by`),
  ADD KEY `expenses_updated_by_foreign` (`updated_by`),
  ADD KEY `expenses_expense_subcategory_id_foreign` (`expense_subcategory_id`),
  ADD KEY `expenses_branch_fk` (`branch_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_categories_account_group_id_foreign` (`account_group_id`),
  ADD KEY `expense_categories_created_by_foreign` (`created_by`),
  ADD KEY `expense_categories_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `expense_items`
--
ALTER TABLE `expense_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_items_expense_id_foreign` (`expense_id`),
  ADD KEY `expense_items_expense_item_master_id_foreign` (`expense_item_master_id`),
  ADD KEY `expense_items_tax_id_foreign` (`tax_id`);

--
-- Indexes for table `expense_item_master`
--
ALTER TABLE `expense_item_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_item_master_tax_id_foreign` (`tax_id`),
  ADD KEY `expense_item_master_created_by_foreign` (`created_by`),
  ADD KEY `expense_item_master_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `expense_subcategories`
--
ALTER TABLE `expense_subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_subcategories_created_by_foreign` (`created_by`),
  ADD KEY `expense_subcategories_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_item_category_id_foreign` (`item_category_id`),
  ADD KEY `items_base_unit_id_foreign` (`base_unit_id`),
  ADD KEY `items_secondary_unit_id_foreign` (`secondary_unit_id`),
  ADD KEY `items_tax_id_foreign` (`tax_id`),
  ADD KEY `items_created_by_foreign` (`created_by`),
  ADD KEY `items_updated_by_foreign` (`updated_by`),
  ADD KEY `items_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `item_batch_masters`
--
ALTER TABLE `item_batch_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_batch_masters_item_id_foreign` (`item_id`);

--
-- Indexes for table `item_batch_quantities`
--
ALTER TABLE `item_batch_quantities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_batch_quantities_item_id_foreign` (`item_id`),
  ADD KEY `item_batch_quantities_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `item_batch_quantities_item_batch_master_id_foreign` (`item_batch_master_id`);

--
-- Indexes for table `item_batch_transactions`
--
ALTER TABLE `item_batch_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_batch_transactions_item_transaction_id_foreign` (`item_transaction_id`),
  ADD KEY `item_batch_transactions_item_batch_master_id_foreign` (`item_batch_master_id`),
  ADD KEY `item_batch_transactions_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `item_batch_transactions_item_id_foreign` (`item_id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_categories_created_by_foreign` (`created_by`),
  ADD KEY `item_categories_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `item_general_quantities`
--
ALTER TABLE `item_general_quantities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_general_quantities_item_id_foreign` (`item_id`),
  ADD KEY `item_general_quantities_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `item_serial_masters`
--
ALTER TABLE `item_serial_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_serial_masters_item_id_foreign` (`item_id`);

--
-- Indexes for table `item_serial_quantities`
--
ALTER TABLE `item_serial_quantities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_serial_quantities_item_id_foreign` (`item_id`),
  ADD KEY `item_serial_quantities_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `item_serial_quantities_item_serial_master_id_foreign` (`item_serial_master_id`);

--
-- Indexes for table `item_serial_transactions`
--
ALTER TABLE `item_serial_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_serial_transactions_item_transaction_id_foreign` (`item_transaction_id`),
  ADD KEY `item_serial_transactions_item_serial_master_id_foreign` (`item_serial_master_id`),
  ADD KEY `item_serial_transactions_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `item_serial_transactions_item_id_foreign` (`item_id`);

--
-- Indexes for table `item_stock_transfers`
--
ALTER TABLE `item_stock_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_stock_transfers_stock_transfer_id_foreign` (`stock_transfer_id`),
  ADD KEY `item_stock_transfers_item_id_foreign` (`item_id`),
  ADD KEY `item_stock_transfers_from_warehouse_id_foreign` (`from_warehouse_id`),
  ADD KEY `item_stock_transfers_to_warehouse_id_foreign` (`to_warehouse_id`),
  ADD KEY `item_stock_transfers_from_item_transaction_id_foreign` (`from_item_transaction_id`),
  ADD KEY `item_stock_transfers_to_item_transaction_id_foreign` (`to_item_transaction_id`);

--
-- Indexes for table `item_transactions`
--
ALTER TABLE `item_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_transactions_transaction_type_transaction_id_index` (`transaction_type`,`transaction_id`),
  ADD KEY `item_transactions_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `item_transactions_item_id_foreign` (`item_id`),
  ADD KEY `item_transactions_unit_id_foreign` (`unit_id`),
  ADD KEY `item_transactions_tax_id_foreign` (`tax_id`),
  ADD KEY `item_transactions_created_by_foreign` (`created_by`),
  ADD KEY `item_transactions_updated_by_foreign` (`updated_by`),
  ADD KEY `item_transactions_branch_fk` (`branch_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_code_unique` (`code`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ordered_products_order_id_foreign` (`order_id`),
  ADD KEY `ordered_products_service_id_foreign` (`service_id`),
  ADD KEY `ordered_products_tax_id_foreign` (`tax_id`),
  ADD KEY `ordered_products_assigned_user_id_foreign` (`assigned_user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_created_by_foreign` (`created_by`),
  ADD KEY `orders_updated_by_foreign` (`updated_by`),
  ADD KEY `orders_party_id_foreign` (`party_id`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_payments_order_id_foreign` (`order_id`),
  ADD KEY `order_payments_payment_type_id_foreign` (`payment_type_id`),
  ADD KEY `order_payments_created_by_foreign` (`created_by`),
  ADD KEY `order_payments_updated_by_foreign` (`updated_by`),
  ADD KEY `order_payments_branch_fk` (`branch_id`);

--
-- Indexes for table `parties`
--
ALTER TABLE `parties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parties_state_id_foreign` (`state_id`),
  ADD KEY `parties_created_by_foreign` (`created_by`),
  ADD KEY `parties_updated_by_foreign` (`updated_by`),
  ADD KEY `parties_currency_id_foreign` (`currency_id`),
  ADD KEY `parties_branch_fk` (`branch_id`);

--
-- Indexes for table `party_balance_after_adjustments`
--
ALTER TABLE `party_balance_after_adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `party_balance_after_adjustments_party_payment_id_foreign` (`party_payment_id`),
  ADD KEY `party_balance_after_adjustments_payment_transaction_id_foreign` (`payment_transaction_id`);

--
-- Indexes for table `party_payments`
--
ALTER TABLE `party_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `party_payments_payment_type_id_foreign` (`payment_type_id`),
  ADD KEY `party_payments_party_id_foreign` (`party_id`),
  ADD KEY `party_payments_created_by_foreign` (`created_by`),
  ADD KEY `party_payments_updated_by_foreign` (`updated_by`),
  ADD KEY `party_payments_branch_fk` (`branch_id`);

--
-- Indexes for table `party_payment_allocations`
--
ALTER TABLE `party_payment_allocations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `party_payment_allocations_party_payment_id_foreign` (`party_payment_id`),
  ADD KEY `party_payment_allocations_payment_transaction_id_foreign` (`payment_transaction_id`);

--
-- Indexes for table `party_transactions`
--
ALTER TABLE `party_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `party_transactions_party_id_foreign` (`party_id`),
  ADD KEY `party_transactions_transaction_type_transaction_id_index` (`transaction_type`,`transaction_id`),
  ADD KEY `party_transactions_created_by_foreign` (`created_by`),
  ADD KEY `party_transactions_updated_by_foreign` (`updated_by`),
  ADD KEY `party_transactions_branch_fk` (`branch_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_transactions_payment_type_id_foreign` (`payment_type_id`),
  ADD KEY `payment_transactions_transfer_to_payment_type_id_foreign` (`transfer_to_payment_type_id`),
  ADD KEY `payment_transactions_transaction_type_transaction_id_index` (`transaction_type`,`transaction_id`),
  ADD KEY `payment_transactions_created_by_foreign` (`created_by`),
  ADD KEY `payment_transactions_updated_by_foreign` (`updated_by`),
  ADD KEY `payment_transactions_branch_fk` (`branch_id`);

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_types_user_id_foreign` (`user_id`),
  ADD KEY `payment_types_created_by_foreign` (`created_by`),
  ADD KEY `payment_types_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`),
  ADD KEY `permissions_permission_group_id_foreign` (`permission_group_id`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prefix`
--
ALTER TABLE `prefix`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prefix_company_id_foreign` (`company_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_purchase_order_id_foreign` (`purchase_order_id`),
  ADD KEY `purchases_party_id_foreign` (`party_id`),
  ADD KEY `purchases_state_id_foreign` (`state_id`),
  ADD KEY `purchases_created_by_foreign` (`created_by`),
  ADD KEY `purchases_updated_by_foreign` (`updated_by`),
  ADD KEY `purchases_currency_id_foreign` (`currency_id`),
  ADD KEY `purchases_carrier_id_foreign` (`carrier_id`),
  ADD KEY `purchases_branch_fk` (`branch_id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_orders_party_id_foreign` (`party_id`),
  ADD KEY `purchase_orders_state_id_foreign` (`state_id`),
  ADD KEY `purchase_orders_created_by_foreign` (`created_by`),
  ADD KEY `purchase_orders_updated_by_foreign` (`updated_by`),
  ADD KEY `purchase_orders_currency_id_foreign` (`currency_id`),
  ADD KEY `purchase_orders_branch_fk` (`branch_id`);

--
-- Indexes for table `purchase_return`
--
ALTER TABLE `purchase_return`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_return_party_id_foreign` (`party_id`),
  ADD KEY `purchase_return_state_id_foreign` (`state_id`),
  ADD KEY `purchase_return_created_by_foreign` (`created_by`),
  ADD KEY `purchase_return_updated_by_foreign` (`updated_by`),
  ADD KEY `purchase_return_currency_id_foreign` (`currency_id`),
  ADD KEY `purchase_return_branch_fk` (`branch_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotations_party_id_foreign` (`party_id`),
  ADD KEY `quotations_state_id_foreign` (`state_id`),
  ADD KEY `quotations_created_by_foreign` (`created_by`),
  ADD KEY `quotations_updated_by_foreign` (`updated_by`),
  ADD KEY `quotations_currency_id_foreign` (`currency_id`),
  ADD KEY `quotations_branch_fk` (`branch_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`),
  ADD KEY `roles_created_by_foreign` (`created_by`),
  ADD KEY `roles_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_sale_order_id_foreign` (`sale_order_id`),
  ADD KEY `sales_party_id_foreign` (`party_id`),
  ADD KEY `sales_state_id_foreign` (`state_id`),
  ADD KEY `sales_created_by_foreign` (`created_by`),
  ADD KEY `sales_updated_by_foreign` (`updated_by`),
  ADD KEY `sales_quotation_id_foreign` (`quotation_id`),
  ADD KEY `sales_currency_id_foreign` (`currency_id`),
  ADD KEY `sales_branch_fk` (`branch_id`);

--
-- Indexes for table `sale_orders`
--
ALTER TABLE `sale_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_orders_party_id_foreign` (`party_id`),
  ADD KEY `sale_orders_state_id_foreign` (`state_id`),
  ADD KEY `sale_orders_created_by_foreign` (`created_by`),
  ADD KEY `sale_orders_updated_by_foreign` (`updated_by`),
  ADD KEY `sale_orders_currency_id_foreign` (`currency_id`),
  ADD KEY `sale_orders_branch_fk` (`branch_id`);

--
-- Indexes for table `sale_return`
--
ALTER TABLE `sale_return`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_return_party_id_foreign` (`party_id`),
  ADD KEY `sale_return_state_id_foreign` (`state_id`),
  ADD KEY `sale_return_created_by_foreign` (`created_by`),
  ADD KEY `sale_return_updated_by_foreign` (`updated_by`),
  ADD KEY `sale_return_currency_id_foreign` (`currency_id`),
  ADD KEY `sale_return_branch_fk` (`branch_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_tax_id_foreign` (`tax_id`),
  ADD KEY `services_created_by_foreign` (`created_by`),
  ADD KEY `services_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_histories`
--
ALTER TABLE `status_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_histories_statusable_type_statusable_id_index` (`statusable_type`,`statusable_id`),
  ADD KEY `status_histories_created_by_foreign` (`created_by`),
  ADD KEY `status_histories_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `stock_adjustments`
--
ALTER TABLE `stock_adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_adjustments_created_by_foreign` (`created_by`),
  ADD KEY `stock_adjustments_updated_by_foreign` (`updated_by`),
  ADD KEY `stock_adjustments_branch_fk` (`branch_id`);

--
-- Indexes for table `stock_transfers`
--
ALTER TABLE `stock_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_transfers_created_by_foreign` (`created_by`),
  ADD KEY `stock_transfers_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxes_created_by_foreign` (`created_by`),
  ADD KEY `taxes_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twilio`
--
ALTER TABLE `twilio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_user_id_foreign` (`user_id`),
  ADD KEY `units_created_by_foreign` (`created_by`),
  ADD KEY `units_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_created_by_foreign` (`created_by`),
  ADD KEY `users_updated_by_foreign` (`updated_by`),
  ADD KEY `users_branch_fk` (`branch_id`);

--
-- Indexes for table `user_warehouses`
--
ALTER TABLE `user_warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_warehouses_user_id_foreign` (`user_id`),
  ADD KEY `user_warehouses_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vonage`
--
ALTER TABLE `vonage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_created_by_foreign` (`created_by`),
  ADD KEY `warehouses_updated_by_foreign` (`updated_by`),
  ADD KEY `warehouses_branch_fk` (`branch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `account_groups`
--
ALTER TABLE `account_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `account_transactions`
--
ALTER TABLE `account_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_adjustments`
--
ALTER TABLE `bank_adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `carriers`
--
ALTER TABLE `carriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cash_adjustments`
--
ALTER TABLE `cash_adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cheque_transactions`
--
ALTER TABLE `cheque_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `expense_items`
--
ALTER TABLE `expense_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `expense_item_master`
--
ALTER TABLE `expense_item_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `expense_subcategories`
--
ALTER TABLE `expense_subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT for table `item_batch_masters`
--
ALTER TABLE `item_batch_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `item_batch_quantities`
--
ALTER TABLE `item_batch_quantities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `item_batch_transactions`
--
ALTER TABLE `item_batch_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `item_general_quantities`
--
ALTER TABLE `item_general_quantities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5346;

--
-- AUTO_INCREMENT for table `item_serial_masters`
--
ALTER TABLE `item_serial_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `item_serial_quantities`
--
ALTER TABLE `item_serial_quantities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `item_serial_transactions`
--
ALTER TABLE `item_serial_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_stock_transfers`
--
ALTER TABLE `item_stock_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_transactions`
--
ALTER TABLE `item_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `ordered_products`
--
ALTER TABLE `ordered_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parties`
--
ALTER TABLE `parties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `party_balance_after_adjustments`
--
ALTER TABLE `party_balance_after_adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `party_payments`
--
ALTER TABLE `party_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `party_payment_allocations`
--
ALTER TABLE `party_payment_allocations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `party_transactions`
--
ALTER TABLE `party_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prefix`
--
ALTER TABLE `prefix`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_return`
--
ALTER TABLE `purchase_return`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sale_orders`
--
ALTER TABLE `sale_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sale_return`
--
ALTER TABLE `sale_return`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `status_histories`
--
ALTER TABLE `status_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `stock_adjustments`
--
ALTER TABLE `stock_adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_transfers`
--
ALTER TABLE `stock_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `twilio`
--
ALTER TABLE `twilio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_warehouses`
--
ALTER TABLE `user_warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `versions`
--
ALTER TABLE `versions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `vonage`
--
ALTER TABLE `vonage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD CONSTRAINT `account_transactions_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_transactions`
--
ALTER TABLE `item_transactions`
  ADD CONSTRAINT `item_transactions_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD CONSTRAINT `order_payments_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `parties`
--
ALTER TABLE `parties`
  ADD CONSTRAINT `parties_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `party_payments`
--
ALTER TABLE `party_payments`
  ADD CONSTRAINT `party_payments_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `party_transactions`
--
ALTER TABLE `party_transactions`
  ADD CONSTRAINT `party_transactions_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD CONSTRAINT `payment_transactions_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD CONSTRAINT `purchase_orders_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_return`
--
ALTER TABLE `purchase_return`
  ADD CONSTRAINT `purchase_return_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `quotations_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sale_orders`
--
ALTER TABLE `sale_orders`
  ADD CONSTRAINT `sale_orders_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sale_return`
--
ALTER TABLE `sale_return`
  ADD CONSTRAINT `sale_return_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_adjustments`
--
ALTER TABLE `stock_adjustments`
  ADD CONSTRAINT `stock_adjustments_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD CONSTRAINT `warehouses_branch_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
