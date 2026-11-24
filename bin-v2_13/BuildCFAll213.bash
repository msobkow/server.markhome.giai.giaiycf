#!/bin/bash
export SaveDir=`pwd`
cd $GIAI_HOME/server.markhome.giai.giaiycf/
let MavenStatus=0
mvn -U install
let MavenStatus=$?
if [ $MavenStatus != 0 ]; then
	echo "ERROR: mvn install for ${aprojdir} returned status ${MavenStatus} - build aborted"
fi
if [ $MavenStatus == 0 ]; then
	cp -v $GIAI_HOME/server.markhome.giai.giaiycf/org.msscf.msscf.v2_13.CFCli/target/org.msscf.msscf.v2_13.CFCli-2.13.42-alpha20-202611240000-spring-boot.jar $GIAI_HOME/server.markhome.giai.giaiycf/bin-v2_13/
	cp -v $GIAI_HOME/server.markhome.giai.giaiycf/org.msscf.msscf.v2_13.CFCli/target/org.msscf.msscf.v2_13.CFCli-2.13.42-alpha20-202611240000-spring-boot.jar $GIAI_HOME/server.markhome.giai.giaiinstaller/bin-v2_13/
	cp -v $GIAI_HOME/server.markhome.giai.giaiycf/org.msscf.msscf.v2_13.cfcore/resources/xsd/*.xsd $GIAI_HOME/server.markhome.giai/src/main/doc/giai-html/giai-ycf/ycf/2.0.13/xsd
	cp -v $GIAI_HOME/server.markhome.giai.giaiycf/org.msscf.msscf.v2_13.cfcore/resources/xsd/*.xsd $GIAI_HOME/server.markhome.giai.giaiinstaller/website-v2_13/giai-ycf/msscf/2.0.13/xsd/
	cp -v $GIAI_HOME/server.markhome.giai.giaiycf/org.msscf.msscf.v2_13.cfbam.CFBamSaxLoader/src/main/resources/xsd/*.xsd $GIAI_HOME/server.markhome.giai.giaiycf/bin-v2_13/xsd/
	cp -v $GIAI_HOME/server.markhome.giai.giaiycf/org.msscf.msscf.v2_13.cfbam.CFBamSaxLoader/src/main/resources/xsd/*.xsd $GIAI_HOME/server.markhome.giai.giaiinstaller/website-v2_13/giai-ycf/msscf/2.0.13/xsd/
	cp -v $GIAI_HOME/server.markhome.giai.giaiycf/org.msscf.msscf.v2_13.cfbam.CFBamSaxLoader/src/main/resources/xsd/*.xsd $GIAI_HOME/server.markhome.giai/src/main/doc/giai-html/giai-ycf/ycf/2.0.13/xsd
	cp -v $GIAI_HOME/server.markhome.giai.giaiycf/org.msscf.msscf.v2_13.cfbamcust.CFBamXmlLoader/src/main/resources/xsd/mssbam-2.13.xsd $GIAI_HOME/server.markhome.giai/src/main/doc/giai-html/giai-ycf/ycf/2.0.13/xsd
	cp -v $GIAI_HOME/server.markhome.giai.giaiycf/org.msscf.msscf.v2_13.cfbamcust.CFBamXmlLoader/src/main/resources/xsd/mssbam-2.13.xsd $GIAI_HOME/server.markhome.giai.giaiinstaller/website-v2_13/giai-ycf/msscf/2.0.13/xsd
	cp -v $GIAI_HOME/server.markhome.giai.giaiycf/org.msscf.msscf.v2_13.cfbamcust.CFBamXmlLoader/src/main/resources/xsd/mssbam-2.13.xsd $GIAI_HOME/server.markhome.giai.giaiinstaller/bin-v2_13/xsd/
	cp -v $GIAI_HOME/server.markhome.giai.giaiycf/org.msscf.msscf.v2_13.cfbamcust.CFBamXmlLoader/src/main/resources/xsd/mssbam-2.13.xsd $GIAI_HOME/server.markhome.giai.giaiycf/bin-v2_13/xsd/
	echo "SUCCESS: All 2.13 Java builds completed successfully"
fi
cd $SaveDir
