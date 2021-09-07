mkdir -p /tmp/vbox;
mount -o loop /tmp/VBoxGuestAdditions_{{ .pack.hostVersion }}.iso /tmp/vbox;
sh /tmp/vbox/VBoxLinuxAdditions.run --nox11
umount /tmp/vbox;
rm -rf /tmp/vbox;
rm /tmp/VBoxGuestAdditions_{{ .pack.hostVersion }}.iso;

