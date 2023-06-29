<?php
session_start();
$user_code = $_POST['user_code'];
$user_pass = $_POST['user_pass'];
print_r(session_id());

// 関数ファイル読み込み
include('function.php');

// DB接続用関数を実行
$pdo = db_connect();


// データ選択ＳＱＬ作成
$sql = "SELECT * FROM dev13_user WHERE user_code=:user_code AND user_pass=:user_pass";
$stmt = $pdo->prepare($sql);
// 変数をバインド
$stmt->bindValue(':user_code', $user_code);
$stmt->bindValue(':user_pass', $user_pass);
$res = $stmt->execute(); // SQL実行

// データ登録処理後
if ($res == false) {
    // SQL実行時にエラーがある場合
    $error = $stmt->errorInfo();
    exit("QueryError:" . $error[2]);
}

// 抽出データ数を取得
// $count = $stmt->fetchColumn(); //SELECT COUNT(*)で使用可能()
$val = $stmt->fetch(); //1レコードだけ取得する方法

// 該当レコードがあればSESSIONに値を代入
if ($val["user_id"] != "") {
    $_SESSION['chk_ssid'] = session_id();
    $_SESSION['user_name'] = $val["user_name"];
    // login処理OKの場合ほにゃらら.phpへ遷移
    header('Location: admin-index.php');
} else {
    // login処理NGの場合login.phpへ遷移
    header('Location: login.php');
}
// 処理終了
exit();
