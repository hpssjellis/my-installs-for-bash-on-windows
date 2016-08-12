#!/bin/bash

echo "apt-get update"
sudo apt-get update

#lots of basic developer pakages. Not a big deal if we try to install them again.

echo "Installing generic helpers"


sudo su <<RUNNING_AS_SUPER_SU
cd /home/$USER/jdk
sudo apt-get install -y git-core gnupg flex bison gperf build-essential \
  zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
  lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache \
  libgl1-mesa-dev libxml2-utils xsltproc unzip
  
RUNNING_AS_SUPER_SU 



echo "Another set of generics"
# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<DONE_AS_SUPER_SU
 
  cd /home/$USER
  apt-get -y install git pkg-config g++ zlib1g-dev unzip zip python-pip python-dev python-virtualenv libblas-dev liblapack-dev libatlas-base-dev gfortran


  echo "Make the tensorflow virtual environment"


  virtualenv --system-site-packages /home/$USER/virtual-tf

  echo "--------------------------------------------------------------"
  echo ". "

DONE_AS_SUPER_SU

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



echo "Make the tensorflow virtual environment"


virtualenv --system-site-packages /home/$USER/virtual-tf

echo "--------------------------------------------------------------"
echo ". "



echo "Utilities installed"


cd /home/$USER

