#FOUR
#配置环境变量
#解压jdk到/app
#注意下载的Hadoop和jdk要兼容
tar -zvxf /data/hadoop/jdk-*-linux-x64.tar.gz -C /apps
tar -zvxf /data/hadoop/hadoop-*.tar.gz -C /apps
cd /apps
mv jdk*/ java
mv hadoop*/ hadoop
sudo vim ~/.bashrc
#增加环境变量
#java
export JAVA_HOME=/apps/java
export PATH=$JAVA_HOME/bin:$PATH
#hadoop
export HADOOP_HOME=/apps/hadoop
export HADOOP_COMMON_HOME=/apps/hadoop
export PATH=$HADOOP_HOME/bin:$PATH
#保存退出后source
source ~/.bashrc
#输入java和javac验证是否配置成功
#输入hadoop version验证
