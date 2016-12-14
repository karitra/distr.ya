#!/bin/bash

#
# Main project 
#
# sudo apt-get update
sudo apt-get -y install tmux gcc g++ cmake emacs valgrind gdb gdbserver wireshark google-perftools aptitude pkg-config python python3 libboost-dev gnome-menus desktop-file-utils bamfdaemon mime-support git liberror-perl git-man curl wget perl

wget -c https://atom.io/download/deb -O ~/Download/atom-amd64.install.deb
sudo dpkg -i ~/Download/atom-amd64.install.deb

# Incstals cocain
YAPATH=~/prj/ya/cocaine
mkdir -p $YAPATH
pushd $YAPATH
git clone https://github.com/cocaine/cocaine-tools
git clone https://github.com/cocaine/cocaine-core
git clone https://github.com/cocaine/cocaine-framework-native
git clone https://github.com/cocaine/cocaine-plugins
git clone https://github.com/cocaine/cocaine-docs
git clone https://github.com/cocaine/cocaine-native-proxy
git clone https://github.com/cocaine/cocaine-flow
git clone https://github.com/cocaine/cocaine-fs
popd

