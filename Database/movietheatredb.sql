-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 08:49 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movietheatredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings`
--

CREATE TABLE `tbl_bookings` (
  `book_id` int(11) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theater id',
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `no_seats` int(3) NOT NULL COMMENT 'number of seats',
  `amount` int(5) NOT NULL,
  `ticket_date` date NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bookings`
--

INSERT INTO `tbl_bookings` (`book_id`, `ticket_id`, `t_id`, `user_id`, `show_id`, `screen_id`, `no_seats`, `amount`, `ticket_date`, `date`, `status`) VALUES
(16, 'BKID9576743', 8, 6, 27, 8, 1, 250, '2023-05-12', '2023-05-12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `subject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'email',
  `password` varchar(50) NOT NULL,
  `user_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `user_id`, `username`, `password`, `user_type`) VALUES
(1, 0, 'admin', 'password', 0),
(18, 6, 'THR760801', 'PWD649976', 1),
(21, 8, 'THR110022', 'PVR110022', 1),
(22, 6, 'www.sonu1920@gmail.com', '123456789', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie`
--

CREATE TABLE `tbl_movie` (
  `movie_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `movie_name` varchar(255) NOT NULL,
  `cast` varchar(500) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0 means active '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_movie`
--

INSERT INTO `tbl_movie` (`movie_id`, `t_id`, `movie_name`, `cast`, `desc`, `release_date`, `image`, `video_url`, `status`) VALUES
(18, 8, 'Pathaan', 'Shah Rukh Khan, Deepika Padukone, John Abraham', 'An Indian agent races against a doomsday clock as a ruthless mercenary, with a bitter vendetta, mounts an apocalyptic attack against the country.', '2023-01-25', 'images/Pathaan.jpg', 'https://youtu.be/vqu4z34wENw', 0),
(19, 8, 'Shazam! Fury of Gods ', 'Lucy Liu, Helen Mirren, Zachary Levi', 'The film continues the story of teenage Billy Batson who, upon reciting the magic word \"SHAZAM!\" is transformed into his adult Super Hero alter ego, Shazam.', '2023-03-17', 'images/Shazam! Fury of Gods.jpg', 'https://youtu.be/AIc671o9yCI', 0),
(20, 8, 'Suzume ', 'Nanoka Hara, Hokuto Matsumura, Eri Fukatsu', 'A modern action adventure road story where a 17-year-old girl named Suzume helps a mysterious young man close doors from the outer side that are releasing disasters all over in Japan.', '2023-04-14', 'images/Suzume.jpg', 'https://youtu.be/JXw2SITAr4Q', 0),
(21, 8, 'Ant-man and the Wasp Quantumania', 'Paul Rudd, Evangeline Lilly, Michael Douglas, Michelle Pfeiffer, Jonathan Majors..', 'Ant-Man and the Wasp: Quantumania is a 2023 American superhero film based on Marvel Comics featuring the characters Scott Lang / Ant-Man and Hope Pym / Wasp ...', '2023-02-27', 'images/Ant-Man and the Wasp Quantumania.jpg', 'https://youtu.be/5WfTEZJnv_8', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `news_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `attachment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `name`, `cast`, `news_date`, `description`, `attachment`) VALUES
(13, 'Suzume ', 'Nanoka Hara, Hokuto Matsumura, Eri Fukatsu', '2023-04-14', 'A modern action adventure road story where a 17-year-old girl named Suzume helps a mysterious young man close doors from the outer side that are releasing disasters all over in Japan.', 'news_images/Suzume.jpg'),
(14, 'Shazam! Fury of Gods ', 'Lucy Liu, Helen Mirren, Zachary Levi', '2023-03-17', 'The film continues the story of teenage Billy Batson who, upon reciting the magic word \"SHAZAM!\" is transformed into his adult Super Hero alter ego, Shazam.', 'news_images/Shazam! Fury of Gods.jpg'),
(15, 'Ant-man and the Wasp Quantumania', 'Paul Rudd, Evangeline Lilly, Michael Douglas, Michelle Pfeiffer, Jonathan Majors..', '2023-02-17', 'Ant-Man and the Wasp: Quantumania is a 2023 American superhero film based on Marvel Comics featuring the characters Scott Lang / Ant-Man and Hope Pym / Wasp ...', 'news_images/Ant-Man and the Wasp Quantumania.jpg'),
(16, 'Pathaan', 'Shah Rukh Khan, Deepika Padukone, John Abraham', '2023-01-25', 'An Indian agent races against a doomsday clock as a ruthless mercenary, with a bitter vendetta, mounts an apocalyptic attack against the country.', 'news_images/Pathaan.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`user_id`, `name`, `email`, `phone`, `age`, `gender`) VALUES
(2, 'Harry Den', 'harryden@gmail.com', '1247778540', 22, 'gender'),
(4, 'Bruno', 'bruno@gmail.com', '7451112450', 30, 'gender'),
(5, 'James', 'james@gmail.com', '7124445696', 25, 'gender'),
(6, 'S K Sugan', 'www.sonu1920@gmail.com', '8610772880', 25, 'gender');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_screens`
--

CREATE TABLE `tbl_screens` (
  `screen_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) NOT NULL,
  `seats` int(11) NOT NULL COMMENT 'number of seats',
  `charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_screens`
--

INSERT INTO `tbl_screens` (`screen_id`, `t_id`, `screen_name`, `seats`, `charge`) VALUES
(8, 8, 'Front Screen ', 40, 250),
(9, 8, '3D', 100, 400);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

CREATE TABLE `tbl_shows` (
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'show time id',
  `theatre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 means show available',
  `r_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`s_id`, `st_id`, `theatre_id`, `movie_id`, `start_date`, `status`, `r_status`) VALUES
(23, 22, 8, 18, '2023-05-12', 0, 0),
(24, 22, 8, 20, '2023-05-12', 1, 1),
(26, 22, 8, 19, '2023-05-12', 1, 1),
(27, 22, 8, 21, '2023-05-12', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_show_time`
--

CREATE TABLE `tbl_show_time` (
  `st_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'noon,second,etc',
  `start_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_show_time`
--

INSERT INTO `tbl_show_time` (`st_id`, `screen_id`, `name`, `start_time`) VALUES
(22, 8, 'First', '08:00:00'),
(23, 8, 'Second', '00:00:00'),
(24, 8, 'Noon', '18:00:00'),
(25, 8, 'Matinee', '23:00:00'),
(26, 9, 'First', '08:00:00'),
(27, 9, 'Second', '00:00:00'),
(28, 9, 'Noon', '18:00:00'),
(29, 9, 'Matinee', '23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theatre`
--

CREATE TABLE `tbl_theatre` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_theatre`
--

INSERT INTO `tbl_theatre` (`id`, `name`, `address`, `place`, `state`, `pin`) VALUES
(6, 'Riverview Theater', '3800 42nd Ave S', 'Minneapolis, MN 55406', 'Minnesot', 224450),
(8, 'PVR Sangam', '780, Major Somnath Marg, KD Colony, Sector 9, Rama Krishna Puram, New Delhi, Delhi 110022', 'R.K.Puram sec- 9 ', 'Delhi', 110022);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  ADD PRIMARY KEY (`screen_id`);

--
-- Indexes for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  MODIFY `screen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
