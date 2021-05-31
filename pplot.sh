#!/usr/bin/bash

JOBS=$1
DELAY=$2

# Found here: https://stackoverflow.com/questions/59895/how-can-i-get-the-source-directory-of-a-bash-script-from-within-the-script-itsel
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"


for plotjob in $(eval echo {0..$(($JOBS-1))})
do
    jobdelay=$(($DELAY*$plotjob))
    pueue add --delay $(echo $jobdelay's') "$SCRIPT_DIR/plot.sh $plotjob"
done