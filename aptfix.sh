#!/bin/bash

if test $(id -u) -ne 0; then
        echo "Execute with sudo please."
        exit 0;
fi

mkdir -p /home/phablet/./subsystem/var/cache/
mkdir -p /home/phablet/./subsystem/var/log/
mkdir -p /home/phablet/./subsystem/var/lib/

cp -r /var/cache/apt /home/phablet/./subsystem/var/cache/
cp -r /var/lib/apt /home/phablet/./subsystem/var/lib/
cp -r /var/log/apt /home/phablet/./subsystem/var/log/
cp -r /var/lib/dpkg /home/phablet/./subsystem/var/lib/
cp /var/log/dpkg.log /home/phablet/./subsystem/var/log/

rm -r /var/cache/apt
rm -r /var/lib/apt
rm -r /var/log/apt
rm -r /var/lib/dpkg
rm /var/log/dpkg.log

ln -s /home/phablet/./subsystem/var/cache/apt /var/cache/
ln -s /home/phablet/./subsystem/var/lib/apt /var/lib/
ln -s /home/phablet/./subsystem/var/log/apt /var/log/
ln -s /home/phablet/./subsystem/var/lib/dpkg /var/lib/
ln -s /home/phablet/./subsystem/var/log/dpkg.log /var/log/
