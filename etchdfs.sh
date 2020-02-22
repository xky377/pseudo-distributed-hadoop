#FIVE
#进入Hadoop配置目录
cd /apps/hadoop/etc/hadoop

vim hadoop-env.sh
#修改java环境变量
#在export JAVA_HOME=${JAVA_HOME}后增加
export JAVA_HOME=/apps/java

mkdir -p /data/tmp/hadoop/tmp
vim core-site.xml
#在<configuration>与</configuration>之间添加配置信息
#/data/tmp/hadoop/tmp需要提前创建
#hadoop.tmp.dir:临时文件存储位置
<property>
    <name>hadoop.tmp.dir</name>
    <value>/data/tmp/hadoop/tmp</value>
</property>
#fs.defaultFS:hadoop HDFS文件系统的存储位置
<property>
    <name>fs.defaultFS</name>
    <value>hdfs://localhost:9000</value>
</property>

mkdir -p /data/tmp/hadoop/hdfs/name
mkdir -p /data/tmp/hadoop/hdfs/data
vim hdfs-site.xml
#在<configuration>与</configuration>之间添加配置信息
#/data/tmp/hadoop/hdfs需要提前创建
#dfs.namenode.name.dir:配置元数据信息的存储位置
<property>
    <name>dfs.namenode.name.dir</name>
    <value>/data/tmp/hadoop/hdfs/name</value>
</property>
#dfs.datanode.data.dir:配置具体信息的存储位置
<property>
    <name>dfs.datanode.data.dir</name>
    <value>/data/tmp/hadoop/hdfs/data</value>
</property>
#dfs.replication:配置每个数据库备份（一台机器设置为1）
<property>
    <name>dfs.replication</name>
    <value>1</value>
</property>
#dfs.permissions.enabled:配置hdfs是否启用权限认证
<property>
    <name>dfs.permissions.enabled</name>
    <value>false</value>
</property>

vim slaves
#将集群中slave角色的节点的主机名加入，由于只有一台机器，所以写localhost
localhost


