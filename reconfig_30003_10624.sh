#!/bin/sh

CurrTime=`date "+%Y-%m-%dT%H:%M:%S"`
CurrIp='10.213.33.158'
currPort='30003'
Passwd='1111111111'
FromIp=$4
FromPort=$5
ToIp=$6
ToPort=$7

ZK_HOSTPORT='10.213.42.61:8081'
ZK_ZNODE='/10624'
ZK_VALUE=$ToIp:$ToPort

#export JAVA_HOME=/usr/local/jdk1.7.0_65/
#export PATH=$PATH:$JAVA_HOME/bin

Rst=`/usr/local/zookeeper-3.3.6/bin/zkCli.sh -server $ZK_HOSTPORT set $ZK_ZNODE $ZK_VALUE 2>&1`
echo "CurrTime:$CurrTime - CurrIp:$CurrIp - currPort:$currPort - FromIp:$FromIp - FromPort:$FromPort - ToIp:$ToIp - ToPort:$ToPort - Rst:$Rst " >> /var/log/sentinel_30003_10624.log
