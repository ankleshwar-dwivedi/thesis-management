-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2024 at 06:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`) VALUES
(1, 'Computer Science'),
(2, 'Electrical Engineering'),
(3, 'Mechanical Engineering'),
(4, 'Biology'),
(5, 'Physics'),
(6, 'Chemistry'),
(7, 'Mathematics'),
(8, 'Business Administration'),
(9, 'Psychology');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `email` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `specialization` varchar(50) NOT NULL,
  `dept_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`email`, `first_name`, `last_name`, `specialization`, `dept_id`) VALUES
('fac10@test.com', 'Sophie', 'Jones', 'Transportation Engineering', 1),
('fac11@test.com', 'Ryan', 'Johnson', 'Machine Learning', 1),
('fac12@test.com', 'Olivia', 'Clark', 'Network Security', 1),
('fac13@test.com', 'Daniel', 'Anderson', 'Software Engineering', 2),
('fac16@test.com', 'Ava', 'Green', 'Web Development', 2),
('fac1@test.com', 'fac1', 'ferwe', 'dafefa', 1),
('fac2@test.com', 'Jane', 'Smith', 'Power Systems', 1),
('fac3@test.com', 'Bob', 'Johnson', 'Thermodynamics', 1),
('fac4@test.com', 'Alice', 'Williams', 'Polymer Chemistry', 2),
('fac5@test.com', 'Charlie', 'Brown', 'Structural Engineering', 3),
('fac6@test.com', 'Eva', 'Martinez', 'Database Systems', 1),
('fac7@test.com', 'David', 'Lee', 'Digital Signal Processing', 2),
('fac8@test.com', 'Grace', 'Wang', 'Fluid Mechanics', 1),
('fac9@test.com', 'Michael', 'Taylor', 'Biochemical Engineering', 1);

-- --------------------------------------------------------

--
-- Table structure for table `file_status`
--

