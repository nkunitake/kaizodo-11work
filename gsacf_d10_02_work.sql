-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2022 年 2 月 17 日 11:13
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
(18, 'ウシオ', '代打逆転満塁サヨナラ優勝決定\r\nホームラン！', '打った瞬間確信の仁王立ちガッツポーズに号泣', 'pacific', '2022-02-17 19:25:45'),
(19, '飯田橋', '東京ドームの高さ4mの壁を駆け\r\n上がる男', '当時珍プレー好プレーでめっちゃみました', 'central', '2022-02-17 19:30:01'),
(20, 'たっちゃん', 'コンタクトレンズ', '珍プレー好プレーの常連。いつみても笑えるw', 'central', '2022-02-17 19:40:35'),
(22, 'セギノール', '西武ドームのバッティング練習\r\nでウグイス嬢に弄られまくり', '毎回噛まずに言えるウグイス嬢もすごい', 'pacific', '2022-02-17 20:12:08');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `contents_box`
--
ALTER TABLE `contents_box`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `contents_box`
--
ALTER TABLE `contents_box`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
