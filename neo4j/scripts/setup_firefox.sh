#!/bin/bash

# This is technically not necessary since the lab pre-loads docker images
# and the script below. Making this explicit as an FYI.
docker pull jlesage/firefox

docker run -d \
    --name=firefox \
    --network host \
    -p 5800:5800 \
    -v /docker/appdata/firefox:/config:rw \
    --shm-size 2g \
    jlesage/firefox