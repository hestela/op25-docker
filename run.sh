docker run -it --device /dev/bus/usb -e PULSE_SERVER=pulseaudio -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --device /dev/snd op25
