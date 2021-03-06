#!bin/bash






echo "First checking the Git version"
git --version

echo "--------------------------------------------------------------"
echo ". "
echo "Now checking where git is installed"
readlink -f $(which git)
echo ""
echo "--------------------------------------------------------------"


echo "First checking the node version"
nodejs --version

echo "--------------------------------------------------------------"
echo ". "
echo "Now checking where node is installed"
readlink -f $(which nodejs)
echo ""
echo "--------------------------------------------------------------"


echo "First checking the npm version"
npm --version

echo "--------------------------------------------------------------"
echo ". "
echo "Now checking where node is installed"
readlink -f $(which npm)
echo ""
echo "--------------------------------------------------------------"



echo "First checking the cordova version"
cd /home/$USER/cordova

cordova --version

echo "--------------------------------------------------------------"
echo ". "
echo "Now checking where cordova is installed"
readlink -f $(which cordova)
echo ""
echo "--------------------------------------------------------------"



cd /home/$USER

echo "First checking the Python version"


python --version

echo "--------------------------------------------------------------"
echo ". "
echo "Now checking where python is installed"
readlink -f $(which python)
echo ""
echo "--------------------------------------------------------------"


echo "Now checking if pip is installed"
source /home/$USER/virtual-tf/bin/activate 
pip list

echo "--------------------------------------------------------------"
echo ". "



echo "Now checking where pip is installed"
readlink -f $(which pip)
echo ""
echo "--------------------------------------------------------------"
echo ". "

deactivate


echo "Now checking if java is installed"
java -version
echo ""
javac -version
echo "--------------------------------------------------------------"
echo ". "



echo "Now checking where the jdk is installed"
readlink -f $(which java)
echo ""
readlink -f $(which javac)
echo "--------------------------------------------------------------"
echo ". "
echo "checking how many java's and the man page both java and javac"
readlink -f $(whereis java)
readlink -f $(whereis javaC)
echo "--------------------------------------------------------------"
echo ". "


echo "Now checking if Android SDK is installed"
android -h
echo ""
echo "--------------------------------------------------------------"
echo ". "



echo "Now checking where android sdk is installed"
readlink -f $(which android)
echo "--------------------------------------------------------------"
echo ". "


echo "Now checking if Bazel is installed"
bazel -h
echo ""
echo "--------

------------------------------------------------------"
echo ". "
echo "echo "Now checking where bazel is installed"
readlink -f $(which bazel)
echo ""
echo "--------------------------------------------------------------"
echo ". "




echo "Now checking if Gradle is installed"

gradle -v
echo ""
echo "echo "Now checking where gradle is installed"
readlink -f $(which gradle)
echo "--------------------------------------------------------------"
echo ". "




echo "Now checking if ant is installed note capital V"

ant -version
echo ""
echo "echo "Now checking where ant is installed"
readlink -f $(which ant)
echo "--------------------------------------------------------------"
echo ". "





gcc -v

echo "echo "Now checking where gcc is installed"
readlink -f $(which gcc)
echo ""

echo "--------------------------------------------------------------"
echo ". "



echo "next list this directory cd /home/$USER"

cd /home/$USER

pwd
echo ""
ls -la  



echo " To check paths for new terminals, I suggested to run:"
echo "nano ~/.bashrc"

echo "."

echo "to check the root bashrc (BE very careful screw up here and need to reformat ubuntu)"
echo "sudo nano /root/.bashrc"



