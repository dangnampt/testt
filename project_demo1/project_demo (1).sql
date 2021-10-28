-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 28, 2021 lúc 09:17 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project_demo`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `lever` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `lever`) VALUES
(1, 'namdt123', 'e10adc3949ba59abbe56e057f20f883e', 'dangtrungnampt@gmail.com', 1),
(2, 'jgate', '02a05c6e278d3e19afaca4f3f7cf47d9', 'namdtph08296@fpt.edu.vn', 1),
(3, 'namdt123', 'b0baee9d279d34fa1dfd71aadb908c3f', 'dangtrungnampt@gmail.com', 1),
(4, 'tamlinhdotho365', '698d51a19d8a121ce581499d7b701668', 'nucuoicuaem.lanuocmatcuaanh.9@facebook.com', 1),
(5, 'namdt12344', 'f7177163c833dff4b38fc8d2872f1ec6', 'dangtrungnampt@gmail.com', 1),
(6, 'ggggg', '4124bc0a9335c27f086f24ba207a4912', 'namdtph08296@fpt.edu.vn', 1),
(7, 'jgate44', '7c3daa31f887c333291d5cf04e541db5', 'dangtrungnampt@gmail.com', 1),
(8, 'namdt12356', '4297f44b13955235245b2497399d7a93', 'dangtrungnampt@gmail.com', 1),
(9, 'namdt1235676', '202cb962ac59075b964b07152d234b70', 'dangtrungnampt@gmail.com', 1),
(11, 'tamlinhdotho365dd', '4ab47e54c2f73ad4c0eb3974709721cd', 'dangtrungnampt@gmail.com', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
