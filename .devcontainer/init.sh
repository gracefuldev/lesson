#!/bin/sh
# Get the magic script reunmberator

cd ~
if [ -d tapas_shot_renumber ]; then
  cd tapas_shot_renumber
  git pull
  cd -
else
  git clone https://github.com/avdi/tapas_shot_renumber.git
fi
cd tapas_shot_renumber
chmod +x tapas_shot_renumber.rb
sudo ln -sf $PWD/tapas_shot_renumber.rb /usr/local/bin/renumber-shots