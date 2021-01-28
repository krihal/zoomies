Zoomies
=======

Extremely ugly hack for creating virtual Zoom clients.

To generate a video stream:

ffmpeg -loop 1 -re -i input.jpg -f v4l2 -vcodec rawvideo -pix_fmt yuv420p /dev/video0