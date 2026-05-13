# ベースイメージの指定 (LTS版を使用)
FROM node:24

# コンテナ内の作業ディレクトリを設定
WORKDIR /usr/src/app

# パッケージ管理ファイルをコピー
COPY package*.json ./

# 依存関係のインストール
RUN npm install

# アプリケーションのソースコードをコピー
COPY . .

# アプリが使用するポートを公開
EXPOSE 3000

# 実行コマンド
CMD ["node", "index.js"]