# my-installs-for-bash-on-windows
Since bash on windows linux subsystem is new it is perfect for a fresh install of lots of developer software



Aug 7, 2016

To install all the working packages you need this repository on your windows computer with the bash command line having access to it.

One way to do this would be with the following commands. You can copy each line from here and right click to paste into the bash area.

```
sudo su

apt-get update

apt-get install -y git

cd /home

git clone https://github.com/hpssjellis/my-installs-for-bash-on-windows.git

cd /home/my-installs-for-bash-on-windows

bash setup.sh



```
