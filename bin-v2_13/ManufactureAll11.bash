#!/bin/bash
export args=$*
export restore=`pwd`
. $GIAI_HOME/server.markhome.giai.giaiycf/bin-v2_13/initbuild
cd $GIAI_HOME/server.markhome.giai.giaycf/bin-v2_13
./ManufactureSecure11.bash $args
./ManufactureInterNet11.bash $args
./ManufactureDbTest11.bash $args
./ManufactureBusModel11.bash $args
./ManufactureFractal11.bash $args
cd $restore
