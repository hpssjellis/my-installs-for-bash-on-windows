#!/bin/bash

#assumes both these commands have been done
#sudo su
#apt-get update




apt-get -y install r-base r-base-core r-base-html 
apt-get -y install libmagickwand-dev


# for skflow
apt-get install libblas-dev liblapack-dev


pip install dask[dataframe]


pip install Wand

#pip install numpy

pip install scipy

pip install matplotlib

pip install pymatbridge

pip install scikit-learn


echo "skflow pip stuff installed"

echo "now grab the github site of examples"


cd /home

git clone https://github.com/hpssjellis/forth-tensorflow.git

echo "browse the folder"

cd forth-tensorflow
ls -l

echo "all done"


