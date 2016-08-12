#!bin/bash

#NOTES: 
# SOMETIMES SUDU COMMAND WORKS BEST, SOMETIMES MY SUDU SU TRICK WORKS BEST.
#PRESENTLY AN EARLY PART OF THE CODE IS KILLING PART OF THE INTSTALL AND A FEW THINGS ARE NOT INSTALLING 
#THAT WERE INSTALLING BEFORE, VERY FRUSTRATING

# This larger file gets rid of the multiple times it asks for a password





#for errors to output file and terminal and rewrite old file
#bash a91-all-checks.sh 2>&1 | tee log.txt

#if you have errors then write 
#bash a91-all-checks.sh 2>log5.txt


#To view    search (/ text to search Enter) in the file; press q to exit.
#less log5.txt







#bash a01-generic-installs.sh

#!/bin/bash

sudo su <<RUNNING_AS_SUPER_SU
cd /home/$USER

echo "apt-get update"


apt-get install -y update

#lots of basic developer packages. Not a big deal if we try to install them again.

echo "Installing generic helpers"


apt-get install -y git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386  lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip lib32z1 git pkg-config   g++ python-pip python-dev python-virtualenv  libblas-dev liblapack-dev libatlas-base-dev gfortran openjdk-7-jdk



#leaving super user  
RUNNING_AS_SUPER_SU 




cd /home/$USER


echo "Make the tensorflow virtual environment"


virtualenv --system-site-packages /home/$USER/virtual-tf

echo "-------------Virtual environment made not yet activated-------------------------------------------------"
echo ". "




cd /home/$USER

#sudo  apt-get install -y openjdk-7-jdk




export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin

#printf "\n\nexport JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64\nexport PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc 


java -version

echo "Note java 7 paths not entered into .bashrc so that java 8 can be installed"



echo "Make the tensorflow virtual environment"


virtualenv --system-site-packages /home/$USER/virtual-tf

echo "--------------------------------------------------------------"
echo ". "



echo "Utilities installed"


cd /home/$USER



























# not really the java I want but it seems to work. Oracles is giving me problems
#bash a02v2-java8.sh

#!/bin/bash

#note most important line to run manually
#sudo update-alternatives --config java
#then choose the number of the java you want


mkdir /home/$USER/jdk
cd /home/$USER/jdk
wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u5-b13/jdk-8u5-linux-x64.tar.gz


sudo su <<RUNNING_AS_SUPER_SU
cd /home/$USER/jdk

tar -zxf jdk-8u5-linux-x64.tar.gz -C /home/$USER/jdk


RUNNING_AS_SUPER_SU




#cd /home/$USER/jdk/jdk1.8.0_05

#ls

echo "Jave 8 installed. Now setting paths for this bash session and others to follow."

#exports so that this bash instance runs well
export JAVA_HOME=/home/$USER/jdk/jdk1.8.0_05
export PATH=$PATH:$JAVA_HOME/bin

#printf so that a new instance (window) using bash will still run.
printf "\n\nexport JAVA_HOME=/home/$USER/jdk/jdk1.8.0_05\nexport PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc 





#The last number 1100 is the priority mine had java 7 at 1097 online help site had these were set at 100

sudo update-alternatives --install /usr/bin/java java /home/$USER/jdk/jdk1.8.0_05/bin/java 1100

sudo update-alternatives --install /usr/bin/javac javac /home/$USER/jdk/jdk1.8.0_05/bin/javac 1100

sudo update-alternatives --display java

sudo update-alternatives --display javac

java -version



echo "To switch java versions use the following and choose the priority number"
echo "sudo update-alternatives --config java"


cd /home/$USER































#bash a06v2-node-ant-cordova.sh

#!/bin/bash


#apt-get update

echo "installing node"
# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<UNTIL_STOP_AS_SUPER_SU
  cd /home/$USER
  sudo apt-get -y install node 
  

  #since strangely called nodejs need a link for just node
  ln -s `which nodejs` /usr/bin/node  
  
UNTIL_STOP_AS_SUPER_SU



# link so node is same as nodejs






echo "installing npm"
# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<UNTIL_STOP_AS_SUPER_SU
  cd /home/$USER
  sudo apt-get -y install npm
UNTIL_STOP_AS_SUPER_SU




echo "installing ant"
# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<UNTIL_STOP_AS_SUPER_SU
  cd /home/$USER
  sudo apt-get -y install ant
UNTIL_STOP_AS_SUPER_SU



echo "installing Cordova"
cd /home/$USER
mkdir /home/$USER/cordova
cd /home/$USER.cordova


sudo npm install -g cordova 





echo "A link is needed for cordova to work"

mkdir /home/$USER/cordova

