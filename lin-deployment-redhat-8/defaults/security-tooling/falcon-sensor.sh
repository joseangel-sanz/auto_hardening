#!/bin/bash

echo "**** falcon-sensor install/configured ****"
echo
sleep 5
#echo -e "SCRBEPODK009011 10.255.83.131\nSCRBEPODK009003 10.255.83.233\nSCRBEPODK009004 10.255.83.234" >> /etc/resolv.conf
dnf install -y /root/lin-deployment-redhat-8/files/falcon-sensor*.rpm
/opt/CrowdStrike/falconctl -s --cid=58CE029866E14481A529D5E495AEB242-76
/opt/CrowdStrike/falconctl -s --aph=10.0.11.1 --app=9400
/opt/CrowdStrike/falconctl -s --apd=FALSE

echo "**** falcon-sensor restart ****"
systemctl restart falcon-sensor.service

echo Completed
echo







