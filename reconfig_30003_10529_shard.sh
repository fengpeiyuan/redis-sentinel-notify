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
ZK_ZNODE='/coupon'

#export JAVA_HOME=/usr/local/jdk1.7.0_65/
#export PATH=$PATH:$JAVA_HOME/bin

ORI_VALUE_ALL=`/usr/local/zookeeper-3.3.6/bin/zkCli.sh -server $ZK_HOSTPORT get $ZK_ZNODE  2>&1`
#echo $ORI_VALUE_ALL
ORI_VALUE_AFTER=`echo $ORI_VALUE_ALL | awk -F 'path:null' '{print $2}'`
#echo $ORI_VALUE_AFTER
ORI_VALUE=`echo $ORI_VALUE_AFTER | awk -F 'cZxid' '{print $1}'`

FROM_VALUE=$FromIp:$FromPort
REPLACE_VALUE=$ToIp:$ToPort

ZK_VALUE=${ORI_VALUE/$FROM_VALUE/$REPLACE_VALUE}

#echo $ZK_VALUE
Rst=`/usr/local/zookeeper-3.3.6/bin/zkCli.sh -server $ZK_HOSTPORT set $ZK_ZNODE $ZK_VALUE 2>&1`
echo "CurrTime:$CurrTime - CurrIp:$CurrIp - currPort:$currPort - FromIp:$FromIp - FromPort:$FromPort - ToIp:$ToIp - ToPort:$ToPort - ZK_VALUE:$ZK_VALUE - Rst:$Rst " >> /var/log/sentinel_30003_10529.log
