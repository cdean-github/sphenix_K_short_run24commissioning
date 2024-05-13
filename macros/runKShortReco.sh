#!/bin/bash
export USER="$(id -u -n)"
export LOGNAME=${USER}
export HOME=/sphenix/u/${LOGNAME}
source /opt/sphenix/core/bin/sphenix_setup.sh -n new

nEvents=0

echo running: runKShortReco.sh $1
root.exe -q -b Fun4All_FieldOnAllTrackers_KFP.C\($nEvents,\"$1\"\)
echo Script done

