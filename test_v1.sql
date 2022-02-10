-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:8889
-- 產生時間： 2022 年 02 月 10 日 01:28
-- 伺服器版本： 5.7.34
-- PHP 版本： 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `test_v1`
--

-- --------------------------------------------------------

--
-- 資料表結構 `buy`
--

CREATE TABLE `buy` (
  `userID` int(4) NOT NULL COMMENT '會員ＩＤ',
  `productID` int(4) NOT NULL COMMENT '產品ＩＤ',
  `productPrice` int(4) NOT NULL COMMENT '產品價格'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='購買表';

-- --------------------------------------------------------

--
-- 資料表結構 `class`
--

CREATE TABLE `class` (
  `classID` int(4) NOT NULL COMMENT '類別ＩＤ',
  `className` varchar(30) NOT NULL COMMENT '類別名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='類別表';

--
-- 傾印資料表的資料 `class`
--

INSERT INTO `class` (`classID`, `className`) VALUES
(1, '手燈'),
(2, '衣服'),
(3, '推巾'),
(4, '推扇'),
(5, 'DVD');

-- --------------------------------------------------------

--
-- 資料表結構 `nation`
--

CREATE TABLE `nation` (
  `nationID` int(4) NOT NULL COMMENT '國家ＩＤ',
  `nationName` varchar(30) NOT NULL COMMENT '國家名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='國家表';

--
-- 傾印資料表的資料 `nation`
--

INSERT INTO `nation` (`nationID`, `nationName`) VALUES
(1, '日本'),
(2, '韓國'),
(3, '中國'),
(4, '歐美'),
(5, '台灣'),
(6, '二次元');

-- --------------------------------------------------------

--
-- 資料表結構 `picture`
--

CREATE TABLE `picture` (
  `productID` int(4) NOT NULL COMMENT '產品ＩＤ',
  `pictureSeat1` varchar(30) NOT NULL COMMENT '圖片位子',
  `pictureSeat2` varchar(30) NOT NULL COMMENT '圖片位子',
  `pictureSeat3` varchar(30) NOT NULL COMMENT '圖片位子',
  `pictureSeat4` varchar(30) NOT NULL COMMENT '圖片位子',
  `pictureSeat5` varchar(30) NOT NULL COMMENT '圖片位子'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='圖片表';

--
-- 傾印資料表的資料 `picture`
--

INSERT INTO `picture` (`productID`, `pictureSeat1`, `pictureSeat2`, `pictureSeat3`, `pictureSeat4`, `pictureSeat5`) VALUES
(35, '/img/DVD/15周年con.jpg', '', '', '', ''),
(36, '/img/DVD/2015小島祭.jpg', '', '', '', ''),
(37, '/img/DVD/2019單獨con.jpg', '', '', '', ''),
(38, '/img/DVD/第10回總選.jpg', '', '', '', ''),
(39, '/img/DVD/第8回紅白.jpg', '', '', '', ''),
(4, '/img/手燈/2020早安官燈.jpg', '', '', '', ''),
(5, '/img/手燈/2021早安官燈.jpg', '', '', '', ''),
(1, '/img/手燈/48官燈type1_1.jpg', '/img/手燈/48官燈type1_2.jpg', '/img/手燈/48官燈type1_3.jpg', '/img/手燈/48官燈type1_4.jpg', '/img/手燈/48官燈type1_5.jpg'),
(2, '/img/手燈/48官燈type2_1.jpg', '/img/手燈/48官燈type2_2.jpg', '/img/手燈/48官燈type2_3.jpg', '/img/手燈/48官燈type2_4.jpg', '/img/手燈/48官燈type2_5.jpg'),
(3, '/img/手燈/48官燈type3_1.jpg', '/img/手燈/48官燈type3_2.jpg', '/img/手燈/48官燈type3_3.jpg', '/img/手燈/48官燈type3_4.jpg', '/img/手燈/48官燈type3_5.jpg'),
(14, '/img/推巾/15周年單獨con.jpg', '', '', '', ''),
(15, '/img/推巾/2018感謝祭.jpg', '', '', '', ''),
(16, '/img/推巾/2019全國tour.jpg', '', '', '', ''),
(17, '/img/推巾/2019春con.jpg', '', '', '', ''),
(19, '/img/推巾/2020RH.jpg', '', '', '', ''),
(18, '/img/推巾/2020新體感live.jpg', '', '', '', ''),
(20, '/img/推巾/2022新春con.jpg', '', '', '', ''),
(25, '/img/推巾/STU2021聖誕個別推巾_1.jpg', '/img/推巾/STU2021聖誕個別推巾_2.jpg', '/img/推巾/STU2021聖誕個別推巾_3.jpg', '/img/推巾/STU2021聖誕個別推巾_4.jpg', '/img/推巾/STU2021聖誕個別推巾_5.jpg'),
(24, '/img/推巾/STU4周年推巾.jpg', '', '', '', ''),
(26, '/img/推巾/STU武道館con推巾.jpg', '', '', '', ''),
(27, '/img/推巾/STU船公演推巾.jpg', '', '', '', ''),
(21, '/img/推巾/早安聯名推巾.jpg', '', '', '', ''),
(23, '/img/推巾/第10回總選.jpg', '', '', '', ''),
(22, '/img/推巾/第8回紅白.jpg', '', '', '', ''),
(28, '/img/推扇/STU2021聖誕推扇_1.jpg', '/img/推扇/STU2021聖誕推扇_2.jpg', '/img/推扇/STU2021聖誕推扇_3.jpg', '/img/推扇/STU2021聖誕推扇_4.jpg', '/img/推扇/STU2021聖誕推扇_5.jpg'),
(29, '/img/推扇/STU大正個人推扇_1.jpg', '/img/推扇/STU大正個人推扇_2.jpg', '/img/推扇/STU大正個人推扇_3.jpg', '/img/推扇/STU大正個人推扇_4.jpg', '/img/推扇/STU大正個人推扇_5.jpg'),
(30, '/img/推扇/T4推扇_1.jpg', '/img/推扇/T4推扇_2.jpg', '', '', ''),
(31, '/img/推扇/T8推扇_1.jpg', '/img/推扇/T8推扇_2.jpg', '', '', ''),
(32, '/img/推扇/TA推扇_1.jpg', '/img/推扇/TA推扇_2.jpg', '', '', ''),
(33, '/img/推扇/TB推扇_1.jpg', '/img/推扇/TB推扇_2.jpg', '', '', ''),
(34, '/img/推扇/TK推扇.jpg', '/img/推扇/TK推扇_2.jpg', '', '', ''),
(6, '/img/衣服/15周年單獨con.jpg', '', '', '', ''),
(7, '/img/衣服/2018單獨con_正.jpg', '/img/衣服/2018單獨con_反.jpg', '', '', ''),
(8, '/img/衣服/2019全國tour.jpg', '', '', '', ''),
(9, '/img/衣服/2022新春con_正.jpg', '/img/衣服/2022新春con_反.jpg', '', '', ''),
(12, '/img/衣服/STU4周年T.jpg', '', '', '', ''),
(13, '/img/衣服/STU武道館con.jpg', '', '', '', ''),
(10, '/img/衣服/早安聯名T.jpg', '', '', '', ''),
(11, '/img/衣服/第10回總選T.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `productID` int(4) NOT NULL COMMENT '產品ＩＤ',
  `classID` int(4) NOT NULL COMMENT '類別ＩＤ',
  `nationID` int(4) NOT NULL COMMENT '國家ＩＤ',
  `productName` varchar(30) NOT NULL COMMENT '產品名稱',
  `productPrice` int(4) NOT NULL COMMENT '產品價格'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='產品表';

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`productID`, `classID`, `nationID`, `productName`, `productPrice`) VALUES
(1, 1, 1, '48官燈', 200),
(2, 1, 1, '48官燈', 200),
(3, 1, 1, '48官燈', 200),
(4, 1, 1, '2020早安官燈', 300),
(5, 1, 1, '2021早安官燈', 300),
(6, 2, 1, '15周年單獨con', 500),
(7, 2, 1, '2018單獨con', 500),
(8, 2, 1, '2019全國tour', 500),
(9, 2, 1, '2022新春con', 500),
(10, 2, 1, '早安聯名T', 500),
(11, 2, 1, '第10回總選T', 500),
(12, 2, 1, 'STU4周年T', 500),
(13, 2, 1, 'STU武道館con', 500),
(14, 3, 1, '15周年單獨con', 300),
(15, 3, 1, '2018感謝祭', 300),
(16, 3, 1, '2019全國tour', 300),
(17, 3, 1, '2019春con', 300),
(18, 3, 1, '2020新體感live', 300),
(19, 3, 1, '2020RH', 300),
(20, 3, 1, '2022新春con', 300),
(21, 3, 1, '早安聯名推巾', 300),
(22, 3, 1, '第8回紅白', 300),
(23, 3, 1, '第10回總選', 300),
(24, 3, 1, 'STU4周年推巾', 300),
(25, 3, 1, 'STU2021聖誕個別推巾', 300),
(26, 3, 1, 'STU武道館con推巾', 300),
(27, 3, 1, 'STU船公演推巾', 300),
(28, 4, 1, 'STU2021聖誕推扇', 300),
(29, 4, 1, 'STU大正個人推扇', 300),
(30, 4, 1, 'T4推扇', 300),
(31, 4, 1, 'T8推扇', 300),
(32, 4, 1, 'TA推扇', 300),
(33, 4, 1, 'TB推扇', 300),
(34, 4, 1, 'TK推扇', 300),
(35, 5, 1, '15周年con', 1000),
(36, 5, 1, '2015小島祭', 1000),
(37, 5, 1, '2019單獨con', 1000),
(38, 5, 1, '第10回總選', 1000),
(39, 5, 1, '第8回紅白', 1000);

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `userID` int(4) NOT NULL COMMENT '會員ＩＤ',
  `userName` varchar(30) NOT NULL COMMENT '會員名稱',
  `userPhone` int(12) NOT NULL COMMENT '會員電話'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='會員表';

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`userID`, `userName`, `userPhone`) VALUES
(1, '許姿婷', 965806572),
(2, '許秉純', 965802572),
(3, '楊慈軒', 932149142),
(4, '陳宇勝', 966210101),
(5, '程式裁縫師', 908810969);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `buy`
--
ALTER TABLE `buy`
  ADD KEY `userID` (`userID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `productPrice` (`productPrice`);

--
-- 資料表索引 `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`classID`);

--
-- 資料表索引 `nation`
--
ALTER TABLE `nation`
  ADD PRIMARY KEY (`nationID`);

--
-- 資料表索引 `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`pictureSeat1`),
  ADD UNIQUE KEY `pictureSeat1` (`pictureSeat1`) USING BTREE,
  ADD KEY `productID` (`productID`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `classID` (`classID`),
  ADD KEY `nationID` (`nationID`),
  ADD KEY `productPrice` (`productPrice`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `class`
--
ALTER TABLE `class`
  MODIFY `classID` int(4) NOT NULL AUTO_INCREMENT COMMENT '類別ＩＤ', AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `nation`
--
ALTER TABLE `nation`
  MODIFY `nationID` int(4) NOT NULL AUTO_INCREMENT COMMENT '國家ＩＤ', AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(4) NOT NULL AUTO_INCREMENT COMMENT '產品ＩＤ', AUTO_INCREMENT=40;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(4) NOT NULL AUTO_INCREMENT COMMENT '會員ＩＤ', AUTO_INCREMENT=6;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `buy`
--
ALTER TABLE `buy`
  ADD CONSTRAINT `buy_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `buy_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `picture` (`productID`),
  ADD CONSTRAINT `buy_ibfk_3` FOREIGN KEY (`productPrice`) REFERENCES `product` (`productPrice`);

--
-- 資料表的限制式 `picture`
--
ALTER TABLE `picture`
  ADD CONSTRAINT `picture_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`);

--
-- 資料表的限制式 `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`classID`) REFERENCES `class` (`classID`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`nationID`) REFERENCES `nation` (`nationID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
