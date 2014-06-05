packer-ubuntu-14.04-docker
==========================

packer build template for ubuntu 14.04 with docker

# How to use 

```
packer build template.json
```

# Vagrantfile

This packer build for the Vagrant and the ubuntu of AMI.
As an SSH user, AMI is using "ubuntu".

```
config.ssh.username = "ubuntu"
```
