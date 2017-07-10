#!/usr/bin/env bash -e

# Install Homebrew
if ! [ $(which brew) ]
then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

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
pushd /tmp > /dev/null
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

cat <<INFO

defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder FXPreferredViewStyle Nlsv
killall Finder

*** Manual Steps ***

👉  setup 1Password
👉  setup Chrome
👉  Pivotal VPN: https://otp.pivotal.io/
👉  configure IntelliJ license: http://omaha.pivotallabs.com:8080/licenseServer
👉  setup IntelliJ settings repository: https://github.com/lnhrdt/intellij-settings
👉  setup Syncthing: http://localhost:8084

INFO
