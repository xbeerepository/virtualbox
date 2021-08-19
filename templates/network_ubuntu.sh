#!/bin/bash
set -e

rm /etc/netplan/*
cat >/etc/netplan/01-netcfg.yaml <<EOF 
network:
    ethernets:
        eth0:
            dhcp4: true
            match:
                macaddress: {{ .mac1 }}
            set-name: eth0 
        eth1:
            dhcp4: true
            match:
                macaddress: {{ .mac2 }}
            set-name: eth1 
    version: 2
EOF
netplan apply
systemctl restart systemd-networkd
