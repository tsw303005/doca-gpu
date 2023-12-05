#!/bin/bash

docker run --name doca -p 8081:22 -d -v ./src:/opt/mellanox/doca/applications/gpu-doca gpu-doca

ssh-copy-id -o StrictHostKeyChecking=no doca
