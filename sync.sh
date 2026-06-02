#!/usr/bin/env bash

# move into your dotfiles directory
cd ~/.dotfiles

if [ "$1" == "save" ]; then
  echo "uploading your latest configs to github..."
  git add .
  git commit -m "dots backup: $(date '+%Y-%m-%d %H:%M:%S')"
  git push origin main

elif [ "$1" == "load" ]; then
  echo "pulling down the latest updates from github..."
  git pull origin main

else
  echo "usage: ./sync.sh [save|load]"
  echo "  save -> pushes your current configs to github"
  echo "  load -> grabs updates you made on another device"
fi