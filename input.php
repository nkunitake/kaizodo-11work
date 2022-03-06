<?php
session_start();
include('functions.php');
check_session_id();
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
    <form action="create_file.php" method="POST" enctype="multipart/form-data">
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
                    <l1 class="other-page"><a href="main.php">ホーム</a></l1>
                    <l1 class="other-page"><a href="main-central.php">セリーグ</a></l1>
                    <l1 class="other-page"><a href="main-pacific.php">パリーグ</a></l1>
                    <l1 class="this-page">投稿する</l1>
                </ul>
            </nav>
            <!-- 投稿部分 -->
            <dl class="form-inner">
                <dt class="inner-title">投稿文:</dt>
                <dd class="inner-detail"><textarea name="content" class="textarea-parts" wrap="hard"></textarea>
                </dd>
                <dt class="inner-title">写真</dt>
                <dd class="inner-detail"><input type="file" name="upfile" accept="image/*" capture="camera">
                </dd>
                <dt class="inner-title">コメント:</dt>
                <dd class="inner-detail"><input type="text" name="comment" class="form-parts"></dd>
                <dt class="inner-title">タグ:</dt>
                <dd class="inner-detail"><select name="tag" class="select-parts">
                        <option value="">選択してください</option>
                        <option value="central">セリーグ</option>
                        <option value="pacific">パリーグ</option>
                    </select>
                </dd>
                <input type="hidden" name="username" value="<?= $_SESSION['username'] ?>">
                <input type="hidden" name="user_id" value="<?= $_SESSION['user_id'] ?>">
                <div class="btn">
                    <button class="btn-post">投稿する</button>
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