#!/usr/bin/env bash
set -eux

sudo apt update
sudo apt upgrade -y
sudo apt install -y build-essential
sudo apt install -y curl
sudo apt install -y git
sudo apt install -y man
sudo apt install -y openssh-client
sudo apt install -y python3
sudo apt install -y python3-pip
sudo apt install -y python3-venv
sudo apt install -y vim
sudo apt install -y wget

git clone https://github.com/life-is-plastic/dotfiles.git ~/dotfiles
shopt -s dotglob extglob
cp -r ~/dotfiles/debian/!(setup.sh) ~
rm -rf ~/dotfiles

if [ ! -f ~/.ssh/id_ed25519 ]; then
	ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -C ''
fi

echo 'Please log out then log back in to apply all changes.'
