#!/bin/bash

docker stop doca && \
docker rm doca

sudo gsed -i '/\[127.0.0.1]:8081\b/d' ~/.ssh/known_hosts
