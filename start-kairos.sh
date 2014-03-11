#!/bin/bash


BRIDGE=br1
ip=192.168.100.100
hostname=kairos

ports="-p 8080:8080 -p 4242:4242"
cid=$(sudo docker run -d -dns 127.0.0.1 -h $hostname $ports -t gleeco/kairosdb /opt/kairosdb/bin/kairosdb.sh run)
echo "starting cid=$cid"
sleep 1;
sudo pipework $BRIDGE $cid $ip/24
