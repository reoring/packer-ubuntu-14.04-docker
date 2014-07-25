#!/bin/bash

# enable memory and swap cgroup
perl -p -i -e 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"/g'  /etc/default/grub
/usr/sbin/update-grub

# add docker group and add vagrant to it
# sudo groupadd docker
for user in vagrant ubuntu
do
	sudo usermod -a -G docker $user
done

# add repository
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

sudo sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"

# install curl
apt-get update
apt-get install -y curl

# Update your sources
apt-get update

# Install. Confirm install.
# apt-get install -y docker.io
apt-get install -y lxc-docker

# Link docker.io to docker
# ln -s /usr/bin/docker.io /usr/bin/docker
