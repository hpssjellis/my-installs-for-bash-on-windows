#!/bin/bash

#assumes both these commands have been done
#sudo su
#apt-get update

sudo apt-get -y install node npm ant


#npm install -g phonegap@latest
npm install -g cordova

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

mkdir /home/cordova

cd /home/cordova

#get out of sudo
#exit


#note: phonegap and cordova are kind of the same thing. cordova is opensource, phonegap is Adobes
#phonegap create myapp --id "com.myapp.sample" --name "myapp"
cordova create myapp --id "com.myapp.sample" --name "myapp"



echo "Did it all work?"
