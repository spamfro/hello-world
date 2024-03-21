#!/bin/bash

docker container run --rm \
  --name node-app \
  --user node \
  --workdir /home/node \
  --volume "$PWD/dist:/home/node/app" \
  -d node npx http-server ./app -c-1 -p 8080
