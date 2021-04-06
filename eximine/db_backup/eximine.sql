-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 26, 2021 at 12:54 PM
-- Server version: 8.0.21
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eximine`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_companies`
--

CREATE TABLE `app_companies` (
  `companyid` int NOT NULL,
  `title` longtext,
  `title_id` longtext,
  `tagline` longtext,
  `description` longtext,
  `priority` int UNSIGNED DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` time(6) DEFAULT NULL,
  `createtime` time(6) DEFAULT NULL,
  `createdate` date DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `app_countries`
--

CREATE TABLE `app_countries` (
  `countryid` int NOT NULL,
  `title` longtext,
  `title_id` longtext,
  `tagline` longtext,
  `country_code` varchar(200) NOT NULL,
  `description` longtext,
  `priority` int UNSIGNED DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` time(6) DEFAULT NULL,
  `createtime` time(6) DEFAULT NULL,
  `createdate` date DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `app_faqs`
--

CREATE TABLE `app_faqs` (
  `faqid` int NOT NULL,
  `title` longtext,
  `title_id` longtext,
  `tagline` longtext,
  `description` longtext,
  `priority` int UNSIGNED DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` time(6) DEFAULT NULL,
  `createtime` time(6) DEFAULT NULL,
  `createdate` date DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `app_importexportdata`
--

CREATE TABLE `app_importexportdata` (
  `id` int NOT NULL,
  `COUNTRY` mediumtext COLLATE utf8mb4_spanish2_ci,
  `TYPE` longtext COLLATE utf8mb4_spanish2_ci,
  `DATE` longtext COLLATE utf8mb4_spanish2_ci,
  `MONTH` longtext COLLATE utf8mb4_spanish2_ci,
  `YEAR` longtext COLLATE utf8mb4_spanish2_ci,
  `HS_CODE` longtext COLLATE utf8mb4_spanish2_ci,
  `TWO_DIGIT` longtext COLLATE utf8mb4_spanish2_ci,
  `FOUR_DIGIT` longtext COLLATE utf8mb4_spanish2_ci,
  `HS_CODE_DESCRIPTION` longtext COLLATE utf8mb4_spanish2_ci,
  `COMMODITY_DESCRIPTION` longtext COLLATE utf8mb4_spanish2_ci,
  `UQC` longtext COLLATE utf8mb4_spanish2_ci,
  `QUANTITY` longtext COLLATE utf8mb4_spanish2_ci,
  `CURRENCY` longtext COLLATE utf8mb4_spanish2_ci,
  `UNT_PRICE_FC` longtext COLLATE utf8mb4_spanish2_ci,
  `INV_VALUE_FC` longtext COLLATE utf8mb4_spanish2_ci,
  `UNT_PRICE_INR` longtext COLLATE utf8mb4_spanish2_ci,
  `INVOICE_NO` longtext COLLATE utf8mb4_spanish2_ci,
  `SB_NO` longtext COLLATE utf8mb4_spanish2_ci,
  `BE_NO` longtext COLLATE utf8mb4_spanish2_ci,
  `UNIT_RATE_WITH_FOB_INR` longtext COLLATE utf8mb4_spanish2_ci,
  `UNT_RATE_WITH_DUTY_INR` longtext COLLATE utf8mb4_spanish2_ci,
  `PER_UNT_FOB` longtext COLLATE utf8mb4_spanish2_ci,
  `PER_UNT_DUTY_INR` longtext COLLATE utf8mb4_spanish2_ci,
  `FOB_INR` longtext COLLATE utf8mb4_spanish2_ci,
  `FOB_FC` longtext COLLATE utf8mb4_spanish2_ci,
  `DUTY_INR` longtext COLLATE utf8mb4_spanish2_ci,
  `FOB_USD` longtext COLLATE utf8mb4_spanish2_ci,
  `DUTY_FC` longtext COLLATE utf8mb4_spanish2_ci,
  `DUTY_PERCENTAGE` longtext COLLATE utf8mb4_spanish2_ci,
  `EX_TOTAL_VALUE_INR` longtext COLLATE utf8mb4_spanish2_ci,
  `ASS_VALUE_INR` longtext COLLATE utf8mb4_spanish2_ci,
  `ASS_VALUE_USD` longtext COLLATE utf8mb4_spanish2_ci,
  `ASS_VALUE_FC` longtext COLLATE utf8mb4_spanish2_ci,
  `EXCHANGE_RATE` longtext COLLATE utf8mb4_spanish2_ci,
  `COUNTRY_OF_ORIGIN` longtext COLLATE utf8mb4_spanish2_ci,
  `PORT_OF_DISCHARGE` longtext COLLATE utf8mb4_spanish2_ci,
  `MODE_OF_PORT` longtext COLLATE utf8mb4_spanish2_ci,
  `PORT_OF_LODING` longtext COLLATE utf8mb4_spanish2_ci,
  `PORT_CODE` longtext COLLATE utf8mb4_spanish2_ci,
  `IMPORTER_ID` longtext COLLATE utf8mb4_spanish2_ci,
  `EXPORTER_ID` longtext COLLATE utf8mb4_spanish2_ci,
  `IMPORTER_NAME` longtext COLLATE utf8mb4_spanish2_ci,
  `EXPORTER_NAME` longtext COLLATE utf8mb4_spanish2_ci,
  `IMPORTER_ADDRESS` longtext COLLATE utf8mb4_spanish2_ci,
  `EXPORTER_ADDRESS` longtext COLLATE utf8mb4_spanish2_ci,
  `IMPORTER_CITY_STATE` longtext COLLATE utf8mb4_spanish2_ci,
  `EXPORTER_CITY` longtext COLLATE utf8mb4_spanish2_ci,
  `IMPORTER_PIN` longtext COLLATE utf8mb4_spanish2_ci,
  `EXPORTER_PIN` longtext COLLATE utf8mb4_spanish2_ci,
  `IMPORTER_PHONE` longtext COLLATE utf8mb4_spanish2_ci,
  `EXPORTER_PHONE` longtext COLLATE utf8mb4_spanish2_ci,
  `IMPORTER_EMAIL` longtext COLLATE utf8mb4_spanish2_ci,
  `EXPORTER_EMAIL` longtext COLLATE utf8mb4_spanish2_ci,
  `IMPORTER_CONTACT_PERSON` longtext COLLATE utf8mb4_spanish2_ci,
  `EXPORTER_CONTACT_PERSON` longtext COLLATE utf8mb4_spanish2_ci,
  `BE_TYPE` longtext COLLATE utf8mb4_spanish2_ci,
  `CHA_NAME` longtext COLLATE utf8mb4_spanish2_ci,
  `RECORD_ID` longtext COLLATE utf8mb4_spanish2_ci,
  `priority` int UNSIGNED DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` time(6) DEFAULT NULL,
  `createtime` time(6) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `csv_file` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `app_packages`
--

CREATE TABLE `app_packages` (
  `packageid` int NOT NULL,
  `plan_name` varchar(200) NOT NULL,
  `package_validity` int UNSIGNED DEFAULT NULL,
  `price` decimal(65,2) DEFAULT NULL,
  `download_points` int UNSIGNED DEFAULT NULL,
  `download_points_perday` int UNSIGNED DEFAULT NULL,
  `unlimited_data_access` int UNSIGNED NOT NULL,
  `searches` int UNSIGNED DEFAULT NULL,
  `work_spaces` int UNSIGNED DEFAULT NULL,
  `work_spaces_validity` int UNSIGNED DEFAULT NULL,
  `work_spaces_deletion` int UNSIGNED DEFAULT NULL,
  `shipment_limit_workspaces` int UNSIGNED DEFAULT NULL,
  `addon_points_facility` varchar(200) DEFAULT NULL,
  `hot_products` int UNSIGNED DEFAULT NULL,
  `hot_products_interval` int UNSIGNED DEFAULT NULL,
  `hot_companies` int UNSIGNED DEFAULT NULL,
  `hot_companies_interval` int UNSIGNED DEFAULT NULL,
  `allowed_users` int UNSIGNED DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` time(6) DEFAULT NULL,
  `createtime` time(6) DEFAULT NULL,
  `createdate` date DEFAULT NULL
) ;

--
-- Dumping data for table `app_packages`
--

INSERT INTO `app_packages` (`packageid`, `plan_name`, `package_validity`, `price`, `download_points`, `download_points_perday`, `unlimited_data_access`, `searches`, `work_spaces`, `work_spaces_validity`, `work_spaces_deletion`, `shipment_limit_workspaces`, `addon_points_facility`, `hot_products`, `hot_products_interval`, `hot_companies`, `hot_companies_interval`, `allowed_users`, `is_active`, `modifydate`, `modifytime`, `createtime`, `createdate`) VALUES
(1, 'Free', 7, '0.00', 100, 0, 90, 100, 10, 7, 1, 1000, 'no', 0, 0, 0, 0, 1, 1, NULL, NULL, '12:12:24.000000', '2021-03-23'),
(2, 'Starter', 180, '0.00', 120000, 0, 365, 1000, 100, 180, 50, 250000, 'no', 30, 90, 5, 90, 2, 1, NULL, NULL, '12:16:47.000000', '2021-03-23'),
(3, 'Pro', 365, '0.00', 610000, 0, 1200, 2500, 500, 365, 100, 450000, 'no', 150, 90, 250, 90, 7, 1, NULL, NULL, '12:18:36.000000', '2021-03-23'),
(4, 'Unlimited', 365, '0.00', 1140000, 0, 1800, 10000000, 700, 365, 200, 1000000, 'yes', 1500, 90, 1200, 90, 15, 1, NULL, NULL, '12:20:11.000000', '2021-03-23'),
(5, 'Unlimited+', 365, '0.00', 182500000, 500000, 2520, 1000000, 1200, 365, 300, 100000, 'yes', 5000, 90, 5000, 90, 30, 1, NULL, NULL, '12:23:44.000000', '2021-03-23');

-- --------------------------------------------------------

--
-- Table structure for table `app_registrations`
--

CREATE TABLE `app_registrations` (
  `id` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `country_code` varchar(135) NOT NULL,
  `phone_number` varchar(135) NOT NULL,
  `companyname` varchar(200) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `user_type_other` varchar(100) DEFAULT NULL,
  `packageid` int UNSIGNED DEFAULT NULL,
  `plan_name` varchar(200) NOT NULL,
  `package_validity` int UNSIGNED DEFAULT NULL,
  `price` decimal(65,2) DEFAULT NULL,
  `download_points` int UNSIGNED DEFAULT NULL,
  `download_points_total` int UNSIGNED DEFAULT NULL,
  `download_points_perday` int UNSIGNED DEFAULT NULL,
  `download_points_perday_total` int UNSIGNED DEFAULT NULL,
  `unlimited_data_access` int UNSIGNED NOT NULL,
  `unlimited_data_access_date` date DEFAULT NULL,
  `searches` int UNSIGNED DEFAULT NULL,
  `searches_total` int UNSIGNED DEFAULT NULL,
  `work_spaces` int UNSIGNED DEFAULT NULL,
  `work_spaces_validity` int UNSIGNED DEFAULT NULL,
  `work_spaces_validity_date` date DEFAULT NULL,
  `work_spaces_deletion` int UNSIGNED DEFAULT NULL,
  `shipment_limit_workspaces` int UNSIGNED DEFAULT NULL,
  `addon_points_facility` varchar(200) DEFAULT NULL,
  `hot_products` int UNSIGNED DEFAULT NULL,
  `hot_products_total` int UNSIGNED DEFAULT NULL,
  `hot_products_interval` int UNSIGNED DEFAULT NULL,
  `hot_companies` int UNSIGNED DEFAULT NULL,
  `hot_companies_total` int UNSIGNED DEFAULT NULL,
  `hot_companies_interval` int UNSIGNED DEFAULT NULL,
  `allowed_users` int UNSIGNED DEFAULT NULL,
  `allowed_users_total` int UNSIGNED DEFAULT NULL,
  `start_on` date DEFAULT NULL,
  `expire_on` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `modifydate` date DEFAULT NULL,
  `modifytime` time(6) DEFAULT NULL,
  `createtime` time(6) DEFAULT NULL,
  `createdate` date DEFAULT NULL
) ;

--
-- Dumping data for table `app_registrations`
--

INSERT INTO `app_registrations` (`id`, `email`, `password`, `fullname`, `country_code`, `phone_number`, `companyname`, `user_type`, `user_type_other`, `packageid`, `plan_name`, `package_validity`, `price`, `download_points`, `download_points_total`, `download_points_perday`, `download_points_perday_total`, `unlimited_data_access`, `unlimited_data_access_date`, `searches`, `searches_total`, `work_spaces`, `work_spaces_validity`, `work_spaces_validity_date`, `work_spaces_deletion`, `shipment_limit_workspaces`, `addon_points_facility`, `hot_products`, `hot_products_total`, `hot_products_interval`, `hot_companies`, `hot_companies_total`, `hot_companies_interval`, `allowed_users`, `allowed_users_total`, `start_on`, `expire_on`, `is_active`, `modifydate`, `modifytime`, `createtime`, `createdate`) VALUES
(1, 'rajat.divinewebsolution@gmail.com', 'b\'\\xac1k\\x8ad5\\xf4\\x1e\\x8d\\xec\\x15\\x8e\\xbc\\x0eH\\xeav\\xf2\\xad\\xbbgB@\\x1a\\xfe|9\\xd5\\x08\\xd8\\x13\\x07\'', 'Rajat Biala', '91', '7762384212', 'DWS', 'Both', '', 1, 'Free', 7, '0.00', 100, 100, 0, 0, 90, '2021-06-22', 100, 100, 10, 7, '2021-03-31', 1, 1000, 'no', 0, 0, 0, 0, 0, 0, 1, 1, '2021-03-24', '2021-03-31', 1, NULL, NULL, '04:46:21.114421', '2021-03-24');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add companies', 7, 'add_companies'),
(26, 'Can change companies', 7, 'change_companies'),
(27, 'Can delete companies', 7, 'delete_companies'),
(28, 'Can view companies', 7, 'view_companies'),
(29, 'Can add countries', 8, 'add_countries'),
(30, 'Can change countries', 8, 'change_countries'),
(31, 'Can delete countries', 8, 'delete_countries'),
(32, 'Can view countries', 8, 'view_countries'),
(33, 'Can add faqs', 9, 'add_faqs'),
(34, 'Can change faqs', 9, 'change_faqs'),
(35, 'Can delete faqs', 9, 'delete_faqs'),
(36, 'Can view faqs', 9, 'view_faqs'),
(37, 'Can add importexportdata', 10, 'add_importexportdata'),
(38, 'Can change importexportdata', 10, 'change_importexportdata'),
(39, 'Can delete importexportdata', 10, 'delete_importexportdata'),
(40, 'Can view importexportdata', 10, 'view_importexportdata'),
(41, 'Can add packages', 11, 'add_packages'),
(42, 'Can change packages', 11, 'change_packages'),
(43, 'Can delete packages', 11, 'delete_packages'),
(44, 'Can view packages', 11, 'view_packages'),
(45, 'Can add registrations', 12, 'add_registrations'),
(46, 'Can change registrations', 12, 'change_registrations'),
(47, 'Can delete registrations', 12, 'delete_registrations'),
(48, 'Can view registrations', 12, 'view_registrations');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$pXQbvbuSckob$uRpLm5WFU/OaClENwZKbkoO4Wx2KDgmZZPZRs4LJSXQ=', '2021-03-25 04:13:03.617880', 1, 'admin', '', '', 'admin@dalyne.in', 1, 1, '2021-03-24 10:37:18.000594');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'app', 'companies'),
(8, 'app', 'countries'),
(9, 'app', 'faqs'),
(10, 'app', 'importexportdata'),
(11, 'app', 'packages'),
(12, 'app', 'registrations'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-03-23 12:52:57.042570'),
(2, 'auth', '0001_initial', '2021-03-23 12:52:57.308439'),
(3, 'admin', '0001_initial', '2021-03-23 12:52:57.973490'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-03-23 12:52:58.251674'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-03-23 12:52:58.313272'),
(6, 'app', '0001_initial', '2021-03-23 12:52:59.463960'),
(7, 'contenttypes', '0002_remove_content_type_name', '2021-03-23 12:52:59.744983'),
(8, 'auth', '0002_alter_permission_name_max_length', '2021-03-23 12:52:59.865999'),
(9, 'auth', '0003_alter_user_email_max_length', '2021-03-23 12:52:59.940329'),
(10, 'auth', '0004_alter_user_username_opts', '2021-03-23 12:52:59.967951'),
(11, 'auth', '0005_alter_user_last_login_null', '2021-03-23 12:53:00.073694'),
(12, 'auth', '0006_require_contenttypes_0002', '2021-03-23 12:53:00.085387'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2021-03-23 12:53:00.255512'),
(14, 'auth', '0008_alter_user_username_max_length', '2021-03-23 12:53:00.449110'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2021-03-23 12:53:00.655591'),
(16, 'auth', '0010_alter_group_name_max_length', '2021-03-23 12:53:00.764020'),
(17, 'auth', '0011_update_proxy_permissions', '2021-03-23 12:53:00.849422'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2021-03-23 12:53:01.063496'),
(19, 'sessions', '0001_initial', '2021-03-23 12:53:01.155667'),
(20, 'app', '0002_auto_20210324_0554', '2021-03-24 05:55:09.517197'),
(21, 'app', '0003_importexportdata_csv_file', '2021-03-26 09:32:22.418145');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('t4czrezlov1wkrie1b8skmmhtjirn9dd', '.eJxVjMsOwiAUBf-FtSFcUqh16d5vIPcBUjWQlHbV-O9K0k23M3POrmZRN7iogNuaw9biEjpRoE6MkN-xdCEvLM-quZZ1mUn3RB-26UeV-Lkf7ekgY8v_tRls9Ak5SRRyTnjySDgC4OhTcmRoIsPg6UrorE2exDkYJCIzE1j1_QFF0js5:1lPHMl:qyFlXtRfzeMvh8XSYDZsorup31et7xTjeYE7dTveIN8', '2021-04-08 04:13:03.647915');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_companies`
--
ALTER TABLE `app_companies`
  ADD PRIMARY KEY (`companyid`);

--
-- Indexes for table `app_countries`
--
ALTER TABLE `app_countries`
  ADD PRIMARY KEY (`countryid`);

--
-- Indexes for table `app_faqs`
--
ALTER TABLE `app_faqs`
  ADD PRIMARY KEY (`faqid`);

--
-- Indexes for table `app_importexportdata`
--
ALTER TABLE `app_importexportdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_packages`
--
ALTER TABLE `app_packages`
  ADD PRIMARY KEY (`packageid`);

--
-- Indexes for table `app_registrations`
--
ALTER TABLE `app_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_companies`
--
ALTER TABLE `app_companies`
  MODIFY `companyid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_countries`
--
ALTER TABLE `app_countries`
  MODIFY `countryid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_faqs`
--
ALTER TABLE `app_faqs`
  MODIFY `faqid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_importexportdata`
--
ALTER TABLE `app_importexportdata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_packages`
--
ALTER TABLE `app_packages`
  MODIFY `packageid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_registrations`
--
ALTER TABLE `app_registrations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
