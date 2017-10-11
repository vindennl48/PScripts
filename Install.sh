#!/bin/sh


run_installer() {

  # create pscripts folder
  if [ ! -d ~/.pscripts ]; then
    mkdir ~/.pscripts
    mkdir ~/.pscripts/repositories
    echo "----> Created Folder '~/.pscripts'"
  else
    echo "##### Already added .pscripts folder"
  fi

  # add to path
  if [ -f ~/.zshrc ]; then
    ADDPATH=$(cat ~/.zshrc | grep '\$HOME\/\.pscripts')
    if [ "$ADDPATH" = "" ]; then
      echo 'export PATH="$HOME/.pscripts:$PATH"' >> ~/.zshrc
      echo "----> Added ~/.pscripts to path"
    else
      echo "##### Already added .pscripts to path"
    fi
  else
    ADDPATH=$(cat ~/.bashrc | grep '\$HOME\/\.pscripts')
    if [ "$ADDPATH" = "" ]; then
      echo 'export PATH="$HOME/.pscripts:$PATH"' >> ~/.bashrc
      echo "----> Added ~/.pscripts to path"
    else
      echo "##### Already added .pscripts to path"
    fi
  fi

  # copy addpscript bash script to .pscripts folder
  if [ ! -f ~/.pscripts/addpscript ]; then
    cp $PWD/addpscript ~/.pscripts/addpscript
    chmod a+x ~/.pscripts/addpscript
    echo "----> Copied addpscript script to .pscripts folder"
  else
    echo "##### Already copied addpscript to .pscripts folder"
  fi

  # copy getpscript bash script to .pscripts folder
  if [ ! -f ~/.pscripts/getpscript ]; then
    cp $PWD/addpscript ~/.pscripts/getpscript
    chmod a+x ~/.pscripts/getpscript
    echo "----> Copied getpscript script to .pscripts folder"
  else
    echo "##### Already copied getpscript to .pscripts folder"
  fi

}


run_installer

