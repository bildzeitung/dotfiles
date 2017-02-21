sudo yum install -y python-devel cmake
cd /tmp && curl -O https://bootstrap.pypa.io/get-pip.py
sudo python ./get-pip.py
sudo -H pip install thefuck
sudo -H pip install flake8
cd ~/dotfiles/vim/bundle/YouCompleteMe
./install.py --clang-completer
