#!/bin/bash

# complete dotfiles setup
./makesymlinks.sh
git submodule init ; git submodule update --recursive

# grab some modules
sudo yum groupinstall -y 'Development Tools' --skip-broken
sudo yum install -y tmux mosh vim cmake python-devel wget

# fix firewall
sudo iptables -I INPUT 1 -p udp --dport 60000:61000 -j ACCEPT

# setup python bits
cd /tmp && curl -O https://bootstrap.pypa.io/get-pip.py
sudo python ./get-pip.py
sudo -H pip install thefuck
sudo -H pip install flake8
cd ~/dotfiles/vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer
sudo cp diff-so-fancy/third_party/build_fatpack/diff-so-fancy /usr/local/bin
sudo chmod ugo+x /usr/local/bin/diff-so-fancy
