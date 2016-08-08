#!/bin/bash

#assumes both these commands have been done
#sudo su
#apt-get update



#lots of basic developer pakages. Not a big deal if we try to install them again.

sudo apt-get -y install git pkg-config g++ zlib1g-dev unzip zip python-pip python-dev python-virtualenv libblas-dev liblapack-dev libatlas-base-dev gfortran



#install java 1.7 for android sdk 
sudo apt-get install -y lib32z1  openjdk-7-jdk



echo "Utilities installed"
