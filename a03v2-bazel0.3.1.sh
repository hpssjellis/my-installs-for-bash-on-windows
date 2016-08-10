#!/bin/bash


mkdir /home/$USER/bazel
cd /home/$USER/bazel



# has a 5 minute constrain as sudo su
sudo su <<RUNNING_AS_SUPER_SU
echo "as me $USER and $MY_USER but running as sudo su"

cd /home/$USER/bazel


wget https://github.com/bazelbuild/bazel/releases/download/0.3.1/bazel-0.3.1-installer-linux-x86_64.sh -O /home/$USER/bazel/bazel-0.3.1-installer-linux-x86_64.sh
#wget https://github.com/bazelbuild/bazel/releases/download/0.3.1/bazel-0.3.1-installer-linux-x86_64.sh

chmod +x bazel-0.3.1-installer-linux-x86_64.sh

echo "Presently these next two commands not working well. May have to do from the command line"

./bazel-0.3.1-installer-linux-x86_64.sh --prefix=/home/$USER/bazel


# done running as supper user

RUNNING_AS_SUPER_SU







#bash bazel-0.2.3-installer-linux-x86_64.sh --user --bin=${IDEDIR}/bin

#export PATH=$PATH:~/bin
export BAZEL_HOME=/home/$USER/bazel
export PATH="$PATH:$BAZEL_HOME/bin"

# change ownership and rights for bazel folder recursively -R
#chown -R $USER:$USER /home/$USER/bazel
#chmod -R 777 /home/$USER/bazel

echo "Just test if bazel is working"
#sudo rm bazel-0.3.1-installer-linux-x86_64.sh
printf "\n\nexport BAZEL_HOME=/home/$USER/bazel\nexport PATH=\$PATH:\$BAZEL_HOME/bin" >> ~/.bashrc 
#printf "\n\nsource ./bin/bazel-complete.bash"  >> ~/.bashrc


# maybe put into the bashrc  source /home/$USER/bazel/lib/bazel/bin/bazel-complete.bash



#might have to try with sudo

bazel

bazel -h

echo "Might be needed if you open a new terminal to reset the path to bazel"

echo ""
echo "Did bazel install? Should see the bazel help info"


cd /home/$USER
