#!/usr/bin/env bash

echo "=== Begin Vagrant Provisioning using 'config/vagrant/zsh_custom_setup.sh'"

# Install Git if not available
if [ -z `which zsh` ]; then
    echo "===== Installing Custom ZSH Config"
    sudo apt-get install -y zsh
    sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
    sudo chsh -s /bin/zsh vagrant
    cd /home/vagrant/
    wget https://gist.githubusercontent.com/anonymous/de9426459b2ab651eff0/raw/216fc2d805f5df906eeaeee8e46e75154f6805c2/.zshrc
    zsh
fi

echo "=== End Vagrant Provisioning using 'config/vagrant/zsh_custom_setup.sh'"
