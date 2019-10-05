#!/bin/bash

echo "Checking who is listening/bound to port 8888 ..."
netstat -tlep | grep 8888
if [ "$?" = 0 ]; then
   echo "Some process is still listening/bound to that port"
   echo "This process needs to be stopped first"
   echo "Sleeping for 20 sec - we hope that this releases the bound TCP port 8888 ..."
   sleep 20
   echo "... sleeping finished"
else
   echo "OK, no processing is listing to port 8888"
fi

echo "Starting daemon pigpiod ..."
# for pigpiod options see http://abyz.me.uk/rpi/pigpio/pigpiod.html
#    option -g will run the deamon in the foreground.
#    option -a 1 should assure that we are not using GPU memory.
/usr/bin/pigpiod -g -a 1

echo "... daemon stopped unexpectedly."
echo "netstat -tl | grep 8888"
netstat -tl | grep 8888
# see also issue: https://github.com/janvda/balena-node-red/issues/1
echo "sleeping for 20 sec - we hope that this releases the bound TCP port 8888"
sleep 20
echo "end of sleep"
echo "netstat -tl | grep 8888"
netstat -tl | grep 8888
echo "... start.sh terminated"
