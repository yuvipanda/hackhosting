#!/bin/bash
# Bootstraps a node to work with this repository
# Assumes it is running on a Debian Jessie distribution


if [ ! -f /usr/bin/puppet ]; then
    # This is the first run
    # Update apt and install puppet!
    apt-get update
    apt-get install --yes puppet
fi
