#!/bin/bash

wget -nc -O ~/Downloads/mini.iso http://archive.ubuntu.com/ubuntu/dists/trusty-updates/main/installer-amd64/current/images/xenial-netboot/mini.iso

qemu-img create -f qcow3 $HOME/tmp/trusty.qcow2 6G
virt-install --virt-type kvm --name trusty --ram $((2*1024)) --cdrom=/home/karapuz/Downloads/mini.iso   --disk $HOME/tmp/trusty1.qcow2,format=qcow2  --network network=default   --graphics vnc,listen=0.0.0.0 --noautoconsole    --os-type=linux --os-variant=ubuntutrusty

