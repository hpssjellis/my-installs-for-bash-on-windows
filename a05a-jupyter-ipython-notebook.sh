#!/bin/bash

echo "The following must be used to re-activate virtual environment for tensorflow"
echo "source ~/virtual-tf/bin/activate"
source /home/$USER/virtual-tf/bin/activate 


echo "---------------------Try jupiter ipython notebook-----------------------------------------"
echo ". "


pip install --upgrade ipython
pip install --upgrade jupyter


echo "This just installs jupyter. You must run it"


cd /home/$USER