cd /home/$USER/cordova


echo "Check versions needed for phonegap cordova"

cordova -v
node -v
npm -v
ant -v
gradle -v




echo "Now lets test phonegap cordova"




cd /home/$USER/cordova

#note: phonegap and cordova are kind of the same thing. cordova is opensource, phonegap is Adobes
#phonegap create myapp --id "com.myapp.sample" --name "myapp"
cordova create myapp --id "com.myapp.sample" --name "myapp"



echo "Did it all work?"

cd /home/$USER






































#bash a11v3-gradle.sh
#!bin/bash


echo "installing gradle"
# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<UNTIL_STOP_RUNNING_AS_SUDO_SU

  cd /home/$USER

  sudo apt-get install -y gradle

UNTIL_STOP_RUNNING_AS_SUDO_SU


echo "Now checking if Gradle is installed"
gradle -v
echo ""
echo "echo "Now checking where gradle is installed"
readlink -f $(which gradle)
echo "--------------------------------------------------------------"
echo ". "


cd /home/$USER




























#open a new terminal and try the checks again to see if the paths have been set coorectly 
# in the ~/.bashrc file




#running in virtual

#bash a04a-tensorflow.sh

#!/bin/bash


#Following already done in the generic install

#sudo apt-get -y install python-pip python-dev python-virtualenv libblas-dev liblapack-dev libatlas-base-dev gfortran



echo "Make the tensorflow virtual environment"


#virtualenv --system-site-packages /home/$USER/virtual-tf

echo "--------------------------------------------------------------"
echo ". "


echo "Activate the environment use deactivate to get your cursor back "
echo "Note no paths were needed"
echo "The following must be used to re-activate virtual environment for tensorflow"
echo "source ~/virtual-tf/bin/activate"
source /home/$USER/virtual-tf/bin/activate 

#printf "\n\nsource /home/\$USER/virtual-tf/bin/activate "  >> ~/.bashrc
#printf "\necho 'enter   deactivate    to get out of the virtual enviroment'"  >> ~/.bashrc




echo "--------------------------------------------------------------"
echo ". "

echo "Now intall tensorFlow into the enviroment"

#version 0.5
#pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.5.0-cp27-none-linux_x86_64.whl

# 2016 version 0.7 Tensorflow
#sudo pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.7.1-cp27-none-linux_x86_64.whl

# Aug, 2016 Version 10 tensorflow
pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0rc0-cp27-none-linux_x86_64.whl




echo "--------------------------------------------------------------"
echo ". "

echo "Unfortunately on cloud 9 Pip hides the TensorFlow folder so lets clone it for our use"
echo "Kind of wasteful but it isn't on our computer anyway"

mkdir /home/$USER/tensorflow-from-repo
cd /home/$USER/tensorflow-from-repo

git clone --recurse-submodules https://github.com/tensorflow/tensorflow

ln -s /home/$USER/tensorflow-from-repo/tensorflow/tensorflow/examples /home/$USER/link01-link-to-tf-examples


echo "Try making a link to the installed tensorflow not just the repo cloned but we need to find it"
echo "bash-on-windows may have trouble with double quotes inside symlinks"


ln -s /home/$USER/virtual-tf/lib/python2.7/site-packages/tensorflow /home/$USER/link02-pip-tensorflow-link

#whereis tensorflow
#which tensorflow


echo "------------------------Tensorflow installed--------------------------------------"
echo "--------------------------------------------------------------"
echo "--------------------------------------------------------------"


deactivate
cd /home/$USER


























#bash a04d-skflow.sh

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


deactivate
cd /home/$USER


















#bash a05a-jupyter-ipython-notebook.sh

#!/bin/bash

echo "The following must be used to re-activate virtual environment for tensorflow"
echo "source ~/virtual-tf/bin/activate"
source /home/$USER/virtual-tf/bin/activate 


echo "---------------------Try jupiter ipython notebook-----------------------------------------"
echo ". "
cd /home/$USER

pip install --upgrade ipython
pip install --upgrade jupyter


echo "This just installs jupyter. You must run it"

deactivate
cd /home/$USER






























#bash a07-magenta.sh
#!/bin/bash  

#  only need to run this script with the command (do not type the #)
# sudo chmod +x  setup.sh
# ./setup.sh


#echo "checking if in virtual environment. Can run this multiple times"
source /home/$USER/virtual-tf/bin/activate


#commented out batch files are from another github site at https://github.com/hpssjellis/TensorFlow-Android-Camera-Demo-on-Cloud9
# or also at https://github.com/hpssjellis/my-google-magenta-installation
echo "Installs Magenta to a folder in your home directory called mymagenta"




