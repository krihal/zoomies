FROM debian:latest

RUN apt-get update && apt-get install -y x11-apps
RUN apt-get install -y xterm wget libxcb-keysyms1 libglib2.0-0 libxcb-shm0 libxcb-xfixes0 libxcb-randr0 libxcb-image0 libgl1-mesa-glx libegl1-mesa libpulse0 libxslt1.1 libsqlite3-0 libxcb-xtest0 libdbus-1-3 ibus libxcb-xinerama0 libxkbcommon-x11-0 pulseaudio-utils xdotool xvfb

RUN wget https://zoom.us/client/latest/zoom_amd64.deb
RUN dpkg -i zoom_amd64.deb

COPY enable_video.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/enable_video.sh

COPY zoom_start.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/zoom_start.sh

COPY zoomus.conf /root/.config/zoomus.conf
COPY zoom /root/.zoom

ENTRYPOINT ["/usr/local/bin/zoom_start.sh"]

