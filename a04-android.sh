#!/bin/bash

#assumes both these commands have been done
#sudo su
#apt-get update


mkdir /home/android

cd /home/android


sudo wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz -O /home/android/android-sdk_r24.4.1-linux.tgz
sudo tar -xvzf /home/android/workspace/android-sdk_r24.4.1-linux.tgz -C /home/android/
#sudo rm android-sdk_r24.4.1-linux.tgz



echo "export paths to the .profile file so other terminals can use android sdk"

printf "\n\nexport ANDROID_SDK_HOME=/home/android/android-sdk-linux\nexport PATH=\$PATH:\$ANDROID_SDK_HOME/tools\nexport PATH=\$PATH:\$ANDROID_SDK_HOME/platform-tools"  >> ~/.bashrc

echo "export paths here so this bash file can use android sdk"
export ANDROID_SDK_HOME=/home/android/android-sdk-linux
export PATH=$PATH:$ANDROID_SDK_HOME/tools
export PATH=$PATH:$ANDROID_SDK_HOME/platform-tools




echo "Android sdk installed now you have more to do."
echo "This works best using bash from the power shell"
