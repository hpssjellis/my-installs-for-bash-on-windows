#!bin/bash



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
