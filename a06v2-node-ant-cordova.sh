#!/bin/bash


#apt-get update

echo "deactivate virtual environment if found"
deactivate

sudo apt-get -y install node npm ant


#npm install -g phonegap@latest
sudo npm install -y -g cordova

echo "Check versions"

cordova -v
node -v
npm -v
ant -V
#note the weird capital V for ant?


Echo "Node is sometimes hard to find to make paths to"
whereis node
which node

whereis cordova
which cordova

echo "Now lets test phonegap cordova"

mkdir /home/$USER/cordova

cd /home/$USER/cordova




#note: phonegap and cordova are kind of the same thing. cordova is opensource, phonegap is Adobes
#phonegap create myapp --id "com.myapp.sample" --name "myapp"
cordova create myapp --id "com.myapp.sample" --name "myapp"



echo "Did it all work?"

cd /home/$USER


