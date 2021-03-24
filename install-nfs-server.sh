#!/usr/bin/env bash
sudo apt update && apt -y install nfs-kernel-server && mkdir -p /mnt/nfs_share && chown -R nobody:nogroup /mnt/nfs_share/ && chmod 777 /mnt/nfs_share/
cat << EOF >> /etc/exports
/mnt/nfs_share  192.168.33.0/24(rw,sync,no_subtree_check)
EOF
sudo exportfs -a && systemctl restart nfs-kernel-server && systemctl restart nfs-kernel-server && service ufw stop