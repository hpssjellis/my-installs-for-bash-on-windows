#!bin/bash

# may need a new power shell for each line


# check if android - works
# easiest update is probably
# android update sdk --no-ui
#or
#android update sdk -u --filter platform-tools,tools,android-23,extra-android-support

android update sdk --filter platform-tools --no-ui --force 

android update sdk --filter tools --no-ui --force
android update sdk --filter extra --no-ui --force

android update sdk --filter extra --no-ui --force
android update sdk --all --filter build-tools-23.0.2 --no-ui --force
android update sdk --filter android-20 --no-ui --force   #Android 4.4W.2 KitKat

#android update sdk --filter android-22 --no-ui --force   #Android 5.1.1  Lollipop
#android update sdk --filter android-23 --no-ui --force   #Android 6.0    Marshmallow


android list sdk



#
#
#
#
#

#(while :
#do
#  echo 'y'
#  sleep 2
#done) | android update sdk --no-ui




#echo "y" | android update sdk --no--ui

#--filter platform-tools,tools




#android list sdk --all --extended
