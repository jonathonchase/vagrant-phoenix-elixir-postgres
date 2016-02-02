# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<SCRIPT
echo Beginning Vagrant provisioning...
date > /etc/vagrant_provisioned_at
SCRIPT

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.provision 'shell', inline: $script

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = 'ubuntu/trusty64'

  config.vm.provision :shell, path: 'config/vagrant/build_dependency_setup.sh'
  config.vm.provision :shell, path: 'config/vagrant/git_setup.sh'
  config.vm.provision :shell, path: 'config/vagrant/nodejs_setup.sh'
  config.vm.provision :shell, path: 'config/vagrant/postgresql_setup.sh'
  config.vm.provision :shell, path: 'config/vagrant/elixir_setup.sh'
  config.vm.provision :shell, path: 'config/vagrant/emacs_setup.sh'
  config.vm.provision :shell, path: 'config/vagrant/emacs_custom_setup.sh'
  config.vm.provision :shell, path: 'config/vagrant/tmux_custom_setup.sh'
  config.vm.provision :shell, path: 'config/vagrant/phoenix_setup.sh', privileged: false
  config.vm.provision :shell, path: 'config/vagrant/zsh_custom_setup.sh'
  config.vm.provision :shell, path: 'config/vagrant/oh_my_zsh_setup.sh', privileged: false
  
  
  # PostgreSQL Server port forwarding
  config.vm.network :forwarded_port, host: 4000, guest: 4000
  config.vm.network :forwarded_port, host: 5432, guest: 5432

  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"
  config.ssh.insert_key = false
  config.ssh.private_key_path = "~/.ssh/id_rsa"
  config.ssh.forward_agent = true
end
