#!/bin/bash

#====================================================================================
# Secure boot
#====================================================================================

echo -e "**** Secure Boot Check ****\n"
sleep 2
mokutil --sb-state = $result
echo $result
echo
sleep 1

#====================================================================================
# Firewall
#====================================================================================

echo -e "**** Firewall disable action ****\n"
sleep 2
sudo systemctl stop firewalld
sudo systemctl disable firewalld
echo -e "Done\n"
sleep 1

#====================================================================================
# SELINUX
#====================================================================================
echo -e "**** SELINUX disable action ****\n"
sleep 2
sudo setenforce 0
sudo sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config
echo -e "Done\n"
sleep 1

#====================================================================================
# Install required packages
#====================================================================================

echo -e "**** Installing required packages ****\n"
sleep 2
sudo dnf install -y chrony wget lsof telnet sysstat net-tools yum-utils unzip nmap
echo -e "Done\n"
sleep 1


