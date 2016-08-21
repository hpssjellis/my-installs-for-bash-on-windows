#!bin/bash



echo "---------------------------------try to upgrade to ubuntu 16.04-------------------------"

echo "---------------------------------Your current release is---------------------------------"
lsb_release -a



sudo su <<RUNNING_AS_SUPER_SU

cd /home/$USER


apt-get -y update

echo "---------------------------------update done---------------------------------"

apt-get -y upgrade

echo "---------------------------------upgrade done---------------------------------"

apt-get -y dist-upgrade

echo "---------------------------------dist-upgrade done---------------------------------"


apt-get -y autoremove

echo "---------------------------------auto-remove done---------------------------------"


echo "The next command you may have to ctrl-c to get out of---------------------------------"
do-release-upgrade -f DistUpgradeViewNonInteractive -d

echo "do-release-upgrade -f DistUpgradeViewNonInteractive -d done---------------------------------"




RUNNING_AS_SUPER_SU


echo "---------------------------------now checking the version with lsb_release -a"

lsb_release -a


echo "Did it work"



#Notes


#echo 'yourpasswordhere' | sudo -S dpkg --configure -a

#lxrun /setdefaultuser root





