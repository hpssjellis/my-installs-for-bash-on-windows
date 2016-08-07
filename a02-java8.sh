#!/bin/bash

#assumes both these commands have been done
#sudo su
#apt-get update

cd ~/


wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u5-b13/jdk-8u5-linux-x64.tar.gz

mkdir /opt/jdk

tar -zxf jdk-8u5-linux-x64.tar.gz -C /opt/jdk

ls /opt/jdk


export JAVA_HOME=/opt/jdk/jdk1.8.0_05
export PATH=$PATH:$JAVA_HOME/bin

printf "\n\nexport JAVA_HOME=/opt/jdk/jdk1.8.0_05\nexport PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc 





#The last number 1100 is the priority mine had java 7 at 1097 online help site had these were set at 100

update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_05/bin/java 1100

update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_05/bin/javac 1100

update-alternatives --display java

update-alternatives --display javac

java -version
