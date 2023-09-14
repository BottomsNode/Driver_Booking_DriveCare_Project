-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 06:10 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drivecaredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `approved_drivers`
--

CREATE TABLE `approved_drivers` (
  `id` bigint(20) NOT NULL,
  `adr_fullname` varchar(120) NOT NULL,
  `adr_phone` varchar(12) NOT NULL,
  `adr_email` varchar(500) NOT NULL,
  `adr_state` longtext NOT NULL,
  `adr_city` longtext NOT NULL,
  `adr_vtype` longtext NOT NULL,
  `adr_vname` longtext NOT NULL,
  `adr_gender` varchar(10) NOT NULL,
  `adr_driving_licence_front` varchar(100) DEFAULT NULL,
  `adr_driving_licence_back` varchar(100) DEFAULT NULL,
  `adr_aadharcard_front` varchar(100) DEFAULT NULL,
  `adr_aadharcard_back` varchar(100) DEFAULT NULL,
  `adr_pancard_front` varchar(100) DEFAULT NULL,
  `adr_pancard_back` varchar(100) DEFAULT NULL,
  `adr_driver_profile` varchar(100) DEFAULT NULL,
  `adr_pwd` varchar(150) NOT NULL,
  `adr_cpwd` varchar(150) NOT NULL,
  `adr_price` decimal(7,2) NOT NULL,
  `adr_status` tinyint(1) NOT NULL,
  `adr_trending` tinyint(1) NOT NULL,
  `adr_available` varchar(12) NOT NULL,
  `adr_tag` varchar(150) NOT NULL,
  `adr_created_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `last_login` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approved_drivers`
--

INSERT INTO `approved_drivers` (`id`, `adr_fullname`, `adr_phone`, `adr_email`, `adr_state`, `adr_city`, `adr_vtype`, `adr_vname`, `adr_gender`, `adr_driving_licence_front`, `adr_driving_licence_back`, `adr_aadharcard_front`, `adr_aadharcard_back`, `adr_pancard_front`, `adr_pancard_back`, `adr_driver_profile`, `adr_pwd`, `adr_cpwd`, `adr_price`, `adr_status`, `adr_trending`, `adr_available`, `adr_tag`, `adr_created_at`, `category_id`, `last_login`) VALUES
(3, 'Samir Bhat', '7845689562', '20bcuos021@ddu.ac.in', 'Gujarat', 'Nadiad', 'Manual-Petrol', 'Sports Car', 'Male', 'driver_uploads/20230328145737DL_F.jpg', 'driver_uploads/20230328145737DL_B.jpg', 'driver_uploads/20230328145737Pan_F.jpg', 'driver_uploads/20230328145737Pan_B.png', 'driver_uploads/20230328145737aadhaar_F.png', 'driver_uploads/20230328145737aadhaar_B.jpg', 'driver_uploads/20230328145737Nishit.jpg', 'samir', 'samir', '850.00', 0, 1, 'Available', 'New', '2023-03-28 09:28:35.362849', 1, '2023-04-02 16:36:06.959170'),
(4, 'Erika Jenkins', '918564742562', 'erika@gmail.com', 'Gujarat', 'Nadiad', 'ALL', 'Truck', 'Female', 'driver_uploads/20230328223700DL_F.jpg', 'driver_uploads/20230328223700DL_B.jpg', 'driver_uploads/20230328223700aadhaar_F.png', 'driver_uploads/20230328223700aadhaar_B.jpg', 'driver_uploads/20230328223700Pan_F.jpg', 'driver_uploads/20230328223700Pan_B.png', 'driver_uploads/20230328223700photo-1544005313-94ddf0286df2.jfif', 'Erika', 'Erika', '950.00', 0, 0, 'Available', 'New', '2023-03-28 17:08:58.828334', 1, '2023-04-02 16:27:41.853238'),
(5, 'Alma Gardner', '917545656568', 'alma@gmail.com', 'Gujarat', 'Baroda', 'Manual-Petrol', 'Sedan', 'Female', 'driver_uploads/20230328223048DL_F.jpg', 'driver_uploads/20230328223048DL_B.jpg', 'driver_uploads/20230328223048aadhaar_F.png', 'driver_uploads/20230328223048aadhaar_B.jpg', 'driver_uploads/20230328223048Pan_F.jpg', 'driver_uploads/20230328223048Pan_B.png', 'driver_uploads/202303282230481.png', 'Alma', 'Alma', '1500.00', 0, 1, 'Available', 'New', '2023-03-28 17:09:05.416395', 7, '2023-04-02 16:27:41.853238'),
(6, 'Ada Freeman', '918547565422', 'adafreeman@gmail.com', 'Gujarat', 'Rajkot', 'Manual-Diesel', 'SUV', 'Male', 'driver_uploads/20230328222829DL_F.jpg', 'driver_uploads/20230328222829DL_B.jpg', 'driver_uploads/20230328222829aadhaar_F.png', 'driver_uploads/20230328222829aadhaar_B.jpg', 'driver_uploads/20230328222829Pan_F.jpg', 'driver_uploads/20230328222829Pan_B.png', 'driver_uploads/20230328222829default_avatar.png', 'Ada', 'Ada', '2100.00', 0, 0, 'Available', 'New', '2023-03-28 17:09:11.858295', 6, '2023-04-02 16:27:41.853238'),
(7, 'Caoimhe Cortez', '918745445652', 'caoimhe@gmail.com', 'Gujarat', 'Mehmdavad', 'Manual-Diesel', 'Coupe', 'Female', 'driver_uploads/20230328222656DL_F.jpg', 'driver_uploads/20230328222656DL_B.jpg', 'driver_uploads/20230328222656aadhaar_F.png', 'driver_uploads/20230328222656aadhaar_B.jpg', 'driver_uploads/20230328222656Pan_F.jpg', 'driver_uploads/20230328222656Pan_B.png', 'driver_uploads/20230328222656profile.jpeg', 'Caoimhe', 'Caoimhe', '500.00', 0, 1, 'Unavailable', 'New', '2023-03-28 17:09:18.440632', 5, '2023-04-02 16:27:41.853238'),
(8, 'Sahil Shah', '916857451525', 'sahil@gmail.com', 'Gujarat', 'Vasad', 'ALL', 'Crossover', 'Male', 'driver_uploads/20230328222443DL_F.jpg', 'driver_uploads/20230328222443DL_B.jpg', 'driver_uploads/20230328222443aadhaar_F.png', 'driver_uploads/20230328222443aadhaar_B.jpg', 'driver_uploads/20230328222443Pan_F.jpg', 'driver_uploads/20230328222443Pan_B.png', 'driver_uploads/20230328222443profile10.jpeg', 'Sahil', 'Sahil', '1200.00', 0, 0, 'Available', 'New', '2023-03-28 17:09:25.042051', 4, '2023-04-02 16:27:41.853238'),
(9, 'Krunal Bhatt', '8745685956', 'krunal@gmail.com', 'Gujarat', 'Nadiad', 'Manual-CNG', 'Minivan', 'Male', 'driver_uploads/20230328222244DL_F.jpg', 'driver_uploads/20230328222244DL_B.jpg', 'driver_uploads/20230328222244aadhaar_F.png', 'driver_uploads/20230328222244aadhaar_B.jpg', 'driver_uploads/20230328222244Pan_F.jpg', 'driver_uploads/20230328222244Pan_B.png', 'driver_uploads/20230328222244tanmayprofile.jpg', 'Krunal', 'Krunal', '2500.00', 0, 1, 'Available', 'New', '2023-03-28 17:09:33.066783', 3, '2023-04-02 16:27:41.853238'),
(10, 'Abc Xyz', '918056264586', 'abc@gmail.com', 'Gujarat', 'Kheda', 'Automatic', 'Sedan', 'Male', 'driver_uploads/20230328222107DL_F.jpg', 'driver_uploads/20230328222107DL_B.jpg', 'driver_uploads/20230328222107aadhaar_F.png', 'driver_uploads/20230328222107aadhaar_B.jpg', 'driver_uploads/20230328222107Pan_F.jpg', 'driver_uploads/20230328222107Pan_B.png', 'driver_uploads/20230328222107default_avatar.png', 'Abc Xyz', 'Abc Xyz', '3000.00', 0, 0, 'Unavailable', 'New', '2023-03-28 17:09:39.709225', 2, '2023-04-02 16:27:41.853238'),
(11, 'Munna Tripathi', '7854985685', '20bcuos020@ddu.ac.in', 'Gujarat', 'Kheda', 'Manual-CNG', 'Minivan', 'Male', 'approved_driver_uploads/20230402182141DL_F.jpg', 'approved_driver_uploads/20230402182141DL_B.jpg', 'approved_driver_uploads/20230402182141aadhaar_F.png', 'approved_driver_uploads/20230402182141aadhaar_B.jpg', 'approved_driver_uploads/20230402182141Pan_F.jpg', 'approved_driver_uploads/20230402182141Pan_B.png', 'approved_driver_uploads/20230402182141albert-dera-ILip77SbmOE-unsplash.jpg', 'Munna', 'Munna', '950.00', 0, 1, 'Available', 'New', '2023-04-02 12:47:26.955979', 6, '2023-04-02 16:35:56.884597'),
(12, 'Vraj Patel', '784634414354', '20bcuos019@ddu.ac.in', 'Gujarat', 'Kheda', 'Manual-Diesel', 'SUV', 'Male', 'driver_uploads/20230402220230DL_F.jpg', 'driver_uploads/20230402220230DL_B.jpg', 'driver_uploads/20230402220230aadhaar_F.png', 'driver_uploads/20230402220230aadhaar_B.jpg', 'driver_uploads/20230402220230Pan_F.jpg', 'driver_uploads/20230402220230Pan_B.png', 'driver_uploads/20230402220230philip-martin-5aGUyCW_PJw-unsplash.jpg', 'pbkdf2_sha256$390000$RscXnt0Rmq8ChnSIusY4hA$wB29IuhYAZ9qU1HuaUXu8AKz/FqYKOURHtJiZEa6xYU=', 'Vraj', '0.00', 0, 0, '', '', '2023-04-02 16:32:59.746691', 4, '2023-04-02 17:02:29.947051');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add approved driver', 7, 'add_approveddriver'),
(26, 'Can change approved driver', 7, 'change_approveddriver'),
(27, 'Can delete approved driver', 7, 'delete_approveddriver'),
(28, 'Can view approved driver', 7, 'view_approveddriver'),
(29, 'Can add driver_ category', 8, 'add_driver_category'),
(30, 'Can change driver_ category', 8, 'change_driver_category'),
(31, 'Can delete driver_ category', 8, 'delete_driver_category'),
(32, 'Can view driver_ category', 8, 'view_driver_category'),
(33, 'Can add driver_ registration', 9, 'add_driver_registration'),
(34, 'Can change driver_ registration', 9, 'change_driver_registration'),
(35, 'Can delete driver_ registration', 9, 'delete_driver_registration'),
(36, 'Can view driver_ registration', 9, 'view_driver_registration'),
(37, 'Can add booking', 10, 'add_booking'),
(38, 'Can change booking', 10, 'change_booking'),
(39, 'Can delete booking', 10, 'delete_booking'),
(40, 'Can view booking', 10, 'view_booking'),
(53, 'Can add driver_ booking_ entry_ model', 14, 'add_driver_booking_entry_model'),
(54, 'Can change driver_ booking_ entry_ model', 14, 'change_driver_booking_entry_model'),
(55, 'Can delete driver_ booking_ entry_ model', 14, 'delete_driver_booking_entry_model'),
(56, 'Can view driver_ booking_ entry_ model', 14, 'view_driver_booking_entry_model'),
(57, 'Can add extends_ user_ register_ table', 15, 'add_extends_user_register_table'),
(58, 'Can change extends_ user_ register_ table', 15, 'change_extends_user_register_table'),
(59, 'Can delete extends_ user_ register_ table', 15, 'delete_extends_user_register_table'),
(60, 'Can view extends_ user_ register_ table', 15, 'view_extends_user_register_table');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$b1xZKhGOSlRHDBBowekG8Y$oyDb80ZSkZ/hMqAI1lOD1l1sWmDH//6irzty5NPLKF4=', '2023-04-02 16:34:59.231472', 1, 'admin', 'admin', 'admin', 'nishitshivdasani123@gmail.com', 1, 1, '2023-03-24 08:43:41.133506'),
(2, 'pbkdf2_sha256$390000$hMuZw0omRZu7fohDRMScki$4JraZvPrOHrc8bcv7EP/osODXshN9AsbKLCqKb7aD0o=', '2023-04-01 17:30:10.390834', 0, 'nishit_shiv', 'Nishit', 'Shivdasani', 'nishitshiv2001@gmail.com', 0, 1, '2023-03-24 10:09:35.000000'),
(3, 'pbkdf2_sha256$390000$FPUtYBKlAoM9G9CwY6l32M$7Hd1o4w64YEGC8YNSzzqjZGuRQnHTCdTQwtGrO06/MM=', NULL, 0, 'tanmay_shah', 'Tam', 'Shah', 'shahtanmay608@gmail.com', 0, 1, '2023-03-24 10:13:09.790810'),
(5, 'pbkdf2_sha256$390000$gIpwoYCwnk8p04IsybuxKJ$WKPAmD9AARoufdp8hZTZuLu01qDXCSo3gjyFefp8PnA=', '2023-03-24 10:40:55.715360', 0, '20bcuos063', 'Tanmay', 'Shah', '20bcuos063@ddu.ac.in', 0, 1, '2023-03-24 10:36:06.379276'),
(7, 'pbkdf2_sha256$390000$lKIeahWTBfOjxs4XE6YxnA$IEmI79WuL5GtSyRcOvge8OO7SaXnf0KozYs5jLbjfug=', '2023-03-29 09:54:30.461959', 0, 'Himani', 'Himani', 'Sharma', '21bcuos057@ddu.ac.in', 0, 1, '2023-03-28 16:46:03.434203'),
(8, 'pbkdf2_sha256$390000$IAuGNq0B5jgsJvMH7CoPZ2$mSwaS+O5DsX0wE0xnsGl6LVp6CNk+HSeL+ah60wyoMg=', '2023-03-29 18:23:08.711238', 0, 'sweta123', 'Sweta', 'Shivdasani', '20bcuos019@ddu.ac.in', 0, 1, '2023-03-29 18:21:24.171530');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_extends_user_register_table`
--

CREATE TABLE `customer_extends_user_register_table` (
  `id` bigint(20) NOT NULL,
  `contact_number` varchar(10) NOT NULL,
  `user_profile_pic` varchar(100) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `added_on` datetime(6) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_extends_user_register_table`
--

INSERT INTO `customer_extends_user_register_table` (`id`, `contact_number`, `user_profile_pic`, `age`, `city`, `gender`, `added_on`, `updated_on`, `user_id`) VALUES
(1, '7283827254', 'customer_uploads/20230329204534vince-fleming-j3lf-Jn6deo-unsplash.jpg', '23', 'Nadiad', 'Male', '2023-03-29 15:15:34.043215', '2023-03-29 15:25:14.433715', 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(5, '2023-03-29 15:15:34.051211', '1', 'nishit_shiv', 1, '[{\"added\": {}}]', 15, 1),
(6, '2023-03-29 15:24:49.678685', '1', 'nishit_shiv', 2, '[{\"changed\": {\"fields\": [\"Age\"]}}]', 15, 1),
(7, '2023-03-29 15:25:14.441712', '1', 'nishit_shiv', 2, '[{\"changed\": {\"fields\": [\"Age\"]}}]', 15, 1),
(8, '2023-03-30 13:10:17.584818', '9', 'Munna Tripathi', 1, '[{\"added\": {}}]', 9, 1),
(9, '2023-04-02 12:51:41.293799', '11', 'Munna Tripathi', 2, '[{\"changed\": {\"fields\": [\"Adr driving licence front\", \"Adr driving licence back\", \"Adr aadharcard front\", \"Adr aadharcard back\", \"Adr pancard front\", \"Adr pancard back\", \"Adr driver profile\"]}}]', 7, 1),
(10, '2023-04-02 16:35:56.887597', '11', 'Munna Tripathi', 2, '[{\"changed\": {\"fields\": [\"Adr email\"]}}]', 7, 1),
(11, '2023-04-02 16:36:06.962718', '3', 'Samir Bhat', 2, '[{\"changed\": {\"fields\": [\"Adr email\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'Customer', 'approveddriver'),
(10, 'Customer', 'booking'),
(14, 'Customer', 'driver_booking_entry_model'),
(8, 'Customer', 'driver_category'),
(9, 'Customer', 'driver_registration'),
(15, 'Customer', 'extends_user_register_table'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Customer', '0001_initial', '2023-03-28 09:23:27.630601'),
(2, 'contenttypes', '0001_initial', '2023-03-28 09:23:27.654020'),
(3, 'auth', '0001_initial', '2023-03-28 09:23:27.895984'),
(4, 'admin', '0001_initial', '2023-03-28 09:23:27.959915'),
(5, 'admin', '0002_logentry_remove_auto_add', '2023-03-28 09:23:27.968930'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-28 09:23:27.975915'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-03-28 09:23:28.013736'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-03-28 09:23:28.047213'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-03-28 09:23:28.060206'),
(10, 'auth', '0004_alter_user_username_opts', '2023-03-28 09:23:28.067204'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-03-28 09:23:28.091232'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-03-28 09:23:28.094232'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-03-28 09:23:28.101229'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-03-28 09:23:28.114532'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-03-28 09:23:28.126538'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-03-28 09:23:28.138670'),
(17, 'auth', '0011_update_proxy_permissions', '2023-03-28 09:23:28.149666'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-03-28 09:23:28.175670'),
(19, 'sessions', '0001_initial', '2023-03-28 09:23:28.198666'),
(28, 'Customer', '0002_alter_booking_drop_address_and_more', '2023-03-29 06:54:24.047422'),
(29, 'Customer', '0003_extends_user_register_table', '2023-03-29 15:07:00.578021'),
(30, 'Customer', '0002_alter_driver_booking_entry_model_customer_phone_and_more', '2023-03-29 15:15:20.554950'),
(31, 'Customer', '0003_alter_extends_user_register_table_gender', '2023-03-29 15:22:28.303391'),
(32, 'Customer', '0002_approveddriver_last_login_and_more', '2023-04-02 16:27:41.886775'),
(33, 'Customer', '0003_alter_driver_registration_dr_cpwd_and_more', '2023-04-02 16:32:23.858668'),
(34, 'Customer', '0004_alter_approveddriver_adr_email_and_more', '2023-04-02 16:39:56.056740');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4p158t4wzwglyn9nai453w9kbyqpbri6', '.eJxVjMsOgjAQRf-la9N0prWAS_d8A5lHsagpCYWV8d-VhIVu7znnvsxA25qHraZlmNRcDJrT78Ykj1R2oHcqt9nKXNZlYrsr9qDV9rOm5_Vw_w4y1fytm2ZUHxx7PHOMY1AHTAjgwggNdeCQQxtd8JIwkngEQfFOlLsEqK15fwDE_TdC:1phXzw:pPgumWtGFOi3ZGPL8dBduuB9aO1zbx2LTAIP5QDJrXQ', '2023-04-12 15:46:04.376753'),
('xrahkkmx6icxjss5huccs39fpgw13izf', '.eJxVjMsOgjAQRf-la9N0prWAS_d8A5lHsagpCYWV8d-VhIVu7znnvsxA25qHraZlmNRcDJrT78Ykj1R2oHcqt9nKXNZlYrsr9qDV9rOm5_Vw_w4y1fytm2ZUHxx7PHOMY1AHTAjgwggNdeCQQxtd8JIwkngEQfFOlLsEqK15fwDE_TdC:1pgpYE:PmUf6mNzz8AaP8DUKC2LWfOWeldyVwfuB_ImI1AnG3Y', '2023-04-10 16:18:30.310454');

-- --------------------------------------------------------

--
-- Table structure for table `driver_booking_entry`
--

CREATE TABLE `driver_booking_entry` (
  `id` bigint(20) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_phone` varchar(10) NOT NULL,
  `pickup_address` longtext NOT NULL,
  `drop_address` longtext NOT NULL,
  `pickup_time` time(6) NOT NULL,
  `pickup_date` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `driver_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver_booking_entry`
--

INSERT INTO `driver_booking_entry` (`id`, `customer_name`, `customer_phone`, `pickup_address`, `drop_address`, `pickup_time`, `pickup_date`, `created_at`, `driver_id`, `user_id`) VALUES
(1, 'Maulik Sharma', '7856854572', 'Surat', 'Nadiad', '15:40:00.000000', '2023-03-30', '2023-03-29 07:08:59.308273', 8, 2),
(2, 'Apurva Sir', '7258956542', 'Kheda', 'Anand', '21:30:00.000000', '2023-03-31', '2023-03-29 09:53:15.253433', 8, 2),
(3, 'Nishit Shivdasani', '7283827254', 'Anand', 'Surat', '09:40:00.000000', '2023-04-03', '2023-03-29 09:56:15.329560', 9, 7),
(4, 'Mahesh Rameshbhai Patel', '7584561235', 'Surat', 'Kheda', '03:54:00.000000', '2023-04-02', '2023-03-29 18:24:02.602853', 5, 8),
(5, 'Umeshbhai Wadhwani', '7458695632', 'Nadiad', 'Anana', '09:30:00.000000', '2023-03-31', '2023-03-30 11:55:30.740424', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `driver_category`
--

CREATE TABLE `driver_category` (
  `id` bigint(20) NOT NULL,
  `cat_slug` varchar(150) NOT NULL,
  `cat_image` varchar(100) NOT NULL,
  `cat_name` varchar(150) NOT NULL,
  `cat_status` tinyint(1) NOT NULL,
  `cat_created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver_category`
--

INSERT INTO `driver_category` (`id`, `cat_slug`, `cat_image`, `cat_name`, `cat_status`, `cat_created_at`) VALUES
(1, 'driver', 'drivercategory_image/20230315113348Driver.png', 'Car Driver', 0, '2023-03-15 06:03:48.353037'),
(2, 'captain', 'drivercategory_image/captain.png', 'Captain', 0, '2023-03-15 07:07:37.453160'),
(3, 'chauffeur', 'drivercategory_image/Chauffeur.png', 'Chauffeur', 0, '2023-03-15 07:08:01.296572'),
(4, 'valet', 'drivercategory_image/valet.png', 'Valet', 0, '2023-03-15 07:08:14.734831'),
(5, 'school', 'drivercategory_image/school.png', 'School Bus Driver', 0, '2023-03-15 07:08:32.268243'),
(6, 'truck', 'drivercategory_image/truckdriver.jpeg', 'Truck Driver', 0, '2023-03-15 07:08:49.574314'),
(7, 'taxi', 'drivercategory_image/20230315124140taxicab.jpg', 'Taxicab Driver', 0, '2023-03-15 07:11:40.991282');

-- --------------------------------------------------------

--
-- Table structure for table `driver_registration`
--

CREATE TABLE `driver_registration` (
  `id` bigint(20) NOT NULL,
  `dr_fullname` varchar(120) NOT NULL,
  `dr_phone` varchar(12) NOT NULL,
  `dr_email` varchar(500) NOT NULL,
  `dr_state` longtext NOT NULL,
  `dr_city` longtext NOT NULL,
  `dr_vtype` longtext NOT NULL,
  `dr_vname` longtext NOT NULL,
  `dr_gender` varchar(10) NOT NULL,
  `dr_driving_licence_front` varchar(100) DEFAULT NULL,
  `dr_driving_licence_back` varchar(100) DEFAULT NULL,
  `dr_aadharcard_front` varchar(100) DEFAULT NULL,
  `dr_aadharcard_back` varchar(100) DEFAULT NULL,
  `dr_pancard_front` varchar(100) DEFAULT NULL,
  `dr_pancard_back` varchar(100) DEFAULT NULL,
  `dr_driver_profile` varchar(100) DEFAULT NULL,
  `dr_pwd` varchar(150) NOT NULL,
  `dr_cpwd` varchar(150) NOT NULL,
  `dr_price` decimal(7,2) NOT NULL,
  `dr_status` tinyint(1) NOT NULL,
  `dr_trending` tinyint(1) NOT NULL,
  `dr_available` varchar(12) NOT NULL,
  `dr_tag` varchar(150) NOT NULL,
  `dr_created_at` datetime(6) NOT NULL,
  `dr_approved` tinyint(1) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approved_drivers`
--
ALTER TABLE `approved_drivers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `approved_drivers_adr_email_206abee6_uniq` (`adr_email`),
  ADD KEY `approved_drivers_category_id_f5094bf5_fk_Driver_Category_id` (`category_id`);

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
-- Indexes for table `customer_extends_user_register_table`
--
ALTER TABLE `customer_extends_user_register_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
-- Indexes for table `driver_booking_entry`
--
ALTER TABLE `driver_booking_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Driver_Booking_Entry_driver_id_8572ec9f_fk_approved_drivers_id` (`driver_id`),
  ADD KEY `Driver_Booking_Entry_user_id_1668ff92_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `driver_category`
--
ALTER TABLE `driver_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_registration`
--
ALTER TABLE `driver_registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `driver_registration_dr_email_923e12c0_uniq` (`dr_email`),
  ADD KEY `driver_registration_category_id_3e5cdba6_fk_Driver_Category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approved_drivers`
--
ALTER TABLE `approved_drivers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_extends_user_register_table`
--
ALTER TABLE `customer_extends_user_register_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `driver_booking_entry`
--
ALTER TABLE `driver_booking_entry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `driver_category`
--
ALTER TABLE `driver_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `driver_registration`
--
ALTER TABLE `driver_registration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `approved_drivers`
--
ALTER TABLE `approved_drivers`
  ADD CONSTRAINT `approved_drivers_category_id_f5094bf5_fk_Driver_Category_id` FOREIGN KEY (`category_id`) REFERENCES `driver_category` (`id`);

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
-- Constraints for table `customer_extends_user_register_table`
--
ALTER TABLE `customer_extends_user_register_table`
  ADD CONSTRAINT `Customer_extends_use_user_id_4ecceeb2_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `driver_booking_entry`
--
ALTER TABLE `driver_booking_entry`
  ADD CONSTRAINT `Driver_Booking_Entry_driver_id_8572ec9f_fk_approved_drivers_id` FOREIGN KEY (`driver_id`) REFERENCES `approved_drivers` (`id`),
  ADD CONSTRAINT `Driver_Booking_Entry_user_id_1668ff92_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `driver_registration`
--
ALTER TABLE `driver_registration`
  ADD CONSTRAINT `driver_registration_category_id_3e5cdba6_fk_Driver_Category_id` FOREIGN KEY (`category_id`) REFERENCES `driver_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
