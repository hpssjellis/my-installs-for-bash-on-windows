#!/bin/bash

#assumes both these commands have been done
#sudo su
#apt-get update

#already done in the generic install

#sudo apt-get -y install python-pip python-dev python-virtualenv libblas-dev liblapack-dev libatlas-base-dev gfortran

echo "--------------------------------------------------------------"
echo ". "

echo "Make the tensorflow virtual environment"

virtualenv --system-site-packages ~/virtual-tf

echo "--------------------------------------------------------------"
echo ". "


echo "Activate the environment use deactivate to get your cursor back "
echo "Note no paths were needed"
source ~/virtual-tf/bin/activate 

printf "\n\nsource ~/virtual-tf/bin/activate "  >> ~/.bashrc
printf "\necho 'enter   deactivate    to get out of the virtual enviroment'"  >> ~/.bashrc




echo "--------------------------------------------------------------"
echo ". "

echo "Now intall tensorFlow into the enviroment"

#version 0.5
#pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.5.0-cp27-none-linux_x86_64.whl

# 2016 version 0.7 Tensorflow
#sudo pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.7.1-cp27-none-linux_x86_64.whl

# Aug, 2016 Version 10 tensorflow
#sudo pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0rc0-cp27-none-linux_x86_64.whl




echo "--------------------------------------------------------------"
echo ". "

echo "Unfortunately on cloud 9 Pip hides the TensorFlow folder so lets clone it for our use"
echo "Kind of wasteful but it isn't on our computer anyway"

mkdir /home/tensorflow-from-repo
cd /home/tensorflow-from-repo

git clone --recurse-submodules https://github.com/tensorflow/tensorflow

echo "Try making a link to the installed tensorflow not just the repo cloned but we need to find it"
whereis tensorflow
which tensorflow
#ln -s /home/ubuntu//virtual-tf/lib/python2.7/site-packages/tensorflow /home/ubuntu/workspace/pip-tensorflow-link

echo "------------------------Tensorflow installed--------------------------------------"
echo "--------------------------------------------------------------"
echo "--------------------------------------------------------------"
