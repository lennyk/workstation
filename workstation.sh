#!/usr/bin/env bash -e

brew install git yarn gradle tree

brew install mysql mailhog rabbitmq
brew services start mysql
brew services start mailhog
brew services start rabbitmq

brew cask install 1password flycut google-chrome intellij-idea iterm2 java shiftit syncthing-bar cyberduck tunnelblick visual-studio-code docker

pushd /Applications > /dev/null
open ShiftIt.app/
open Flycut.app/
popd > /dev/null

# iTerm theme
pushd > /dev/null
curl -s -L -J -O "https://rawgit.com/mbadolato/iTerm2-Color-Schemes/master/schemes/SpaceGray Eighties.itermcolors"
open "SpaceGray Eighties.itermcolors"
popd > /dev/null

git config --global push.default simple
git config --global user.name "Leonhardt Koepsell"
git config --global user.email "leonhardt@koepsell.io"

mkdir -p ~/workspace

mkdir -p ~/.ssh
chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 644 ~/.ssh/authorized_keys
