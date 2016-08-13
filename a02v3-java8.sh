

#!/bin/bash

#note most important line to run manually
#sudo update-alternatives --config java
#then choose the number of the java you want

#done in generic

#sudo su <<RUNNING_AS_SUPER_SU
#cd /home/$USER/jdk

#sudo apt-get install git-core gnupg flex bison gperf build-essential \
#  zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
#  lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache \
#  libgl1-mesa-dev libxml2-utils xsltproc unzip
  
#RUNNING_AS_SUPER_SU  




echo "Installing oracle java 8 with silent license acceptance"




sudo apt-get install -y python-software-properties debconf-utils
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
#sudo apt-get install -y oracle-java8-installer








#The last number 1100 is the priority mine had java 7 at 1097 online help site had these were set at 100

sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-8-oracle/jre/bin/java 1800

sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/java-8-oracle/bin/javac 1800

sudo update-alternatives --display java

sudo update-alternatives --display javac

java -version


echo "Oracle Jave 8 installed. Now setting paths for this bash session and others to follow."

#exports so that this bash instance runs well
#export JAVA_HOME=/usr/lib/jvm/java-8-oracle
#export PATH=$PATH:$JAVA_HOME/bin


#printf so that a new instance (window) using bash will still run.


printf "\n\nexport JAVA_HOME=/usr/lib/jvm/java-8-oracle\nexport PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc 


echo "To switch java versions use the following and choose the priority number"
echo "sudo update-alternatives --config java"


#note this may default switch to this form of java
#sudo update-java-alternatives -s java-8-oracle

cd /home/$USER




