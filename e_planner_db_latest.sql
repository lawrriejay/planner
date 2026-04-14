-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 25, 2022 at 11:47 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_planner_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `usertype` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `usertype`, `username`, `email`, `password`) VALUES
(1, 'admin', 'lawriejay', 'lawrie@email.com', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `disabled` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `slug`, `disabled`) VALUES
(2, 'Photoshoot', 'photoshoot', 0),
(3, 'events', 'events', 0),
(4, 'Ceremony', 'ceremony', 0),
(5, 'decor', 'decor', 0),
(6, 'New category', 'new-category', 1),
(7, 'Wedding', 'wedding', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `Full_Name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `Full_Name`, `email`, `date`, `message`) VALUES
(1, 'Lawrence Muzondo', 'lawmuzondo68@gmail.com', '2022-12-20 23:31:58', 'latest');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `content`, `image`, `date`, `slug`) VALUES
(6, 8, 4, 'ceremony', '<p>Nuptuals</p>', 'uploads/1671959279pexels-rocsana-nicoleta-gurza-948185.jpg', '2022-12-25 11:07:59', 'ceremony'),
(7, 8, 3, 'reception ', '<p>reception decorations for your needs</p>', 'uploads/1671959617pexels-asad-photo-maldives-169198.jpg', '2022-12-25 11:13:37', 'reception'),
(8, 8, 5, 'outdoor', '<p>simple outdoor elegant decor for an intimate exquisite gateway</p>', 'uploads/1671959707pexels-agung-pandit-wiguna-2788488.jpg', '2022-12-25 11:15:07', 'outdoor'),
(9, 8, 3, 'fairy-tale', '<p>elegant reception and after-party setup</p>', 'uploads/1671959778pexels-salah-alawadhi-382297.jpg', '2022-12-25 11:16:18', 'fairy-tale'),
(10, 8, 2, 'photoshoot', '<p>Being bold and glamorous that all we strive to produce</p>', 'uploads/1671959876pexels-tubarones-photography-3684892.jpg', '2022-12-25 11:17:56', 'photoshoot');

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `id` int(11) NOT NULL,
  `Full_Name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `budget` varchar(255) NOT NULL,
  `guests` int(30) NOT NULL,
  `date` datetime NOT NULL,
  `package` varchar(20) NOT NULL,
  `details` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`id`, `Full_Name`, `email`, `phone`, `budget`, `guests`, `date`, `package`, `details`, `message`) VALUES
(1, 'Lawrence Muzondo', 'stacmomo480@gmail.com', '0785419308', '$20 000', 150, '2023-01-07 00:00:00', 'Platinum', 'to be elegant and a night reception', 'to accommodate for a karaoke'),
(2, 'Lawrence Muzondo', 'lawmuzondo68@gmail.com', '+980987654932', '$35879', 200, '2023-01-23 00:00:00', 'Silver', 'exquisite', 'elegant');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `Full_Name` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `guests` int(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `time` varchar(30) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `Full_Name`, `Phone`, `email`, `guests`, `date`, `time`, `message`) VALUES
(1, 'Lawrence Muzondo', '0785419308', 'stacmomo480@gmail.com', 150, '0000-00-00 00:00:00', 'Night', 'enquire about the fore-mentioned details availability'),
(2, 'sam lawrie', '+980987654932', 'samlawrie@yahoo.com', 100, '0000-00-00 00:00:00', 'Day-Night', 'enquire'),
(3, 'sami Jnr', '+989876', 'ljay68@gmail.com', 90, '0000-00-00 00:00:00', 'Day', 'enquiring about the time shifts or budget'),
(4, 'Lawrence Muzondo', '0785419308', 'stacmomo480@gmail.com', 200, '0000-00-00 00:00:00', 'Day-Night', 'enquire about '),
(5, 'sam lawrie', '+980987654932', 'samlawrie@yahoo.com', 150, '0000-00-00 00:00:00', 'Night', 'developments');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `email`, `date`) VALUES
(1, '', '2022-12-20 22:25:26'),
(5, 'lawriejay68@gmail.com', '2022-12-20 22:31:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `image`, `date`, `role`) VALUES
(8, 'lawriejay', 'lawriejay68@gmail.com', '$2y$10$3qoKJP6qCjuBAJIvC1nuHOUMsjjjMiupd5gmuf6X3yH70KOCBNwIK', NULL, '2022-12-21 04:28:52', 'admin'),
(9, 'mimi', 'lawmuzondo68@gmail.com', '$2y$10$NclcHF0aI/9dN.xn3ZslNeZqucEC6gUNwRATKrSkz4N2mDzMA9C8W', NULL, '2022-12-25 11:03:17', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `date` (`date`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `title` (`title`),
  ADD KEY `slug` (`slug`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `date` (`date`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `Phone` (`Phone`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
