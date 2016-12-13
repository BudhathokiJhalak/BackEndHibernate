-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 13, 2016 at 05:25 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xyz_academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses`
--

CREATE TABLE `tbl_courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `fees` double NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_courses`
--

INSERT INTO `tbl_courses` (`course_id`, `course_name`, `description`, `fees`, `added_date`, `modified_date`, `status`) VALUES
(1, 'Advance Java(J2EE)', 'Summary of Key Learningss\r\nLearn the core concepts of an object?oriented programming language (Java)\r\nComplement front?end skills by building functional web applications using JSP, Servlet, Spring framework\r\nImplement your web applications using database solutions (mySQL)', 20000, '2016-12-13 10:41:38', NULL, 1),
(2, 'ASP.NET MVC', 'Summary of Key Learnings\r\nLearn the core concepts of an object‐oriented programming language (C#, .NET)\r\nComplement front‐end skills by building functional web applications using ASP.NET, MVC framework\r\nImplement your web applications using database solutions (SQLServer)', 20000, '2016-12-11 04:21:02', NULL, 0),
(3, 'Core JAVA', 'Core JAVA Core JAVA Core JAVA', 12000, '2016-12-11 06:49:02', NULL, 1),
(4, 'PHP & JS', 'Summary of Key Learnings\r\nLearn the core concepts of Web Development using PHP\r\nComplement front&#8208;end skills by building functional web applications using HTML, JavaScript, CSS, JQuery, AngularJS, PHP, REST\r\nImplement your web applications using database solutions (mySQL)', 12000, '2016-12-13 10:41:10', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry`
--

CREATE TABLE `tbl_enquiry` (
  `enquiry_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `enquiry_status_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_enquiry`
--

INSERT INTO `tbl_enquiry` (`enquiry_id`, `first_name`, `last_name`, `email`, `contact_no`, `message`, `added_date`, `enquiry_status_id`, `course_id`) VALUES
(1, 'Ruman', 'Dangol', 'ruman@gmail.com', '982301922', 'I''m interested in Java Programming.', '2016-12-11 04:22:42', 1, 1),
(2, 'Bibek', 'Bagdash', 'bagdashbabu@gmail.com', '988236231', 'I''m interested in Asp .Net', '2016-12-11 04:22:42', 2, 2),
(5, 'Ruman', 'Dangol', 'ruman@gmail.com', '982301922', 'I''m interested in Java Programming & JavaScript', '2016-12-13 16:18:08', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry_status`
--

CREATE TABLE `tbl_enquiry_status` (
  `enquiry_status_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_enquiry_status`
--

INSERT INTO `tbl_enquiry_status` (`enquiry_status_id`, `type`, `color`) VALUES
(1, 'Pending', 'white'),
(2, 'Enrolled', 'Green'),
(3, 'Not Interested', 'Blue');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`name`, `value`) VALUES
('EMAIL_FROM', 'admin@leapfrog.academy'),
('EMAIL_HOST', 'smtp.wlink.com.np');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE `tbl_students` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`student_id`, `first_name`, `last_name`, `email`, `contact_no`, `address`, `added_date`, `modified_date`, `status`, `course_id`) VALUES
(1, 'Kripesh', 'Lamichhane', 'kripeshlam@gmail.com', '98342632224', 'lokanthali, Bhaktapur', '2016-12-13 11:19:58', NULL, 1, 1),
(2, 'Ayush', 'Dumre', 'ayushdumre@gmail.com', '982322320', 'Buhumai, Nawalparasi', '2016-12-12 15:30:53', NULL, 0, 2),
(3, 'Rahul', 'Pantha', 'rahoool@gmail.com', '92837263t2', 'Buddhanagar, Rupandehi', '2016-12-12 15:37:16', NULL, 1, 1),
(4, 'Sangharsha', 'Chaulagain', 'sangharsha@gmail.com', '9876543366', 'Kathmandu', '2016-12-13 03:08:38', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tutors`
--

CREATE TABLE `tbl_tutors` (
  `tutor_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tutors`
--

INSERT INTO `tbl_tutors` (`tutor_id`, `first_name`, `last_name`, `email`, `contact_no`, `address`, `added_date`, `modified_date`, `status`, `course_id`) VALUES
(1, 'Dixanta', 'Bahadur Shrestha', 'shresthdix@gmail.com', '9854422032', 'Bhaktapur', '2016-12-13 16:23:08', NULL, 1, 1),
(2, 'Arun', 'Joshi', 'arunjoshi@gmail.com', '9834263623', 'New-Baneshwor, Kathmandu', '2016-12-13 07:29:00', NULL, 0, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  ADD PRIMARY KEY (`enquiry_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `enquiry_status_id` (`enquiry_status_id`);

--
-- Indexes for table `tbl_enquiry_status`
--
ALTER TABLE `tbl_enquiry_status`
  ADD PRIMARY KEY (`enquiry_status_id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `tbl_tutors`
--
ALTER TABLE `tbl_tutors`
  ADD PRIMARY KEY (`tutor_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `course_id` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_enquiry_status`
--
ALTER TABLE `tbl_enquiry_status`
  MODIFY `enquiry_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_students`
--
ALTER TABLE `tbl_students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_tutors`
--
ALTER TABLE `tbl_tutors`
  MODIFY `tutor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  ADD CONSTRAINT `tbl_enquiry_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `tbl_courses` (`course_id`),
  ADD CONSTRAINT `tbl_enquiry_ibfk_2` FOREIGN KEY (`enquiry_status_id`) REFERENCES `tbl_enquiry_status` (`enquiry_status_id`);

--
-- Constraints for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD CONSTRAINT `tbl_students_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `tbl_courses` (`course_id`);

--
-- Constraints for table `tbl_tutors`
--
ALTER TABLE `tbl_tutors`
  ADD CONSTRAINT `tbl_tutors_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `tbl_courses` (`course_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
