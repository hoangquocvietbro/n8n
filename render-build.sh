#!/usr/bin/env bash
# exit on error
set -o errexit

STORAGE_DIR=/opt

if [[ ! -d $STORAGE_DIR/chrome ]]; then
  echo "...Downloading Chrome"
  mkdir -p $STORAGE_DIR/chrome
  cd $STORAGE_DIR/chrome
  wget -P ./ https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  dpkg -x ./google-chrome-stable_current_amd64.deb $STORAGE_DIR/chrome
  rm ./google-chrome-stable_current_amd64.deb
else
  echo "...Using Chrome from cache"
fi

# be sure to add Chromes location to the PATH as part of your Start Command
# export PATH="${PATH}:/opt/chrome/opt/google/chrome"

# add your own build commands...
