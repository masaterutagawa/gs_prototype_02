# SQL基礎 / CRUD処理(後半)の課題

SQL基礎 / CRUD処理(前半)で学んだ事を活かし作成するアプリ

## ◎DEMO

- 未デプロイ

## ◎紹介と使い方

- SQL基礎 / CRUD処理(前半)の課題を改修

## ◎工夫した点
前回、うまく動作しない箇所をひとまず修正
### 修正した箇所
- DBに保存したカードのファイル名の呼び出し用PHPの記述を修正
- 記事を編集した際に画像のファイル名をhiddenで飛ばし忘れててエラーなるので修正
- セッションでログインしていないと、ページや管理画面を閲覧できないようにしてみた。

## ◎苦戦した点

- ユーザー登録時に設定したパスワードをpassword_hash関数で暗号化したが、ログイン時にpassword_verify関数を使いDBと照合させるのがうまくできなかった。

## ◎参考にした web サイトなど

- google検索
- Chat GPT
- 独習PHP第４版（書籍）
- PHP逆引レシピ （書籍）
