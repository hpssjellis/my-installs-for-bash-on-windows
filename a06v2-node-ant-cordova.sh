#!/bin/bash


#apt-get update

echo "installing node"
# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<UNTIL_STOP_AS_SUPER_SU
  cd /home/$USER
  sudo apt-get -y install node 
UNTIL_STOP_AS_SUPER_SU





echo "installing npm"
# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<UNTIL_STOP_AS_SUPER_SU
  cd /home/$USER
  sudo apt-get -y install npm
UNTIL_STOP_AS_SUPER_SU




echo "installing ant"
# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<UNTIL_STOP_AS_SUPER_SU
  cd /home/$USER
  sudo apt-get -y install ant
UNTIL_STOP_AS_SUPER_SU



echo "installing Cordova"
# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<UNTIL_STOP_AS_SUPER_SU
  cd /home/$USER
  npm install cordova 
UNTIL_STOP_AS_SUPER_SU




echo "A link is needed for cordova to work"

mkdir /home/$USER/cordova

cd /home/$USER/cordova

sudo ln -s `which nodejs` /usr/bin/node


echo "Check versions"

cordova -v
node -v
npm -v
ant -v
#note the weird capital V for ant?



echo "Now lets test phonegap cordova"




cd /home/$USER/cordova

#note: phonegap and cordova are kind of the same thing. cordova is opensource, phonegap is Adobes
#phonegap create myapp --id "com.myapp.sample" --name "myapp"
cordova create myapp --id "com.myapp.sample" --name "myapp"



echo "Did it all work?"

cd /home/$USER


