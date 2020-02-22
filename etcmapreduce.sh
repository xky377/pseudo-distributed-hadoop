#SIX
#配置mapreduce
cd /apps/hadoop/etc/hadoop
mv mapred-site.xml.template mapred-site.xml

vim mapred-site.xml
#增加配置信息
<property>
    <name>mapreduce.framework.name</name>
    <value>yarn</value>
</property>

vim yarn-site.xml
#增加配置信息
<property>
    <name>yarn.nodemanager.aux-services</name>
    <value>mapreduce_shuffle</value>
</property>
