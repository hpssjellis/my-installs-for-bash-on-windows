# my-installs-for-bash-on-windows
Since bash on windows linux subsystem is new it is perfect for a fresh install of lots of developer software



Aug 7, 2016

To install all the working packages you need this repository on your windows computer with the bash command line having access to it.

One way to do this would be with the following commands. You can copy each line from here and right click to paste into the bash area.

Note: will ask for passwords. Running the first three commands may reduce the amount of questions

```

sudo su

exit

sudo apt-get install -y git

cd ~/

git clone https://github.com/hpssjellis/my-installs-for-bash-on-windows.git

cd ~/my-installs-for-bash-on-windows

bash setup.sh

```

The setup.sh bash file calls all the other working bash files. If all goes well this will install several development systems. Bash files not working well will not be called by the main setup.sh. You can look at these individually and see what is going wrong with them.

Note I am presently (Aug 9, 2016 testing at a different branch). The steps are slightly different. Presently it is a three hour installation but it may be faster if you monitor for the sudo password entries.

```

sudo su

exit

sudo apt-get install -y git

cd ~/

git clone https://github.com/hpssjellis/my-installs-for-bash-on-windows.git --branch aug9-2016-no-sudo-su

cd ~/my-installs-for-bash-on-windows

bash test-setup.sh

```




## Bash On Windows Tips

1. Search for Bash On Windows and right click pin it to the task bar
2. Shift click the task bar icon to load multiple windows. So you can check if things are installing properly
3. 'cd ~/' gets to your home directory.
4. 'pwd' shows your full file path. Very usefull~
4. 'cd foldername' goes into that folder
4. 'cd .'. goes up a directory. note the space before the dots
5. tab auto fills the name and pings if the name is not complete
6. 'ls' condensed lists of everything in your directory directory
7. 'ls -la' long list with permissions and hidden files, the ones with  dot in front of them
8. 'chmod +x filename.s'h allows a bash file to be ran
9. './filename.sh' runs the bash file
10. 'bash filename.sh' can also run a bash file without the above double step.
11. right-click to paste into the bash terminal. Useful to copy from windows and paste into linux
12. If something is selected then right-click to copy
 


