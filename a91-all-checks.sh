#!bin/bash




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



echo "Now checking where pip is installed"
readlink -f $(which pip)
echo ""
echo "--------------------------------------------------------------"
echo ". "




echo "Now checking if java is installed"
java -version
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


echo "Now checking if cordova is installed"

cordova -v
echo ""
echo "echo "Now checking where cordova is installed"
readlink -f $(which cordova)
echo "--------------------------------------------------------------"
echo ". "


echo "Now checking if ant is installed note capital V"

ant -V
echo ""
echo "echo "Now checking where ant is installed"
readlink -f $(which ant)
echo "--------------------------------------------------------------"
echo ". "







echo "echo "Now checking where gcc is installed"
readlink -f $(which gcc)
echo ""

echo "--------------------------------------------------------------"
echo ". "



echo "next list this directory"
pwd
echo ""
ls -la  



echo " To check paths for new terminals, I suggested to run:"
echo "nano ~/.bashrc"

echo "."

echo "to check the root bashrc (BE very careful screw up here and need to reformat ubuntu)
echo "sudo nano /root/.bashrc"


echo "How to check if tensorflow or magenta is installed??"
