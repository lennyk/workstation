#!/usr/bin/env bash -e

brew install postgresql rbenv ruby-build node git
brew cask install 1password flycut google-chrome intellij-idea iterm2 java rubymine screenhero shiftit sublime-text syncthing-bar

git config --global push.default simple
git config --global user.name "Leonhardt Koepsell"
git config --global user.email "leonhardt@koepsell.io"

mkdir -p ~/.ssh
chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 644 ~/.ssh/authorized_keys
