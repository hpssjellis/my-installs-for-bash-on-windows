#!/bin/bash

#assumes both these commands have been done
#sudo su
#apt-get update


update-java-alternatives -l

read
echo "Switch java only while this bash session is valid"
echo "ctrl-c to exit if other java is not /usr/lib/jvm/java-1.7.0-openjdk-amd64"

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

