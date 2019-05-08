sudo yum -y install epel-release
sudo yum -y groupinstall "X Window system"
sudo yum -y install lightdm
sudo yum -y install cinnamon
sudo systemctl isolate graphical.target
sudo systemctl set-default graphical.target
rm '/etc/systemd/system/default.target'
ln -s '/usr/lib/systemd/system/graphical.target' '/etc/systemd/system/default.target'
