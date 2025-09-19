-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 19, 2024 at 03:01 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devilled_plazza`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `itemId` int NOT NULL AUTO_INCREMENT,
  `itemName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image_path` varchar(255) NOT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemId`, `itemName`, `price`, `image_path`) VALUES
(5, 'Crispy Chicken Submarine', 1200, 'https://fast-foodz.shophere.lk/wp-content/uploads/2020/09/927486E5-8984-4C6F-BAA1-AB7562633A8F.png'),
(4, 'Veg Submarine', 950, 'https://tse2.mm.bing.net/th?id=OIP.wPoVfFqqIvzU1qX0X6XYvwHaFb&pid=Api&P=0&h=220'),
(3, 'Crispy Chicken Burger', 1000, 'https://kfoods.com/images1/newrecipeicon/chicken-crispy-burger_3700.jpg'),
(2, 'Egg Burger', 950, 'https://bakeitwithlove.com/wp-content/uploads/2023/01/egg-burger-h.jpg'),
(1, 'Veg Burger', 850, 'https://www.hungryjacks.com.au/Upload/HJ/Media/Menu/Product/Mobile/1436_Chicken_Royale_WEB.png'),
(6, 'Chicken Meatball Submarine', 1250, 'https://zonacooks.com/wp-content/uploads/2021/07/Homemade-Meatball-Subs-Recipe-for-Two-9-735x490.jpg'),
(7, 'Veg Sandwich', 750, 'https://i.pinimg.com/originals/a5/f2/10/a5f21054fcc0f406d154a1d151fa1f04.jpg'),
(8, 'Ham Sandwich', 950, 'https://www.pumpkinnspice.com/wp-content/uploads/2016/08/grilled-ham-cheese-sandwich-26.jpg\"'),
(9, 'Veg Fried Rice', 850, 'http://2.bp.blogspot.com/-1QINWRa9W94/Tn2axwzUjaI/AAAAAAAAARM/2yMfU4lBgWU/s1600/079.JPG'),
(10, 'Mixed Fried Rice', 1450, 'https://tse4.mm.bing.net/th?id=OIP.7ShWsgZFNnLMJrr11afSagHaEK&pid=Api&P=0&h=220'),
(11, 'Egg Kottu', 950, 'https://tse1.mm.bing.net/th?id=OIP.DQ_jTjnq9hzh_ivwal7J_gHaEK&pid=Api&P=0&h=220'),
(12, 'Chicken Kottu', 1150, 'https://blacksheeprestaurants.com/wp-content/uploads/2018/12/black-sheep-restaurants-chicken-kothu-sri-lanka-1024x683.png');

-- --------------------------------------------------------

--
-- Table structure for table `ordering_details`
--

DROP TABLE IF EXISTS `ordering_details`;
CREATE TABLE IF NOT EXISTS `ordering_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `UserId` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Gender` text NOT NULL,
  `Address` varchar(255) NOT NULL,
  `ContactNo` int NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`UserId`, `FirstName`, `LastName`, `Email`, `Gender`, `Address`, `ContactNo`, `Password`) VALUES
(1, 'Dasuni', 'Archana', 'dasuniarchana02@gmail.com', 'Female', 'Mainstreet,Colombo', 112345543, '$2y$10$TNla6UmTk8Gj2'),
(2, 'Gimni', 'Hasa', 'archanadaranagama18@gmail.com', 'Female', 'Alpha street,Negombo', 116786789, '$2y$10$3MfCCa0U6/O4o'),
(3, 'abc', 'def', 'abcdef@yahoo.com', 'Male', 'abcstreet,def', 71987654, '$2y$10$85UFb6giHAYwl'),
(4, 'sandaru', 'abenayake', 'sandaru@gmail.com', 'Male', 'homagama', 74567654, '$2y$10$sYBXj5DDmiWku'),
(6, 'Desitha', 'Weerasingha', 'desitha@gmail.com', 'Male', 'Makola', 123456789, '$2y$10$49O4tR7Rdh/6c');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