CREATE TABLE `file_status` (
  `file_id` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `timestamp_status` timestamp NOT NULL DEFAULT current_timestamp(),
  `by_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file_status`
--

INSERT INTO `file_status` (`file_id`, `status`, `timestamp_status`, `by_email`) VALUES
(NULL, 'uploaded', '2023-12-03 12:54:04', 'stu1@test.com'),
(2, 'reviewedbymember', '2023-12-05 15:31:58', 'fac8@test.com'),
(1, 'uploaded', '2023-12-04 09:08:29', 'stu1@test.com'),
(2, 'reviewedbymember', '2023-12-05 15:31:58', 'fac8@test.com'),
(3, 'uploaded', '2023-12-04 09:11:53', 'stu1@test.com'),
(4, 'uploaded', '2023-12-04 09:12:02', 'stu1@test.com'),
(5, 'reviewedbymember', '2024-01-15 15:44:16', 'fac12@test.com'),
(6, 'uploaded', '2023-12-04 11:26:37', 'stu3@test.com'),
(2, 'reviewedbymember', '2023-12-05 15:31:58', 'fac8@test.com'),
(2, 'reviewedbymember', '2023-12-05 15:31:58', 'fac8@test.com'),
(2, 'reviewedbymember', '2023-12-05 15:31:58', 'fac8@test.com'),
(2, 'reviewedbymember', '2023-12-05 15:31:58', 'fac8@test.com'),
(3, 'forwardedtodean', '2023-12-05 14:09:53', 'fac11@test.com'),
(4, 'forwardedtodean', '2023-12-05 14:09:57', 'fac11@test.com'),
(5, 'reviewedbymember', '2024-01-15 15:44:16', 'fac12@test.com'),
(5, 'reviewedbymember', '2024-01-15 15:44:16', 'fac12@test.com'),
(5, 'reviewedbymember', '2024-01-15 15:44:16', 'fac12@test.com'),
(5, 'reviewedbymember', '2024-01-15 15:44:16', 'fac12@test.com'),
(5, 'reviewedbymember', '2024-01-15 15:44:16', 'fac12@test.com'),
(4, 'forwardedtomember', '2023-12-05 14:10:40', 'fac10@test.com'),
(4, 'forwardedtomember', '2023-12-05 14:10:40', 'fac12@test.com'),
(4, 'forwardedtomember', '2023-12-05 14:10:40', 'fac1@test.com'),
(4, 'forwardedtomember', '2023-12-05 14:10:40', 'fac8@test.com'),
(3, 'forwardedtomember', '2023-12-05 14:10:44', 'fac10@test.com'),
(3, 'forwardedtomember', '2023-12-05 14:10:44', 'fac12@test.com'),
(3, 'forwardedtomember', '2023-12-05 14:10:44', 'fac1@test.com'),
(3, 'forwardedtomember', '2023-12-05 14:10:44', 'fac8@test.com'),
(5, 'reviewedbymember', '2024-01-15 15:44:16', 'fac12@test.com'),
(5, 'reviewedbymember', '2024-01-15 15:44:16', 'fac12@test.com'),
(5, 'reviewedbymember', '2024-01-15 15:44:16', 'fac12@test.com'),
(5, 'reviewedbymember', '2024-01-15 15:44:16', 'fac12@test.com'),
(4, 'forwardedtomember', '2023-12-05 14:11:43', 'fac10@test.com'),
(4, 'forwardedtomember', '2023-12-05 14:11:43', 'fac12@test.com'),
(4, 'forwardedtomember', '2023-12-05 14:11:43', 'fac1@test.com'),
(4, 'forwardedtomember', '2023-12-05 14:11:43', 'fac8@test.com'),
(3, 'forwardedtomember', '2023-12-05 14:11:47', 'fac10@test.com'),
(3, 'forwardedtomember', '2023-12-05 14:11:47', 'fac12@test.com'),
(3, 'forwardedtomember', '2023-12-05 14:11:47', 'fac1@test.com'),
(3, 'forwardedtomember', '2023-12-05 14:11:47', 'fac8@test.com'),
(7, 'uploaded', '2023-12-05 09:56:35', 'stu99@test.com'),
(7, 'forwardedtodean', '2023-12-05 14:27:54', 'fac14@test.com'),
(7, 'forwardedtomembers', '2023-12-05 14:29:20', 'fac10@test.com'),
(7, 'forwardedtomembers', '2023-12-05 14:29:20', 'fac12@test.com'),
(7, 'forwardedtomembers', '2023-12-05 14:29:20', 'fac3@test.com'),
(7, 'forwardedtomembers', '2023-12-05 14:29:20', 'fac6@test.com'),
(3, 'reviewed', '2023-12-05 14:59:34', 'fac8@test.com'),
(4, 'reviewedbymember', '2023-12-05 15:05:38', 'fac8@test.com'),
(4, 'reviewedbymember', '2023-12-05 15:05:39', 'fac8@test.com'),
(8, 'uploaded', '2024-01-13 13:11:16', 'stu98@test.com'),
(9, 'uploaded', '2024-01-13 13:19:52', 'stu3@test.com'),
(1, 'forwardedtodean', '2024-01-15 16:21:56', 'fac11@test.com'),
(1, 'read', '2024-01-15 16:22:02', 'fac11@test.com'),
(1, 'declined', '2024-01-15 16:22:06', 'fac11@test.com'),
(1, 'forwardedtodean', '2024-01-15 16:22:09', 'fac11@test.com'),
(10, 'uploaded', '2024-01-15 12:05:10', 'stufinal@test.com'),
(10, 'forwardedtodean', '2024-01-15 16:35:50', 'fac11@test.com');

-- --------------------------------------------------------

--
-- Table structure for table `file_type`
--

CREATE TABLE `file_type` (
  `type_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file_type`
--

INSERT INTO `file_type` (`type_id`, `type`) VALUES
(1, 'drc'),
(2, 'presubmission report'),
(3, 'pre submission evaluation report'),
(4, 'final submission report'),
(5, 'final submission evaluation report');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `file_id` int(11) DEFAULT NULL,
  `reviewer_email` varchar(255) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `review_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`file_id`, `reviewer_email`, `review`, `review_timestamp`) VALUES
(4, 'fac8@test.com', NULL, '2023-12-05 15:05:38'),
(4, 'fac8@test.com', NULL, '2023-12-05 15:05:39'),
(2, 'fac8@test.com', 'this file is good and can be considered\r\n', '2023-12-05 15:31:58'),
(5, 'fac12@test.com', 'nice', '2024-01-15 15:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `sac`
--

CREATE TABLE `sac` (
  `student_email` varchar(255) NOT NULL,
  `advisor_email` varchar(255) DEFAULT NULL,
  `chairperson_email` varchar(255) DEFAULT NULL,
  `co_advisor_email` varchar(255) DEFAULT NULL,
  `member1_email` varchar(255) DEFAULT NULL,
  `member2_email` varchar(255) DEFAULT NULL,
  `requested_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `approval_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('pending','accepted','rejected') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sac`
--

INSERT INTO `sac` (`student_email`, `advisor_email`, `chairperson_email`, `co_advisor_email`, `member1_email`, `member2_email`, `requested_timestamp`, `approval_timestamp`, `status`) VALUES
('stu1@test.com', 'fac11@test.com', 'fac12@test.com', 'fac10@test.com', 'fac1@test.com', 'fac8@test.com', '2023-12-01 22:58:03', '2023-12-03 10:27:57', 'accepted'),
('stu2@test.com', 'fac16@test.com', 'fac16@test.com', 'fac13@test.com', 'fac4@test.com', 'fac7@test.com', '2023-12-01 23:07:11', '2023-12-01 23:07:11', 'pending'),
('stu3@test.com', 'fac11@test.com', 'fac14@test.com', 'fac12@test.com', 'fac15@test.com', 'fac2@test.com', '2023-12-04 15:43:23', '2023-12-04 15:55:50', 'accepted'),
('stu98@test.com', 'fac10@test.com', 'fac1@test.com', 'fac12@test.com', 'fac3@test.com', 'fac6@test.com', '2024-01-13 17:29:27', '2024-01-13 17:32:56', 'accepted'),
('stu99@test.com', 'fac14@test.com', 'fac12@test.com', 'fac10@test.com', 'fac3@test.com', 'fac6@test.com', '2023-12-05 14:23:52', '2023-12-05 14:25:12', 'accepted'),
('stufinal2@test.com', 'fac8@test.com', 'fac11@test.com', 'fac10@test.com', 'fac2@test.com', 'fac6@test.com', '2024-01-15 15:24:57', '2024-01-15 15:26:07', 'accepted'),
('stufinal@test.com', 'fac11@test.com', 'fac6@test.com', 'fac3@test.com', 'fac8@test.com', 'fac9@test.com', '2024-01-15 15:05:52', '2024-01-15 15:19:30', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `email` varchar(255) NOT NULL,
  `pid` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `dept_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`email`, `pid`, `first_name`, `last_name`, `dept_id`) VALUES
('7897sonisarvesh@gmail.com', '20btcse030', 'soni', 'sarkar', 1),
('stu1@test.com', 'PID1', 'John', 'Doe', 1),
('stu2@test.com', 'PID2', 'Alice', 'Smith', 2),
('stu3@test.com', 'PID3', 'Bob', 'Johnson', 1),
('stu4@test.com', 'PID4', 'Eva', 'Williams', 2),
('stu5@test.com', 'PID5', 'Charlie', 'Brown', 1),
('stu6@test.com', 'PID6', 'Grace', 'Miller', 1),
('stu90@test.com', 'sdj;ljre', 'stu90', 'student', 1),
('stu98@test.com', '20bhtxtrg09', 'stu98', 'mok', 1),
('stu99@test.com', '2215', 'andrew', 'tate', 1),
('stufinal2@test.com', '1234', 'stufinal2', 'tester', 1),
('stufinal@test.com', '1234', 'tester', 'final', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `file_id` int(11) NOT NULL,
  `student_email` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `file_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`file_id`, `student_email`, `file_path`, `file_type_id`) VALUES
(1, 'stu1@test.com', 'uploads/file-sample_150kB.pdf', 1),
(2, 'stu1@test.com', 'uploads/Ethical Hacking.pdf', 1),
(3, 'stu1@test.com', 'uploads/stu1@test.com_1_1701697313_656dd721b006b.pdf', 1),
(4, 'stu1@test.com', 'uploads/stu1@test.com_1_1701697322_656dd72a9b40a.pdf', 1),
(5, 'stu1@test.com', '../uploads/stu1@test.com_1_1701697495_656dd7d78e1c4.pdf', 1),
(6, 'stu3@test.com', '../uploads/stu3@test.com_1_1701705397_656df6b5ce421.pdf', 1),
(7, 'stu99@test.com', '../uploads/stu99@test.com_1_1701786395_656f331bb1384.pdf', 1),
(8, 'stu98@test.com', '../uploads/stu98@test.com_1_1705167676_65a2cb3c4f05a.pdf', 1),
(9, 'stu3@test.com', '../uploads/stu3@test.com_1_1705168192_65a2cd4034d99.pdf', 1),
(10, 'stufinal@test.com', '../uploads/stufinal@test.com_5_1705336510_65a55ebe26840.pdf', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(55) NOT NULL,
  `signup_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `signup_timestamp`) VALUES
(4, 'stu1@test.com', '$2y$10$rJcYmzuF5BKIKXjX.NkLE.3p/2R.0jd1e0XySlAYK1jYgFJIuZsmy', 'student', '2023-11-30 12:43:16'),
(5, 'stu2@test.com', '$2y$10$rq4O.7hTlnNdECZW71k64u1UMZffgKRNOy.Ri9eOBfKVKRWztQ1Fa', 'student', '2023-11-30 12:44:06'),
(8, 'stu5@test.com', '$2y$10$kJK3vs.g5GKUGrSAGXf3Qe2xDl7Y88qYabi4b3RbXEEVHzJ3NfO7S', 'student', '2023-11-30 13:02:17'),
(9, 'stu3@test.com', '$2y$10$Txxl.OtfkQj3/6TfxspqbuMSQhM29.gxhanRL6mUy2JsnrB4JGs46', 'student', '2023-11-30 13:03:07'),
(10, 'stu4@test.com', '$2y$10$wKXFMh/GcSHhlvdlbRhgT.Ctie/1j3WTHPHiJBt9XYhZNUI3D58HG', 'student', '2023-11-30 13:04:18'),
(12, 'fac1@test.com', '$2y$10$ZAePmVCITTtywWaDNfJAgegiNVrBkiui8JyJhr6m2DQ56rDW5ykS.', 'faculty', '2023-11-30 16:33:12'),
(13, 'fac2@test.com', '$2y$10$z0xfmVRc8Q9adfeKPpvNnePoLUnDEX1YqtaEATzma2DO7tPLkmzMu', 'faculty', '2023-11-30 16:33:30'),
(14, 'fac3@test.com', '$2y$10$Xq5R6RtV0XwnE/3Ux22i8uR2vSWlXJJsGw0WXdxMsHkQqdXCRLnsC', 'faculty', '2023-11-30 16:33:40'),
(15, 'fac4@test.com', '$2y$10$ErasSohDpwLNc0g8y7RlEuicsxV211BFm2pShm0if7KfNzTlZJ.f6', 'faculty', '2023-11-30 16:33:54'),
(16, 'fac5@test.com', '$2y$10$i2EQaHzA4eUR7bOTHDAnnOPhj2DposVTyBjf0XB5e3tS/fdVTVDJ2', 'faculty', '2023-11-30 16:35:29'),
(17, 'fac6@test.com', '$2y$10$bGCj5dvw5K7ccjfVKB6NxeV49Kk3d42cLx5YYOd4/dApOY3r.nHly', 'faculty', '2023-11-30 16:35:39'),
(19, 'fac8@test.com', '$2y$10$zdD8xzuCinWN4E9xw4z6juAuKP0ay3L7.TcVzBAUBhA/6LJJalDUW', 'faculty', '2023-11-30 16:36:13'),
(20, 'fac9@test.com', '$2y$10$mEwQCN6KWPhtMM6Ih9h6Qeu1NNGtkBmxOXkC4Oo52cbN4MXh6sl1a', 'faculty', '2023-11-30 16:36:24'),
(21, 'fac10@test.com', '$2y$10$LY8msby9QEnAEl89bRhlvOcRNCezQg/Kt.Ix4Uhfz.F3T5TjCfZyy', 'faculty', '2023-11-30 16:36:46'),
(22, 'fac11@test.com', '$2y$10$mn85eXwLJmZZBuZuKYJzx.UZx3w9vyTZghZ7SR9AcnrwLaTAu2h6i', 'faculty', '2023-11-30 16:37:01'),
(23, 'fac12@test.com', '$2y$10$h3cDhyb8U20jncNST85YreyQmQUi9vTsxQ0gOKhTbWgXDIFw17dpm', 'faculty', '2023-11-30 17:48:21'),
(24, 'fac13@test.com', '$2y$10$rHvXdzsWTCKKcBkGon5/5.vIAZi1dLTWGCRcgIKIidF2pRThk2Tqu', 'faculty', '2023-11-30 17:48:39'),
(27, 'fac16@test.com', '$2y$10$fCfAAcKeiOxrsa87R8m4JuUFmxv4C8oDgzeCIWSOlQ3GULNr.mAxq', 'faculty', '2023-11-30 17:49:21'),
(29, 'admin@test.com', '$2y$10$E42tEBR0RqeCo81BM.ncL.q7HwjSD5bXoWXE0nRhHyH5fcUTZcd76', 'admin', '2023-12-03 11:07:03'),
(30, 'admin1@test.com', '$2y$10$AZxcWJOzIque.qQCHQh/p.wywtSLAOlHhrkNK8Z73Zg.5YUuNSN7G', 'admin', '2023-12-03 11:13:41'),
(32, 'deanpg@test.com', '$2y$10$GkcXNWUOqxNBQca68qA1FuZ/1By6WRpHWs7UKSWlRB.ZQRyr.LYa.', 'deanpg', '2023-12-05 07:59:54'),
(33, 'stu99@test.com', '$2y$10$1MBvdQsxyVhHyXIC8mu8SeKHhxKvnqVZIP2X7DOcQ26NPlGQrksZ.', 'student', '2023-12-05 09:52:19'),
(34, 'stu98@test.com', '$2y$10$ZnNW1myiA.wX1pwt93DG4ei0hkdJFDb067KG1vM.6sxe7OlutnElG', 'student', '2024-01-13 12:56:48'),
(35, 'stu90@test.com', '$2y$10$zv/gMjFh9tAiFDQGS5qJ0ei5ekbcijLyx.y9FI5DeoeT66gt4hkti', 'student', '2024-01-13 16:39:08'),
(36, 'stufinal@test.com', '$2y$10$1M2ZA7oJXYnW7MLqBIPuBuq8/3gNzTLQVitxzQqg9yV95oD26EjPa', 'student', '2024-01-15 10:34:20'),
(37, 'stufinal2@test.com', '$2y$10$58CkzsXghOR2vcEDwyotlufQlCyiKOI1IUV43zIvqWamWKHzLCl3e', 'student', '2024-01-15 10:53:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `file_type`
--
ALTER TABLE `file_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `sac`
--
ALTER TABLE `sac`
  ADD PRIMARY KEY (`student_email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file_type`
--
ALTER TABLE `file_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
