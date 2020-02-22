#TWO
#配置公钥和私钥免密码登录
ssh-keygen -t rsa
#此时公钥和私钥存在~/.ssh下
cd ~/.ssh
#创建authorized_keys
touch ~/.ssh/authorized_keys
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
#登录本地测试
ssh localhost
