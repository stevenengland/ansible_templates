#!/bin/bash
# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")
ln -sf $SCRIPTPATH/ansible.cfg ~/ansible.cfg
#ln -sf $SCRIPTPATH/ansible-inventory.ini ~/ansible-inventory.ini