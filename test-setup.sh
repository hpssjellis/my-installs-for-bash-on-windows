#!bin/bash


bash a01-generic-installs.sh

bash a02v2-java8.sh

bash a03v2-bazel0.3.1.sh


#running in virtual

bash a04a-tensorflow.sh
#bash a04b-run-virtual

bash a04d-skflow.sh
bash a05a-jupyter-ipython-notebook.sh
bash a07-magenta.sh

# out of virtual environment
deactivate

bash a91-switch-to-java-1.7.sh

java -version

bash a06v2-node-ant-cordova.sh

bash a10-android.sh

# do gradle later
#a11v2-gradle3.0rc2.sh
