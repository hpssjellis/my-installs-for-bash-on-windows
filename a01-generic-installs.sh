#!/bin/bash

echo "apt-get update first"
sudo apt-get update

#lots of basic developer packages. Not a big deal if we try to install them again.

echo "Installing generic helpers"


sudo apt-get install -y git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386  lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip lib32z1 git pkg-config   g++ python-pip python-dev python-virtualenv  libblas-dev liblapack-dev libatlas-base-dev gfortran openjdk-7-jdk














  echo "Make the tensorflow virtual environment"


  sudo virtualenv --system-site-packages /home/$USER/virtual-tf
  sudo chown -R $USER:$USER /home/$USER/virtual-tf

  echo "--------------------------------------------------------------"
  echo ". "



# has a 5 minute constrain as sudo su but with your home directory
#echo "Running as sudo su but in the home folder of $USER"
#sudo su <<DONE_AS_SUPER_SU

#  cd /home/$USER

#  apt-get install -y lib32z1  openjdk-7-jdk

#DONE_AS_SUPER_SU


#export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64
#export PATH=$PATH:$JAVA_HOME/bin

#printf "\n\nexport JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64\nexport PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc 


#java -version

#echo "Note java 7 paths not entered into .bashrc so that java 8 can be installed"



#echo "Make the tensorflow virtual environment"


#virtualenv --system-site-packages /home/$USER/virtual-tf

echo "--------------------------------------------------------------"
echo ". "



echo "Utilities installed"


cd /home/$USER

