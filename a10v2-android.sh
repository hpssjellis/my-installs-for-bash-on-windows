#!/bin/bash


#apt-get update
mkdir /home/$USER/android

echo "installing android"
# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<DONE_AS_SUPER_SU

  cd /home/$USER/android
  
  wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz -O /home/$USER/android/android-sdk_r24.4.1-linux.tgz

  tar -xvzf /home/$USER/android/android-sdk_r24.4.1-linux.tgz -C /home/$USER/android

DONE_AS_SUPER_SU

sudo chown -R $USER:$USER /home/$USER/android/android-sdk-linux

echo "export paths to the .profile file so other terminals can use android sdk"

printf "\n\nexport ANDROID_SDK_HOME=/home/$USER/android/android-sdk-linux\nexport PATH=\$PATH:\$ANDROID_SDK_HOME/tools\nexport PATH=\$PATH:\$ANDROID_SDK_HOME/platform-tools"  >> ~/.bashrc

echo "export paths here so this bash file can use android sdk"
export ANDROID_SDK_HOME=/home/$USER/android/android-sdk-linux
export PATH=$PATH:$ANDROID_SDK_HOME/tools
export PATH=$PATH:$ANDROID_SDK_HOME/platform-tools




echo "Android sdk installed now you have more to do."
echo "This works best using bash from the power shell"
echo "Each line needs a fresh power shell"
echo "probably best not to do the echo y |"



#echo "y" | android update sdk --filter "platform-tools,tools,extra,build-tools-23.0.2,android-20,android-22,android-23" --no-ui --force 


echo "installing android sdk update"
# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<DONE_AS_SUPER_SU


android update sdk --filter platform-tools --no-ui --force 
android update sdk --filter tools --no-ui --force
android update sdk --filter extra --no-ui --force

android update sdk --filter extra --no-ui --force
android update sdk --all --filter build-tools-23.0.2 --no-ui --force
android update sdk --filter android-20 --no-ui --force   #Android 4.4W.2 KitKat

#android update sdk --filter android-22 --no-ui --force   #Android 5.1.1  Lollipop
#android update sdk --filter android-23 --no-ui --force   #Android 6.0    Marshmallow


DONE_AS_SUPER_SU


android list sdk --all --extended

echo "Did android sdk install?"

cd /home/$USER

