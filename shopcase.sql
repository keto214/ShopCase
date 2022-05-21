-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 21, 2022 lúc 03:37 PM
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
-- Cơ sở dữ liệu: `shopcase`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `session_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `amount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `session_id`, `product_name`, `image`, `price`, `amount`) VALUES
(73, 1, 0, '6jasfdrv9v3f138ilgphkanthm', 'Ốp Lưng Điện Thoại In Tên TE-29', 'https://hatocase.com/wp-content/uploads/2021/03/op-lung-dien-thoai-in-ten-29.1-510x510.jpg', 150000, 1),
(76, 1, 0, 'qbp63t8itsehf493asahbi7j73', 'Ốp Lưng Điện Thoại In Tên TE-29', 'https://hatocase.com/wp-content/uploads/2021/03/op-lung-dien-thoai-in-ten-29.1-510x510.jpg', 150000, 1),
(78, 1, 0, 'tfosj83j9r6kapmc72d0iesvvu', 'Ốp Lưng Điện Thoại In Tên TE-29', 'https://hatocase.com/wp-content/uploads/2021/03/op-lung-dien-thoai-in-ten-29.1-510x510.jpg', 150000, 10),
(79, 3, 0, '6sd5145hl69k4qehejaisrdacr', 'Ốp Lưng Điện Thoại In Tên TE-31', 'https://hatocase.com/wp-content/uploads/2021/03/op-lung-dien-thoai-in-ten-31.1-510x510.jpg', 150000, 1),
(80, 2, 0, '0bhu27601b82tn4lhq7qepsr57', 'Ốp Lưng Điện Thoại In Tên TE-30', 'https://hatocase.com/wp-content/uploads/2021/03/op-lung-dien-thoai-in-ten-30.1-510x510.jpg', 150000, 1),
(83, 2, 0, 'dgmp6b3qlarm93fcj0469i0uko', 'Ốp Lưng Điện Thoại In Tên TE-30', 'https://hatocase.com/wp-content/uploads/2021/03/op-lung-dien-thoai-in-ten-30.1-510x510.jpg', 150000, 1),
(84, 2, 0, 'nsil994a3jhuqufrj9qogbkoe3', 'Ốp Lưng Điện Thoại In Tên TE-30', 'https://hatocase.com/wp-content/uploads/2021/03/op-lung-dien-thoai-in-ten-30.1-510x510.jpg', 150000, 1),
(86, 1, 0, '6ia7ittsaifqjmfo9646jm6um7', 'Ốp Lưng Điện Thoại In Tên TE-29', 'https://hatocase.com/wp-content/uploads/2021/03/op-lung-dien-thoai-in-ten-29.1-510x510.jpg', 150000, 2),
(87, 17, 0, '6ia7ittsaifqjmfo9646jm6um7', 'Ốp Lưng Cặp Đôi CO-08', 'https://hatocase.com/wp-content/uploads/2019/04/op-lung-cap-8-510x510.jpg', 220000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cate_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `cate_name`, `status`) VALUES
(1, 'Name Printed Case', 1),
(2, 'Double Case', 1),
(3, 'Sketch Print Case', 1),
(4, 'Beautiful Personal Image Design Template', 1),
(5, 'Chibi Drawing Case', 1),
(6, 'Company Logo Print Case', 1),
(16, 'Loại sản phẩm mới thêm 1', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `thoigian` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `session_id`, `name`, `phone`, `email`, `address`, `product_id`, `product_name`, `price`, `amount`, `total`, `thoigian`, `status`) VALUES
(19, NULL, '8hvpis8o5jihu1csd1k5jl6v75', 'Hoàng Quân', '0702982792', 'hoangquanketo214@gmail.com', '351A, lạc long quân, phường 5, quận 11', 1, 'Ốp Lưng Điện Thoại In Tên TE-29', 150000, 1, 150000, '2022-05-21 13:03:12', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''Tất cả dòng điện thoại''',
  `view` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `id_category`, `product_name`, `price`, `image`, `description`, `view`, `status`) VALUES
(1, 1, 'Ốp Lưng Điện Thoại In Tên TE-29', 150000, 'https://hatocase.com/wp-content/uploads/2021/03/op-lung-dien-thoai-in-ten-29.1-510x510.jpg', 'Tất cả dòng điện thoại', 23, 1),
(2, 1, 'Ốp Lưng Điện Thoại In Tên TE-30', 150000, 'https://hatocase.com/wp-content/uploads/2021/03/op-lung-dien-thoai-in-ten-30.1-510x510.jpg', 'Tất cả dòng điện thoại', 14, 1),
(3, 1, 'Ốp Lưng Điện Thoại In Tên TE-31', 150000, 'https://hatocase.com/wp-content/uploads/2021/03/op-lung-dien-thoai-in-ten-31.1-510x510.jpg', 'Tất cả dòng điện thoại', 6, 1),
(4, 1, 'Ốp Lưng Điện Thoại In Tên TE-32', 150000, 'https://hatocase.com/wp-content/uploads/2021/03/op-lung-dien-thoai-in-ten-32.1-510x510.jpg', 'Tất cả dòng điện thoại', 0, 1),
(5, 1, 'Ốp Lưng Điện Thoại In Tên TE-33', 150000, 'https://hatocase.com/wp-content/uploads/2021/03/op-lung-dien-thoai-in-ten-33.1-510x510.jpg', 'Tất cả dòng điện thoại', 0, 1),
(6, 1, 'Ốp Lưng Điện Thoại In Tên TE-34', 150000, 'https://hatocase.com/wp-content/uploads/2021/03/op-lung-dien-thoai-in-ten-34.1-510x510.jpg', 'Tất cả dòng điện thoại', 0, 1),
(7, 1, 'Ốp Lưng Điện Thoại In Tên TE-35', 150000, 'https://hatocase.com/wp-content/uploads/2021/03/op-lung-dien-thoai-in-ten-35.1-510x510.jpg', 'Tất cả dòng điện thoại', 5, 1),
(8, 1, 'Ốp Lưng Điện Thoại In Tên TE-36', 150000, 'https://hatocase.com/wp-content/uploads/2021/03/op-lung-dien-thoai-in-ten-36.1-510x510.jpg', 'Tất cả dòng điện thoại', 1, 1),
(9, 1, 'Ốp Lưng Điện Thoại In Tên TE-37', 150000, 'https://hatocase.com/wp-content/uploads/2021/03/op-lung-dien-thoai-in-ten-37.1-510x510.jpg', 'Tất cả dòng điện thoại', 0, 1),
(10, 2, 'Ốp Lưng Cặp Đôi CO-01', 220000, 'https://hatocase.com/wp-content/uploads/2018/10/op-lung-couple_tuan-nhi-510x510.jpg', 'Tất cả dòng điện thoại', 0, 1),
(11, 2, 'Ốp Lưng Cặp Đôi CO-02', 220000, 'https://hatocase.com/wp-content/uploads/2018/10/op-lung-couple_thuy-linh-dang-huy-510x510.jpg', 'Tất cả dòng điện thoại', 1, 1),
(12, 2, 'Ốp Lưng Cặp Đôi CO-03', 220000, 'https://hatocase.com/wp-content/uploads/2018/10/op-lung-couple_danhmai-510x510.jpg', 'Tất cả dòng điện thoại', 0, 1),
(13, 2, 'Ốp Lưng Cặp Đôi CO-04', 220000, 'https://hatocase.com/wp-content/uploads/2018/10/op-lung-couple_thuy-tram-nhat-cuong-510x510.jpg', 'Tất cả dòng điện thoại', 0, 1),
(14, 2, 'Ốp Lưng Cặp Đôi CO-05', 220000, 'https://hatocase.com/wp-content/uploads/2018/10/op-lung-cap-5-ver-2-1-510x510.jpg', 'Tất cả dòng điện thoại', 1, 1),
(15, 2, 'Ốp Lưng Cặp Đôi CO-06', 220000, 'https://hatocase.com/wp-content/uploads/2018/10/op-lung-couple_khanh-Nhu.jpg', 'Tất cả dòng điện thoại', 2, 1),
(16, 2, 'Ốp Lưng Cặp Đôi CO-07', 220000, 'https://hatocase.com/wp-content/uploads/2018/10/op-lung-cap-7-ver-2-1-510x510.jpg', 'Tất cả dòng điện thoại', 0, 1),
(17, 2, 'Ốp Lưng Cặp Đôi CO-08', 220000, 'https://hatocase.com/wp-content/uploads/2019/04/op-lung-cap-8-510x510.jpg', 'Tất cả dòng điện thoại', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `name`, `image`, `status`) VALUES
(1, 'Slider mới 1', 'https://hatocase.com/wp-content/uploads/2021/04/In-Op-Lung-Dien-Thoai-Theo-Yeu-Cau-3-12.jpg', 1),
(2, 'slider 2 ', 'https://bloganchoi.com/wp-content/uploads/2020/04/op-lung-dep-1.jpg', 1),
(3, 'Slider 3', 'https://phukienahai.vn/media/product/401_op_lung_vo_so_in_hinh_6.jpg', 0),
(4, 'slider 4', 'https://bloganchoi.com/wp-content/uploads/2020/04/op-lung-hinh-thu.jpg', 1),
(5, 'slider 5', 'https://media3.scdn.vn/img4/2021/05_04/8Fxp4UNrvOSXXbQT38VR.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `role`) VALUES
(2, 'admin', 'admin@gmail.com', '4297f44b13955235245b2497399d7a93', '0123456789', 'Việt Nam', 1),
(17, 'Lương Hoàng Quân', 'hoangquanketo214@gmail.com', '7c6aa69949242c3c48d8271763c3d9dd', '0702982792', '351A, lạc long quân,p5, q11', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
