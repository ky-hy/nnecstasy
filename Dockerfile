FROM node:16.14.2-alpine3.14

WORKDIR /app/

# 必要なパッケージ等のインストール
RUN apk add git
COPY ./nne/package.json nne/yarn.lock ./
RUN mkdir server 
COPY nne/server/package.json nne/server/yarn.lock ./server/
RUN yarn install
RUN cd ./server && yarn install
COPY ./nne .
RUN yarn run generate 

# サーバーの立ち上げ
CMD yarn run dev
