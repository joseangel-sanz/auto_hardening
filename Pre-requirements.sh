#!/bin/bash
# Bash Menu

#====================================================================================
# Secure boot
#====================================================================================

    echo -e "**** Install git package ****\n"
    sleep 2
    dnf install git
    echo $result
    echo
    sleep 1
    break;;

    echo -e "**** git HTTP SSLverify ****\n"
    sleep 2
    git config --global http.sslverify false
    echo $result
    echo
    sleep 1
    break;;

    echo -e "**** Configure OS proxy ****\n"
    sleep 2
    export http_proxy="http://10.0.11.1:9400"
    export https_proxy="http://10.0.11.1:9400"
    echo $result
    echo
    sleep 1
    break;;

        echo -e "**** Give execute permissions ****\n"
    sleep 2
    chmod +x /root/linux_auto_deployment/lin-deployment-*
    echo $result
    echo
    sleep 1
    break;;





