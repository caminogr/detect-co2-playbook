#!/bin/sh
SCRIPT_USER=`who -m | awk '{print $1}'`

echo "${SCRIPT_USER} ALL=(ALL) NOPASSWD: /usr/bin/python -m mh_z19 --all" | sudo sh -c 'cat - > /etc/sudoers.d/co2-detect'
