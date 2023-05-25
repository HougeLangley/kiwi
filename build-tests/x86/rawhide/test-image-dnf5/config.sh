#!/bin/bash

set -ex

test -f /.kconfig && . /.kconfig

#======================================
# Greeting...
#--------------------------------------
echo "Configure image: [$kiwi_iname]..."

#======================================
# Activate services
#--------------------------------------
baseInsertService dbus-broker
baseInsertService NetworkManager

#======================================
# Setup default target, multi-user
#--------------------------------------
baseSetRunlevel 3
