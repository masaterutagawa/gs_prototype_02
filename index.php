<?php

// 関数ファイル読み込み
include('function.php');

// DB接続用関数を実行
$pdo = db_connect();

// SQL作成&実行
$sql = "SELECT * FROM dev13_diary WHERE 1";
$stmt = $pdo->prepare($sql);

try {
    $status = $stmt->execute();
} catch (PDOException $e) {
    echo json_encode(["sql error" => "{$e->getMessage()}"]);
    exit();
}
// SQL実行の処理
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
$output = '';
foreach ($result as $record)
    $output .= "
        
            <a href=\"diary-entry.php?diary_id={$record["diary_id"]}\" class=\"group relative flex h-48 flex-col overflow-hidden rounded-lg bg-gray-100 shadow-lg md:h-64 xl:h-96\">
                <img src=\"card_images/{$record["select_card_filename"]}\" loading=\"lazy\" alt=\"Photo by Minh Pham\" class=\"absolute inset-0 h-full w-full object-cover object-center transition duration-200 group-hover:scale-110\" />
                <div class=\"pointer-events-none absolute inset-0 bg-gradient-to-t from-gray-800 to-transparent md:via-transparent\"></div>
                <div class=\"relative mt-auto p-4\">
                <span class=\"block text-sm text-gray-200\">{$record["registration_date"]}</span>
                <h2 class=\"mb-2 text-xl font-semibold text-white transition duration-100\">{$record["today_events"]}</h2>
                <span class=\"font-semibold text-white\">この日の記録を確認する</span>
                </div>
            </a>
        
";
?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>記録</title>
</head>

<body>
    <?php include('include/header.php'); ?>
    <div class="bg-white py-6 sm:py-8 lg:py-12">
        <div class="mx-auto max-w-screen-2xl px-4 md:px-8">
            <!-- text - start -->
            <div class="mb-10 md:mb-16">
                <h2 class="mb-4 text-center text-2xl font-bold text-gray-800 md:mb-6 lg:text-3xl">ガワさんの日記</h2>
                <p class="mx-auto max-w-screen-md text-center text-gray-500 md:text-lg">日記の一覧</p>
            </div>
            <!-- text - end -->
            <div class="grid gap-4 sm:grid-cols-2 md:gap-6 lg:grid-cols-3">
                <?= $output  ?>
            </div>
        </div>
    </div>
    <?php include('include/footer.php'); ?>
</body>

</html>