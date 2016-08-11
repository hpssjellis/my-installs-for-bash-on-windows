

#!/bin/bash

#note most important line to run manually
#sudo update-alternatives --config java
#then choose the number of the java you want


mkdir /home/$USER/jdk


sudo su <<RUNNING_AS_SUPER_SU
cd /home/$USER/jdk

  add-apt-repository ppa:webupd8team/java
  apt-get update
  apt-get install oracle-java8-installer


RUNNING_AS_SUPER_SU




#cd /home/$USER/jdk/jdk1.8.0_05

#ls

#echo "Jave 8 installed. Now setting paths for this bash session and others to follow."

#exports so that this bash instance runs well
#export JAVA_HOME=/home/$USER/jdk/jdk1.8.0_05
#export PATH=$PATH:$JAVA_HOME/bin

#printf so that a new instance (window) using bash will still run.
#printf "\n\nexport JAVA_HOME=/home/$USER/jdk/jdk1.8.0_05\nexport PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc 





#The last number 1100 is the priority mine had java 7 at 1097 online help site had these were set at 100

#sudo update-alternatives --install /usr/bin/java java /home/$USER/jdk/jdk1.8.0_05/bin/java 1100

#sudo update-alternatives --install /usr/bin/javac javac /home/$USER/jdk/jdk1.8.0_05/bin/javac 1100

#sudo update-alternatives --display java

#sudo update-alternatives --display javac

java -version



echo "To switch java versions use the following and choose the priority number"
echo "sudo update-alternatives --config java"


cd /home/$USER




