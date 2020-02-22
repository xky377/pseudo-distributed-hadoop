#SEVEN
#格式化,使配置生效
hadoop namenode -format
#启动Hadoop
cd /apps/hadoop/sbin
./start-all.sh
#jps查看
jps
#检测hdfs
hadoop fs -mkdir /test
hadoop fs ls /
#登录本地50070端口可以查看hadoop情况
#登录本地8088端口可以查看yarn情况
