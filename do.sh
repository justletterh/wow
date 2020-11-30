#!/bin/bash
mkdir -p /root/.ssh
cp ./authorized_keys /root/.ssh/authorized_keys
echo -e "\nSubsystem	sftp	internal-sftp\nPubkeyAuthentication yes\nPort 22\nAuthorizedKeysFile	.ssh/authorized_keys\nPermitRootLogin yes\n">/etc/ssh/sshd_config
reboot