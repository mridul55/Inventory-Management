-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 22, 2023 at 05:14 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

DROP TABLE IF EXISTS `abouts`;
CREATE TABLE IF NOT EXISTS `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `long_description` text COLLATE utf8mb4_unicode_ci,
  `about_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `short_title`, `short_description`, `long_description`, `about_image`, `created_at`, `updated_at`) VALUES
(1, 'I have transform your ideas into remarkable digital products', '20+ Years Experience In this game, Means Product Designing', 'I love to work in User Experience & User Interface designing. Because I love to solve the design problem and find easy and better solutions to solve it. I always try my best to make good user interface with the best user experience. I have been working as a UX Designer', '<p class=\"desc\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated lorem ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<ul class=\"about__exp__list\">\r\n<li>\r\n<h5 class=\"title\">User experience design - (Product Design)</h5>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to unseery.</p>\r\n</li>\r\n<li>\r\n<h5 class=\"title\">Web and user interface design - Development</h5>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of lorem ipsum.</p>\r\n</li>\r\n<li>\r\n<h5 class=\"title\">Interaction design - Animation</h5>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable.</p>\r\n</li>\r\n</ul>', 'upload/about_image/1757085351210792.png', NULL, '2023-02-06 06:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `blog_category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_category_id`, `blog_title`, `blog_image`, `blog_tags`, `blog_description`, `created_at`, `updated_at`) VALUES
(1, '5', 'Best website traffics Booster with great tools.', 'upload/blog_image/1757258569088020.png', 'php,js,javacript,boostrap', '<p>Best website traffics Booster with great tools.</p>', '2023-02-08 04:32:44', '2023-02-08 08:39:37'),
(5, '4', 'Nature of Business Strategy', 'upload/blog_image/1757326691950398.jpg', 'html,css', '<p>A business strategy is a combination of proactive actions on the part of management, for the purpose of enhancing the company&rsquo;s market position and overall performance and reactions to unexpected developments and new market.</p>\r\n<p>The maximum part of the company&rsquo;s present strategy is a result of formerly initiated actions and business approaches, but when market conditions take an unanticipated turn, the company requires a strategic reaction to cope with contingencies. Hence, for unforeseen development, a part of the business strategy is formulated as a reasoned response nature of business strategy.</p>', '2023-02-08 22:35:31', NULL),
(6, '6', 'How you should start product design', 'upload/blog_image/1757326840628260.jpg', 'laravel,php', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable</p>', '2023-02-08 22:37:53', NULL),
(4, '3', 'Best website traffics Booster with great tools.', 'upload/blog_image/1757326548682702.jpg', 'php,js,css', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable</p>\r\n<p>Definition Business strategy can be understood as the course of action or set of decisions which assist the entrepreneurs in achieving specific business objectives.</p>\r\n<p>It is nothing but a master plan that the management of a company implements to secure a competitive position in the market, carry on its operations, please customers and achieve the desired ends of the business.</p>\r\n<p>In business, it is the long-range sketch of the desired image, direction and destination of the organization. It is a scheme of corporate intent and action, which is carefully planned and flexibly designed with the purpose of</p>\r\n<ul class=\"services__details__list\">\r\n<li>Achieving effectiveness,</li>\r\n<li>Perceiving and utilizing opportunities,</li>\r\n<li>Mobilising resources,</li>\r\n<li>Securing an advantageous position,</li>\r\n<li>Meeting challenges and threats,</li>\r\n<li>Directing efforts and behaviour and</li>\r\n<li>Gaining command over the situation.</li>\r\n</ul>\r\n<p>A business strategy is a set of competitive moves and actions that a business uses to attract customers, compete successfully, strengthening performance, and achieve organizational goals. It outlines how business should be carried out to reach the desired ends</p>', '2023-02-08 22:33:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `blog_category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `blog_category`, `created_at`, `updated_at`) VALUES
(6, 'Vuejs', '2023-02-08 04:16:07', NULL),
(2, 'Test', '2023-02-07 22:33:41', NULL),
(3, 'Laravel', '2023-02-07 22:41:47', NULL),
(4, 'Facebook', '2023-02-07 22:41:58', NULL),
(5, 'Reacat', '2023-02-07 22:42:10', '2023-02-07 23:11:20'),
(9, 'Test', '2023-02-10 09:40:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(7, 'Smart Phone', 1, 4, NULL, '2023-02-12 06:27:55', NULL),
(5, 'Cement', 1, 4, NULL, '2023-02-12 06:27:30', NULL),
(6, 'LED TV', 1, 4, NULL, '2023-02-12 06:27:41', NULL),
(8, 'Steel', 1, 4, NULL, '2023-02-12 06:28:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(3, 'Md. Minhajul Abedin', 'morshalin12@gmail.com', 'asdgae rtga', '+8801770815965', 'asdfa', '2023-02-09 05:26:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `customer_image`, `mobile_no`, `email`, `address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(5, 'Md. Sahed ALI', 'upload/customer_image/1757623220689622.jpg', '01722445566', 'sahed@gmail.com', 'Mirpur,Dhaka', 1, 4, NULL, '2023-02-12 05:08:43', NULL),
(6, 'Ariyan Khan', 'upload/customer_image/1757623276207293.jpg', '01722445566', 'ariyan@gmail.com', 'ariyan@gmail.com', 1, 4, NULL, '2023-02-12 05:09:36', NULL),
(7, 'Md. Liton', 'upload/customer_image/1757628078707497.jpg', '01722445566', 'liton@gmail.com', 'Mirpur,Dhaka', 1, 4, NULL, '2023-02-12 06:25:56', NULL),
(8, 'jony', NULL, '01722445566', 'jony@gmail.com', NULL, 1, NULL, NULL, '2023-02-14 06:11:49', '2023-02-14 06:11:49'),
(9, 'jony', NULL, '01722445566', 'jony@gmail.com', NULL, 1, NULL, NULL, '2023-02-14 06:12:18', '2023-02-14 06:12:18'),
(10, 'ghasan', NULL, '01722445566', 'hasan@gmail.com', NULL, 1, NULL, NULL, '2023-02-14 06:17:57', '2023-02-14 06:17:57'),
(11, 'naim', NULL, '01722445566', 'naim@gmil.com', NULL, 1, NULL, NULL, '2023-02-14 06:23:09', '2023-02-14 06:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

DROP TABLE IF EXISTS `footers`;
CREATE TABLE IF NOT EXISTS `footers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `number`, `short_description`, `address`, `email`, `facebook`, `twitter`, `copyright`, `created_at`, `updated_at`) VALUES
(1, '+81383 766 284', 'There are many variations of passages of lorem ipsum available but the majority have suffered alteration in some form is also here.', 'Rajshahi, Bangladesh', 'raj.123@gmail.com', 'https://www.facebook.com/', 'https://www.twitter.com/', 'Copyright @ Online Page 2023 All right Reserved', NULL, '2023-02-09 04:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `home_slides`
--

DROP TABLE IF EXISTS `home_slides`;
CREATE TABLE IF NOT EXISTS `home_slides` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_slide` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_slides`
--

INSERT INTO `home_slides` (`id`, `title`, `short_title`, `home_slide`, `video_url`, `created_at`, `updated_at`) VALUES
(1, 'I will give you Best Product in the shortest time.', 'I\'m a Rasalina based product design & visual designer focused on crafting clean & user‑friendly experiences', 'upload/home_slide/1756983925876294.png', 'https://www.youtube.com/watch?v=spvPvXXu36A', NULL, '2023-02-05 03:47:24');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
CREATE TABLE IF NOT EXISTS `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `invoice_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=Pending, 1=Approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_no`, `date`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(13, '2', '2023-02-25', 'Bla bla bla', 1, 4, 4, '2023-02-25 07:41:38', '2023-02-25 07:43:04'),
(4, '1', '2023-02-14', 'new test', 1, 4, 4, '2023-02-14 06:23:09', '2023-02-22 09:07:51'),
(14, '3', '2023-02-25', 'kalshfljksnf', 1, 4, 4, '2023-02-25 08:18:40', '2023-02-25 08:23:00'),
(16, '4', '2023-02-25', 'wedfwaf', 1, 4, 4, '2023-02-25 08:26:50', '2023-02-25 08:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

DROP TABLE IF EXISTS `invoice_details`;
CREATE TABLE IF NOT EXISTS `invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `selling_qty` double DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `date`, `invoice_id`, `category_id`, `product_id`, `selling_qty`, `unit_price`, `selling_price`, `status`, `created_at`, `updated_at`) VALUES
(1, '1970-01-01', 1, 7, 10, 1, 500, 500, 1, '2023-02-14 06:11:49', '2023-02-14 06:11:49'),
(2, '1970-01-01', 1, 8, 5, 3, 400, 1200, 1, '2023-02-14 06:11:49', '2023-02-14 06:11:49'),
(3, '1970-01-01', 2, 7, 10, 1, 500, 500, 1, '2023-02-14 06:12:18', '2023-02-14 06:12:18'),
(4, '1970-01-01', 2, 8, 5, 3, 400, 1200, 1, '2023-02-14 06:12:18', '2023-02-14 06:12:18'),
(5, '1970-01-01', 3, 8, 5, 2, 500, 1000, 1, '2023-02-14 06:17:57', '2023-02-14 06:17:57'),
(6, '1970-01-01', 4, 7, 10, 2, 500, 1000, 1, '2023-02-14 06:23:09', '2023-02-14 06:23:09'),
(7, '1970-01-01', 5, 8, 5, 2, 500, 1000, 1, '2023-02-21 05:12:42', '2023-02-21 05:12:42'),
(8, '1970-01-01', 6, 8, 5, 2, 500, 1000, 1, '2023-02-21 05:13:15', '2023-02-21 05:13:15'),
(9, '1970-01-01', 7, 8, 5, 2, 500, 1000, 1, '2023-02-21 05:16:12', '2023-02-21 05:16:12'),
(10, '1970-01-01', 8, 8, 5, 2, 500, 1000, 1, '2023-02-21 05:16:38', '2023-02-21 05:16:38'),
(11, '1970-01-01', 9, 7, 11, 2, 200, 400, 1, '2023-02-21 21:54:30', '2023-02-21 21:54:30'),
(12, '1970-01-01', 10, 7, 11, 2, 200, 400, 1, '2023-02-21 21:55:57', '2023-02-21 21:55:57'),
(16, '1970-01-01', 14, 5, 12, 2, 200, 400, 1, '2023-02-25 08:18:40', '2023-02-25 08:23:00'),
(18, '1970-01-01', 16, 8, 4, 1, 400, 400, 1, '2023-02-25 08:26:50', '2023-02-25 08:27:09'),
(15, '1970-01-01', 13, 5, 12, 5, 200, 1000, 1, '2023-02-25 07:41:38', '2023-02-25 07:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payments`
--

DROP TABLE IF EXISTS `invoice_payments`;
CREATE TABLE IF NOT EXISTS `invoice_payments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `paid_status` varchar(51) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_payments`
--

INSERT INTO `invoice_payments` (`id`, `invoice_id`, `customer_id`, `paid_status`, `paid_amount`, `due_amount`, `total_amount`, `discount_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 'partial_paid', 500, 1000, 1500, 200, '2023-02-14 06:11:49', '2023-02-14 06:11:49'),
(2, 2, 9, 'partial_paid', 500, 1000, 1500, 200, '2023-02-14 06:12:18', '2023-02-14 06:12:18'),
(3, 3, 10, 'partial_paid', 500, 500, 1000, NULL, '2023-02-14 06:17:57', '2023-02-14 06:17:57'),
(4, 4, 11, 'partial_paid', 500, 500, 1000, NULL, '2023-02-14 06:23:09', '2023-02-14 06:23:09'),
(5, 8, NULL, 'full_paid', 800, 0, 800, 200, '2023-02-21 05:16:38', '2023-02-21 05:16:38'),
(6, 13, 9, 'full_paid', 900, 0, 900, 100, '2023-02-25 07:41:38', '2023-02-25 07:41:38'),
(7, 14, 6, 'full_paid', 400, 0, 400, NULL, '2023-02-25 08:18:40', '2023-02-25 08:18:40'),
(9, 16, 8, 'full_paid', 300, 0, 300, 100, '2023-02-25 08:26:50', '2023-02-25 08:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payment_details`
--

DROP TABLE IF EXISTS `invoice_payment_details`;
CREATE TABLE IF NOT EXISTS `invoice_payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) DEFAULT NULL,
  `current_paid_amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_payment_details`
--

INSERT INTO `invoice_payment_details` (`id`, `invoice_id`, `current_paid_amount`, `date`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 500, '2023-02-14', NULL, '2023-02-14 06:12:18', '2023-02-14 06:12:18'),
(2, 3, 500, '2023-02-14', NULL, '2023-02-14 06:17:57', '2023-02-14 06:17:57'),
(3, 4, 500, '2023-02-14', NULL, '2023-02-14 06:23:09', '2023-02-14 06:23:09'),
(4, 8, 800, '2023-02-21', NULL, '2023-02-21 05:16:38', '2023-02-21 05:16:38'),
(5, 13, 900, '2023-02-25', NULL, '2023-02-25 07:41:38', '2023-02-25 07:41:38'),
(6, 14, 400, '2023-02-25', NULL, '2023-02-25 08:18:40', '2023-02-25 08:18:40'),
(8, 16, 300, '2023-02-25', NULL, '2023-02-25 08:26:50', '2023-02-25 08:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_05_064626_create_home_slides_table', 2),
(6, '2023_02_05_103902_create_abouts_table', 3),
(7, '2023_02_06_125554_create_multi_images_table', 4),
(8, '2023_02_07_062537_create_portfolios_table', 5),
(9, '2023_02_07_181428_create_blog_categories_table', 6),
(10, '2023_02_08_053625_create_blogs_table', 7),
(11, '2023_02_09_094200_create_footers_table', 8),
(12, '2023_02_09_103448_create_contacts_table', 9),
(13, '2023_02_11_081913_create_suppliers_table', 10),
(14, '2023_02_11_124355_create_customers_table', 11),
(15, '2023_02_12_053403_create_units_table', 12),
(16, '2023_02_12_061528_create_categories_table', 13),
(17, '2023_02_12_070856_create_products_table', 14),
(18, '2023_02_12_125252_create_purchases_table', 15),
(19, '2023_02_14_050729_create_invoices_table', 16),
(20, '2023_02_14_050925_create_invoice_details_table', 16),
(21, '2023_02_14_051022_create_invoice_payments_table', 16),
(22, '2023_02_14_051240_create_invoice_payment_details_table', 16),
(23, '2023_03_21_162503_create_tests_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

DROP TABLE IF EXISTS `multi_images`;
CREATE TABLE IF NOT EXISTS `multi_images` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `multi_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `multi_image`, `created_at`, `updated_at`) VALUES
(5, 'upload/multi_image/1757150506252906.png', '2023-02-06 23:55:07', NULL),
(4, 'upload/multi_image/1757089006150061.png', '2023-02-06 07:37:36', NULL),
(9, 'upload/multi_image/1757150882561824.jpg', '2023-02-07 00:01:06', NULL),
(8, 'upload/multi_image/1757150882502438.png', '2023-02-07 00:01:06', NULL),
(10, 'upload/multi_image/1757152020007197.png', '2023-02-07 00:19:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `portfolio_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `portfolio_name`, `portfolio_title`, `portfolio_image`, `portfolio_description`, `created_at`, `updated_at`) VALUES
(1, 'Case Details', 'Rixelda - 24 hours Control room landing page', 'upload/portfolio_image/1757158729629656.png', '<p>Definition: Business strategy can be understood as the course of action or set of decisions which assist the entrepreneurs in achieving specific business objectives.</p>\r\n<p>It is nothing but a master plan that the management of a company implements to secure a competitive position in the market, carry on its operations, please customers and achieve the desired ends of the business.</p>\r\n<p>In business, it is the long-range sketch of the desired image, direction and destination of the organization. It is a scheme of corporate intent and action, which is carefully planned and flexibly designed with the purpose of</p>\r\n<ul>\r\n<li><span style=\"color: #000000;\"><strong>Achieving effectiveness,</strong></span><br /><span style=\"color: #000000;\"><strong>Perceiving and utilizing opportunities,</strong></span><br /><span style=\"color: #000000;\"><strong>Mobilising resources,</strong></span><br /><span style=\"color: #000000;\"><strong>Securing an advantageous position,</strong></span><br /><span style=\"color: #000000;\"><strong>Meeting challenges and threats,</strong></span><br /><span style=\"color: #000000;\"><strong>Directing efforts and behaviour and</strong></span><br /><span style=\"color: #000000;\"><strong>Gaining command over the situation.</strong></span><br />A business strategy is a set of competitive moves and actions that a business uses to attract customers, compete successfully, strengthening performance, and achieve organizational goals. It outlines how business should be carried out to reach the desired ends</li>\r\n</ul>', NULL, NULL),
(2, 'Nature', 'Nature of Business Strategy', 'upload/portfolio_image/1757159773077383.png', '<p>A business strategy is a combination of proactive actions on the part of management, for the purpose of enhancing the company&rsquo;s market position and overall performance and reactions to unexpected developments and new market.</p>\r\n<p>The maximum part of the company&rsquo;s present strategy is a result of formerly initiated actions and business approaches, but when market conditions take an unanticipated turn, the company requires a strategic reaction to cope with contingencies. Hence, for unforeseen development, a part of the business strategy is formulated as a reasoned response nature of business strategy.</p>', '2023-02-07 02:22:25', NULL),
(3, 'Laravel', 'Laravel News', 'upload/portfolio_image/1757159887640048.png', '<p>Laravel is a web application framework with expressive, elegant syntax. A web framework provides a structure and starting point for creating your application, allowing you to focus on creating something amazing while we sweat the details.</p>\r\n<p>Laravel strives to provide an amazing developer experience while providing powerful features such as thorough dependency injection, an expressive database abstraction layer, queues and scheduled jobs, unit and integration testing, and more.</p>\r\n<p>Whether you are new to PHP web frameworks or have years of experience, Laravel is a framework that can grow with you. We\'ll help you take your first steps as a web developer or give you a boost as you take your expertise to the next level. We can\'t wait to see what you build.</p>', '2023-02-07 02:24:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `supplier_id`, `unit_id`, `category_id`, `name`, `quantity`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(5, 7, 4, 8, 'KSRM Steel', 3, 1, 4, NULL, '2023-02-12 06:36:23', '2023-02-13 22:31:06'),
(4, 6, 4, 8, 'Bosundora Steel', 1, 1, 4, NULL, '2023-02-12 06:30:45', '2023-02-25 08:27:09'),
(6, 6, 1, 5, 'Bosundhara Cement', 0, 1, 4, NULL, '2023-02-12 06:37:08', NULL),
(7, 10, 1, 5, 'Holcim Cement', 0, 1, 4, NULL, '2023-02-12 06:39:36', NULL),
(8, 12, 1, 5, 'Shah Cement', 0, 1, 4, NULL, '2023-02-12 06:40:05', NULL),
(9, 13, 1, 5, 'Madina Cement', 0, 1, 4, NULL, '2023-02-12 06:40:25', NULL),
(10, 8, 4, 7, 'Walton Mobile w52', 2, 1, 4, NULL, '2023-02-12 06:42:04', '2023-02-13 22:30:37'),
(11, 8, 4, 7, 'walton Mobile w55', 10, 1, 4, NULL, '2023-02-12 06:43:12', '2023-02-22 00:32:10'),
(12, 12, 1, 5, 'Test Product', 18, 1, 4, NULL, '2023-02-25 07:31:45', '2023-02-25 08:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buying_qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=Pending, 1=Approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `category_id`, `product_id`, `purchase_no`, `date`, `description`, `buying_qty`, `unit_price`, `buying_price`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 6, 8, 4, 'ea-256', '2023-02-01', NULL, 2, 500, 1000, 0, 4, NULL, '2023-02-13 05:00:42', '2023-02-13 05:00:42'),
(2, 7, 8, 5, 'ea-256', '2023-02-01', NULL, 3, 500, 1500, 0, 4, NULL, '2023-02-13 05:00:42', '2023-02-13 05:00:42'),
(3, 6, 8, 4, 's=111', '2023-02-01', NULL, 2, 500, 1000, 1, 4, NULL, '2023-02-13 05:02:29', '2023-02-21 07:32:12'),
(4, 7, 8, 5, 's=111', '2023-02-01', NULL, 3, 500, 1500, 1, 4, NULL, '2023-02-13 05:02:29', '2023-02-13 22:31:06'),
(5, 8, 7, 10, 'Sa=2020', '2023-02-01', NULL, 2, 5000, 10000, 1, 4, NULL, '2023-02-13 09:27:06', '2023-02-13 22:30:37'),
(7, 8, 7, 11, 'ea234', '2023-02-22', 'New Mobile', 10, 500, 5000, 1, 4, NULL, '2023-02-22 00:31:26', '2023-02-22 00:32:10'),
(8, 12, 5, 12, 'EA 2323', '2023-02-25', 'Test', 20, 200, 4000, 1, 4, NULL, '2023-02-25 07:35:12', '2023-02-25 07:35:48');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `mobile_no`, `email`, `address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(6, 'Bosundhara', '01711223344', 'bosundhara@gmail.com', 'Palton, Dhaka', 1, 4, NULL, '2023-02-12 04:56:45', NULL),
(7, 'KSRM', '01712334455', 'ksrm@gmail.com', 'New Bazar, Dhaka', 1, 4, NULL, '2023-02-12 04:58:07', NULL),
(8, 'Walton', '01722445566', 'walton@gmail.com', 'Badda, Dhaka', 1, 4, NULL, '2023-02-12 04:59:29', NULL),
(9, 'Vision', '01722445566', 'vison@gmail.com', 'Mogbazar, Dhaka', 1, 4, NULL, '2023-02-12 05:01:04', NULL),
(10, 'Holcim', '01722445566', 'holcim@gmail.com', 'Mirpur,Dhaka', 1, 4, NULL, '2023-02-12 05:01:55', NULL),
(11, 'Samsung', '01722445566', 'samsung@gmail.com', 'Samoli, Dhaka', 1, 4, NULL, '2023-02-12 05:02:49', NULL),
(12, 'Shah', '01722445566', 'shah@gmail.com', 'kollanpur,Dhaka', 1, 4, NULL, '2023-02-12 05:04:27', NULL),
(13, 'Modina', '01722445566', 'modina@gmail.com', 'Rampura,Dhaka', 1, 4, NULL, '2023-02-12 05:05:58', NULL),
(14, 'Shah', '01722445566', 'shah@gmail.com', 'Saja Malonchi', 1, 4, NULL, '2023-02-25 07:33:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
CREATE TABLE IF NOT EXISTS `tests` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
CREATE TABLE IF NOT EXISTS `units` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'KG', 1, 4, 4, '2023-02-11 23:52:48', '2023-02-12 05:06:53'),
(4, 'PCS', 1, 4, NULL, '2023-02-12 05:06:44', NULL),
(5, 'GM', 1, 4, NULL, '2023-02-12 05:07:05', NULL),
(6, 'Karina Russell', 1, 4, NULL, '2023-03-21 09:21:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `username`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', NULL, '$2y$10$cvWzEMsPmRiEyeE3AI6A4O7s9b5NcCDqpF9PV50ZtRMKO/0ekmd1y', 'user', NULL, 'TVe32KCVIwbE9xUZLdM00jCFdmYf4QXKCE0uQw38NQgIrMSNXFMnkc6ErlfY', '2023-02-03 10:17:55', '2023-02-03 22:52:31'),
(2, 'Md. Minhajul Abedin', 'mridul123@gmail.com', '2023-02-04 00:02:03', '$2y$10$BkTSFayZsta2tJZ7UAoBI.D8Lel3EinEuDkkrkAVSpUdz0pD0MbvK', 'mridul', NULL, NULL, '2023-02-04 00:00:21', '2023-02-04 00:02:03'),
(4, 'Demo', 'demo@gmail.com', '2023-02-04 01:15:22', '$2y$10$9QciCeE/SnYO114Er9uape7vUywb5v/NyWhAEUWOnv.2XT0OKbL3m', 'demo', '202302041911avatar-2.jpg', NULL, '2023-02-04 01:15:00', '2023-02-04 23:18:44'),
(5, 'test 1', 'test@gmail.com', '2023-02-04 08:28:37', '$2y$10$5VHIDvvU8pEeU/ZIGjsrWewZv9Fl3SSL.7EuIpV0oTGMQ85AHjXDy', 'test', '202302041905avatar-4.jpg', NULL, '2023-02-04 08:27:51', '2023-02-04 13:05:16');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
