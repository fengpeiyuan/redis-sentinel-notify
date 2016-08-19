#!/bin/sh
CurrTime=`date "+%Y-%m-%dT%H:%M:%S"`
CurrIp='10.213.33.155'
currPort='30001'
Passwd='pay_m_sentinel'
FromIp=$4
FromPort=$5
ToIp=$6
ToPort=$7
NotifyHost='http://api.test.com/v1/redisSentinelNotify'
NotifyData='notifyTime='$CurrTime'&password='$Passwd'&sentinelIpAndPort=10.213.33.155:30001&downMasterIpAndPort='$FromIp':'$FromPort'&newMasterIpAndPort='$ToIp':'$ToPort'&detail=failover'
Rst=`curl -POST $NotifyHost --data $NotifyData `
RstStatus=${Rst:10:3}
TryNum=5
while [ $RstStatus != '200' -a $TryNum -ge 1 ]
do
        Rst=`curl -POST $NotifyHost --data $NotifyData `
        RstStatus=${Rst:10:3}
        TryNum=`expr $TryNum - 1`
        ##echo "####RS:"$RstStatus",TryNum:"$TryNum
done

echo "CurrTime:$CurrTime - CurrIp:$CurrIp - currPort:$currPort - FromIp:$FromIp - FromPort:$FromPort - ToIp:$ToIp - ToPort:$ToPort - Rst:$Rst " >> /var/log/sentinel_30001_10621.log
