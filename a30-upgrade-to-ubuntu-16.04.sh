#!bin/bash

echo "You may have to run this bash file twice!!"
echo "If you ever get a purple screen be very careful"
echo "click on the screen, then click tab to select YES, then click enter"
echo "On the purple screen all else crashes the bash file"

echo "---------------------------------try to upgrade to ubuntu 16.04-------------------------"

echo "---------------------------------Your current release is---------------------------------"
lsb_release -a



#sudo su <<RUNNING_AS_SUPER_SU

#cd /home/$USER






echo "The next command you may have to ctrl-c to get out of the following command ---------------------------------"
echo "sudo do-release-upgrade -f DistUpgradeViewNonInteractive -d"

sudo do-release-upgrade -f DistUpgradeViewNonInteractive -d

echo "do-release-upgrade -f DistUpgradeViewNonInteractive -d done---------------------------------"







#RUNNING_AS_SUPER_SU

echo "running a fancy command to fix issues"
echo "echo 'yourpasswordhere' | sudo -S dpkg --configure -a"
echo "Enter password for sudo to run"
read -s MYPASS

echo $MYPASS | sudo -S dpkg --configure -a



echo "---------------------------------issues fixed ---------------------------------"



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





