#!/bin/bash
export SaveDir=`pwd`
cd $GIAI_HOME/server.markhome.giai.giaiycf/
mvn -U clean
cd $SaveDir
