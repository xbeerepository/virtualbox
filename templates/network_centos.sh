cat > /etc/sysconfig/network-scripts/ifcfg-eth1 <<EOF
BOOTPROTO=dhcp
DEVICE=eth1
HWADDR={{ .mac2 }}
ONBOOT=yes
STARTMODE=auto
TYPE=Ethernet
USERCTL=no
EOF
ifup eth1
