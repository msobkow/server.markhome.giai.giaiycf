#!/bin/bash
export SaveDir=`pwd`
rawBuildString="$1"
toolsetNames=$2 $3 $4 $5 $6 $7 $8 $9
. $GIAI_HOME/server.markhome.giai.giaiycf/bin-v2_13/initbuild
if [ "${rawBuildString}" != "" ]; then
	buildString="${rawBuildString}-${BUILD_STAMP}"
else
	buildString="${BUILD_STAMP}"
fi
cd $GIAI_HOME/server.markhome.giai.giaiycf/bin-v2_13
./CFManufactureCode213Java.bash ${buildString} server-markhome-giai-Secure-3-1-Secure server-markhome-giai-3-1-giai-layered+giai ${toolsetNames}
cd $SaveDir
