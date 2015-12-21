#!/usr/bin/env bash

echo "=== Begin Vagrant Provisioning using 'config/vagrant/emacs_custom_setup.sh'"

# Install Git if not available
if [ ! -d /home/vagrant/.emacs.d ]; then
    echo "===== Installing Custom Emacs Config"
    cd /home/vagrant/
    git clone http://github.com/wende/.emacs.d
    echo "alias emacs=env TERM=xterm-256color emacs -nw" >> /home/vagrant/.bashrc
    echo "alias emacs=env TERM=xterm-256color emacs -nw" >> /home/vagrant/.zshrc
fi

echo "=== End Vagrant Provisioning using 'config/vagrant/emacs_custom_setup.sh'"
