#!/bin/bash
set -e

rm /etc/netplan/*
mac1=$(VBoxControl --nologo guestproperty get mac1 | cut -c 8-)
mac2=$(VBoxControl --nologo guestproperty get mac2 | cut -c 8-)
cat >/etc/netplan/01-netcfg.yaml <<EOF 
network:
    ethernets:
        eth0:
            dhcp4: true
            match:
                macaddress: ${mac1}
            set-name: eth0 
        eth1:
            dhcp4: true
            match:
                macaddress: ${mac2}
            set-name: eth1 
    version: 2
EOF
netplan apply
systemctl restart systemd-networkd
