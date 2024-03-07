-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2024 at 12:45 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_review_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_reviews`
--

CREATE TABLE `user_reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_reviews`
--

INSERT INTO `user_reviews` (`id`, `product_id`, `user_id`, `review_text`, `created_at`, `updated_at`) VALUES
(1, 1, 123, 'This is a great product!', '2024-03-07 08:34:22', '2024-03-07 08:34:22'),
(2, 2, 123, 'This is a great product!', '2024-03-07 08:53:27', '2024-03-07 08:53:27'),
(3, 3, 123, 'This is a great product!', '2024-03-07 09:59:48', '2024-03-07 09:59:48'),
(4, 3, 124, 'This is a best product!', '2024-03-07 10:02:24', '2024-03-07 10:02:24'),
(5, 1, 1, 'Test review text', '2024-03-07 11:09:07', '2024-03-07 11:09:07'),
(6, 1, 1, 'Test review text', '2024-03-07 11:09:55', '2024-03-07 11:09:55'),
(7, 1, 1, 'Test review text', '2024-03-07 11:11:51', '2024-03-07 11:11:51'),
(8, 1, 1, 'Test review text', '2024-03-07 11:13:52', '2024-03-07 11:13:52'),
(9, 1, 1, 'Test review text', '2024-03-07 11:19:33', '2024-03-07 11:19:33'),
(10, 1, 1, 'Test review text', '2024-03-07 11:21:39', '2024-03-07 11:21:39'),
(11, 1, 1, 'Test review text', '2024-03-07 11:24:18', '2024-03-07 11:24:18'),
(12, 1, 1, 'Test review text', '2024-03-07 11:30:15', '2024-03-07 11:30:15'),
(13, 1, 1, 'Test review text', '2024-03-07 11:30:28', '2024-03-07 11:30:28'),
(14, 1, 1, 'Test review text', '2024-03-07 11:31:25', '2024-03-07 11:31:25'),
(15, 1, 1, 'Test review text', '2024-03-07 11:34:50', '2024-03-07 11:34:50'),
(16, 2, 1, 'Test review text', '2024-03-07 11:34:50', '2024-03-07 11:34:50'),
(17, 3, 124, 'This is a best product!', '2024-03-07 11:37:38', '2024-03-07 11:37:38'),
(18, 3, 124, 'This is a best product!', '2024-03-07 11:38:04', '2024-03-07 11:38:04'),
(19, 3, 125, 'This is a best product!', '2024-03-07 11:42:41', '2024-03-07 11:42:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_reviews`
--
ALTER TABLE `user_reviews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_reviews`
--
ALTER TABLE `user_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
