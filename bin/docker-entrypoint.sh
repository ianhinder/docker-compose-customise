#!/bin/bash

echo $0
set -e
docker-compose-customise applications/hello/envs/stage up --build --detach
