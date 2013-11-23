#!/bin/bash

set -e

LOGFILE=ansible.setup.log

echo date >> $LOGFILE

echo -n "Installing pip..." | tee -a $LOGFILE
easy_install pip | tee -a $LOGFILE
echo "Done." | tee -a $LOGFILE

echo -n "Installing python packages..." | tee -a $LOGFILE
pip install paramiko PyYAML jinja2 | tee -a $LOGFILE
echo "Done." | tee -a $LOGFILE

echo "===================================================================" >> $LOGFILE

echo ""
