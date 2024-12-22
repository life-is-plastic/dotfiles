# sudo bash -eu install_initial_pkgs.sh

apt update
apt upgrade

apt install \
	build-essential \
	git \
	man \
	openssh-client \
	python3 \
	python3-pip \
	python3-venv \
	vim \
