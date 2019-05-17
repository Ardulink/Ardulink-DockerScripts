#! /bin/sh

docker run -dit \
--name ardulink-devenv -h ardulink-devenv \
-v ardulink_devenv_volume:/home/developer/workspaces \
-v $HOME/.m2/repository:/home/developer/.m2/repository:rw \
-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/timezone:/etc/timezone:ro \
--device=/dev/dri/card0:/dev/dri/card0:rw \
-e DISPLAY=:0 \
ardulink/ardulink-devenv

