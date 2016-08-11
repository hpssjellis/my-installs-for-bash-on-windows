#!/bin/bash


echo "Installing skflow"
# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<TIL_DONE_AS_SUDO_SU

  cd /home/$USER


apt-get -y install r-base r-base-core r-base-html 
apt-get -y install libmagickwand-dev


# for skflow
apt-get install -y libblas-dev liblapack-dev

TIL_DONE_AS_SUDO_SU

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
