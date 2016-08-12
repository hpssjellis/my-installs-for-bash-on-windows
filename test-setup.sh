#!bin/bash


#for errors to output file and terminal and rewrite old file
#bash a91-all-checks.sh 2>&1 | tee log.txt

#if you have errors then write 
#bash a91-all-checks.sh 2>log5.txt


#To view    search (/ text to search Enter) in the file; press q to exit.
#less log5.txt







bash a01-generic-installs.sh



bash a06v2-node-ant-cordova.sh

bash a11v3-gradle.sh




#running in virtual

bash a04a-tensorflow.sh
#bash a04b-run-virtual

bash a04d-skflow.sh
bash a05a-jupyter-ipython-notebook.sh
bash a07-magenta.sh

# out of virtual environment
#deactivate

#bash a91-switch-to-java-1.7.sh

#java -version



#bash a10-android.sh

#issues with input at oracle statement
#bash a02v3-java8.sh 

#bash a02v2-java8.sh





bash a10v2-android.sh


bash a03v2-bazel0.3.1.sh


#run the checks twice so that errors can be trapped in its own fle
bash a91-all-checks.sh 2>&1 | tee a091-all-output.txt

bash a91-all-checks.sh 2> a091-errors-only.txt


