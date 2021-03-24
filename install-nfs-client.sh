#!/usr/bin/env bash
apt update && apt -y install nfs-common && mkdir -p /mnt/nfs_clientshare && mount 192.168.33.10:/mnt/nfs_share  /mnt/nfs_clientshare