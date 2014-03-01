#!/bin/sh
ISERROR=0

which npm > /dev/null 2>&1
if [ $? -ne 0 ] ; then
        echo "command not found: npm"
        echo "please install npm. e.g. sudo port install npm"
        ISERROR=1
fi

which coffee > /dev/null 2>&1
if [ $? -ne 0 ] ; then
        echo "command not found: npm"
        echo "please install npm. e.g. npm install -g coffee-script"
        ISERROR=1
fi

if [ $ISERROR == 1 ] ; then
        exit
fi

# rm -rf node_modules/

# export HUBOT_AUTH_ADMIN=esmasui
export HUBOT_ADAPTER=idobata
export HUBOT_LOG_LEVEL=debug
export HUBOT_NAME=masubot

# develop & guest-room
export HUBOT_IDOBATA_API_TOKEN=7707c72aba82fa1e61f694aa3af79ed1

export FILE_BRAIN_PATH=`pwd`



npm install

echo "---------------------------------------------------------"
./bin/hubot
