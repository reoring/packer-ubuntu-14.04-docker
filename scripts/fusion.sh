set -eu

echo "==> install the linux headers"
apt-get -yqq install git build-essential linux-headers-$(uname -r)

echo "==> install the vmware fusion guest tools"
cd /tmp

echo "==> download vmware-tools-patches"
git clone https://github.com/rasa/vmware-tools-patches.git
mkdir -p /mnt/cdrom
mount -o loop ~/linux.iso /mnt/cdrom
cp /mnt/cdrom/VMwareTools-*.tar.gz /tmp/vmware-tools-patches/
cd /tmp/vmware-tools-patches/
./untar-and-patch-and-compile.sh
rm /home/ubuntu/linux.iso
umount /mnt/cdrom
rm -rf /tmp/vmware-tools-patches
