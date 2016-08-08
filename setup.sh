#!/bin/bash

echo "Installing all working bash scripts"
echo "These scripts have probably already been done, you can comment them out if you want with the hashtag #"
#sudo su
#apt-get update


#I prefer to use bash then-a-script.sh but most people make the script runnable with chmod
chmod +x a01-generic-installs.sh
chmod +x a02v2-java8.sh
chmod +x a03-bazel0.3.1.sh
#chmod +x a0.sh
#chmod +x a0.sh
#chmod +x a0.sh
#chmod +x a0.sh
#chmod +x a0.sh



#now lets run the scripts

#install basic developer utilities
./a01-generic-installs.sh

#Now install Java8 into our /home/jdk directory
./a02v2-java8.sh

#Now install Bazel, /home directory install not yet working
./a03-bazel0.3.1.sh




#install java 8
#./a02-java8.sh




echo "Only the proven working scripts are in this script"
echo "You can load the other scripts to see if you can get them working"
echo "Remember to either use chmod +x and ./filename or just bash then the file name"
echo "Done installing all scripts"
