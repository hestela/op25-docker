xhost +local:root
docker run -it --device /dev/bus/usb -e PULSE_SERVER=pulseaudio \
  -v "/tmp/.X11-unix:/tmp/.X11-unix:rw" --env="DISPLAY" \
  --env="QT_X11_NO_MITSHM" --net=host \
  -v "$HOME/.Xauthority:/root/Xauthority:rw" --device /dev/snd op25
xhost -local:root
