#!/bin/sh

# ipv4 or ipv6. default"IPv4"
read -p "Which IP version do you use? (4/6) " state
IP=${state:-4}
unset state

# use localtime def:YES
read -p "DB logs use localtime? (y/n) " state
locateTime=${state:-y}
unset state

# anonymous_en. def:NO
read -p "Allow anonymous access? (y/n) " state
anonymous=${state:-n}
unset state

# local_en. def:NO
read -p "Allow local access? (y/n) " state
local=${state:-n}
unset state

# .file ? def:no
read -p "Could client see the secret file and dir? (y/n) " state
secretFile=${state:-n}
unset state

# umask (It is NAND algorism dir-777 file-666)
read -p "How would you like to permission level? (0XX) " state
umask=${state:-022}
unset state

# chroot (Limited Access at dir)
read -p "Can you use chroot()? (y/n) " state
chroot=${state:-y}
if [ $chroot = "y" ]; then
    echo "You should make vsftpd.chroot file."
fi
unset state