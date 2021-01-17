cat >/etc/netplan/02-netcfg.yaml <<EOF 
network:
  version: 2
  ethernets:
    {{ .pack.ifname }}:
      dhcp4: true
EOF
netplan apply
systemctl restart systemd-networkd
