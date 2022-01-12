
echo "deb http://downloads.metasploit.com/data/releases/metasploit-framework/apt lucid main" > /etc/apt/sources.list.d/metasploit-framework.list
apt -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true update
bash /root/az.sh
