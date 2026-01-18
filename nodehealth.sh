#!/bin/bash

#################################
# Author: Srikash
# Date: 06-01-2026
#
# This script outputs the node health
#
# Version: v1
#
# ###############################

set -x #it is a debug mode
set -e
set -o pipefail

df -h

free -g

nproc

ps -ef | grep linux | awk -F" " '{print $2}'
