#!/usr/bin/env bash

echo "=== Begin Vagrant Provisioning using 'config/vagrant/tmux_custom_setup.sh'"

# Install Git if not available
if [ ! -f /home/vagrant/.tmux.conf ]; then
    echo "===== Installing Custom Tmux Config"
    cd /home/vagrant/
    wget https://gist.githubusercontent.com/wende/fcb97939720c84a6e5c2/raw/4fa21c16707958a333c554a50d2566b6eb935109/.tmux.conf
fi

echo "=== End Vagrant Provisioning using 'config/vagrant/tmux_custom_setup.sh'"
