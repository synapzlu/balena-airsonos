#!/bin/bash

ipaddr=`ip address show dev box0 | grep "inet " | cut -d/ -f1 | awk '{ print $2}'`

./airupnp-aarch64 -c flc -l 1000:2000 -b $ipaddr -Z
