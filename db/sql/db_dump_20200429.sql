-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 29, 2020 at 04:29 PM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `sweet_corner`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `statusId` int(10) UNSIGNED NOT NULL,
  `userId` int(10) UNSIGNED DEFAULT NULL,
  `lastInteraction` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `pid`, `statusId`, `userId`, `lastInteraction`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '0e24cf7a-17e6-11ea-931b-a4db300c2566', 2, NULL, '2019-12-05 21:05:43', '2019-12-05 21:05:43', '2019-12-05 21:05:43', NULL),
(2, '7ad21a4c-1bc6-11ea-931b-a4db300c2566', 2, NULL, '2019-12-10 19:29:46', '2019-12-10 19:29:46', '2019-12-10 19:29:46', NULL),
(3, '48588aa8-1bc8-11ea-931b-a4db300c2566', 2, NULL, '2019-12-10 19:42:40', '2019-12-10 19:42:40', '2019-12-10 19:42:40', NULL),
(4, '9fbdb193-1bc8-11ea-931b-a4db300c2566', 2, NULL, '2019-12-10 19:45:07', '2019-12-10 19:45:07', '2019-12-10 19:45:07', NULL),
(5, '165c9618-1bc9-11ea-931b-a4db300c2566', 2, NULL, '2019-12-10 19:48:26', '2019-12-10 19:48:26', '2019-12-10 19:48:26', NULL),
(6, '27ad8cc3-1bc9-11ea-931b-a4db300c2566', 2, NULL, '2019-12-10 19:48:55', '2019-12-10 19:48:55', '2019-12-10 19:48:55', NULL),
(7, '2b555a3e-1bca-11ea-931b-a4db300c2566', 2, NULL, '2019-12-10 19:56:11', '2019-12-10 19:56:11', '2019-12-10 19:56:11', NULL),
(8, 'ab1abef5-1bcc-11ea-931b-a4db300c2566', 2, NULL, '2019-12-10 20:14:04', '2019-12-10 20:14:04', '2019-12-10 20:14:04', NULL),
(9, '03b087a2-1bd4-11ea-931b-a4db300c2566', 2, NULL, '2019-12-10 21:06:39', '2019-12-10 21:06:39', '2019-12-10 21:06:39', NULL),
(10, '39f9e7ff-1d56-11ea-931b-a4db300c2566', 2, NULL, '2019-12-12 19:11:16', '2019-12-12 19:11:16', '2019-12-12 19:11:16', NULL),
(11, '032b73ac-1d61-11ea-931b-a4db300c2566', 2, NULL, '2019-12-12 20:28:29', '2019-12-12 20:28:29', '2019-12-12 20:28:29', NULL),
(12, '181731d9-1d61-11ea-931b-a4db300c2566', 2, NULL, '2019-12-12 20:29:04', '2019-12-12 20:29:04', '2019-12-12 20:29:04', NULL),
(13, '8e292af2-221a-11ea-931b-a4db300c2566', 2, NULL, '2019-12-18 20:46:43', '2019-12-18 20:46:43', '2019-12-18 20:46:43', NULL),
(14, '5bfaf754-661b-11ea-9633-a4db300c2566', 2, NULL, '2020-03-14 10:43:48', '2020-03-14 10:43:48', '2020-03-14 10:43:48', NULL),
(15, '38ba63bb-6623-11ea-9633-a4db300c2566', 2, NULL, '2020-03-14 11:40:04', '2020-03-14 11:40:04', '2020-03-14 11:40:04', NULL),
(16, 'b8ebd4ac-66fc-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-15 13:37:00', '2020-03-15 13:37:00', '2020-03-15 13:37:00', NULL),
(17, 'dfb52e8a-66fe-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-15 13:52:24', '2020-03-15 13:52:24', '2020-03-15 13:52:24', NULL),
(18, '77545a21-670d-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-15 15:36:52', '2020-03-15 15:36:52', '2020-03-15 15:36:52', NULL),
(19, '9180517a-6719-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-15 17:03:30', '2020-03-15 17:03:30', '2020-03-15 17:03:30', NULL),
(20, '6855be10-673e-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-15 21:27:12', '2020-03-15 21:27:12', '2020-03-15 21:27:12', NULL),
(21, 'd9779acc-673e-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-15 21:30:22', '2020-03-15 21:30:22', '2020-03-15 21:30:22', NULL),
(22, '4d5c7ad7-673f-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-15 21:33:36', '2020-03-15 21:33:36', '2020-03-15 21:33:36', NULL),
(23, '79190b89-673f-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-15 21:34:50', '2020-03-15 21:34:50', '2020-03-15 21:34:50', NULL),
(24, '828117e1-6740-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-15 21:42:15', '2020-03-15 21:42:15', '2020-03-15 21:42:15', NULL),
(25, 'cd09d520-6740-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-15 21:44:20', '2020-03-15 21:44:20', '2020-03-15 21:44:20', NULL),
(26, '8d00efd3-6741-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-15 21:49:42', '2020-03-15 21:49:42', '2020-03-15 21:49:42', NULL),
(27, '3657464b-6807-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-16 21:24:37', '2020-03-16 21:24:37', '2020-03-16 21:24:37', NULL),
(28, '5d3195fa-6807-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-16 21:25:42', '2020-03-16 21:25:42', '2020-03-16 21:25:42', NULL),
(29, 'dec2ed84-6807-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-16 21:29:19', '2020-03-16 21:29:19', '2020-03-16 21:29:19', NULL),
(30, 'af4a9ea0-6808-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-16 21:35:09', '2020-03-16 21:35:09', '2020-03-16 21:35:09', NULL),
(31, '3d9be13b-680a-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-16 21:46:18', '2020-03-16 21:46:18', '2020-03-16 21:46:18', NULL),
(32, '5af0965e-680a-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-16 21:47:07', '2020-03-16 21:47:07', '2020-03-16 21:47:07', NULL),
(33, '99b57de3-680a-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-16 21:48:52', '2020-03-16 21:48:52', '2020-03-16 21:48:52', NULL),
(34, 'bf12bc59-680a-11ea-8abe-a4db300c2566', 2, NULL, '2020-03-16 21:49:55', '2020-03-16 21:49:55', '2020-03-16 21:49:55', NULL),
(35, 'd1736e9d-6a5d-11ea-b1a9-00ffaad58ca9', 2, NULL, '2020-03-19 20:49:36', '2020-03-19 20:49:36', '2020-03-19 20:49:36', NULL),
(36, '232a37e4-6a5e-11ea-b1a9-00ffaad58ca9', 2, NULL, '2020-03-19 20:51:53', '2020-03-19 20:51:53', '2020-03-19 20:51:53', NULL),
(37, '604a2e0a-6a5e-11ea-b1a9-00ffaad58ca9', 2, NULL, '2020-03-19 20:53:36', '2020-03-19 20:53:36', '2020-03-19 20:53:36', NULL),
(38, 'bb66bb0e-6bdc-11ea-89c7-00ffaad58ca9', 2, NULL, '2020-03-21 18:30:36', '2020-03-21 18:30:36', '2020-03-21 18:30:36', NULL),
(39, '0da2feff-6c55-11ea-89c7-00ffaad58ca9', 2, NULL, '2020-03-22 08:51:54', '2020-03-22 08:51:54', '2020-03-22 08:51:54', NULL),
(40, 'dee75715-6c55-11ea-89c7-00ffaad58ca9', 2, NULL, '2020-03-22 08:57:45', '2020-03-22 08:57:45', '2020-03-22 08:57:45', NULL),
(41, '7272da44-6c56-11ea-89c7-00ffaad58ca9', 2, NULL, '2020-03-22 09:01:53', '2020-03-22 09:01:53', '2020-03-22 09:01:53', NULL),
(42, 'd7a2c07f-6c56-11ea-89c7-00ffaad58ca9', 2, NULL, '2020-03-22 09:04:42', '2020-03-22 09:04:42', '2020-03-22 09:04:42', NULL),
(43, 'f6b08012-6c79-11ea-89c7-00ffaad58ca9', 2, NULL, '2020-03-22 13:16:07', '2020-03-22 13:16:07', '2020-03-22 13:16:07', NULL),
(44, '381698cc-6c7c-11ea-89c7-00ffaad58ca9', 2, NULL, '2020-03-22 13:32:16', '2020-03-22 13:32:16', '2020-03-22 13:32:16', NULL),
(45, '0cff6328-6c7d-11ea-89c7-00ffaad58ca9', 2, NULL, '2020-03-22 13:38:13', '2020-03-22 13:38:13', '2020-03-22 13:38:13', NULL),
(46, '108e8f27-7eb8-11ea-a6ad-00ffaad58ca9', 2, NULL, '2020-04-14 18:26:00', '2020-04-14 18:26:00', '2020-04-14 18:26:00', NULL),
(47, 'c3993ec2-883b-11ea-b95a-00ffaad58ca9', 2, NULL, '2020-04-26 21:01:25', '2020-04-26 21:01:25', '2020-04-26 21:01:25', NULL),
(48, 'd6efd8db-89a9-11ea-b793-00ffaad58ca9', 2, NULL, '2020-04-28 16:41:53', '2020-04-28 16:41:53', '2020-04-28 16:41:53', NULL),
(49, '7459b450-89aa-11ea-b793-00ffaad58ca9', 2, NULL, '2020-04-28 16:46:17', '2020-04-28 16:46:17', '2020-04-28 16:46:17', NULL),
(50, '8009b9c0-89c9-11ea-b793-00ffaad58ca9', 2, NULL, '2020-04-28 20:28:31', '2020-04-28 20:28:31', '2020-04-28 20:28:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cartItems`
--

DROP TABLE IF EXISTS `cartItems`;
CREATE TABLE `cartItems` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `cartId` int(10) UNSIGNED NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cartItems`
--

INSERT INTO `cartItems` (`id`, `pid`, `cartId`, `productId`, `quantity`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'ab23a10a-1bcc-11ea-931b-a4db300c2566', 8, 5, 1, '2019-12-10 20:14:04', '2019-12-10 20:14:04', NULL),
(2, '03b800ee-1bd4-11ea-931b-a4db300c2566', 9, 5, 1, '2019-12-10 21:06:39', '2019-12-10 21:06:39', NULL),
(3, '3a01d116-1d56-11ea-931b-a4db300c2566', 10, 5, 1, '2019-12-12 19:11:16', '2019-12-12 19:11:16', NULL),
(4, '033027eb-1d61-11ea-931b-a4db300c2566', 11, 2, 1, '2019-12-12 20:28:29', '2019-12-12 20:28:29', NULL),
(5, '181ddfde-1d61-11ea-931b-a4db300c2566', 12, 2, 2, '2019-12-12 20:29:04', '2019-12-12 20:29:22', NULL),
(6, '41a3444c-1d61-11ea-931b-a4db300c2566', 12, 4, 2, '2019-12-12 20:30:13', '2019-12-12 20:30:45', NULL),
(7, '79df57f1-1d61-11ea-931b-a4db300c2566', 12, 6, 55, '2019-12-12 20:31:48', '2019-12-14 18:09:12', NULL),
(8, '8e3086f5-221a-11ea-931b-a4db300c2566', 13, 5, 3, '2019-12-18 20:46:43', '2019-12-18 20:46:43', NULL),
(9, 'b2cd411a-221a-11ea-931b-a4db300c2566', 13, 9, 3, '2019-12-18 20:47:45', '2019-12-18 20:47:45', NULL),
(10, 'e8afec0f-221a-11ea-931b-a4db300c2566', 13, 7, 3, '2019-12-18 20:49:15', '2019-12-18 20:49:15', NULL),
(11, '459b95e1-221d-11ea-931b-a4db300c2566', 13, 8, 3, '2019-12-18 21:06:10', '2019-12-18 21:06:10', NULL),
(12, 'b0dd227e-45fa-11ea-bc1f-a4db300c2566', 13, 2, 4, '2020-02-02 12:29:19', '2020-03-12 20:55:40', NULL),
(13, '5bff9047-661b-11ea-9633-a4db300c2566', 14, 2, 4, '2020-03-14 10:43:48', '2020-03-14 10:43:48', NULL),
(14, '9f3bc02f-661b-11ea-9633-a4db300c2566', 14, 6, 3, '2020-03-14 10:45:40', '2020-03-14 10:45:40', NULL),
(15, '38beb87e-6623-11ea-9633-a4db300c2566', 15, 5, 4, '2020-03-14 11:40:05', '2020-03-14 11:40:05', NULL),
(16, 'b8efaf95-66fc-11ea-8abe-a4db300c2566', 16, 5, 3, '2020-03-15 13:37:00', '2020-03-15 13:37:00', NULL),
(17, 'bde846f9-66fc-11ea-8abe-a4db300c2566', 16, 4, 3, '2020-03-15 13:37:09', '2020-03-15 13:37:09', NULL),
(18, 'dfb9c968-66fe-11ea-8abe-a4db300c2566', 17, 2, 3, '2020-03-15 13:52:24', '2020-03-15 13:52:24', NULL),
(19, '77596b3c-670d-11ea-8abe-a4db300c2566', 18, 8, 4, '2020-03-15 15:36:52', '2020-03-15 15:36:52', NULL),
(20, '9185924d-6719-11ea-8abe-a4db300c2566', 19, 3, 2, '2020-03-15 17:03:30', '2020-03-15 17:03:30', NULL),
(21, '685a57a7-673e-11ea-8abe-a4db300c2566', 20, 5, 3, '2020-03-15 21:27:12', '2020-03-15 21:27:12', NULL),
(22, 'd97b4c42-673e-11ea-8abe-a4db300c2566', 21, 4, 3, '2020-03-15 21:30:22', '2020-03-15 21:30:22', NULL),
(23, '4d60eb67-673f-11ea-8abe-a4db300c2566', 22, 5, 3, '2020-03-15 21:33:36', '2020-03-15 21:33:36', NULL),
(24, '791cd2a0-673f-11ea-8abe-a4db300c2566', 23, 3, 2, '2020-03-15 21:34:50', '2020-03-15 21:34:50', NULL),
(25, '8284baad-6740-11ea-8abe-a4db300c2566', 24, 2, 2, '2020-03-15 21:42:15', '2020-03-15 21:42:15', NULL),
(26, 'cd0d7ca5-6740-11ea-8abe-a4db300c2566', 25, 1, 3, '2020-03-15 21:44:20', '2020-03-15 21:44:20', NULL),
(27, '8d04cafe-6741-11ea-8abe-a4db300c2566', 26, 7, 3, '2020-03-15 21:49:42', '2020-03-15 21:49:42', NULL),
(28, '365bd27f-6807-11ea-8abe-a4db300c2566', 27, 2, 2, '2020-03-16 21:24:37', '2020-03-16 21:24:37', NULL),
(29, '5d347a66-6807-11ea-8abe-a4db300c2566', 28, 2, 3, '2020-03-16 21:25:42', '2020-03-16 21:25:42', NULL),
(30, 'dec7fdcc-6807-11ea-8abe-a4db300c2566', 29, 2, 3, '2020-03-16 21:29:19', '2020-03-16 21:29:19', NULL),
(31, 'af4f3b70-6808-11ea-8abe-a4db300c2566', 30, 2, 2, '2020-03-16 21:35:09', '2020-03-16 21:35:09', NULL),
(32, '3da07b60-680a-11ea-8abe-a4db300c2566', 31, 5, 3, '2020-03-16 21:46:18', '2020-03-16 21:46:18', NULL),
(33, '5af44a8f-680a-11ea-8abe-a4db300c2566', 32, 6, 1, '2020-03-16 21:47:07', '2020-03-16 21:47:07', NULL),
(34, '99ba4c1d-680a-11ea-8abe-a4db300c2566', 33, 6, 2, '2020-03-16 21:48:52', '2020-03-16 21:48:52', NULL),
(35, 'bf15ba38-680a-11ea-8abe-a4db300c2566', 34, 1, 2, '2020-03-16 21:49:55', '2020-03-16 21:49:55', NULL),
(36, 'd1771456-6a5d-11ea-b1a9-00ffaad58ca9', 35, 2, 2, '2020-03-19 20:49:36', '2020-03-19 20:49:36', NULL),
(37, '232df0ef-6a5e-11ea-b1a9-00ffaad58ca9', 36, 7, 3, '2020-03-19 20:51:53', '2020-03-19 20:51:53', NULL),
(38, '604d680d-6a5e-11ea-b1a9-00ffaad58ca9', 37, 4, 3, '2020-03-19 20:53:36', '2020-03-19 20:53:36', NULL),
(39, 'bb694a65-6bdc-11ea-89c7-00ffaad58ca9', 38, 4, 3, '2020-03-21 18:30:36', '2020-03-21 18:30:36', NULL),
(40, 'ce6a2072-6bdc-11ea-89c7-00ffaad58ca9', 38, 7, 2, '2020-03-21 18:31:08', '2020-03-21 18:31:08', NULL),
(41, 'd5ef3efc-6bdc-11ea-89c7-00ffaad58ca9', 38, 1, 5, '2020-03-21 18:31:21', '2020-03-21 18:31:21', NULL),
(42, '0da70e36-6c55-11ea-89c7-00ffaad58ca9', 39, 4, 2, '2020-03-22 08:51:54', '2020-03-22 08:51:54', NULL),
(43, '12581181-6c55-11ea-89c7-00ffaad58ca9', 39, 6, 2, '2020-03-22 08:52:02', '2020-03-22 08:52:02', NULL),
(44, 'deebad25-6c55-11ea-89c7-00ffaad58ca9', 40, 3, 2, '2020-03-22 08:57:45', '2020-03-22 08:57:45', NULL),
(45, 'e497650f-6c55-11ea-89c7-00ffaad58ca9', 40, 5, 3, '2020-03-22 08:57:55', '2020-03-22 08:57:55', NULL),
(46, '72786ae6-6c56-11ea-89c7-00ffaad58ca9', 41, 2, 2, '2020-03-22 09:01:53', '2020-03-22 09:01:53', NULL),
(47, '79d37394-6c56-11ea-89c7-00ffaad58ca9', 41, 4, 3, '2020-03-22 09:02:05', '2020-03-22 09:02:05', NULL),
(48, 'd7a827ea-6c56-11ea-89c7-00ffaad58ca9', 42, 5, 2, '2020-03-22 09:04:42', '2020-03-22 09:04:42', NULL),
(49, 'db749a2f-6c56-11ea-89c7-00ffaad58ca9', 42, 7, 2, '2020-03-22 09:04:49', '2020-03-22 09:04:49', NULL),
(50, 'f6b5ef18-6c79-11ea-89c7-00ffaad58ca9', 43, 5, 2, '2020-03-22 13:16:07', '2020-03-22 13:16:07', NULL),
(51, 'fb17b36b-6c79-11ea-89c7-00ffaad58ca9', 43, 9, 4, '2020-03-22 13:16:14', '2020-03-22 13:16:14', NULL),
(52, '381aa647-6c7c-11ea-89c7-00ffaad58ca9', 44, 1, 3, '2020-03-22 13:32:16', '2020-03-22 13:32:16', NULL),
(53, '3c7bcc42-6c7c-11ea-89c7-00ffaad58ca9', 44, 4, 2, '2020-03-22 13:32:23', '2020-03-22 13:32:23', NULL),
(54, '408c9f62-6c7c-11ea-89c7-00ffaad58ca9', 44, 9, 1, '2020-03-22 13:32:30', '2020-03-22 13:32:30', NULL),
(55, '0d04a1ab-6c7d-11ea-89c7-00ffaad58ca9', 45, 9, 3, '2020-03-22 13:38:13', '2020-03-22 13:38:13', NULL),
(56, '12743eb2-6c7d-11ea-89c7-00ffaad58ca9', 45, 1, 2, '2020-03-22 13:38:22', '2020-03-22 13:38:22', NULL),
(57, '10947dd7-7eb8-11ea-a6ad-00ffaad58ca9', 46, 6, 3, '2020-04-14 18:26:00', '2020-04-14 18:26:00', NULL),
(58, 'c3a57a47-883b-11ea-b95a-00ffaad58ca9', 47, 5, 3, '2020-04-26 21:01:25', '2020-04-26 21:01:25', NULL),
(59, 'd6f866e4-89a9-11ea-b793-00ffaad58ca9', 48, 6, 3, '2020-04-28 16:41:53', '2020-04-28 16:41:53', NULL),
(60, '745de6ef-89aa-11ea-b793-00ffaad58ca9', 49, 2, 3, '2020-04-28 16:46:17', '2020-04-28 16:46:17', NULL),
(61, '800d8449-89c9-11ea-b793-00ffaad58ca9', 50, 3, 3, '2020-04-28 20:28:31', '2020-04-28 20:28:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cartStatuses`
--

DROP TABLE IF EXISTS `cartStatuses`;
CREATE TABLE `cartStatuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `mid` varchar(39) NOT NULL,
  `name` varchar(63) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cartStatuses`
--

INSERT INTO `cartStatuses` (`id`, `mid`, `name`, `description`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'new', 'New', 'Cart is new and empty', '2019-12-05 20:41:06', '2019-12-05 20:41:06', NULL),
(2, 'active', 'Active', 'Cart has items but the order has not been completed', '2019-12-05 20:41:06', '2019-12-05 20:41:06', NULL),
(3, 'closed', 'Closed', 'The order has been completed and the cart is closed', '2019-12-05 20:41:06', '2019-12-05 20:41:06', NULL),
(4, 'canceled', 'Canceled', 'The order has been canceled and the cart is closed', '2019-12-05 20:41:06', '2019-12-05 20:41:06', NULL),
(5, 'inactive', 'Inactive', 'Cart is no longer the currently active cart, but can be reactivated', '2019-12-05 20:41:06', '2019-12-05 20:41:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `createdById` int(10) UNSIGNED NOT NULL,
  `altText` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `type` enum('full_image','thumbnail') NOT NULL DEFAULT 'full_image',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `pid`, `productId`, `createdById`, `altText`, `name`, `file`, `type`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '4d5411c9-13cc-11ea-931b-a4db300c2566', 1, 1, 'Strawberry cupcake', 'Strawberry Delight', 'cupcake_sq_1.jpg', 'full_image', '2019-11-30 15:51:17', '2019-11-30 15:51:17', NULL),
(2, '4d5417d5-13cc-11ea-931b-a4db300c2566', 1, 1, 'Strawberry cupcake', 'Strawberry Delight', 'cupcake_sq_1.jpg', 'thumbnail', '2019-11-30 15:51:17', '2019-11-30 15:51:17', NULL),
(3, '4d541ab5-13cc-11ea-931b-a4db300c2566', 2, 1, 'Berry cupcake', 'Purple Dream', 'cupcake_sq_2.jpg', 'full_image', '2019-11-30 15:51:17', '2019-11-30 15:51:17', NULL),
(4, '4d541c70-13cc-11ea-931b-a4db300c2566', 2, 1, 'Berry cupcake', 'Purple Dream', 'cupcake_sq_2.jpg', 'thumbnail', '2019-11-30 15:51:17', '2019-11-30 15:51:17', NULL),
(5, '4d541e16-13cc-11ea-931b-a4db300c2566', 3, 1, 'Mini strawberry cupcake', 'Mini Berry', 'cupcake_sq_3.jpg', 'full_image', '2019-11-30 15:51:17', '2019-11-30 15:51:17', NULL),
(6, '4d541fc6-13cc-11ea-931b-a4db300c2566', 3, 1, 'Mini strawberry cupcake', 'Mini Berry', 'cupcake_sq_3.jpg', 'thumbnail', '2019-11-30 15:51:17', '2019-11-30 15:51:17', NULL),
(7, '4d542169-13cc-11ea-931b-a4db300c2566', 4, 1, 'Unicorn tear sparkling cupcake', 'Unicorn Tear', 'cupcake_sq_4.jpg', 'full_image', '2019-11-30 15:51:17', '2019-11-30 15:51:17', NULL),
(8, '4d542318-13cc-11ea-931b-a4db300c2566', 4, 1, 'Unicorn tear sparkling cupcake', 'Unicorn Tear', 'cupcake_sq_4.jpg', 'thumbnail', '2019-11-30 15:51:17', '2019-11-30 15:51:17', NULL),
(9, '4d5424cc-13cc-11ea-931b-a4db300c2566', 5, 1, 'Red and yellow vanilla cupcake', 'Pearl Rose', 'cupcake_sq_5.jpg', 'full_image', '2019-11-30 15:51:17', '2019-11-30 15:51:17', NULL),
(10, '4d54265d-13cc-11ea-931b-a4db300c2566', 5, 1, 'Red and yellow vanilla cupcake', 'Pearl Rose', 'cupcake_sq_5.jpg', 'thumbnail', '2019-11-30 15:51:17', '2019-11-30 15:51:17', NULL),
(11, '4d5427fb-13cc-11ea-931b-a4db300c2566', 6, 1, 'Silky red cupcake loaded with frosting', 'Red Silk', 'cupcake_sq_6.jpg', 'full_image', '2019-11-30 15:51:17', '2019-11-30 15:51:17', NULL),
(12, '4d5429af-13cc-11ea-931b-a4db300c2566', 6, 1, 'Silky red cupcake loaded with frosting', 'Red Silk', 'cupcake_sq_6.jpg', 'thumbnail', '2019-11-30 15:51:17', '2019-11-30 15:51:17', NULL),
(13, '4d542b66-13cc-11ea-931b-a4db300c2566', 7, 1, 'Vanilla cupcake with vanilla frosting', 'Vanilla Stack Cake', 'cupcake_sq_7.jpg', 'full_image', '2019-11-30 15:51:17', '2019-11-30 15:51:17', NULL),
(14, '4d542d0e-13cc-11ea-931b-a4db300c2566', 7, 1, 'Vanilla cupcake with vanilla frosting', 'Vanilla Stack Cake', 'cupcake_sq_7.jpg', 'thumbnail', '2019-11-30 15:51:17', '2019-11-30 15:51:17', NULL),
(15, '4d542eac-13cc-11ea-931b-a4db300c2566', 8, 1, 'Blueberry cupcake piled high with toppings', 'Blueberry Malt Cake', 'cupcake_sq_8.jpg', 'full_image', '2019-11-30 15:51:17', '2019-11-30 15:51:17', NULL),
(16, '4d54310c-13cc-11ea-931b-a4db300c2566', 8, 1, 'Blueberry cupcake piled high with toppings', 'Blueberry Malt Cake', 'cupcake_sq_8.jpg', 'thumbnail', '2019-11-30 15:51:17', '2019-11-30 15:51:17', NULL),
(17, '4d5433aa-13cc-11ea-931b-a4db300c2566', 9, 1, 'Lemon cupcake with piled high lemon frosting', 'Double Lemon', 'cupcake_sq_9.jpg', 'full_image', '2019-11-30 15:51:17', '2019-11-30 15:51:17', NULL),
(18, '4d5436a3-13cc-11ea-931b-a4db300c2566', 9, 1, 'Lemon cupcake with piled high lemon frosting', 'Double Lemon', 'cupcake_sq_9.jpg', 'thumbnail', '2019-11-30 15:51:17', '2019-11-30 15:51:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `statusId` int(10) UNSIGNED NOT NULL,
  `cartId` int(10) UNSIGNED DEFAULT NULL,
  `firstName` char(255) NOT NULL,
  `lastName` char(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `pid`, `statusId`, `cartId`, `firstName`, `lastName`, `email`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'aca40dca-6712-11ea-8abe-a4db300c2566', 1, 18, 'Tatumn', 'Walter', 'tatumnwalter@gmail.com', '2020-03-15 16:14:09', '2020-03-15 16:14:09', NULL),
(2, '41251119-6716-11ea-8abe-a4db300c2566', 1, 18, 'Tatumn', 'Walter', 'tatumnwalter@gmail.com', '2020-03-15 16:39:46', '2020-03-15 16:39:46', NULL),
(3, '217e96f1-6717-11ea-8abe-a4db300c2566', 1, 18, 'Tatumn', 'Walter', 'tatumnwalter@gmail.com', '2020-03-15 16:46:03', '2020-03-15 16:46:03', NULL),
(4, '5c93e5fb-6717-11ea-8abe-a4db300c2566', 1, 18, 'Tatumn', 'Walter', 'tatumnwalter@gmail.com', '2020-03-15 16:47:42', '2020-03-15 16:47:42', NULL),
(5, '941c8849-6717-11ea-8abe-a4db300c2566', 1, 18, 'Tatumn', 'Walter', 'tatumnwalter@gmail.com', '2020-03-15 16:49:15', '2020-03-15 16:49:15', NULL),
(6, 'e763b9a7-671b-11ea-8abe-a4db300c2566', 1, 19, 'Tatumn', 'Walter', 'tatumnwalter@gmail.com', '2020-03-15 17:20:13', '2020-03-15 17:20:13', NULL),
(7, '6e232780-673e-11ea-8abe-a4db300c2566', 1, 20, 'Tatumn', 'Walter', 'tatumnwalter@gmail.com', '2020-03-15 21:27:22', '2020-03-15 21:27:22', NULL),
(8, 'e9a30089-673e-11ea-8abe-a4db300c2566', 1, 21, 'The', 'Feng', 'email@testing.com', '2020-03-15 21:30:49', '2020-03-15 21:30:49', NULL),
(9, '5992ee84-673f-11ea-8abe-a4db300c2566', 1, 22, 'The', 'Feng', 'ea@test.com', '2020-03-15 21:33:57', '2020-03-15 21:33:57', NULL),
(10, '7cb2e7b2-673f-11ea-8abe-a4db300c2566', 1, 23, 'Tatumn', 'Walter', 'tatumn.walt007@gmail.com', '2020-03-15 21:34:56', '2020-03-15 21:34:56', NULL),
(11, '8ddbc59d-6740-11ea-8abe-a4db300c2566', 1, 24, 'Te', 'Feng', 'te@g.com', '2020-03-15 21:42:34', '2020-03-15 21:42:34', NULL),
(12, 'd22fd115-6740-11ea-8abe-a4db300c2566', 1, 25, 'Tatumn', 'Walter', 'twalter@usc.edu', '2020-03-15 21:44:29', '2020-03-15 21:44:29', NULL),
(13, '919f03bd-6741-11ea-8abe-a4db300c2566', 1, 26, 'Tatumn', 'Walter', 'tatumn.walt007@gmail.com', '2020-03-15 21:49:50', '2020-03-15 21:49:50', NULL),
(14, '3b058483-6807-11ea-8abe-a4db300c2566', 1, 27, 'Tatumn', 'Walter', 'tatumn.walt007@gmail.com', '2020-03-16 21:24:45', '2020-03-16 21:24:45', NULL),
(15, '6116b858-6807-11ea-8abe-a4db300c2566', 1, 28, 'Tatumn', 'Walter', 'tatumn.walt007@gmail.com', '2020-03-16 21:25:49', '2020-03-16 21:25:49', NULL),
(16, 'e4184fdc-6807-11ea-8abe-a4db300c2566', 1, 29, 'Tatumn', 'Walter', 'tatumn.walt007@gmail.com', '2020-03-16 21:29:28', '2020-03-16 21:29:28', NULL),
(17, 'b3855cbe-6808-11ea-8abe-a4db300c2566', 1, 30, 'Tatumn', 'Walter', 'tatumn.walt007@gmail.com', '2020-03-16 21:35:16', '2020-03-16 21:35:16', NULL),
(18, '427199a2-680a-11ea-8abe-a4db300c2566', 1, 31, 'Tatumn', 'Walter', 'twalter@usc.edu', '2020-03-16 21:46:26', '2020-03-16 21:46:26', NULL),
(19, '5edd9461-680a-11ea-8abe-a4db300c2566', 1, 32, 'Tatumn', 'Walter', 'twalter@usc.edu', '2020-03-16 21:47:13', '2020-03-16 21:47:13', NULL),
(20, '9d89631f-680a-11ea-8abe-a4db300c2566', 1, 33, 'Tatumn', 'Walter', 'twalter@usc.edu', '2020-03-16 21:48:59', '2020-03-16 21:48:59', NULL),
(21, 'c35dcf8e-680a-11ea-8abe-a4db300c2566', 1, 34, 'Tatumn', 'Walter', 'twalter@usc.edu', '2020-03-16 21:50:02', '2020-03-16 21:50:02', NULL),
(22, 'da9f6545-6a5d-11ea-b1a9-00ffaad58ca9', 1, 35, 'Tatumn', 'Walter', 'twalter@usc.edu', '2020-03-19 20:49:52', '2020-03-19 20:49:52', NULL),
(23, '27a101ea-6a5e-11ea-b1a9-00ffaad58ca9', 1, 36, 'Tatumn', 'Walter', 'tatumn.walt007@gmail.com', '2020-03-19 20:52:01', '2020-03-19 20:52:01', NULL),
(24, '63d54e55-6a5e-11ea-b1a9-00ffaad58ca9', 1, 37, 'Tatumn', 'Walter', 'tatumnwalter@gmail.com', '2020-03-19 20:53:42', '2020-03-19 20:53:42', NULL),
(25, 'd97d5a9b-6bdc-11ea-89c7-00ffaad58ca9', 1, 38, 'Tatumn', 'Walter', 'tatumnwalter@gmail.com', '2020-03-21 18:31:27', '2020-03-21 18:31:27', NULL),
(26, '3daa0f17-6c55-11ea-89c7-00ffaad58ca9', 1, 39, 'Tatumn', 'Walter', 'tatumn.walt007@gmail.com', '2020-03-22 08:53:15', '2020-03-22 08:53:15', NULL),
(27, 'fb8c5f77-6c55-11ea-89c7-00ffaad58ca9', 1, 40, 'tatum', 'wer', 't@c.com', '2020-03-22 08:58:33', '2020-03-22 08:58:33', NULL),
(28, '846288f5-6c56-11ea-89c7-00ffaad58ca9', 1, 41, 'Female', 'Female', 'TATUMNWALTER@yahoo.COM', '2020-03-22 09:02:23', '2020-03-22 09:02:23', NULL),
(29, 'e563470f-6c56-11ea-89c7-00ffaad58ca9', 1, 42, 'Tatumn', 'Walter', 'twalter@usc.edu', '2020-03-22 09:05:05', '2020-03-22 09:05:05', NULL),
(30, '0027c135-6c7a-11ea-89c7-00ffaad58ca9', 1, 43, 'Tatumn', 'Walter', 'twalter@usc.edu', '2020-03-22 13:16:23', '2020-03-22 13:16:23', NULL),
(31, '445e9e75-6c7c-11ea-89c7-00ffaad58ca9', 1, 44, 'Tatumn', 'Walter', 'twalter@usc.edu', '2020-03-22 13:32:36', '2020-03-22 13:32:36', NULL),
(32, '168ca394-6c7d-11ea-89c7-00ffaad58ca9', 1, 45, 'Tatumn', 'Walter', 'twalter@usc.edu', '2020-03-22 13:38:29', '2020-03-22 13:38:29', NULL),
(33, '13fb25ca-7eb8-11ea-a6ad-00ffaad58ca9', 1, 46, 'Tatumn', 'Walter', 'tatumnwalter@gmail.com', '2020-04-14 18:26:06', '2020-04-14 18:26:06', NULL),
(34, 'd779496c-883b-11ea-b95a-00ffaad58ca9', 1, 47, 'testing', 'tester', 'testing@yahoo.COM', '2020-04-26 21:01:58', '2020-04-26 21:01:58', NULL),
(35, 'fb84551b-89a9-11ea-b793-00ffaad58ca9', 1, 48, 'Tester', 'Testing', 'abba_baba_babb@gmail.com', '2020-04-28 16:42:55', '2020-04-28 16:42:55', NULL),
(36, '9c8d467f-89aa-11ea-b793-00ffaad58ca9', 1, 49, 'hebebab', 'bebehab', 'hebebabbebebhad@gmail.com', '2020-04-28 16:47:25', '2020-04-28 16:47:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orderStatuses`
--

DROP TABLE IF EXISTS `orderStatuses`;
CREATE TABLE `orderStatuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `mid` varchar(39) NOT NULL,
  `name` varchar(63) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderStatuses`
--

INSERT INTO `orderStatuses` (`id`, `mid`, `name`, `description`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'pending', 'Pending', 'Order payment proccessing.', '2020-03-15 13:28:43', '2020-03-15 13:28:43', NULL),
(2, 'accepted', 'Accepted', 'Payment accepted.', '2020-03-15 13:28:43', '2020-03-15 13:28:43', NULL),
(3, 'shipped', 'Shipped', 'Order shipped.', '2020-03-15 13:28:43', '2020-03-15 13:28:43', NULL),
(4, 'recieved', 'Recieved', 'Order recieved.', '2020-03-15 13:28:43', '2020-03-15 13:28:43', NULL),
(5, 'canceled', 'Canceled', 'Order canceled.', '2020-03-15 13:28:43', '2020-03-15 13:28:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `createdById` int(10) UNSIGNED NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `cost` int(11) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pid`, `createdById`, `caption`, `cost`, `description`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '658fc12d-13cb-11ea-931b-a4db300c2566', 1, 'Delicious Strawberry Cupcake', 350, 'These strawberry delights will satisfy both your sweet tooth and those strawberry cravings.', 'Strawberry Delight', '2019-11-30 15:44:49', '2019-11-30 15:44:49', NULL),
(2, '658fca3b-13cb-11ea-931b-a4db300c2566', 1, 'Sweet Berry Cupcake', 200, 'This is the berry cupcake of your dreams, they may be small but pack huge flavor.', 'Purple Dream', '2019-11-30 15:44:49', '2019-11-30 15:44:49', NULL),
(3, '658fcd5b-13cb-11ea-931b-a4db300c2566', 1, 'Mini Strawberry Cupcake', 225, 'These are a miniature version of our famous Strawberry Delight cupcakes, all the flavor, half the guilt.', 'Mini Berry', '2019-11-30 15:44:49', '2019-11-30 15:44:49', NULL),
(4, '658fcf29-13cb-11ea-931b-a4db300c2566', 1, 'Unicorn Tear Sparkling Cupcake', 650, 'What do unicorn tears taste like? We don\'t know, but we do know these cupcakes taste better!', 'Unicorn Tear', '2019-11-30 15:44:49', '2019-11-30 15:44:49', NULL),
(5, '658fd0d0-13cb-11ea-931b-a4db300c2566', 1, 'Red and Yellow Rose Vanilla Cupcake', 575, 'Delightful vanilla cupcakes with rose frosting piled high on top.', 'Pearl Rose', '2019-11-30 15:44:49', '2019-11-30 15:44:49', NULL),
(6, '658fd28b-13cb-11ea-931b-a4db300c2566', 1, 'Silky Red Cupcake Loaded with Frosting', 350, 'A vanilla cupcake with strawberry silk frosting eloquently piled high with a peach topping.', 'Red Silk', '2019-11-30 15:44:49', '2019-11-30 15:44:49', NULL),
(7, '658fd450-13cb-11ea-931b-a4db300c2566', 1, 'Vanilla Cupcake Piled with Vanilla Frosting', 600, 'Not just another vanilla cupcake. Our Vanilla Stack Cake cupcake is stacked with three scoops of vanilla frosting and topped with drizzled vanilla and a delicious cherry.', 'Vanilla Stack Cake', '2019-11-30 15:44:49', '2019-11-30 15:44:49', NULL),
(8, '658fd617-13cb-11ea-931b-a4db300c2566', 1, 'Blueberry Cupcake Piled High with Toppings', 775, 'A large blueberry cupcake topped with blueberry frosting, chocolate syrup, whip cream, and a sweet cherry. Looks and taste like your favorite blueberry malt.', 'Blueberry Malt Cake', '2019-11-30 15:44:49', '2019-11-30 15:44:49', NULL),
(9, '658fd7e8-13cb-11ea-931b-a4db300c2566', 1, 'Lemon Cupcake with Piled High Lemon Frosting', 450, 'Lemon, lemon, and more lemon! Love lemon? So do we and our Double Lemon cupcake proves it!', 'Double Lemon', '2019-11-30 15:44:49', '2019-11-30 15:44:49', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartItems`
--
ALTER TABLE `cartItems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartStatuses`
--
ALTER TABLE `cartStatuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderStatuses`
--
ALTER TABLE `orderStatuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `cartItems`
--
ALTER TABLE `cartItems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `cartStatuses`
--
ALTER TABLE `cartStatuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `orderStatuses`
--
ALTER TABLE `orderStatuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;