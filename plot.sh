#!/usr/bin/env bash
start=$(date +%s)
notify-send "Hello $1"
end=$(date +%s)
elapsed=$(($end-$start))
notify-send "Plot $1 Finished" "Took $elapsed seconds."