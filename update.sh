#!/bin/sh

RELEASE_VERSION=999.999.999

exec <>/dev/tty0 2>&1
reset

while [ ! -b /dev/mmcblk0 ]; do
  sleep 1
done

if [ ! -d /mnt/root ]; then
  mkdir -p /mnt/root
  mount -t ext4 -o discard,noatime,ro /dev/mmcblk0p2 /mnt/root
fi

if [ ! -d /mnt/home ]; then
  mkdir -p /mnt/home
  mount -t ext4 -o discard,noatime,ro /dev/mmcblk0p3 /mnt/home
fi

cp /mnt/loop/fix-* /usr/bin/
umount -l /mnt/loop
getty -l sh -n 115200 tty0

mount -o remount,ro /mnt/root
mount -o remount,ro /mnt/home
mount -o remount,ro /mnt/usb
reboot -f
