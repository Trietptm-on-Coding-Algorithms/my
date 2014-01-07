#!/bin/bash
[ $EUID -ne 0 ] && echo 'root privileges required, missing sudo?' && exit 1
npm install -g supervisor
npm install -g node-inspector
npm install -g express
