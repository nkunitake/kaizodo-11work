<?php
include('functions.php');
$id = $_GET['id'];

// id受け取り
// var_dump($_GET);
// exit;

// DB接続

$pdo = connect_to_db();
$sql = 'SELECT * FROM contents_box WHERE id=:id';
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
try {
    $status = $stmt->execute();
} catch (PDOException $e) {
    echo json_encode(["sql error" => "{$e->getMessage()}"]);
    exit();
}

$record = $stmt->fetch(PDO::FETCH_ASSOC);



// SQL実行
?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KAIZO-DO プロ野球編 | 投稿画面</title>
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
    <form action="update.php" method="POST">
        <!-- ヘッダー -->
        <div class="main-wrapper">
            <div>
                <a href="main.php">
                    <div class="title-wrapper">
                        <div class="title-logo">
                            <img src="img/npbKV2.png" alt="ヘッダーロゴ">
                        </div>
                        <h1 class="title-text">KAIZO-DO -プロ野球編-</h1>
                    </div>
                </a>
            </div>
            <nav class="navigation">
                <ul class="navi-list">
                    <l1 class="other-page"><a href="main.php">ホーム</a></l1>
                    <l1 class="other-page"><a href="main-central.php">central</a></l1>
                    <l1 class="other-page"><a href="main-pacific.php">pacific</a></l1>
                    <l1 class="other-page"><a href="input.php">投稿する</a></l1>
                </ul>
            </nav>
            <!-- 投稿部分 -->
            <dl class="form-inner">
                <dt class="inner-title">投稿者名:</dt>
                <dd class="inner-detail"><input type="text" name="username" class="form-parts" value="<?= $record['username'] ?>"></dd>
                <dt class="inner-title">投稿:</dt>
                <dd class="inner-detail"><textarea name="content" class="textarea-parts" wrap="hard"><?= $record['content'] ?></textarea>
                </dd>
                <dt class="inner-title">コメント:</dt>
                <dd class="inner-detail"><input type="text" name="comment" class="form-parts" value="<?= $record['comment'] ?>"></dd>
                <dt class=" inner-title">タグ:</dt>
                <dd class="inner-detail"><select name="tag" class="select-parts">
                        <option value="">選択してください</option>
                        <option value="central">セリーグ</option>
                        <option value="pacific">パリーグ</option>
                    </select>
                </dd>
                <div>
                    <input type="hidden" name="id" value="<?= $record['id'] ?>">
                </div>
                <div class="btn">
                    <button class="btn-post">編集する</button>
                </div>
            </dl>
            <!-- フッター -->
            <footer>
                <p>© KAIZO-DO All Rights Reserved.</p>
            </footer>
        </div>
    </form>

</body>

</html>