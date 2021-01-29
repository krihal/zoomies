exec docker run \
     -d \
     -it \
     --rm \
     --net=host \
     -e ZOOM_MEETING_ID="$1" \
     -e DISPLAY=$2 \
     --device /dev/video0:/dev/video0 \
     test

