-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:8889
-- 產生時間： 2022 年 03 月 01 日 06:03
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
  `byID` int(4) NOT NULL COMMENT '主鍵',
  `users_id` int(11) NOT NULL COMMENT '使用者ＩＤ',
  `productID` int(4) NOT NULL COMMENT '產品ＩＤ',
  `productNUM` int(11) NOT NULL COMMENT '購買個數'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `buy`
--

INSERT INTO `buy` (`byID`, `users_id`, `productID`, `productNUM`) VALUES
(2, 2, 33, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `form`
--

CREATE TABLE `form` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `productName` text NOT NULL,
  `problem` text NOT NULL,
  `problemOptions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `nation`
--

CREATE TABLE `nation` (
  `nationID` int(11) NOT NULL COMMENT '國家ＩＤ',
  `nationName` varchar(100) NOT NULL COMMENT '國家名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='國家表';

--
-- 傾印資料表的資料 `nation`
--

INSERT INTO `nation` (`nationID`, `nationName`) VALUES
(1, '日本'),
(2, '韓國');

-- --------------------------------------------------------

--
-- 資料表結構 `picture`
--

CREATE TABLE `picture` (
  `productID` int(11) NOT NULL COMMENT '產品ＩＤ',
  `pictureSeat1` varchar(100) NOT NULL COMMENT '圖片位子',
  `pictureSeat2` varchar(100) NOT NULL COMMENT '圖片位子',
  `pictureSeat3` varchar(100) NOT NULL COMMENT '圖片位子',
  `pictureSeat4` varchar(100) NOT NULL COMMENT '圖片位子',
  `pictureSeat5` varchar(100) NOT NULL COMMENT '圖片位子'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='圖片表';

--
-- 傾印資料表的資料 `picture`
--

INSERT INTO `picture` (`productID`, `pictureSeat1`, `pictureSeat2`, `pictureSeat3`, `pictureSeat4`, `pictureSeat5`) VALUES
(25, '/img/DVD/15周年con.jpg', '/img/DVD/15周年con敘述.jpg', '/img/DVD/15周年con規格.jpg', '', ''),
(26, '/img/DVD/2015小島祭.jpg', '/img/DVD/2015小島祭敘述.jpg', '/img/DVD/2015小島祭規格.jpg', '', ''),
(27, '/img/DVD/2019單獨con.jpg', '/img/DVD/2019單獨con敘述1.jpg', '/img/DVD/2019單獨con規格.jpg', '', ''),
(28, '/img/DVD/第10回總選.jpg', '/img/DVD/第10回總選敘述.jpg', '/img/DVD/', '', ''),
(29, '/img/DVD/第8回紅白.jpg', '/img/DVD/第8回紅白敘述.jpg', '/img/DVD/第8回紅白規格.jpg', '', ''),
(4, '/img/手燈/2020早安官燈.jpg', '/img/手燈/2020早安官燈敘述與規格.jpg', '', '', ''),
(5, '/img/手燈/2021早安官燈.jpg', '/img/手燈/2021早安官燈敘述與規格.jpg', '', '', ''),
(1, '/img/手燈/48官燈type1_1.jpg', '/img/手燈/48官燈type1敘述.jpg', '/img/手燈/48官燈type1規格.jpg', '', ''),
(2, '/img/手燈/48官燈type2_1.jpg', '/img/手燈/48官燈type2敘述.jpg', '/img/手燈/48官燈type2規格.jpg', '', ''),
(3, '/img/手燈/48官燈type3_1.jpg', '/img/手燈/48官燈type3敘述.jpg', '/img/手燈/48官燈type3規格.jpg', '', ''),
(14, '/img/推巾/15周年單獨con.jpg', '/img/推巾/15周年單獨con敘述.jpg', '/img/推巾/15周年單獨con規格.jpg', '', ''),
(16, '/img/推巾/2020RH.jpg', '/img/推巾/2020RH敘述.jpg', '/img/推巾/2020RH規格.jpg', '', ''),
(15, '/img/推巾/2020新體感live.jpg', '/img/推巾/2020新體感live敘述.jpg', '/img/推巾/2020新體感live規格.jpg', '', ''),
(17, '/img/推巾/2022新春con.jpg', '/img/推巾/2022新春con敘述.jpg', '', '', ''),
(18, '/img/推扇/STU2021聖誕推扇_1.jpg', '/img/推扇/STU2021聖誕個別推扇敘述.jpg', '/img/推扇/STU2021聖誕個別推扇規格.jpg', '', ''),
(19, '/img/推扇/STU大正個人推扇_1.jpg', '/img/推扇/STU大正個人推扇敘述.jpg', '/img/推扇/STU大正個人推扇規格.jpg', '', ''),
(20, '/img/推扇/T4推扇_1.jpg', '/img/推扇/T4推扇敘述.jpg', '/img/推扇/T4推扇規格.jpg', '', ''),
(21, '/img/推扇/T8推扇_1.jpg', '/img/推扇/T8推扇敘述.jpg', '/img/推扇/T8推扇規格.jpg', '', ''),
(22, '/img/推扇/TA推扇_1.jpg', '/img/推扇/TA推扇敘述.jpg', '/img/推扇/TA推扇規格.jpg', '', ''),
(23, '/img/推扇/TB推扇_1.jpg', '/img/推扇/TB推扇敘述.jpg', '/img/推扇/TB推扇規格.jpg', '', ''),
(24, '/img/推扇/TK推扇.jpg', '/img/推扇/TK推扇敘述.jpg', '/img/推扇/TK推扇規格.jpg', '', ''),
(6, '/img/衣服/15周年單獨con.jpg', '/img/衣服/15周年單獨con敘述.jpg', '/img/衣服/15周年單獨con規格.jpg', '', ''),
(7, '/img/衣服/2018單獨con_正.jpg', '/img/衣服/2018單獨con敘述.jpg', '/img/衣服/2018單獨con規格.jpg', '', ''),
(8, '/img/衣服/2019全國tour.jpg', '/img/衣服/2019全國tour敘述.jpg', '/img/衣服/2019全國tour規格.jpg', '', ''),
(9, '/img/衣服/2022新春con_正.jpg', '/img/衣服/2022新春con敘述.jpg', '/img/衣服/2022新春con規格.jpg', '', ''),
(12, '/img/衣服/STU4周年T.jpg', '/img/衣服/STU四周年T敘述.jpg', '/img/衣服/STU四周年T規格.jpg', '', ''),
(13, '/img/衣服/STU武道館con.jpg', '/img/衣服/STU武道館con敘述.jpg', '/img/衣服/STU武道館con規格.jpg', '', ''),
(10, '/img/衣服/早安聯名T.jpg', '/img/衣服/早安聯名T敘述.jpg', '/img/衣服/早安聯名T規格.jpg', '', ''),
(11, '/img/衣服/第10回總選T.jpg', '/img/衣服/第10回總選T敘述.jpg', '/img/衣服/第10回總選T規格.jpg', '', ''),
(30, '/img/韓國/BTSbag.jpg', '/img/韓國/商品敘述/BTSbag.jpg', '', '', ''),
(31, '/img/韓國/BTSbottle.jpg', '/img/韓國/商品敘述/BTSbottle.jpg', '', '', ''),
(32, '/img/韓國/BTSdoll.jpg', '/img/韓國/商品敘述/BTSdoll.jpg', '', '', ''),
(33, '/img/韓國/BTShandbag.jpg', '/img/韓國/商品敘述/BTShandbag.jpg', '', '', ''),
(34, '/img/韓國/BTSsticker.jpg', '/img/韓國/商品敘述/BTSsticker.jpg', '', '', ''),
(35, '/img/韓國/ITZYbadge.jpg', '/img/韓國/商品敘述/ITZYbadge.jpg', '', '', ''),
(36, '/img/韓國/ITZYlightkeyring.png', '/img/韓國/商品敘述/ITZYlightkeyring.jpg', '', '', ''),
(37, '/img/韓國/ITZYministicker.jpg', '/img/韓國/商品敘述/ITZYministicker.jpg', '', '', ''),
(38, '/img/韓國/ITZYstickerset.jpg', '/img/韓國/商品敘述/ITZYstickerset.jpg', '', '', ''),
(39, '/img/韓國/ITZYstrapbadge.jpg', '/img/韓國/商品敘述/ITZYstrapbadge.jpg', '', '', ''),
(40, '/img/韓國/TWICEcupholder.jpg', '/img/韓國/商品敘述/TWICEcupholder.jpg', '', '', ''),
(41, '/img/韓國/TWICEfan.png', '/img/韓國/商品敘述/TWICEfan.jpg', '', '', ''),
(42, '/img/韓國/TWICEhandbag.jpg', '/img/韓國/商品敘述/TWICEhandbag.jpg', '', '', ''),
(43, '/img/韓國/TWICEkeyring.jpg', '/img/韓國/商品敘述/TWICEkeyring.jpg', '', '', ''),
(44, '/img/韓國/TWICEpassportcase.jpg', '/img/韓國/商品敘述/TWICEpassportcase.jpg', '', '', ''),
(45, '/img/韓國/YENAbag.jpg', '/img/韓國/商品敘述/YENAbag.jpg', '', '', ''),
(46, '/img/韓國/YENAdoll.jpg', '/img/韓國/商品敘述/YENAdoll.jpg', '', '', ''),
(47, '/img/韓國/YENAminipouch.jpg', '/img/韓國/商品敘述/YENAminipouch.jpg', '', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `productID` int(11) NOT NULL COMMENT '產品ＩＤ',
  `nationID` int(11) NOT NULL COMMENT '國家ＩＤ',
  `productName` varchar(100) NOT NULL COMMENT '產品名稱',
  `productPrice` int(11) NOT NULL COMMENT '產品價格'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='產品表';

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`productID`, `nationID`, `productName`, `productPrice`) VALUES
(1, 1, 'AKB48 official neo 12色手燈', 800),
(2, 1, 'AKB48 official 7色造型手燈', 1100),
(3, 1, 'AKB48 official neo 7色手燈', 700),
(4, 1, '早安少女組。‘20 官方手燈', 1000),
(5, 1, '早安少女組。‘21 官方手燈', 900),
(6, 1, 'AKB48 15週年單獨演唱會紀念Ｔ恤', 850),
(7, 1, 'AKB48 2018年單獨演唱會紀念Ｔ恤', 850),
(8, 1, 'AKB48 2019年全國巡迴演唱會紀念Ｔ恤', 850),
(9, 1, 'AKB48 2022年新春演唱會紀念Ｔ恤', 850),
(10, 1, '早安少女組。Ｘ Caribadix 聯名紀念Ｔ恤', 850),
(11, 1, 'AKB48 第10回世界選拔總選舉紀念Ｔ恤', 850),
(12, 1, 'STU48 4週年紀念Ｔ恤', 850),
(13, 1, 'STU48 武道館演唱會紀念Ｔ恤', 850),
(14, 1, 'AKB48 15週年單獨演唱會紀念推巾', 600),
(15, 1, 'AKB48 2020年新體感live紀念推巾', 600),
(16, 1, 'AKB48 2020年Request Hour紀念推巾', 600),
(17, 1, 'AKB48 2022年新春演唱會紀念推巾', 600),
(18, 1, 'STU48 2021年聖誕節個別推巾', 600),
(19, 1, 'STU48 大正風格個別推扇', 300),
(20, 1, 'AKB48 15週年紀念個別推扇(Team4)', 300),
(21, 1, 'AKB48 15週年紀念個別推扇(Team8)', 300),
(22, 1, 'AKB48 15週年紀念個別推扇(TeamA)', 300),
(23, 1, 'AKB48 15週年紀念個別推扇(TeamB)', 300),
(24, 1, 'AKB48 15週年紀念個別推扇(TeamK)', 300),
(25, 1, 'AKB48 15週年演唱會ＤＶＤ', 4000),
(26, 1, 'AKB48 2015年小嶋祭演唱會ＤＶＤ', 2500),
(27, 1, 'AKB48 2019年單獨演唱會ＤＶＤ', 4050),
(28, 1, 'AKB48 第10回世界選拔總選舉ＤＶＤ', 4300),
(29, 1, 'AKB48 第8回紅白歌合戰ＤＶＤ', 1650),
(30, 2, 'BTS(防彈少年團) Hip Hop Monster手提袋', 500),
(31, 2, 'BTS(防彈少年團) Built NY X BTS BOTTLE', 1000),
(32, 2, 'BTS(防彈少年團) Character mini figure', 450),
(33, 2, 'BTS(防彈少年團) MIC Drop Cable patch pouch', 450),
(34, 2, 'BTS(防彈少年團) Hip Hop Monster布章var2', 150),
(35, 2, 'ITZY 2021 Best Friend\'s 布章', 250),
(36, 2, 'ITZY official 手燈鑰匙圈', 600),
(37, 2, 'ITZY Light Ring POP-UP 迷你布章組', 200),
(38, 2, 'ITZY Light Ring POP-UP DECO貼紙組', 200),
(39, 2, 'ITZY 2021 Best Friend\'s 布章', 250),
(40, 2, 'TWICE 2019 ONCE Helloween 杯套', 250),
(41, 2, 'TWICE 2021 第4次世界巡迴演唱會 個別推扇', 200),
(42, 2, 'TWICE 2019 ONCE Helloween 票卡包', 450),
(43, 2, 'TWICE 2019 ONCE Helloween Lovely迷你鑰匙圈', 550),
(44, 2, 'TWICE 2019 TWICELight Lovely護照套', 350),
(45, 2, 'YENA(崔叡娜） YENA\'s Animal Detective提袋', 1000),
(46, 2, 'YENA(崔叡娜) YENA\'s Animal Detective玩偶', 450),
(47, 2, 'YENA(崔叡娜) The world of my 17 season 迷你提袋', 500);

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `users_image`
--

CREATE TABLE `users_image` (
  `id` int(5) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `Product_Description` varchar(200) NOT NULL,
  `commodity_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`byID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `users_id` (`users_id`) USING BTREE;

--
-- 資料表索引 `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `nationID` (`nationID`),
  ADD KEY `productPrice` (`productPrice`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `buy`
--
ALTER TABLE `buy`
  MODIFY `byID` int(4) NOT NULL AUTO_INCREMENT COMMENT '主鍵', AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `nation`
--
ALTER TABLE `nation`
  MODIFY `nationID` int(11) NOT NULL AUTO_INCREMENT COMMENT '國家ＩＤ', AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT COMMENT '產品ＩＤ', AUTO_INCREMENT=48;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `buy`
--
ALTER TABLE `buy`
  ADD CONSTRAINT `buy_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`);

--
-- 資料表的限制式 `picture`
--
ALTER TABLE `picture`
  ADD CONSTRAINT `picture_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`);

--
-- 資料表的限制式 `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`nationID`) REFERENCES `nation` (`nationID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
