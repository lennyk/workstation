#!/usr/bin/env bash -e

brew install heroku postgresql rbenv ruby-build node
brew cask install 1password flycut google-chrome intellij-idea iterm2 java rubymine screenhero shiftit sublime-text syncthing-bar git

git config --global push.default simple
git config --global user.name "Leonhardt Koepsell"
git config --global user.email "leonhardt@koepsell.io"
