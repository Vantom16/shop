-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2016 at 11:16 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_09_10_022412_create_products_table', 1),
('2016_09_10_025342_create_users_table', 2),
('2016_09_10_191459_create_orders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `user_id`, `cart`, `address`, `name`, `payment_id`) VALUES
(1, '2016-09-11 00:42:03', '2016-09-11 00:42:03', 1, 'O:8:"App\\Cart":3:{s:5:"items";a:2:{i:1;a:3:{s:3:"qty";i:1;s:5:"price";i:10;s:4:"item";O:11:"App\\Product":23:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:1;s:10:"created_at";s:19:"2016-09-10 02:34:42";s:10:"updated_at";s:19:"2016-09-10 02:34:42";s:9:"imagePath";s:51:"http://www.barasado.com/resources/uploads/sun53.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:10;}s:11:"\0*\0original";a:7:{s:2:"id";i:1;s:10:"created_at";s:19:"2016-09-10 02:34:42";s:10:"updated_at";s:19:"2016-09-10 02:34:42";s:9:"imagePath";s:51:"http://www.barasado.com/resources/uploads/sun53.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:10;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:2;a:3:{s:3:"qty";i:1;s:5:"price";i:10;s:4:"item";O:11:"App\\Product":23:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:2;s:10:"created_at";s:19:"2016-09-10 02:34:42";s:10:"updated_at";s:19:"2016-09-10 02:34:42";s:9:"imagePath";s:71:"http://www.barasado.com/resources/uploads/professional-video-camera.jpg";s:5:"title";s:42:"A Song of Ice and Fire - A Storm of Swords";s:11:"description";s:27:"No one is going to survive!";s:5:"price";i:10;}s:11:"\0*\0original";a:7:{s:2:"id";i:2;s:10:"created_at";s:19:"2016-09-10 02:34:42";s:10:"updated_at";s:19:"2016-09-10 02:34:42";s:9:"imagePath";s:71:"http://www.barasado.com/resources/uploads/professional-video-camera.jpg";s:5:"title";s:42:"A Song of Ice and Fire - A Storm of Swords";s:11:"description";s:27:"No one is going to survive!";s:5:"price";i:10;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:2;s:10:"totalPrice";i:20;}', 'Test', 'Tom', 'ch_18sHMUDMEPPLk4JoNtHzFINZ'),
(2, '2016-09-11 01:27:52', '2016-09-11 01:27:52', 3, 'O:8:"App\\Cart":3:{s:5:"items";a:2:{i:1;a:3:{s:3:"qty";i:1;s:5:"price";i:10;s:4:"item";O:11:"App\\Product":23:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:1;s:10:"created_at";s:19:"2016-09-10 02:34:42";s:10:"updated_at";s:19:"2016-09-10 02:34:42";s:9:"imagePath";s:51:"http://www.barasado.com/resources/uploads/sun53.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:10;}s:11:"\0*\0original";a:7:{s:2:"id";i:1;s:10:"created_at";s:19:"2016-09-10 02:34:42";s:10:"updated_at";s:19:"2016-09-10 02:34:42";s:9:"imagePath";s:51:"http://www.barasado.com/resources/uploads/sun53.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:10;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:2;a:3:{s:3:"qty";i:1;s:5:"price";i:10;s:4:"item";O:11:"App\\Product":23:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:2;s:10:"created_at";s:19:"2016-09-10 02:34:42";s:10:"updated_at";s:19:"2016-09-10 02:34:42";s:9:"imagePath";s:71:"http://www.barasado.com/resources/uploads/professional-video-camera.jpg";s:5:"title";s:42:"A Song of Ice and Fire - A Storm of Swords";s:11:"description";s:27:"No one is going to survive!";s:5:"price";i:10;}s:11:"\0*\0original";a:7:{s:2:"id";i:2;s:10:"created_at";s:19:"2016-09-10 02:34:42";s:10:"updated_at";s:19:"2016-09-10 02:34:42";s:9:"imagePath";s:71:"http://www.barasado.com/resources/uploads/professional-video-camera.jpg";s:5:"title";s:42:"A Song of Ice and Fire - A Storm of Swords";s:11:"description";s:27:"No one is going to survive!";s:5:"price";i:10;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:2;s:10:"totalPrice";i:20;}', 'Test', 'Isme', 'ch_18sI4pDMEPPLk4Jofv3ehWZv');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imagePath` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `imagePath`, `title`, `description`, `price`) VALUES
(1, '2016-09-10 07:34:42', '2016-09-10 07:34:42', 'http://www.barasado.com/resources/uploads/sun53.jpg', 'Harry Potter', 'Super cool - at least as a child.', 10),
(2, '2016-09-10 07:34:42', '2016-09-10 07:34:42', 'http://www.barasado.com/resources/uploads/professional-video-camera.jpg', 'A Song of Ice and Fire - A Storm of Swords', 'No one is going to survive!', 10),
(3, '2016-09-10 07:34:42', '2016-09-10 07:34:42', 'http://www.barasado.com/resources/uploads/sun45.jpg', 'Lord of the Rings', 'I found the movies to be better ...', 20),
(4, '2016-09-10 07:34:42', '2016-09-10 07:34:42', 'http://www.barasado.com/resources/uploads/sun1.jpg', 'A Song of Ice and Fire - Game of Thrones', 'No one is going to survive!', 20),
(5, '2016-09-10 07:34:42', '2016-09-10 07:34:42', 'http://www.barasado.com/resources/uploads/dell-laptop-battery-problem.jpg', 'A Song of Ice and Fire - A Feast for Crows', 'Still, no one is going to survive!', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `email`, `password`, `remember_token`) VALUES
(1, '2016-09-10 08:55:22', '2016-09-11 01:25:43', 'tomwanyonyi@yahoo.com', '$2y$10$sccR/aZnPYXNcjgWVdDkbutjab5na.4R5290l/HOeyJhmZIvwUfBy', 'RjP1yGZYghqhyC36c4GpsEcvSmLjuU6mvT6oZrJVr753ipmQQUXBS8cFtswt'),
(2, '2016-09-10 10:50:45', '2016-09-11 01:04:55', 'vaniabarasa@yahoo.com', '$2y$10$PuyZvrXR8iWUOAglpyPyuecKGNiwUGD9R9zXZfqtPmhTeAMgnLnsS', 'g4iNoysiJ10x7JVi0vWj5DxUXcnXZUjfl5AkKjoXyDpIhh9D0CDZpTemmLoZ'),
(3, '2016-09-11 01:26:20', '2016-09-11 01:26:20', 'isme@yahoo.com', '$2y$10$1bZuW9L0f2qiRJpKktNG0Ohu9EA.pxYnA1WpSsVRy.Unnl2.yPmwq', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
