#!/bin/bash

#assumes both these commands have been done
#sudo su
#apt-get update

sudo apt-get -y install node
sudo apt-get -y install npm


#npm install -g phonegap@latest
npm install -g cordova

sudo apt-get install -y ant

#installing android a different way


#sudo apt-get install -y lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6

#mkdir /home/android

#cd /home/android

#note use this url to get the android sdk https://dl.google.com/android/android-sdk_r24.4.1-linux.tgz

#wget https://dl.google.com/android/android-sdk_r24.4.1-linux.tgz

#sudo tar -zxvf /home/android/android-sdk_r24.0.2-linux.tgz -C /home/android/

#export PATH=$PATH:/home/android/android-sdk-linux/
#export PATH=$PATH:/home/android/android-sdk-linux/tools
#export PATH=$PATH:/home/android/android-sdk-linux/platform-tools
#export PATH=$PATH:/home/android/android-sdk-linux/build-tools

echo "Check versions"
git --version
#android -h
phonegap -v
ant -V
node -v
npm -v

whereis node
which node

echo "Now lets test phonegap cordova"

mkdir /home/cordova

cd /home/cordova

#get out of sudo
exit


#note: phonegap and cordova are kind of the same thing. cordova is opensource, phonegap is Adobes
#phonegap create myapp --id "com.myapp.sample" --name "myapp"
cordova create myapp --id "com.myapp.sample" --name "myapp"



echo "Did it all work?"
