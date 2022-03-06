-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2022 年 3 月 06 日 11:28
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
  `user_id` int(11) NOT NULL,
  `username` varchar(256) COLLATE utf8mb4_bin NOT NULL,
  `content` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `comment` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `tag` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `contents_box`
--

INSERT INTO `contents_box` (`id`, `user_id`, `username`, `content`, `image`, `comment`, `tag`, `created_at`) VALUES
(27, 5, 'paypay', 'レギュラー9人中8人！\r\n3割超えのダイハード打線はやっ\r\nぱ過去最強！', NULL, '生卵事件前からのファン的にはこの頃が一番楽しかった', 'pacific', '2022-02-24 21:58:20'),
(28, 5, 'paypay', '東京ドームの高さ4mの壁を駆け\r\n上がる男', NULL, '当時珍プレー好プレーでめっちゃみました', 'central', '2022-02-24 21:58:44'),
(29, 6, 'ushio', '代打逆転満塁サヨナラ優勝決定\r\nホームラン！', NULL, '打った瞬間確信の仁王立ちガッツポーズに号泣', 'pacific', '2022-02-24 21:59:20'),
(31, 5, 'paypay', '西武ドームのバッティング練習\r\nでウグイス嬢に弄られまくり', NULL, '毎回噛まずに言えるウグイス嬢もすごい', 'pacific', '2022-02-24 21:59:58'),
(34, 6, 'ushio', 'コンタクトレンズ', 'upload/20220306112618e05ebfa6cc3b54191debe1ce76e33ab2.jpeg', '珍プレー好プレーの常連。いつみても笑えるw', 'central', '2022-03-06 20:26:18'),
(35, 6, 'ushio', '森福の11球', 'upload/20220306112720e9dd4ef1641b926e882e09d127466ed3.jpeg', '彼の全盛期。これは痺れた！', 'pacific', '2022-03-06 20:27:20');

-- --------------------------------------------------------

--
-- テーブルの構造 `like_table`
--

CREATE TABLE `like_table` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `post_id` int(12) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `like_table`
--

INSERT INTO `like_table` (`id`, `user_id`, `post_id`, `created_at`) VALUES
(2, 5, 27, '2022-03-03 21:53:09'),
(5, 6, 29, '2022-03-03 21:58:36'),
(7, 6, 32, '2022-03-03 22:10:56'),
(8, 6, 31, '2022-03-03 22:11:01'),
(10, 5, 30, '2022-03-05 13:40:44'),
(12, 5, 33, '2022-03-06 20:14:25'),
(13, 6, 35, '2022-03-06 20:27:37');

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
(6, 'ushio', 'testuser02@sample.com', '222222', 0, '2022-02-24 21:59:01', '2022-02-24 21:59:01'),
(8, 'yayyay', 'testuser03@sample.com', '333333', 0, '2022-02-26 14:09:15', '2022-02-26 14:09:15');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `contents_box`
--
ALTER TABLE `contents_box`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `like_table`
--
ALTER TABLE `like_table`
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
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- テーブルの AUTO_INCREMENT `like_table`
--
ALTER TABLE `like_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- テーブルの AUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
