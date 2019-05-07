-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 07, 2019 at 11:58 PM
-- Server version: 5.7.26-0ubuntu0.18.10.1
-- PHP Version: 7.2.17-0ubuntu0.18.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rails_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_admin_comments`
--

CREATE TABLE `active_admin_comments` (
  `id` bigint(20) NOT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  `body` text,
  `resource_type` varchar(255) DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `active_storage_attachments`
--

CREATE TABLE `active_storage_attachments` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `blob_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `active_storage_attachments`
--

INSERT INTO `active_storage_attachments` (`id`, `name`, `record_type`, `record_id`, `blob_id`, `created_at`) VALUES
(1, 'avatar', 'User', 1, 1, '2019-05-05 22:51:55'),
(2, 'image', 'Product', 1, 3, '2019-05-05 22:56:48'),
(3, 'avatar', 'User', 2, 4, '2019-05-06 12:05:01'),
(4, 'avatar', 'User', 3, 5, '2019-05-06 12:58:59'),
(5, 'avatar', 'User', 4, 6, '2019-05-06 20:06:07'),
(6, 'image', 'Product', 2, 8, '2019-05-06 20:47:54'),
(7, 'image', 'Product', 3, 10, '2019-05-06 20:49:30'),
(8, 'image', 'Product', 4, 12, '2019-05-06 22:44:02'),
(9, 'image', 'Product', 5, 14, '2019-05-06 22:44:28'),
(10, 'image', 'Product', 6, 16, '2019-05-06 22:50:16'),
(11, 'avatar', 'User', 5, 17, '2019-05-06 23:04:20'),
(12, 'image', 'Product', 7, 19, '2019-05-07 01:20:30'),
(13, 'image', 'Product', 8, 21, '2019-05-07 01:27:46'),
(14, 'image', 'Product', 9, 23, '2019-05-07 01:38:54'),
(15, 'avatar', 'User', 6, 24, '2019-05-07 16:11:31'),
(16, 'image', 'Product', 10, 26, '2019-05-07 20:04:29'),
(17, 'image', 'Product', 11, 28, '2019-05-07 20:06:34'),
(18, 'image', 'Product', 12, 30, '2019-05-07 20:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `active_storage_blobs`
--

CREATE TABLE `active_storage_blobs` (
  `id` bigint(20) NOT NULL,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `byte_size` bigint(20) NOT NULL,
  `checksum` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `active_storage_blobs`
--

INSERT INTO `active_storage_blobs` (`id`, `key`, `filename`, `content_type`, `metadata`, `byte_size`, `checksum`, `created_at`) VALUES
(1, '1CR8xrD9sFgHrvtRDDs1vitX', 'myavatar.png', 'image/png', '{\"identified\":true,\"analyzed\":true}', 29773, 'shMj4Fl4W2fxxpfTq6cSAg==', '2019-05-05 22:51:55'),
(2, 'iE2sKh7deSyCS6Jq7UKuHRgw', 'avatar_nick.png', 'image/png', '{\"identified\":true}', 41934, 'sFfm+4yO9NcweYdDTLRIrQ==', '2019-05-05 22:56:48'),
(3, 'kFpx4izSCoFgtimVaxQbZxbr', 'avatar_nick.png', 'image/png', '{\"identified\":true,\"analyzed\":true}', 41934, 'sFfm+4yO9NcweYdDTLRIrQ==', '2019-05-05 22:56:48'),
(4, '47Ww9fbPX6iEgnvei9FBAuoQ', 'avatar_nick.png', 'image/png', '{\"identified\":true,\"analyzed\":true}', 41934, 'sFfm+4yO9NcweYdDTLRIrQ==', '2019-05-06 12:05:01'),
(5, 'HPE42uF2EXQnoTRaESDrzeNe', '58637085-cartoon-avatar-man-with-brown-hair-wearing-eyeglasses-front-view-over-isolated-background-vector-ill.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 118818, 'kpFo6cu1K9Gxvoz44Dgijg==', '2019-05-06 12:58:59'),
(6, 'ZSSK1zS6siafQeJxBX1d1jL2', 'defaultFemalePP.png', 'image/png', '{\"identified\":true,\"analyzed\":true}', 66497, 'Mw7pdECfWJ6sZjN9XU7Jew==', '2019-05-06 20:06:07'),
(7, 'AbJjEdLSLPJn92r86V9PB2af', 'photo-1522198734915-76c764a8454d.jpg', 'image/jpeg', '{\"identified\":true}', 155996, 'p0z1yOu3rH37imkiQklS3w==', '2019-05-06 20:47:54'),
(8, 'mnEZsPJ3wagEoXfDBWf89Dwg', 'photo-1522198734915-76c764a8454d.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 155996, 'p0z1yOu3rH37imkiQklS3w==', '2019-05-06 20:47:54'),
(9, 'xmw5nA6m4smurN9qKuPENs7L', 'myavatar.png', 'image/png', '{\"identified\":true}', 29773, 'shMj4Fl4W2fxxpfTq6cSAg==', '2019-05-06 20:49:30'),
(10, '321nmrXj4Dgy1moizGgtrzDA', 'myavatar.png', 'image/png', '{\"identified\":true,\"analyzed\":true}', 29773, 'shMj4Fl4W2fxxpfTq6cSAg==', '2019-05-06 20:49:30'),
(11, '8LvfUTQFiPWe4R7DaaMLHftK', 'myavatar.png', 'image/png', '{\"identified\":true}', 29773, 'shMj4Fl4W2fxxpfTq6cSAg==', '2019-05-06 22:44:02'),
(12, 'p8WVv1QuQUdYcZbHLPG5dXWt', 'myavatar.png', 'image/png', '{\"identified\":true,\"analyzed\":true}', 29773, 'shMj4Fl4W2fxxpfTq6cSAg==', '2019-05-06 22:44:02'),
(13, 'jiXj6qFvGeuXJrmDqivCwHF8', 'professional-surgeon-avatar-character-vector-13433877.jpg', 'image/jpeg', '{\"identified\":true}', 82631, 'ftx6704mHB7HXC5151F93g==', '2019-05-06 22:44:28'),
(14, 'JjNNjJJi8kQzAit6fWsDbmVA', 'professional-surgeon-avatar-character-vector-13433877.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 82631, 'ftx6704mHB7HXC5151F93g==', '2019-05-06 22:44:28'),
(15, 'oi7s294rnpsP15wCHdXV45Jz', 'professional-surgeon-avatar-character-vector-13433877.jpg', 'image/jpeg', '{\"identified\":true}', 82631, 'ftx6704mHB7HXC5151F93g==', '2019-05-06 22:50:16'),
(16, 'TGfN2hmWJEctgq2tk1WiGzZ8', 'professional-surgeon-avatar-character-vector-13433877.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 82631, 'ftx6704mHB7HXC5151F93g==', '2019-05-06 22:50:16'),
(17, 'DEq1BXBexkBqaLhficMMEsWc', 'defaultFemalePP.png', 'image/png', '{\"identified\":true,\"analyzed\":true}', 66497, 'Mw7pdECfWJ6sZjN9XU7Jew==', '2019-05-06 23:04:20'),
(18, 'LEiRNqe68ix1oTST1pNs7hbL', 'photo-1522198734915-76c764a8454d.jpg', 'image/jpeg', '{\"identified\":true}', 155996, 'p0z1yOu3rH37imkiQklS3w==', '2019-05-07 01:20:29'),
(19, 'iQgDUNgL8JcvPC488r2FYo38', 'photo-1522198734915-76c764a8454d.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 155996, 'p0z1yOu3rH37imkiQklS3w==', '2019-05-07 01:20:29'),
(20, 'LrnnAKVPfnCqUk2tHMjkMjhd', 'woman-hipster-avatar-vector-19639702.jpg', 'image/jpeg', '{\"identified\":true}', 117814, 'F3gL+1kyAo2hiVNx1CfsHw==', '2019-05-07 01:27:46'),
(21, 'vFTsKCwrT8WYUsTp1nDvmmid', 'woman-hipster-avatar-vector-19639702.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 117814, 'F3gL+1kyAo2hiVNx1CfsHw==', '2019-05-07 01:27:46'),
(22, 'EhtBdoroSqzUSAVep2sZe96B', 'photo-1522198734915-76c764a8454d.jpg', 'image/jpeg', '{\"identified\":true}', 155996, 'p0z1yOu3rH37imkiQklS3w==', '2019-05-07 01:38:53'),
(23, 'AbQSS5D3CXYJcAHFRSGAtNvA', 'photo-1522198734915-76c764a8454d.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 155996, 'p0z1yOu3rH37imkiQklS3w==', '2019-05-07 01:38:54'),
(24, '9aiDP6CzhdW2gbRLeRQfGczU', 'defaultFemalePP.png', 'image/png', '{\"identified\":true,\"analyzed\":true}', 66497, 'Mw7pdECfWJ6sZjN9XU7Jew==', '2019-05-07 16:11:31'),
(25, 'rW8xRBud4HcxJ6FiK8UsZTDw', '5122Meg9j8L.jpg', 'image/jpeg', '{\"identified\":true}', 51006, 'hgE+ZpCHaNIAG7HF6TMRtw==', '2019-05-07 20:04:29'),
(26, 'ChnZzasFDHWc5VtJfm9vYr36', '5122Meg9j8L.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 51006, 'hgE+ZpCHaNIAG7HF6TMRtw==', '2019-05-07 20:04:29'),
(27, 'a645PX8n52thYN1azqdboYXY', 'bb655958-4248-11e8-ae07-e53e4c49516f.jpg', 'image/jpeg', '{\"identified\":true}', 14058, 'cqt4suZB3JQewpafvFE/+g==', '2019-05-07 20:06:34'),
(28, 'xvpsV4ZdbrAo5vC525fsBTfS', 'bb655958-4248-11e8-ae07-e53e4c49516f.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 14058, 'cqt4suZB3JQewpafvFE/+g==', '2019-05-07 20:06:34'),
(29, 'gW3wK4qrc5xSWmTW2SS9AucQ', '636337794_271866372.jpg', 'image/jpeg', '{\"identified\":true}', 72525, 'GFbxuEQJoQouHQPET/THhg==', '2019-05-07 20:07:40'),
(30, 'k8X5zG7xbeReSSbt5Bg72kMZ', '636337794_271866372.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 72525, 'GFbxuEQJoQouHQPET/THhg==', '2019-05-07 20:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', '$2a$11$L3GMjeMFQG80JWeO/LKHautnIBlN7rLI1C84eimE/5MHp1aOiRl/S', NULL, NULL, NULL, '2019-05-05 22:50:54', '2019-05-05 22:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2019-05-05 22:50:44', '2019-05-05 22:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', '2019-05-05 22:50:54', '2019-05-05 22:50:54'),
(2, 'htc', '2019-05-05 22:50:54', '2019-05-05 22:50:54'),
(3, 'Apple', '2019-05-05 22:50:54', '2019-05-05 22:50:54'),
(4, 'HP', '2019-05-05 22:50:55', '2019-05-05 22:50:55'),
(5, 'Microsoft', '2019-05-05 22:50:55', '2019-05-05 22:50:55'),
(6, 'Adidas', '2019-05-05 22:50:55', '2019-05-05 22:50:55'),
(7, 'ZARA', '2019-05-05 22:50:55', '2019-05-05 22:50:55'),
(8, 'H&M', '2019-05-05 22:50:55', '2019-05-05 22:50:55'),
(9, 'Intel', '2019-05-05 22:50:55', '2019-05-05 22:50:55'),
(10, 'MAC', '2019-05-05 22:50:55', '2019-05-05 22:50:55');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `total`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 3, '100', '300', '2019-05-06 20:41:19', '2019-05-06 20:41:23'),
(2, NULL, 2, 2, '100', '200', '2019-05-06 20:50:11', '2019-05-06 20:50:23'),
(3, NULL, 3, 1, '200', '200', '2019-05-06 20:51:52', '2019-05-06 20:51:52'),
(4, NULL, 2, 1, '100', '100', '2019-05-06 21:03:38', '2019-05-06 21:03:38'),
(5, NULL, 2, 1, '100', '100', '2019-05-06 22:25:18', '2019-05-06 22:25:18'),
(6, NULL, 1, 1, '100', '100', '2019-05-06 22:39:25', '2019-05-06 22:39:25'),
(7, NULL, 4, 1, '250', '250', '2019-05-06 22:44:59', '2019-05-06 22:44:59'),
(8, NULL, 5, 1, '300', '300', '2019-05-06 22:45:33', '2019-05-06 22:45:33'),
(9, NULL, 6, 1, '100', '100', '2019-05-06 22:50:32', '2019-05-06 22:50:32'),
(10, NULL, 6, 1, '100', '100', '2019-05-06 23:00:46', '2019-05-06 23:00:46'),
(11, NULL, 1, 3, '100', '300', '2019-05-06 23:04:33', '2019-05-06 23:04:37'),
(12, NULL, 6, 1, '100', '100', '2019-05-06 23:05:01', '2019-05-06 23:05:01'),
(13, NULL, 6, 1, '100', '100', '2019-05-06 23:32:53', '2019-05-06 23:32:53'),
(14, NULL, 1, 1, '100', '100', '2019-05-06 23:33:24', '2019-05-06 23:33:24'),
(15, NULL, 2, 1, '100', '100', '2019-05-06 23:33:41', '2019-05-06 23:33:41'),
(16, NULL, 3, 1, '200', '200', '2019-05-06 23:34:02', '2019-05-06 23:34:02'),
(17, NULL, 1, 1, '100', '100', '2019-05-06 23:50:42', '2019-05-06 23:50:42'),
(18, NULL, 5, 1, '300', '300', '2019-05-07 01:13:05', '2019-05-07 01:13:05'),
(19, NULL, 4, 1, '250', '250', '2019-05-07 01:15:04', '2019-05-07 01:15:04'),
(20, NULL, 2, 1, '100', '100', '2019-05-07 01:15:37', '2019-05-07 01:15:37'),
(21, NULL, 7, 1, '200', '200', '2019-05-07 01:21:12', '2019-05-07 01:21:12'),
(22, NULL, 7, 1, '200', '200', '2019-05-07 01:22:47', '2019-05-07 01:22:47'),
(23, NULL, 8, 1, '100', '100', '2019-05-07 01:28:10', '2019-05-07 01:28:10'),
(24, NULL, 9, 1, '100', '100', '2019-05-07 01:39:14', '2019-05-07 01:39:14'),
(25, NULL, 8, 1, '100', '100', '2019-05-07 01:46:24', '2019-05-07 01:46:24'),
(26, NULL, 8, 1, '100', '100', '2019-05-07 15:49:53', '2019-05-07 15:49:53'),
(27, NULL, 4, 1, '250', '250', '2019-05-07 16:02:44', '2019-05-07 16:02:44'),
(28, NULL, 8, 4, '100', '400', '2019-05-07 16:07:40', '2019-05-07 16:07:49'),
(29, NULL, 1, 1, '100', '100', '2019-05-07 16:11:43', '2019-05-07 16:11:43'),
(30, NULL, 2, 1, '100', '100', '2019-05-07 16:12:00', '2019-05-07 16:12:00'),
(31, NULL, 3, 1, '200', '200', '2019-05-07 16:18:57', '2019-05-07 16:18:57'),
(32, NULL, 1, 1, '100', '100', '2019-05-07 16:20:15', '2019-05-07 16:20:15'),
(33, NULL, 1, 4, '100', '400', '2019-05-07 18:46:02', '2019-05-07 18:46:09'),
(34, NULL, 2, 6, '100', '600', '2019-05-07 18:56:27', '2019-05-07 18:56:32'),
(35, NULL, 2, 4, '100', '400', '2019-05-07 18:57:44', '2019-05-07 18:57:49'),
(36, NULL, 2, 3, '100', '300', '2019-05-07 18:59:46', '2019-05-07 18:59:54'),
(37, NULL, 2, 6, '100', '600', '2019-05-07 19:02:01', '2019-05-07 19:02:06'),
(38, NULL, 2, 4, '100', '400', '2019-05-07 19:08:38', '2019-05-07 19:08:43'),
(39, NULL, 3, 5, '200', '1000', '2019-05-07 19:12:55', '2019-05-07 19:13:01'),
(40, NULL, 4, 6, '250', '1500', '2019-05-07 19:17:04', '2019-05-07 19:17:09'),
(41, NULL, 6, 5, '100', '500', '2019-05-07 19:22:46', '2019-05-07 19:22:50'),
(42, NULL, 6, 10, '100', '1000', '2019-05-07 19:32:08', '2019-05-07 19:32:15'),
(43, NULL, 2, 1, '100', '100', '2019-05-07 19:39:12', '2019-05-07 19:39:12'),
(44, NULL, 3, 3, '200', '600', '2019-05-07 19:39:21', '2019-05-07 19:39:26'),
(45, NULL, 11, 2, '300', '600', '2019-05-07 20:31:47', '2019-05-07 20:31:51'),
(46, NULL, 9, 6, '100', '600', '2019-05-07 20:39:47', '2019-05-07 20:39:51'),
(47, NULL, 8, 2, '100', '200', '2019-05-07 20:40:00', '2019-05-07 20:40:03'),
(48, NULL, 1, 5, '100', '500', '2019-05-07 20:41:53', '2019-05-07 20:41:56'),
(49, NULL, 9, 3, '100', '300', '2019-05-07 20:42:21', '2019-05-07 20:42:25'),
(50, NULL, 1, 6, '100', '600', '2019-05-07 20:50:15', '2019-05-07 20:50:22'),
(51, NULL, 7, 5, '200', '1000', '2019-05-07 20:50:29', '2019-05-07 20:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', '2019-05-05 22:50:55', '2019-05-05 22:50:55'),
(2, 'Sports', '2019-05-05 22:50:55', '2019-05-05 22:50:55'),
(3, 'Toys', '2019-05-05 22:50:55', '2019-05-05 22:50:55'),
(4, 'Technology', '2019-05-05 22:50:55', '2019-05-05 22:50:55'),
(5, 'Clothes', '2019-05-05 22:50:55', '2019-05-05 22:50:55'),
(6, 'Luxury', '2019-05-05 22:50:55', '2019-05-05 22:50:55'),
(7, 'Makeup', '2019-05-05 22:50:55', '2019-05-05 22:50:55'),
(8, 'Media', '2019-05-05 22:50:55', '2019-05-05 22:50:55'),
(9, 'Apparel', '2019-05-05 22:50:55', '2019-05-05 22:50:55'),
(10, 'Books', '2019-05-05 22:50:55', '2019-05-05 22:50:55');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `expiring_type` varchar(255) DEFAULT NULL,
  `discount_value` int(11) DEFAULT NULL,
  `discount_Type` varchar(255) DEFAULT NULL,
  `current_usage` int(11) DEFAULT '0',
  `usage_num` int(11) DEFAULT NULL,
  `expiring_date` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `created_at`, `updated_at`, `expiring_type`, `discount_value`, `discount_Type`, `current_usage`, `usage_num`, `expiring_date`, `title`) VALUES
(1, '2019-05-06 20:04:20', '2019-05-07 18:57:58', 'Both', 12, 'Fixed', 2, 12, '2019-07-06 04:00:00', 'c1'),
(2, '2019-05-06 22:43:17', '2019-05-07 20:32:01', 'expiring_date', 15, 'Percentage', 2, NULL, '2019-06-07 05:05:00', 'c2'),
(3, '2019-05-06 22:48:16', '2019-05-07 19:22:56', 'expiring_date', 10, 'Fixed', 1, 10, '2019-06-05 03:21:00', 'c3'),
(4, '2019-05-06 23:15:27', '2019-05-06 23:15:27', 'expiring_date', 12, 'Percentage', 0, 12, '2019-05-13 02:02:00', 'ccc'),
(5, '2019-05-07 01:19:41', '2019-05-07 20:50:40', 'usage_num', 10, 'Fixed', 1, 10, '2019-06-06 06:05:00', 'test'),
(6, '2019-05-07 01:27:00', '2019-05-07 20:40:10', 'expiring_date', 12, 'Fixed', 1, NULL, '2019-06-06 05:06:00', 'test1'),
(7, '2019-05-07 01:38:03', '2019-05-07 20:40:10', 'expiring_date', 12, 'Fixed', 2, 2, '2019-06-06 03:04:00', 'test1u');

-- --------------------------------------------------------

--
-- Table structure for table `coupons_users`
--

CREATE TABLE `coupons_users` (
  `user_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons_users`
--

INSERT INTO `coupons_users` (`user_id`, `coupon_id`) VALUES
(4, 1),
(4, 1),
(4, 3),
(4, 3),
(5, 3),
(5, 3),
(5, 3),
(5, 3),
(4, 2),
(5, 5),
(5, 6),
(5, 7),
(5, 2),
(6, 1),
(3, 1),
(3, 2),
(3, 3),
(1, 2),
(1, 7),
(1, 6),
(1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `total_price` decimal(10,0) DEFAULT NULL,
  `actual_price` decimal(10,0) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'pending',
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `credit_cart` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_price`, `actual_price`, `status`, `address`, `created_at`, `updated_at`, `phone`, `credit_cart`) VALUES
(1, 4, '300', '300', 'pending', '1223dfff', '2019-05-06 20:41:34', '2019-05-06 20:41:34', '123456789012', '1234567890'),
(2, 4, '200', '188', 'pending', '1223dfff', '2019-05-06 20:50:34', '2019-05-06 20:50:34', '123456789012', '1234567890'),
(3, 4, '200', '188', 'pending', '1223dfff', '2019-05-06 20:52:01', '2019-05-06 20:52:01', '123456789012', '1234567890'),
(4, 4, '100', '88', 'pending', '1223dfff', '2019-05-06 21:03:52', '2019-05-06 21:03:52', '123456789012', '1234567890'),
(5, 4, '0', '0', 'pending', '1223dfff', '2019-05-06 22:25:32', '2019-05-06 22:25:32', '123456789012', '1234567890'),
(6, 4, '0', '0', 'pending', '1223dfff', '2019-05-06 22:30:15', '2019-05-06 22:30:15', '123456789012', '1234567890'),
(7, 4, '0', '0', 'pending', '1223dfff', '2019-05-06 22:30:49', '2019-05-06 22:30:49', '123456789012', '1234567890'),
(8, 4, '0', '0', 'pending', '1223dfff', '2019-05-06 22:33:40', '2019-05-06 22:33:40', '123456789012', '1234567890'),
(9, 4, '0', '0', 'pending', '1223dfff', '2019-05-06 22:35:01', '2019-05-06 22:35:01', '123456789012', '1234567890'),
(10, 4, '0', '0', 'pending', '1223dfff', '2019-05-06 22:36:31', '2019-05-06 22:36:31', '123456789012', '1234567890'),
(11, 4, '0', '0', 'pending', '1223dfff', '2019-05-06 22:37:19', '2019-05-06 22:37:19', '123456789012', '1234567890'),
(12, 4, '100', '100', 'pending', '1223dfff', '2019-05-06 22:37:40', '2019-05-06 22:37:40', '123456789012', '1234567890'),
(13, 4, '100', '100', 'pending', '1223dfff', '2019-05-06 22:39:35', '2019-05-06 22:39:35', '123456789012', '1234567890'),
(14, 4, '250', '250', 'pending', '1223dfff', '2019-05-06 22:45:11', '2019-05-06 22:45:11', '123456789012', '1234567890'),
(15, 4, '300', '300', 'pending', '1223dfff', '2019-05-06 22:45:42', '2019-05-06 22:45:42', '123456789012', '1234567890'),
(16, 4, '0', '0', 'pending', '1223dfff', '2019-05-06 22:50:40', '2019-05-06 22:50:40', '123456789012', '1234567890'),
(17, 4, '0', '0', 'pending', '1223dfff', '2019-05-06 22:51:52', '2019-05-06 22:51:52', '123456789012', '1234567890'),
(18, 4, '100', '100', 'pending', '1223dfff', '2019-05-06 23:00:23', '2019-05-06 23:00:24', '123456789012', '1234567890'),
(19, 4, '100', '100', 'pending', '1223dfff', '2019-05-06 23:00:54', '2019-05-06 23:00:55', '123456789012', '1234567890'),
(20, 5, '300', '300', 'pending', '1223dfff', '2019-05-06 23:04:46', '2019-05-06 23:04:46', '123456789012', '1234567890'),
(25, 5, '100', '100', 'pending', '1223dfff', '2019-05-06 23:32:38', '2019-05-06 23:32:39', '123456789012', '1234567890'),
(26, 5, '100', '100', 'pending', '1223dfff', '2019-05-06 23:33:02', '2019-05-06 23:33:02', '123456789012', '1234567890'),
(27, 5, '100', '100', 'pending', '1223dfff', '2019-05-06 23:33:31', '2019-05-06 23:33:31', '123456789012', '1234567890'),
(28, 5, '100', '100', 'pending', '1223dfff', '2019-05-06 23:33:51', '2019-05-06 23:33:51', '123456789012', '1234567890'),
(29, 5, '200', '200', 'pending', '1223dfff', '2019-05-06 23:34:10', '2019-05-06 23:34:10', '123456789012', '1234567890'),
(30, 1, '100', '100', 'pending', '1223dfff', '2019-05-06 23:50:53', '2019-05-06 23:50:53', '123456789012', '1234567890'),
(31, 4, '0', '0', 'pending', '1223dfff', '2019-05-07 01:13:14', '2019-05-07 01:13:14', '123456789012', '1234567890'),
(32, 4, '300', '300', 'pending', '1223dfff', '2019-05-07 01:14:40', '2019-05-07 01:14:40', '123456789012', '1234567890'),
(33, 4, '250', '250', 'pending', '1223dfff', '2019-05-07 01:15:12', '2019-05-07 01:15:12', '123456789012', '1234567890'),
(34, 4, '100', '100', 'pending', '1223dfff', '2019-05-07 01:15:47', '2019-05-07 01:15:47', '123456789012', '1234567890'),
(37, 5, '200', '200', 'pending', '1223dfff', '2019-05-07 01:22:56', '2019-05-07 01:22:56', '123456789012', '1234567890'),
(42, 5, '100', '100', 'pending', '1223dfff', '2019-05-07 01:36:58', '2019-05-07 01:36:58', '123456789012', '1234567890'),
(43, 5, '100', '88', 'pending', '1223dfff', '2019-05-07 01:39:21', '2019-05-07 01:39:21', '123456789012', '1234567890'),
(44, 5, '100', '100', 'pending', '1223dfff', '2019-05-07 01:46:32', '2019-05-07 01:46:33', '123456789012', '1234567890'),
(45, 5, '100', '100', 'confirmed', '1223dfff', '2019-05-07 15:50:04', '2019-05-07 16:05:46', '123456789012', '1234567890'),
(47, 5, '250', '250', 'confirmed', '1223dfff', '2019-05-07 16:05:01', '2019-05-07 16:08:32', '123456789012', '1234567890'),
(48, 5, '400', '400', 'confirmed', '1223dfff', '2019-05-07 16:07:56', '2019-05-07 18:46:39', '123456789012', '1234567890'),
(49, 6, '100', '100', 'confirmed', '1223dfff', '2019-05-07 16:11:52', '2019-05-07 18:50:06', '123456789012', '1234567890'),
(50, 6, '100', '88', 'pending', '1223dfff', '2019-05-07 16:12:08', '2019-05-07 16:12:08', '123456789012', '1234567890'),
(51, 6, '200', '200', 'pending', '1223dfff', '2019-05-07 16:19:05', '2019-05-07 16:19:05', '123456789012', '1234567890'),
(52, 6, '100', '100', 'confirmed', '1223dfff', '2019-05-07 16:20:22', '2019-05-07 18:48:29', '123456789012', '1234567890'),
(53, 6, '400', '400', 'confirmed', '1223dfff', '2019-05-07 18:46:20', '2019-05-07 18:47:01', '123456789012', '1234567890'),
(54, 6, '600', '600', 'confirmed', '1223dfff', '2019-05-07 18:56:40', '2019-05-07 18:57:04', '123456789012', '1234567890'),
(55, 3, '400', '388', 'confirmed', '1223dfff', '2019-05-07 18:57:57', '2019-05-07 18:58:40', '123456789012', '1234567890'),
(56, 3, '300', '300', 'confirmed', '1223dfff', '2019-05-07 19:00:02', '2019-05-07 19:00:24', '123456789012', '1234567890'),
(57, 3, '600', '600', 'confirmed', '1223dfff', '2019-05-07 19:02:16', '2019-05-07 19:02:26', '123456789012', '1234567890'),
(58, 3, '400', '400', 'confirmed', '1223dfff', '2019-05-07 19:08:49', '2019-05-07 19:08:58', '123456789012', '1234567890'),
(59, 3, '1000', '1000', 'confirmed', '1223dfff', '2019-05-07 19:13:08', '2019-05-07 19:13:15', '123456789012', '1234567890'),
(60, 3, '1500', '1462', 'confirmed', '1223dfff', '2019-05-07 19:17:16', '2019-05-07 19:17:30', '123456789012', '1234567890'),
(61, 3, '500', '490', 'confirmed', '1223dfff', '2019-05-07 19:22:56', '2019-05-07 19:23:07', '123456789012', '1234567890'),
(62, 3, '1000', '1000', 'confirmed', '1223dfff', '2019-05-07 19:32:23', '2019-05-07 19:32:34', '123456789012', '1234567890'),
(63, 3, '700', '700', 'pending', '1223dfff', '2019-05-07 19:39:34', '2019-05-07 19:39:34', '123456789012', '1234567890'),
(64, 1, '600', '555', 'confirmed', '1223dfff', '2019-05-07 20:32:01', '2019-05-07 20:32:16', '123456789012', '1234567890'),
(65, 1, '800', '776', 'confirmed', '1223dfff', '2019-05-07 20:40:10', '2019-05-07 20:41:03', '123456789012', '1234567890'),
(66, 1, '800', '800', 'confirmed', '1223dfff', '2019-05-07 20:42:35', '2019-05-07 20:43:03', '123456789012', '1234567890'),
(67, 1, '1600', '1590', 'confirmed', '1223dfff', '2019-05-07 20:50:40', '2019-05-07 20:50:59', '123456789012', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  `unit_price` decimal(10,0) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'pending',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `actual_price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `status`, `created_at`, `updated_at`, `actual_price`) VALUES
(1, 45, 8, 1, '100', 'confirmed', '2019-05-07 15:50:05', '2019-05-07 15:57:10', '100.0'),
(2, 47, 4, 1, '250', 'confirmed', '2019-05-07 16:05:02', '2019-05-07 16:06:02', '250.0'),
(3, 48, 8, 4, '100', 'confirmed', '2019-05-07 16:07:56', '2019-05-07 16:08:52', '400.0'),
(4, 49, 1, 1, '100', 'confirmed', '2019-05-07 16:11:52', '2019-05-07 18:51:31', '100.0'),
(5, 50, 2, 1, '100', 'pending', '2019-05-07 16:12:08', '2019-05-07 16:12:08', '88.0'),
(6, 51, 3, 1, '200', 'pending', '2019-05-07 16:19:05', '2019-05-07 16:19:05', '200.0'),
(7, 52, 1, 1, '100', 'confirmed', '2019-05-07 16:20:22', '2019-05-07 18:52:44', '100.0'),
(8, 53, 1, 4, '100', 'confirmed', '2019-05-07 18:46:21', '2019-05-07 18:51:52', '400.0'),
(9, 54, 2, 6, '100', 'confirmed', '2019-05-07 18:56:40', '2019-05-07 18:57:04', '600.0'),
(10, 55, 2, 4, '100', 'confirmed', '2019-05-07 18:57:58', '2019-05-07 18:58:40', '388.0'),
(11, 56, 2, 3, '100', 'confirmed', '2019-05-07 19:00:02', '2019-05-07 19:00:24', '300.0'),
(12, 57, 2, 6, '100', 'confirmed', '2019-05-07 19:02:16', '2019-05-07 19:02:25', '600.0'),
(13, 58, 2, 4, '100', 'confirmed', '2019-05-07 19:08:49', '2019-05-07 19:08:58', '400.0'),
(14, 59, 3, 5, '200', 'confirmed', '2019-05-07 19:13:08', '2019-05-07 19:13:15', '1000.0'),
(15, 60, 4, 6, '250', 'confirmed', '2019-05-07 19:17:16', '2019-05-07 19:17:30', '1462.5'),
(16, 61, 6, 5, '100', 'confirmed', '2019-05-07 19:22:56', '2019-05-07 19:23:07', '490.0'),
(17, 62, 6, 10, '100', 'confirmed', '2019-05-07 19:32:24', '2019-05-07 19:32:34', '1000.0'),
(18, 63, 2, 1, '100', 'pending', '2019-05-07 19:39:34', '2019-05-07 19:39:34', '100.0'),
(19, 63, 3, 3, '200', 'pending', '2019-05-07 19:39:34', '2019-05-07 19:39:34', '600.0'),
(20, 64, 11, 2, '300', 'confirmed', '2019-05-07 20:32:01', '2019-05-07 20:32:16', '555.0'),
(21, 65, 9, 6, '100', 'confirmed', '2019-05-07 20:40:10', '2019-05-07 20:40:55', '588.0'),
(22, 65, 8, 2, '100', 'confirmed', '2019-05-07 20:40:10', '2019-05-07 20:41:02', '188.0'),
(23, 66, 1, 5, '100', 'confirmed', '2019-05-07 20:42:35', '2019-05-07 20:42:57', '500.0'),
(24, 66, 9, 3, '100', 'confirmed', '2019-05-07 20:42:36', '2019-05-07 20:43:03', '300.0'),
(25, 67, 1, 6, '100', 'confirmed', '2019-05-07 20:50:40', '2019-05-07 20:50:50', '600.0'),
(26, 67, 7, 5, '200', 'confirmed', '2019-05-07 20:50:40', '2019-05-07 20:50:59', '990.0');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` text,
  `price` float DEFAULT NULL,
  `quantity_in_stock` int(11) DEFAULT NULL,
  `description` text,
  `category_id` bigint(20) DEFAULT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `price`, `quantity_in_stock`, `description`, `category_id`, `brand_id`, `user_id`, `coupon_id`, `created_at`, `updated_at`) VALUES
(1, 'pro1', NULL, 100, 6, 'product', 9, 9, 1, NULL, '2019-05-05 22:56:48', '2019-05-07 20:50:59'),
(2, 'pr', NULL, 100, 9, 'prikk', 1, 1, 3, 1, '2019-05-06 20:47:54', '2019-05-07 19:29:57'),
(3, 'pro3', NULL, 200, 10, 'eeeeee', 1, 1, 3, 1, '2019-05-06 20:49:30', '2019-05-06 20:49:30'),
(4, 'pro4', NULL, 250, 12, 'kkkkkkkkkk', 2, 7, 3, 2, '2019-05-06 22:44:02', '2019-05-06 22:44:02'),
(5, 'pro3', NULL, 300, 12, '0000000000000', 2, 9, 3, 2, '2019-05-06 22:44:28', '2019-05-06 22:44:28'),
(6, 'pro5', NULL, 100, 100, '000000000000000', 2, 7, 3, 3, '2019-05-06 22:50:16', '2019-05-06 22:50:16'),
(7, 'pro5', NULL, 200, 5, '00000000000000', 2, 8, 1, 5, '2019-05-07 01:20:30', '2019-05-07 20:50:59'),
(8, 'pro3', NULL, 100, 2, 'hhhhhhhhhhh', 3, 9, 1, 6, '2019-05-07 01:27:46', '2019-05-07 20:41:03'),
(9, 'nnn', NULL, 100, 3, 'wwwwwwww', 1, 8, 1, 7, '2019-05-07 01:38:54', '2019-05-07 20:43:03'),
(10, 'baby wear1', NULL, 200, 5, 'baby wear', 5, 8, 3, 5, '2019-05-07 20:04:29', '2019-05-07 20:04:29'),
(11, 'baby wear2', NULL, 300, 1, 'girl baby wear', 5, 8, 1, 2, '2019-05-07 20:06:34', '2019-05-07 20:32:16'),
(12, 'book', NULL, 50, 3, 'book', 10, 3, 1, 6, '2019-05-07 20:07:40', '2019-05-07 20:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20190425200926'),
('20190425201755'),
('20190425205907'),
('20190425205910'),
('20190425222437'),
('20190426090013'),
('20190426090049'),
('20190426104229'),
('20190426134651'),
('20190426145920'),
('20190426162540'),
('20190426185952'),
('20190427131607'),
('20190427161643'),
('20190428113008'),
('20190428133216'),
('20190430200855'),
('20190430201420'),
('20190430201621'),
('20190430201707'),
('20190430201833'),
('20190430201916'),
('20190430202640'),
('20190430202823'),
('20190430202859'),
('20190430202951'),
('20190430203031'),
('20190430212940'),
('20190430213510'),
('20190501130542'),
('20190502070809'),
('20190502183617');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` text,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `summary`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'store1', 'storegg', 1, '2019-05-05 22:52:48', '2019-05-05 22:52:48'),
(2, 'store2', 'wwwwwwwwwwwww', 2, '2019-05-06 12:55:01', '2019-05-06 12:55:01'),
(5, 'store4', 'xx', 3, '2019-05-06 20:04:53', '2019-05-06 20:04:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `is_seller` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `created_at`, `updated_at`, `name`, `avatar`, `is_seller`) VALUES
(1, 'youmna@gmail.com', '$2a$11$YboTwrKN0FYZYOZa/xSuMerN8F/FUzr..kJdWvvvL5.sFXlNkk/mm', NULL, NULL, NULL, '2019-05-05 22:51:55', '2019-05-07 01:12:45', 'youmna', NULL, 1),
(2, 'buyer@x.com', '$2a$11$HrrNaV12y.lHdnX0njWaPuUDsROORzRssBiwxq.vXauLdnIcoQGUG', NULL, NULL, NULL, '2019-05-06 12:05:01', '2019-05-06 12:55:01', 'buyer', NULL, 1),
(3, 'new@gmail.com', '$2a$11$7Ud2zLoT3eiw.S27P5BunObe1neH9bfegaSYhql2ztrz8RROh51VO', NULL, NULL, NULL, '2019-05-06 12:58:59', '2019-05-06 12:59:54', 'new', NULL, 1),
(4, 'test@email.com', '$2a$11$hWdejPiuu0IzjFDb/aKSTeepunjdZAlJdVdZCAsetwdTU62VSK.zi', NULL, NULL, NULL, '2019-05-06 20:06:07', '2019-05-06 20:06:07', 'test', NULL, 0),
(5, 'buyer2@x.com', '$2a$11$MEPCRlajOebduwww8aaSXeZTlsgygwFrkr7vUEoe31mofVpkNYVha', NULL, NULL, NULL, '2019-05-06 23:04:20', '2019-05-06 23:04:20', 'buyer2', NULL, 0),
(6, 'user@v.com', '$2a$11$dDFU9mnCDml.9JxdzUjiwueAGwUPLZvTppJ6mV06L5nWIT0pR1oMq', NULL, NULL, NULL, '2019-05-07 16:11:31', '2019-05-07 16:11:31', 'user', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_admin_comments`
--
ALTER TABLE `active_admin_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`),
  ADD KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  ADD KEY `index_active_admin_comments_on_namespace` (`namespace`);

--
-- Indexes for table `active_storage_attachments`
--
ALTER TABLE `active_storage_attachments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  ADD KEY `index_active_storage_attachments_on_blob_id` (`blob_id`);

--
-- Indexes for table `active_storage_blobs`
--
ALTER TABLE `active_storage_blobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_active_storage_blobs_on_key` (`key`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_admin_users_on_email` (`email`),
  ADD UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`);

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_carts_on_user_id` (`user_id`),
  ADD KEY `index_carts_on_product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_orders_on_user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_order_products_on_order_id` (`order_id`),
  ADD KEY `index_order_products_on_product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_products_on_category_id` (`category_id`),
  ADD KEY `index_products_on_brand_id` (`brand_id`),
  ADD KEY `index_products_on_user_id` (`user_id`),
  ADD KEY `index_products_on_coupon_id` (`coupon_id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_stores_on_user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_users_on_email` (`email`),
  ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_admin_comments`
--
ALTER TABLE `active_admin_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `active_storage_attachments`
--
ALTER TABLE `active_storage_attachments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `active_storage_blobs`
--
ALTER TABLE `active_storage_blobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `active_storage_attachments`
--
ALTER TABLE `active_storage_attachments`
  ADD CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `fk_rails_916f2a1419` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_rails_ea59a35211` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_rails_f868b47f6a` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `fk_rails_96c0709f78` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_rails_f40b8ccee4` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_rails_71586055c8` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`),
  ADD CONSTRAINT `fk_rails_dee2631783` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_rails_f3b4d49caa` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `fk_rails_fb915499a4` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `fk_rails_b526db2ffb` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
