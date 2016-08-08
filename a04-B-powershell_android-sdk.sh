#!/bin/bash

#assumes both these commands have been done
#sudo su
#apt-get update

#strangely needs to be a fresh power shell or it hangs 
#open powershell then type bash then enter the following




echo "y" | android update sdk --filter platform-tools --no-ui --force 
echo "y" | android update sdk --filter tools --no-ui --force

echo "y" | android update sdk --filter extra --no-ui --force

echo "y" | android update sdk --filter extra --no-ui --force
echo "y" | android update sdk --all --filter build-tools-23.0.2 --no-ui --force
echo "y" | android update sdk --filter android-20 --no-ui --force   #Android 4.4W.2 KitKat
#echo "y" | android update sdk --filter android-22 --no-ui --force   #Android 5.1.1  Lollipop
#echo "y" | android update sdk --filter android-23 --no-ui --force   #Android 6.0    Marshmallow
