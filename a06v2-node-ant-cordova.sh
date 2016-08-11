#!/bin/bash


#apt-get update

echo "installing node"
# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<UNTIL_STOP_AS_SUPER_SU
  cd /home/$USER
  sudo apt-get -y install node 
  
  #since strangely called nodejs need a link for just node
  ln -s `which nodejs` /usr/bin/node
  
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
cd /home/$USER
mkdir /home/$USER/cordova
cd /home/$USER.cordova


sudo npm install -g cordova 





echo "A link is needed for cordova to work"

mkdir /home/$USER/cordova

cd /home/$USER/cordova


echo "Check versions needed for phonegap cordova"

cordova -v
node -v
npm -v
ant -v
gradle -v




echo "Now lets test phonegap cordova"




cd /home/$USER/cordova

#note: phonegap and cordova are kind of the same thing. cordova is opensource, phonegap is Adobes
#phonegap create myapp --id "com.myapp.sample" --name "myapp"
cordova create myapp --id "com.myapp.sample" --name "myapp"



echo "Did it all work?"

cd /home/$USER


