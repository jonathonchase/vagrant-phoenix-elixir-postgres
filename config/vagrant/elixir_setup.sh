#!/usr/bin/env bash

echo "=== Begin Vagrant Provisioning using 'config/vagrant/elixir_setup.sh'"


# Install Git if not available
if [ -z `which elixir` ]; then
    echo "===== Installing Elixir"
    yes Y | sudo apt-get install inotify-tools
    wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
    wget http://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc
    yes Y | sudo apt-key add erlang_solutions.asc
    yes Y | apt-get -y update
    yes Y | sudo apt-get install esl-erlang
    yes Y | sudo apt-get -y install elixir
fi

echo "=== End Vagrant Provisioning using 'config/vagrant/elixir_setup.sh'"
