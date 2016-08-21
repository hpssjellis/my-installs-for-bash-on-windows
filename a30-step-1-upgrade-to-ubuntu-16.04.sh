#!bin/bash



echo "---------------------------------try to upgrade to ubuntu 16.04-------------------------"

echo "---------------------------------Your current release is---------------------------------"
lsb_release -a



#sudo su <<RUNNING_AS_SUPER_SU

#cd /home/$USER






echo "The next command you may have to ctrl-c to get out of---------------------------------"
sudo do-release-upgrade -f DistUpgradeViewNonInteractive -d

echo "do-release-upgrade -f DistUpgradeViewNonInteractive -d done---------------------------------"







#RUNNING_AS_SUPER_SU


echo "Enter password for sudo to run"
echo "echo 'yourpasswordhere' | sudo -S dpkg --configure -a"
read mypass

echo $mypass | sudo -S dpkg --configure -a






sudo apt-get -y update

echo "---------------------------------update done---------------------------------"

sudo apt-get -y upgrade

echo "---------------------------------upgrade done---------------------------------"

sudo apt-get -y dist-upgrade

echo "---------------------------------dist-upgrade done---------------------------------"


sudo apt-get -y autoremove

echo "---------------------------------auto-remove done---------------------------------"






echo "---------------------------------now checking the version with lsb_release -a"

lsb_release -a


#sudo dpkg --configure -a


echo "Did it work, try the bash command again."



#Notes






#echo 'yourpasswordhere' | sudo -S dpkg --configure -a

#lxrun /setdefaultuser root





