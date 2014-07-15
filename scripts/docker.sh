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

# install curl
apt-get update
apt-get install -y curl

# Update your sources
apt-get update

# Install. Confirm install.
apt-get install -y docker.io

# Link docker.io to docker
ln -s /usr/bin/docker.io /usr/bin/docker
