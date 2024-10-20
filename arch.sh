#!/usr/bin/env bash

source .env
printf "Configuring for Arch"

# Don't install ubuntu packages
export INSTALL_PKG_DEPS=0

# Needed packages
./configure.sh
