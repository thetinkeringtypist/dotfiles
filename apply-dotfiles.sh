#!/bin/bash

DOTFILE_ROOT=$(pwd)
PROGNAME="apply-dotfiles.sh"
DOCNAME="README.md"

function linkfile() {
   fname=$(realpath --relative-to="$DOTFILE_ROOT" "$1")
   target="$HOME/$fname"

   if [ -h "$target" ]; then
      echo "Skip  : $target is a symlink"
      return
   fi

   if [ -e "$target" ]; then
      echo "Backup:  $target"
      mv "$target" "$target.bak"
   fi
   
   echo "Link  :  $target"
   ln -s "$1" "$target"
}

function changedir() {
   if [ -f "$HOME/$1" ]; then
      echo "Skip :  $HOME/$1 is not a dir"
      return
   fi

   if [ $(basename "$1") == ".git" ] && [ -d "$1" ]; then
      echo "Skip  :  $1 is not a dotfile dir"
      return
   fi

   mkdir -p "$HOME/$1"

   cd "$1"

   files=$(/bin/ls -A)
   for f in $files; do
      if [ -d "$f" ]; then
         changedir "$f"
      elif [ $(basename "$f") == "$PROGNAME" ]; then
         echo "Skip  :  $f is not a dotfile"
      elif [ $(basename "$f") == "$DOCNAME" ]; then
	 echo "Skip  :  $f is not a dotfile"
      else
	 linkfile "$f"
      fi
   done
   
   cd ..
}

function main {
   changedir "."
}


main
