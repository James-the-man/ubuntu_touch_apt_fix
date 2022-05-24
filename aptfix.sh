#!/bin/bash

if test $(id -u) -ne 0; then
        echo "Execute with sudo please."
        exit 0;
fi

mkdir -p $(pwd)subsystem/var/cache/
mkdir -p $(pwd)subsystem/var/log/
mkdir -p $(pwd)subsystem/var/lib/
cp -r /var/cache/apt $(pwd)subsystem/var/cache/
cp -r /var/lib/apt $(pwd)subsystem/var/lib/
cp -r /var/log/apt $(pwd)subsystem/var/log/
cp -r /var/lib/dpkg $(pwd)subsystem/var/lib/
cp -r /var/cache/apt $(pwd)subsystem/var/cache/
cp /var/log/dpkg.log $(pwd)subsystem/var/log/
rm -r /var/lib/apt
rm -r /var/log/apt
rm -r /var/lib/dpkg
rm /var/log/dpkg.log
ln -s $(pwd)subsystem/var/cache/apt /var/cache/
ln -s $(pwd)subsystem/var/lib/apt /var/lib/
ln -s $(pwd)subsystem/var/log/apt /var/log/
ln -s $(pwd)subsystem/var/lib/dpkg /var/lib/
ln -s $(pwd)subsystem/var/cache/apt /var/cache/
ln -s $(pwd)subsystem/var/log/dpkg.log /var/log/

