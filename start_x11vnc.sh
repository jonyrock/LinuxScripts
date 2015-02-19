#!/bin/sh

VNC_CONNECT=$(netstat -anp |grep -i 5900 | wc -l)


while :
do
	if nmap `hostname -I` | grep vnc | grep open; then
		echo "x11vnc running"
		if [ $VNC_CONNECT -ge 3 ]; then
			echo "Client is connect"
		else
			sleep 10
			echo "No Client connected. All the same restart"
			killall -v x11vnc
			x11vnc -rfbauth ~/x11vnc/passfile -display :0 -rfbport 5900 -nomodtweak &
		fi
		sleep 5
	else
		echo "x12vnc is down"
		killall -v x11vnc
		x11vnc -rfbauth ~/x11vnc/passfile -display :0 -rfbport 5900 -nomodtweak &
	fi
done
