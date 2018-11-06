#!/bin/sh                                                                             
#                                                                                
# Comprobar espacio  memoria                                                    
export PIDNUM=`ps -C syslogd -o pid= `;
echo "Generating report $PIDNUM";
mkdir ~/result 2>/dev/null;
free > ~/result/espacio$PIDNUM;
df >> ~/result/espacio$PIDNUM;
du . >> ~/result/espacio$PIDNUM;
echo "Pulse INTRO";
read A;
cat ~/result/espacio$PIDNUM;
exit