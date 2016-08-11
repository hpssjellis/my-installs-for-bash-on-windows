#!bin/bash


#for errors to output file and terminal and rewrite old file
#bash test-setup.sh 2>> errors-only.txt

#command1 2>&1 | tee log.txt
#command1 > out.txt 2> err.txt



#bash a91-all-checks.sh >> | tee log1.txt 2> | tee log2.txt

#best
#bash a91-all-checks.sh 2>&1 | tee log.txt


bash a01-generic-installs.sh



bash a06v2-node-ant-cordova.sh

bash a11v3-gradle.sh

bash a02v3-java8.sh

bash a03v2-bazel0.3.1.sh


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

bash a10v2-android.sh


bash a91-all-checks.sh


echo "Did not run"
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""

