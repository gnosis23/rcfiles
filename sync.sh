#!/bin/bash
cd "$(dirname "$0")"
PAPAPA="$(pwd)"
git pull
function doIt(){
  rm ~/.vimrc
  ln -s $PAPAPA/.vimrc ~/.vimrc
  rm ~/.bashrc
  ln -s $PAPAPA/.bashrc ~/.bashrc
  rm -r ~/.vim
  cp -r $PAPAPA/.vim ~/

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

