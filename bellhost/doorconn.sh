#!/bin/sh
set -x
AUTOSSH_POLL=600
AUTOSSH_PORT=20000
AUTOSSH_GATETIME=30
AUTOSSH_LOGFILE=autossh.log
AUTOSSH_PATH=/usr/bin/ssh
export AUTOSSH_POLL AUTOSSH_PORT AUTOSSH_GATETIME AUTOSSH_LOGFILE AUTOSSH_PATH
autossh -2 -fN -M 20000 -R8101:localhost:8000 -i ~/doorbell/id_rsa user@webhost

