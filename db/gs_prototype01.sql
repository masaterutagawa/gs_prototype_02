-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 6 月 29 日 06:36
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_prototype01`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `dev13_card`
--

CREATE TABLE `dev13_card` (
  `card_id` int(12) NOT NULL,
  `card_filename` varchar(255) NOT NULL,
  `card_indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `dev13_card`
--

INSERT INTO `dev13_card` (`card_id`, `card_filename`, `card_indate`) VALUES
(1, 'card0002.jpg', '2023-06-23 21:55:07'),
(2, 'card0001.jpg', '2023-06-23 21:58:09'),
(3, 'card0003.jpg', '2023-06-23 23:11:48'),
(4, 'card0004.jpg', '2023-06-23 23:11:53'),
(5, 'card0005.jpg', '2023-06-23 23:11:58'),
(6, 'card0006.jpg', '2023-06-23 23:12:07'),
(7, 'card0007.jpg', '2023-06-23 23:12:13'),
(8, 'card0008.jpg', '2023-06-23 23:12:19'),
(9, 'card0009.jpg', '2023-06-23 23:12:24'),
(10, 'card0010.jpg', '2023-06-23 23:12:28'),
(16, 'adpDSC_0971-.jpg', '2023-06-29 13:06:32');

-- --------------------------------------------------------

--
-- テーブルの構造 `dev13_diary`
--

CREATE TABLE `dev13_diary` (
  `diary_id` int(12) NOT NULL,
  `registration_date` date NOT NULL,
  `created_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `today_events` text NOT NULL,
  `events_impression` text NOT NULL,
  `events_emotions` text NOT NULL,
  `events_points` int(12) NOT NULL,
  `events_points_reason` text NOT NULL,
  `select_card_filename` varchar(255) NOT NULL,
  `photo_keyword` text NOT NULL,
  `photo_keyword_reason` text NOT NULL,
  `photo_emotions` text NOT NULL,
  `photo_points` int(11) NOT NULL,
  `photo_points_reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `dev13_diary`
--

INSERT INTO `dev13_diary` (`diary_id`, `registration_date`, `created_date`, `update_date`, `today_events`, `events_impression`, `events_emotions`, `events_points`, `events_points_reason`, `select_card_filename`, `photo_keyword`, `photo_keyword_reason`, `photo_emotions`, `photo_points`, `photo_points_reason`) VALUES
(10, '2023-06-23', '2023-06-23 23:08:10', '2023-06-23 23:08:10', 'しゃしんかん', 'ぐうぜんぐうぜん', 'ぐうぜん', 4, 'ぐうぜん', 'card0001.jpg', 'ぐうぜん', 'ぐうぜん', 'ぐうぜん', -1, 'ぐうぜんぐうぜん'),
(13, '2023-06-24', '2023-06-24 14:29:24', '2023-06-24 14:29:24', 'aa', 'aa', 'aa', 3, 'aa', 'card0002.jpg', 'aa', 'aa', 'aa', -4, 'aaa'),
(14, '2023-06-29', '2023-06-29 13:10:01', '2023-06-29 13:10:01', '課題提出日', 'いいもんをださないと！', '焦り', -100, '焦りはいいことないかも', 'card0006.jpg', 'いそげー', '課題を急いでやらんとー', 'あせるね', -88, 'こころおちつけたい'),
(15, '2023-06-29', '2023-06-29 13:11:14', '2023-06-29 13:11:14', '課題提出', 'やべー', 'あせる', -98, '焦り。。', 'adpDSC_0971-.jpg', '悩む', 'どれをえらぶか。。', '迷い', -40, '迷いはないほうがいいかも'),
(16, '2023-06-29', '2023-06-29 13:28:37', '2023-06-29 13:28:37', 'サウナでのトトノイ', 'ぐうぜんぐうぜん', 'ぐうぜん', 4, 'ぐうぜん', 'card0001.jpg', 'ぐうぜん', 'ぐうぜん', 'ぐうぜん', -1, 'ぐうぜんぐうぜん'),
(17, '2023-06-29', '2023-06-29 13:28:48', '2023-06-29 13:28:48', 'サウナでのトトノイ', 'ぐうぜんぐうぜん', 'ぐうぜん', 4, 'ぐうぜんさん', 'card0001.jpg', 'ぐうぜん', 'ぐうぜん', 'ぐうぜん', -1, 'ぐうぜんぐうぜん');

-- --------------------------------------------------------

--
-- テーブルの構造 `dev13_user`
--

CREATE TABLE `dev13_user` (
  `user_id` int(12) NOT NULL,
  `user_code` varchar(64) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_mail` varchar(255) NOT NULL,
  `user_flg` int(1) NOT NULL,
  `user_indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `dev13_user`
--

INSERT INTO `dev13_user` (`user_id`, `user_code`, `user_name`, `user_pass`, `user_mail`, `user_flg`, `user_indate`) VALUES
(1, 'gawasan', '田川昌輝', 'gawasan', 'tomato@tomato.co.jp', 1, '2023-06-20 18:54:56');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `dev13_card`
--
ALTER TABLE `dev13_card`
  ADD PRIMARY KEY (`card_id`);

--
-- テーブルのインデックス `dev13_diary`
--
ALTER TABLE `dev13_diary`
  ADD PRIMARY KEY (`diary_id`);

--
-- テーブルのインデックス `dev13_user`
--
ALTER TABLE `dev13_user`
  ADD PRIMARY KEY (`user_id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `dev13_card`
--
ALTER TABLE `dev13_card`
  MODIFY `card_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- テーブルの AUTO_INCREMENT `dev13_diary`
--
ALTER TABLE `dev13_diary`
  MODIFY `diary_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- テーブルの AUTO_INCREMENT `dev13_user`
--
ALTER TABLE `dev13_user`
  MODIFY `user_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
