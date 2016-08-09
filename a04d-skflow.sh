#!/bin/bash

sudo apt-get -y install r-base r-base-core r-base-html 
sudo apt-get -y install libmagickwand-dev


# for skflow
sudo apt-get install -y libblas-dev liblapack-dev



# must be in virtual environment
#source /home/$USER/virtual-tf/bin/activate

#echo "checking if in virtual environment. Can run this multiple times"
source /home/$USER/virtual-tf/bin/activate


pip install dask[dataframe]


pip install Wand

#pip install numpy

pip install scipy

pip install matplotlib

pip install pymatbridge

pip install scikit-learn


echo "skflow pip stuff installed"

echo "now grab the github site of examples"


cd /home/$USER

git clone https://github.com/hpssjellis/forth-tensorflow.git

echo "browse the folder"

cd forth-tensorflow
ls -l

echo "all done"

cd /home/$USER
