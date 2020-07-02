#/bin/bash

# "create '/.ssh' directory"
mkdir ~/.ssh

# "register the 'ansible-manager' auth for ssh connection"
echo "ssh-rsa AAAA== ansible-manager-user@ansible-manager-host" > ~/.ssh/authorized_keys