mkdir /home/$USER/mymagenta

cd /home/$USER/mymagenta




echo "Bazel should already be installed!"

#bazel -h

echo "Press enter, if issues press ctrl-C and find out the mistake, probably the path in ~/.bashrc"




cd /home/$USER/mymagenta


echo "Should already be in the virtual environment"





echo "Should have already goten Tensorflow"


#sudo pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.9.0rc0-cp27-none-linux_x86_64.whl






cd /home/$USER/mymagenta

#-----------------------------------------------------------------------------------------

echo "Now install Google Magenta"

git clone https://github.com/tensorflow/magenta.git


# using Dan's github branch. Strangley does not work in the bash file need to do it seperately!
#git clone https://github.com/danabo/magenta.git --branch basic_rnn_checkpoint_fix
#git clone https://github.com/danabo/magenta.git --branch random_primer

#or using my github megenta test site
#git clone https://github.com/hpssjellis/magenta.git

#-----------------------------------------------------------------------------------------------------



echo "Grab my github site to load a few bash files"
cd /home/$USER/mymagenta

git clone https://github.com/hpssjellis/google-magenta-midi-music-on-linux-hello-world.git


echo "copy the bash file a01-helloworld.sh to the magenta workspace folder"


#cd ~/mymagenta/google-magenta-midi-music-on-linux-hello-world

#cp a* ~/mymagenta/magenta

cp /home/$USER/mymagenta/google-magenta-midi-music-on-linux-hello-world/a01-rnn_basic.sh /home/$USER/mymagenta/magenta/a01-rnn_basic.sh
cp/home/$USER/mymagenta/google-magenta-midi-music-on-linux-hello-world/a02-rnn_basic_retrain.sh  /home/$USER/mymagenta/magenta/a02-rnn_basic_retrain.sh
cp /home/$USER/mymagenta/google-magenta-midi-music-on-linux-hello-world/a03-extra-installs.sh /home/$USER/mymagenta/magenta/a03-extra-installs.sh

cp /home/$USER/mymagenta/google-magenta-midi-music-on-linux-hello-world/a04-midi-to-mp3.sh /home/$USER/mymagenta/magenta/a04-midi-to-mp3.sh
cp /home/$USER/mymagenta/google-magenta-midi-music-on-linux-hello-world/a05-lookback.sh /home/$USER/mymagenta/magenta/a05-lookback.sh
cp /home/$USER/mymagenta/google-magenta-midi-music-on-linux-hello-world/a06-attention.sh /home/$USER/mymagenta/magenta/a06-attention.sh

cp /home/$USER/mymagenta/google-magenta-midi-music-on-linux-hello-world/a08-just-output.sh /home/$USER/mymagenta/magenta/a08-just-output.sh








echo "Now test if bazel is working and build ~1.5 Gb of files"

cd /home/$USER/mymagenta


# as of july 15, 2016 not sure if this still works
#bazel test //magenta:all


echo "If it all worked try these scripts"

#echo "build //magenta:midi_io_test"
#echo "bazel build //magenta:midi_io"
#echo "bazel build //magenta:note_sequence_io"

# build your script (lots of midi files in a folder)
#echo "bazel build //magenta:convert_midi_dir_to_note_sequences"






# some forum stuff at
#https://groups.google.com/a/tensorflow.org/forum/#!searchin/magenta-discuss/magenta/magenta-discuss/R0YiSbM3v5c/dW2qtKM3BQAJ
#https://groups.google.com/a/tensorflow.org/forum/#!searchin/magenta-discuss/magenta/magenta-discuss/HC_squh5TbA/Gx7MCp4cBAAJ
#https://groups.google.com/a/tensorflow.org/forum/#!searchin/magenta-discuss/magenta/magenta-discuss/dtQUq6IVaXk/7Cg32SdPBAAJ





cd /home/$USER/mymagenta



echo "Might as well build the training file structure here"
#bazel build //magenta/models:basic_rnn_train

#changed jul15, 2016 The three types of rnn 
#bazel build //magenta/models/basic_rnn:basic_rnn_train
#bazel build //magenta/models/lookback_rnn:lookback_rnn_train
#bazel build //magenta/models/attention_rnn:attention_rnn_train

echo "and setup a spot for temporary files"
echo "not sure if magenta can make the folders for you????"


mkdir /tmp/basic_rnn_generated
mkdir /tmp/lookback_rnn
mkdir /tmp/attention_rnn
mkdir /tmp/lookback_rnn/generated
mkdir /tmp/attention_rnn/generated








cd /home/$USER/mymagenta



echo "Add a few symlinks to make life easier"

