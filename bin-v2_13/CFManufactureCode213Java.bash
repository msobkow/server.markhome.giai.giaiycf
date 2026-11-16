#!/bin/bash
export cmdargs=$*
export SaveDir=`pwd`
cd $GIAI_HOME/server.markhome.giai.giaycf/bin-v2_13/
if [ "$LOG4J2_CONF" != "" ]; then
	export JAVA_LOG4J="-Dlog4j.configurationFile=$LOG4J2_CONF"
else
	export JAVA_LOG4J=""
fi
"$JAVA" $JAVA_LOG4J -ea -Xms1023M $ruleargs -jar ./org.msscf.msscf.v2_13.CFCli-2.13.42-alpha17-202611152200-spring-boot.jar $cmdargs
cd $SaveDir
