#!/bin/bash

#assumes both these commands have been done
#sudo su
#apt-get update


echo "---------------------Try jupiter ipython notebook-----------------------------------------"
echo ". "


pip install --upgrade ipython
pip install --upgrade jupyter


#Do all your other commands above this line
echo "On windows onpe a web browser to http://localhost:8080"

jupyter notebook --ip=0.0.0.0 --port=8080 --no-browser
#jupyter notebook --ip $IP --port $PORT --no-browser

# bash file stays here so no more commands will work