#ln -s /tmp/basic_rnn_generated a-link-to-generated-midi
ln -s /home/$USER/mymagenta/magenta/magenta/testdata aa01-link-to-your-midi
ln -s /home/$USER/mymagenta/magenta/models/shared aa02-link-to-primer-midi

ln -s /tmp aa03-link-to-tmp-all-runs
ln -s /tmp/basic_rnn_generated aa04-link-to-basic_rnn-generated
ln -s /tmp/lookback_rnn/generated aa05-link-to-lookback-generated
ln -s /tmp/attention_rnn/generated aa06-link-to-attention-generated










#echo "Open another terminal to try the other bash files"
#tensorboard --logdir=/tmp/basic_rnn

#tensorboard --logdir=basic_rnn:/tmp/basic_rnn,loopback:/tmp/lookback_rnn,attention:/tmp/attention_rnn

deactivate

cd /home/$USER









































#bash a10v2-android.sh

#!/bin/bash


#apt-get update
mkdir /home/$USER/android

echo "installing android"
# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<DONE_AS_SUPER_SU

  cd /home/$USER/android
  
  wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz -O /home/$USER/android/android-sdk_r24.4.1-linux.tgz

  tar -xvzf /home/$USER/android/android-sdk_r24.4.1-linux.tgz -C /home/$USER/android

DONE_AS_SUPER_SU

sudo chown -R $USER:$USER /home/$USER/android/android-sdk-linux

echo "export paths to the .profile file so other terminals can use android sdk"

printf "\n\nexport ANDROID_SDK_HOME=/home/$USER/android/android-sdk-linux\nexport PATH=\$PATH:\$ANDROID_SDK_HOME/tools\nexport PATH=\$PATH:\$ANDROID_SDK_HOME/platform-tools"  >> ~/.bashrc

echo "export paths here so this bash file can use android sdk"
export ANDROID_SDK_HOME=/home/$USER/android/android-sdk-linux
export PATH=$PATH:$ANDROID_SDK_HOME/tools
export PATH=$PATH:$ANDROID_SDK_HOME/platform-tools




echo "Android sdk installed now you have more to do."
echo "This works best using bash from the power shell"
echo "Each line needs a fresh power shell"
echo "probably best not to do the echo y |"



#echo "y" | android update sdk --filter "platform-tools,tools,extra,build-tools-23.0.2,android-20,android-22,android-23" --no-ui --force 


echo "installing android sdk update"
# has a 5 minute constrain as sudo su but with your home directory
echo "Running as sudo su but in the home folder of $USER"
sudo su <<DONE_AS_SUPER_SU


android update sdk --filter platform-tools --no-ui --force 
android update sdk --filter tools --no-ui --force
android update sdk --filter extra --no-ui --force

android update sdk --filter extra --no-ui --force
android update sdk --all --filter build-tools-23.0.2 --no-ui --force
android update sdk --filter android-20 --no-ui --force   #Android 4.4W.2 KitKat

#android update sdk --filter android-22 --no-ui --force   #Android 5.1.1  Lollipop
#android update sdk --filter android-23 --no-ui --force   #Android 6.0    Marshmallow


DONE_AS_SUPER_SU


android list sdk

echo "Did android sdk install?"

cd /home/$USER































#bash a03v2-bazel0.3.1.sh

#!/bin/bash


#needs android version 8

mkdir /home/$USER/bazel
cd /home/$USER/bazel


echo "Installing bazel"


wget https://github.com/bazelbuild/bazel/releases/download/0.3.1/bazel-0.3.1-installer-linux-x86_64.sh -O /home/$USER/bazel/bazel-0.3.1-installer-linux-x86_64.sh
#wget https://github.com/bazelbuild/bazel/releases/download/0.3.1/bazel-0.3.1-installer-linux-x86_64.sh

# has a 5 minute constrain as sudo su
sudo su <<RUNNING_AS_SUPER_SU
echo "as me $USER and $MY_USER but running as sudo su"

cd /home/$USER/bazel


chmod +x bazel-0.3.1-installer-linux-x86_64.sh

echo "Presently these next two commands not working well. May have to do from the command line"

./bazel-0.3.1-installer-linux-x86_64.sh --prefix=/home/$USER/bazel


# done running as supper user

RUNNING_AS_SUPER_SU







#bash bazel-0.2.3-installer-linux-x86_64.sh --user --bin=${IDEDIR}/bin

#export PATH=$PATH:~/bin
export BAZEL_HOME=/home/$USER/bazel
export PATH=$PATH:$BAZEL_HOME/bin


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


















#run the checks twice so that errors can be trapped in its own fle
bash a91-all-checks.sh 2>&1 | tee a091-all-output.txt

bash a91-all-checks.sh 2> a091-errors-only.txt


