#!/usr/bin/env bash
start=$(date +%s)
#notify-send "Hello $1"
chia plots create -k 32 -b 3390 -r 2 -t /chia/temp -2 /chia/temp2 -d /chia/matt1 -u 128
end=$(date +%s)
elapsed=$(($end-$start))
notify-send "Plot $1 Finished" "Took $elapsed seconds."
