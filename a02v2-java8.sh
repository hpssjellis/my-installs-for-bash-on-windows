#!/bin/bash

#assumes both these commands have been done
#sudo su
#apt-get update

mkdir /home/jdk
cd /home/jdk

wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u5-b13/jdk-8u5-linux-x64.tar.gz

tar -zxf jdk-8u5-linux-x64.tar.gz -C /home/jdk

cd /home/jdk/jdk1.8.0_05

ls

echo "Jave 8 installed. Now setting paths for this bash session and others to follow."

#exports so that this bash instance runs well
export JAVA_HOME=/home/jdk/jdk1.8.0_05
export PATH=$PATH:$JAVA_HOME/bin

#printf so that a new instance (window) using bash will still run.
printf "\n\nexport JAVA_HOME=/home/jdk/jdk1.8.0_05\nexport PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc 





#The last number 1100 is the priority mine had java 7 at 1097 online help site had these were set at 100

update-alternatives --install /usr/bin/java java /home/jdk/jdk1.8.0_05/bin/java 1100

update-alternatives --install /usr/bin/javac javac /home/jdk/jdk1.8.0_05/bin/javac 1100

update-alternatives --display java

update-alternatives --display javac

java -version
