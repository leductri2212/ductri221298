-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 21, 2019 lúc 06:06 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `computer`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(255) NOT NULL,
  `Position` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Position`) VALUES
(6, 'Laptop', 2),
(2, 'USB', 5),
(3, 'Điện Thoại', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `GroupID` int(11) NOT NULL,
  `GroupName` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`GroupID`, `GroupName`) VALUES
(1, 'Admin'),
(2, 'Moder'),
(3, 'Khách hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacturers`
--

CREATE TABLE `manufacturers` (
  `ManufacturerID` int(11) NOT NULL,
  `ManufacturerName` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `manufacturers`
--

INSERT INTO `manufacturers` (`ManufacturerID`, `ManufacturerName`) VALUES
(13, 'Dell'),
(12, 'HP'),
(10, 'Samsung'),
(11, 'Iphone'),
(14, 'Asus'),
(15, 'Huawei'),
(16, 'Lenovo'),
(17, 'Kington'),
(18, 'XIAOMI');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderitems`
--

CREATE TABLE `orderitems` (
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `AddedDate` datetime NOT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Sum` int(11) DEFAULT NULL,
  `Status` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ManufacturerID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `ImageUrl` varchar(255) NOT NULL,
  `Price` int(11) NOT NULL DEFAULT '0',
  `Quantity` int(11) NOT NULL DEFAULT '0',
  `Description` varchar(1000) NOT NULL,
  `Body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`ProductID`, `ManufacturerID`, `CategoryID`, `ProductName`, `ImageUrl`, `Price`, `Quantity`, `Description`, `Body`) VALUES
(50, 17, 2, 'Dây cáp Micro USB 1m', '1128036469cap-micro-1m-esaver-ds118br-tb-avatar-1-600x600.jpg', 40000, 40, 'Dây cáp Micro USB 1 m eSaver DS118-TB có màu xanh đẹp mắt, thiết kế quen thuộc giúp người dùng dễ sử dụng ngay trong lần đầu tiên.', 'Jack cắm:	Micro USB. \r\nTính năng:	Sạc. Truyền dữ liệu. Dòng sạc tối đa:	Max 3A. \r\nĐộ dài dây:	1 m. Xuất xứ: Trung Quốc'),
(51, 11, 3, 'iPhone Xs Max 256GB', '2048737244iphone-xs-max-256gb-white-400x460.png', 35000000, 24, 'Sau 1 năm mong chờ, chiếc smartphone cao cấp nhất của Apple đã chính thức ra mắt mang tên iPhone Xs Max. Máy các trang bị các tính năng cao cấp nhất từ chip A12 Bionic, dàn loa đa chiều cho tới camera kép tích hợp trí tuệ nhân tạo.', 'Màn hình:	OLED, 6.5\", Super Retina. \r\nHệ điều hành:	iOS 12. \r\nCamera sau:	Chính 12 MP & Phụ 12 MP.'),
(52, 12, 6, 'Laptop HP 15 da1023TU', '964143725384886800hp-15-da0048tu-4me63pa-33397-ava1-600x600.jpg', 14000000, 30, 'Laptop HP 15 da1023TU (5NK81PA) vừa được HP cho ra mắt, với thân hình chắc chắn và trọng lượng không quá nặng để bạn có thể mang theo bên mình hằng ngày. Cấu hình máy chạy mượt mà ứng dụng văn phòng, đồ hoạ cơ bản. Đây sẽ là lựa chọn đáng cân nhắc cho sinh viên, nhân viên văn phòng.', 'CPU:	Intel Core i5 Coffee Lake, 8265U, 1.60 GHz. \r\nRAM:	4 GB, DDR4 (2 khe), 2666 MHz. \r\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 PCIe'),
(49, 13, 6, 'Laptop Dell Vostro 3578 i7 ', '1140683981dell-vostro-3578-ngmpf11-450x300-600x600-600x600.jpg', 20990000, 20, 'Laptop Dell Vostro 3578 là dòng máy tính xách tay mới của Dell trong năm 2018 với cấu hình cực cao bao gồm vi xử lý i7 8550U thế hệ thứ 8 có hiệu năng vượt trội, card màn hình rời Radeon 520 và 8 GB RAM. Với cấu hình mạnh mẽ máy có thể chạy tốt các ứng dụng phục vụ cho công việc, học tập, xử lý đồ hoạ cũng như chơi game ở mức cấu hình tầm trung khá mượt mà.', 'CPU:	Intel Core i7 Kabylake Refresh, 8550U, 1.80 GHz. \r\nRAM:	8 GB, DDR4 (2 khe), 2400 MHz. \r\nỔ cứng:	HDD: 1 TB. \r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)'),
(48, 13, 6, 'Laptop HP 15 da0054TU', '734178429hp-15-da0054tu-4me68pa-thumbnail-600x600.jpg', 10990000, 30, 'Laptop HP 15 da0054TU là phiên bản máy tính xách tay với cấu hình được trang bị vi xử lý chip Intel Core i3 Kabylake thế hệ 7 đem đến hiệu năng ổn định khi thao tác các tác vụ cơ bản, phù hợp cho công việc văn phòng, học tập.', ''),
(42, 14, 6, 'Laptop Asus X407UA', '258406264asus-x407ua-i5-8250u-4gb-16gb-1tb-win10-bv485t-thumb33397-600x600.jpg', 13390000, 20, 'Laptop 407UA (BV485T) mang trong mình thiết kế trang nhã, với trọng lượng khá nhẹ phù hợp cho việc di chuyển.', 'CPU: Intel Core i5 Coffee Lake, 8250U, 1.60 GHz. RAM:	4 GB, DDR4 (2 khe), 2400 MHz'),
(44, 17, 2, 'USB 3.0 Transcend JF700 64GB', '174519347716768070975518.jpg', 240000, 30, 'Trang bị cổng kết nối USB 3.0. Dung lượng lên đến 64GB. Tương thích với hầu hết các thiết bị công nghệ ', ''),
(45, 12, 6, 'Laptop HP 15 da0048TU ', '384886800hp-15-da0048tu-4me63pa-33397-ava1-600x600.jpg', 7300000, 10, 'Laptop HP 15 da0048TU N5000 là chiếc máy tính xách tay có màn hình 15.6 inch độ phân giải HD phù hợp cho người dùng cần một chiếc máy để học tập, làm việc, giải trí. Kết hợp cùng vi xử lý Intel Pentium và 4 GB DDR4 máy có thể đáp ứng các nhu cầu cơ bản một cách trơn tru.', 'CPU: Intel Pentium, N5000, 1.10 GHz.RAM:	4 GB, DDR4 (1 khe), 2400 MHz'),
(46, 13, 6, 'Laptop Dell Inspiron 3576', '767040166dell-inspiron-3576-p63f002n76f-450-600x600.png', 14390000, 20, 'Thiết kế thanh lịch, trọng lượng khá nhẹ phù hợp cho việc di chuyển hằng ngày đến lớp học, công sở - Laptop Dell Inspiron 3576 i5 8250U được trang bị cấu hình đủ mạnh để chạy tốt các ứng dụng văn phòng, cho phản hồi các thao tác kéo thả trong photoshop, AI khá nhanh rất phù hợp cho sinh viên, nhân viên văn phòng.', 'CPU: Intel Core i5 Kabylake Refresh, 8250U, 1.60 GHz. RAM: 4 GB, DDR4 (2 khe), 2400 MHz'),
(47, 14, 6, 'Laptop Asus VivoBook', '1545754616asus-a411ua-i3-8130u-eb688t-ava-600x600.jpg', 11290000, 40, 'Asus A411UA (EB688T) là chiếc laptop sở hữu cấu hình cho hiệu năng hoạt động ổn định với chip Intel Core i3 thế hệ thứ 8, 4 GB RAM, ổ cứng lưu trữ HDD 1 TB, cùng hệ điều hành Windows bản quyền được cài sẵn trên máy. Asus A411UA phù hợp với những ai đang tìm một mẫu máy tính văn phòng, hay giải trí, học tập, sinh viên.', 'CPU: Intel Core i3 Kabylake Refresh, 8130U, 2.20 GHz. \r\nRAM: 4 GB, DDR4 (1 khe), 2133 MHz. \r\nỔ cứng: HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3. \r\nMàn hình: 14 inch, Full HD (1920 x 1080). '),
(41, 15, 3, 'Huawei Y7 Pro', '1148255722huawei-y7-pro-2019-400x460.png', 3490000, 10, 'Hoàn toàn lột xác so với phiên bản tiền nhiệm, Y7 Pro (2019) đã giúp Huawei có thêm điểm cộng trong mắt người dùng nhờ việc đem thiết kế mặt lưng gradient, màn hình giọt nước và pin khủng lên chiếc smartphone giá rẻ của mình.', 'Màn hình: IPS LCD, 6.26\", HD+. Hệ điều hành:	Android 8.1 (Oreo)'),
(39, 16, 6, 'Laptop Lenovo IdeaPad 330', '628688025lenovo-ideapad-330-15ikb-i5-8250u-4gb-1tb-win10-8-1-1-600x600.jpg', 11990000, 20, 'Với kiểu dáng đơn giản trang nhã và cấu hình mạnh mẽ, laptop Lenovo IdeaPad 330 15IKB i5 8250U hướng đến khách hàng là dân văn phòng và học sinh sinh viên.', 'CPU: Intel Core i5 Coffee Lake, 8250U, 1.60 GHz. RAM: 4 GB, DDR3L(On board+1Khe), 2133 MHz'),
(40, 11, 3, 'iPhone 7 Plus 32GB', '270258762iphone-7-plus-gold-400x460.png', 12990000, 30, 'Mặc dù giữ nguyên vẻ bề ngoài so với dòng điện thoại iPhone đời trước, bù lại iPhone 7 Plus 32GB lại được trang bị nhiều nâng cấp đáng giá như camera kép đầu tiên cũng như cấu hình mạnh mẽ.', 'Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD\r\nHệ điều hành:	iOS 12'),
(35, 10, 3, 'Samsung Galaxy S10+ 128GB', '15348725291810508630samsung-galaxy-s10-plus-128gb-bac-da-sac-400x460.png', 23990000, 10, 'Samsung Galaxy S10+ đã ra mắt và thực sự người dùng khó có thể cường lại sức hút kỳ lạ tới từ siêu phẩm này của Samsung và giờ đây hãng sản xuất smartphone tới từ Hàn Quốc tiếp tục tung ra phiên bản Samsung Galaxy S10+ 128GB Bạc Đa Sắc thậm chí còn thu hút hơn các phiên bản cũ.', ''),
(43, 17, 2, 'USB 2.0 ADATA C008 16GB', '25969262610814335483934.png', 108000, 30, '- Thiết kế thời trang, cá tính. \r\n- Tốc độ truyền tải dữ liệu nhanh. \r\n- Tự động nhận driver. ', ''),
(36, 10, 3, 'Samsung Galaxy A50 64GB', '1867882765samsung-galaxy-a50-black-1-400x460.png', 6990000, 20, 'Samsung Galaxy A50 là chiếc smartphone tầm trung mới của Samsung trong năm 2019 với nhiều tính năng hấp dẫn, đặc biệt là có cả cảm biến vân tay dưới màn hình.', 'Màn hình: Super AMOLED, 6.4\", Full HD+\r\nHệ điều hành:	Android 9.0 (Pie)'),
(37, 10, 3, 'Samsung Galaxy A70', '607206203samsung-galaxy-a70-black-400x460.png', 9290000, 12, 'Samsung Galaxy A70 là một phiên bản phóng to của chiếc Samsung Galaxy A50 đã ra mắt trước đó với nhiều cải tiến tới từ bên trong.', 'Màn hình: Super AMOLED, 6.7\", Full HD+. Hệ điều hành:	Android 9.0 (Pie)'),
(38, 11, 3, 'iPhone Xr 64GB', '1612599405iphone-xr-black-400x460.png', 17990000, 10, 'Là  chiếc điện thoại iPhone có mức giá dễ chịu, phù hợp với nhiều khách hàng hơn, iPhone Xr vẫn được ưu ái trang bị chip Apple A12 mạnh mẽ, màn hình tai thỏ cùng khả năng chống nước chống bụi.', 'Màn hình: IPS LCD, 6.1\", Liquid Retina. Hệ điều hành:	iOS 12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `PassWord` varchar(32) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`UserID`, `GroupID`, `FullName`, `UserName`, `PassWord`, `Email`) VALUES
(1, 1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com'),
(32, 3, 'Trường Trận', 'trannqt', '415503177d81e2364c83c1f7c868714b', 'trannqt@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`GroupID`);

--
-- Chỉ mục cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`ManufacturerID`);

--
-- Chỉ mục cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`OrderID`,`ProductID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `UserID` (`UserID`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `ManufacturerID` (`ManufacturerID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `UserName` (`UserName`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `GroupID` (`GroupID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `GroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `ManufacturerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
