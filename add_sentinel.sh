add sentinel:
/opt/redis/bin/redis-cli -p 30001 sentinel remove m10527  &&
/opt/redis/bin/redis-cli -p 30001 sentinel monitor m10527 10.209.36.203 10527 2  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10527 down-after-milliseconds 10000  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10527 parallel-syncs 1  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10527 failover-timeout 30000  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10527 client-reconfig-script /etc/redis/reconfig_30001_10527_shard.sh  &&
/opt/redis/bin/redis-cli -p 30001 sentinel remove m10528  &&
/opt/redis/bin/redis-cli -p 30001 sentinel monitor m10528 10.209.36.203 10528 2  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10528 down-after-milliseconds 10000  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10528 parallel-syncs 1  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10528 failover-timeout 30000  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10528 client-reconfig-script /etc/redis/reconfig_30001_10528_shard.sh  &&
/opt/redis/bin/redis-cli -p 30001 sentinel remove m10529  &&
/opt/redis/bin/redis-cli -p 30001 sentinel monitor m10529 10.209.36.203 10529 2  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10529 down-after-milliseconds 10000  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10529 parallel-syncs 1  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10529 failover-timeout 30000  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10529 client-reconfig-script /etc/redis/reconfig_30001_10529_shard.sh  &&
/opt/redis/bin/redis-cli -p 30001 sentinel remove m10530  &&
/opt/redis/bin/redis-cli -p 30001 sentinel monitor m10530 10.209.36.203 10530 2  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10530 down-after-milliseconds 10000  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10530 parallel-syncs 1  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10530 failover-timeout 30000  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10530 client-reconfig-script /etc/redis/reconfig_30001_10530_shard.sh &&
/opt/redis/bin/redis-cli -p 30001 sentinel remove m10624  &&
/opt/redis/bin/redis-cli -p 30001 sentinel monitor m10624 10.209.226.17 10624 2  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10624 down-after-milliseconds 10000  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10624 parallel-syncs 1  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10624 failover-timeout 30000  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10624 client-reconfig-script /etc/redis/reconfig_30001_10624.sh  &&
/opt/redis/bin/redis-cli -p 30001 sentinel remove m10625  &&
/opt/redis/bin/redis-cli -p 30001 sentinel monitor m10625 10.209.226.17 10625 2  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10625 down-after-milliseconds 10000  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10625 parallel-syncs 1  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10625 failover-timeout 30000  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10625 client-reconfig-script /etc/redis/reconfig_30001_10625.sh  &&
/opt/redis/bin/redis-cli -p 30001 sentinel remove m10626  &&
/opt/redis/bin/redis-cli -p 30001 sentinel monitor m10626 10.209.226.17 10626 2  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10626 down-after-milliseconds 10000  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10626 parallel-syncs 1  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10626 failover-timeout 30000  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10626 client-reconfig-script /etc/redis/reconfig_30001_10626.sh  &&
/opt/redis/bin/redis-cli -p 30001 sentinel remove m10627  &&
/opt/redis/bin/redis-cli -p 30001 sentinel monitor m10627 10.209.226.17 10627 2  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10627 down-after-milliseconds 10000  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10627 parallel-syncs 1  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10627 failover-timeout 30000  &&
/opt/redis/bin/redis-cli -p 30001 sentinel set m10627 client-reconfig-script /etc/redis/reconfig_30001_10627.sh
