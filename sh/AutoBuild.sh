#!/bin/bash
#########################################################################
# Author: MuYiChun
# Created Time: 2020-06-17 21:34:07
# File Name: AutoBuild.sh
# Description:
#########################################################################

project_path="/root/webhook/webhook-linux-amd64/YXService"
dev_yml=$project_path"/start/src/main/resources/application.yml_dev"
pro_yml=$project_path"/start/src/main/resources/application.yml_pro"
cur_yml=$project_path"/start/src/main/resources/application.yml"
pro_host="dev@172.16.190.214"


echo '####### switch to pro env...'
mv $cur_yml $dev_yml
mv $pro_yml $cur_yml
echo 'done'

echo '####### start build...'
cd $project_path && mvn clean package
echo '####### done'

echo '####### scp to pro env...'
scp $project_path"/start/target/health-service.jar" $pro_host":~"
echo '####### done'

echo '####### pro:  kill pid'
ssh $pro_host "ps -ef|grep health-service.jar | grep -v grep" | awk '{print $2}' | ssh $pro_host "xargs kill -9"
#ssh $pro_host "ps -ef|grep health-service.jar | grep -v grep | awk '{print $2}' | xargs kill -9"
echo '####### done'

echo '####### pro:  nohup run'
ssh $pro_host "nohup java -jar health-service.jar >/dev/null 2>&1 &"
echo '####### done'

echo '####### switch to dev...'
mv $cur_yml $pro_yml
mv $dev_yml $cur_yml
echo 'done'
