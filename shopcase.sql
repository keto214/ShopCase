-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2022 at 05:59 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopcase`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
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
-- Dumping data for table `cart`
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
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cate_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cate_name`, `status`) VALUES
(1, 'Laptop Asus', 1),
(2, 'Laptop Acer', 1),
(3, 'Laptop Dell', 1),
(4, 'Macbook', 1),
(5, 'Laptop MSI', 1),
(6, 'Laptop HP', 1),
(7, 'Laptop Lenovo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
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

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `content`, `time`, `status`) VALUES
(3, 'nhan', 'nhan', 'nhan', 'nhan', '2022-03-20 17:50:18', 0),
(4, 'hung', 'hung', 'hung', 'hung', '2022-03-20 17:50:29', 0),
(6, 'Nhan Do', '0383687458', 'dotrongnhan20112003@gmail.com', 'hihi', '2022-03-20 18:38:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
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
-- Table structure for table `orders`
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
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `session_id`, `name`, `phone`, `email`, `address`, `product_id`, `product_name`, `price`, `amount`, `total`, `thoigian`, `status`) VALUES
(11, 1, NULL, 'Trọng Nhân', '0123456789', 'nhan@gmail.com', 'nhan@gmail.com', 1, 'Ốp Lưng Điện Thoại In Tên TE-29', 150000, 1, 150000, '2022-03-18 10:28:28', 1),
(12, NULL, '4i6fcbsa6hrke322beh63q5cvk', 'Đỗ Trọng Nhân', '0383687458', 'dotrongnhan20112003@gmail.com', 'Viet Nam', 1, 'Ốp Lưng Điện Thoại In Tên TE-29', 150000, 5, 750000, '2022-03-20 07:06:10', 0),
(14, NULL, '6jasfdrv9v3f138ilgphkanthm', 'Đỗ Trọng Nhân', '0383687458', 'dotrongnhan20112003@gmail.com', 'Viet Nam', 1, 'Ốp Lưng Điện Thoại In Tên TE-29', 150000, 1, 150000, '2022-03-20 07:08:48', 0),
(15, NULL, '4i6fcbsa6hrke322beh63q5cvk', 'Đỗ Trọng Nhân', '0383687458', 'dotrongnhan20112003@gmail.com', 'Viet Nam', 1, 'Ốp Lưng Điện Thoại In Tên TE-29', 150000, 5, 750000, '2022-03-20 07:10:04', 0),
(16, NULL, '4i6fcbsa6hrke322beh63q5cvk', 'Đỗ Trọng Nhân', '0383687458', 'dotrongnhan20112003@gmail.com', 'Viet Nam', 2, 'Ốp Lưng Điện Thoại In Tên TE-30', 150000, 1, 150000, '2022-03-20 07:11:42', 0),
(17, NULL, '4i6fcbsa6hrke322beh63q5cvk', 'Đỗ Trọng Nhân', '0383687458', 'dotrongnhan20112003@gmail.com', 'Viet Nam', 3, 'Ốp Lưng Điện Thoại In Tên TE-31', 150000, 1, 150000, '2022-03-20 07:12:27', 0),
(18, 15, NULL, 'tôi tên là nhân', '0123456789', 'tuilanhan@gmail.com', 'Mỹ Tho', 1, 'Ốp Lưng Điện Thoại In Tên TE-29', 150000, 1, 150000, '2022-03-20 15:18:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
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
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_category`, `product_name`, `price`, `image`, `description`, `view`, `status`) VALUES
(1, 1, 'Laptop Asus Gaming Rog Strix G15 G513IH HN015W', 19000000, 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/9/h/9h41.png', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất', 24, 1),
(2, 1, 'Laptop ASUS VivoBook 15X A1503ZA-L1422W', 18500000, 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/_/0/_000a6_10444_asus_vivobook_15x_oled_a15_6_.jpg', '\r\n- Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 15, 1),
(3, 1, 'Laptop ASUS Gaming TUF FX506LHB-HN188W', 16500000, 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/9/h/9h56.png', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 5, 1),
(4, 1, 'Laptop Asus Zenbook 14 UX3402ZA-KM219W', 24500000, 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/6/_/6_26_80.jpg', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất. ', 26, 1),
(5, 1, 'Laptop Asus Gaming Rog Zenphyrus G14 Ga401QH K2091W', 24490000, 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/1/0/10h33_1.png', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 14, 1),
(6, 4, 'Laptop Apple MacBook Air M1 2020 16GB/256GB/7-core GPU (Z124000DE)', 30690000, 'https://cdn.tgdd.vn/Products/Images/44/239552/Slider/vi-vn-apple-macbook-air-m1-2020-z124000de-1.jpg', 'Laptop Apple Air M1 2020 có thiết kế đẹp, sang trọng với CPU M1 độc quyền từ Apple cho hiệu năng đồ họa cao, màn hình Retina hiển thị siêu nét cùng với hệ thống bảo mật tối ưu.', 14, 1),
(7, 4, 'Laptop Apple MacBook Pro M2 2022 8GB/256GB/10-core GPU (MNEH3SA/A)', 33190000, 'https://cdn.tgdd.vn/Products/Images/44/282828/Slider/vi-vn-apple-macbook-pro-13-inch-m2-2022-01.jpg', 'Thiết kế thanh lịch, sang trọng cùng hiệu năng vượt trội đến từ vi xử lý tân tiến Apple M2 có trong Macbook Pro M2, hứa hẹn sẽ mang lại nhiều giá trị cho người dùng sáng tạo. Phục vụ mọi nhu cầu', 4, 1),
(8, 4, 'Laptop Apple MacBook Pro 16 M1 Max 2021 10 core-CPU/32GB/1TB SSD/32 core-GPU (MK1A3SA/A)', 83190000, 'https://cdn.tgdd.vn/Products/Images/44/253582/Slider/vi-vn-apple-macbook-pro-16-m1-max-2021-1.jpg', 'Thật ấn tượng với Apple MacBook Pro 16 M1 Max 2021 mang trên mình \"bộ áo mới\" độc đáo, cuốn hút mọi ánh nhìn cùng với tai thỏ.\r\nHiệu năng vượt trội, đỉnh cao, cân mọi tác vụ\r\n\r\n\r\n', 106, 1),
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
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `image`, `status`) VALUES
(1, 'Slider mới 1', 'https://hatocase.com/wp-content/uploads/2021/04/In-Op-Lung-Dien-Thoai-Theo-Yeu-Cau-3-12.jpg', 1),
(2, 'slider 2 ', 'https://bloganchoi.com/wp-content/uploads/2020/04/op-lung-dep-1.jpg', 1),
(3, 'Slider 3', 'https://phukienahai.vn/media/product/401_op_lung_vo_so_in_hinh_6.jpg', 0),
(4, 'slider 4', 'https://bloganchoi.com/wp-content/uploads/2020/04/op-lung-hinh-thu.jpg', 1),
(5, 'slider 5', 'https://media3.scdn.vn/img4/2021/05_04/8Fxp4UNrvOSXXbQT38VR.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `role`) VALUES
(2, 'admin', 'admin@gmail.com', '4297f44b13955235245b2497399d7a93', '0123456789', 'Việt Nam', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
