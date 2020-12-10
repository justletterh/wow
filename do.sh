#!/bin/bash
mkdir -p /root/.ssh
cp ./authorized_keys /root/.ssh/authorized_keys
echo -e "\nSubsystem	sftp	internal-sftp\nPubkeyAuthentication yes\nPort 22\nAuthorizedKeysFile	.ssh/authorized_keys\nPermitRootLogin yes\n">/etc/ssh/sshd_config
echo "">>/root/.bashrc
echo 'PS1="\e[0m\e[91;1m[  \e[94;1m\u@$HOSTNAME\e[91;1m  ] \e[92;1m| \e[93;1m\w \e[92;1m>>>\e[0;1m "'>>/root/.bashrc
echo "">>/root/.bashrc
reboot
