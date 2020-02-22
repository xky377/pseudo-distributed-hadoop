#ONE
#增加用户
sudo useradd -d /home/hadoop1 -m hadoop1
sudo passwd hadoop1
#给hadoop1增加权限
sudo usermod -G sudo hadoop1

