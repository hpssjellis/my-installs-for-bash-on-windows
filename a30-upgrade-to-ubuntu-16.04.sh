#!bin/bash



echo "try to upgrade to ubuntu 16.04"

echo "Your current release is"
lsb_release -a



echo "you will have to ctrl-c out of this first step"


sudo do-release-upgrade -f DistUpgradeViewNonInteractive -d

 sudo dpkg --configure -a

sudo apt-get update
sudo apt-get dist-upgrade 
sudo apt-get autoremove

echo "Did that work to install ubuntu 16.04??"

lsb_release -a




#someone else got this working



#sudo su
#apt-get update
#apt-get upgrade
#apt-get dist-upgrade
#apt-get autoremove
#sudo do-release-upgrade -f DistUpgradeViewNonInteractive -d





