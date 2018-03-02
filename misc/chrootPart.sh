#! /bin/bash
 
echo "Script for chrooting from one partition to another"

MOUNT_POINT=${1}
PARTITION=${2}
USER=${3}
cd ${MOUNT_POINT}
mount ${PARTITION} ${MOUNT_POINT}
mount -t proc none proc
mount --bind /sys sys
mount --bind /dev dev
sudo chroot --userspec ${USER} /mnt/elementary
