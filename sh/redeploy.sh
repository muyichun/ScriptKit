#!/bin/bash

git pull

mvn clean package

ps -ef|grep health-service.jar | grep -v grep | awk '{print $2}' | xargs kill -9

mv start/target/health-service.jar ~

nohup java -jar ~/health-service.jar >/dev/null 2>&1 &
