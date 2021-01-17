#!/bin/bash -e

localIpv4=$(/opt/VBoxGuestAdditions-6.1.18/bin/VBoxControl --nologo guestproperty get /VirtualBox/GuestInfo/Net/1/V4/IP | cut -d' ' -f 2)
cat > /var/xbee/hostdata.json <<EOF
{
  "publicIpv4": "127.0.0.1",
  "publicHostname": "localhost",
  "localIpv4": "$localIpv4"
}
EOF
