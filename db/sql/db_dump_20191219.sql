-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2019 at 07:34 PM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `sweet_corner`
--
CREATE DATABASE IF NOT EXISTS `sweet_corner` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sweet_corner`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

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
(13, '8e292af2-221a-11ea-931b-a4db300c2566', 2, NULL, '2019-12-18 20:46:43', '2019-12-18 20:46:43', '2019-12-18 20:46:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cartItems`
--

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
(11, '459b95e1-221d-11ea-931b-a4db300c2566', 13, 8, 3, '2019-12-18 21:06:10', '2019-12-18 21:06:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cartStatuses`
--

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
-- Table structure for table `products`
--

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `cartItems`
--
ALTER TABLE `cartItems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;