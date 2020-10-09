-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 19, 2020 at 11:16 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `latec`
--

-- --------------------------------------------------------

--
-- Table structure for table `suverymonkey`
--

CREATE TABLE `suverymonkey` (
  `id` int(11) NOT NULL,
  `iframe` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) NOT NULL,
  `instructions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suverymonkey`
--

INSERT INTO `suverymonkey` (`id`, `iframe`, `published`, `date`, `created_at`, `updated_at`, `title`, `instructions`) VALUES
(1, 'https://es.surveymonkey.com/r/KWYYJ8H', 1, '2020-05-12 02:45:15', '2020-05-12 02:46:34', '2020-05-12 13:16:21', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `suverymonkey`
--
ALTER TABLE `suverymonkey`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `suverymonkey`
--
ALTER TABLE `suverymonkey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
