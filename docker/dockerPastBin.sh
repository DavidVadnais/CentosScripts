#/bin/sh

# Purpose: copy paste bin for docker commands.

# export the container id for use later.
export LATEST_CONTAINER=\
  $(docker run -d -p 5001:5001  \
  -p 8080:8080 \
  -e SERVICE_EMAIL=david.vadnaiscs@gmail.com \
  -e HOSTNAME_BE=biomlearn.uccs.edu \
  -e SERVICE_EMAIL_KEY=${KEY} \
  particlechromo3d:latest) \
  && docker exec -it ${LATEST_CONTAINER} /bin/bash

# prune dead and exec
docker container prune && docker exec -it $(docker ps -aq) /bin/bash
