<?php
session_start();
include('functions.php');
check_session_id();

$user_id = $_SESSION['user_id'];

// SQL作成&実行
$pdo = connect_to_db();
$sql = 'SELECT * FROM contents_box LEFT OUTER JOIN (SELECT post_id, COUNT(id) AS like_count FROM like_table GROUP BY post_id) AS result_table ON contents_box.id = result_table.post_id ORDER BY created_at DESC';
$stmt = $pdo->prepare($sql);

try {
    $status = $stmt->execute();
} catch (PDOException $e) {
    echo json_encode(["sql error" => "{$e->getMessage()}"]);
    exit();
}

// SQL実行の処理

$result = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KAIZO-DO プロ野球編 | ホーム</title>
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
    <link rel="stylesheet" type="text/css" href="css/sanitize.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no" />
</head>

<body>
    <!-- ヘッダー -->
    <div class="main-wrapper">
        <div class="header-wrapper">
            <div class="header-left">
                <a href="main.php">
                    <div class="title-wrapper">
                        <div class="title-logo">
                            <img src="img/npbKV2.png" alt="ヘッダーロゴ">
                        </div>
                        <h1 class="title-text">KAIZO-DO -プロ野球編-</h1>
                    </div>
                </a>
            </div>
            <div class="header-right">
                <a href='setting.php?id=<?= $_SESSION["user_id"] ?>'>
                    <img src="img/icon.png" alt="ユーザーアイコン">
                </a>
            </div>
        </div>
        <nav class="navigation">
            <ul class="navi-list">
                <l1 class="this-page">ホーム</l1>
                <l1 class="other-page"><a href="main-central.php">セリーグ</a></l1>
                <l1 class="other-page"><a href="main-pacific.php">パリーグ</a></l1>
                <l1 class="other-page"><a href="input.php">投稿する</a></l1>
            </ul>
        </nav>
        <!-- メイン -->
        <div class="contents-area">
            <!-- ここに投稿内容が入る -->
            <?php foreach ($result as $record) : ?>
                <div class='contents-wrapper'>
                    <a href='user.php?user=<?= $record["username"] ?>' class='username-text'>投稿者名：<?= $record["username"] ?></a>
                    <a href='post.php?id=<?= $record["id"] ?>'>
                        <div class='content-area'>
                            <?= nl2br($record["content"]) ?></br>
                            <img src='<?= $record["image"] ?>'></p>
                        </div>
                        <p class='comment-text'>コメント：<?= $record["comment"] ?></p>
                    </a>
                    <?php if ($record["tag"] === "central") : ?>
                        <a href='main-central.php' class='tag-text'>タグ：セリーグ</a>
                    <?php else : ?>
                        <a href='main-pacific.php' class='tag-text'>タグ：パリーグ</a>
                    <?php endif ?>
                    <p class='date-text'>投稿日：<?= $record["created_at"] ?></p>
                    <div class="likebtn">
                        <a href='like_create.php?user_id=<?= $user_id ?>&post_id=<?= $record["id"] ?>'><img src="img/heart.png" alt="like">
                        </a><span><?= $record["like_count"] ?></span>
                    </div>
                </div>
            <?php endforeach ?>
        </div>
        <!-- フッター -->
        <footer>
            <p>© KAIZO-DO All Rights Reserved.</p>
        </footer>
    </div>
</body>

</html>