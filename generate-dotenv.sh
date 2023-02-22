#!/bin/bash
read -p "PORT: (default: '8080')" port
read -p "HOST: (default: '127.0.0.1')" host
read -p "DATABASE_HOST: (default: '127.0.0.1') " hostDB
read -p "DATABASE_PORT: (default: '3306') " portDB
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

:'
TODO:
* add more variables
* add selective path
* add flags like -y, this flags can set defaults flags

'

output="PORT:$port\nHOST:'$host'\nDATABASE_PORT:$portDB\nDATABASE_HOST:'$hostDB'"

echo -e $output >> .env