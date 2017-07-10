#!/usr/bin/env bash -e

brew install git yarn gradle tree

brew install mysql mailhog rabbitmq
brew services start mysql
brew services start mailhog
brew services start rabbitmq

brew cask install 1password flycut google-chrome intellij-idea iterm2 java shiftit syncthing-bar cyberduck tunnelblick visual-studio-code docker

git config --global push.default simple
git config --global user.name "Leonhardt Koepsell"
git config --global user.email "leonhardt@koepsell.io"

mkdir -p ~/.ssh
chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 644 ~/.ssh/authorized_keys
