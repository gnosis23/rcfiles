#!/bin/bash
cd "$(dirname "$0")"
curdir="$(pwd)"
git pull
function doIt(){
  echo "create .vimrc"
  rm ~/.vimrc
  ln -s $curdir/.vimrc ~/.vimrc
  rm ~/.bashrc
  ln -s $curdir/.bashrc ~/.bashrc

  source ~/.bashrc

}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt
else
  read -p "This may overwrite existing files in home direcotry. Are you sure?(y/n) " -n 1
  echo 
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt
  fi
fi
unset doIt

