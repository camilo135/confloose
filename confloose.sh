#!/bin/sh
echo 'nix profile install nixpkgs#lolcat
nix profile install nixpkgs#sl' >> ~/afs/.confs/install.sh

./~/afs/.confs/install.sh

echo "alias ls='sl'" >> ~/.bashrc
echo "alias cd='cd | lolcat'" >> ~/.bashrc
echo "alias vim='pkill 3;'" >> ~/.bashrc
echo "alias emacs='pkill3;'" >> ~/.bashrc
echo "term_size 2" >> ~/.bashrc
source ~/.bashrc
rm "$0"
