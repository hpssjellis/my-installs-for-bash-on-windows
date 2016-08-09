#!/bin/bash



Do all your other commands above this line as the terminal will stay working on the last line
echo "On windows onpe a web browser to http://localhost:8080"
echo "No more commands for this terminal"
echo "ctrl c then quickly y to quit"

#echo "checking if in virtual environment. Can run this multiple times"
source /home/$USER/virtual-tf/bin/activate


cd /home/$USER

#jupyter notebook --ip $IP --port $PORT --no-browser
#jupyter notebook --ip=0.0.0.0 --port=8080 --no-browser
jupyter notebook --ip=localhost --port=8080 --no-browser


