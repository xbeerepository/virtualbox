mkdir -p /mnt/vbox
mount /dev/sr1 /mnt/vbox
sh /mnt/vbox/VBoxLinuxAdditions.run --nox11
umount /dev/sr1
rm -rf /mnt/vbox


