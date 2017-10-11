# PScripts
Application for keeping track of github python modules

<hr>

## What This Is
This application does two things.
 - Keeps track of all of your python modules that you use for multiple projects
 - Provide Sym Links for these modules so that if the module updates, it will update all of your other python projects at the same time, thus eliminating the need to go through all of your python projects and copy and paste the updated version of the module.

## How To Install
First, clone this repo onto your system somewhere.

Next, make sure to allow the install script to be executable and run the install script:
```terminal
chmod a+x Install.sh
./Install.sh
```
The script will add a directory `~/.pscripts` which will keep all of your python modules that you want to use for future projects.  

## How To Use
### Install A Module
When you want to install a module onto your system, simply run the following:
```terminal
addpscript <github username> <github repo name> <python file name to use>
```
For example:
```terminal
addpscript vindennl48 fancyout FancyOut.py
```

## Add Module To Project
When you need a module in a project you are working on, cd into your working directory and run the following:
```terminal
getpscript <python file name to use>
```
For example:
```terminal
getpscript FancyOut.py
```
This will automatically copy the right symlink into your project folder.

## Thats It!!




