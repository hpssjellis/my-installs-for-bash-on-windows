#!/bin/bash


sudo apt-get update

#lots of basic developer pakages. Not a big deal if we try to install them again.

sudo apt-get -y install git pkg-config g++ zlib1g-dev unzip zip python-pip python-dev python-virtualenv libblas-dev liblapack-dev libatlas-base-dev gfortran


# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<DONE_AS_SUPER_SU

  cd /home/$USER

  apt-get install -y lib32z1  openjdk-7-jdk

DONE_AS_SUPER_SU


export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin

#printf "\n\nexport JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64\nexport PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc 


java -version

echo "Note java 7 paths not entered into .bashrc so that java 8 can be installed"


echo "Utilities installed"


cd /home/$USER

