#!/bin/bash


localip=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')
read -p "PORT: (default: '8080')" port
clear
read -p "HOST: (default: '127.0.0.1')" host
clear
read -p "DATABASE_HOST: (default: '127.0.0.1') " hostDB
clear
read -p "DATABASE_PORT: (default: '3306') " portDB
clear
read -p "LOCAL_IPv4: (default:'$localip')" localipCustom

#TODO: change by switch case
if [[ -z $port ]]; then
   port='8080'
fi

if [[ -z $host ]]; then
    host='127.0.0.1'
fi

if [[ -z $portDB ]]; then
    portDB='3306'
fi

if [[ -z $hostDB ]]; then
    hostDB='127.0.0.1'
fi
if [[ -z $localipCustom ]]; then
    localipCustom=$localip
fi 

output="PORT:$port\nHOST:'$host'\nDATABASE_PORT:$portDB\nDATABASE_HOST:'$hostDB'\nLOCAL_IPv4:'$localipCustom'"

echo -e $output >> .env

clear

echo ".env created..."