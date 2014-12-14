docker run -i -t --rm \
  -e DISPLAY=$DISPLAY \
  -u $USER \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  "$@" ubuntu-x11 bash
