@echo off

call npm install

SETLOCAL
SET PATH=node_modules\.bin;node_modules\hubot\node_modules\.bin;%PATH%

SET  BOT_NAME=bot_test
SET  BOT_OWNER=bot_test
SET  BOT_DESC=bot_test
SET  ROCKETCHAT_URL=http://localhost:3000
SET  ROCKETCHAT_ROOM=general
SET  LISTEN_ON_ALL_PUBLIC=false
SET  ROCKETCHAT_AUTH=password
SET  ROCKETCHAT_USER=bot_test
SET  ROCKETCHAT_PASSWORD=12345
SET  NODE_TLS_REJECT_UNAUTHORIZED=0
echo  %ROCKETCHAT_URL%


node_modules\.bin\hubot.cmd --name "bot_test" %*
