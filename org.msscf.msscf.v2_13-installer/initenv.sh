#!/bin/bash
if [ ! -d /opt/msscode ]; then
	sudo mkdir /opt/msscode
	sudo chown $USER:$USER /opt/msscode
	sudo chmod 755 /opt/msscode
fi
export INSTDIR=`pwd`
cd /opt/msscode
export RELEASE_VERSION="2.13.42-alpha17-202611150800"
export SNAPSHOT_VERSION="2.13.42-alpha17-202611150800"
