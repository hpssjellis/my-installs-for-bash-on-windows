#!bin/bash



#echo "checking if in virtual environment. Can run this multiple times"
source /home/$USER/virtual-tf/bin/activate


#changed jul15, 2016 The three types of rnn 
bazel build //magenta/models/basic_rnn:basic_rnn_train
bazel build //magenta/models/lookback_rnn:lookback_rnn_train
bazel build //magenta/models/attention_rnn:attention_rnn_train


cd /home/$USER/mymagenta/magenta
echo "Switching to the magenta workspace folder. try running the bash files"


bash a01-rnn_basic.sh
