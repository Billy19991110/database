-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2022-03-10 08:37:17
-- 伺服器版本： 5.7.24
-- PHP 版本： 7.4.16

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
  `id` int(11) NOT NULL COMMENT '使用者ＩＤ',
  `productID` int(4) NOT NULL COMMENT '產品ＩＤ',
  `productNUM` int(11) NOT NULL COMMENT '購買個數'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

--
-- 傾印資料表的資料 `form`
--

INSERT INTO `form` (`id`, `email`, `productName`, `problem`, `problemOptions`) VALUES
(1, 'billy24681014@gmail.com', 'aasa', 'aaa', '其他'),
(2, 'demo123@gmail.com', '呪術廻戦', '商品外包裝有明顯碰撞痕跡', '物流'),
(3, 'aaa@gmail.com', '你好', '老子不爽', '物流'),
(4, 'aaa@gmail.com', '我不好', '老子不爽', '瑕疵');

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
  `productPrice` int(11) NOT NULL COMMENT '產品價格',
  `Information` text NOT NULL COMMENT '商品介紹',
  `Information2` text NOT NULL COMMENT '商品介紹2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='產品表';

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`productID`, `nationID`, `productName`, `productPrice`, `Information`, `Information2`) VALUES
(1, 1, 'AKB48 official neo 12色手燈', 800, '官方12色新手燈，把握把顏色改成黑色了！', ''),
(2, 1, 'AKB48 official 7色造型手燈', 1100, '以根據點秋葉原劇場大門為造型的新版手燈。', ''),
(3, 1, 'AKB48 official neo 7色手燈', 700, '官方7色手燈，輕量化設計握起來不手痠！', ''),
(4, 1, '早安少女組。‘20 官方手燈', 1000, '早安少女組。‘20 春季演唱會紀念官方手燈。', ''),
(5, 1, '早安少女組。‘21 官方手燈', 900, '早安少女組。‘21官方21色手燈，新增記憶喜歡的顏色的功能！', ''),
(6, 1, 'AKB48 15週年單獨演唱會紀念Ｔ恤', 850, 'AKB48 15周年演唱會「第15年的挑戰者」紀念T恤！', ''),
(7, 1, 'AKB48 2018年單獨演唱會紀念Ｔ恤', 850, 'AKB48 2018年單獨演唱會「JABAJA是什麼？」紀念T恤！', ''),
(8, 1, 'AKB48 2019年全國巡迴演唱會紀念Ｔ恤', 850, 'AKB48 2019年全國巡迴演唱會「開心的就是AKB」紀念T恤！', ''),
(9, 1, 'AKB48 2022年新春演唱會紀念Ｔ恤', 850, 'AKB48 2022年新春演唱會「你比你想像的更加厲害」紀念T恤！', ''),
(10, 1, '早安少女組。Ｘ Caribadix 聯名紀念Ｔ恤', 850, '大阪電視臺東京系全國網\"JAPAN COUNTDOWN\"（每週日9:30~10:00播出）節目中，作爲短動畫片開播的Kalibadics卡通人物《Galaxy》與早安少女組。的連動紀念T恤！', ''),
(11, 1, 'AKB48 第10回世界選拔總選舉紀念Ｔ恤', 850, 'AKB48 第53張單曲 第10回世界選拔總選舉紀念Ｔ恤！', ''),
(12, 1, 'STU48 4週年紀念Ｔ恤', 850, '把STU48號變成蛋糕造型的STU48成立4周年紀念T恤！', ''),
(13, 1, 'STU48 武道館演唱會紀念Ｔ恤', 850, '把帶著想要去到更棒的舞台的心情把演唱會LOGO放到了T恤上的武道館紀念T恤！', ''),
(14, 1, 'AKB48 15週年單獨演唱會紀念推巾', 600, 'AKB48 15周年演唱會「第15年的挑戰者」紀念推巾！', ''),
(15, 1, 'AKB48 2020年新體感live紀念推巾', 600, 'AKB48 2020年新體制Unit 新體感live紀念推巾！', ''),
(16, 1, 'AKB48 2020年Request Hour紀念推巾', 600, 'AKB48 2020年Request Hour 「選擇你的最佳50名」紀念推巾！', ''),
(17, 1, 'AKB48 2022年新春演唱會紀念推巾', 600, 'AKB48 2022年新春演唱會「你比你想像的更加厲害」紀念推巾！', ''),
(18, 1, 'STU48 2021年聖誕節個別推巾', 600, '讓聖誕節氣氛變得更加高漲的聖誕節個別紀念推巾！', ''),
(19, 1, 'STU48 大正風格個別推扇', 300, '大正風格服裝造型的個別推扇，復古的設計裝飾在家裡也很好看！', ''),
(20, 1, 'AKB48 15週年紀念個別推扇(Team4)', 300, 'AKB48 15周年 15小時LIVE紀念個別推扇！', ''),
(21, 1, 'AKB48 15週年紀念個別推扇(Team8)', 300, 'AKB48 15周年 15小時LIVE紀念個別推扇！', ''),
(22, 1, 'AKB48 15週年紀念個別推扇(TeamA)', 300, 'AKB48 15周年 15小時LIVE紀念個別推扇！', ''),
(23, 1, 'AKB48 15週年紀念個別推扇(TeamB)', 300, 'AKB48 15周年 15小時LIVE紀念個別推扇！', ''),
(24, 1, 'AKB48 15週年紀念個別推扇(TeamK)', 300, 'AKB48 15周年 15小時LIVE紀念個別推扇！', ''),
(25, 1, 'AKB48 15週年演唱會ＤＶＤ', 4000, 'AKB48 15周年演唱會「第15年的挑戰者」DVD！    由經典的「你與太陽與彩虹」一曲開場的演唱會舞台，務必要購買回家收藏！', ''),
(26, 1, 'AKB48 2015年小嶋祭演唱會ＤＶＤ', 2500, '每年慣例的春季演唱會，今年在琦玉超級競技場舉行了！而且今年是以未來要帶領著團體的年輕世代成員為主角，請務必要買來收藏！', ''),
(27, 1, 'AKB48 2019年單獨演唱會ＤＶＤ', 4050, '2019的單獨演唱會，今年與往年不同的是以各隊伍來分字舉辦了隊伍單獨演唱會！今年的看點是可以看到每一隊的不同風格與活力，請務必不要錯過！', ''),
(28, 1, 'AKB48 第10回世界選拔總選舉ＤＶＤ', 4300, '第10年選拔總選舉，這一次還有海外姊妹團的參戰！從第100名宣布開始就證明了「努力一定會得到回報」的這句話，成員與粉絲之間的羈絆的呈現，絕對要收藏的DVD！', ''),
(29, 1, 'AKB48 第8回紅白歌合戰ＤＶＤ', 1650, '第8回的AKB48 group的紅白歌合戰，依照慣例的由地理位置將所有團體分成紅組與白組，在代表紅組的AKB48的岡田奈奈以SOLO曲開場，開始了激烈的比賽，最後會由哪組獲勝呢？', ''),
(30, 2, 'BTS(防彈少年團) Hip Hop Monster手提袋', 500, '', ''),
(31, 2, 'BTS(防彈少年團) Built NY X BTS BOTTLE', 1000, '', ''),
(32, 2, 'BTS(防彈少年團) Character mini figure', 450, '', ''),
(33, 2, 'BTS(防彈少年團) MIC Drop Cable patch pouch', 450, '', ''),
(34, 2, 'BTS(防彈少年團) Hip Hop Monster布章var2', 150, '', ''),
(35, 2, 'ITZY 2021 Best Friend\'s 布章', 250, '', ''),
(36, 2, 'ITZY official 手燈鑰匙圈', 600, '', ''),
(37, 2, 'ITZY Light Ring POP-UP 迷你布章組', 200, '', ''),
(38, 2, 'ITZY Light Ring POP-UP DECO貼紙組', 200, '', ''),
(39, 2, 'ITZY 2021 Best Friend\'s 布章', 250, '', ''),
(40, 2, 'TWICE 2019 ONCE Helloween 杯套', 250, '', ''),
(41, 2, 'TWICE 2021 第4次世界巡迴演唱會 個別推扇', 200, '', ''),
(42, 2, 'TWICE 2019 ONCE Helloween 票卡包', 450, '', ''),
(43, 2, 'TWICE 2019 ONCE Helloween Lovely迷你鑰匙圈', 550, '', ''),
(44, 2, 'TWICE 2019 TWICELight Lovely護照套', 350, '', ''),
(45, 2, 'YENA(崔叡娜） YENA\'s Animal Detective提袋', 1000, '', ''),
(46, 2, 'YENA(崔叡娜) YENA\'s Animal Detective玩偶', 450, '', ''),
(47, 2, 'YENA(崔叡娜) The world of my 17 season 迷你提袋', 500, '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(7, 'aaa@gmail.com', '$2a$08$Rb9Apz0FNUC0kKr1qYP8OelB6J4m6RlWjK1CwSYgbWCUbOITzkTv.'),
(9, 'demo123@gmail.com', '$2a$08$ABTbfNXVHjAFcH5fE8NNmelxTkK/GnqLbIlcH6YsbgGR.PfuNkS4q');

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
  `commodity_name` varchar(200) NOT NULL,
  `count` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `users_image`
--

INSERT INTO `users_image` (`id`, `email`, `name`, `image`, `Product_Description`, `commodity_name`, `count`) VALUES
(1, 'eee@gmail.com', '茶耶', '1000162601_1.jpg', 'POP！アニメーション：ドラゴンボールZ　フリーザ 第4形態', 'POP！アニメーション：ドラゴンボールZ　フリーザ 第4形態', '1'),
(2, 'ccc@gmail.com', '茶耶', '1000170058_1.jpg', '鬼滅の刃 NARIKIRI日輪刀～宇髄天元～', '鬼滅の刃 NARIKIRI日輪刀～宇髄天元～', '1'),
(3, 'demo123@gmail.com', 'demo', '劇場版 呪術廻戦 0.jpg', 'Twinkle Dolly 劇場版 呪術廻戦 0', 'Twinkle Dolly 劇場版 呪術廻戦 0', '1');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`byID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `users_id` (`id`) USING BTREE;

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
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users_image`
--
ALTER TABLE `users_image`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `buy`
--
ALTER TABLE `buy`
  MODIFY `byID` int(4) NOT NULL AUTO_INCREMENT COMMENT '主鍵';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `form`
--
ALTER TABLE `form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users_image`
--
ALTER TABLE `users_image`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `buy`
--
ALTER TABLE `buy`
  ADD CONSTRAINT `buy_ibfk_3` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `buy_ibfk_4` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`);

--
-- 資料表的限制式 `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`nationID`) REFERENCES `nation` (`nationID`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`productID`) REFERENCES `picture` (`productID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
