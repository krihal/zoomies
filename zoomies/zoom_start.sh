#!/bin/bash

export QT_QPA_PLATFORM=xcb
export SSB_HOME=/root/.zoom
export QSG_INFO=1
export LD_LIBRARY_PATH=/opt/zoom
export BREAKPAD_CLIENT_FD=3
export DISPLAY=${DISPLAY}

echo "Starting Xvfb on $DISPLAY"
nohup Xvfb ${DISPLAY} -screen 0 1024x768x24 &

echo "Running minimize.sh"
/usr/local/bin/enable_video.sh &

echo "Starting Zoom..."
DISPLAY=${DISPLAY} /opt/zoom/zoom "--url=zoommtg://zoom.us/join?action=join&confno=${ZOOM_MEETING_ID}"
