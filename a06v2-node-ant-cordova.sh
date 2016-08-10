#!/bin/bash


#apt-get update


# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<UNTIL_STOP_AS_SUPER_SU
  cd /home/$USER
  sudo apt-get -y install node 
UNTIL_STOP_AS_SUPER_SU


# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<UNTIL_STOP_AS_SUPER_SU
  cd /home/$USER
  sudo apt-get -y install npm
UNTIL_STOP_AS_SUPER_SU


# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<UNTIL_STOP_AS_SUPER_SU
  cd /home/$USER
  sudo apt-get -y install ant
UNTIL_STOP_AS_SUPER_SU




# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<UNTIL_STOP_AS_SUPER_SU
  cd /home/$USER
  sudo npm install -y -g cordova 
UNTIL_STOP_AS_SUPER_SU





echo "Check versions"

cordova -v
node -v
npm -v
ant -V
#note the weird capital V for ant?



echo "Now lets test phonegap cordova"

mkdir /home/$USER/cordova

cd /home/$USER/cordova




#note: phonegap and cordova are kind of the same thing. cordova is opensource, phonegap is Adobes
#phonegap create myapp --id "com.myapp.sample" --name "myapp"
cordova create myapp --id "com.myapp.sample" --name "myapp"



echo "Did it all work?"

cd /home/$USER


