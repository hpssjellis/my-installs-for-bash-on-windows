#!/bin/bash



#login as a different user then run this to update your paths.


echo "Load bashrc by running"
echo "nano ~/.bashrc"
echo "ctrl-x Y to save"
echo "Be very careful you do not messup this file up or you may have to delete your entire bash-on-windows"
echo "research lxrun to find out how to reset your bash-on-windows"

# the .bashrc file at the bottom should have something that looks like the following
# Watch out for duplicates, they don't hurt it but make it hard to read.

#export JAVA_HOME=/home/jdk/jdk1.8.0_05
#export PATH=$PATH:$JAVA_HOME/bin

#export BAZEL_HOME=/opt/bazel
#export PATH=$PATH:$BAZEL_HOME/bin
#export GRADLE_USER_HOME=/home/gradle/gradle-3.0-rc-2
#export PATH=$PATH:$GRADLE_USER_HOME/bin


#make sure these lines are the ones that work for your files

printf "\n\nexport JAVA_HOME=/home/jdk/jdk1.8.0_05\nexport PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc 
printf "\n\nexport BAZEL_HOME=/home/bazel\nexport PATH=\$PATH:\$BAZEL_HOME/bin" >> ~/.bashrc 
printf "\n\nexport ANDROID_SDK_HOME=/home/android/android-sdk-linux\nexport PATH=\$PATH:\$ANDROID_SDK_HOME/tools\nexport PATH=\$PATH:\$ANDROID_SDK_HOME/platform-tools"  >> ~/.bashrc
printf "\nexport GRADLE_USER_HOME=/home/gradle/gradle-$gradle_version\nexport PATH=\$PATH:\$GRADLE_USER_HOME/bin"  >> ~/.bashrc


echo "Must start a new terminal for these to be in effect"
echo "check the .bashrc file at the bottom of the file by running"
echo "nano ~/.bashrc"






echo "now symlinks for this user $USER"



ln -s /home/tensorflow-from-repo/tensorflow/tensorflow/examples /home/$USER/b01-link-to-tf-examples






