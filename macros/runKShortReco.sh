#!/bin/bash
export USER="$(id -u -n)"
export LOGNAME=${USER}
export HOME=/sphenix/u/${LOGNAME}
source /opt/sphenix/core/bin/sphenix_setup.sh -n new

export SPHENIX=/sphenix/u/${LOGNAME}/sPHENIX
export MYINSTALL=$SPHENIX/install
export LD_LIBRARY_PATH=$MYINSTALL/lib:$LD_LIBRARY_PATH
export ROOT_INCLUDE_PATH=$MYINSTALL/include:$ROOT_INCLUDE_PATH

source /opt/sphenix/core/bin/setup_local.sh $MYINSTALL

nEvents=15000

echo running: runKShortReco.sh $1
root.exe -q -b Fun4All_FieldOnAllTrackers_KFP.C\($nEvents,\"$1\"\)
echo Script done

