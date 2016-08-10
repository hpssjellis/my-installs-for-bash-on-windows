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

sudo git clone https://github.com/hpssjellis/google-magenta-midi-music-on-linux-hello-world.git


echo "copy the bash file a01-helloworld.sh to the magenta workspace folder"


#cd ~/mymagenta/google-magenta-midi-music-on-linux-hello-world

#cp a* ~/mymagenta/magenta

sudo cp /home/$USER/mymagenta/google-magenta-midi-music-on-linux-hello-world/a01-rnn_basic.sh /home/$USER/mymagenta/magenta/a01-rnn_basic.sh
sudo cp/home/$USER/mymagenta/google-magenta-midi-music-on-linux-hello-world/a02-rnn_basic_retrain.sh  /home/$USER/mymagenta/magenta/a02-rnn_basic_retrain.sh
sudo cp /home/$USER/mymagenta/google-magenta-midi-music-on-linux-hello-world/a03-extra-installs.sh /home/$USER/mymagenta/magenta/a03-extra-installs.sh

sudo cp /home/$USER/mymagenta/google-magenta-midi-music-on-linux-hello-world/a04-midi-to-mp3.sh /home/$USER/mymagenta/magenta/a04-midi-to-mp3.sh
sudo cp /home/$USER/mymagenta/google-magenta-midi-music-on-linux-hello-world/a05-lookback.sh /home/$USER/mymagenta/magenta/a05-lookback.sh
sudo cp /home/$USER/mymagenta/google-magenta-midi-music-on-linux-hello-world/a06-attention.sh /home/$USER/mymagenta/magenta/a06-attention.sh

sudo cp /home/$USER/mymagenta/google-magenta-midi-music-on-linux-hello-world/a08-just-output.sh /home/$USER/mymagenta/magenta/a08-just-output.sh








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


sudo mkdir /tmp/basic_rnn_generated
sudo mkdir /tmp/lookback_rnn
sudo mkdir /tmp/attention_rnn
sudo mkdir /tmp/lookback_rnn/generated
sudo mkdir /tmp/attention_rnn/generated








cd /home/$USER/mymagenta



echo "Add a few symlinks to make life easier"

#ln -s /tmp/basic_rnn_generated a-link-to-generated-midi
sudo ln -s /home/$USER/mymagenta/magenta/magenta/testdata aa01-link-to-your-midi
sudo ln -s /home/$USER/mymagenta/magenta/models/shared aa02-link-to-primer-midi

sudo ln -s /tmp aa03-link-to-tmp-all-runs
sudo ln -s /tmp/basic_rnn_generated aa04-link-to-basic_rnn-generated
sudo ln -s /tmp/lookback_rnn/generated aa05-link-to-lookback-generated
sudo ln -s /tmp/attention_rnn/generated aa06-link-to-attention-generated

















echo "Not sure if all these checks are really needed, but they can't hurt"
echo "First checking the Python version"
python --version

echo "--------------------------------------------------------------"
echo ". "


echo "Now checking where python is installed"
readlink -f $(which python)
echo ""
echo "--------------------------------------------------------------"


echo "Now checking if pip is installed"

pip list

echo "--------------------------------------------------------------"
echo ". "



echo "echo "Now checking where pip is installed"
readlink -f $(which pip)
echo ""
echo "--------------------------------------------------------------"
echo ". "
echo "Now checking if java is installed"
java -h
echo ""
javac
echo "--------------------------------------------------------------"
echo ". "
echo "Now checking where the jdk is installed"
readlink -f $(which java)
echo ""
readlink -f $(which javac)
echo "--------------------------------------------------------------"
echo ". "
echo ". "
echo "Now checking if Bazel is installed"
bazel -h
echo ""
echo "--------------------------------------------------------------"
echo ". "
echo "echo "Now checking where bazel is installed"
readlink -f $(which bazel)
echo ""
echo "--------------------------------------------------------------"
echo ". "


echo ""
echo "Now checking where gcc is installed"
readlink -f $(which gcc)
echo ""

echo "--------------------------------------------------------------"
echo ". "

cd /home/$USER/mymagenta

echo "next list this directory"
pwd
echo ""
ls -lah  

echo "--------------------------------------------------------------"
echo "Some other useful commands are cd     cd ..      dir    ls     pwd     "
echo "."

echo " To check paths for new terminals, I suggested to run:"
echo "nano ~/.bashrc"


echo "Next try the hello-world.sh bash files, might be able to run them from the GUI"
echo "If not just open a new folder and type bash <name of hello-world.sh program>"




cd /home/$USER/mymagenta/magenta

echo "Lest be brave and try to run the hello music AI world bash file"
echo "a01-helloworld.sh should have been copied into the magenta workspace"
#chmod +x a01-rnn_basic.sh
#./a01-rnn_basic.sh

echo "Import your midi files from /tmp/basic_rnn_generated to https://onlinesequencer.net/"
echo""

echo "running tensorboard, open a new terminal to run the other programs"
echo "open your browser to http://0.0.0.0:6006 to run"
echo "If port already in use to open the port then run"
echo "fuser 6006/tcp -k"
echo ""
echo "tensorboard command is"
echo "tensorboard --logdir=/tmp/basic_rnn"
echo "If things don't seem correct ctrl-C to quit tensorboard, Note: this must be the last command in this batch file"

#echo "Open another terminal to try the other bash files"
#tensorboard --logdir=/tmp/basic_rnn

#tensorboard --logdir=basic_rnn:/tmp/basic_rnn,loopback:/tmp/lookback_rnn,attention:/tmp/attention_rnn









