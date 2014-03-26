#!/bin/bash

##########

# vars
dotfiles="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
backup_dotfiles=./backup

#########

# Sanity
echo "Changing to $dotfiles..."
cd $dotfiles
echo "...done."

# Do safety copying here

# Make symlinks
for file in $dotfiles/*
do
     if [ "$file" != "$dotfiles/makelinks.sh" ] && [ "$file" != "$dotfiles/.gitignore" ] && [ "$file" != "$dotfiles/backup" ] && [ "$file" != "$dotfiles/README.md" ]; then
          echo "Symlinking $file with $HOME/.${file##*/}"
          ln -sv $file "$HOME/.${file##*/}"
          echo "...done."
     else
          echo "Did not symlink $file."
     fi
done
