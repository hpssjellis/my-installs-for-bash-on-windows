# my-installs-for-bash-on-windows
Since bash on windows linux subsystem is new it is perfect for a fresh install of lots of developer software



Aug 7, 2016

To install all the working packages you need this repository on your windows computer with the bash command line having access to it.

One way to do this would be with the following commands. You can copy each line from here and right click to paste into the bash area.

```

sudo apt-get install -y git

cd ~/

git clone https://github.com/hpssjellis/my-installs-for-bash-on-windows.git

cd ~/my-installs-for-bash-on-windows

bash setup.sh

```

The setup.sh bash file calls all the other working bash files. If all goes well this will install several development systems. Bash files not working well will not be called by the main setup.sh. You can look at these individually and see what is going wrong with them.



## Bash On Windows Tips

1. Search for Bash On Windows and right click pin it to the task bar
2. Shift click the task bar icon to load multiple windows. So you can check if things are installing properly
3. cd ~/ gets to your home directory.
4. cd foldername goes into that folder
4. cd .. goes up a directory
5. tab auto fills the name and pings if the name is not complete
6. ls condensed lists your directory
7. ls -l long list with permissions
8. chmod +x filename.sh allows a bash file to be ran
9. ./filename.sh runs the bash file
10. bash filename.sh can also run a bash file without the above double step.
11. 


