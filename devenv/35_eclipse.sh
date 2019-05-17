#! /bin/sh

xhost + local:docker
docker exec -d ardulink-devenv eclipse
