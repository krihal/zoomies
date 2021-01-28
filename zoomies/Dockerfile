FROM debian:latest

RUN apt-get update && apt-get install -y x11-apps
RUN apt-get install -y xterm wget libxcb-keysyms1 libglib2.0-0 libxcb-shm0 libxcb-xfixes0 libxcb-randr0 libxcb-image0 libgl1-mesa-glx libegl1-mesa libpulse0 libxslt1.1 libsqlite3-0 libxcb-xtest0 libdbus-1-3 ibus libxcb-xinerama0 libxkbcommon-x11-0 pulseaudio-utils

RUN wget https://zoom.us/client/latest/zoom_amd64.deb
RUN dpkg -i zoom_amd64.deb

RUN useradd -ms /bin/bash user
RUN echo 'sh -c export QT_QPA_PLATFORM=vnc export DISPLAY=:1.0 export SSB_HOME=/home/khn/.zoom; export QSG_INFO=1; export LD_LIBRARY_PATH=/opt/zoom; export BREAKPAD_CLIENT_FD=3; /opt/zoom/zoom "--url=zoommtg://zoom.us/join?action=join&confno=$ZOOM_MEETING_ID"' > /usr/local/bin/zoom_start.sh
RUN chmod +x /usr/local/bin/zoom_start.sh
ENV DISPLAY :1

USER user
ENTRYPOINT ["/bin/sh", "-c", "$0 \"$@\"", "/usr/local/bin/zoom_start.sh"]
