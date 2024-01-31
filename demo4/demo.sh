#!/bin/sh

# ipv4 or ipv6. default"IPv4"
read -p "Which IP version do you use?(4/6) " IP
IP=${IP:-4}

# use localtime def:YES
read -p "DB logs use localtime?(y/n) " state
locateTime=${state:-y}

# anonymous_en. def:NO
read -p "Allow anonymous access?(y/n) " state
anonymous=${state:-n}

# local_en. def:NO
read -p "Allow local access?(y/n) " state
local=${state:-n}

# .file ? def:no
read -p "Could client see the secret file and dir?(y/n) " state
secretFile=${state:-n}