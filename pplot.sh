#!/usr/bin/bash

JOBS=$1
DELAY=$2

for plotjob in $(eval echo {1..$JOBS})
do
    pueue add --delay $DELAY 'notify-send "Hello $plotjob"'
done