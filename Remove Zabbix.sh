#!/bin/bash

#Created by @MakMahlawat

#Changed by @Tr0nixCS 

function version_ubuntu_debian()
{
sudo rm zabbix*
service zabbix-agent stop
apt remove  zabbix-agent* -y
apt remove zabbix-release* -y
rm -rvf /etc/zabbix
sudo apt-get purge --auto-remove zabbix-agent -y
}



echo Starting Zabbix-Agent Removal Script
echo ==========================================================

if [[ $(cat /etc/*release*) == *"ubuntu"* ]];
then echo Running zabbix-agent uninstall script for Ubuntu Distribution....
        version_ubuntu_debian


else echo This script cannot be used for zabbix-agent removal on this machine && exit 0

fi

echo ==========================================================

echo Zabbix-Agent is Successfully Uninstalled and  Removed from this machine


echo Host to be removed from Front End : $(hostname -f)

echo ==========================================================