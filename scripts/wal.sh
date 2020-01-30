#!/bin/bash

# This script is designed to run wal on my mac in order to change my iterm2
# colors as well as my spicetify colors, which doesn't use a css file for color
# definitions.

# Generates wal colorscheme using the provided image
# also uses the -n flag because setting the wallpaper doesn't work properly on
# macos currently

printf "Running wal to generate color sheme\n"
wal -i $1 -n

# sets wallpaper using a package 'wallpaper' from
# https://github.com/sindresorhus/macos-wallpaper
# install using 'brew install wallpaper'

printf "\nSetting wallpaper\n"
if [ -z "$10" ]
  then
    for n in {1..10}
    do
      yabai -m window --space $n
      yabai -m space  --focus $n
      wallpaper set $1
    done
fi

# overwrites spicetify's color.ini file
printf "\nOverwriting spicetify theme\n"
java -jar ~/bin/waltospice.jar $1

# reloads spicetify
printf "\nReloading spicetify\n"
spicetify apply
spicetify update

# copies the css file to my firefox profile to use in my userChrome.css
cp .cache/wal/colors.css Library/Application\ Support/Firefox/Profiles/ugek2qoc.default-release/chrome/

# adds updated css file to github and commits it
cp ~/.cache/wal/colors.css ~/bin/git/startpage/
cd ~/bin/git/startpage/
git add colors.css
git commit -m 'updated colors.css'
git push

cd
