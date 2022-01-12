#!/bin/bash
echo "deb http://downloads.metasploit.com/data/releases/metasploit-framework/apt lucid main" > /etc/apt/sources.list.d/metasploit-framework.list
apt -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true update
apt install --allow-unauthenticated --assume-yes gnupg wget libpcap-dev libpcap-dev curl metasploit-framework
