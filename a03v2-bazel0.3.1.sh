#!/bin/bash

#assumes both these commands have been done
#sudo su
#apt-get update
#Note to reset ubuntu, without destroying the home folder
#lxrun /uninstall 


# Lets install items into the home folder


sudo mkdir /home/bazel
cd /home/bazel

sudo wget https://github.com/bazelbuild/bazel/releases/download/0.3.1/bazel-0.3.1-installer-linux-x86_64.sh

sudo chmod +x bazel-0.3.1-installer-linux-x86_64.sh

sudo ./bazel-0.3.1-installer-linux-x86_64.sh --user
#bash bazel-0.2.3-installer-linux-x86_64.sh --user --bin=${IDEDIR}/bin

#export PATH=$PATH:~/bin
export BAZEL_HOME=/home/bazel
export PATH="$PATH:$BAZEL_HOME/bin"

#sudo rm bazel-0.3.1-installer-linux-x86_64.sh
printf "\n\nexport BAZEL_HOME=/home/bazel\nexport PATH=\$PATH:\$BAZEL_HOME/bin" >> ~/.bashrc 
#printf "\n\nsource ./bin/bazel-complete.bash"  >> ~/.bashrc


echo "Just test if bazel is working"

bazel

bazel -h

echo "Might be needed if you open a new terminal to reset the path to bazel"

echo ""
echo "Did bazel install? Should see the bazel help info"


