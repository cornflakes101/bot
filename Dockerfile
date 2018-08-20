FROM node:latest

MAINTAINER Brandon <Ro>

RUN npm install

ENV PATH=node_modules\.bin;node_modules\hubot\node_modules\.bin;%PATH%

ENV  BOT_NAME=bot_test
ENV  BOT_OWNER=bot_test
ENV  BOT_DESC=bot_test
ENV  ROCKETCHAT_URL=http://localhost:3000
ENV  ROCKETCHAT_ROOM=general
ENV  LISTEN_ON_ALL_PUBLIC=false
ENV  ROCKETCHAT_AUTH=password
ENV  ROCKETCHAT_USER=bot_test
ENV  ROCKETCHAT_PASSWORD=12345
ENV  NODE_TLS_REJECT_UNAUTHORIZED=0

WORKDIR ./scripts/

RUN node_modules\.bin\hubot.cmd --name "bot_test" --a "Rocketchat"
