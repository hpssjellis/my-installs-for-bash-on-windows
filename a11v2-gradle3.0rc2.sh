#!/bin/bash

#assumes both these commands have been done
#sudo su
#apt-get update

#gradle_version=2.9
gradle_version=3.0-rc-2

mkdir /home/$USER/gradle
cd /home/$USER/gradle


wget -N http://downloads.gradle.org/distributions/gradle-${gradle_version}-all.zip
unzip -oq ./gradle-${gradle_version}-all.zip -d /home/$USER/gradle
#ln -sfnv gradle-${gradle_version} /home/gradle/gradle-${gradle_version}

echo "exporting the Path to my .bashrc file so other terminals have the path"

printf "\nexport GRADLE_USER_HOME=/home/$USER/gradle/gradle-$gradle_version\nexport PATH=\$PATH:\$GRADLE_USER_HOME/bin"  >> ~/.bashrc

echo "exporting the path so that the next command works"


export GRADLE_USER_HOME=/home/$USER/gradle/gradle-$gradle_version
export PATH=$PATH:$GRADLE_USER_HOME/bin


#printf "export GRADLE_HOME=/home/gradle/latest\nexport PATH=\$PATH:\$GRADLE_HOME/bin" > /etc/profile.d/gradle.sh
#. /etc/profile.d/gradle.sh
#hash -r ; sync
# check installation

echo "setup gradle"

gradle
echo "see if it worked"
gradle -v
