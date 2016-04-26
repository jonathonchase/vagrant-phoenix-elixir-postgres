# Vagrant Elixir/Phoenix/PostgreSQL Box

Based off project: https://github.com/jackdb/pg-app-dev-vm

* Ubuntu 14.04 LTS
* Elixir 1.2.3
* Phoenix 1.1.4
* PosgreSQL 9.4.4
* NodeJS 5.11.0
* Git 1.9.1
* Tmux with Zenburn theme
* Emacs 24.4.1 with Zenburn theme and shitload of packages for Elixir/Erlang/Node.js/Jekyll development
* ZSH with `Oh My Zsh!` and `avit` theme
* Phantom.js
* Gitlab-multi-runner

# How to run on Windows:
- Install [Vagrant](https://www.vagrantup.com/)
- Install [Cygwin with Rsync](http://www.trueblade.com/knowledge/using-rsync-and-cygwin-to-sync-files-from-a-linux-server-to-a-windows-notebook-pc)
- Make sure you've got [virtualisation enabled in BIOS](http://www.sysprobs.com/disable-enable-virtualization-technology-bios)
- Open cygwin and navigate to your PROJECT_DIRECTORY
- `git clone https://github.com/wende/wendify.git`
- vagrant up
- Make yourself a coffee, or two. Up to seven - can take about an hour
- start command `vagrant rsync-auto` and leave it running
- open another cygwin in PROJECT_DIRECTORY and run `vagrant ssh`
- If it connected to your Vagrant then we're cool!
- `cd /vagrant/` and all files here will be synced with your folder on host machine!

# How to run on UNIX:
- Install [Vagrant](https://www.vagrantup.com/)
- Make sure you've got [virtualisation enabled in BIOS](http://www.sysprobs.com/disable-enable-virtualization-technology-bios)
- Open terminal and navigate to your PROJECT_DIRECTORY
- `git clone https://github.com/wende/wendify.git`
- vagrant up
- Make yourself a coffee, or two. Up to seven - can take about an hour
- start command `vagrant rsync-auto` and leave it running
- open another terminal in PROJECT_DIRECTORY and run `vagrant ssh`
- If it connected to your Vagrant then we're cool!
- `cd /vagrant/` and all files here will be synced with your folder on host machine!

# What it does?
All projects You start in vagrant will run in safe sandbox. All changes in your project directory will be copied to the vagrant machine which means they'll work perfectly with `Phoenix`

# Example project configuration
- `cd /vagrant/`
- `git clone someproject.git`
- `cd someproject`
- `mix deps.get`
- `npm install`
- `mix ecto.create`
- `mix ecto.migrate`
- `mix test`
- Make sure it runs on port `4000` in `config/dev.ex`
- `mix phoenix.server`
