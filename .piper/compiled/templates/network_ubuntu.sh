cat <<EOF >/etc/netplan/02-netcfg.yaml;
network:
  version: 2
  ethernets:
    {{ .product.ifname }}:
      dhcp4: true
EOF