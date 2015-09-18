build:
	packer build template.json

only-vmware:
	packer build --only vmware-iso template.json

only-virtualbox:
	packer build --only virtualbox-iso template.json

clean:
	rm -fv *.box
	rm -rfv output-*

add-box:
	-vagrant box remove docker-vmware
	vagrant box add ubuntu-14.04-with-docker.vmware.box --name docker-vmware
