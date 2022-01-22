// Write a shell script to create two infinite processes in background and then prematurely terminate each of these infinite processes.


#!/bin/bash

(bash -c 'echo $PPID' > /tmp/myprocess.pid
 while true; 
 do
        true;
        sleep 3
 done) &
#clkill $(</tmp/myprocess.pid)
