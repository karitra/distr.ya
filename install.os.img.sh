#!/bin/bash

virt-install --virt-type kvm --name trusty --ram 2048 --cdrom=/home/karapuz/Downloads/mini.iso   --disk /tmp/trusty.qcow2,format=qcow2  --network network=default   --graphics vnc,listen=0.0.0.0 --noautoconsole    --os-type=linux --os-variant=ubuntutrusty
