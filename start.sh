exec docker run \
    -it \
    --rm \
    --net=host \
    -e DISPLAY \
    -e ZOOM_MEETING_ID \
    -v ${HOME}/.Xauthority:/home/user/.Xauthority \
    -v /home/khn/.config:/home/user/.config/ \
    -v /home/khn/.zoom/:/home/user/.zoom/ \
    --device /dev/video0:/dev/video0 \
    zoomies \
    "$@"
