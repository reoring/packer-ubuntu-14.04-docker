#!/bin/bash

# Set up sudo
echo %ubuntu ALL=NOPASSWD:ALL > /etc/sudoers.d/ubuntu
chmod 0440 /etc/sudoers.d/ubuntu

# Setup sudo to allow no-password sudo for "sudo"
usermod -a -G sudo ubuntu

# Installing ubuntu keys
mkdir /home/ubuntu/.ssh
chmod 700 /home/ubuntu/.ssh
cd /home/ubuntu/.ssh
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O authorized_keys

chmod 600 /home/ubuntu/.ssh/authorized_keys
chown -R ubuntu /home/ubuntu/.ssh

# Install NFS for ubuntu
apt-get update
apt-get install -y nfs-common
