#!/bin/sh

# This script copies my dotfiles to this directory, adds them to github, commits it, and pushes to master

cp ~/.vimrc ~/.dotfiles/
cp ~/.zshrc ~/.dotfiles/

cp ~/.skhdrc ~/.dotfiles/
cp ~/.yabairc ~/.dotfiles/

cp ~/bin/wal.sh ~/.dotfiles/scripts/
cp ~/bin/waltospice.jar ~/.dotfiles/scripts/

# firefox userChrome.css
cp /Users/cole/Library/Application\ Support/Firefox/Profiles/ugek2qoc.default-release/chrome/userChrome.css ~/.dotfiles/
cp /Users/cole/Library/Application\ Support/Firefox/Profiles/ugek2qoc.default-release/chrome/colors.css ~/.dotfiles/

git add .

timestamp=$(date +"%D %T")
git commit -m "updated dots on $timestamp"

git push
