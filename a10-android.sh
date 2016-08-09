#!/bin/bash


#apt-get update


#NEEDS JAVA 7 RUN THE SWITCH PROGRAM FIRST AND STAY IN THAT WINDOW!

bash a08-switch-java-1.7.sh

mkdir /home/$USER/android

cd /home/$USER/android


wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz -O /home/$USER/android/android-sdk_r24.4.1-linux.tgz
#wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz 

#must be able to run android-sdk_r24.4.1-linux.tgz
chmod +x android-sdk_r24.4.1-linux.tgz 

tar -xvzf /home/$USER/android/workspace/android-sdk_r24.4.1-linux.tgz -C /home/$USER/android
#sudo rm android-sdk_r24.4.1-linux.tgz



echo "export paths to the .profile file so other terminals can use android sdk"

printf "\n\nexport ANDROID_SDK_HOME=/home/$USER/android/android-sdk-linux\nexport PATH=\$PATH:\$ANDROID_SDK_HOME/tools\nexport PATH=\$PATH:\$ANDROID_SDK_HOME/platform-tools"  >> ~/.bashrc

echo "export paths here so this bash file can use android sdk"
export ANDROID_SDK_HOME=/home/$USER/android/android-sdk-linux
export PATH=$PATH:$ANDROID_SDK_HOME/tools
export PATH=$PATH:$ANDROID_SDK_HOME/platform-tools




echo "Android sdk installed now you have more to do."
echo "This works best using bash from the power shell"


echo "y" | android update sdk --filter platform-tools tools extra build-tools-23.0.2 android-20 --no-ui --force 

#echo "y" | android update sdk --filter platform-tools --no-ui --force 
#echo "y" | android update sdk --filter tools --no-ui --force
#echo "y" | android update sdk --filter extra --no-ui --force

#echo "y" | android update sdk --filter extra --no-ui --force
#echo "y" | android update sdk --all --filter build-tools-23.0.2 --no-ui --force
#echo "y" | android update sdk --filter android-20 --no-ui --force   #Android 4.4W.2 KitKat
#echo "y" | android update sdk --filter android-22 --no-ui --force   #Android 5.1.1  Lollipop
#echo "y" | android update sdk --filter android-23 --no-ui --force   #Android 6.0    Marshmallow

android list sdk

echo "Did android sdk install?"

cd /home/$USER

