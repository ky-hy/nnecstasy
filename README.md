# nnecstasy

NN Ecstasy のリポジトリです。

# 開発環境構築手順

```shell
# 環境変数ファイルを作成(実際のパスはオーナーに聞くこと)
$ cp .env.example .env
$ cp ./nne/server/.env.example ./nne/server/.env
$ cp ./nne/server/prisma/.env.example ./nne/server/prisma/.env

# 開発環境作成＆起動
$ docker-compose up -d --build
# nneコンテナに入る
$ docker-compose exec nne sh
## nneコンテナでサーバー起動コマンドを実行する(※起動には時間がかかります)
$ yarn run dev
```

[http://localhost:8000](http://localhost:8000) にアクセスして画面が表示されたら成功
