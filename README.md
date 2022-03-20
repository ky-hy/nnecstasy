# nnecstasy

## 開発環境構築手順
```
# 環境変数ファイルを作成(postgresのpasswordを適宜変更する)
cp .env.example cp .env
# 開発環境作成＆起動
docker-compose up -d --build
# nneコンテナに入る
docker-compose exec nne sh
## nneコンテナでサーバー起動コマンドを実行する(※起動には時間がかかります)
yarn run dev
```
http://localhost:3000 にアクセスして画面が表示されたら成功です
