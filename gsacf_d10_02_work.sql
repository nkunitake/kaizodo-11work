-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2022 年 2 月 24 日 13:00
-- サーバのバージョン： 5.7.34
-- PHP のバージョン: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_d10_02_work`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `contents_box`
--

CREATE TABLE `contents_box` (
  `id` int(12) NOT NULL,
  `username` varchar(256) COLLATE utf8mb4_bin NOT NULL,
  `content` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `comment` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `tag` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `contents_box`
--

INSERT INTO `contents_box` (`id`, `username`, `content`, `comment`, `tag`, `created_at`) VALUES
(27, 'paypay', 'レギュラー9人中8人！\r\n3割超えのダイハード打線はやっ\r\nぱ過去最強！', '生卵事件前からのファン的にはこの頃が一番楽しかった', 'pacific', '2022-02-24 21:58:20'),
(28, 'paypay', '東京ドームの高さ4mの壁を駆け\r\n上がる男', '当時珍プレー好プレーでめっちゃみました', 'central', '2022-02-24 21:58:44'),
(29, 'ushio', '代打逆転満塁サヨナラ優勝決定\r\nホームラン！', '打った瞬間確信の仁王立ちガッツポーズに号泣', 'pacific', '2022-02-24 21:59:20'),
(30, 'ushio', 'コンタクトレンズ', '珍プレー好プレーの常連。いつみても笑えるw', 'central', '2022-02-24 21:59:34'),
(31, 'paypay', '西武ドームのバッティング練習\r\nでウグイス嬢に弄られまくり', '毎回噛まずに言えるウグイス嬢もすごい', 'pacific', '2022-02-24 21:59:58');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `mail` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `mail`, `password`, `is_deleted`, `created_at`, `updated_at`) VALUES
(5, 'paypay', 'testuser01@sample.com', '111111', 0, '2022-02-24 21:57:10', '2022-02-24 21:57:10'),
(6, 'ushio', 'testuser02@sample.com', '222222', 0, '2022-02-24 21:59:01', '2022-02-24 21:59:01');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `contents_box`
--
ALTER TABLE `contents_box`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `contents_box`
--
ALTER TABLE `contents_box`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- テーブルの AUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
