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


Note: will ask for passwords. Running the first three commands may reduce the amount of questions
```



sudo apt-get install -y git

cd ~/

git clone https://github.com/hpssjellis/my-installs-for-bash-on-windows.git --branch testing-branch

cd ~/my-installs-for-bash-on-windows

bash setup-headless.sh 2>&1 | tee z-logs.txt
```

Open another terminal (shift click the bash on windows icon) to see how the installation is going and repeatedly enter the following command. (up arrow, enter).  Also `/ keyword` highlights search word

The use capital G to get to the bottom of the file `G` and `q` to quit

```
cd ~/my-installs-for-bash-on-windows

'less z-logs.txt'

```






## a few very useful commands
1. `source /home/$USER/virtual-tf/bin/activate` is used for tensorflow, skfow, magenta etc for a virtual environment
2. `deactivate` to get out of the virtual environment
3. `sudo update-alternatives --config java` then choose the left hand side number of the java you want. no number to keep.


## Bash On Windows Tips

1. Search for "Bash On Windows", then right-click it and pin it to the task bar
2. Shift-click the task bar icon for bash to load multiple bash terminals. So you can check if things are installing properly
3. `cd ~/` gets to your home directory.
4. `pwd` shows your full file path. Very usefull~
4. `cd foldername` goes into that folder
4. `cd ..` goes up a directory. note the space before the dots
5. tab auto fills the name and pings if the name is not complete
6. `ls` condensed lists of everything in your directory directory
7. `ls -la` long list with permissions and hidden files, the ones with  dot in front of them
8. `chmod +x filename.sh` allows a bash file to be ran
9. `./filename.sh` runs the bash file
10. `bash filename.sh` can also run a bash file without the above double step.
11. right-click to paste into the bash terminal. Useful to copy from windows and paste into linux
12. If something is selected then right-click to copy
13. Quick file view `less filename.txt`    `q` to quit     `/ search-word` to search
14. Edit with `nano filename.txt'    `ctrl-x` to quit/save `y` then check filename 
15. When things don't work `ctrl-c` gets you out of some trouble
16. `ctrl-z` gets you out of big trouble
17. Dangerous `rm -rv foldername` when in the correct main folder can use a path as well.
18. Really Dangerous, to totally delete the entire BashOnWindows. From windows `cmd` or `powershell` run `lxrun /uninstall /full`

 
#Weird Terminal text colors

1. symlinks are cyan
2. folders without write acces are dark blue
3. folders with write acces have a background that is green and blue letters
4. text files have white letters
5. runnable files have lime green letters
6. what is red?




#Java issues

1. `java -version` tells you which is the default java ofor that terminal
2. need to use `sudo update-alternatives --config java` then choose the priority number of the version of java you wish to run in that terminal
3. 
